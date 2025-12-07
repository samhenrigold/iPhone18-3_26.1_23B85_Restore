void sub_274B5C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  sub_274B22670(a1, v16, &qword_28098B300, &qword_274BFDB20);
  if (v17)
  {
    sub_274AD8430(0, &qword_28098C350, 0x277D74248);
    if (swift_dynamicCast())
    {
      [v15 headIndent];
      if (v10.n128_f64[0] == a5[37] + a5[31] + a5[33])
      {
        v11 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges;
        sub_274B478D0(v10);
        v12 = *(*(a6 + v11) + 16);
        sub_274B03F20(v12);
        v13 = *(a6 + v11);
        *(v13 + 16) = v12 + 1;
        v14 = v13 + 16 * v12;
        *(v14 + 32) = a2;
        *(v14 + 40) = a3;
        *(a6 + v11) = v13;
      }
    }
  }

  else
  {
    sub_274AFA708(v16, &qword_28098B300, &qword_274BFDB20);
  }
}

id sub_274B5C400(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocation:a1 endLocation:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_274B5C464(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, void *a7, double *a8, double *a9)
{
  MinX = CGRectGetMinX(*&a1);
  [a7 textContainerInset];
  v18 = MinX + v17;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MinY = CGRectGetMinY(v29);
  [a7 textContainerInset];
  v21 = MinY + v20;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  Width = CGRectGetWidth(v30);
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  Height = CGRectGetHeight(v31);
  v24 = *a8;
  v32.origin.x = v18;
  v32.origin.y = v21;
  v32.size.width = Width;
  v32.size.height = Height;
  v25 = CGRectGetMinY(v32);
  if (v25 >= v24)
  {
    v25 = v24;
  }

  *a8 = v25;
  v26 = *a9;
  v33.origin.x = v18;
  v33.origin.y = v21;
  v33.size.width = Width;
  v33.size.height = Height;
  MaxY = CGRectGetMaxY(v33);
  if (v26 > MaxY)
  {
    MaxY = v26;
  }

  *a9 = MaxY;
  return 1;
}

uint64_t sub_274B5C584(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void sub_274B5C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void *a6, void *a7, void *a8)
{
  sub_274B22670(a1, v28, &qword_28098B300, &qword_274BFDB20);
  if (!v29)
  {
LABEL_9:
    sub_274AFA708(v28, &qword_28098B300, &qword_274BFDB20);
    return;
  }

  sub_274AD8430(0, &qword_28098EF20, 0x277D74300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = aBlock[0];
  [aBlock[0] pointSize];
  if (v15 == a5[41])
  {
    v16 = [a6 locationFromLocation:objc_msgSend(a7 withOffset:{sel_location), a2}];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [a6 locationFromLocation:v16 withOffset:a3];
      if (v17)
      {
        v18 = v17;
        sub_274AD8430(0, &qword_28098C348, 0x277D742D0);
        swift_unknownObjectRetain();
        v19 = swift_unknownObjectRetain();
        v20 = sub_274B5C400(v19, v18);
        if (v20)
        {
          v21 = v20;
          v22 = swift_allocObject();
          *(v22 + 16) = a8;
          v23 = v22;
          memcpy((v22 + 24), a5, 0x188uLL);
          v24 = swift_allocObject();
          v24[2] = sub_274B682F8;
          v24[3] = v23;
          aBlock[4] = sub_274B68AA4;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_274B5C584;
          aBlock[3] = &block_descriptor_71;
          v25 = _Block_copy(aBlock);
          v26 = a8;
          sub_274B4E058(a5, v28);

          [a6 enumerateTextSegmentsInRange:v21 type:0 options:0 usingBlock:v25];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          _Block_release(v25);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_274B5C94C(int a1, int a2, id a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, uint64_t a8)
{
  [a3 textContainerInset];
  v15 = v14;
  v16 = *(a8 + 288);
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  MinY = CGRectGetMinY(v29);
  [a3 textContainerInset];
  v19 = v18;
  v30.origin.x = a4;
  v30.origin.y = a5;
  v30.size.width = a6;
  v30.size.height = a7;
  Height = CGRectGetHeight(v30);
  v21 = *(a8 + 280);
  [a3 bounds];
  Width = CGRectGetWidth(v31);
  [a3 textContainerInset];
  v24 = Width - v23;
  [a3 textContainerInset];
  v26 = v24 - v25 - (v16 + v16);
  if (v26 > 0.0)
  {
    v27 = [objc_opt_self() bezierPathWithRoundedRect:v15 + v16 cornerRadius:{MinY + v19 + (Height - v21) * 0.5, v26, v21, v21 * 0.5}];
    [*(a8 + 272) setFill];
    [v27 fill];
  }

  return 1;
}

id sub_274B5CB40(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style;
  sub_274B6826C(__src);
  memcpy(&v5[v11], __src, 0x188uLL);
  *&v5[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges] = MEMORY[0x277D84F90];
  v14.receiver = v5;
  v14.super_class = type metadata accessor for WFMarkdownTextDrawingView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);

  return v12;
}

id sub_274B5CC60(void *a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_style;
  sub_274B6826C(__src);
  memcpy(&v1[v3], __src, 0x188uLL);
  *&v1[OBJC_IVAR____TtC14WorkflowUICoreP33_3E9D7953B2AD67C52890490469C980A825WFMarkdownTextDrawingView_blockQuoteRanges] = MEMORY[0x277D84F90];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WFMarkdownTextDrawingView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_274B5CD44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274B5CDE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v77 = a2;
  v4 = sub_274BF1D34();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  MEMORY[0x28223BE20](v9);
  v73 = &v72 - v10;
  v11 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v72 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v72 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v72 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C310, &qword_274BFFEF8);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v72 + *(v31 + 56) - v30);
  v33 = a1;
  v34 = &v72 - v30;
  sub_274B67A94(v33, &v72 - v30);
  sub_274B67A94(v77, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_274B67A94(v34, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v75;
        v56 = v76;
        (*(v75 + 32))(v8, v32, v76);
        v47 = sub_274BF1C94();
        v58 = *(v57 + 8);
        v58(v8, v56);
        v58(v25, v56);
        goto LABEL_33;
      }

      (*(v75 + 8))(v25, v76);
      goto LABEL_29;
    case 2u:
      sub_274B67A94(v34, v22);
      v45 = *v22;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_26;
      }

      v46 = sub_274B63778(v45, *v32);
      goto LABEL_13;
    case 3u:
      sub_274B67A94(v34, v19);
      v49 = *v19;
      v48 = v19[1];
      v50 = v19[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_26;
      }

      v52 = v32[1];
      v53 = v32[2];
      v54 = sub_274B63878(v49, *v32, v51);

      if ((v54 & 1) == 0)
      {

        goto LABEL_47;
      }

      v55 = sub_274B63A8C(v48, v52);

      if ((v55 & 1) == 0)
      {
        goto LABEL_47;
      }

      v46 = sub_274B63AE8(v50, v53);
LABEL_13:
      v47 = v46;

      goto LABEL_33;
    case 4u:
      sub_274B67A94(v34, v16);
      v38 = *v16;
      v37 = v16[1];
      v40 = v16[2];
      v39 = v16[3];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

LABEL_26:

LABEL_29:
        sub_274AFA708(v34, &qword_28098C310, &qword_274BFFEF8);
        goto LABEL_30;
      }

      v42 = v32[2];
      v41 = v32[3];
      if (v38 == *v32 && v37 == v32[1])
      {

LABEL_36:
        if (v39)
        {
          if (!v41)
          {
            goto LABEL_48;
          }

          if (v40 == v42 && v39 == v41)
          {
          }

          else
          {
            v71 = sub_274BF5C24();

            if ((v71 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v41)
        {
          goto LABEL_48;
        }

LABEL_23:
        sub_274B68210(v34);
        v47 = 1;
        return v47 & 1;
      }

      v44 = sub_274BF5C24();

      if (v44)
      {
        goto LABEL_36;
      }

LABEL_47:

LABEL_48:

LABEL_49:
      sub_274B68210(v34);
LABEL_30:
      v47 = 0;
      return v47 & 1;
    case 5u:
      sub_274B67A94(v34, v13);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v60 = v74;
        v59 = v75;
        v61 = v76;
        (*(v75 + 32))(v74, v32, v76);
        v47 = sub_274BF1C94();
        v62 = *(v59 + 8);
        v62(v60, v61);
        v62(v13, v61);
        goto LABEL_33;
      }

      (*(v75 + 8))(v13, v76);
      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    default:
      sub_274B67A94(v34, v28);
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C2A0, &qword_274BFFB58) + 48);
      v36 = *&v28[v35];
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v75 + 8))(v28, v76);
        goto LABEL_29;
      }

      v63 = *(v32 + v35);
      v65 = v75;
      v64 = v76;
      v66 = v73;
      (*(v75 + 32))(v73, v32, v76);
      v67 = sub_274BF1C94();
      v68 = *(v65 + 8);
      v68(v66, v64);
      v68(v28, v64);
      if ((v67 & 1) == 0)
      {
        goto LABEL_49;
      }

      v47 = v36 == v63;
LABEL_33:
      sub_274B68210(v34);
      return v47 & 1;
  }
}

BOOL sub_274B5D4E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_274B5D528(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v9;
LABEL_19:
    v9 = (v11 - 1) & v11;
    if (*(v6 + 16))
    {
      v13 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
      result = sub_274BF5CC4();
      v14 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v15 = result & v14;
        if (((*(v6 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          break;
        }

        result = v15 + 1;
        if (*(*(v6 + 48) + 8 * v15) == v13)
        {
          return 0;
        }
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      return 1;
    }

    v11 = *(v5 + 56 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_274B5D660(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_274B9107C(v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_274B5D740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v113 = a3;
  v112 = a2;
  v115 = a1;
  v117 = a4;
  v5 = sub_274BF1D34();
  v109 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v102 - v8;
  MEMORY[0x28223BE20](v9);
  v106 = &v102 - v10;
  v139 = sub_274BF1E14();
  v11 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v102 - v15;
  MEMORY[0x28223BE20](v17);
  v126 = &v102 - v18;
  v135 = sub_274BF1DE4();
  v19 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = (&v102 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440, &qword_274BFFFC8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v102 - v24;
  v26 = sub_274BF1E24();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B686D0();
  sub_274BF1CC4();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    v128 = v13;
    v102 = v5;
    v104 = v27;
    v33 = *(v27 + 32);
    v103 = v26;
    v33(v29, v25, v26);
    result = sub_274BF1DF4();
    v35 = 0;
    v36 = *(result + 16);
    v138 = v19 + 16;
    v123 = (v11 + 88);
    v124 = v36;
    v122 = *MEMORY[0x277CC8D30];
    v120 = *MEMORY[0x277CC8D48];
    v119 = *MEMORY[0x277CC8D28];
    v118 = *MEMORY[0x277CC8D50];
    v129 = *MEMORY[0x277CC8D08];
    v133 = *MEMORY[0x277CC8D18];
    v132 = *MEMORY[0x277CC8D00];
    v141 = (v19 + 8);
    v37 = v11;
    v38 = (v11 + 8);
    v110 = *MEMORY[0x277CC8D10];
    v39 = v135;
    v40 = v125;
    v41 = v19;
    v111 = v29;
    v107 = v37;
    v116 = v19;
    v121 = result;
    v127 = (v37 + 104);
    while (1)
    {
LABEL_5:
      if (v35 == v124)
      {
        (*(v104 + 8))(v29, v103);

        goto LABEL_3;
      }

      if (v35 >= *(result + 16))
      {
        goto LABEL_42;
      }

      v42 = v29;
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v44 = v35;
      v134 = *(v41 + 72);
      v137 = *(v41 + 16);
      v137(v40, result + v43 + v134 * v35, v39);
      v45 = v126;
      sub_274BF1DC4();
      v46 = v139;
      v47 = (*v123)(v45, v139);
      if (v47 == v122)
      {
        break;
      }

      v29 = v42;
      if (v47 == v120)
      {

        v78 = v126;
        (*(v37 + 96))(v126, v139);
        v79 = v40;
        v80 = v39;
        v81 = *v78;
        v82 = v78[1];
        v83 = sub_274BF1DD4();
        v84 = v115;
        v86 = sub_274B615AC(v85, v115, v83);
        MEMORY[0x28223BE20](v86);
        *(&v102 - 2) = v84;
        sub_274BDF378(sub_274B68788, (&v102 - 4), v86);
        v88 = v87;

        v143 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
        sub_274AFA930(&qword_28098A4E0, &qword_280989650, &qword_274BF9680, MEMORY[0x277D83958]);
        v89 = sub_274BF4EB4();
        v91 = v90;

        (*v141)(v79, v80);
        (*(v104 + 8))(v42, v103);
        v92 = v117;
        *v117 = v89;
        v92[1] = v91;
        v92[2] = v81;
        v92[3] = v82;
        v77 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
        swift_storeEnumTagMultiPayload();
        v31 = v92;
        goto LABEL_39;
      }

      if (v47 == v119)
      {

        (*v38)(v126, v139);
        sub_274B5E6A4(v115, v40, v117);
LABEL_35:
        (*v141)(v40, v39);
        return (*(v104 + 8))(v42, v103);
      }

      v35 = v44 + 1;
      if (v47 == v118)
      {
        v114 = v44 + 1;
        result = sub_274BF1DF4();
        v48 = *(result + 16);
        v136 = result;
        v142 = result + v43;
        v130 = -v48;
        v49 = -1;
        while (1)
        {
          if (v130 + v49 == -1)
          {

            v62 = v125;
            sub_274B61200(v115, v117);
            (*v141)(v62, v39);
            return (*(v104 + 8))(v111, v103);
          }

          v50 = v49 + 1;
          if (v50 >= *(v136 + 16))
          {
            break;
          }

          v140 = v50;
          v51 = v131;
          v137(v131, v142, v39);
          sub_274BF1DC4();
          v52 = *v127;
          v53 = v16;
          v54 = v38;
          v55 = v128;
          v56 = v139;
          (*v127)(v128, v133, v139);
          v57 = MEMORY[0x277C616A0](v53, v55);
          v58 = *v54;
          (*v54)(v55, v56);
          v58(v53, v56);
          if (v57 & 1) != 0 || (sub_274BF1DC4(), v52(v55, v132, v56), v59 = MEMORY[0x277C616A0](v53, v55), v58(v55, v56), v58(v53, v56), (v59))
          {

            v61 = *v141;
            v39 = v135;
            (*v141)(v51, v135);
            v16 = v53;
            v38 = v54;
            goto LABEL_24;
          }

          v142 += v134;
          sub_274BF1DC4();
          v52(v55, v129, v56);
          v60 = MEMORY[0x277C616A0](v53, v55);
          v58(v55, v56);
          v58(v53, v56);
          v61 = *v141;
          v39 = v135;
          result = (*v141)(v51, v135);
          v16 = v53;
          v38 = v54;
          v49 = v140;
          if (v60)
          {

LABEL_24:
            v40 = v125;
            v61(v125, v39);
            v29 = v111;
            v37 = v107;
            v41 = v116;
            result = v121;
            v35 = v114;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      if (v47 == v129 || v47 == v133)
      {

        sub_274B5F5BC(v115, v117);
        goto LABEL_35;
      }

      if (v47 == v132)
      {

        v93 = sub_274BF1DD4();
        v94 = v115;
        v96 = sub_274B615AC(v95, v115, v93);
        v97 = v105;
        v98 = sub_274BF1D24();
        MEMORY[0x28223BE20](v98);
        *(&v102 - 2) = v94;
        v99 = v108;
        sub_274BDF74C(v97, sub_274B68ABC, v96, v108);

        v100 = v109;
        v101 = v102;
        (*(v109 + 8))(v97, v102);
        (*v141)(v40, v39);
        (*(v104 + 8))(v29, v103);
        v75 = v117;
        (*(v100 + 32))(v117, v99, v101);
        v77 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
        goto LABEL_38;
      }

      if (v47 == v110)
      {

        (*v141)(v40, v39);
        (*(v104 + 8))(v42, v103);
        v77 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
        v75 = v117;
        goto LABEL_38;
      }

      (*v141)(v40, v39);
      (*v38)(v126, v139);
      v41 = v116;
      result = v121;
    }

    v63 = v126;
    (*(v37 + 96))(v126, v46);
    v64 = *v63;
    v65 = sub_274BF1DD4();
    v66 = v115;
    v68 = sub_274B615AC(v67, v115, v65);
    v69 = v108;
    v70 = sub_274BF1D24();
    MEMORY[0x28223BE20](v70);
    *(&v102 - 2) = v66;
    v71 = v106;
    sub_274BDF74C(v69, sub_274B687A8, v68, v106);

    v72 = v109;
    v73 = v102;
    (*(v109 + 8))(v69, v102);
    (*v141)(v40, v39);
    (*(v104 + 8))(v42, v103);
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C2A0, &qword_274BFFB58) + 48);
    v75 = v117;
    (*(v72 + 32))(v117, v71, v73);
    v76 = 2;
    if (v64 != 2)
    {
      v76 = 3;
    }

    if (v64 == 1)
    {
      v76 = 1;
    }

    *(v75 + v74) = v76;
    v77 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
LABEL_38:
    swift_storeEnumTagMultiPayload();
    v31 = v75;
LABEL_39:
    v32 = 0;
    v30 = v77;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  }

  sub_274AFA708(v25, &qword_28098C440, &qword_274BFFFC8);
LABEL_3:
  v30 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  v31 = v117;
  v32 = 1;
  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
}

uint64_t sub_274B5E6A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v94 = a3;
  v133 = sub_274BF1E14();
  v6 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v127 = (&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v132 = &v94 - v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v94 - v11;
  v139 = sub_274BF1DE4();
  v12 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v126 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v130 = (&v94 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440, &qword_274BFFFC8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v94 - v17;
  v19 = sub_274BF1E24();
  v135 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v119 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  i = sub_274BF1B34();
  v138 = *(i - 8);
  MEMORY[0x28223BE20](i);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v117);
  v116 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_274BF1E44();
  v25 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388, &qword_274BFFF58);
  MEMORY[0x28223BE20](v113);
  v112 = &v94 - v27;
  v123 = sub_274BF1CB4();
  v28 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v111 = (&v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_274BF1DD4();
  v118 = a1;
  v32 = sub_274B615AC(v31, a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  v141 = sub_274BF4E14();
  v110 = *(v32 + 16);
  if (v110)
  {
    v109 = v23;
    v33 = 0;
    v108 = v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v107 = v28 + 16;
    v106 = (v25 + 8);
    v105 = (v138 + 8);
    v104 = v28 + 8;
    v100 = (v135 + 32);
    v138 = v12 + 16;
    v129 = *MEMORY[0x277CC8D20];
    v128 = (v6 + 104);
    v136 = (v6 + 8);
    v137 = v12 + 8;
    v96 = (v135 + 8);
    v125 = (v6 + 88);
    v124 = *MEMORY[0x277CC8D40];
    v95 = (v6 + 96);
    v101 = MEMORY[0x277D84F90];
    v99 = v18;
    v98 = v19;
    v97 = i;
    v121 = v28;
    v103 = v32;
    while (v33 < *(v32 + 16))
    {
      v34 = *(v28 + 72);
      v122 = v33;
      v35 = v111;
      (*(v28 + 16))(v111, v108 + v34 * v33, v123);
      v36 = v112;
      sub_274BF1CA4();
      sub_274AFA930(&qword_28098C3C0, &qword_28098C388, &qword_274BFFF58, MEMORY[0x277D83D30]);
      v37 = v114;
      sub_274BF1D74();
      sub_274AFA708(v36, &qword_28098C388, &qword_274BFFF58);
      sub_274BF1E34();
      v38 = v37;
      v28 = v121;
      (*v106)(v38, v115);
      sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v39 = sub_274BF50C4();
      v25 = v40;
      v140[0] = v39;
      v140[1] = v40;
      v41 = v109;
      sub_274BF1B14();
      sub_274ADDF6C();
      v120 = sub_274BF5774();
      v43 = v42;
      (*v105)(v41, i);

      sub_274B686D0();
      a2 = v35;
      sub_274BF1CC4();
      (*(v28 + 8))(v35, v123);
      if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
      {

        sub_274AFA708(v18, &qword_28098C440, &qword_274BFFFC8);
        v32 = v103;
        v44 = v122;
      }

      else
      {
        v102 = v43;
        a2 = v119;
        (*v100)(v119, v18, v19);
        v45 = sub_274BF1DF4();
        v46 = 0;
        v134 = *(v45 + 16);
        v135 = v45;
        while (v134 != v46)
        {
          if (v46 >= *(v135 + 16))
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          a2 = v130;
          i = v139;
          (*(v12 + 16))(v130, v135 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v46++, v139);
          v47 = v131;
          sub_274BF1DC4();
          v48 = v132;
          v49 = v12;
          v50 = v133;
          (*v128)(v132, v129, v133);
          v51 = MEMORY[0x277C616A0](v47, v48);
          v25 = v136;
          v52 = *v136;
          (*v136)(v48, v50);
          v53 = v50;
          v12 = v49;
          v52(v47, v53);
          (*(v49 + 8))(a2, i);
          if (v51)
          {

            v54 = v101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBAD94();
              v54 = v75;
            }

            v18 = v99;
            v19 = v98;
            i = v97;
            v32 = v103;
            v44 = v122;
            v55 = v102;
            v25 = *(v54 + 16);
            a2 = (v25 + 1);
            if (v25 >= *(v54 + 24) >> 1)
            {
              sub_274BBAD94();
              v101 = v76;
            }

            else
            {
              v101 = v54;
            }

            v28 = v121;
            (*v96)(v119, v19);
            v56 = v101;
            *(v101 + 16) = a2;
            v57 = v56 + 16 * v25;
            *(v57 + 32) = v120;
            *(v57 + 40) = v55;
            goto LABEL_28;
          }
        }

        v25 = sub_274BF1DF4();
        v58 = 0;
        v59 = *(v25 + 16);
        a2 = v127;
        for (i = v133; ; (*v136)(a2, i))
        {
          if (v59 == v58)
          {

            v18 = v99;
            v19 = v98;
            i = v97;
            v28 = v121;
            v32 = v103;
            v44 = v122;
            goto LABEL_27;
          }

          if (v58 >= *(v25 + 16))
          {
            goto LABEL_48;
          }

          v60 = v126;
          v61 = v139;
          (*(v12 + 16))(v126, v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v58, v139);
          sub_274BF1DC4();
          a2 = v127;
          (*(v12 + 8))(v60, v61);
          v62 = (*v125)(a2, i);
          if (v62 == v124)
          {
            break;
          }

          ++v58;
        }

        (*v95)(a2, i);
        v63 = *a2;
        v64 = v141;
        if (sub_274B06A2C(v63, v141))
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140[0] = v64;
          sub_274B318A0(MEMORY[0x277D84F90], v63, isUniquelyReferenced_nonNull_native, v66, v67, v68);
          v141 = v140[0];
        }

        v18 = v99;
        v19 = v98;
        i = v97;
        v28 = v121;
        v32 = v103;
        v44 = v122;
        v69 = v102;
        a2 = &v141;
        v25 = sub_274B6238C(v140, v63);
        if (*v70)
        {
          a2 = v70;
          sub_274B478A0(v71);
          v72 = *a2;
          v135 = v25;
          v25 = *(v72 + 16);
          sub_274B03ED8(v25);
          v73 = *a2;
          *(v73 + 16) = v25 + 1;
          v74 = v73 + 16 * v25;
          *(v74 + 32) = v120;
          *(v74 + 40) = v69;
          (v135)(v140, 0);
        }

        else
        {

          (v25)(v140, 0);
        }

LABEL_27:
        (*v96)(v119, v19);
      }

LABEL_28:
      v33 = v44 + 1;
      if (v33 == v110)
      {

        i = v101;
        goto LABEL_32;
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  i = MEMORY[0x277D84F90];
LABEL_32:
  if (*(i + 16))
  {
    sub_274BBB360();
    v78 = v77;
    v25 = *(v77 + 16);
    a2 = (v25 + 1);
    if (v25 < *(v77 + 24) >> 1)
    {
LABEL_34:
      *(v78 + 16) = a2;
      *(v78 + 8 * v25 + 32) = i;
      goto LABEL_36;
    }

LABEL_50:
    sub_274BBB360();
    v78 = v93;
    goto LABEL_34;
  }

  v78 = MEMORY[0x277D84F90];
LABEL_36:
  v79 = v141;

  v81 = sub_274B624B4(v80);

  v82 = v81[2];
  if (v82)
  {
    v83 = 4;
    do
    {
      if (*(v79 + 16))
      {
        v84 = sub_274BDA8E8(v81[v83]);
        if (v85)
        {
          v86 = *(*(v79 + 56) + 8 * v84);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB360();
            v78 = v88;
          }

          v87 = *(v78 + 16);
          if (v87 >= *(v78 + 24) >> 1)
          {
            sub_274BBB360();
            v78 = v89;
          }

          *(v78 + 16) = v87 + 1;
          *(v78 + 8 * v87 + 32) = v86;
        }
      }

      ++v83;
      --v82;
    }

    while (v82);
  }

  v90 = v94;
  *v94 = v78;
  v91 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v91);
}

void sub_274B5F5BC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v214 = a1;
  v201 = a2;
  v3 = sub_274BF1DA4();
  MEMORY[0x28223BE20](v3 - 8);
  v193 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_274BF1D04();
  v190 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v228 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v227 = &v189 - v7;
  v226 = sub_274BF1BD4();
  v189 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v225 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF1E44();
  MEMORY[0x28223BE20](v9 - 8);
  v197 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388, &qword_274BFFF58);
  MEMORY[0x28223BE20](v196);
  v195 = &v189 - v11;
  v235 = sub_274BF1D34();
  v12 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v200 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v192 = &v189 - v15;
  MEMORY[0x28223BE20](v16);
  v224 = &v189 - v17;
  MEMORY[0x28223BE20](v18);
  v199 = &v189 - v19;
  MEMORY[0x28223BE20](v20);
  v234 = &v189 - v21;
  MEMORY[0x28223BE20](v22);
  v230 = &v189 - v23;
  MEMORY[0x28223BE20](v24);
  v206 = &v189 - v25;
  MEMORY[0x28223BE20](v26);
  v213 = &v189 - v27;
  MEMORY[0x28223BE20](v28);
  v198 = &v189 - v29;
  MEMORY[0x28223BE20](v30);
  v207 = &v189 - v31;
  v247 = sub_274BF1E14();
  v32 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v34 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_274BF1DE4();
  v35 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v37 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440, &qword_274BFFFC8);
  MEMORY[0x28223BE20](v38 - 8);
  v209 = &v189 - v39;
  v221 = sub_274BF1E24();
  v40 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v215 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_274BF1CB4();
  v42 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v223 = &v189 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C478, &qword_274BFFFE8);
  MEMORY[0x28223BE20](v220);
  v208 = (&v189 - v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C480, &qword_274BFFFF0);
  MEMORY[0x28223BE20](v45 - 8);
  v219 = &v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v218 = (&v189 - v48);
  v49 = sub_274BF1DD4();
  v51 = sub_274B615AC(v50, v214, v49);
  v52 = *(v51 + 16);
  if (!v52)
  {
LABEL_52:
    v116 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
    __swift_storeEnumTagSinglePayload(v201, 1, 1, v116);

    return;
  }

  v205 = v51;
  v217 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C488, &qword_274BFFFF8);
  v53 = sub_274BF4E14();
  v54 = 0;
  v255 = v53;
  v204 = v42 + 16;
  v216 = (v42 + 32);
  v203 = (v40 + 32);
  v246 = (v35 + 16);
  v245 = (v32 + 88);
  LODWORD(v244) = *MEMORY[0x277CC8D38];
  v248 = v35;
  v55 = (v35 + 8);
  v236 = (v32 + 8);
  LODWORD(v241) = *MEMORY[0x277CC8D08];
  v56 = v217;
  v240 = (v32 + 96);
  v232 = (v12 + 16);
  LODWORD(v237) = *MEMORY[0x277CC8D18];
  v231 = (v12 + 32);
  v233 = (v12 + 8);
  v191 = (v40 + 8);
  v211 = (v42 + 8);
  v202 = v12;
  v57 = v209;
  v58 = v210;
  v212 = v42;
LABEL_3:
  while (2)
  {
    if (v54 == v56)
    {
      v59 = v58;
      v60 = 1;
      v222 = v56;
      v61 = v220;
      v62 = v219;
    }

    else
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      if (v54 >= *(v205 + 16))
      {
        goto LABEL_104;
      }

      v63 = v58;
      v64 = v54 + 1;
      v65 = v205 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v54;
      v61 = v220;
      v66 = *(v220 + 48);
      v67 = v208;
      *v208 = v54;
      v59 = v63;
      (*(v42 + 16))(v67 + v66, v65);
      v62 = v219;
      sub_274B21EA8(v67, v219, &qword_28098C478, &qword_274BFFFE8);
      v60 = 0;
      v222 = v64;
    }

    __swift_storeEnumTagSinglePayload(v62, v60, 1, v61);
    v68 = v62;
    v69 = v218;
    sub_274B21EA8(v68, v218, &qword_28098C480, &qword_274BFFFF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v61);
    v71 = v223;
    if (EnumTagSinglePayload != 1)
    {
      v72 = *v69;
      (*v216)(v223, v69 + *(v61 + 48), v59);
      sub_274B686D0();
      sub_274BF1CC4();
      v12 = v221;
      if (__swift_getEnumTagSinglePayload(v57, 1, v221) == 1)
      {
        (*v211)(v71, v59);
        sub_274AFA708(v57, &qword_28098C440, &qword_274BFFFC8);
        v42 = v212;
        v56 = v217;
        v54 = v222;
        v58 = v59;
        continue;
      }

      v194 = v72;
      (*v203)(v215, v57, v12);
      v73 = sub_274BF1DF4();
      v74 = v73;
      v75 = *(v73 + 16);
      if (!v75)
      {

        v96 = 0;
        v97 = 0;
        v78 = 1;
        v239 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v238 = 0;
      v242 = 0;
      v243 = 0;
      v76 = v248;
      v77 = v73 + ((*(v248 + 80) + 32) & ~*(v248 + 80));
      v78 = 1;
      v12 = 1;
      v239 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v75 > *(v74 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        --v75;
        v76[2](v37, v77 + v76[9] * v75, v249);
        sub_274BF1DC4();
        v79 = v247;
        v80 = (*v245)(v34, v247);
        if (v80 == v244)
        {
          v81 = v77;
          v82 = v37;
          v83 = v74;
          v84 = v34;
          v85 = v55;
          (*v240)(v84, v79);
          v86 = v84;
          v87 = *v84;
          v242 = *v84;
          if (v12)
          {
            v78 = 0;
            v12 = 1;
            v55 = v85;
          }

          else
          {
            v250 = v243;
            v251 = sub_274BF5BE4();
            v252 = v88;
            MEMORY[0x277C648E0](46, 0xE100000000000000);
            v250 = v87;
            v89 = sub_274BF5BE4();
            MEMORY[0x277C648E0](v89);

            v90 = v251;
            v91 = v252;
            v92 = v239;
            v93 = *(v239 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v253 = v92;
            if (!isUniquelyReferenced_nonNull_native || v93 >= *(v92 + 24) >> 1)
            {
              sub_274BBAD94();
              v239 = v95;
              v253 = v95;
            }

            v55 = v85;
            sub_274BDAF60(0, 0, 1, v90, v91);
            v78 = 0;
            v12 = 0;
          }

          v34 = v86;
          v74 = v83;
          v37 = v82;
          v77 = v81;
        }

        else if (v80 == v241)
        {
          v243 = sub_274BF1DD4();
          v12 = 0;
          v238 = 1;
        }

        else
        {
          if (v80 != v237)
          {
            (*v55)(v37, v249);
            (*v236)(v34, v79);
            goto LABEL_25;
          }

          v243 = sub_274BF1DD4();
          v238 = 0;
          v12 = 0;
        }

        (*v55)(v37, v249);
LABEL_25:
        v76 = v248;
        if (!v75)
        {

          if (v238)
          {
            v96 = 256;
          }

          else
          {
            v96 = 0;
          }

          v97 = v242;
LABEL_34:
          if (!*(v239 + 16))
          {
            (*v191)(v215, v221);
            v58 = v210;
            (*v211)(v223, v210);

LABEL_48:
            v57 = v209;
            goto LABEL_49;
          }

          v238 = v96;
          v242 = v97;
          v251 = v239;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
          sub_274AFA930(&qword_28098A4E0, &qword_280989650, &qword_274BF9680, MEMORY[0x277D83958]);
          v243 = sub_274BF4EB4();
          v99 = v98;

          v100 = v195;
          sub_274BF1CA4();
          sub_274AFA930(&qword_28098C3C0, &qword_28098C388, &qword_274BFFF58, MEMORY[0x277D83D30]);
          sub_274BF1D74();
          sub_274AFA708(v100, &qword_28098C388, &qword_274BFFF58);
          sub_274BF1D84();
          v101 = v255;
          if (*(v255 + 16))
          {
            v12 = v243;
            sub_274BDA830(v243, v99);
            v102 = v223;
            v103 = v99;
            if ((v104 & 1) == 0)
            {
              v101 = v255;
              goto LABEL_40;
            }
          }

          else
          {
            v102 = v223;
            v103 = v99;
            v12 = v243;
LABEL_40:
            v105 = swift_isUniquelyReferenced_nonNull_native();
            v251 = v101;
            sub_274B3199C(MEMORY[0x277D84F90], v194, v242, v238 | v78 & 1, v12, v103, v105);
            v255 = v251;
          }

          v107 = sub_274B623F0(&v251, v12, v103);
          if (!*v106)
          {
            (v107)(&v251, 0);

            (*v233)(v207, v235);
            (*v191)(v215, v221);
            v58 = v210;
            (*v211)(v102, v210);
            goto LABEL_48;
          }

          v108 = v106;
          (*v232)(v198, v207, v235);
          v109 = *v108;
          v110 = swift_isUniquelyReferenced_nonNull_native();
          *v108 = v109;
          if ((v110 & 1) == 0)
          {
            sub_274BBB470();
            v109 = v114;
            *v108 = v114;
          }

          v111 = *(v109 + 16);
          if (v111 >= *(v109 + 24) >> 1)
          {
            sub_274BBB470();
            v109 = v115;
            *v108 = v115;
          }

          v57 = v209;
          *(v109 + 16) = v111 + 1;
          v12 = v202;
          v112 = v109 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v111;
          v113 = v235;
          (*(v202 + 32))(v112, v198, v235);
          (v107)(&v251, 0);

          (*(v12 + 8))(v207, v113);
          (*v191)(v215, v221);
          v58 = v210;
          (*v211)(v102, v210);
LABEL_49:
          v42 = v212;
          v56 = v217;
          v54 = v222;
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v251 = sub_274BBC790(v117);
  v12 = 0;
  sub_274B62A8C(&v251, &v255);

  v118 = v251;
  v119 = *(v251 + 16);
  v120 = v230;
  if (v119)
  {
    v121 = 0;
    v122 = v255;
    v123 = v251 + 32;
    v246 = (v190 + 8);
    v244 = MEMORY[0x277D84F90];
    v245 = (v189 + 8);
    v243 = MEMORY[0x277D84F90];
    v241 = MEMORY[0x277D84F90];
    v222 = v251;
    v221 = v119;
    v220 = v255;
    v219 = v251 + 32;
    while (v121 < *(v118 + 16))
    {
      if (*(v122 + 16))
      {
        v124 = (v123 + 16 * v121);
        v126 = *v124;
        v125 = v124[1];

        v242 = v126;
        v127 = sub_274BDA830(v126, v125);
        if (v128)
        {
          v237 = v125;
          v240 = v121;
          v129 = *(v122 + 56) + 32 * v127;
          v130 = *v129;
          v236 = *(v129 + 16);
          LODWORD(v223) = *(v129 + 24);
          v238 = *(v129 + 25);

          v131 = v206;
          sub_274BF1D24();
          v248 = *v232;
          v248(v120, v131, v235);
          v132 = *(v130 + 16);
          v239 = v130;
          if (v132)
          {
            v133 = v130 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
            v247 = *(v202 + 72);
            do
            {
              v249 = v132;
              v134 = v235;
              v248(v234, v133, v235);
              v135 = v225;
              sub_274BF1BC4();
              sub_274B68818(&qword_28098C490, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
              v136 = v227;
              v137 = v226;
              sub_274BF5344();
              v138 = v134;
              v139 = v228;
              sub_274BF5374();
              sub_274B68818(&qword_28098C498, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
              v140 = v229;
              v141 = sub_274BF4EF4();
              v142 = *v246;
              (*v246)(v139, v140);
              v142(v136, v140);
              (*v245)(v135, v137);
              v143 = v231;
              if (v141)
              {
                v144 = *v233;
                v120 = v230;
                (*v233)(v230, v138);
                v145 = *v143;
                v146 = v224;
                (*v143)(v224, v234, v138);
              }

              else
              {
                v146 = v224;
                v120 = v230;
                v147 = v234;
                sub_274BF1C34();
                v144 = *v233;
                (*v233)(v147, v138);
                v144(v120, v138);
                v145 = *v143;
              }

              v148 = v249;
              v145(v120, v146, v235);
              v133 += v247;
              v132 = v148 - 1;
            }

            while (v132);
          }

          else
          {
            v144 = *v233;
          }

          v149 = v235;
          v144(v206, v235);
          v150 = *v231;
          (*v231)(v213, v120, v149);
          v251 = v242;
          v252 = v237;
          v253 = 15917;
          v254 = 0xE200000000000000;
          sub_274ADDF6C();
          v151 = sub_274BF5764();

          v152 = *(v151 + 16);

          v153 = v241;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB448(0, *(v153 + 16) + 1, 1, v153);
            v153 = v174;
          }

          v154 = v199;
          v156 = *(v153 + 16);
          v155 = *(v153 + 24);
          if (v156 >= v155 >> 1)
          {
            sub_274BBB448(v155 > 1, v156 + 1, 1, v153);
            v153 = v175;
          }

          *(v153 + 16) = v156 + 1;
          v241 = v153;
          *(v153 + 8 * v156 + 32) = v152 - 1;
          sub_274BF50A4();
          if (v152 <= 1)
          {

            v159 = v248;
            v248(v154, v213, v235);
            v158 = v200;
            v159(v200, v154, v235);
          }

          else
          {
            sub_274BF1D94();
            v157 = v192;
            sub_274BF1D44();
            sub_274BF1C34();
            v144(v157, v235);
            v158 = v200;
            v248(v200, v154, v235);
          }

          v160 = v243;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBB470();
            v160 = v176;
          }

          v162 = *(v160 + 16);
          v161 = *(v160 + 24);
          v243 = v160;
          if (v162 >= v161 >> 1)
          {
            sub_274BBB470();
            v243 = v177;
          }

          v163 = v243;
          *(v243 + 16) = v162 + 1;
          v150((v163 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v162), v158, v235);

          if (v238)
          {
            if (v223)
            {
              v12 = 1;
            }

            else
            {
              v12 = v236;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBB420(0, *(v244 + 16) + 1, 1, v244);
              v244 = v178;
            }

            v165 = *(v244 + 16);
            v164 = *(v244 + 24);
            if (v165 >= v164 >> 1)
            {
              sub_274BBB420(v164 > 1, v165 + 1, 1, v244);
              v244 = v179;
            }

            v166 = v235;
            v144(v154, v235);
            v144(v213, v166);
            v167 = v244;
            *(v244 + 16) = v165 + 1;
            v168 = v167 + 16 * v165;
            *(v168 + 32) = v12;
            *(v168 + 40) = 0;
            v120 = v230;
            v118 = v222;
            v119 = v221;
            v121 = v240;
          }

          else
          {
            v169 = swift_isUniquelyReferenced_nonNull_native();
            v121 = v240;
            if ((v169 & 1) == 0)
            {
              sub_274BBB420(0, *(v244 + 16) + 1, 1, v244);
              v244 = v180;
            }

            v12 = *(v244 + 16);
            v170 = *(v244 + 24);
            if (v12 >= v170 >> 1)
            {
              sub_274BBB420(v170 > 1, v12 + 1, 1, v244);
              v244 = v181;
            }

            v171 = v235;
            v144(v154, v235);
            v144(v213, v171);
            v172 = v244;
            *(v244 + 16) = v12 + 1;
            v173 = v172 + 16 * v12;
            *(v173 + 32) = 0;
            *(v173 + 40) = 1;
            v120 = v230;
            v118 = v222;
            v119 = v221;
          }

          v122 = v220;
          v123 = v219;
        }

        else
        {
        }
      }

      if (++v121 == v119)
      {

        v182 = v243;
        v183 = v241;
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);

    __break(1u);
  }

  else
  {

    v183 = MEMORY[0x277D84F90];
    v182 = MEMORY[0x277D84F90];
    v244 = MEMORY[0x277D84F90];
LABEL_98:
    v184 = v201;
    if (*(v182 + 16))
    {
      *v201 = v182;
      v184[1] = v183;
      v184[2] = v244;
      v185 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
      swift_storeEnumTagMultiPayload();
      v186 = v184;
      v187 = 0;
      v188 = v185;
    }

    else
    {

      v188 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
      v186 = v184;
      v187 = 1;
    }

    __swift_storeEnumTagSinglePayload(v186, v187, 1, v188);
  }
}

uint64_t sub_274B61200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_274BF1B34();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v6);
  v7 = sub_274BF1D34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_274BF1DD4();
  v16 = sub_274B615AC(v15, a1, v14);
  sub_274BF1D24();
  v36 = a1;
  sub_274BDF74C(v10, sub_274B68ABC, v16, v13);

  v32 = v8;
  v17 = *(v8 + 8);
  v18 = v10;
  v19 = v7;
  v17(v18, v7);
  sub_274BF1BC4();
  sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v37 = sub_274BF50C4();
  v38 = v20;
  sub_274BF1B14();
  sub_274ADDF6C();
  v21 = sub_274BF5774();
  v23 = v22;
  (*(v33 + 8))(v5, v34);

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v35;
    v26 = sub_274B620D0(v21, v23);

    if (v26)
    {
      v17(v13, v19);
    }

    else
    {
      (*(v32 + 32))(v25, v13, v19);
    }

    v27 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
    swift_storeEnumTagMultiPayload();
    v29 = v25;
    v30 = 0;
    v28 = v27;
  }

  else
  {
    v17(v13, v7);

    v28 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
    v29 = v35;
    v30 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
}

uint64_t sub_274B615AC(__n128 a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v3 = sub_274BF1DE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C440, &qword_274BFFFC8);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v53 - v8;
  v78 = sub_274BF1E24();
  v64 = *(v78 - 8);
  MEMORY[0x28223BE20](v78 - 8);
  v67 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4A0, &qword_274C00008);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v53 - v11;
  v75 = sub_274BF1CD4();
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_274BF1CB4();
  v13 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v53 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C390, &unk_274BFFF60) - 8;
  MEMORY[0x28223BE20](v71);
  v18 = &v53 - v17;
  v19 = sub_274BF1CE4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  sub_274BF1CF4();
  v57 = v20;
  v26 = *(v20 + 16);
  v56 = v25;
  v26(v22, v25, v19);
  v27 = MEMORY[0x277CC8C08];
  sub_274B68818(&qword_28098C4A8, MEMORY[0x277CC8C08], MEMORY[0x277CC8C10]);
  v72 = v18;
  v73 = v19;
  sub_274BF50E4();
  v71 = *(v71 + 44);
  v28 = sub_274B68818(&qword_28098C3A8, v27, MEMORY[0x277CC8C18]);
  ++v70;
  v68 = (v13 + 16);
  v63 = (v64 + 4);
  v62 = v4 + 16;
  v61 = v4 + 8;
  v60 = v64 + 1;
  v59 = (v13 + 32);
  v58 = MEMORY[0x277D84F90];
  v54 = v13;
  v64 = (v13 + 8);
  v65 = v28;
LABEL_2:
  v29 = v72;
  for (i = v73; ; i = v73)
  {
    v31 = v74;
    sub_274BF5374();
    sub_274B68818(&qword_28098C3B0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v32 = v75;
    v33 = sub_274BF4EF4();
    (*v70)(v31, v32);
    if (v33)
    {
      break;
    }

    v34 = sub_274BF5414();
    v36 = v76;
    v35 = v77;
    (*v68)(v76);
    v34(v80, 0);
    sub_274BF5384();
    sub_274B686D0();
    v37 = v69;
    sub_274BF1CC4();
    v38 = v78;
    if (__swift_getEnumTagSinglePayload(v37, 1, v78) != 1)
    {
      (*v63)(v67, v37, v38);
      result = sub_274BF1DF4();
      v41 = result;
      v42 = 0;
      v43 = *(result + 16);
      while (v43 != v42)
      {
        if (v42 >= *(v41 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v4 + 16))(v6, v41 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v42++, v3);
        v44 = sub_274BF1DD4();
        result = (*(v4 + 8))(v6, v3);
        if (v44 == v79)
        {
          (*v60)(v67, v78);

          v39 = v66;
          v45 = v77;
          (*v59)(v66, v76, v77);
          v46 = 0;
          goto LABEL_12;
        }
      }

      (*v60)(v67, v78);

      v45 = v77;
      (*v64)(v76, v77);
      v46 = 1;
      v39 = v66;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v39, v46, 1, v45);
      if (__swift_getEnumTagSinglePayload(v39, 1, v45) == 1)
      {
        goto LABEL_13;
      }

      v47 = *v59;
      (*v59)(v55, v39, v45);
      v48 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB270();
        v48 = v51;
      }

      v49 = *(v48 + 16);
      if (v49 >= *(v48 + 24) >> 1)
      {
        sub_274BBB270();
        v48 = v52;
      }

      *(v48 + 16) = v49 + 1;
      v50 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v58 = v48;
      v47(v48 + v50 + *(v54 + 72) * v49, v55, v45);
      goto LABEL_2;
    }

    (*v64)(v36, v35);
    sub_274AFA708(v37, &qword_28098C440, &qword_274BFFFC8);
    v39 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v35);
LABEL_13:
    sub_274AFA708(v39, &qword_28098C4A0, &qword_274C00008);
    v29 = v72;
  }

  sub_274AFA708(v29, &qword_28098C390, &unk_274BFFF60);
  (*(v57 + 8))(v56, i);
  return v58;
}

uint64_t sub_274B61F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v16[1] = a1;
  v3 = sub_274BF1E44();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388, &qword_274BFFF58);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_274BF1CA4();
  OUTLINED_FUNCTION_2_19();
  sub_274AFA930(v13, &qword_28098C388, &qword_274BFFF58, v14);
  sub_274BF1D74();
  sub_274AFA708(v12, &qword_28098C388, &qword_274BFFF58);
  sub_274B68818(&qword_28098C468, MEMORY[0x277CC8D88], MEMORY[0x277CC8D80]);
  sub_274BF1C44();
  return (*(v5 + 8))(v9, v3);
}

BOOL sub_274B620D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_274BF1B34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  sub_274BF1B14();
  sub_274ADDF6C();
  v8 = sub_274BF5774();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = 0;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v12;
LABEL_5:
  while (v11 != 4)
  {
    v13 = &unk_2883C69C8 + 16 * v11;
    v15 = *(v13 + 4);
    v14 = *(v13 + 5);
    v16 = v8 == v15 && v10 == v14;
    if (v16 || (sub_274BF5C24() & 1) != 0)
    {
      break;
    }

    if (sub_274BF5004() >= 3)
    {
      v29 = v11 + 1;
      v30 = v8;
      v31 = v10;
      v32 = 0;
      v33 = v12;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      while (1)
      {
        v18 = sub_274BF5054();
        if (!v19)
        {

          goto LABEL_33;
        }

        v20 = v18;
        v21 = v19;
        if (v17)
        {
          if (sub_274BF50B4() == v18 && v21 == v22)
          {

            continue;
          }

          v24 = sub_274BF5C24();

          if (v24)
          {
            goto LABEL_30;
          }
        }

        if (v20 == 32 && v21 == 0xE100000000000000)
        {
LABEL_30:

          continue;
        }

        v26 = sub_274BF5C24();

        if ((v26 & 1) == 0)
        {

          v12 = v28;
          v11 = v29;
          goto LABEL_5;
        }
      }
    }

    ++v11;
  }

LABEL_33:

  return v11 != 4;
}

uint64_t (*sub_274B6238C(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_274B673C4(v4, a2);
  return sub_274B68AD8;
}

uint64_t (*sub_274B623F0(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_274B67454(v6, a2, a3);
  return sub_274B62464;
}

void sub_274B62468(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_274B624B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_274BBC020(*(a1 + 16), 0);
  v4 = sub_274BBF7C8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_274AEF594(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_274B62A20(&v7);
  return v7;
}

void *sub_274B625B0(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v5 = sub_274BBBFB8(*(a1 + 16), 0);
  v6 = a2(&v9, (v5 + 4), v2, a1);

  v7 = OUTLINED_FUNCTION_30_3();
  sub_274AEF594(v7);
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v9 = v5;
  sub_274B62B00(&v9);
  return v9;
}

BOOL sub_274B62698(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (sub_274B06A78(*a1, a1[1], *a3))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (sub_274B06A78(v4, v5, *a3))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v7 < v9;
}

uint64_t sub_274B62718@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v13[1] = a1;
  v15 = a2;
  v14 = sub_274BF1BD4();
  MEMORY[0x28223BE20](v14);
  v3 = sub_274BF1E44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C388, &qword_274BFFF58);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  sub_274BF1CA4();
  sub_274AFA930(&qword_28098C3C0, &qword_28098C388, &qword_274BFFF58, MEMORY[0x277D83D30]);
  sub_274BF1D74();
  sub_274AFA708(v9, &qword_28098C388, &qword_274BFFF58);
  sub_274BF1E34();
  (*(v4 + 8))(v6, v3);
  sub_274B68818(&qword_28098C420, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  result = sub_274BF50C4();
  v11 = v15;
  *v15 = result;
  v11[1] = v12;
  return result;
}

uint64_t sub_274B62980()
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274B629D0(uint64_t a1)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274B62A20(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFD94();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_274B64A60(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_274B62A8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDA8();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  result = sub_274B64B54(v8, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_274B62B00(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDA8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_274B64C54(v6);
  *a1 = v2;
  return result;
}

void sub_274B62B6C(char *a1, uint64_t a2, __n128 a3)
{
  v67 = a1;
  v3 = sub_274BF2BE4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_274BF26B4();
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C368, &qword_274BFFF38);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v58 - v7;
  v8 = sub_274BF2764();
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = sub_274BF2694();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_274BF2744();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C370, &unk_274BFFF40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_274BF2714();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_274BF2734();
  sub_274BF2684();
  sub_274BF2724();
  v23 = v61;
  v58 = v10;
  v67 = v22;
  v25 = v62;
  v24 = v63;
  v26 = v60;
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_274AFA708(v18, &qword_28098C370, &unk_274BFFF40);
    v27 = v64;
    sub_274BF2A54();
    v28 = sub_274BF2BD4();
    v29 = sub_274BF54A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_274AD4000, v28, v29, "Failed to initialize MathPresentation model for LaTeX rendering.", v30, 2u);
      MEMORY[0x277C664A0](v30, -1, -1);
    }

    (v65)[1](v27, v66);
  }

  else
  {
    v31 = *(v20 + 32);
    v66 = v19;
    v31(v67, v18);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
    v32 = v13;
    sub_274BF2704();
    sub_274AFA708(v23, &qword_28098C368, &qword_274BFFF38);
    v33 = [objc_opt_self() currentTraitCollection];
    v34 = [v33 userInterfaceStyle];

    v35 = objc_opt_self();
    v36 = &selRef_whiteColor;
    if (v34 != 2)
    {
      v36 = &selRef_blackColor;
    }

    v37 = [v35 *v36];
    v38 = [v37 CGColor];

    v39 = v38;
    sub_274BF26A4();
    sub_274BF2754();
    v40 = v58;
    (*(v26 + 16))(v58, v13, v8);
    sub_274BF26C4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = *(v26 + 8);
    v49(v40, v8);
    v69.origin.x = v42;
    v69.origin.y = v44;
    v69.size.width = v46;
    v69.size.height = v48;
    v50 = ceil(CGRectGetWidth(v69));
    v70.origin.x = v42;
    v70.origin.y = v44;
    v70.size.width = v46;
    v70.size.height = v48;
    Height = CGRectGetHeight(v70);
    if (v50 <= 0.0 || (v52 = ceil(Height), v52 <= 0.0))
    {

      (*(v59 + 8))(v25, v63);
      (*(v20 + 8))(v67, v66);
      v49(v32, v8);
    }

    else
    {
      v53 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v65 = v39;
      v54 = v53;
      v55 = swift_allocObject();
      v55[2] = v42;
      v55[3] = v44;
      v55[4] = v46;
      v55[5] = v48;
      *(v55 + 6) = v32;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_274B6830C;
      *(v56 + 24) = v55;
      aBlock[4] = sub_274B6831C;
      aBlock[5] = v56;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274B63644;
      aBlock[3] = &block_descriptor_80;
      v57 = _Block_copy(aBlock);
      v64 = v32;

      [v54 imageWithActions_];
      _Block_release(v57);

      (*(v59 + 8))(v25, v63);
      (*(v20 + 8))(v67, v66);
      LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

      if (v54)
      {
        __break(1u);
      }

      else
      {
        v49(v64, v8);
      }
    }
  }
}

uint64_t sub_274B63428(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_274BF26E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_274BF2764();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 CGContext];
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGRectGetMinX(v25);
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  CGRectGetMinY(v26);
  (*(v17 + 16))(v20, a2, v16);
  v22 = v21;
  sub_274BF26D4();
  sub_274BF26F4();

  (*(v13 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

void sub_274B63644(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_274B636A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF4F04();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_274B68818(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
    v6 = sub_274BF4DE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

BOOL sub_274B63778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_15:
        result = v8 == v2;
        if (v8 == v2)
        {
          return result;
        }

        if (v8 >= v2)
        {
          __break(1u);
          return result;
        }

        v5 = *(v3 + 8 * v8);
        v6 = *(v4 + 8 * v8++);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v9 = (v5 + 40);
      v10 = (v6 + 40);
      while (1)
      {
        v11 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
        if (!v11 && (sub_274BF5C24() & 1) == 0)
        {
          break;
        }

        v9 += 2;
        v10 += 2;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_274B63878(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_274BF1D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v5, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v5);
    sub_274B68818(&qword_28098C318, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
    v23 = sub_274BF4EF4();
    v24 = *v19;
    (*v19)(v8, v5);
    v24(v12, v5);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_274B63A8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274B63AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3 == 1)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

char *sub_274B63BF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63C7C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274B63CBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

void sub_274B63CFC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_77_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_77_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_274B63E6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274B6425C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63E8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274B6435C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63EAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274B64468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274B63F44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274B64960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_274B63FBC()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648, &qword_274BFFF20);
    v7 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 16);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B64090(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_13();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_32();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = OUTLINED_FUNCTION_96();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 32);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || &v17[32 * v12] <= v16)
    {
      memmove(v16, v17, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B6417C()
{
  OUTLINED_FUNCTION_53();
  if (v3)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C470, &qword_274BFFFE0);
    v9 = OUTLINED_FUNCTION_96();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

char *sub_274B6425C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C400, &qword_274BFFF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_274B6435C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A610, &qword_274BFFF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274B64468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E0, &unk_274C00190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_274B64580()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C338, &qword_274C04E30);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 104);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[104 * v2] <= v9)
    {
      memmove(v9, v10, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274B6466C()
{
  OUTLINED_FUNCTION_53();
  if (v4)
  {
    OUTLINED_FUNCTION_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_24_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C320, &qword_274BFFF00);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_97(v7);
    OUTLINED_FUNCTION_76_0(v8 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 24 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_30_3();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C328, &qword_274BFFF08);
    OUTLINED_FUNCTION_30_3();
    swift_arrayInitWithCopy();
  }
}

void sub_274B647AC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_13();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_32();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_274B63CFC(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_274B64960(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C3E8, &qword_274C04EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_274B64A60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B65184(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274B64E4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64B54(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_274BF5BD4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_274BF5174();
        *(v8 + 16) = v7;
      }

      v9[0] = v8 + 32;
      v9[1] = v7;
      sub_274B65624(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_274B64EA8(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_274B64C54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B65DD0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274B6503C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64D48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C380, &qword_274BFFF50);
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274B662D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_274B65104(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274B64E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_274B64EA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v26 = *a4;
  v6 = (*a4 + 16 * a3);
  v7 = result - a3;
  while (2)
  {
    v24 = v6;
    v25 = a3;
    v8 = *(v26 + 16 * a3 + 8);
    v23 = v7;
    do
    {
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = *a5;
      if (!*(*a5 + 16))
      {

        v15 = 0;
        goto LABEL_8;
      }

      v12 = *v6;

      v13 = sub_274BDA830(v12, v8);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 32 * v13 + 8);
LABEL_8:

        goto LABEL_10;
      }

      v15 = 0;
LABEL_10:

      v16 = *a5;
      if (*(*a5 + 16) && (v17 = sub_274BDA830(v10, v9), (v18 & 1) != 0))
      {
        v19 = *(*(v16 + 56) + 32 * v17 + 8);
      }

      else
      {
        v19 = 0;
      }

      if (v15 >= v19)
      {
        break;
      }

      if (!v26)
      {
        __break(1u);
        return result;
      }

      v20 = *v6;
      v8 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v8;
      *(v6 - 2) = v20;
      v6 -= 2;
    }

    while (!__CFADD__(v7++, 1));
    a3 = v25 + 1;
    v6 = v24 + 2;
    v7 = v23 - 1;
    if (v25 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_274B6503C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_274BF5C24();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_274B65104(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 56);
        v11 = *(v9 + 40);
        v12 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v12;
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 24) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_274B65184(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_274BBB338(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_274B66B50((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_274B667CC(&v78, *result, a3);
LABEL_89:
}

void sub_274B65624(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v131 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_111:
    v5 = *result;
    if (!*result)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_148;
  }

  v7 = 0;
  i = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_33;
    }

    v11 = *a3;
    v12 = (*a3 + 16 * v10);
    v13 = v12[1];
    v130[0] = *v12;
    v130[1] = v13;
    v14 = (v11 + 16 * v9);
    v5 = v14[1];
    v129[0] = *v14;
    v129[1] = v5;

    v121 = sub_274B62698(v130, v129, v131);
    if (v125)
    {

LABEL_123:

      return;
    }

    v114 = i;

    v15 = 16 * v9;
    v16 = v9;
    v17 = v14 + 3;
    v116 = v16;
    v18 = v16 + 2;
    v119 = v6;
    while (1)
    {
      v19 = v18;
      if (v10 + 1 >= v6)
      {
        break;
      }

      v20 = v17[2];
      v21 = *(v17 - 1);
      v22 = *v17;
      v23 = *v131;
      v126 = v10;
      if (!*(*v131 + 16))
      {

        v27 = 0;
        goto LABEL_11;
      }

      v24 = v17[1];

      v25 = sub_274BDA830(v24, v20);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 32 * v25 + 8);
LABEL_11:

        goto LABEL_13;
      }

      v27 = 0;
LABEL_13:

      v28 = *v131;
      if (*(*v131 + 16) && (v29 = sub_274BDA830(v21, v22), (v30 & 1) != 0))
      {
        v31 = (*(v28 + 56) + 32 * v29);
        v5 = *v31;
        i = v31[1];
      }

      else
      {
        v5 = 0;
        i = 0;
      }

      v32 = v121 ^ (v27 >= i);
      v17 += 2;
      v10 = v126 + 1;
      v18 = v19 + 1;
      v6 = v119;
      if ((v32 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v10 = v6;
LABEL_20:
    if (!v121)
    {
      i = v114;
      v9 = v116;
      goto LABEL_33;
    }

    v9 = v116;
    if (v10 < v116)
    {
      goto LABEL_147;
    }

    i = v114;
    if (v116 < v10)
    {
      if (v6 >= v19)
      {
        v33 = v19;
      }

      else
      {
        v33 = v6;
      }

      v34 = 16 * v33;
      v35 = v10;
      v36 = v116;
      do
      {
        if (v36 != --v35)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v38 = (v37 + v15);
          v39 = v37 + v34;
          v40 = *v38;
          v41 = v38[1];
          *v38 = *(v39 - 16);
          *(v39 - 16) = v40;
          *(v39 - 8) = v41;
        }

        ++v36;
        v34 -= 16;
        v15 += 16;
      }

      while (v36 < v35);
    }

LABEL_33:
    v42 = a3[1];
    if (v10 < v42)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_144;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v10 < v9)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB338(0, *(i + 16) + 1, 1, i);
      i = v104;
    }

    v64 = *(i + 16);
    v63 = *(i + 24);
    v65 = v64 + 1;
    v128 = v10;
    if (v64 >= v63 >> 1)
    {
      sub_274BBB338(v63 > 1, v64 + 1, 1, i);
      i = v105;
    }

    *(i + 16) = v65;
    v66 = i + 32;
    v67 = (i + 32 + 16 * v64);
    *v67 = v9;
    v67[1] = v128;
    v123 = *result;
    if (!*result)
    {
      goto LABEL_153;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = (v66 + 16 * (v65 - 1));
        v70 = (i + 16 * v65);
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(i + 32);
          v72 = *(i + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_130;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_133;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_138;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v65 < 2)
        {
          goto LABEL_132;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_94:
        if (v89)
        {
          goto LABEL_135;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_137;
        }

        if (v96 < v88)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v5 = i;
        i = v66 + 16 * (v68 - 1);
        v100 = *i;
        v101 = v66 + 16 * v68;
        v102 = *(v101 + 8);
        sub_274B66CE4((*a3 + 16 * *i), (*a3 + 16 * *v101), (*a3 + 16 * v102), v123, v131);
        if (v125)
        {
          goto LABEL_123;
        }

        if (v102 < v100)
        {
          goto LABEL_125;
        }

        v103 = *(v5 + 16);
        if (v68 > v103)
        {
          goto LABEL_126;
        }

        *i = v100;
        *(i + 8) = v102;
        if (v68 >= v103)
        {
          goto LABEL_127;
        }

        v65 = v103 - 1;
        sub_274BBF62C((v101 + 16), v103 - 1 - v68, (v66 + 16 * v68));
        i = v5;
        *(v5 + 16) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_108;
        }
      }

      v75 = v66 + 16 * v65;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_128;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_129;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_131;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_134;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_142;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v6 = a3[1];
    v7 = v128;
    if (v128 >= v6)
    {
      goto LABEL_111;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_145;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    i = sub_274BBF538(i);
LABEL_113:
    v106 = i;
    v107 = (i + 16);
    for (i = *(i + 16); i >= 2; *v107 = i)
    {
      if (!*a3)
      {
        goto LABEL_151;
      }

      v108 = (v106 + 16 * i);
      v109 = *v108;
      v110 = &v107[2 * i];
      v111 = *(v110 + 1);
      sub_274B66CE4((*a3 + 16 * *v108), (*a3 + 16 * *v110), (*a3 + 16 * v111), v5, v131);
      if (v125)
      {
        break;
      }

      if (v111 < v109)
      {
        goto LABEL_139;
      }

      if (i - 2 >= *v107)
      {
        goto LABEL_140;
      }

      *v108 = v109;
      v108[1] = v111;
      v112 = *v107 - i;
      if (*v107 < i)
      {
        goto LABEL_141;
      }

      i = *v107 - 1;
      sub_274BBF62C(v110 + 16, v112, v110);
    }

    goto LABEL_123;
  }

  if (v10 == v43)
  {
    goto LABEL_59;
  }

  v115 = i;
  v44 = *a3;
  v45 = *a3 + 16 * v10;
  v46 = v9 - v10;
  v118 = v43;
  while (2)
  {
    v127 = v10;
    v47 = *(v44 + 16 * v10 + 8);
    v120 = v46;
    v122 = v45;
    v48 = v45;
LABEL_43:
    v49 = *(v48 - 2);
    v50 = *(v48 - 1);
    v51 = *v131;
    if (*(*v131 + 16))
    {
      v52 = *v48;

      v53 = sub_274BDA830(v52, v47);
      if (v54)
      {
        v55 = *(*(v51 + 56) + 32 * v53 + 8);
        goto LABEL_47;
      }

      v55 = 0;
    }

    else
    {

      v55 = 0;
LABEL_47:
    }

    v56 = *v131;
    if (*(*v131 + 16) && (v57 = sub_274BDA830(v49, v50), (v58 & 1) != 0))
    {
      v59 = (*(v56 + 56) + 32 * v57);
      v5 = *v59;
      v60 = v59[1];
    }

    else
    {
      v5 = 0;
      v60 = 0;
    }

    if (v55 >= v60)
    {
LABEL_57:
      v10 = v127 + 1;
      v45 = v122 + 16;
      v46 = v120 - 1;
      if (v127 + 1 == v118)
      {
        v10 = v118;
        i = v115;
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  if (v44)
  {
    v61 = *v48;
    v47 = v48[1];
    *v48 = *(v48 - 1);
    *(v48 - 1) = v47;
    *(v48 - 2) = v61;
    v48 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_57;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_274B65DD0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_274BF5C24();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_274BF5C24()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_274BBB338(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_274B6705C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_274B668F8(&v92, *result, a3);
LABEL_102:
}

void sub_274B662D8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = (*a3 + 32 * v7);
        v12 = 32 * v7;
        v15 = *v11;
        v14 = v11 + 8;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 4;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 32 * v6 - 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = (v24 + v21);
                v27 = *(v25 + 2);
                v28 = *(v25 + 3);
                v29 = *v25;
                v30 = v26[1];
                *v25 = *v26;
                v25[1] = v30;
                *v26 = v29;
                *(v26 + 2) = v27;
                *(v26 + 3) = v28;
              }

              ++v23;
              v21 -= 32;
              v12 += 32;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v31 = *a3;
            v32 = *a3 + 32 * v9 - 32;
            v33 = v7 - v9;
            do
            {
              v34 = *(v31 + 32 * v9);
              v35 = v33;
              v36 = v32;
              do
              {
                if (v34 >= *v36)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_111;
                }

                v37 = *(v36 + 56);
                v38 = *(v36 + 40);
                v39 = *(v36 + 16);
                *(v36 + 32) = *v36;
                *(v36 + 48) = v39;
                *v36 = v34;
                *(v36 + 8) = v38;
                *(v36 + 24) = v37;
                v36 -= 32;
              }

              while (!__CFADD__(v35++, 1));
              ++v9;
              v32 += 32;
              --v33;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v85;
      }

      v42 = v8[2];
      v41 = v8[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_274BBB338(v41 > 1, v42 + 1, 1, v8);
        v8 = v86;
      }

      v8[2] = v43;
      v44 = v8 + 4;
      v45 = &v8[2 * v42 + 4];
      *v45 = v7;
      v45[1] = v9;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v8[2 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = v8[4];
            v50 = v8[5];
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v80 = &v44[2 * v46];
          v81 = v80[1];
          sub_274B67220((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = v8[2];
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          memmove(&v44[2 * v46], v80 + 2, 16 * (v83 - 1 - v46));
          v82[2] = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = &v44[2 * v43];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_274B66A24(&v92, *result, a3);
LABEL_89:
}

uint64_t sub_274B667CC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B66B50((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B668F8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B6705C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B66A24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274B67220((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274B66B50(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v14 = v7 == v6;
      v6 += 8;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 8;
    }

    v13 = *v4;
    v14 = v7 == v4;
    v4 += 8;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
LABEL_25:
  v16 = v6 - 8;
  for (v5 -= 8; v11 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v11 - 1);
    if (v18 < *v16)
    {
      v14 = v5 + 8 == v6;
      v6 -= 8;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 8)
    {
      *v5 = v18;
    }

    v11 -= 8;
  }

LABEL_38:
  v19 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_274B66CE4(char *__src, char *__dst, char *a3, char *a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = (__dst - __src) / 16;
  v11 = (a3 - __dst) / 16;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v13 = &v6[2 * v10];
    v51 = v7;
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_57;
      }

      v15 = v8[1];
      v16 = *v6;
      v17 = v6[1];
      v18 = *a5;
      v53 = v9;
      if (*(*a5 + 16))
      {
        v19 = *v8;

        v20 = sub_274BDA830(v19, v15);
        if ((v21 & 1) == 0)
        {
          v22 = 0;
          goto LABEL_18;
        }

        v22 = *(*(v18 + 56) + 32 * v20 + 8);
      }

      else
      {

        v22 = 0;
      }

LABEL_18:

      v23 = *a5;
      if (*(*a5 + 16) && (v24 = sub_274BDA830(v16, v17), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 32 * v24 + 8);
      }

      else
      {
        v26 = 0;
      }

      if (v22 >= v26)
      {
        v27 = v6;
        v28 = v53;
        v29 = v53 == v6;
        v6 += 2;
      }

      else
      {
        v27 = v8;
        v28 = v53;
        v29 = v53 == v8;
        v8 += 2;
      }

      v7 = v51;
      if (!v29)
      {
        *v28 = *v27;
      }

      v9 = (v28 + 2);
    }
  }

  if (a4 != __dst || &__dst[16 * v11] <= a4)
  {
    memmove(a4, __dst, 16 * v11);
  }

  v13 = &v6[2 * v11];
  v50 = a5;
  v54 = v9;
LABEL_34:
  v31 = v7 - 16;
  v49 = v8 - 2;
  while (v13 > v6 && v8 > v9)
  {
    v52 = v31;
    v33 = v13 - 2;
    v34 = *(v13 - 1);
    v35 = *(v8 - 2);
    v36 = *(v8 - 1);
    v37 = *a5;
    if (*(*a5 + 16))
    {
      v38 = *v33;

      v39 = sub_274BDA830(v38, v34);
      if ((v40 & 1) == 0)
      {
        v41 = 0;
        goto LABEL_46;
      }

      v41 = *(*(v37 + 56) + 32 * v39 + 8);
    }

    else
    {

      v41 = 0;
    }

LABEL_46:

    v42 = *v50;
    if (*(*v50 + 16) && (v43 = sub_274BDA830(v35, v36), (v44 & 1) != 0))
    {
      v45 = *(*(v42 + 56) + 32 * v43 + 8);
    }

    else
    {
      v45 = 0;
    }

    if (v41 < v45)
    {
      a5 = v50;
      v7 = v52;
      v29 = v52 + 16 == v8;
      v8 -= 2;
      v9 = v54;
      if (!v29)
      {
        *v52 = *v49;
        v8 = v49;
      }

      goto LABEL_34;
    }

    a5 = v50;
    if (v13 != (v52 + 16))
    {
      *v52 = *v33;
    }

    v31 = v52 - 16;
    v13 -= 2;
    v9 = v54;
  }

LABEL_57:
  v46 = (v13 - v6) / 16;
  if (v8 != v6 || v8 >= &v6[2 * v46])
  {
    memmove(v8, v6, 16 * v46);
  }

  return 1;
}

uint64_t sub_274B6705C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_274BF5C24() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_274B67220(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 32;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 32;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 32;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_25:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v11 - 4) < *v17)
    {
      v14 = v5 + 32 == v6;
      v6 -= 32;
      if (!v14)
      {
        v20 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 32)
    {
      v19 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v19;
    }

    v11 -= 32;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

uint64_t (*sub_274B673C4(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_274B679B4(v4);
  v4[9] = sub_274B67550(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_274B68ADC;
}

uint64_t (*sub_274B67454(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_274B679DC(v6);
  v6[9] = sub_274B6773C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_274B674EC;
}

void sub_274B674F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_274B67550(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = *v3;
  v9 = sub_274BDA8E8(a2);
  *(v7 + 32) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B0, &unk_274BFE4C0);
  if (sub_274BF5A74())
  {
    v13 = sub_274BDA8E8(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[3] = v11;
  if (v12)
  {
    v15 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v15 = 0;
  }

  *v7 = v15;
  return sub_274B67678;
}

void sub_274B67678(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_274B32194(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
    sub_274BF5A84();
  }

  free(v1);
}

void (*sub_274B6773C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  *(v9 + 5) = a3;
  *(v9 + 6) = v4;
  *(v9 + 4) = a2;
  v10 = *v4;
  v11 = sub_274BDA830(a2, a3);
  v9[26] = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B8, &qword_274C00000);
  if (sub_274BF5A74())
  {
    v15 = sub_274BDA830(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v9 + 7) = v13;
  if (v14)
  {
    v17 = *(*v5 + 56) + 32 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 24);
    if (*(v17 + 25))
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 | v20;
  }

  else
  {
    v18 = 0;
    v22 = 0;
    v19 = 0uLL;
  }

  *v9 = v18;
  *(v9 + 8) = v19;
  *(v9 + 12) = v22;
  return sub_274B678AC;
}

void sub_274B678AC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = *(*a1 + 12);
  v9 = *(*a1 + 26);
  if (v6)
  {
    v10 = v4[7];
    v11 = *v4[6];
    if (v9)
    {
      v12 = v11[7] + 32 * v10;
      *v12 = v6;
      *(v12 + 8) = v5;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8 & 1;
      *(v12 + 25) = HIBYTE(v8) & 1;
    }

    else
    {
      sub_274B321CC(v10, v4[4], v4[5], v6, v5, v7, v8 & 0x101, v11);
    }
  }

  else if (*(*a1 + 26))
  {
    sub_274B687C4(*(*v4[6] + 48) + 16 * v4[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C488, &qword_274BFFFF8);
    sub_274BF5A84();
  }

  free(v4);
}

uint64_t (*sub_274B679B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_274B68A98;
}

uint64_t (*sub_274B679DC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_274B67A04;
}

void sub_274B67A10(uint64_t a1, void *a2)
{
  sub_274AD8430(0, &qword_28098C290, 0x277D742E0);
  v3 = sub_274BF5134();

  [a2 setTabStops_];
}

uint64_t sub_274B67A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore14WFMarkdownViewC11AttributionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274B67B1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B67B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B67CA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B67CE8(uint64_t result, int a2, int a3)
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

uint64_t sub_274B67D94(uint64_t a1, __n128 a2)
{
  sub_274B67E5C(319, a2);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v3 = sub_274BF1D34();
    if (v5 <= 0x3F)
    {
      sub_274B67EC8(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_274B67F2C(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_274B67FDC(319);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

void sub_274B67E5C(uint64_t a1, __n128 a2)
{
  if (!qword_28098C2C8)
  {
    sub_274BF1D34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_28098C2C8);
    }
  }
}

void sub_274B67EC8(uint64_t a1)
{
  if (!qword_28098C2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650, &qword_274BF9680);
    v1 = sub_274BF51A4();
    if (!v2)
    {
      atomic_store(v1, &qword_28098C2D0);
    }
  }
}

void sub_274B67F2C(uint64_t a1)
{
  if (!qword_28098C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2E0, &qword_274BFFD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2E8, &qword_274BFFD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C2F0, &qword_274BFFD98);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28098C2D8);
    }
  }
}

void sub_274B67FDC(uint64_t a1)
{
  if (!qword_28098C2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C300, &unk_274BFFDA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28098C2F8);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WFMarkdownStringFormatter.ListItemType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WFMarkdownStringFormatter.ListItemType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_274B680C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B680E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_274B6811C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 392))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B6815C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B68210(uint64_t a1)
{
  v2 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B68274(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_274B68344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_274B6839C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_274AF58B0(result, a2);
  }

  return result;
}

unint64_t sub_274B683B0()
{
  result = qword_28098C3B8;
  if (!qword_28098C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3B8);
  }

  return result;
}

unint64_t sub_274B68404()
{
  result = qword_28098C3C8;
  if (!qword_28098C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3C8);
  }

  return result;
}

unint64_t sub_274B68458()
{
  result = qword_28098C3D0;
  if (!qword_28098C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3D0);
  }

  return result;
}

unint64_t sub_274B684AC()
{
  result = qword_28098C3D8;
  if (!qword_28098C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3D8);
  }

  return result;
}

unint64_t sub_274B68530()
{
  result = qword_28098C3E0;
  if (!qword_28098C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C3E0);
  }

  return result;
}

void sub_274B685AC(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_274B68818(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
  v3 = sub_274BF4DE4();

  [a2 setLinkTextAttributes_];
}

unint64_t sub_274B6867C()
{
  result = qword_28098C450;
  if (!qword_28098C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C450);
  }

  return result;
}

unint64_t sub_274B686D0()
{
  result = qword_28098C460;
  if (!qword_28098C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C460);
  }

  return result;
}

uint64_t sub_274B68724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFMarkdownStringFormatter.Block(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B68818(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274B68860()
{
  result = qword_28098C4B0;
  if (!qword_28098C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFMarkdownStringFormatterError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_274B68984(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B689C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_274B68A2C()
{
  result = qword_28098C4D8;
  if (!qword_28098C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4D8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_40_0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

id OUTLINED_FUNCTION_43()
{

  return sub_274B17D10(2570, 0xE200000000000000);
}

id OUTLINED_FUNCTION_45_0()
{

  return [v0 (v1 + 190)];
}

id OUTLINED_FUNCTION_62_0(void *a1, double a2)
{
  v5 = round(v4 * a2);

  return [a1 (v2 + 2333)];
}

id OUTLINED_FUNCTION_63_0()
{

  return [v0 (v1 + 821)];
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_274B68304();
}

id OUTLINED_FUNCTION_91(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_92()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

id OUTLINED_FUNCTION_93(id a1, SEL a2)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_95(id a1, SEL a2, double a3)
{
  LODWORD(a3) = v4;

  return [a1 a2];
}

id OUTLINED_FUNCTION_98(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_274B68D80()
{
  v0 = objc_allocWithZone(type metadata accessor for VariableDelegate());

  return [v0 init];
}

uint64_t VariableView.init(variable:height:controlState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 24) = sub_274B68D80;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t VariableView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E8, &qword_274C001A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-v2 - 8];
  v4 = v0[1];
  v18 = *v0;
  v19[0] = v4;
  *(v19 + 9) = *(v0 + 25);
  v5 = v18;
  v6 = [v5 name];
  sub_274BF4F44();

  v7 = [v5 icon];
  [v5 isAvailable];
  sub_274BF2864();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_1_17(v8);
  v9 = &v3[*(v1 + 36)];
  *v9 = sub_274B690D8;
  v9[1] = v10;
  v9[2] = 0;
  v9[3] = 0;
  v17 = v5;
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_17(v11);
  sub_274B691EC(&v18, v16);
  sub_274B691EC(&v18, v16);
  sub_274B69224();
  sub_274B69268();
  OUTLINED_FUNCTION_0_18();
  sub_274B697E0(v12, v13, MEMORY[0x277D85380]);
  sub_274BF4494();

  return sub_274B69324(v3);
}

void sub_274B69004(void **a1)
{
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate, &unk_274C002B4);
  v4 = sub_274BF2F94();
  v2 = *a1;
  v3 = v2;
  sub_274B69544(v2);
}

double sub_274B690C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

void sub_274B690E0(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate, &unk_274C002B4);
  v5 = sub_274BF2F94();
  v4 = v3;
  sub_274B69544(v3);
}

uint64_t objectdestroyTm_8()
{
  sub_274B690C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_274B69224()
{
  result = qword_28098C4F0;
  if (!qword_28098C4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C4F0);
  }

  return result;
}

unint64_t sub_274B69268()
{
  result = qword_28098C4F8;
  if (!qword_28098C4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C4E8, &qword_274C001A0);
    sub_274B697E0(&qword_28098C500, MEMORY[0x277D7D598], MEMORY[0x277D7D590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C4F8);
  }

  return result;
}

uint64_t sub_274B69324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C4E8, &qword_274C001A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274B693CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274B6940C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_274B69468(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable;
  v5 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeDelegate_];
    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_274B69224();
    v6 = v5;
    v3 = v3;
    v7 = sub_274BF5624();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  [v5 addDelegate_];
}

void sub_274B69544(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable);
  *(v1 + OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable) = a1;
  v2 = a1;
  sub_274B69468(v3);
}

id sub_274B695A4()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable];
  *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VariableDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_274B69628()
{
  type metadata accessor for VariableDelegate();
  sub_274B697E0(qword_28098C578, type metadata accessor for VariableDelegate, &unk_274C002B4);
  sub_274BF2CE4();
  sub_274BF2D04();

  return result;
}

id sub_274B69714()
{
  *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_D6521D150D80B7008B3CC8BBAF4C7F1316VariableDelegate_variable] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_274B697A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VariableDelegate();
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

uint64_t sub_274B697E0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274B69828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentItemRepresentationLoader.State(255, *(a1 + 80), a3, a4);
  result = sub_274BF2D94();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_274B698E0()
{
  OUTLINED_FUNCTION_18();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return result;
}

uint64_t sub_274B69998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentItemRepresentationLoader.State(0, *(a3 + a4 - 8), a3, a4);
  OUTLINED_FUNCTION_1();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_274B69A5C(v8);
}

uint64_t sub_274B69A5C(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 80);
  v6 = type metadata accessor for ContentItemRepresentationLoader.State(0, v3, v4, v5);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v13[2] = v3;
  swift_getKeyPath();
  v13[0] = v3;
  swift_getKeyPath();
  (*(v8 + 16))(v11, a1, v6);

  sub_274BF2D74();
  return (*(v8 + 8))(a1, v6);
}

void sub_274B69B9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18();
  v8 = type metadata accessor for ContentItemRepresentationLoader.State(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &aBlock[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &aBlock[-v15];
  sub_274B698E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
  v17 = sub_274BF5D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 2, v17);
  (*(v10 + 8))(v16, v8);
  if (EnumTagSinglePayload == 1)
  {
    __swift_storeEnumTagSinglePayload(v13, 2, 2, v17);
    sub_274B69A5C(v13);
    v19 = *(v2 + 24);
    if (v19 && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
    {
      v21 = v20;
      v22 = *(v2 + 16);
      v23 = swift_allocObject();
      v23[2] = v2;
      v23[3] = a1;
      v23[4] = a2;
      OUTLINED_FUNCTION_0_19(v23);
      v33 = 1107296256;
      v34 = sub_274B34420;
      v35 = &block_descriptor_6;
      v24 = _Block_copy(aBlock);
      v25 = v19;
      v26 = v22;

      sub_274ADDED0(a1, a2);

      [v26 getObjectRepresentation:v24 forClass:{objc_msgSend(v21, sel_objectClass)}];
      _Block_release(v24);
    }

    else
    {
      v27 = *(v2 + 16);
      v28 = swift_allocObject();
      v28[2] = v2;
      v28[3] = a1;
      v28[4] = a2;
      OUTLINED_FUNCTION_0_19(v28);
      v33 = 1107296256;
      v34 = sub_274B34890;
      v35 = &block_descriptor_8;
      v29 = _Block_copy(aBlock);

      sub_274ADDED0(a1, a2);
      v26 = v27;

      if (v19)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v19;
        }
      }

      else
      {
        v30 = 0;
      }

      [v26 getFileRepresentation:v29 forType:v30];

      _Block_release(v29);
    }
  }
}

uint64_t sub_274B69EF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v11 = sub_274BF4C94();
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_274BF4CD4();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B0F2B4();
  v25 = sub_274BF5504();
  sub_274B489B0(a1, v29);
  v17 = swift_allocObject();
  v18 = v29[1];
  *(v17 + 16) = v29[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = a5;
  *(v17 + 56) = a4;
  v19 = v24;
  *(v17 + 64) = a6;
  *(v17 + 72) = v19;
  aBlock[4] = sub_274B6B100;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  v21 = a4;
  sub_274ADDED0(a6, v19);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274B03DB4();
  sub_274BF57F4();
  v22 = v25;
  MEMORY[0x277C64DC0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

uint64_t sub_274B6A1BC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for ContentItemRepresentationLoader.State(0, v7, a3, a4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = sub_274BF5724();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_274B489B0(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300, &qword_274BFDB20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    (*(v15 + 32))(v18, v14, v7);
    (*(v15 + 16))(v10, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
    v19 = sub_274BF5D64();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 2, v19);
    sub_274B69A5C(v10);
    result = (*(v15 + 8))(v18, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
    (*(v12 + 8))(v14, v11);
    if (a3)
    {
      *v10 = a3;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
      v21 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v21);
      v22 = a3;
    }

    else
    {
      sub_274B349FC();
      *v10 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
      v23 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v23);
    }

    result = sub_274B69A5C(v10);
  }

  if (v25)
  {
    return v25(result);
  }

  return result;
}

uint64_t sub_274B6A574(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_274BF4C94();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_274BF4CD4();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B0F2B4();
  v23 = sub_274BF5504();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a5;
  v17 = a5;
  aBlock[4] = sub_274B6B110;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_18;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = a2;
  sub_274ADDED0(a4, v17);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274B03DB4();
  sub_274BF57F4();
  v21 = v23;
  MEMORY[0x277C64DC0](0, v15, v12, v18);
  _Block_release(v18);

  (*(v26 + 8))(v12, v10);
  return (*(v24 + 8))(v15, v25);
}

uint64_t sub_274B6A830(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v25[1] = a5;
  v26 = a4;
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for ContentItemRepresentationLoader.State(0, v7, a3, a4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v25 - v9);
  v11 = sub_274BF5724();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  v27 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C680, &qword_274C003B8);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    (*(v15 + 32))(v18, v14, v7);
    (*(v15 + 16))(v10, v18, v7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
    v20 = sub_274BF5D64();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 2, v20);
    sub_274B69A5C(v10);
    result = (*(v15 + 8))(v18, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
    (*(v12 + 8))(v14, v11);
    if (a3)
    {
      *v10 = a3;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
      v22 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v22);
      v23 = a3;
    }

    else
    {
      sub_274B349FC();
      *v10 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
      v24 = sub_274BF5D64();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v10, 0, 2, v24);
    }

    result = sub_274B69A5C(v10);
  }

  if (v26)
  {
    return v26(result);
  }

  return result;
}

uint64_t *sub_274B6ABE4()
{
  v1 = *v0;

  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 104);
  type metadata accessor for ContentItemRepresentationLoader.State(255, *(v1 + 80), v4, v5);
  v6 = sub_274BF2D94();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  return v0;
}

uint64_t sub_274B6AC88()
{
  sub_274B6ABE4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B6AD10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989630, &qword_274BF9660);
  v1 = sub_274BF5D64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_274B6AD90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_274B6AEC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -2 - a2;
        }

        break;
    }
  }
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_9()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for ContentItemRepresentationLoadingError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_274B6B1D0()
{
  result = qword_28098C688;
  if (!qword_28098C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C688);
  }

  return result;
}

uint64_t SafariView.URL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SafariView.init(URL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t SafariView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 16))(a1, v1);
  v4 = sub_274BF3E44();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C690, &qword_274C004F0);
  *(a1 + *(result + 36)) = v4;
  return result;
}

id sub_274B6B394()
{
  v1 = sub_274BF1F54();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  v6 = [objc_allocWithZone(MEMORY[0x277CDB708]) init];
  v7 = objc_allocWithZone(MEMORY[0x277CDB700]);
  return sub_274B6B7E8(v4, v6);
}

uint64_t sub_274B6B484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B6B7A4(&qword_28098C6C8, &unk_274C0058C);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274B6B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B6B7A4(&qword_28098C6C8, &unk_274C0058C);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274B6B584(uint64_t a1)
{
  sub_274B6B7A4(&qword_28098C6C8, &unk_274C0058C);
  sub_274BF3D84();
  __break(1u);
}

unint64_t sub_274B6B614()
{
  result = qword_28098C6A8;
  if (!qword_28098C6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C690, &qword_274C004F0);
    sub_274B6B7A4(&qword_28098C6B0, &unk_274C00604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C6A8);
  }

  return result;
}

uint64_t sub_274B6B704(uint64_t a1)
{
  result = sub_274BF1F54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_274B6B7A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariView.ViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_274B6B7E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_274BF1ED4();
  v7 = [v3 initWithURL:v6 configuration:a2];

  v8 = sub_274BF1F54();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t WFReminderContentItem.preview(configuration:)(uint64_t a1)
{
  _s14WorkflowUICore11PreviewViewVMa_2(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 8);
  *v5 = v1;
  v5[8] = v4;
  v5[9] = v6;
  *(v5 + 2) = v7;

  v8 = v1;
  sub_274BF2224();
  sub_274B6B984();
  return sub_274BF48B4();
}

uint64_t _s14WorkflowUICore11PreviewViewVMa_2(uint64_t a1)
{
  result = qword_28098C6D8;
  if (!qword_28098C6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274B6B984()
{
  result = qword_28098C6D0;
  if (!qword_28098C6D0)
  {
    _s14WorkflowUICore11PreviewViewVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C6D0);
  }

  return result;
}

uint64_t WFReminderContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4FE4("View in Reminders", 17);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v2 = qword_28098C7C0;
  v3 = sub_274BF4F04();
  v4 = sub_274BF4F04();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_274BF4F44();
  v8 = v7;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_274BF2154();
  v10 = type metadata accessor for ContentItemPreview.Action(0);
  v11 = (a1 + v10[5]);
  *v11 = v6;
  v11[1] = v8;
  v12 = (a1 + v10[6]);
  *v12 = 0xD000000000000012;
  v12[1] = 0x8000000274C0B8B0;
  v13 = (a1 + v10[7]);
  *v13 = sub_274B6D638;
  v13[1] = v9;

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
}

void *sub_274B6BB68(uint64_t a1)
{
  v1 = sub_274BF2A44();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274BF1F54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF2A24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_274BF2A14();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C708, &unk_274C00708);
    v27 = v4;
    v25 = *(v14 + 48);
    v15 = [v13 reminder];
    v26 = v5;
    v16 = v15;
    v17 = [v15 objectID];
    v18 = v28;
    v19 = v7;
    v20 = v1;
    v21 = v17;

    *v3 = v21;
    (*(v9 + 16))(&v3[v25], v11, v8);
    (*(v18 + 104))(v3, *MEMORY[0x277D45248], v20);
    sub_274BF2A34();
    (*(v18 + 8))(v3, v20);
    v22 = [objc_opt_self() sharedContext];
    v23 = sub_274BF1ED4();
    [v22 openURL_];

    (*(v26 + 8))(v19, v27);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_274B6BEE4@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v2 = _s14WorkflowUICore11PreviewViewVMa_2(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = [*v1 reminder];
  v6 = sub_274BF3804();
  v13 = 1;
  sub_274B6C120(v5, v1, v16);
  memcpy(v14, v16, sizeof(v14));
  memcpy(v15, v16, sizeof(v15));
  sub_274AFA6A8(v14, v11, &qword_28098C6F0, &qword_274C006F8);
  sub_274AFA708(v15, &qword_28098C6F0, &qword_274C006F8);
  memcpy(&v12[7], v14, 0x1E0uLL);
  v11[0] = v6;
  v11[1] = 0;
  LOBYTE(v11[2]) = v13;
  memcpy(&v11[2] + 1, v12, 0x1E7uLL);
  sub_274B6D754(v1, &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_274B6D7B8(&v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C6F8, &qword_274C00700);
  sub_274B6D87C();
  sub_274BF4254();

  memcpy(v16, v11, 0x1F8uLL);
  return sub_274AFA708(v16, &qword_28098C6F8, &qword_274C00700);
}

double sub_274B6C120@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0, &qword_274BFC4C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_274BF3FF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C710, &qword_274C00718);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  sub_274BF46D4();
  sub_274BF3944();
  v14 = sub_274BF3954();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v23 = sub_274BF4714();

  sub_274AFA708(v13, &qword_28098C710, &qword_274C00718);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A80], v7);
  v15 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  v16 = sub_274BF3F54();
  sub_274AFA708(v6, &qword_280989DC0, &qword_274BFC4C0);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v18 = sub_274BF45C4();
  v19 = sub_274BF45C4();
  v20 = sub_274BF3904();
  v32 = 1;
  sub_274B6C588(v24, v25, v29);
  memcpy(v33, v29, sizeof(v33));
  memcpy(v34, v29, 0x128uLL);
  sub_274AFA6A8(v33, v28, &qword_28098C718, &qword_274C00750);
  sub_274AFA708(v34, &qword_28098C718, &qword_274C00750);
  memcpy(&v31[7], v33, 0x128uLL);
  LOBYTE(v13) = v32;
  sub_274BF4A94();
  sub_274BF34A4();
  v28[0] = v20;
  v28[1] = 0;
  LOBYTE(v28[2]) = v13;
  memcpy(&v28[2] + 1, v31, 0x12FuLL);
  memcpy(&v28[40], v27, 0x70uLL);
  *a3 = v23;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v16;
  *(a3 + 24) = 1;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  memcpy((a3 + 48), v28, 0x1B0uLL);
  v29[0] = v20;
  v29[1] = 0;
  LOBYTE(v29[2]) = v13;
  memcpy(&v29[2] + 1, v31, 0x12FuLL);
  memcpy(v30, v27, sizeof(v30));

  sub_274AFA6A8(v28, &v26, &qword_28098C720, &qword_274C00758);
  sub_274AFA708(v29, &qword_28098C720, &qword_274C00758);

  return result;
}

uint64_t sub_274B6C588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728, &qword_274C00760);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v56 - v6;
  v64 = sub_274BF2114();
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF1BB4();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0, &qword_274BFC4C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v56 - v14;
  v74 = sub_274BF3FF4();
  v16 = *(v74 - 8);
  *&v17 = MEMORY[0x28223BE20](v74).n128_u64[0];
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v20 = [a1 title];
  v21 = v20;
  v73 = v12;
  v61 = a2;
  if (v20)
  {
    v22 = [v20 string];

    sub_274BF4F44();
  }

  v23 = *MEMORY[0x277CE0A68];
  v24 = v74;
  v58 = *(v16 + 104);
  v58(v19, v23, v74);
  v57 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v57);
  sub_274BF3F54();
  sub_274AFA708(v15, &qword_280989DC0, &qword_274BFC4C0);
  v26 = *(v16 + 8);
  v25 = (v16 + 8);
  v56 = v26;
  v26(v19, v24);
  v27 = sub_274BF40D4();
  v69 = v28;
  v70 = v27;
  v30 = v29;
  v71 = v31;

  sub_274BF4AA4();
  sub_274BF34A4();
  v68 = v30 & 1;
  v87 = v30 & 1;
  v32 = [v67 dueDateComponents];
  if (v32)
  {
    v33 = v32;
    v67 = v25;
    v34 = v60;
    sub_274BF1BA4();

    v36 = v65;
    v35 = v66;
    (*(v65 + 32))(v73, v34, v66);
    _s14WorkflowUICore11PreviewViewVMa_2(0);
    v37 = v62;
    sub_274BF2214();
    v38 = v37;
    v39 = v37;
    v40 = v64;
    if (__swift_getEnumTagSinglePayload(v39, 1, v64) != 1)
    {
      v41 = v59;
      v42 = v63;
      (*(v59 + 32))(v63, v38, v40);
      sub_274B6CD74(v42);
      v43 = v74;
      v58(v19, *MEMORY[0x277CE0AB0], v74);
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v57);
      sub_274BF3F54();
      sub_274AFA708(v15, &qword_280989DC0, &qword_274BFC4C0);
      v56(v19, v43);
      v44 = sub_274BF40D4();
      v46 = v45;
      v48 = v47;
      v50 = v49;

      sub_274BF4AA4();
      sub_274BF34A4();
      (*(v41 + 8))(v63, v40);
      (*(v65 + 8))(v73, v66);
      v82[0] = v48 & 1;
      v83[0] = v44;
      v83[1] = v46;
      LOBYTE(v83[2]) = v48 & 1;
      v83[3] = v50;
      v83[4] = 0x3FE999999999999ALL;
      memcpy(&v83[5], __src, 0x70uLL);
      CGSizeMake();
      memcpy(v84, v83, sizeof(v84));
      goto LABEL_8;
    }

    (*(v36 + 8))(v73, v35);
    sub_274AFA708(v38, &qword_28098C728, &qword_274C00760);
  }

  sub_274B6D8E0(v84);
LABEL_8:
  memcpy(v83, v84, sizeof(v83));
  v52 = v69;
  v51 = v70;
  v81[0] = v70;
  v81[1] = v69;
  v53 = v68;
  LOBYTE(v81[2]) = v68;
  *(&v81[2] + 1) = *v86;
  HIDWORD(v81[2]) = *&v86[3];
  v54 = v71;
  v81[3] = v71;
  memcpy(&v81[4], v85, 0x70uLL);
  memcpy(v80, v81, 0x90uLL);
  memcpy(v82, v84, sizeof(v82));
  memcpy(&v80[144], v84, 0x98uLL);
  memcpy(v72, v80, 0x128uLL);
  sub_274AFA6A8(v81, v75, &qword_28098C730, &qword_274C00768);
  sub_274AFA6A8(v82, v75, &qword_28098C738, &unk_274C00770);
  sub_274AFA708(v83, &qword_28098C738, &unk_274C00770);
  v75[0] = v51;
  v75[1] = v52;
  v76 = v53;
  *v77 = *v86;
  *&v77[3] = *&v86[3];
  v78 = v54;
  memcpy(v79, v85, sizeof(v79));
  return sub_274AFA708(v75, &qword_28098C730, &qword_274C00768);
}

uint64_t sub_274B6CD74(uint64_t a1)
{
  v1 = sub_274BF2254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentCalendar];
  sub_274BF2204();

  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  if ((sub_274BF21D4() & 1) == 0)
  {
    if (sub_274BF21F4())
    {
      sub_274BF4FE4("Yesterday, %@", 13);
      if (qword_2809893B8 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if ((sub_274BF21E4() & 1) == 0)
      {
        [v6 setDateStyle_];
        v28 = sub_274BF20A4();
        v29 = [v6 stringFromDate_];

        v17 = sub_274BF4F44();
        goto LABEL_12;
      }

      sub_274BF4FE4("Tomorrow, %@", 12);
      if (qword_2809893B8 == -1)
      {
LABEL_10:
        v18 = qword_28098C7C0;
        v19 = sub_274BF4F04();
        v20 = sub_274BF4F04();

        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

        sub_274BF4F44();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_274BF8D80;
        v23 = sub_274BF20A4();
        v24 = [v6 stringFromDate_];

        v25 = sub_274BF4F44();
        v27 = v26;

        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = sub_274B12CA0();
        *(v22 + 32) = v25;
        *(v22 + 40) = v27;
        v17 = sub_274BF4F14();

LABEL_12:

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

  sub_274BF4FE4("Today, %@", 9);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v7 = qword_28098C7C0;
  v8 = sub_274BF4F04();
  v9 = sub_274BF4F04();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_274BF8D80;
  v12 = sub_274BF20A4();
  v13 = [v6 stringFromDate_];

  v14 = sub_274BF4F44();
  v16 = v15;

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_274B12CA0();
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v17 = sub_274BF4F14();

LABEL_13:
  (*(v2 + 8))(v4, v1);
  return v17;
}

uint64_t sub_274B6D348(id *a1)
{
  v2 = sub_274BF2A44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1F54();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF2A24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2A14();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C708, &unk_274C00708) + 48);
  v14 = [*a1 reminder];
  v15 = [v14 objectID];

  *v5 = v15;
  (*(v10 + 16))(&v5[v13], v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277D45248], v2);
  sub_274BF2A34();
  (*(v3 + 8))(v5, v2);
  v16 = [objc_opt_self() sharedContext];
  v17 = sub_274BF1ED4();
  [v16 openURL_];

  (*(v19 + 8))(v8, v20);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_274B6D668(uint64_t a1)
{
  result = sub_274B6D6F4();
  if (v2 <= 0x3F)
  {
    result = sub_274BF2254();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_274B6D6F4()
{
  result = qword_28098C6E8;
  if (!qword_28098C6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098C6E8);
  }

  return result;
}

uint64_t sub_274B6D754(uint64_t a1, uint64_t a2)
{
  v4 = _s14WorkflowUICore11PreviewViewVMa_2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B6D7B8(uint64_t a1, uint64_t a2)
{
  v4 = _s14WorkflowUICore11PreviewViewVMa_2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B6D81C()
{
  v1 = *(_s14WorkflowUICore11PreviewViewVMa_2(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_274B6D348(v2);
}

unint64_t sub_274B6D87C()
{
  result = qword_28098C700;
  if (!qword_28098C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C6F8, &qword_274C00700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C700);
  }

  return result;
}

uint64_t View.maximumSizeCategory(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SizeCategoryCappingModifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF38E4();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v6 + 20);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510, &qword_274BFDE80);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x277C63D20](v8, a2, v6, a3);
  return sub_274B6DC64(v8);
}

uint64_t type metadata accessor for SizeCategoryCappingModifier(uint64_t a1)
{
  result = qword_28098C748;
  if (!qword_28098C748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B6DA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_274BF38E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for SizeCategoryCappingModifier(0);
  sub_274ADE5E4(v14, v15, v16, v17, v18, v19, v20, v21, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  v22 = sub_274B6DE38(v9, v2);
  v23 = (*(v7 + 8))(v9, v6);
  if (v22)
  {
    (*(v7 + 16))(v12, v3, v6);
  }

  else
  {
    sub_274ADE5E4(v23, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  }

  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C758, &qword_274C00820) + 36));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C760, &qword_274C00828);
  (*(v7 + 32))(v31 + *(v32 + 28), v12, v6);
  *v31 = KeyPath;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C768, &qword_274C00830);
  return (*(*(v33 - 8) + 16))(a2, a1, v33);
}

uint64_t sub_274B6DC64(uint64_t a1)
{
  v2 = type metadata accessor for SizeCategoryCappingModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274B6DCC0()
{
  result = qword_28098C740;
  if (!qword_28098C740)
  {
    type metadata accessor for SizeCategoryCappingModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C740);
  }

  return result;
}

void sub_274B6DD40(uint64_t a1)
{
  sub_274BF38E4();
  if (v1 <= 0x3F)
  {
    sub_274B6DDC4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274B6DDC4(uint64_t a1)
{
  if (!qword_2815A3110)
  {
    sub_274BF38E4();
    v1 = sub_274BF2F64();
    if (!v2)
    {
      atomic_store(v1, &qword_2815A3110);
    }
  }
}