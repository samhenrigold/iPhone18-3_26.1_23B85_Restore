uint64_t sub_1D145A100(uint64_t a1)
{
  sub_1D1453238();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D145A15C(double *a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 2);
  v61 = a1[5];
  v62 = a1[4];
  v59 = a1[7];
  v60 = a1[6];
  v58 = a1[8];
  v56 = *a1;
  v57 = a1[9];
  v81 = *a3;
  v82 = *(a3 + 4);
  v5 = *(a3 + 5);
  v67 = *(a3 + 6);
  v6 = *(a3 + 7);
  v64 = *(a3 + 8);
  v7 = *(a3 + 9);
  v80 = *(a3 + 25);
  v79 = v7;
  v66 = *(a2 + 16);
  if (v66)
  {
    v8 = v3;
    v9 = 0;
    v65 = a2 + 32;
    v10 = 41;
    v55 = v3;
    do
    {
      v11 = *(v8 + 16);
      if (v9 >= *(v11 + 16))
      {
        v71 = v81;
        v72 = v82;
        v69 = v79;
        v13 = v80;
      }

      else
      {
        v12 = (v11 + v10);
        v71 = *(v12 - 9);
        v72 = *(v12 - 5);
        v5 = *(v12 - 4);
        v67 = *(v12 - 3);
        v6 = *(v12 - 2);
        v64 = *(v12 - 1);
        v69 = *v12;
        v13 = *(v12 + 8);
      }

      v70 = v13;
      v14 = *(v65 + 8 * v9);
      v15 = *(v14 + 16);

      if (v15 && (v16 = sub_1D1451D94(2), (v17 & 1) != 0))
      {
        v18 = *(*(v14 + 56) + 40 * v16);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      LOBYTE(v68.a) = v67;
      v19.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
      LOBYTE(v68.a) = v6;
      v21 = DiagramConfiguration.LineWidth.toPoints()(v20);
      if (v5 > 1u)
      {
        if (v5 != 3)
        {
          sub_1D15A4908();
          __break(1u);
          return;
        }

        if (!*(v18 + 16))
        {

          goto LABEL_5;
        }

        v31 = *(v18 + 32);

        v89.origin.x = sub_1D145664C();
        v85.y = CGRectGetMinY(v89);
        v68.a = v62;
        v68.b = v61;
        v68.c = v60;
        v68.d = v59;
        v68.tx = v58;
        v68.ty = v57;
        v85.x = v31;
        CGPointApplyAffineTransform(v85, &v68);
        v90.origin.x = sub_1D145664C();
        v86.y = CGRectGetMaxY(v90);
        v68.a = v62;
        v68.b = v61;
        v68.c = v60;
        v68.d = v59;
        v68.tx = v58;
        v68.ty = v57;
        v86.x = v31;
        CGPointApplyAffineTransform(v86, &v68);
        CGContextSetLineWidth(v4, v21);
        CGContextSetLineCap(v4, kCGLineCapRound);
        v32 = [(objc_class *)v19.super.isa CGColor];
        CGContextSetStrokeColorWithColor(v4, v32);

        sub_1D15A4298();
        sub_1D15A42A8();
        CGContextStrokePath(v4);
      }

      else
      {
        if (v5)
        {

          if (*(v14 + 16))
          {
            v33 = sub_1D1451D94(2);
            if (v34)
            {
              v63 = v5;
              v35 = (*(v14 + 56) + 40 * v33);
              v36 = *v35;
              v37 = v35[2];

              if (*(v36 + 16))
              {
                v38 = *(v36 + 40);

                v68.a = v62;
                v68.b = v61;
                v68.c = v60;
                v68.d = v59;
                v68.tx = v58;
                v68.ty = v57;
                v87.x = 0.0;
                v87.y = v38;
                CGPointApplyAffineTransform(v87, &v68);
                v68.a = v62;
                v68.b = v61;
                v68.c = v60;
                v68.d = v59;
                v68.tx = v58;
                v68.ty = v57;
                v88.x = 0.0;
                v88.y = v38;
                y = CGPointApplyAffineTransform(v88, &v68).y;
                if (!v37)
                {
                  goto LABEL_31;
                }

                LOBYTE(v68.a) = v64;

                static DiagramGenerator.computeRightMarginAnnotationBounds(at:annotation:textAttributes:)(v37, &v68, &v77, v56, y);

                if (v78)
                {

LABEL_31:
                  CGContextSetLineWidth(v4, v21);
                  CGContextSetLineCap(v4, kCGLineCapRound);
                  v40 = [(objc_class *)v19.super.isa CGColor];
                  CGContextSetStrokeColorWithColor(v4, v40);

                  sub_1D15A4298();
                  sub_1D15A42A8();
                  CGContextStrokePath(v4);
LABEL_43:

LABEL_44:
                  v81 = v71;
                  v82 = v72;
                  v79 = v69;
                  v80 = v70;
                  v5 = v63;
                  goto LABEL_6;
                }

                x = v77.origin.x;
                v45 = v77.origin.y;
                CGRectGetWidth(v77);
                CGContextSetLineWidth(v4, v21);
                CGContextSetLineCap(v4, kCGLineCapRound);
                v47 = [(objc_class *)v19.super.isa CGColor];
                CGContextSetStrokeColorWithColor(v4, v47);

                sub_1D15A4298();
                sub_1D15A42A8();
                CGContextStrokePath(v4);
                v48 = sub_1D15A3EF8();

                LOBYTE(v68.a) = v64;
                DiagramConfiguration.TextAttributes.toTextAttributes()(v49);
                type metadata accessor for Key(0);
                sub_1D14587E0();
                v50 = sub_1D15A3E48();

                [v48 drawAtPoint:v50 withAttributes:{x, v45}];
LABEL_42:

                v8 = v55;
                goto LABEL_43;
              }

LABEL_34:

              goto LABEL_38;
            }
          }
        }

        else
        {

          if (*(v14 + 16))
          {
            v22 = sub_1D1451D94(2);
            if (v23)
            {
              v63 = v5;
              v24 = (*(v14 + 56) + 40 * v22);
              v25 = *v24;
              v26 = v24[2];
              v27 = v24[4];

              if (!*(v25 + 16))
              {

                goto LABEL_34;
              }

              v28 = *(v25 + 40);

              v68.a = v62;
              v68.b = v61;
              v68.c = v60;
              v68.d = v59;
              v68.tx = v58;
              v68.ty = v57;
              v83.x = 0.0;
              v83.y = v28;
              v29 = CGPointApplyAffineTransform(v83, &v68);
              v68.a = v62;
              v68.b = v61;
              v68.c = v60;
              v68.d = v59;
              v68.tx = v58;
              v68.ty = v57;
              v84.x = 0.0;
              v84.y = v28;
              CGPointApplyAffineTransform(v84, &v68);
              CGContextSetLineWidth(v4, v21);
              CGContextSetLineCap(v4, kCGLineCapRound);
              v30 = [(objc_class *)v19.super.isa CGColor];
              CGContextSetStrokeColorWithColor(v4, v30);

              sub_1D15A4298();
              sub_1D15A42A8();
              CGContextStrokePath(v4);
              if (v26)
              {
                LOBYTE(v68.a) = v64;

                static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(v26, 1, &v68, v73, 0.0, v29.y);
                if (v74)
                {
                }

                else
                {
                  v42 = *v73;
                  v41 = *&v73[1];
                  v54 = sub_1D15A3EF8();

                  LOBYTE(v68.a) = v64;
                  DiagramConfiguration.TextAttributes.toTextAttributes()(v43);
                  type metadata accessor for Key(0);
                  sub_1D14587E0();
                  v44 = sub_1D15A3E48();

                  [v54 drawAtPoint:v44 withAttributes:{v42, v41}];

                  v8 = v55;
                }
              }

              if (!v27)
              {

                goto LABEL_44;
              }

              LOBYTE(v68.a) = v64;
              static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(v26, 0, &v68, v75, 0.0, v29.y);

              if ((v76 & 1) == 0)
              {
                v52 = *v75;
                v51 = *&v75[1];
                v48 = sub_1D15A3EF8();

                LOBYTE(v68.a) = v64;
                DiagramConfiguration.TextAttributes.toTextAttributes()(v53);
                type metadata accessor for Key(0);
                sub_1D14587E0();
                v50 = sub_1D15A3E48();

                [v48 drawAtPoint:v50 withAttributes:{v52, v51}];
                goto LABEL_42;
              }

LABEL_38:

              goto LABEL_43;
            }
          }
        }
      }

LABEL_5:
      v81 = v71;
      v82 = v72;
      v79 = v69;
      v80 = v70;
LABEL_6:
      ++v9;
      v10 += 32;
    }

    while (v66 != v9);
  }
}

void sub_1D145AAC0(double *a1, char a2, char *a3)
{
  v4 = *(a1 + 2);
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  v9 = a1[9];
  v104 = a3[1];
  v105 = *a3;
  v102 = a3[3];
  v103 = a3[2];
  v101 = a3[4];
  v11 = *(a3 + 5);
  *(v143 + 14) = *(a3 + 19);
  v143[0] = v11;
  v98 = *(v3 + 96);
  v95 = *(v98 + 16);
  if (!v95)
  {
    return;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v93 = v6;
  v94 = v5;
  v107 = v7;
  while (1)
  {
    if (v12 >= *(v98 + 16))
    {
      __break(1u);
      goto LABEL_95;
    }

    v14 = *(v97 + 16);
    if (v12 >= *(v14 + 16))
    {
      v112[0] = v143[0];
      v16 = *(v143 + 14);
    }

    else
    {
      v15 = v14 + 32 * v12;
      v104 = *(v15 + 33);
      v105 = *(v15 + 32);
      v102 = *(v15 + 35);
      v103 = *(v15 + 34);
      v101 = *(v15 + 36);
      v112[0] = *(v15 + 37);
      v16 = *(v15 + 51);
    }

    *(v112 + 14) = v16;
    v17 = *(v98 + 32 + 8 * v12);
    v18 = *(v17 + 16);

    if (!v18)
    {
      v23 = v13;
LABEL_34:

      v34 = v13;
      goto LABEL_35;
    }

    v19 = sub_1D1451D94(0);
    if ((v20 & 1) != 0 && (v21 = *(*(v17 + 56) + 40 * v19), (v22 = *(v21 + 16)) != 0))
    {
      v111 = v13;

      sub_1D145B8B4(0, v22, 0);
      sub_1D15A4148();
      v23 = v111;
      v24 = (v21 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v110.a = v6;
        v110.b = v5;
        v110.c = v7;
        v110.d = v8;
        v110.tx = v10;
        v110.ty = v9;
        v144.x = v25;
        v144.y = v26;
        v27 = CGPointApplyAffineTransform(v144, &v110);

        v111 = v23;
        v29 = *(*&v23 + 16);
        v28 = *(*&v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D145B8B4((v28 > 1), v29 + 1, 1);
          v23 = v111;
        }

        *(*&v23 + 16) = v29 + 1;
        *(*&v23 + 16 * v29 + 32) = v27;
        v24 += 2;
        --v22;
      }

      while (v22);

      v13 = MEMORY[0x1E69E7CC0];
      if (!*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v13;
      if (!*(v17 + 16))
      {
        goto LABEL_34;
      }
    }

    v30 = sub_1D1451D94(1);
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }

    v32 = *(*(v17 + 56) + 40 * v30);

    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_34;
    }

    v111 = v13;
    sub_1D145B8B4(0, v33, 0);
    sub_1D15A4148();
    v34 = v111;
    v35 = (v32 + 40);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v110.a = v6;
      v110.b = v5;
      v110.c = v7;
      v110.d = v8;
      v110.tx = v10;
      v110.ty = v9;
      v145.x = v36;
      v145.y = v37;
      v38 = CGPointApplyAffineTransform(v145, &v110);

      v111 = v34;
      v40 = *(*&v34 + 16);
      v39 = *(*&v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D145B8B4((v39 > 1), v40 + 1, 1);
        v34 = v111;
      }

      *(*&v34 + 16) = v40 + 1;
      *(*&v34 + 16 * v40 + 32) = v38;
      v35 += 2;
      --v33;
    }

    while (v33);

    v13 = MEMORY[0x1E69E7CC0];
LABEL_35:
    LOBYTE(v110.a) = v105;
    v41.n128_f64[0] = DiagramConfiguration.LineWidth.toPoints()(v83);
    v42 = v41.n128_f64[0];
    LOBYTE(v110.a) = v101;
    v43.n128_f64[0] = DiagramConfiguration.LineRadius.toFloat()(v41);
    v44 = v43.n128_f64[0];
    LOBYTE(v110.a) = v102;
    v45 = DiagramConfiguration.LineRadius.toFloat()(v43);
    LOBYTE(v110.a) = v104;
    v46.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
    LOBYTE(v110.a) = v103;
    v47.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
    if ((a2 & 1) == 0)
    {
      break;
    }

    v48 = *(*&v34 + 16);
    if (!v48)
    {

      v143[0] = v112[0];
      *(v143 + 14) = *(v112 + 14);
      v7 = v107;
      goto LABEL_6;
    }

    isa = v46.super.isa;
    v108 = v12;
    v110.a = v13;
    v49 = v42 * 0.8;
    sub_1D145BF98(0, v48, 0);
    sub_1D15A4148();
    v50 = v45 + v45;
    a = v110.a;
    v52 = (*&v34 + 40);
    do
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v110.a = a;
      v56 = *(*&a + 16);
      v55 = *(*&a + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1D145BF98((v55 > 1), v56 + 1, 1);
        a = v110.a;
      }

      *(*&a + 16) = v56 + 1;
      v57 = (*&a + 32 * v56);
      v57[4] = v53 - v45;
      v57[5] = v54 - v45;
      v57[6] = v50;
      v57[7] = v50;
      v52 += 2;
      --v48;
    }

    while (v48);

    v68 = [(objc_class *)v47.super.isa CGColor];
    CGContextSetFillColorWithColor(v4, v68);

    v12 = v108;
    if (v49 > 0.0)
    {
      CGContextSetBlendMode(v4, kCGBlendModeClear);
      v69 = *(*&a + 16);
      if (v69)
      {
        v70 = -v49;
        v71 = (*&a + 56);
        do
        {
          v72 = *(v71 - 3);
          v73 = *(v71 - 2);
          v74 = *(v71 - 1);
          v75 = *v71;
          sub_1D15A4138();
          sub_1D15A4128();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v146.origin.x = v72;
          v146.origin.y = v73;
          v146.size.width = v74;
          v146.size.height = v75;
          v147 = CGRectInset(v146, v70, v70);
          CGContextFillEllipseInRect(v4, v147);

          v71 += 4;
          --v69;
        }

        while (v69);
      }
    }

    CGContextSetBlendMode(v4, kCGBlendModeNormal);
    v76 = *(*&a + 16);
    if (v76)
    {
      v77 = (*&a + 56);
      v6 = v93;
      do
      {
        v78 = *(v77 - 3);
        v79 = *(v77 - 2);
        v80 = *(v77 - 1);
        v81 = *v77;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v148.origin.x = v78;
        v148.origin.y = v79;
        v148.size.width = v80;
        v148.size.height = v81;
        CGContextFillEllipseInRect(v4, v148);

        v77 += 4;
        --v76;
      }

      while (v76);

      v143[0] = v112[0];
      *(v143 + 14) = *(v112 + 14);
    }

    else
    {

      v143[0] = v112[0];
      *(v143 + 14) = *(v112 + 14);
      v6 = v93;
    }

    v5 = v94;
    v7 = v107;
LABEL_5:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_6:
    if (++v12 == v95)
    {
      return;
    }
  }

  v58 = *(*&v23 + 16);
  v7 = v107;
  if (!v58)
  {

    v143[0] = v112[0];
    *(v143 + 14) = *(v112 + 14);
    goto LABEL_6;
  }

  v106 = v47.super.isa;
  v100 = v46.super.isa;
  if (v44 <= 0.0)
  {
    Mutable = CGPathCreateMutable();
    sub_1D15A4148();
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v132 = 0;
    v133 = 0;
    v131 = 0x3FF0000000000000;
    v134 = 0x3FF0000000000000;
    v135 = 0;
    v136 = 0;
    sub_1D15A43A8();

    v82 = v58 - 1;
    if (v58 == 1)
    {
      v7 = v107;
    }

    else
    {
      v109 = v12;
      v84 = *&v23 + 56;
      do
      {
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v138 = 0;
        v139 = 0;
        v137 = 0x3FF0000000000000;
        v140 = 0x3FF0000000000000;
        v141 = 0;
        v142 = 0;
        sub_1D15A43C8();

        v84 += 16;
        --v82;
      }

      while (v82);
      v7 = v107;
LABEL_80:
      v12 = v109;
    }

    v85 = Mutable;
    CGContextSetLineWidth(v4, v42);
    CGContextSetLineJoin(v4, kCGLineJoinRound);
    CGContextSetLineCap(v4, kCGLineCapRound);
    CGContextSetBlendMode(v4, kCGBlendModeNormal);
    v86 = [(objc_class *)v100 CGColor];
    CGContextSetStrokeColorWithColor(v4, v86);

    CGContextAddPath(v4, v85);
    CGContextStrokePath(v4);

    v143[0] = v112[0];
    *(v143 + 14) = *(v112 + 14);
    goto LABEL_5;
  }

  v109 = v12;
  v110.a = v23;
  *&v110.b = *&v23 + 32;
  *&v110.c = 1;
  *&v110.d = (2 * v58) | 1;

  sub_1D145B8D8(qword_1F4D3AB38);
  b = v110.b;
  c = v110.c;
  d = v110.d;

  Mutable = CGPathCreateMutable();
  v63 = *(*&v23 + 16);

  swift_unknownObjectRetain();
  v92 = v63;
  if (!v63)
  {
    goto LABEL_56;
  }

  v64 = *&d >> 1;
  if (*&c <= *&d >> 1)
  {
    *&v65 = *&d >> 1;
  }

  else
  {
    v65 = c;
  }

  if (!*(*&v23 + 16))
  {
    goto LABEL_95;
  }

  v90 = *&v65 - *&c;
  v66 = __OFSUB__(v64, *&c);
  v67 = v64 - *&c;
  v91 = v67;
  if (!v67)
  {
    goto LABEL_56;
  }

  if ((v67 < 0) ^ v66 | (v67 == 0))
  {
    goto LABEL_96;
  }

  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v114 = 0;
  v115 = 0;
  v113 = 0x3FF0000000000000;
  v116 = 0x3FF0000000000000;
  v117 = 0;
  v118 = 0;
  sub_1D15A43A8();

  v5 = v94;
  v7 = v107;
  if (v63 == 1)
  {
LABEL_56:
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_80;
  }

  v87 = *&b + 16 * *&c + 24;
  v88 = *&v23 + 56;
  v89 = 1;
  while (v89 < *(*&v23 + 16))
  {
    if (v91 == v89)
    {
      goto LABEL_56;
    }

    if (v90 == v89)
    {
      goto LABEL_96;
    }

    sub_1D15A4148();
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v89 >= v58 - 1)
    {
      v126 = 0;
      v127 = 0;
      v125 = 0x3FF0000000000000;
      v128 = 0x3FF0000000000000;
      v129 = 0;
      v130 = 0;
      sub_1D15A43C8();
    }

    else
    {
      v120 = 0;
      v121 = 0;
      v119 = 0x3FF0000000000000;
      v122 = 0x3FF0000000000000;
      v123 = 0;
      v124 = 0;
      sub_1D15A43B8();
    }

    v6 = v93;
    ++v89;

    v87 += 16;
    v88 += 16;
    v5 = v94;
    v7 = v107;
    if (v92 == v89)
    {
      goto LABEL_56;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

char *sub_1D145B78C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D14531D4(0, &qword_1EE05B438, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D145B8B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D145B78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D145B8D8(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = result[2];
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_9:
  v14 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 < v14)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 = 2 * v10;
    if (v15 > v14)
    {
      v14 = v15;
    }
  }

  sub_1D145BAE8(v14);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_35;
  }

  v19 = (v1[1] + 16 * v17 + 16 * v18);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v22 = v18;
    goto LABEL_22;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v19 != (v20 + 16 * v21 + 32))
  {

    goto LABEL_20;
  }

  v23 = *(v20 + 24);

  v24 = (v23 >> 1) - v21;
  v13 = __OFADD__(v18, v24);
  v22 = v18 + v24;
  if (v13)
  {
LABEL_41:
    __break(1u);
    return;
  }

LABEL_22:
  v25 = v22 - v18;
  if (__OFSUB__(v22, v18))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (v25 < v6)
  {
    goto LABEL_37;
  }

  memcpy(v19, result + 4, 16 * v6);
  if (v6 <= 0)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v18, v6))
  {
    goto LABEL_39;
  }

  sub_1D145BD6C(v18 + v6);
LABEL_28:
  if (v6 == v25)
  {

    sub_1D15235E0(result, v6);
  }
}

uint64_t sub_1D145BAE8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1D145BC60(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 16 * v14), 16 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D145BC60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D145BD08(0, &qword_1EE05B438, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1D145BD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D145BD6C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

id sub_1D145BE24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D145BE90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

char *sub_1D145BF98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D145BFB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D145BFB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D14531D4(0, &qword_1EE059680, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void sub_1D145C0E0(CGContext *a1, double *a2, unsigned __int8 *a3, CGFloat *a4, double a5)
{
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v60 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  v58 = a3[4];
  LODWORD(v15) = a3[5];
  v16 = a3[6];
  v17 = *a4;
  sub_1D145664C();
  v69 = v8;
  v70 = v7;
  v84.a = v7;
  v84.b = v8;
  v84.c = v10;
  v84.d = v9;
  v84.tx = v11;
  v84.ty = v12;
  v85.x = 0.0;
  y = CGPointApplyAffineTransform(v85, &v84).y;
  v18 = *(v5 + 160);
  if (*(v5 + 168))
  {
    v18 = 0.0;
  }

  v64 = v18;
  if (v15 > 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_1D15A4BA8();
  }

  v15 = v15;

  if (v16 && v16 != 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = sub_1D15A4BA8();
  }

  if (v58)
  {
    v20 = -1.0;
  }

  else
  {
    v20 = -2.0;
  }

  v19.n128_f32[0] = flt_1D15B3C74[v15] + v20;
  if (v19.n128_f32[0] < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = flt_1D15B3C74[v15] + v20;
  }

  LOBYTE(v84.a) = v13;
  DiagramConfiguration.TextAttributes.toTextAttributes()(v19);
  Mutable = CGPathCreateMutable();
  v84.a = v17;

  v23 = 0;
  sub_1D145D014(&v84, v24);
  path = Mutable;
  v56 = v14;
  c = a1;
  a = v84.a;
  v68 = *(*&v84.a + 16);
  if (v68)
  {
    v26 = 0;
    v27 = y + v64;
    v67 = *&v84.a + 32;
    v28 = v27 + (v21 * 0.5) + 2.0;
    v29 = MEMORY[0x1E69E7CC0];
    v62 = v84.a;
    do
    {
      while (1)
      {
        if (v26 >= *(*&a + 16))
        {
          goto LABEL_55;
        }

        v30 = v67 + 40 * v26;
        v31 = *(v30 + 8);
        v32 = *(v30 + 24);
        v86.x = *(v30 + 16);
        v71.a = v70;
        v71.b = v69;
        v71.c = v10;
        v71.d = v9;
        v71.tx = v11;
        v71.ty = v12;
        v86.y = 0.0;
        *&v33 = *&CGPointApplyAffineTransform(v86, &v71);
        if (v32 < 2)
        {
          break;
        }

        if (v32 != 2)
        {
          goto LABEL_56;
        }

        if ((v59 & 1) == 0)
        {
          v84.b = 0.0;
          v84.c = 0.0;
          v84.a = 1.0;
          v84.d = 1.0;
          v84.tx = 0.0;
          v84.ty = 0.0;

          sub_1D15A43A8();
          goto LABEL_33;
        }

LABEL_27:

        ++v26;
        if (v31)
        {
          goto LABEL_34;
        }

LABEL_19:
        if (v26 == v68)
        {
          goto LABEL_49;
        }
      }

      if (v63)
      {
        goto LABEL_27;
      }

      switch(v60)
      {
        case 1:

          goto LABEL_31;
        default:
          v34 = sub_1D15A4BA8();

          if (v34)
          {
LABEL_31:
            v73 = 0;
            v74 = 0;
            v72 = 0x3FF0000000000000;
            v75 = 0x3FF0000000000000;
            v76 = 0;
            v77 = 0;
            sub_1D15A43A8();
          }

          else
          {
            v79 = 0;
            v80 = 0;
            v78 = 0x3FF0000000000000;
            v81 = 0x3FF0000000000000;
            v82 = 0;
            v83 = 0;
            sub_1D15A43A8();
          }

          break;
      }

LABEL_33:
      sub_1D15A43C8();
      ++v26;
      if (!v31)
      {
        goto LABEL_19;
      }

LABEL_34:
      v35 = sub_1D15A3EF8();
      type metadata accessor for Key(0);
      sub_1D1458AD4(&qword_1EE05AD28, type metadata accessor for Key, &unk_1D15ACAD0);
      v36 = sub_1D15A3E48();
      [v35 sizeWithAttributes_];
      v38 = v37;
      v40 = v39;

      v41 = v33 - v38 * 0.5;
      v42 = v33 + v38 * 0.5;
      if (v41 >= 0.0)
      {
        v43 = 0.0;
        if (v42 <= a5)
        {
          goto LABEL_39;
        }
      }

      else if (v42 <= a5)
      {
        v43 = 0.0 - v41;
        goto LABEL_39;
      }

      v43 = a5 - v42;
LABEL_39:
      v44 = v41 + v43;
      v45 = -*(v29 + 2);
      v23 = -1;
      v46 = v29 + 56;
      while (v45 + v23 != -1)
      {
        if (++v23 >= *(v29 + 2))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          sub_1D15A4908();
          __break(1u);

          __break(1u);
          JUMPOUT(0x1D145CAD0);
        }

        v47 = v46 + 32;
        v87.origin.x = v44;
        v87.origin.y = v28;
        v87.size.width = v38;
        v87.size.height = v40;
        v48 = CGRectIntersectsRect(v87, *(v46 - 24));
        v46 = v47;
        if (v48)
        {

          a = v62;
          goto LABEL_19;
        }
      }

      v49 = sub_1D15A3EF8();

      v50 = sub_1D15A3E48();
      [v49 drawAtPoint:v50 withAttributes:{v44, v28}];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D145D43C(0, *(v29 + 2) + 1, 1, v29);
      }

      a = v62;
      v23 = *(v29 + 2);
      v51 = *(v29 + 3);
      if (v23 >= v51 >> 1)
      {
        v29 = sub_1D145D43C((v51 > 1), v23 + 1, 1, v29);
      }

      *(v29 + 2) = v23 + 1;
      v52 = &v29[32 * v23];
      v52[4] = v44;
      v52[5] = v28;
      v52[6] = v38;
      v52[7] = v40;
    }

    while (v26 != v68);
  }

LABEL_49:

  if (!CGPathIsEmpty(path))
  {
    CGContextSetBlendMode(c, kCGBlendModeNormal);
    CGContextSetLineCap(c, kCGLineCapRound);
    v53 = 2.0;
    if (v58)
    {
      v53 = 1.0;
    }

    CGContextSetLineWidth(c, v53);
    LOBYTE(v71.a) = v56;
    isa = DiagramConfiguration.Color.toColor()().super.isa;
    v55 = [(objc_class *)isa CGColor];

    CGContextSetStrokeColorWithColor(c, v55);
    CGContextAddPath(c, path);
    CGContextStrokePath(c);
  }
}

void sub_1D145CB10(CGContext *a1, uint64_t *a2, double a3, double a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v14 = *(v4 + 64);
  if ((v14 & 0xFE00000000) != 0x200000000)
  {
    v15 = *(v4 + 16);
    if (v15)
    {
      v27 = *a2;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v33 = v13;
      *v22 = v14;
      v22[2] = BYTE2(v14);
      v23 = BYTE3(v14);
      v24 = BYTE4(v14) & 1;
      v25 = BYTE5(v14);
      v26 = BYTE6(v14);
      v20 = v15;
      v21 = *(v4 + 24);

      sub_1D145C0E0(a1, &v27, v22, &v20, a3);

      v14 = *(v4 + 64);
    }
  }

  if ((v14 & 0xFF00000000) != 0x300000000)
  {
    v17 = *(v4 + 72) | (*(v4 + 76) << 32);
    if ((*(v4 + 72) & 0xFF000000) != 0x2000000)
    {
      v18 = *(v4 + 40);
      if (v18)
      {
        v27 = v7;
        v28 = v8;
        v29 = v9;
        v30 = v10;
        v31 = v11;
        v32 = v12;
        v33 = v13;
        v22[0] = HIBYTE(v14);
        *&v22[1] = v17;
        v23 = BYTE2(v17);
        v24 = BYTE3(v17) & 1;
        v25 = BYTE4(v17);
        v26 = BYTE5(v17);
        v20 = v18;
        v21 = *(v4 + 48);

        sub_1D151BCD4(a1, &v27, v22, &v20, v19, a4);
      }
    }
  }
}

void sub_1D145CCBC(uint64_t a1)
{
  v26 = *(v1 + 160);
  v25 = *(v26 + 16);
  if (v25)
  {
    v2 = 0;
    v28 = *(a1 + 16);
    v30 = *(a1 + 48);
    v31 = *(a1 + 32);
    v3 = 0x1E69A4000uLL;
    v29 = *(a1 + 64);
    while (v2 < *(v26 + 16))
    {
      v27 = v2;
      v4 = (v26 + 32 + 24 * v2);
      v5 = v4[1];
      v6 = *(*v4 + 16);
      v33 = *v4;

      v32 = v6;
      if (v6)
      {
        v7 = 0;
        v8 = v33 + 56;
        while (v7 < *(v33 + 16))
        {
          v35 = *(v8 - 8);
          *&v34.a = v31;
          *&v34.c = v30;
          *&v34.tx = v29;
          v9 = CGPointApplyAffineTransform(v35, &v34);

          v10 = sub_1D15A3EF8();
          type metadata accessor for Key(0);
          sub_1D14587E0();
          v11 = sub_1D15A3E48();
          [v10 sizeWithAttributes_];
          v13 = v12;
          v15 = v14;

          sub_1D1456508(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D15AE100;
          v17 = objc_allocWithZone(*(v3 + 1240));
          v18 = v3;
          v19 = sub_1D15A3EF8();
          v20 = sub_1D15A3E48();
          v21 = [v17 initWithText:v19 inRect:v20 withAttributes:{v9.x + v13 * -0.5, v9.y - v5 - v15, v13, v15}];

          if (!v21)
          {
            goto LABEL_14;
          }

          ++v7;
          v22 = objc_opt_self();
          *(v16 + 32) = v21;
          sub_1D15234EC();
          v23 = sub_1D15A40A8();

          v24 = [objc_opt_self() clearColor];
          [v22 drawStrings:v23 outlineWidth:v24 outlineColor:v28 context:8.0];

          v8 += 32;
          v3 = v18;
          if (v32 == v7)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v2 = v27 + 1;

      if (v27 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1D145D014(char **a1, __n128 a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D145D1B4(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = (v3 + 32);
  v5[1] = v4;
  sub_1D145D1C8(v5);
  *a1 = v3;
}

char *sub_1D145D080(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE0596A0, &type metadata for DiagramAxisLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

void sub_1D145D1C8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D15A4B58();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D15A40F8();
        *(v6 + 16) = v2 / 2;
      }

      v8[0] = (v6 + 32);
      v8[1] = (v2 / 2);
      v7 = v6;
      sub_1D151D404(v8, v4, v9, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D145D2C0(0, v2, 1, a1);
  }
}

uint64_t sub_1D145D2C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      if (*(v10 + 72) == *(v10 + 32))
      {
        if (*(v10 + 56) >= *(v10 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        type metadata accessor for UILayoutPriority(0);
        sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority, MEMORY[0x1E69DC408]);
        result = sub_1D15A3EA8();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 56);
      v12 = *(v10 + 64);
      v13 = *(v10 + 40);
      v14 = *(v10 + 16);
      *(v10 + 40) = *v10;
      v15 = *(v10 + 72);
      *(v10 + 56) = v14;
      *(v10 + 72) = *(v10 + 32);
      *v10 = v13;
      *(v10 + 16) = v11;
      *(v10 + 24) = v12;
      *(v10 + 32) = v15;
      v10 -= 40;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1D145D43C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D145BD08(0, &qword_1EE059680, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

id sub_1D145D5B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t DiagramLine.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiagramAxis.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiagramFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D145D690()
{
  v1 = type metadata accessor for CoreChartTrendDistributionSeries(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D145D894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D145D984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t getEnumTagSinglePayload for LevelView.LayoutConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LevelView.LayoutConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D145DACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D145DAEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_1D145DB44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1D145DB9C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D145DBCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D145DBF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1D145DCE4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D145DD0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A3F38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D145DD44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D1476D60(a1);

  *a2 = v3;
}

uint64_t sub_1D145DD84(uint64_t a1, uint64_t a2)
{
  sub_1D1476DF0(0, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D145DE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D145DED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D145DF8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D145DFC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 24)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D145E120(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1486774(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D1486774(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 24)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D145E278(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D145E324(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivitySummarySnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145E3C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D14868E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_1D145E40C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D145E418()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145E450()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D145E510(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D15A23F8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1D145E64C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D15A23F8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    sub_1D1491814(0, &qword_1EE05AAE0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D145E784@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D15A3848();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D145E830()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D145E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A26A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D145E9A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A26A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145EA4C()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145EA88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D145EAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeBasedDistribution(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D145EBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimeBasedDistribution(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D145ED0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D145EDB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D145EE5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 28)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D145EFB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D14A0520(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 24)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14A0520(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 28)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

__n128 sub_1D145F148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D145F154()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D145F18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D145F1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D145F204(void *a1@<X0>, double *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *a2 = (*(v4 + 16))(v3, v4);
}

uint64_t sub_1D145F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistributionChartDesign(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D15A3268();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D145F380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistributionChartDesign(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D15A3268();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D145F4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D145F534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D145F590(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1D145F5FC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1D145F658(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_1D145F6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TimeBasedDistribution(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = type metadata accessor for TimeBasedDistributionChartModel(0);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1D145F7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TimeBasedDistribution(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for TimeBasedDistributionChartModel(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D145F8D8(uint64_t a1)
{
  sub_1D149A700(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D145F940(uint64_t a1, uint64_t a2)
{
  sub_1D149B6F4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D145F9A4()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + 8));
  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 32);
  v7 = sub_1D15A36F8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[9]));
  v8 = v1[10];
  v9 = sub_1D15A3268();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D145FB60()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + v3 + 1) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v1[9];
  v11 = sub_1D15A23F8();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + 8));
  v12 = v0 + v7 + v5[8];

  v13 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 32);
  v14 = sub_1D15A36F8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + v5[9]));
  v15 = v5[10];
  v16 = sub_1D15A3268();
  (*(*(v16 - 8) + 8))(v0 + v7 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1D145FDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14B7040(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    sub_1D14B7040(0, &qword_1EE05B408, MEMORY[0x1E6968278]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

void sub_1D145FF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14B7040(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    sub_1D14B7040(0, &qword_1EE05B408, MEMORY[0x1E6968278]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14600A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D146014C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D14601F0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D14602BC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14603AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D14C6FC0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D1460458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D14C6FC0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14604FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1D14605C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A26A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D1460684()
{
  v1 = (type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_1D14BB18C(*(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));

  v5 = v0 + v3 + v1[15];
  v6 = type metadata accessor for AXProjectionState(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1D15A26A8();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_1D14607FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExecuting];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460830()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1460868()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

id sub_1D146094C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460980()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

id sub_1D1460A5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_1D1460B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV19HealthVisualization26ActivitySummarySnidgetView17ActionHandlerData_relevantDateInterval;
  swift_beginAccess();
  return sub_1D14D8EAC(v3 + v4, a2, sub_1D14CB81C);
}

uint64_t sub_1D1460BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14D58AC(0);
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

void sub_1D1460CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14D58AC(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1D1460D78(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  sub_1D14CB850(0, &qword_1EE0597A8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1D14D5C80(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1D1460F0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  sub_1D14CB850(0, &qword_1EE0597A8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ActivitySnidgetCurrentValueVisualizationView.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1D14D5C80(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D14610A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A23F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D14A0F04(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D14611C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D15A23F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14A0F04(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D14612FC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1461334()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1D15A22A8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1D14628D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SignificantChange.Period(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D1462A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SignificantChange.Period(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D1462B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D1462C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D1462CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A26A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D1462DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A26A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1462EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D1462F6C(uint64_t a1, uint64_t a2)
{
  sub_1D14F1F30(0, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1463080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D14630F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D14631B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A22A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D146326C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CoreChartTrendLineViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D14E8CA0(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D1463390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CoreChartTrendLineViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D14E8CA0(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D14634B4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1D14EEB88(0, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for CoreChartTrendViewModel(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

void sub_1D1463618(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1D14EEB88(0, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7]) = a2;
  }

  else
  {
    v13 = type metadata accessor for CoreChartTrendViewModel(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D1463770(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D15A26A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D15A2838();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_1D14F0FC4(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1D14638E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D15A26A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D15A2838();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    sub_1D14F0FC4(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[11];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_1D1463ABC()
{
  sub_1D14EFBF8(255);
  sub_1D14EFD80(255);
  sub_1D14EFED0(255);
  sub_1D14EFFDC(255);
  sub_1D14F00B0(255);
  sub_1D15A35D8();
  sub_1D14F0154(255, v0);
  sub_1D14F01E8(v1);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D1463C48()
{
  v1 = type metadata accessor for CoreChartTrendDiagram(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = v1[5];
  sub_1D14EEB54(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D15A3668();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_1D14F1AA8(*(v4 + v1[6]), *(v4 + v1[6] + 8));

  v7 = v4 + v1[8];

  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = v7 + *(v8 + 28);
  v10 = sub_1D15A22A8();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v13 = v7 + *(v8 + 32);
  if (!(*(*(v12 - 8) + 48))(v13, 1, v12))
  {
    v11(v13, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_1D1463EA0(uint64_t a1, uint64_t a2)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463F3C(uint64_t a1, uint64_t a2)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1463FD8(uint64_t a1)
{
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14640B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1464160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1464204(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 24)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D14642D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D1464390@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for SleepQueryOperation + 80))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D1464414()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D146444C()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D14645A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 25);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for TimeBasedDistribution(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for TimeBasedDistributionChartModel(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1D14646CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 25) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for TimeBasedDistribution(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TimeBasedDistributionChartModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D14647F0(uint64_t a1, __n128 a2)
{
  sub_1D14FB3B8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1464858()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + 8));
  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 32);
  v7 = sub_1D15A36F8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[9]));
  v8 = v1[10];
  v9 = sub_1D15A3268();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1464A14()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TimeBasedDistributionChartModel(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6 + v3 + 1) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = v1[9];
  v11 = sub_1D15A23F8();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + 8));
  v12 = v0 + v7 + v5[8];

  v13 = *(type metadata accessor for TimeBasedDistributionChartDesign(0) + 32);
  v14 = sub_1D15A36F8();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + v5[9]));
  v15 = v5[10];
  v16 = sub_1D15A3268();
  (*(*(v16 - 8) + 8))(v0 + v7 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1D1464C88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D15A3828();
  *a1 = result;
  return result;
}

uint64_t sub_1D1464CE0()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE05B058;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D1464D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE05B068;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1464DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE068348;
  swift_beginAccess();
  return sub_1D149D62C(v3 + v4, a2);
}

char *sub_1D1464E44@<X0>(char **a1@<X8>)
{
  result = sub_1D14FE774();
  *a1 = result;
  return result;
}

void sub_1D1464E70(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + qword_1EE05B070);
  *(*a2 + qword_1EE05B070) = *a1;
  v4 = v2;

  sub_1D1459664(v3);
}

uint64_t sub_1D1464EBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464EF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1501F48();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1D1464F44()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1464F7C()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1465054()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14650B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23F8();
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D1465178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23F8();
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1465234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

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

uint64_t sub_1D14652F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D14653B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D15A23F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D146545C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A23F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1465520()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1D1465570(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D146561C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D14656C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 32)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D146581C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D150AA30(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D150AA30(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 32)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D1465AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D1465AE4()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D150F18C(0, &qword_1EC630D98, &type metadata for HealthStoreActivityRingsResumeDateProvider.State, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D1465B44()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1465B84()
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1465CC8()
{
  sub_1D150F568(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1465E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1465E54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1D1512870;
  a2[1] = v5;
}

uint64_t sub_1D1465EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1465F0C(uint64_t a1, uint64_t a2)
{
  sub_1D1514284(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1465F78(uint64_t a1, uint64_t a2)
{
  sub_1D1514284(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1465FE8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1517670();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_1D146602C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1466038()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1466080()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14660B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 24)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1D1466214(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 24)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D146636C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D15A26A8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D1466490(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D15A26A8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D14665BC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14665F4()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D14666A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D15A36F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1466750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D15A36F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D1466A80@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 hasIsUsingWheelchair];
  if (result)
  {
    result = [v3 isUsingWheelchair];
    v5 = 1;
    if (result)
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D1466AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A3E38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1D1466C5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D15A3E38();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D1466DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15419F0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
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

void sub_1D1466EC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15419F0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1D1467490()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14674D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1467508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeBasedDistribution(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D146762C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimeBasedDistribution(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TimeBasedDistributionChartModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D1467750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A2838();
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

uint64_t sub_1D146780C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A2838();
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

uint64_t sub_1D14678DC()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1467914()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D14679B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1467C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1467C5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1467D08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1467DAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D1467E78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D1467F34()
{
  v1 = type metadata accessor for CoreChartTrendLineSeries(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D1468138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D1468228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D1468328@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D155CFAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D1468378()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D14683B0()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D1468454()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D146848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15800F0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D15801C4(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D146857C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15800F0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D15801C4(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D1468778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D14F104C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D15800F0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_1D1468894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D14F104C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    sub_1D15800F0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14689B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1468A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1468AA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468B4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468BFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468D4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1D1468DF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1468E9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1491C64(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 24)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_1D1468F4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    sub_1D1491C64(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D14691C4()
{
  v1 = type metadata accessor for CoreChartTrendBarSeries(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = type metadata accessor for CoreChartTrendViewModel(0);
  v5 = v0 + v3 + *(v4 + 28);
  v6 = sub_1D15A22A8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v9 = v0 + v3 + *(v4 + 32);
  if (!(*(*(v8 - 8) + 48))(v9, 1, v8))
  {
    v7(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = sub_1D15A2838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1D14693C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoreChartTrendViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D15A2838();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D14694B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreChartTrendViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D15A2838();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D14695B8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + class metadata base offset for ValueHistogramCollectionQueryOperation + 80))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D146963C()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1469674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A23A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

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

uint64_t sub_1D1469734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D15A23A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

double StudentsCDF(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8)
{
  v9 = a2.n128_u64[0];
  v10 = a1.n128_u64[0];
  if (a2.n128_f64[0] <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>("boost::math::students_t_distribution<%1%>::students_t_distribution", "Degrees of freedom argument is %1%, but must be > 0 !", &v9);
  }

  return boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v9, &v10, a1, a2, a3, a4, a5, a6, a7, a8);
}

double boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, double a9, double a10)
{
  a4.n128_f64[0] = *a1;
  v14 = a4.n128_u64[0];
  if (a4.n128_f64[0] <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>("boost::math::cdf(const students_t_distribution<%1%>&, %1%)", "Degrees of freedom argument is %1%, but must be > 0 !", &v14);
  }

  *&v13 = *a2;
  result = 0.5;
  if (*&v13 != 0.0)
  {
    if (fabs(*&v13) == INFINITY)
    {
      result = 1.0;
      if (*&v13 < 0.0)
      {
        return 0.0;
      }
    }

    else if (a4.n128_f64[0] <= 4.50359963e15)
    {
      a3.n128_f64[0] = *&v13 * *&v13;
      a7.n128_f64[0] = a3.n128_f64[0] + a3.n128_f64[0];
      a5.n128_f64[0] = *&v13 * *&v13 + a4.n128_f64[0];
      a6.n128_f64[0] = a4.n128_f64[0] * 0.5;
      if (a4.n128_f64[0] <= a3.n128_f64[0] + a3.n128_f64[0])
      {
        a5.n128_f64[0] = a4.n128_f64[0] / a5.n128_f64[0];
        a4.n128_u64[0] = 0.5;
        a3.n128_u64[0] = a6.n128_u64[0];
        v12 = boost::math::ibeta<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a3, a4, a5, a6, a7, a8, a9, a10);
      }

      else
      {
        a5.n128_f64[0] = a3.n128_f64[0] / a5.n128_f64[0];
        a3.n128_u64[0] = 0.5;
        a4.n128_f64[0] = a4.n128_f64[0] * 0.5;
        v12 = boost::math::ibetac<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a3, a4, a5, a6, a7, a8, a9, a10);
      }

      result = v12 * 0.5;
      if (*a2 > 0.0)
      {
        return 1.0 - result;
      }
    }

    else
    {
      v13 = xmmword_1D15A60F0;
      boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v13, a2);
    }
  }

  return result;
}

void HypergeometricPDF(double a1, double a2, double a3, double a4)
{
  v5[0] = a1;
  v4[0] = a3;
  v4[1] = a4;
  v4[2] = a2;
  v5[1] = 0.0;
  boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_params(v4, boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::hypergeometric_distribution(unsigned int,unsigned int,unsigned int)::function);
  boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(v4, v5);
}

void boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(unsigned int *a1, double *a2)
{
  v15[0] = *a2;
  if ((*&v15[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v3 = floor(v15[0]);
  v4 = ceil(v15[0]);
  if (v15[0] < 0.0)
  {
    v3 = v4;
  }

  if (v3 > 2147483650.0 || v3 < -2147483650.0)
  {
LABEL_9:
    if (v15[0] <= 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }
  }

  else
  {
    v6 = v3;
  }

  if (v15[0] != v6)
  {
    boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,double>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, "Random variable out of range: must be an integer but got %1%", v15);
  }

  v15[1] = 0.0;
  if ((boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_params(a1, boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,unsigned int const&)::function) & 1) != 0
    && (boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_x(a1, v6, boost::math::pdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,unsigned int const&)::function) & 1) != 0)
  {
    v8 = a1[1];
    v7 = a1[2];
    v9 = *a1;
    if (v8 > 0xAA)
    {
      if (v8 <= 0x19913)
      {
        v18 = xmmword_1D15A64D0;
        v16[0] = v6;
        v16[1] = v7;
        v16[2] = v9;
        v16[3] = v8;
        v17 = 0x200000000;
        boost::math::detail::hypergeometric_pdf_prime_loop_imp<long double>(v16, &v18);
      }

      else
      {
        boost::math::detail::hypergeometric_pdf_lanczos_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v6, v7, v9, v8);
      }
    }

    else
    {
      v10 = boost::math::detail::hypergeometric_pdf_factorial_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v6, v7, v9, v8);
    }

    if (v10 > 1.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = fabs(v10);
    if (v11 >= 0.0 && v10 <= 1.0 && v12 > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::hypergeometric_pdf<%1%>(%1%,%1%,%1%,%1%)", "numeric overflow");
    }
  }
}

void boost::math::policies::detail::raise_error<std::domain_error,double>(char *a1, char *a2, double *a3, ...)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  boost::throw_exception<std::domain_error>(&v11);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t boost::math::policies::detail::replace_all_in_string(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  result = strlen(a3);
  v8 = result;
  v9 = 0;
  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v13 = v6;
  while (!v13)
  {
LABEL_18:
    if (v9 != -1)
    {
      v19 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v19);
      v9 += v8;
      v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v11 = v20 >= 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      size = v20 >= 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
      result = strlen(__s);
      v13 = result;
      if (size >= v9)
      {
        continue;
      }
    }

    return result;
  }

  v14 = size - v9;
  if ((size - v9) >= v13)
  {
    v15 = v11 + size;
    result = v11 + v9;
    v16 = *__s;
    do
    {
      v17 = v14 - v13;
      if (v17 == -1)
      {
        break;
      }

      result = memchr(result, v16, v17 + 1);
      if (!result)
      {
        break;
      }

      v18 = result;
      result = memcmp(result, __s, v13);
      if (!result)
      {
        if (v18 == v15)
        {
          return result;
        }

        v9 = v18 - v11;
        goto LABEL_18;
      }

      result = v18 + 1;
      v14 = &v15[-v18 - 1];
    }

    while (v14 >= v13);
  }

  return result;
}

uint64_t boost::math::policies::detail::prec_format<double>@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  MEMORY[0x1D388B590](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D388B600](&v11);
}

void sub_1D146A218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void boost::throw_exception<std::domain_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E83E67E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1D146A5C0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1D388B600](v1);
  _Unwind_Resume(a1);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1D388B600](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1D388B5D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1D146A878(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39DE8;
  *(a1 + 8) = &unk_1F4D39E18;
  *(a1 + 24) = &unk_1F4D39E40;
  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1D388B500](a1 + 8);
  return a1;
}

void sub_1D146ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  (*(*v9 + 24))(v9);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::domain_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::domain_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1D388B500](a1 + 8);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1D388B500);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1D388B500](a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::domain_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1D388B500);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1D388B500](v1);

  JUMPOUT(0x1D388B630);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<std::domain_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55A8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39DE8;
  *(a1 + 8) = &unk_1F4D39E18;
  *(a1 + 24) = &unk_1F4D39E40;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = v2;
  if ((*&v2 <= -1 || ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v6 = "Scale parameter is %1%, but must be > 0 !";
    goto LABEL_11;
  }

  v8 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = "Location parameter is %1%, but must be finite!";
    goto LABEL_11;
  }

  v7 = *a2;
  if (fabs(*a2) != INFINITY)
  {
    v8 = *a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = "Random variate x is %1%, but must be finite!";
LABEL_11:
      boost::math::policies::detail::raise_error<std::domain_error,double>(boost::math::cdf<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(boost::math::normal_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>> const&,double const&)::function, v6, &v8);
    }

    if (fabs(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, &v8, &v9, (v7 - v3) / (v2 * -1.41421356))) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
    }
  }
}

double boost::math::ibetac<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8)
{
  v8 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v10, 1u, 1, 0, a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(v8) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::ibetac<%1%>(%1%,%1%,%1%)", "numeric overflow");
  }

  return v8;
}

double boost::math::ibeta<double,double,double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8)
{
  v8 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v10, 0, 1, 0, a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(v8) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,double>("boost::math::ibeta<%1%>(%1%,%1%,%1%)", "numeric overflow");
  }

  return v8;
}

double boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a1;
  if (a4 < 0.0)
  {
    if ((a1 & 1) == 0)
    {
      return -boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0, a2, a3, -a4);
    }

    v6 = -a4;
    if (a4 >= -0.5)
    {
      return boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0, a2, a3, v6) + 1.0;
    }

    else
    {
      return 2.0 - boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, a2, a3, v6);
    }
  }

  if (a4 < 0.5)
  {
    if (a4 >= 1.0e-10)
    {
      v10 = vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6230, xmmword_1D15A6220, a4 * a4 * (a4 * a4)), a4 * a4), vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6210, xmmword_1D15A6200, a4 * a4 * (a4 * a4)), a4 * a4 * (a4 * a4)), xmmword_1D15A6240));
      v8 = (vdivq_f64(v10, vdupq_laneq_s64(v10, 1)).f64[0] + 1.04494858) * a4;
    }

    else
    {
      v8 = 0.0;
      if (a4 != 0.0)
      {
        v8 = a4 * 0.0033791671 + a4 * 1.125;
      }
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v9 = 28.0;
  }

  else
  {
    v9 = 5.92999983;
  }

  v5 = a1 ^ 1;
  if (a4 >= v9)
  {
    v8 = 0.0;
    goto LABEL_25;
  }

  if (a4 < 1.5)
  {
    v11 = a4 + -0.5;
    v12.f64[0] = v11 * v11 * 0.0195049001 + 0.191003696;
    v12.f64[1] = v11 * v11 * (v11 * v11 * 0.00000337511472 + 0.123850975) + 1.42628005;
    v13 = vaddq_f64(vaddq_f64(vmulq_n_f64(v12, v11 * v11), xmmword_1D15A61F0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A61D0, xmmword_1D15A61C0, v11 * v11), v11 * v11), xmmword_1D15A61E0), a4 + -0.5));
    v8 = exp(-(a4 * a4)) / a4 * (vdivq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0] + 0.405935764);
    goto LABEL_25;
  }

  if (a4 < 2.5)
  {
    v14 = a4 + -1.5;
    v15 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6190, xmmword_1D15A6180, v14 * v14), v14 * v14), xmmword_1D15A61B0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6170, xmmword_1D15A6160, v14 * v14), v14 * v14), xmmword_1D15A61A0), a4 + -1.5));
    v16 = vdivq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0] + 0.506728172;
    v17 = frexp(a4, &__e);
    v18 = __e;
LABEL_23:
    v21 = ldexp(v17, 26);
    v22 = ldexp(floor(v21), v18 - 26);
    v23 = a4 - v22;
    v24 = v22 * v22 - a4 * a4 + (v22 + v22) * (a4 - v22);
    v25 = exp(-(a4 * a4));
    v8 = v16 * (v25 * exp(-(v24 + v23 * v23)) / a4);
    goto LABEL_25;
  }

  if (a4 < 4.5)
  {
    v19 = a4 + -3.5;
    v20 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6130, xmmword_1D15A6120, v19 * v19), v19 * v19), xmmword_1D15A6150), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6110, xmmword_1D15A6100, v19 * v19), v19 * v19), xmmword_1D15A6140), a4 + -3.5));
    v16 = vdivq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0] + 0.540575027;
    v17 = frexp(a4, &v37);
    v18 = v37;
    goto LABEL_23;
  }

  v40 = 1.0 / a4;
  v26 = boost::math::tools::evaluate_polynomial<7ul,long double,long double>(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,std::integral_constant<int,53> const&)::P, &v40);
  v39 = 1.0 / a4;
  v27 = v26 / boost::math::tools::evaluate_polynomial<7ul,long double,long double>(boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,std::integral_constant<int,53> const&)::Q, &v39) + 0.557909012;
  v28 = frexp(a4, &v38);
  v29 = v38;
  v30 = ldexp(v28, 26);
  v31 = ldexp(floor(v30), v29 - 26);
  v32 = a4 - v31;
  v33 = v31 * v31 - a4 * a4 + (v31 + v31) * (a4 - v31);
  v34 = exp(-(a4 * a4));
  v8 = v34 * exp(-(v33 + v32 * v32)) / a4 * v27;
LABEL_25:
  if (v5)
  {
    return 1.0 - v8;
  }

  else
  {
    return v8;
  }
}

void boost::math::policies::detail::raise_error<std::overflow_error,double>(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, v2);
  std::string::basic_string[abi:ne200100]<0>(&v8, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v9, "%1%", "double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  boost::throw_exception<std::overflow_error>(&v7);
}

void sub_1D146B918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<std::overflow_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39EF8;
  *(a1 + 8) = &unk_1F4D39F28;
  *(a1 + 24) = &unk_1F4D39F50;
  return a1;
}

uint64_t boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::overflow_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::overflow_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<std::overflow_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<std::overflow_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55C0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39EF8;
  *(a1 + 8) = &unk_1F4D39F28;
  *(a1 + 24) = &unk_1F4D39F50;
  return a1;
}

double boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, unsigned int a2, uint64_t a3, double *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, double a11, double a12)
{
  v14 = a2;
  v16 = a7.n128_f64[0];
  v17 = a6.n128_f64[0];
  v18 = a5.n128_f64[0];
  v141 = a6.n128_f64[0];
  v142 = a5.n128_f64[0];
  v140 = a7.n128_f64[0];
  if (a4 && (a3 & 1) == 0)
  {
    boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
  }

  if (a4)
  {
    *a4 = -1.0;
  }

  v19 = 1.0;
  if (a7.n128_f64[0] < 0.0 || a7.n128_f64[0] > 1.0)
  {
    v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
    v22 = "Parameter x outside the range [0,1] in the incomplete beta function (got x=%1%).";
    goto LABEL_10;
  }

  if (a3)
  {
    if (v18 < 0.0)
    {
      v23 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v24 = "The argument a to the incomplete beta function must be >= zero (got a=%1%).";
      goto LABEL_33;
    }

    if (a6.n128_f64[0] < 0.0)
    {
      v28 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v29 = "The argument b to the incomplete beta function must be >= zero (got b=%1%).";
      goto LABEL_35;
    }

    if (v18 == 0.0)
    {
      if (a6.n128_f64[0] == 0.0)
      {
        v21 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
        v22 = "The arguments a and b to the incomplete beta function cannot both be zero, with x=%1%.";
LABEL_10:
        boost::math::policies::detail::raise_error<std::domain_error,long double>(v21, v22, &v140);
      }

      if (a6.n128_f64[0] > 0.0)
      {
        return (a2 ^ 1);
      }
    }

    else if (v18 > 0.0 && a6.n128_f64[0] == 0.0)
    {
      return a2;
    }
  }

  else
  {
    if (v18 <= 0.0)
    {
      v23 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v24 = "The argument a to the incomplete beta function must be greater than zero (got a=%1%).";
LABEL_33:
      boost::math::policies::detail::raise_error<std::domain_error,long double>(v23, v24, &v142);
    }

    if (a6.n128_f64[0] <= 0.0)
    {
      v28 = boost::math::detail::ibeta_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,BOOL,BOOL,long double*)::function;
      v29 = "The argument b to the incomplete beta function must be greater than zero (got b=%1%).";
LABEL_35:
      boost::math::policies::detail::raise_error<std::domain_error,long double>(v28, v29, &v141);
    }
  }

  if (a7.n128_f64[0] == 0.0)
  {
    if (a4)
    {
      v25 = 4.45014772e-308;
      a7.n128_u64[0] = 0x7FDFFFFFFFFFFFFFLL;
      if (v18 < 1.0)
      {
        v25 = 8.98846567e307;
      }

      if (v18 != 1.0)
      {
        v19 = v25;
      }

      *a4 = v19;
    }

    if (a2)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    if (a2 && (a3 & 1) == 0)
    {
      boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18, v17, a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
      v26 = v27;
      if (fabs(v27) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "numeric overflow");
      }
    }

    return v26;
  }

  if (a7.n128_f64[0] != 1.0)
  {
    v32 = 1.0 - a7.n128_f64[0];
    if (v18 == 0.5 && a6.n128_f64[0] == 0.5)
    {
      if (a4)
      {
        *a4 = sqrt(v32 * a7.n128_f64[0]) * 0.318309886;
      }

      if (a2)
      {
        v33 = 1.0 - a7.n128_f64[0];
      }

      else
      {
        v33 = a7.n128_f64[0];
      }

      v34 = asin(sqrt(v33)) / 1.57079633;
      if (a3)
      {
        return v34;
      }

      else
      {
        return v34 * 3.14159265;
      }
    }

    if (v18 == 1.0)
    {
      v14 = a2 ^ 1;
      v35 = a7.n128_f64[0];
      goto LABEL_74;
    }

    if (a6.n128_f64[0] == 1.0)
    {
      v35 = 1.0 - a7.n128_f64[0];
      v17 = v18;
      v32 = a7.n128_f64[0];
LABEL_74:
      if (v17 == 1.0)
      {
        if (a4)
        {
          *a4 = 1.0;
        }

        if (v14)
        {
          return v35;
        }

        else
        {
          return v32;
        }
      }

      if (a4)
      {
        *a4 = v17 * pow(v32, v17 + -1.0);
      }

      if (v35 >= 0.5)
      {
        if (v14)
        {
          v37 = boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, v32, v17);
          goto LABEL_87;
        }

        v42 = pow(v32, v17);
      }

      else
      {
        v36 = v17 * boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(-v35);
        if (v14)
        {
          v37 = boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v36);
LABEL_87:
          v26 = -v37;
          goto LABEL_100;
        }

        v42 = exp(v36);
      }

      v26 = v42;
LABEL_100:
      if ((a3 & 1) == 0)
      {
        return v26 / v17;
      }

      return v26;
    }

    if (a6.n128_f64[0] >= v18)
    {
      v38 = v18;
    }

    else
    {
      v38 = a6.n128_f64[0];
    }

    if (v38 > 1.0)
    {
      v39 = -(a6.n128_f64[0] - (a6.n128_f64[0] + v18) * v32);
      if (v18 < a6.n128_f64[0])
      {
        v39 = v18 - (a6.n128_f64[0] + v18) * a7.n128_f64[0];
      }

      if (v39 >= 0.0)
      {
        v40 = a7.n128_f64[0];
        v41 = v18;
        v18 = a6.n128_f64[0];
        v16 = 1.0 - a7.n128_f64[0];
      }

      else
      {
        v141 = v18;
        v142 = a6.n128_f64[0];
        v14 = a2 ^ 1;
        v40 = 1.0 - a7.n128_f64[0];
        v41 = a6.n128_f64[0];
        v140 = 1.0 - a7.n128_f64[0];
      }

      if (v18 >= 40.0)
      {
        v58 = v41;
        v59 = v18;
        v60 = v40;
        v61 = v16;
        v62 = a3;
LABEL_127:
        boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, v62, a4, v58, v59, v60, v61, a9.n128_f64[0], a10.n128_f64[0], a11, a12);
        v26 = v63;
LABEL_186:
        if (a4)
        {
          v133 = *a4;
          v46 = v140;
          if (*a4 < 0.0)
          {
            v133 = boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v139, 1, a1, "boost::math::ibeta<%1%>(%1%, %1%, %1%)", v142, v141, v140, v16, 1.0, v49, v50, v51);
            *a4 = v133;
            v46 = v140;
          }

          if (v133 != 0.0)
          {
            v134 = v16 * v46;
            v46 = v16 * v46 * 1.79769313e308;
            v135 = v133 / v134;
            v136 = v46 < v133;
            v137 = 8.98846567e307;
            if (!v136)
            {
              v137 = v135;
            }

            *a4 = v137;
          }
        }

        if (v14)
        {
          v138 = 1.0;
          if ((a3 & 1) == 0)
          {
            v138 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v142, v141, v46, v47, v48, v49, v50, v51);
          }

          return v138 - v26;
        }

        return v26;
      }

      v45 = floor(v18);
      if (v45 == v18 && floor(v41) == v41 && v41 < 2147483550.0 && v16 != 1.0)
      {
        v26 = boost::math::detail::binomial_ccdf<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, v18 + v41 + -1.0, v41 + -1.0, v40, v16);
        if ((a3 & 1) == 0)
        {
          v26 = v26 * boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v18, v46, v47, v48, v49, v50, v51);
        }

        goto LABEL_186;
      }

      if (v18 * v40 > 0.7)
      {
        if (v41 > 15.0)
        {
          v139 = v45;
          v72 = boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v139);
          v77 = v72 - (v141 == v72);
          v78 = v141 - v77;
          v79 = 1.0;
          if ((a3 & 1) == 0 && v77 >= 1)
          {
            v80 = 0.0;
            v81 = v77;
            do
            {
              v74 = v78 + v80;
              v73 = (v78 + v142 + v80) / (v78 + v80);
              v79 = v79 * v73;
              v80 = v80 + 1.0;
              --v81;
            }

            while (v81);
          }

          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v77, a1, a3, 0, v141 - v77, v142, v16, v140, v73, v74, v75, v76);
          v26 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, a3, v142, v78, v140, v16, v82, 1.0) / v79;
          goto LABEL_186;
        }

        if (a3)
        {
          v139 = v45;
          v89 = boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v139);
          v94 = v141 - v89;
          if (v94 > 0.0)
          {
            v95 = v141 - v89;
          }

          else
          {
            v95 = v94 + 1.0;
          }

          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v89 - (v94 <= 0.0), a1, 1, 0, v95, v142, v16, v140, v90, v91, v92, v93);
          v97 = v96;
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 1, 0, v142, v95, v140, v16, v98, v99, v100, v101);
          v103 = v97 + v102;
          if (v14)
          {
            v104 = v103 + -1.0;
          }

          else
          {
            v104 = v103;
          }

          v105 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, 1, v142 + 20.0, v95, v140, v16, v104, 1.0);
          if (v14)
          {
            v26 = -v105;
          }

          else
          {
            v26 = v105;
          }

          goto LABEL_168;
        }

        v58 = v41;
        v59 = v18;
        v60 = v40;
        v61 = v16;
        v62 = 0;
        goto LABEL_127;
      }

      if (v14)
      {
        v86 = 1.0;
        if ((a3 & 1) == 0)
        {
          v86 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v41, v18, 0.7, a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
        }

        v69 = -v86;
        v70 = v41;
        v71 = v18;
LABEL_152:
        v14 = 0;
        v26 = -boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v70, v71, v40, v69, v16, &v139, a3, a4, a10.n128_f64[0], a11, a12);
        goto LABEL_186;
      }

      v83 = v41;
      v84 = v18;
      goto LABEL_167;
    }

    if (a7.n128_f64[0] <= 0.5)
    {
      v40 = a7.n128_f64[0];
      v43 = v18;
      v44 = a6.n128_f64[0];
      v16 = 1.0 - a7.n128_f64[0];
    }

    else
    {
      v141 = v18;
      v142 = a6.n128_f64[0];
      v14 = a2 ^ 1;
      v40 = 1.0 - a7.n128_f64[0];
      v43 = a6.n128_f64[0];
      v44 = v18;
      v140 = 1.0 - a7.n128_f64[0];
    }

    if (v43 >= v44)
    {
      v52 = v43;
    }

    else
    {
      v52 = v44;
    }

    if (v52 <= 1.0)
    {
      v64 = pow(v40, v43);
      if (v43 < fmin(v44, 0.2) && v64 > 0.9)
      {
        v141 = v43;
        v142 = v44;
        v140 = v16;
        if (v40 < 0.3)
        {
          if ((a3 & 1) == 0)
          {
            v106 = v17 + v18;
            v107 = 0.0;
            v108 = 20;
            v56 = 1.0;
            do
            {
              v57 = v44 + v107;
              v56 = v56 * ((v106 + v107) / (v44 + v107));
              v107 = v107 + 1.0;
              --v108;
            }

            while (v108);
            goto LABEL_171;
          }

LABEL_132:
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 1, a4, v44, v43, v16, v40, a9.n128_f64[0], a10.n128_f64[0], a11, a12);
          v66 = v65;
          v56 = 1.0;
          v67 = 1.0;
          if (v14)
          {
LABEL_172:
            v116 = v44 + 20.0;
            v117 = v43;
            v118 = v16;
            v119 = v40;
            v120 = v66;
            v121 = a1;
            v122 = a3;
            v123 = v56;
LABEL_176:
            v85 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v121, v122, v116, v117, v118, v119, v120, v123);
            goto LABEL_177;
          }

          goto LABEL_179;
        }

LABEL_146:
        if (v14)
        {
          v85 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v44, v43, v16, 0.0, v40, &v139, a3, a4, a10.n128_f64[0], a11, a12);
LABEL_177:
          v26 = v85;
          v14 = 0;
LABEL_185:
          v16 = v40;
          goto LABEL_186;
        }

        v87 = 1.0;
        if ((a3 & 1) == 0)
        {
          v87 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v44, v43, a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
        }

        v88 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v44, v43, v16, -v87, v40, &v139, a3, a4, a10.n128_f64[0], a11, a12);
LABEL_184:
        v14 = 0;
        v26 = -v88;
        goto LABEL_185;
      }
    }

    else if (v44 > 1.0 && (v40 >= 0.1 || pow(v44 * v40, v43) > 0.7))
    {
      v141 = v43;
      v142 = v44;
      v140 = v16;
      if (v40 < 0.3)
      {
        if (v44 >= 15.0)
        {
          if (v14)
          {
            v120 = 0.0;
            v123 = 1.0;
            v116 = v44;
            v117 = v43;
            v118 = v16;
            v119 = v40;
            v121 = a1;
            v122 = a3;
            goto LABEL_176;
          }

          v132 = 1.0;
          if ((a3 & 1) == 0)
          {
            v132 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v44, v43, a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
          }

          v124 = -v132;
          v131 = 1.0;
          v125 = v44;
          v126 = v43;
          v127 = v16;
          v128 = v40;
          v129 = a1;
          v130 = a3;
          goto LABEL_183;
        }

        if ((a3 & 1) == 0)
        {
          v53 = v17 + v18;
          v54 = 0.0;
          v55 = 20;
          v56 = 1.0;
          do
          {
            v57 = v44 + v54;
            v56 = v56 * ((v53 + v54) / (v44 + v54));
            v54 = v54 + 1.0;
            --v55;
          }

          while (v55);
LABEL_171:
          boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(20, a1, 0, a4, v44, v43, v16, v40, v57, a10.n128_f64[0], a11, a12);
          v66 = v115;
          if (v14)
          {
            goto LABEL_172;
          }

          v67 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v44, v43, v109, v110, v111, v112, v113, v114);
LABEL_179:
          v124 = v66 - v67;
          v125 = v44 + 20.0;
          v126 = v43;
          v127 = v16;
          v128 = v40;
          v129 = a1;
          v130 = a3;
          v131 = v56;
LABEL_183:
          v88 = boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v129, v130, v125, v126, v127, v128, v124, v131);
          goto LABEL_184;
        }

        goto LABEL_132;
      }

      goto LABEL_146;
    }

    if (v14)
    {
      v68 = 1.0;
      if ((a3 & 1) == 0)
      {
        v68 = boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v43, v44, a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
      }

      v69 = -v68;
      v70 = v43;
      v71 = v44;
      goto LABEL_152;
    }

    v83 = v43;
    v84 = v44;
LABEL_167:
    v26 = boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v83, v84, v40, 0.0, v16, &v139, a3, a4, a10.n128_f64[0], a11, a12);
LABEL_168:
    v14 = 0;
    goto LABEL_186;
  }

  if (a4)
  {
    v31 = 4.45014772e-308;
    a7.n128_u64[0] = 0x7FDFFFFFFFFFFFFFLL;
    if (v17 < 1.0)
    {
      v31 = 8.98846567e307;
    }

    if (v17 != 1.0)
    {
      v19 = v31;
    }

    *a4 = v19;
  }

  if (a2)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  if (a2 & 1) != 0 || (a3)
  {
    return v26;
  }

  return boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18, v17, a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, a12);
}

double boost::math::beta<long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(result) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "numeric overflow");
  }

  return result;
}

double boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1)
{
  v1 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1);
  if (fabs(v1) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
  }

  return v1;
}

long double boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1)
{
  v2 = a1;
  if (a1 < -1.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v2);
  }

  if (a1 == -1.0)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
  }

  return log1pl(a1);
}

double boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1, long double a2, long double a3, double a4, long double a5, uint64_t a6, int a7, long double *a8, double a9, double a10, double a11)
{
  v14 = a1;
  __y = a2;
  v63 = a1;
  if (a8 && (a7 & 1) == 0)
  {
    boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
  }

  if (!a7)
  {
    v44 = pow(a3, a1);
LABEL_14:
    v48 = v44;
    goto LABEL_15;
  }

  v64 = a1 + a2;
  v15 = a1 + 6.02468004 + -0.5;
  v16 = a2 + 6.02468004;
  v17 = v16 + -0.5;
  v18 = v64 + 6.02468004 + -0.5;
  v19 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v64, v64 + 6.02468004, v16, 6.02468004, a1 + 6.02468004, a5, a9, a10, a11);
  v27 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v63, v19, v20, v21, v22, v23, v24, v25, v26);
  __x = v19 / (v27 * boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &__y, v27, v28, v29, v30, v31, v32, v33, v34));
  v57 = v18 / v17;
  v58 = v17;
  v35 = log(v18 / v17);
  v36 = __y;
  v37 = __y + -0.5;
  v38 = v35 * (__y + -0.5);
  v61 = v15;
  v39 = v18 * a3 / v15;
  v40 = log(v39);
  v14 = v63;
  v41 = v40 * v63;
  if (v38 <= -708.0 || v38 >= 709.0 || v41 <= -708.0 || v41 >= 709.0)
  {
    v45 = v41 + log(__x) + v38;
    v46 = (log(v61) + -1.0) * 0.5 + v45;
    if (a8)
    {
      v47 = log(a5);
      *a8 = exp(v46 + v36 * v47);
    }

    v44 = exp(v46);
    goto LABEL_14;
  }

  if (v36 * v63 >= v58 * 10.0)
  {
    v43 = pow(v57, v37);
  }

  else
  {
    v42 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v63 / v58);
    v43 = exp(v37 * v42);
    v14 = v63;
  }

  v48 = sqrt(v61 / 2.71828183) * (__x * v43 * pow(v39, v14));
  if (a8)
  {
    v56 = v48 * pow(a5, __y);
    *a8 = v56;
    if (v56 < 0.0)
    {
      boost::math::detail::ibeta_series<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

LABEL_15:
  if (v48 >= 2.22507386e-308)
  {
    v49 = 1.0 - __y;
    v50 = 1;
    v51 = 1000000;
    do
    {
      a4 = v48 / v14 + a4;
      if (fabs(a4 * 2.22044605e-16) >= fabs(v48 / v14))
      {
        break;
      }

      v52 = v49 * a3;
      v49 = v49 + 1.0;
      v53 = v50++;
      v48 = v48 * (v52 / v53);
      v14 = v14 + 1.0;
      --v51;
    }

    while (v51);
    v54 = 1000000 - v51;
    if (v54 >= 0xF4240)
    {
      v64 = v54;
      boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>("boost::math::ibeta<%1%>(%1%, %1%, %1%) in ibeta_series (with lanczos)", "Series evaluation exceeded %1% iterations, giving up now.", &v64);
    }
  }

  return a4;
}

void boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, uint64_t a2, uint64_t a3, double *a4, long double a5, long double a6, long double a7, double a8, double a9, double a10, double a11, double a12)
{
  v17 = boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v22, a3, a2, "boost::math::ibeta<%1%>(%1%, %1%, %1%)", a5, a6, a7, a8, 1.0, a10, a11, a12);
  if (a4)
  {
    *a4 = v17;
    if (v17 < 0.0)
    {
      boost::math::detail::ibeta_a_step<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

  if (v17 / a5 != 0.0)
  {
    v18 = 1.0;
    if (a1 >= 2)
    {
      v19 = a1 - 1;
      v20 = 0.0;
      v21 = 1.0;
      do
      {
        v21 = v21 * ((a5 + a6 + v20) * a7 / (v20 + a5 + 1.0));
        v18 = v18 + v21;
        v20 = v20 + 1.0;
        --v19;
      }

      while (v19);
    }
  }
}

double boost::math::detail::beta_small_b_large_a_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, int a2, double a3, long double a4, long double a5, double a6, double a7, double a8)
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a4 + -1.0;
  v15 = (a4 + -1.0) * 0.5 + a3;
  if (a6 >= 0.35)
  {
    v16 = log(a5);
  }

  else
  {
    v55 = -a6;
    if (a6 > 1.0)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v55);
    }

    if (a6 == 1.0)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
    }

    v16 = log1pl(-a6);
  }

  v53 = v16;
  v17 = -(v15 * v16);
  v24 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, &v55, a4, v17);
  if (v24 > 2.22507386e-308)
  {
    if (a2)
    {
      v25 = boost::math::detail::tgamma_delta_ratio_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v55, a3, a4, v18, v19, v20, v21, v22, v23);
      if (fabs(v25) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma_delta_ratio<%1%>(%1%, %1%)", "numeric overflow");
      }

      v26 = v24 / v25;
    }

    else
    {
      boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a4, v17);
      v26 = v27;
    }

    v28 = pow(v15, a4);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v80 = 0;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v29 = v26 / v28 * a8;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 1.0;
    v36 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, 1, &v54, 0, a4, v17, v30, v31, v32, v33, v34, v35);
    if (fabs(v36) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("gamma_q<%1%>(%1%, %1%)", "numeric overflow");
    }

    v37 = 0;
    v38 = v36 / v24;
    a7 = a7 + v29 * (v36 / v24);
    v39 = 1;
    v40 = 1;
    v41 = a4;
    v42 = 1.0;
    do
    {
      *(&v55 + v40) = 0.0;
      v43 = v40;
      v44 = 0.0;
      if (v40 >= 2)
      {
        v45 = 1;
        v46 = v37;
        v47 = &qword_1D15A6B30;
        do
        {
          v48 = *v47;
          v47 += 2;
          v44 = v44 + (v45 * a4 - v43) * *(&v55 + v46) / v48;
          *(&v55 + v40) = v44;
          ++v45;
          --v46;
        }

        while (v46);
      }

      v39 += 2;
      v49 = v44 / v43 + v14 / dbl_1D15A6B18[v39];
      *(&v55 + v40) = v49;
      v38 = (v42 * (v17 + v41 + 1.0) + v41 * (v41 + 1.0) * v38) / (v15 * (v15 * 4.0));
      v50 = v38 * (v29 * v49);
      a7 = a7 + v50;
      if (v50 <= 1.0)
      {
        v50 = fabs(v50 * 4.50359963e15);
        v51 = fabs(a7);
      }

      else
      {
        v51 = fabs(a7 * 2.22044605e-16);
      }

      if (v50 < v51)
      {
        break;
      }

      v42 = v53 * 0.5 * (v53 * 0.5) * v42;
      v41 = v41 + 2.0;
      ++v40;
      ++v37;
    }

    while (v40 != 50);
  }

  return a7;
}

double boost::math::detail::binomial_ccdf<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, double a2, double a3, long double a4, long double a5)
{
  v9 = pow(a4, a2);
  if (v9 <= 2.22507386e-308)
  {
    v11 = a2 * a4;
    if (COERCE__INT64(fabs(a2 * a4)) >= 0x7FF0000000000000)
    {
      v61 = a2 * a4;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    v19 = floor(v11);
    v20 = ceil(v11);
    if (v11 < 0.0)
    {
      v19 = v20;
    }

    if (v19 > 2147483650.0 || v19 < -2147483650.0)
    {
      v61 = a2 * a4;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    v22 = v19;
    if (a3 + 1.0 >= v22)
    {
      v23 = a3 + 2.0;
      if (COERCE__INT64(fabs(a3 + 2.0)) >= 0x7FF0000000000000)
      {
        v61 = a3 + 2.0;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
      }

      v24 = floor(v23);
      v25 = ceil(v23);
      if (v23 < 0.0)
      {
        v24 = v25;
      }

      if (v24 > 2147483650.0 || v24 < -2147483650.0)
      {
        v61 = a3 + 2.0;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
      }

      v22 = v24;
    }

    v27 = pow(a4, v22);
    v34 = v27 * pow(a5, a2 - v22);
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v61 = a2;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    v35 = floor(a2);
    v36 = ceil(a2);
    if (a2 < 0.0)
    {
      v35 = v36;
    }

    if (v35 > 2147483650.0 || v35 < -2147483650.0)
    {
      v61 = a2;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v35, v22, v35, -2147483650.0, v28, v29, v30, v31, v32, v33);
    v39 = v34 * v38;
    v40 = (v22 - 1);
    if (v39 == 0.0)
    {
      if (v40 <= a3)
      {
        return v39;
      }

      else
      {
        v41 = floor(a2);
        v42 = ceil(a2);
        if (a2 >= 0.0)
        {
          v42 = v41;
        }

        v60 = v42;
        v43 = v42 < -2147483650.0 || v42 > 2147483650.0;
        v44 = v22 - 2;
        v9 = v39;
        do
        {
          v45 = pow(a4, (v44 + 1));
          v53 = pow(a5, a2 - v40);
          if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v61 = a2;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
          }

          if (v43)
          {
            v61 = a2;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61, v60);
          }

          if (((v44 + 1) & 0x80000000) != 0)
          {
            v61 = v40;
            boost::math::policies::detail::raise_error<boost::math::rounding_error,double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61, v60);
          }

          boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v60, v44 + 1, v60, v46, v47, v48, v49, v50, v51, v52);
          v9 = v9 + v45 * v53 * v54;
          v40 = v44--;
        }

        while (v40 > a3);
      }
    }

    else
    {
      v9 = v39;
      if (v40 > a3)
      {
        v55 = v22;
        v9 = v39;
        v56 = v39;
        do
        {
          v56 = v56 * (v55 * a5 / ((a2 - v40) * a4));
          v9 = v9 + v56;
          v40 = (v55 - 2);
          --v55;
        }

        while (v40 > a3);
      }

      v57 = (v22 + 1);
      if (v57 <= a2)
      {
        v58 = v22 + 2;
        do
        {
          v39 = v39 * ((a2 - v57 + 1.0) * a4 / (v57 * a5));
          v9 = v9 + v39;
          v57 = v58++;
        }

        while (v57 <= a2);
      }
    }
  }

  else
  {
    v10 = a2 + -1.0;
    if (COERCE__INT64(fabs(a2 + -1.0)) >= 0x7FF0000000000000)
    {
      v61 = a2 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    v12 = floor(v10);
    v13 = ceil(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }

    if (v12 > 2147483650.0 || v12 < -2147483650.0)
    {
      v61 = a2 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v61);
    }

    v15 = v12;
    v16 = v15;
    if (v15 > a3)
    {
      v17 = v15 + 1;
      v18 = v9;
      do
      {
        v18 = v18 * (v17 * a5 / ((a2 - v16) * a4));
        v9 = v9 + v18;
        v16 = (v17 - 2);
        --v17;
      }

      while (v16 > a3);
    }
  }

  return v9;
}

uint64_t boost::math::itrunc<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1)
{
  v1 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = *a1;
    boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v6);
  }

  v2 = floor(v1);
  v3 = ceil(v1);
  if (v1 < 0.0)
  {
    v2 = v3;
  }

  if (v2 > 2147483650.0 || v2 < -2147483650.0)
  {
    v6 = *a1;
    boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v6);
  }

  return v2;
}

void boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, uint64_t a2, double *a3, long double a4, long double a5, long double a6, double a7, double a8, double a9, double a10, double a11)
{
  v16 = boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v27, a2, a1, "boost::math::ibeta<%1%>(%1%, %1%, %1%)", a4, a5, a6, a7, 1.0, a9, a10, a11);
  if (a3)
  {
    *a3 = v16;
    if (v16 < 0.0)
    {
      boost::math::detail::ibeta_fraction2<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }
  }

  if (v16 != 0.0)
  {
    *v27 = a4;
    *&v27[1] = a5;
    *&v27[2] = a6;
    *&v27[3] = a7;
    v28 = 0;
    boost::math::detail::ibeta_fraction2_t<long double>::operator()(v27);
    if (v17 == 0.0)
    {
      v18 = 3.56011817e-307;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    v20 = 2;
    v21 = v18;
    do
    {
      v22 = boost::math::detail::ibeta_fraction2_t<long double>::operator()(v27);
      v24 = v23 + v22 * v19;
      v25 = v23 + v22 / v21;
      if (v25 == 0.0)
      {
        v21 = 3.56011817e-307;
      }

      else
      {
        v21 = v25;
      }

      if (v24 == 0.0)
      {
        v19 = 2.80889552e306;
      }

      else
      {
        v19 = 1.0 / v24;
      }

      v18 = v18 * (v19 * v21);
    }

    while (fabs(v19 * v21 + -1.0) > 2.22044605e-16 && v20++ != 0);
  }
}

long double boost::math::detail::ibeta_power_terms<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, char a2, uint64_t a3, char *a4, long double a5, long double a6, long double a7, double a8, double a9, double a10, double a11, double a12, ...)
{
  v93 = a6;
  v94 = a5;
  if ((a2 & 1) == 0)
  {
    v46 = pow(a7, a5);
    v47 = a8;
    v48 = a6;
    goto LABEL_15;
  }

  v92 = a5 + a6;
  v17 = a5 + 6.02468004 + -0.5;
  v18 = a6 + 6.02468004 + -0.5;
  v19 = a5 + a6 + 6.02468004 + -0.5;
  v20 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v92, a5 + a6 + 6.02468004, a6 + 6.02468004, 6.02468004, -0.5, a9, a10, a11, a12);
  v28 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v94, v20, v21, v22, v23, v24, v25, v26, v27);
  v36 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v93, v28, v29, v30, v31, v32, v33, v34, v35);
  v37 = v19;
  __x = sqrt(v17 / v19) * (sqrt(v18 / 2.71828183) * (v20 / (v28 * v36) * a9));
  v39 = v93;
  v38 = v94;
  v40 = (a7 * v93 - v17 * a8) / v17;
  v41 = fabs(v40);
  v42 = (a8 * v94 - v18 * a7) / v18;
  v43 = fabs(v42);
  if (v43 >= v41)
  {
    v44 = v41;
  }

  else
  {
    v44 = v43;
  }

  if (v44 < 0.2)
  {
    if (v40 * v42 > 0.0 || (v93 >= v94 ? (v45 = v94) : (v45 = v93), v45 < 1.0))
    {
      v88 = v37;
      v90 = (a8 * v94 - v18 * a7) / v18;
      if (v41 >= 0.1)
      {
        v62 = pow(v37 * a7 / v17, v94);
      }

      else
      {
        v95 = (a7 * v93 - v17 * a8) / v17;
        if (v40 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v95);
        }

        if (v40 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
        }

        v73 = log1pl((a7 * v93 - v17 * a8) / v17);
        v62 = exp(v38 * v73);
      }

      v46 = __x * v62;
      if (v43 < 0.1)
      {
        v69 = v93;
        v95 = v90;
        if (v90 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v95, v90);
        }

        if (v90 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
        }

        v74 = log1pl(v90);
        v49 = exp(v69 * v74);
        return v46 * v49;
      }

      v48 = v93;
      v47 = v88 * a8 / v18;
LABEL_15:
      v49 = pow(v47, v48);
      return v46 * v49;
    }

    if (v41 >= v43)
    {
      v63 = v41;
    }

    else
    {
      v63 = v43;
    }

    if (v63 < 0.5)
    {
      v64 = v93 / v94;
      if ((v94 >= v93 || v64 * v42 >= 0.1) && (v94 < v93 || v40 / v64 <= 0.1))
      {
        v81 = v40;
        v82 = v42;
        v83 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v81);
        v84 = boost::math::expm1<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v83 / v64);
        v85 = v82 + v84 + v84 * v82;
        v80 = v93;
        v87 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v85);
      }

      else
      {
        v95 = v42;
        if (v42 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v95);
        }

        if (v42 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
        }

        v86 = log1pl(v42);
        v78 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v64 * v86);
        if (fabs(v78) > 1.79769313e308)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
        }

        v79 = v40 + v78 + v78 * v40;
        v80 = v94;
        v95 = v79;
        if (v79 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v95);
        }

        if (v79 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
        }

        v87 = log1pl(v79);
      }

      v77 = v80 * v87;
      goto LABEL_73;
    }

    v89 = v37;
    if (v41 >= v43)
    {
      v75 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v42);
      v76 = v94;
      v72 = log(v89 * a7 / v17) * v76 + v39 * v75;
    }

    else
    {
      v70 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>((a7 * v93 - v17 * a8) / v17);
      v71 = v93;
      v72 = log(v89 * a8 / v18) * v71 + v38 * v70;
    }

    if (v72 > -708.0 && v72 < 709.0)
    {
      v77 = v72;
LABEL_73:
      v67 = exp(v77);
      return __x * v67;
    }

    v68 = log(__x) + v72;
    if (v68 >= 709.0)
    {
LABEL_60:
      boost::math::policies::detail::raise_error<std::overflow_error,long double>(a4, "Overflow Error");
    }

    return exp(v68);
  }

  v51 = v37 * a7 / v17;
  v52 = v37 * a8 / v18;
  v53 = log(v51);
  v54 = v53 * v38;
  v55 = log(v52);
  v56 = v55 * v39;
  if (v53 * v38 < 709.0 && v54 > -708.0 && v56 < 709.0 && v56 > -708.0)
  {
    v57 = pow(v51, v38);
    return pow(v52, v39) * v57 * __x;
  }

  if (v38 >= v39)
  {
    v65 = pow(v51, v38 / v39);
    v66 = v39 * (v55 + log(v65));
    if (v66 < 709.0 && v66 > -708.0)
    {
      v60 = v52 * v65;
      v61 = v39;
      goto LABEL_40;
    }

LABEL_41:
    v68 = v55 * v39 + v54 + log(__x);
    if (v68 >= 709.0)
    {
      goto LABEL_60;
    }

    return exp(v68);
  }

  v58 = pow(v52, v39 / v38);
  v59 = v38 * (v53 + log(v58));
  if (v59 >= 709.0 || v59 <= -708.0)
  {
    goto LABEL_41;
  }

  v60 = v51 * v58;
  v61 = v38;
LABEL_40:
  v67 = pow(v60, v61);
  return __x * v67;
}

void boost::math::policies::detail::raise_error<std::domain_error,long double>(char *a1, char *a2, double *a3, ...)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  boost::throw_exception<std::domain_error>(&v11);
}

uint64_t boost::math::policies::detail::prec_format<long double>@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  MEMORY[0x1D388B5A0](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D388B600](&v11);
}

void sub_1D146E4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  __y = a2;
  v38 = a1;
  if (a1 <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "The arguments to the beta function must be greater than zero (got a=%1%).", &v38);
  }

  if (a2 <= 0.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "The arguments to the beta function must be greater than zero (got b=%1%).", &__y);
  }

  v8 = a1 + a2;
  v36 = a1 + a2;
  v9 = a2 < 2.22044605e-16 && v8 == a1;
  if (!v9 && (a1 >= 2.22044605e-16 || v8 != a2) && a2 != 1.0 && a1 != 1.0 && v8 >= 2.22044605e-16)
  {
    if (a1 >= a2)
    {
      v10 = a2;
      a2 = a1;
    }

    else
    {
      __y = a1;
      v38 = a2;
      v10 = a1;
    }

    v11 = a2 + 6.02468004;
    v12 = v11 + -0.5;
    v13 = v10 + 6.02468004;
    v14 = v8 + 6.02468004 + -0.5;
    v15 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v38, v8 + 6.02468004, v11, v8, v10, a5, a6, a7, a8);
    v23 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &__y, v15, v16, v17, v18, v19, v20, v21, v22);
    boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v36, v23, v24, v25, v26, v27, v28, v29, v30);
    v31 = v38 + -0.5 - __y;
    if (fabs(__y * v31) >= v14 * 100.0 || v38 <= 100.0)
    {
      pow(v12 / v14, v38 + -0.5 - __y);
    }

    else
    {
      v33 = boost::math::log1p<boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(-__y / v14);
      exp(v31 * v33);
    }

    v34 = v13 + -0.5;
    if (v14 <= 1.0e10)
    {
      v35 = v12 * v34 / (v14 * v14);
    }

    else
    {
      v35 = v12 / v14 * (v34 / v14);
    }

    pow(v35, __y);
  }
}

void boost::math::policies::detail::raise_error<std::overflow_error,long double>(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, v2);
  std::string::basic_string[abi:ne200100]<0>(&v8, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v9, "%1%", "long double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  boost::throw_exception<std::overflow_error>(&v7);
}

void sub_1D146E858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

double boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(float64_t *a1, _DWORD *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = *a3;
  if (*a3 <= 1.0)
  {
    v41 = v21 * v21;
    v23.f64[0] = a1[11];
    v24.f64[0] = a1[12];
    LODWORD(a10) = a2[11];
    LODWORD(a9) = a2[12];
    v27 = *&a9;
    LODWORD(a11) = a2[9];
    LODWORD(a9) = a2[10];
    v28 = *&a9;
    v29 = *&a10;
    v30 = *&a11;
    v26.f64[0] = a1[9];
    v25.f64[0] = a1[10];
    LODWORD(v14) = a2[7];
    LODWORD(a11) = a2[8];
    v33 = *&a11;
    v34 = v14;
    v32.f64[0] = a1[7];
    v31.f64[0] = a1[8];
    LODWORD(v16) = a2[5];
    LODWORD(v15) = a2[6];
    v37 = v15;
    v38 = v16;
    v36.f64[0] = a1[5];
    v35.f64[0] = a1[6];
    LODWORD(v19) = a2[3];
    LODWORD(v17) = a2[4];
    v42 = v17;
    v43 = v19;
    v40.f64[0] = a1[3];
    v39.f64[0] = a1[4];
    LODWORD(v11) = a2[1];
    LODWORD(v20) = a2[2];
    v46 = v20;
    v47 = v11;
    v45.f64[0] = a1[1];
    v44.f64[0] = a1[2];
    v48.f64[0] = *a1;
  }

  else
  {
    *&v22 = v21 * v21;
    v21 = 1.0 / v21;
    v24.f64[0] = *a1;
    v23.f64[0] = a1[1];
    v25.f64[0] = a1[2];
    v26.f64[0] = a1[3];
    LODWORD(a10) = *a2;
    LODWORD(a11) = a2[1];
    v27 = *&a10;
    LODWORD(a10) = a2[2];
    LODWORD(v14) = a2[3];
    v28 = *&a10;
    v29 = *&a11;
    v30 = v14;
    v31.f64[0] = a1[4];
    v32.f64[0] = a1[5];
    LODWORD(v14) = a2[4];
    LODWORD(v15) = a2[5];
    v33 = v14;
    v34 = v15;
    v35.f64[0] = a1[6];
    v36.f64[0] = a1[7];
    LODWORD(v16) = a2[6];
    LODWORD(v18) = a2[7];
    v37 = v16;
    v38 = v18;
    v39.f64[0] = a1[8];
    v40.f64[0] = a1[9];
    v41 = 1.0 / *&v22;
    LODWORD(v22) = a2[8];
    LODWORD(v20) = a2[9];
    v42 = v22;
    v43 = v20;
    v44.f64[0] = a1[10];
    v45.f64[0] = a1[11];
    LODWORD(v11) = a2[10];
    LODWORD(v12) = a2[11];
    v46 = v11;
    v47 = v12;
    v48.f64[0] = a1[12];
    a2 += 12;
  }

  LODWORD(v13) = *a2;
  v24.f64[1] = v27;
  v25.f64[1] = v28;
  v23.f64[1] = v29;
  v26.f64[1] = v30;
  v31.f64[1] = v33;
  v32.f64[1] = v34;
  v35.f64[1] = v37;
  v36.f64[1] = v38;
  v39.f64[1] = v42;
  v40.f64[1] = v43;
  v44.f64[1] = v46;
  v45.f64[1] = v47;
  v48.f64[1] = v13;
  v49 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v26, v23, v41), v41), v32), v41), v36), v41), v40), v41), v45), v21), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v25, v24, v41), v41), v31), v41), v35), v41), v39), v41), v44), v41), v48));
  *&result = *&vdivq_f64(v49, vdupq_laneq_s64(v49, 1));
  return result;
}

double boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double result)
{
  v1 = fabs(result);
  if (v1 <= 0.5)
  {
    if (v1 >= 2.22044605e-16)
    {
      v2 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6280, xmmword_1D15A6270, result * result), result * result), xmmword_1D15A62A0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D15A6260, xmmword_1D15A6250, result * result), result * result), xmmword_1D15A6290), result));
      return result * v2.f64[0] / v2.f64[1] + result * 1.02812767;
    }
  }

  else if (v1 >= 709.0)
  {
    v3 = result <= 0.0;
    result = -1.0;
    if (!v3)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "Overflow Error");
    }
  }

  else
  {
    return exp(result) + -1.0;
  }

  return result;
}

double boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, long double a2, double a3)
{
  v14 = a2;
  if (a2 <= 0.0)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v15 = a3;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    v9 = ceil(a3);
    v10 = floor(a3);
    if (a3 >= 0.0)
    {
      v9 = v10;
    }

    if (v9 != a3)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "For non-integral exponent, expected base > 0 but got %1%", &v14);
    }

    v11 = a3 * 0.5;
    if (COERCE__INT64(fabs(a3 * 0.5)) >= 0x7FF0000000000000)
    {
      v15 = a3 * 0.5;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    if (v11 >= 0.0)
    {
      v12 = floor(v11);
    }

    else
    {
      v12 = ceil(v11);
    }

    if (v12 != v11)
    {
      return pow(a2, a3) + -1.0;
    }

    return boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, -a2, a3);
  }

  else
  {
    v5 = fabs((a2 + -1.0) * a3);
    if (fabs(a3) >= 0.2 && v5 >= 0.5)
    {
      return pow(a2, a3) + -1.0;
    }

    v7 = log(a2) * a3;
    if (v7 >= 0.5)
    {
      if (v7 > 709.0)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Overflow Error");
      }

      return pow(a2, a3) + -1.0;
    }

    v8 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v7);
    if (fabs(v8) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
    }
  }

  return v8;
}

void boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>(char *a1, char *a2, double *a3, ...)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4D39F70;
  boost::throw_exception<boost::math::rounding_error>(&v11);
}

void sub_1D146EE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::math::rounding_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::rounding_error>::wrapexcept(exception, a1);
}

void boost::math::rounding_error::~rounding_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D39FF8;
  *(a1 + 8) = &unk_1F4D3A028;
  *(a1 + 24) = &unk_1F4D3A050;
  return a1;
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::math::rounding_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::rounding_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::rounding_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::rounding_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::rounding_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4D39F70;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D39FF8;
  *(a1 + 8) = &unk_1F4D3A028;
  *(a1 + 24) = &unk_1F4D3A050;
  return a1;
}

void boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>(char *a1, char *a2, double *a3, ...)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<long double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4D3A070;
  boost::throw_exception<boost::math::evaluation_error>(&v11);
}

void sub_1D146F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::math::evaluation_error>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(exception, a1);
}

void boost::math::evaluation_error::~evaluation_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4D3A0F8;
  *(a1 + 8) = &unk_1F4D3A128;
  *(a1 + 24) = &unk_1F4D3A150;
  return a1;
}

uint64_t boost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D146FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::math::evaluation_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}