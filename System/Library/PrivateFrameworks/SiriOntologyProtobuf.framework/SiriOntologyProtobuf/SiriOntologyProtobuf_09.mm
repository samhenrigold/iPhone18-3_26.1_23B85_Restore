unsigned __int8 *sub_26863EFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_268689C74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  result = sub_2685C15D0(v12);
  if (!v3)
  {
    if (v17)
    {
      v18 = sub_2685C0AEC();
      if (v18 != v18)
      {
        sub_2685C1CBC();
        swift_allocError();
        *v19 = 0;
        return swift_willThrow();
      }

      (*(a2 + 32))();
      v20 = *(a1 - 8);
      if ((*(v20 + 48))(v11, 1, a1) == 1)
      {
        (*(v8 + 8))(v11, v7);
        goto LABEL_7;
      }

      v14 = v11;
    }

    else
    {
      sub_2685C1DCC(result, v16, a1, a2, v14);
      v20 = *(a1 - 8);
      if ((*(v20 + 48))(v14, 1, a1) == 1)
      {
        (*(v8 + 8))(v14, v7);
LABEL_7:
        sub_2685C1CBC();
        swift_allocError();
        *v21 = 8;
        return swift_willThrow();
      }
    }

    return (*(v20 + 32))(a3, v14, a1);
  }

  return result;
}

unsigned __int8 *sub_26863F280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685C01A0();
  v11 = *(v3 + 40);
  if (v11 == *(v3 + 48) || *v11 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v11 + 1;
    sub_2685C01A0();
    result = sub_26863EFE8(a2, a3, v10);
    if (!v4)
    {
      v13 = sub_268689C74();
      (*(*(v13 - 8) + 8))(a1, v13);
      (*(v8 + 32))(a1, v10, a2);
      return (*(v8 + 56))(a1, 0, 1, a2);
    }
  }

  return result;
}

unsigned __int8 *sub_26863F428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685C01A0();
  v11 = *(v3 + 40);
  if (v11 == *(v3 + 48) || *v11 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v11 + 1;
    sub_2685C01A0();
    result = sub_26863EFE8(a2, a3, v10);
    if (!v4)
    {
      (*(v8 + 8))(a1, a2);
      return (*(v8 + 32))(a1, v10, a2);
    }
  }

  return result;
}

void sub_26863F58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v30 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  sub_2685C01A0();
  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  if (v15 == v16 || *v15 != 58)
  {
LABEL_39:
    sub_2685C1CBC();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }

  else
  {
    *(v3 + 40) = v15 + 1;
    sub_2685C01A0();
    v17 = *(v3 + 40);
    if (v17 != v16 && *v17 == 91)
    {
      *(v3 + 40) = v17 + 1;
      sub_2685C01A0();
      v28 = (v6 + 8);
      v29 = (v6 + 16);
      for (i = 1; ; i = 0)
      {
        v19 = *(v3 + 40);
        if (v19 == v16)
        {
          break;
        }

        v20 = *v19;
        if (v20 == 93)
        {
          *(v3 + 40) = v19 + 1;
          sub_2685C01A0();
          return;
        }

        if ((i & 1) == 0)
        {
          for (; v20 <= 0x23; v20 = *v19)
          {
            if (((1 << v20) & 0x100002600) != 0)
            {
              ++v19;
            }

            else
            {
              if (v20 != 35)
              {
                break;
              }

              *(v3 + 40) = ++v19;
              while (v19 != v16)
              {
                v22 = *v19++;
                v21 = v22;
                if (v22 == 10 || v21 == 13)
                {
                  goto LABEL_12;
                }
              }

              v19 = v16;
            }

LABEL_12:
            *(v3 + 40) = v19;
            if (v19 == v16)
            {
              break;
            }
          }

LABEL_25:
          if (v19 == v16 || *v19 != 44)
          {
            goto LABEL_39;
          }

LABEL_38:
          ++v19;
LABEL_28:
          while (1)
          {
            *(v3 + 40) = v19;
            if (v19 == v16)
            {
              break;
            }

            v23 = *v19;
            if (v23 > 0x23)
            {
              break;
            }

            if (((1 << v23) & 0x100002600) != 0)
            {
              goto LABEL_38;
            }

            if (v23 != 35)
            {
              break;
            }

            *(v3 + 40) = ++v19;
            while (v19 != v16)
            {
              v25 = *v19++;
              v24 = v25;
              if (v25 == 10 || v24 == 13)
              {
                goto LABEL_28;
              }
            }

            v19 = v16;
          }
        }

LABEL_23:
        sub_26863EFE8(a2, v31, v14);
        if (v4)
        {
          return;
        }

        (*v29)(v12, v14, a2);
        sub_268689BA4();
        sub_268689B84();
        (*v28)(v14, a2);
      }

      if (i)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    sub_26863EFE8(a2, v31, v9);
    if (!v4)
    {
      (*(v6 + 16))(v12, v9, a2);
      sub_268689BA4();
      sub_268689B84();
      (*(v6 + 8))(v9, a2);
    }
  }
}

uint64_t sub_26863F948(char *a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v95 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v6;
  v8 = sub_268689C74();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v65 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = *(v3 + 40);
  v19 = *(v3 + 48);
  v20 = v3;
  if (v18 != v19 && *v18 == 58)
  {
    *(v3 + 40) = v18 + 1;
    sub_2685C01A0();
  }

  v21 = v75;
  v22 = *(v75 + 16);
  v73 = a1;
  v23 = a1;
  v24 = v76;
  v67 = v22;
  v68 = v75 + 16;
  v22(v17, v23, v76);
  v71 = *(v95 + 48);
  v72 = v95 + 48;
  v25 = v71(v17, 1, v7);
  v26 = v24;
  v27 = *(v21 + 8);
  v27(v17, v26);
  if (v25 == 1)
  {
    (*(v74 + 16))(v7);
    (*(v95 + 56))(v15, 0, 1, v7);
    (*(v75 + 40))(v73, v15, v76);
  }

  v28 = *(v20 + 40);
  if (v28 == v19)
  {
    goto LABEL_10;
  }

  v29 = v20;
  v30 = *v28;
  *(v20 + 40) = v28 + 1;
  sub_2685C01A0();
  if (v30 != 60)
  {
    if (v30 == 123)
    {
      v31 = 125;
      goto LABEL_12;
    }

LABEL_10:
    sub_2685C1CBC();
    swift_allocError();
    *v32 = 0;
    return swift_willThrow();
  }

  v31 = 62;
LABEL_12:
  sub_268643DAC(v20, v87);
  *&v83 = 0;
  WORD4(v83) = 256;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  sub_268643DAC(v87, &v79);
  WORD4(v83) = v31;
  v34 = swift_conformsToProtocol2();
  if (!v34)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v36 = 6;
    swift_willThrow();
    sub_268643E08(v87);
    v37 = &v79;
    return sub_268643E5C(v37);
  }

  (*(v34 + 8))(&v77, v7, v34);
  sub_268643E08(v87);
  sub_2685B2FBC(v84, *(&v84 + 1), v85, *(&v85 + 1));
  v84 = v77;
  v85 = v78;
  *&v86 = v7;
  *(&v86 + 1) = v74;
  v88[0] = v79;
  v88[1] = v80;
  v89 = v81;
  v90 = v82;
  v91 = v83;
  v92 = v77;
  v93 = v78;
  v94 = v86;
  if (v7 != &type metadata for Google_Protobuf_Any)
  {
    if (v71(v73, 1, v7) != 1)
    {
      v35 = v70;
      (*(v74 + 64))(v88, &type metadata for TextFormatDecoder, &off_28792DCE0, v7);
      if (v35)
      {
LABEL_86:
        v37 = v88;
        return sub_268643E5C(v37);
      }

LABEL_85:
      sub_268643E08(v29);
      sub_268643DAC(v88, v29);
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_89;
  }

  v30 = v69;
  v67(v69, v73, v76);
  if (v71(v30, 1, &type metadata for Google_Protobuf_Any) == 1)
  {
LABEL_89:
    result = (v27)(v30, v76);
    goto LABEL_90;
  }

  (*(v95 + 32))(v66, v30, &type metadata for Google_Protobuf_Any);
  result = swift_dynamicCast();
  v38 = v80;
  if (v80)
  {
    v39 = *(&v89 + 1);
    v40 = v90;
    for (i = v73; v39 != v90; *(&v89 + 1) = v39)
    {
      v42 = *v39;
      if (v42 > 0x23)
      {
        break;
      }

      if (((1 << v42) & 0x100002600) != 0)
      {
        ++v39;
      }

      else
      {
        if (v42 != 35)
        {
          break;
        }

        *(&v89 + 1) = ++v39;
        while (v39 != v90)
        {
          v44 = *v39++;
          v43 = v44;
          if (v44 == 10 || v43 == 13)
          {
            goto LABEL_23;
          }
        }

        v39 = v90;
      }

LABEL_23:
      ;
    }

    v46 = v79;
    if (v39 == v90 || *v39 != 91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        swift_allocObject();
        v38 = sub_26866D2A0(v38);
      }

      v57 = v70;
      sub_2686540A4(v38, v88);
      if (!v57)
      {
        if (!v38)
        {
LABEL_83:
          v58 = v65;
          (*(v95 + 56))(v65, 1, 1, &type metadata for Google_Protobuf_Any);
          goto LABEL_84;
        }

LABEL_59:
        v79 = v46;
        *&v80 = v38;
        sub_2685BA80C(v46, *(&v46 + 1));

        v58 = v65;
        swift_dynamicCast();
        (*(v95 + 56))(v58, 0, 1, &type metadata for Google_Protobuf_Any);
LABEL_84:
        (*(v75 + 40))(i, v58, v76);
        sub_2685C31B4(v46, *(&v46 + 1), v38);
        goto LABEL_85;
      }
    }

    else
    {
      v47 = v39 + 1;
      *(&v89 + 1) = v39 + 1;
      if (v39 + 1 != v90 && (*v47 & 0xDFu) - 91 >= 0xFFFFFFE6)
      {
        v48 = v39 + 2;
        *(&v89 + 1) = v39 + 2;
        if (v39 + 2 != v90)
        {
          v49 = 1;
          while (1)
          {
            v50 = *v48;
            v51 = (v50 - 58) > 0xFFFFFFF5 || (v50 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
            if (!v51 && (v50 - 46) >= 2 && v50 != 95)
            {
              break;
            }

            *(&v89 + 1) = ++v48;
            ++v49;
            if (v48 == v90)
            {
              goto LABEL_75;
            }
          }

          if (v50 == 93)
          {
            v52 = sub_2685B4E1C(v47, v49);
            if (v53)
            {
              v54 = v53;
              if (v48 != v40 && *v48 == 93)
              {
                v55 = v52;
                v56 = v48 + 1;
                for (*(&v89 + 1) = v48 + 1; v56 != v40; *(&v89 + 1) = v56)
                {
                  v59 = *v56;
                  if (v59 > 0x23)
                  {
                    break;
                  }

                  if (((1 << v59) & 0x100002600) != 0)
                  {
                    ++v56;
                  }

                  else
                  {
                    if (v59 != 35)
                    {
                      break;
                    }

                    *(&v89 + 1) = ++v56;
                    while (v56 != v40)
                    {
                      v61 = *v56++;
                      v60 = v61;
                      if (v61 == 10 || v60 == 13)
                      {
                        goto LABEL_61;
                      }
                    }

                    v56 = v40;
                  }

LABEL_61:
                  ;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  type metadata accessor for AnyMessageStorage();
                  swift_allocObject();
                  v38 = sub_26866D2A0(v38);
                }

                v64 = v70;
                sub_26866ADE4(v55, v54, v88);
                if (v64)
                {
                  sub_268643E5C(v88);

                  return sub_2685C31B4(v46, *(&v46 + 1), v38);
                }

                i = v73;
                if (!v38)
                {
                  goto LABEL_83;
                }

                goto LABEL_59;
              }
            }
          }
        }
      }

LABEL_75:
      sub_2685C1CBC();
      swift_allocError();
      *v63 = 0;
      swift_willThrow();
    }

    sub_268643E5C(v88);
    return sub_2685C31B4(v46, *(&v46 + 1), v38);
  }

LABEL_90:
  __break(1u);
  return result;
}

void sub_268640230(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v98 = a3;
  Description = a2[-1].Description;
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v119 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v99 = &v87 - v15;
  v16 = *(v3 + 40);
  v17 = *(v3 + 48);
  if (v16 != v17 && *v16 == 58)
  {
    *(v3 + 40) = v16 + 1;
    sub_2685C01A0();
    v16 = *(v3 + 40);
  }

  if (v16 == v17)
  {
    goto LABEL_91;
  }

  v18 = *v16;
  *(v3 + 40) = v16 + 1;
  sub_2685C01A0();
  if (v18 == 60)
  {
    v59 = 62;
LABEL_94:
    sub_268643DAC(v6, v110);
    *&v106 = 0;
    WORD4(v106) = 256;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    sub_268643DAC(v110, &v102);
    WORD4(v106) = v59;
    v60 = swift_conformsToProtocol2();
    v61 = v98;
    if (!v60)
    {
LABEL_98:
      sub_2685C1CBC();
      swift_allocError();
      *v62 = 6;
      swift_willThrow();
      sub_268643E08(v110);
      v63 = &v102;
      goto LABEL_147;
    }

    (*(v60 + 8))(&v100, a2, v60);
    sub_268643E08(v110);
    sub_2685B2FBC(v107, *(&v107 + 1), v108, *(&v108 + 1));
    v107 = v100;
    v108 = v101;
    *&v109 = a2;
    *(&v109 + 1) = v61;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v100;
    v117 = v101;
    v118 = v109;
    if (a2 != &type metadata for Google_Protobuf_Any)
    {
      (*(v61 + 16))(a2, v61);
      (*(v61 + 64))(&v111, &type metadata for TextFormatDecoder, &off_28792DCE0, a2, v61);
      if (v4)
      {
        (*(Description + 1))(v12, a2);
        goto LABEL_146;
      }

      (*(Description + 2))(v99, v12, a2);
      sub_268689BA4();
      sub_268689B84();
      (*(Description + 1))(v12, a2);
      goto LABEL_145;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v64 = qword_28029B270;
    v65 = *(&v113 + 1);
    for (i = v114; v65 != v114; *(&v113 + 1) = v65)
    {
      v67 = *v65;
      if (v67 > 0x23)
      {
        break;
      }

      if (((1 << v67) & 0x100002600) != 0)
      {
        ++v65;
      }

      else
      {
        if (v67 != 35)
        {
          break;
        }

        *(&v113 + 1) = ++v65;
        while (v65 != v114)
        {
          v69 = *v65++;
          v68 = v69;
          if (v69 == 10 || v68 == 13)
          {
            goto LABEL_104;
          }
        }

        v65 = v114;
      }

LABEL_104:
      ;
    }

    if (v65 == v114 || *v65 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        swift_allocObject();
        v64 = sub_26866D2A0(v64);
      }

      sub_2686540A4(v64, &v111);
      if (!v4)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v71 = v65 + 1;
      *(&v113 + 1) = v65 + 1;
      if (v65 + 1 == v114)
      {
        goto LABEL_148;
      }

      if ((*v71 & 0xDFu) - 91 < 0xFFFFFFE6)
      {
        goto LABEL_148;
      }

      v72 = v65 + 2;
      *(&v113 + 1) = v65 + 2;
      if (v65 + 2 == v114)
      {
        goto LABEL_148;
      }

      v73 = 1;
      while (1)
      {
        v74 = *v72;
        v75 = (v74 - 58) > 0xFFFFFFF5 || (v74 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
        if (!v75 && (v74 - 46) >= 2 && v74 != 95)
        {
          break;
        }

        *(&v113 + 1) = ++v72;
        ++v73;
        if (v72 == v114)
        {
          goto LABEL_148;
        }
      }

      if (v74 != 93)
      {
LABEL_148:
      }

      else
      {

        v76 = sub_2685B4E1C(v71, v73);
        if (v77)
        {
          v78 = v77;
          if (v72 != i && *v72 == 93)
          {
            v97 = a1;
            v79 = v76;
            v80 = v72 + 1;
            for (*(&v113 + 1) = v72 + 1; v80 != i; *(&v113 + 1) = v80)
            {
              v83 = *v80;
              if (v83 > 0x23)
              {
                break;
              }

              if (((1 << v83) & 0x100002600) != 0)
              {
                ++v80;
              }

              else
              {
                if (v83 != 35)
                {
                  break;
                }

                *(&v113 + 1) = ++v80;
                while (v80 != i)
                {
                  v85 = *v80++;
                  v84 = v85;
                  if (v85 == 10 || v84 == 13)
                  {
                    goto LABEL_154;
                  }
                }

                v80 = i;
              }

LABEL_154:
              ;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for AnyMessageStorage();
              swift_allocObject();
              v64 = sub_26866D2A0(v64);
            }

            sub_26866ADE4(v79, v78, &v111);
            if (v5)
            {
LABEL_173:
              sub_268643E5C(&v111);

              goto LABEL_139;
            }

LABEL_143:
            v102 = xmmword_26868A5E0;
            *&v103 = v64;
            sub_2685BA80C(0, 0xC000000000000000);

            swift_dynamicCast();
            sub_268689BA4();
            sub_268689B84();
            sub_2685B593C(0, 0xC000000000000000);

LABEL_145:
            sub_268643E08(v6);
            sub_268643DAC(&v111, v6);
            goto LABEL_146;
          }
        }
      }

      sub_2685C1CBC();
      swift_allocError();
      *v82 = 0;
      swift_willThrow();
    }

LABEL_138:
    sub_268643E5C(&v111);
LABEL_139:
    sub_2685B593C(0, 0xC000000000000000);

    return;
  }

  if (v18 == 123)
  {
    v59 = 125;
    goto LABEL_94;
  }

  if (v18 != 91)
  {
LABEL_91:
    sub_2685C1CBC();
    swift_allocError();
    *v58 = 0;
    swift_willThrow();
    return;
  }

  v97 = a1;
  v19 = v98;
  v94 = v98 + 64;
  v95 = v98 + 16;
  v92 = (Description + 16);
  v93 = (Description + 8);
  v91 = xmmword_26868A5E0;
  for (j = 1; ; j = 0)
  {
    v21 = *(v6 + 40);
    v22 = *(v6 + 48);
    if (v21 != v22 && *v21 == 93)
    {
      *(v6 + 40) = v21 + 1;
      sub_2685C01A0();
      return;
    }

    if ((j & 1) == 0)
    {
      sub_2685C01A0();
      v23 = *(v6 + 40);
      if (v23 == v22 || *v23 != 44)
      {
        goto LABEL_91;
      }

      *(v6 + 40) = v23 + 1;
      sub_2685C01A0();
      v21 = *(v6 + 40);
    }

    if (v21 == v22)
    {
      goto LABEL_91;
    }

    v26 = *v21;
    v24 = v21 + 1;
    v25 = v26;
LABEL_18:
    while (1)
    {
      *(v6 + 40) = v24;
      if (v24 == v22)
      {
        break;
      }

      v27 = *v24;
      if (v27 > 0x23)
      {
        break;
      }

      if (((1 << v27) & 0x100002600) != 0)
      {
        ++v24;
      }

      else
      {
        if (v27 != 35)
        {
          break;
        }

        *(v6 + 40) = ++v24;
        while (v24 != v22)
        {
          v29 = *v24++;
          v28 = v29;
          if (v29 == 10 || v28 == 13)
          {
            goto LABEL_18;
          }
        }

        v24 = v22;
      }
    }

    if (v25 == 60)
    {
      v30 = 62;
    }

    else
    {
      if (v25 != 123)
      {
        goto LABEL_91;
      }

      v30 = 125;
    }

    sub_268643DAC(v6, v110);
    *&v106 = 0;
    WORD4(v106) = 256;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    sub_268643DAC(v110, &v102);
    WORD4(v106) = v30;
    v31 = swift_conformsToProtocol2();
    v32 = v119;
    if (!v31)
    {
      goto LABEL_98;
    }

    (*(v31 + 8))(&v100, a2, v31);
    sub_268643E08(v110);
    sub_2685B2FBC(v107, *(&v107 + 1), v108, *(&v108 + 1));
    v107 = v100;
    v108 = v101;
    *&v109 = a2;
    *(&v109 + 1) = v19;
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v100;
    v117 = v101;
    v118 = v109;
    if (a2 != &type metadata for Google_Protobuf_Any)
    {
      break;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v33 = qword_28029B270;
    v34 = *(&v113 + 1);
    for (k = v114; v34 != v114; *(&v113 + 1) = v34)
    {
      v36 = *v34;
      if (v36 > 0x23)
      {
        break;
      }

      if (((1 << v36) & 0x100002600) == 0)
      {
        if (v36 == 35)
        {
          *(&v113 + 1) = ++v34;
          while (v34 != v114)
          {
            v38 = *v34++;
            v37 = v38;
            if (v38 == 10 || v37 == 13)
            {
              goto LABEL_41;
            }
          }

          v34 = v114;
          *(&v113 + 1) = v114;
        }

        break;
      }

      ++v34;
LABEL_41:
      ;
    }

    if (v34 == v114 || *v34 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        v50 = swift_allocObject();
        v96 = v5;
        *(v50 + 16) = 0;
        *(v50 + 24) = 0xE000000000000000;
        *(v50 + 32) = v91;
        *(v50 + 72) = 0;
        swift_beginAccess();
        v51 = *(v33 + 16);
        v89 = *(v33 + 24);
        v90 = v51;
        swift_beginAccess();
        *(v50 + 16) = v90;
        *(v50 + 24) = v89;
        swift_beginAccess();
        sub_268643E8C(v33 + 32, &v102);
        swift_beginAccess();

        v19 = v98;
        sub_268643EE8(&v102, v50 + 32);
        swift_endAccess();
        v5 = v96;

        v33 = v50;
      }

      sub_2686540A4(v33, &v111);
      if (v5)
      {
        goto LABEL_138;
      }

      v96 = 0;
    }

    else
    {
      v96 = v5;
      v39 = qword_28029B270;
      v40 = v34 + 1;
      *(&v113 + 1) = v34 + 1;
      if (v34 + 1 == v114)
      {
        goto LABEL_136;
      }

      if ((*v40 & 0xDFu) - 91 < 0xFFFFFFE6)
      {
        goto LABEL_136;
      }

      v41 = v34 + 2;
      *(&v113 + 1) = v34 + 2;
      if (v34 + 2 == v114)
      {
        goto LABEL_136;
      }

      v42 = 1;
      while (1)
      {
        v43 = *v41;
        v44 = (v43 - 58) > 0xFFFFFFF5 || (v43 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
        if (!v44 && (v43 - 46) >= 2 && v43 != 95)
        {
          break;
        }

        *(&v113 + 1) = ++v41;
        ++v42;
        if (v41 == v114)
        {
          goto LABEL_136;
        }
      }

      if (v43 != 93)
      {
LABEL_136:

LABEL_137:
        sub_2685C1CBC();
        swift_allocError();
        *v81 = 0;
        swift_willThrow();
        goto LABEL_138;
      }

      v45 = v42;
      v33 = v39;
      v46 = sub_2685B4E1C(v40, v45);
      if (!v47)
      {
        goto LABEL_137;
      }

      v48 = v47;
      if (v41 == k || *v41 != 93)
      {

        goto LABEL_137;
      }

      v49 = v41 + 1;
LABEL_76:
      while (1)
      {
        *(&v113 + 1) = v49;
        if (v49 == k)
        {
          break;
        }

        v52 = *v49;
        if (v52 > 0x23)
        {
          break;
        }

        if (((1 << v52) & 0x100002600) != 0)
        {
          ++v49;
        }

        else
        {
          if (v52 != 35)
          {
            break;
          }

          *(&v113 + 1) = ++v49;
          while (v49 != k)
          {
            v54 = *v49++;
            v53 = v54;
            if (v54 == 10 || v53 == 13)
            {
              goto LABEL_76;
            }
          }

          v49 = k;
        }
      }

      v90 = v46;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v19 = v98;
        v55 = v96;
      }

      else
      {
        type metadata accessor for AnyMessageStorage();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        *(v56 + 24) = 0xE000000000000000;
        v89 = v48;
        *(v56 + 32) = v91;
        *(v56 + 72) = 0;
        swift_beginAccess();
        v57 = *(v33 + 16);
        v87 = *(v33 + 24);
        v88 = v57;
        swift_beginAccess();
        *(v56 + 16) = v88;
        *(v56 + 24) = v87;
        swift_beginAccess();
        sub_268643E8C(v33 + 32, &v102);
        swift_beginAccess();

        v48 = v89;
        sub_268643EE8(&v102, v56 + 32);
        swift_endAccess();

        v55 = v96;
        v33 = v56;
        v19 = v98;
      }

      sub_26866ADE4(v90, v48, &v111);
      if (v55)
      {
        goto LABEL_173;
      }

      v96 = 0;
    }

    v102 = v91;
    *&v103 = v33;
    sub_2685BA80C(0, 0xC000000000000000);

    swift_dynamicCast();
    sub_268689BA4();
    sub_268689B84();
    sub_2685B593C(0, 0xC000000000000000);

    v5 = v96;
LABEL_74:
    sub_268643E08(v6);
    sub_268643DAC(&v111, v6);
    sub_268643E5C(&v111);
  }

  (*(v19 + 16))(a2, v19);
  (*(v19 + 64))(&v111, &type metadata for TextFormatDecoder, &off_28792DCE0, a2, v19);
  if (!v5)
  {
    (*v92)(v99, v32, a2);
    sub_268689BA4();
    sub_268689B84();
    (*v93)(v32, a2);
    goto LABEL_74;
  }

  (*v93)(v32, a2);
LABEL_146:
  v63 = &v111;
LABEL_147:
  sub_268643E5C(v63);
}

void (*sub_2686411E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v86 = a1;
  v94 = *(a5 + 8);
  v85 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v91 = v79 - v11;
  v101 = *(a4 + 8);
  v96 = a2;
  v13 = v12;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v89 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = v79 - v18;
  v19 = sub_268689C74();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v87 = v79 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v79 - v25;
  v27 = sub_268689C74();
  v100 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v92 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v93 = v15;
  v30 = *(v15 + 56);
  v103 = v79 - v31;
  v99 = v14;
  v30();
  v90 = v10;
  v34 = *(v10 + 56);
  v33 = v10 + 56;
  v32 = v34;
  v102 = v26;
  v34(v26, 1, 1, v13);
  v35 = *(v6 + 40);
  v36 = *(v6 + 48);
  if (v35 == v36)
  {
    goto LABEL_6;
  }

  v81 = v13;
  v95 = v27;
  v37 = *v35;
  *(v6 + 40) = v35 + 1;
  sub_2685C01A0();
  if (v37 == 60)
  {
    v80 = v33;
    v82 = v20;
    v83 = v19;
    v38 = 62;
  }

  else
  {
    v66 = v37 == 123;
    v27 = v95;
    if (!v66)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();
LABEL_7:
      v40 = v100;
LABEL_93:
      (*(v20 + 8))(v102, v19);
      return (*(v40 + 8))(v103, v27);
    }

    v80 = v33;
    v82 = v20;
    v83 = v19;
    v38 = 125;
  }

  v79[1] = v94 + 32;
  v84 = v101 + 32;
  v41 = *(v6 + 40);
  v42 = v97;
  v43 = v98;
  while (1)
  {
    do
    {
      if (v41 != v36)
      {
        v44 = *v41;
        if (v44 == v38)
        {
          *(v6 + 40) = v41 + 1;
          sub_2685C01A0();
          v40 = v100;
          v69 = v92;
          v27 = v95;
          (*(v100 + 16))(v92, v103, v95);
          v70 = v93;
          if ((*(v93 + 48))(v69, 1, v99) == 1)
          {
            (*(v40 + 8))(v69, v27);
            v20 = v82;
            v19 = v83;
          }

          else
          {
            v97 = v32;
            (*(v70 + 32))(v43, v69, v99);
            v20 = v82;
            v19 = v83;
            v71 = v87;
            (*(v82 + 16))(v87, v102, v83);
            v72 = v90;
            v73 = v81;
            if ((*(v90 + 48))(v71, 1, v81) != 1)
            {
              (*(v72 + 32))(v91, v71, v73);
              (*(v70 + 16))(v89, v98, v99);
              v75 = v88;
              (*(v72 + 16))(v88, v91, v73);
              v97(v75, 0, 1, v73);
              v76 = v99;
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              v97 = v42;
              sub_268689914();
              (*(v72 + 8))(v91, v73);
              (*(v70 + 8))(v98, v76);
              (*(v20 + 8))(v102, v19);
              return (*(v40 + 8))(v103, v27);
            }

            (*(v70 + 8))(v98, v99);
            (*(v20 + 8))(v71, v19);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v74 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v44 <= 0x23; v44 = *v41)
        {
          if (((1 << v44) & 0x100002600) != 0)
          {
            ++v41;
          }

          else
          {
            if (v44 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v41;
            while (v41 != v36)
            {
              v46 = *v41++;
              v45 = v46;
              if (v46 == 10 || v45 == 13)
              {
                goto LABEL_16;
              }
            }

            v41 = v36;
          }

LABEL_16:
          *(v6 + 40) = v41;
          if (v41 == v36)
          {
            break;
          }
        }
      }
    }

    while (v41 == v36);
    v47 = *v41;
    if (v47 == 91 || ((v47 - 58) <= 0xFFFFFFF6 ? (v48 = (v47 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v48 = 1), v49 = v41, !v48))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v77 = 0;
      goto LABEL_97;
    }

    do
    {
      v50 = *v49;
      if ((v50 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v50 != 95 && (v50 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v49;
    }

    while (v49 != v36);
    v52 = v49;
    if (v49 != v36)
    {
      do
      {
        v59 = *v52;
        if (v59 > 0x23)
        {
          break;
        }

        if (((1 << v59) & 0x100002600) != 0)
        {
          ++v52;
        }

        else
        {
          if (v59 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v52;
          while (v52 != v36)
          {
            v61 = *v52++;
            v60 = v61;
            if (v61 == 10 || v60 == 13)
            {
              goto LABEL_54;
            }
          }

          v52 = v36;
        }

LABEL_54:
        *(v6 + 40) = v52;
      }

      while (v52 != v36);
    }

    result = sub_2685B4E1C(v41, v49 - v41);
    if (!v54)
    {
      break;
    }

    v55 = result;
    v56 = v54;
    if (result == 7955819 && v54 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v55 == 49 && v56 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v57 = v42;
      (*(v101 + 32))(v103, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
    }

    else
    {
      if (v55 == 0x65756C6176 && v56 == 0xE500000000000000 || ((v65 = sub_268689E14(), v55 == 50) ? (v66 = v56 == 0xE100000000000000) : (v66 = 0), !v66 ? (v67 = 0) : (v67 = 1), (v65 & 1) != 0 || (v67 & 1) != 0))
      {
      }

      else
      {
        v68 = sub_268689E14();

        if ((v68 & 1) == 0)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v78 = 7;
LABEL_97:
          swift_willThrow();
LABEL_98:
          v20 = v82;
          v19 = v83;
          v27 = v95;
          goto LABEL_7;
        }
      }

      v57 = v42;
      (*(v94 + 32))(v102, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
    }

    v42 = v57;
    if (v57)
    {
      goto LABEL_98;
    }

    v41 = *(v6 + 40);
    v36 = *(v6 + 48);
    if (v41 != v36)
    {
      v58 = *v41;
      if (v58 == 59 || v58 == 44)
      {
LABEL_74:
        ++v41;
LABEL_64:
        while (1)
        {
          *(v6 + 40) = v41;
          if (v41 == v36)
          {
            break;
          }

          v62 = *v41;
          if (v62 > 0x23)
          {
            break;
          }

          if (((1 << v62) & 0x100002600) != 0)
          {
            goto LABEL_74;
          }

          if (v62 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v41;
          while (v41 != v36)
          {
            v64 = *v41++;
            v63 = v64;
            if (v64 == 10 || v63 == 13)
            {
              goto LABEL_64;
            }
          }

          v41 = v36;
        }
      }
    }
  }

  __break(1u);
  return result;
}

void (*sub_268641C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v83 = a5;
  v85 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v90 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v10 + 8);
  v95 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v87 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v77 - v16;
  v17 = sub_268689C74();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - v23;
  v25 = sub_268689C74();
  v97 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v92 = v13;
  v28 = *(v13 + 56);
  v100 = &v77 - v29;
  v28();
  v88 = v8;
  v89 = a3;
  v32 = *(v8 + 56);
  v31 = v8 + 56;
  v30 = v32;
  v99 = v24;
  v32(v24, 1, 1, a3);
  v33 = *(v6 + 40);
  v34 = *(v6 + 48);
  if (v33 == v34)
  {
    goto LABEL_6;
  }

  v94 = v25;
  v35 = *v33;
  *(v6 + 40) = v33 + 1;
  sub_2685C01A0();
  if (v35 == 60)
  {
    v79 = v30;
    v80 = v18;
    v81 = v17;
    v36 = 62;
  }

  else
  {
    v62 = v35 == 123;
    v25 = v94;
    if (!v62)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      goto LABEL_7;
    }

    v79 = v30;
    v80 = v18;
    v81 = v17;
    v36 = 125;
  }

  v82 = v98 + 32;
  v39 = *(v6 + 40);
  v40 = v96;
  while (1)
  {
    do
    {
      if (v39 != v34)
      {
        v41 = *v39;
        if (v41 == v36)
        {
          *(v6 + 40) = v39 + 1;
          sub_2685C01A0();
          v38 = v97;
          v65 = v91;
          v25 = v94;
          (*(v97 + 16))(v91, v100, v94);
          v66 = v92;
          if ((*(v92 + 48))(v65, 1, AssociatedTypeWitness) == 1)
          {
            (*(v38 + 8))(v65, v25);
            v18 = v80;
            v17 = v81;
          }

          else
          {
            v83 = v31;
            v96 = v40;
            (*(v66 + 32))(v93, v65, AssociatedTypeWitness);
            v18 = v80;
            v17 = v81;
            v67 = v86;
            (*(v80 + 16))(v86, v99, v81);
            v68 = AssociatedTypeWitness;
            v69 = v66;
            v70 = v88;
            v71 = v89;
            if ((*(v88 + 48))(v67, 1, v89) != 1)
            {
              (*(v70 + 32))(v90, v67, v71);
              v73 = *(v69 + 16);
              v78 = v68;
              v73(v87, v93, v68);
              v74 = v84;
              (*(v70 + 16))(v84, v90, v71);
              v79(v74, 0, 1, v71);
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              sub_268689914();
              (*(v70 + 8))(v90, v71);
              (*(v69 + 8))(v93, v78);
              (*(v18 + 8))(v99, v17);
              return (*(v38 + 8))(v100, v25);
            }

            (*(v69 + 8))(v93, v68);
            (*(v18 + 8))(v67, v17);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v72 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v41 <= 0x23; v41 = *v39)
        {
          if (((1 << v41) & 0x100002600) != 0)
          {
            ++v39;
          }

          else
          {
            if (v41 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v39;
            while (v39 != v34)
            {
              v43 = *v39++;
              v42 = v43;
              if (v43 == 10 || v42 == 13)
              {
                goto LABEL_16;
              }
            }

            v39 = v34;
          }

LABEL_16:
          *(v6 + 40) = v39;
          if (v39 == v34)
          {
            break;
          }
        }
      }
    }

    while (v39 == v34);
    v44 = *v39;
    if (v44 == 91 || ((v44 - 58) <= 0xFFFFFFF6 ? (v45 = (v44 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v45 = 1), v46 = v39, !v45))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v75 = 0;
      goto LABEL_96;
    }

    do
    {
      v47 = *v46;
      if ((v47 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v47 != 95 && (v47 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v46;
    }

    while (v46 != v34);
    v49 = v46;
    if (v46 != v34)
    {
      do
      {
        v55 = *v49;
        if (v55 > 0x23)
        {
          break;
        }

        if (((1 << v55) & 0x100002600) != 0)
        {
          ++v49;
        }

        else
        {
          if (v55 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v49;
          while (v49 != v34)
          {
            v57 = *v49++;
            v56 = v57;
            if (v57 == 10 || v56 == 13)
            {
              goto LABEL_53;
            }
          }

          v49 = v34;
        }

LABEL_53:
        *(v6 + 40) = v49;
      }

      while (v49 != v34);
    }

    result = sub_2685B4E1C(v39, v46 - v39);
    if (!v51)
    {
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = v51;
    if (result == 7955819 && v51 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v52 == 49 && v53 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      (*(v98 + 32))(v100, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
      if (v40)
      {
        goto LABEL_97;
      }

      goto LABEL_48;
    }

    if (v52 == 0x65756C6176 && v53 == 0xE500000000000000 || ((v61 = sub_268689E14(), v52 == 50) ? (v62 = v53 == 0xE100000000000000) : (v62 = 0), !v62 ? (v63 = 0) : (v63 = 1), (v61 & 1) != 0 || (v63 & 1) != 0))
    {

      goto LABEL_86;
    }

    v64 = sub_268689E14();

    if ((v64 & 1) == 0)
    {
      break;
    }

LABEL_86:
    sub_26863F280(v99, v89, v83);
    if (v40)
    {
      goto LABEL_97;
    }

LABEL_48:
    v39 = *(v6 + 40);
    v34 = *(v6 + 48);
    if (v39 != v34)
    {
      v54 = *v39;
      if (v54 == 59 || v54 == 44)
      {
LABEL_73:
        ++v39;
LABEL_63:
        while (1)
        {
          *(v6 + 40) = v39;
          if (v39 == v34)
          {
            break;
          }

          v58 = *v39;
          if (v58 > 0x23)
          {
            break;
          }

          if (((1 << v58) & 0x100002600) != 0)
          {
            goto LABEL_73;
          }

          if (v58 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v39;
          while (v39 != v34)
          {
            v60 = *v39++;
            v59 = v60;
            if (v60 == 10 || v59 == 13)
            {
              goto LABEL_63;
            }
          }

          v39 = v34;
        }
      }
    }
  }

  sub_2685C1CBC();
  swift_allocError();
  *v76 = 7;
LABEL_96:
  swift_willThrow();
LABEL_97:
  v18 = v80;
  v17 = v81;
  v25 = v94;
LABEL_7:
  v38 = v97;
LABEL_93:
  (*(v18 + 8))(v99, v17);
  return (*(v38 + 8))(v100, v25);
}

void sub_26864272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(v6 + 40);
  v15 = *(v6 + 48);
  if (v14 != v15 && *v14 == 58)
  {
    *(v6 + 40) = v14 + 1;
    sub_2685C01A0();
    v14 = *(v6 + 40);
  }

  if (v14 == v15 || *v14 != 91)
  {
    a6(a1, a2, a3, a4, a5);
  }

  else
  {
    v16 = v7;
    *(v6 + 40) = v14 + 1;
    sub_2685C01A0();
    v17 = *(v6 + 40);
    if (v17 == *(v6 + 48) || *v17 != 93)
    {
      while (1)
      {
        a6(a1, a2, a3, a4, a5);
        if (v16)
        {
          break;
        }

        v16 = 0;
        v17 = *(v6 + 40);
        v18 = *(v6 + 48);
        if (v17 != v18 && *v17 == 93)
        {
          goto LABEL_8;
        }

        sub_2685C01A0();
        v19 = *(v6 + 40);
        if (v19 == v18 || *v19 != 44)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v20 = 0;
          swift_willThrow();
          return;
        }

        *(v6 + 40) = v19 + 1;
        sub_2685C01A0();
      }
    }

    else
    {
LABEL_8:
      *(v6 + 40) = v17 + 1;
      sub_2685C01A0();
    }
  }
}

void (*sub_2686428B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = v5;
  v83 = a5;
  v85 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v90 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v10 + 8);
  v95 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v87 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v77 - v16;
  v17 = sub_268689C74();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - v23;
  v25 = sub_268689C74();
  v97 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v91 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v92 = v13;
  v28 = *(v13 + 56);
  v100 = &v77 - v29;
  v28();
  v88 = v8;
  v89 = a3;
  v32 = *(v8 + 56);
  v31 = v8 + 56;
  v30 = v32;
  v99 = v24;
  v32(v24, 1, 1, a3);
  v33 = *(v6 + 40);
  v34 = *(v6 + 48);
  if (v33 == v34)
  {
    goto LABEL_6;
  }

  v94 = v25;
  v35 = *v33;
  *(v6 + 40) = v33 + 1;
  sub_2685C01A0();
  if (v35 == 60)
  {
    v79 = v30;
    v80 = v18;
    v81 = v17;
    v36 = 62;
  }

  else
  {
    v62 = v35 == 123;
    v25 = v94;
    if (!v62)
    {
LABEL_6:
      sub_2685C1CBC();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      goto LABEL_7;
    }

    v79 = v30;
    v80 = v18;
    v81 = v17;
    v36 = 125;
  }

  v82 = v98 + 32;
  v39 = *(v6 + 40);
  v40 = v96;
  while (1)
  {
    do
    {
      if (v39 != v34)
      {
        v41 = *v39;
        if (v41 == v36)
        {
          *(v6 + 40) = v39 + 1;
          sub_2685C01A0();
          v38 = v97;
          v65 = v91;
          v25 = v94;
          (*(v97 + 16))(v91, v100, v94);
          v66 = v92;
          if ((*(v92 + 48))(v65, 1, AssociatedTypeWitness) == 1)
          {
            (*(v38 + 8))(v65, v25);
            v18 = v80;
            v17 = v81;
          }

          else
          {
            v83 = v31;
            v96 = v40;
            (*(v66 + 32))(v93, v65, AssociatedTypeWitness);
            v18 = v80;
            v17 = v81;
            v67 = v86;
            (*(v80 + 16))(v86, v99, v81);
            v68 = AssociatedTypeWitness;
            v69 = v66;
            v70 = v88;
            v71 = v89;
            if ((*(v88 + 48))(v67, 1, v89) != 1)
            {
              (*(v70 + 32))(v90, v67, v71);
              v73 = *(v69 + 16);
              v78 = v68;
              v73(v87, v93, v68);
              v74 = v84;
              (*(v70 + 16))(v84, v90, v71);
              v79(v74, 0, 1, v71);
              swift_getAssociatedConformanceWitness();
              sub_2686898F4();
              sub_268689914();
              (*(v70 + 8))(v90, v71);
              (*(v69 + 8))(v93, v78);
              (*(v18 + 8))(v99, v17);
              return (*(v38 + 8))(v100, v25);
            }

            (*(v69 + 8))(v93, v68);
            (*(v18 + 8))(v67, v17);
          }

          sub_2685C1CBC();
          swift_allocError();
          *v72 = 0;
          swift_willThrow();
          goto LABEL_93;
        }

        for (; v41 <= 0x23; v41 = *v39)
        {
          if (((1 << v41) & 0x100002600) != 0)
          {
            ++v39;
          }

          else
          {
            if (v41 != 35)
            {
              break;
            }

            *(v6 + 40) = ++v39;
            while (v39 != v34)
            {
              v43 = *v39++;
              v42 = v43;
              if (v43 == 10 || v42 == 13)
              {
                goto LABEL_16;
              }
            }

            v39 = v34;
          }

LABEL_16:
          *(v6 + 40) = v39;
          if (v39 == v34)
          {
            break;
          }
        }
      }
    }

    while (v39 == v34);
    v44 = *v39;
    if (v44 == 91 || ((v44 - 58) <= 0xFFFFFFF6 ? (v45 = (v44 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6) : (v45 = 1), v46 = v39, !v45))
    {
      sub_2685C1CBC();
      swift_allocError();
      *v75 = 0;
      goto LABEL_96;
    }

    do
    {
      v47 = *v46;
      if ((v47 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v47 != 95 && (v47 - 48) > 9)
      {
        break;
      }

      *(v6 + 40) = ++v46;
    }

    while (v46 != v34);
    v49 = v46;
    if (v46 != v34)
    {
      do
      {
        v55 = *v49;
        if (v55 > 0x23)
        {
          break;
        }

        if (((1 << v55) & 0x100002600) != 0)
        {
          ++v49;
        }

        else
        {
          if (v55 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v49;
          while (v49 != v34)
          {
            v57 = *v49++;
            v56 = v57;
            if (v57 == 10 || v56 == 13)
            {
              goto LABEL_53;
            }
          }

          v49 = v34;
        }

LABEL_53:
        *(v6 + 40) = v49;
      }

      while (v49 != v34);
    }

    result = sub_2685B4E1C(v39, v46 - v39);
    if (!v51)
    {
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = v51;
    if (result == 7955819 && v51 == 0xE300000000000000 || (sub_268689E14() & 1) != 0 || v52 == 49 && v53 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      (*(v98 + 32))(v100, v6, &type metadata for TextFormatDecoder, &off_28792DCE0);
      if (v40)
      {
        goto LABEL_97;
      }

      goto LABEL_48;
    }

    if (v52 == 0x65756C6176 && v53 == 0xE500000000000000 || ((v61 = sub_268689E14(), v52 == 50) ? (v62 = v53 == 0xE100000000000000) : (v62 = 0), !v62 ? (v63 = 0) : (v63 = 1), (v61 & 1) != 0 || (v63 & 1) != 0))
    {

      goto LABEL_86;
    }

    v64 = sub_268689E14();

    if ((v64 & 1) == 0)
    {
      break;
    }

LABEL_86:
    sub_26863F948(v99, v89, v83);
    if (v40)
    {
      goto LABEL_97;
    }

LABEL_48:
    v39 = *(v6 + 40);
    v34 = *(v6 + 48);
    if (v39 != v34)
    {
      v54 = *v39;
      if (v54 == 59 || v54 == 44)
      {
LABEL_73:
        ++v39;
LABEL_63:
        while (1)
        {
          *(v6 + 40) = v39;
          if (v39 == v34)
          {
            break;
          }

          v58 = *v39;
          if (v58 > 0x23)
          {
            break;
          }

          if (((1 << v58) & 0x100002600) != 0)
          {
            goto LABEL_73;
          }

          if (v58 != 35)
          {
            break;
          }

          *(v6 + 40) = ++v39;
          while (v39 != v34)
          {
            v60 = *v39++;
            v59 = v60;
            if (v60 == 10 || v59 == 13)
            {
              goto LABEL_63;
            }
          }

          v39 = v34;
        }
      }
    }
  }

  sub_2685C1CBC();
  swift_allocError();
  *v76 = 7;
LABEL_96:
  swift_willThrow();
LABEL_97:
  v18 = v80;
  v17 = v81;
  v25 = v94;
LABEL_7:
  v38 = v97;
LABEL_93:
  (*(v18 + 8))(v99, v17);
  return (*(v38 + 8))(v100, v25);
}

void sub_268643344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 40);
  v13 = *(v5 + 48);
  if (v12 != v13 && *v12 == 58)
  {
    *(v5 + 40) = v12 + 1;
    sub_2685C01A0();
    v12 = *(v5 + 40);
  }

  if (v12 == v13 || *v12 != 91)
  {
    sub_2686428B4(a1, a2, a3, a4, a5);
  }

  else
  {
    v14 = v6;
    *(v5 + 40) = v12 + 1;
    sub_2685C01A0();
    v15 = *(v5 + 40);
    if (v15 == *(v5 + 48) || *v15 != 93)
    {
      while (1)
      {
        sub_2686428B4(a1, a2, a3, a4, a5);
        if (v14)
        {
          break;
        }

        v14 = 0;
        v15 = *(v5 + 40);
        v16 = *(v5 + 48);
        if (v15 != v16 && *v15 == 93)
        {
          goto LABEL_8;
        }

        sub_2685C01A0();
        v17 = *(v5 + 40);
        if (v17 == v16 || *v17 != 44)
        {
          sub_2685C1CBC();
          swift_allocError();
          *v18 = 0;
          swift_willThrow();
          return;
        }

        *(v5 + 40) = v17 + 1;
        sub_2685C01A0();
      }
    }

    else
    {
LABEL_8:
      *(v5 + 40) = v15 + 1;
      sub_2685C01A0();
    }
  }
}

uint64_t sub_2686434CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = v4[3];
  if (!v7)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    return sub_2685B2E64(&v33, &qword_28028D400, qword_268690748);
  }

  v29 = a1;
  v11 = v6[4];
  v12 = __swift_project_boxed_opaque_existential_1(v6, v7);
  v39 = v5;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  (*(v11 + 8))(&v33, a2, a3, a4, v7, v11);
  (*(v13 + 8))(v15, v7);
  v16 = v39;
  if (!*(&v34 + 1))
  {
    return sub_2685B2E64(&v33, &qword_28028D400, qword_268690748);
  }

  sub_2685B17CC(&v33, v36);
  v17 = *v29;
  if (*(*v29 + 16) && (v18 = sub_2685B351C(a4), (v19 & 1) != 0))
  {
    sub_2685B1724(*(v17 + 56) + 40 * v18, &v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  sub_2685C2780(&v33, v31);
  v21 = v32;
  result = sub_2685B2E64(v31, &qword_28028C068, &unk_26868A6A0);
  if (!v21)
  {
    v24 = v37;
    v25 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(v25 + 32))(v31, v6, &type metadata for TextFormatDecoder, &off_28792DCE0, v24, v25);
    if (!v16)
    {
      sub_268643CEC(v31, &v33);
      goto LABEL_15;
    }

LABEL_18:
    sub_2685B2E64(&v33, &qword_28028C068, &unk_26868A6A0);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v22 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v23 = v35;
    __swift_mutable_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    (*(v23 + 40))(v6, &type metadata for TextFormatDecoder, &off_28792DCE0, v22, v23);
    if (!v16)
    {
LABEL_15:
      sub_2685C2780(&v33, v31);
      v26 = v32;
      sub_2685B2E64(v31, &qword_28028C068, &unk_26868A6A0);
      if (v26)
      {
        sub_2685C2780(&v33, v31);
        sub_2685C2780(v31, v30);
        sub_2685C2E1C(v30, a4);
        sub_2685B2E64(v31, &qword_28028C068, &unk_26868A6A0);
      }

      else
      {
        sub_2685C1CBC();
        swift_allocError();
        *v27 = 10;
        swift_willThrow();
      }

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_268643870()
{
  sub_2685C1CBC();
  swift_allocError();
  *v0 = 9;
  return swift_willThrow();
}

uint64_t sub_2686438C0()
{
  result = sub_26863C318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_268643AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268643B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268643CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26864404C(float a1)
{
  v2 = a1;
  MEMORY[0x26D61D8F0]();
  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x26D61D920](*&v3);
}

char *sub_2686440C0(int a1, uint64_t a2)
{
  v4 = a1;
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v5);
  if (a1 < 0)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 45;
    *v2 = v6;
    v4 = -v4;
  }

  sub_268663B88(v4);
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
    *v2 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 2) = v13 + 1;
  v10[v13 + 32] = 10;
  *v2 = v10;
  return result;
}

uint64_t sub_26864460C(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = (8 * a2) | 5;
      }

      else
      {
        v8 = (8 * (a2 & 0x1FFFFFFF)) | 5;
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      *(v5 + 1) = v7;
      v5 += 5;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFloatField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 8))(fieldNumber, v6, v5, v10);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644734(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = (8 * a2) | 1;
      }

      else
      {
        v8 = (8 * (a2 & 0x1FFFFFFF)) | 1;
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      *(v5 + 1) = v7;
      v5 += 9;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedDoubleField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 16))(fieldNumber, v6, v5, v10);
    --v8;
  }

  while (!v4);
}

unint64_t sub_26864485C(unint64_t result, int a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    result = sub_2685B9970(v6, a2);
    --v4;
  }

  while (!v2);
  return result;
}

uint64_t sub_2686448A4(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 24))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 32))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

unint64_t sub_268644A40(unint64_t result, int a2)
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v6 = *v5++;
    result = sub_2686265F4(v6, a2);
    --v4;
  }

  while (!v2);
  return result;
}

uint64_t sub_268644A88(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 40))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(result + 16);
  v9 = (result + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    result = a5(v10, a2, a3, a4);
    --v8;
  }

  while (!v5);
  return result;
}

uint64_t sub_268644C04(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v5 = v9;
      v11 = v5 + 1;
      if (v7 < 0x80)
      {
        LOBYTE(v6) = v7;
      }

      else
      {
        do
        {
          *v11++ = v7 | 0x80;
          v6 = v7 >> 7;
          v12 = v7 >> 14;
          v7 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v11 = v6;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 48))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644D1C(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 8 * a2;
    v5 = *v2;
    v6 = (result + 32);
    if (((a2 >> 25) & 0xF) != 0)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    v8 = 1;
    if (v4 >= 0x80)
    {
      v8 = 2;
    }

    if (v4 < 0x200000)
    {
      v7 = 3;
    }

    if (v4 >= 0x4000)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = *v6++;
      v11 = (2 * v10) ^ (v10 >> 31);
      if (v11 >= 0x80)
      {
        if (v11 >> 14)
        {
          if (v11 >= 0x200000)
          {
            v12 = v11 >> 28 ? 5 : 4;
          }

          else
          {
            v12 = 3;
          }
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 1;
      }

      v13 = v12 + v9;
      v14 = __OFADD__(v5, v13);
      v5 += v13;
      if (v14)
      {
        break;
      }

      if (!--v3)
      {
        *v2 = v5;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268644DC8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      v11 = (2 * v7) ^ (v7 >> 63);
      *v5 = v9;
      v12 = v5 + 1;
      if (v11 < 0x80)
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        do
        {
          *v12++ = v11 | 0x80;
          v6 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v12 = v6;
      v5 = v12 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 56))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268644EE8(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 8 * a2;
    v5 = *v2;
    v6 = (result + 32);
    v7 = 4;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v7 = 5;
    }

    v8 = 1;
    if (v4 >= 0x80)
    {
      v8 = 2;
    }

    if (v4 < 0x200000)
    {
      v7 = 3;
    }

    if (v4 >= 0x4000)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    while (1)
    {
      v10 = *v6++;
      v11 = (2 * v10) ^ (v10 >> 63);
      if (v11 < 0x80)
      {
        v12 = 1;
        goto LABEL_26;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = 10;
        goto LABEL_26;
      }

      if (v11 >> 35)
      {
        if (v11 >> 49)
        {
          v11 >>= 28;
          v12 = 8;
LABEL_24:
          if (!(v11 >> 28))
          {
            goto LABEL_26;
          }

LABEL_25:
          ++v12;
          goto LABEL_26;
        }

        v12 = 6;
        if (v11 >> 42)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v11 >= 0x200000)
        {
          v12 = 4;
          goto LABEL_24;
        }

        v12 = 2;
        if (v11 >= 0x4000)
        {
          goto LABEL_25;
        }
      }

LABEL_26:
      v13 = __OFADD__(v5, v12 + v9);
      v5 += v12 + v9;
      if (v13)
      {
        __break(1u);
        return result;
      }

      if (!--v3)
      {
        *v2 = v5;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_268644FC8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v9) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      v11 = (2 * v7) ^ (v7 >> 63);
      *v5 = v9;
      v12 = v5 + 1;
      if (v11 < 0x80)
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        do
        {
          *v12++ = v11 | 0x80;
          v6 = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v12 = v6;
      v5 = v12 + 1;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 64))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 72))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 80))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_2686451B0(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 8;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 9;
    }

    v7 = 5;
    if (v5 >= 0x80)
    {
      v7 = 6;
    }

    if (v5 < 0x200000)
    {
      v6 = 7;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 88))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268645280(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 12;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 13;
    }

    v7 = 9;
    if (v5 >= 0x80)
    {
      v7 = 10;
    }

    if (v5 < 0x200000)
    {
      v6 = 11;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 32);
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 96))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

uint64_t sub_268645368(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = 8 * a2;
    v6 = 5;
    if (((a2 >> 25) & 0xF) != 0)
    {
      v6 = 6;
    }

    v7 = 2;
    if (v5 >= 0x80)
    {
      v7 = 3;
    }

    if (v5 < 0x200000)
    {
      v6 = 4;
    }

    if (v5 >= 0x4000)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    while (1)
    {
      v9 = v4 + v8;
      if (__OFADD__(v4, v8))
      {
        break;
      }

      v4 += v8;
      if (!--v3)
      {
        *v2 = v9;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2686453C8(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    do
    {
      v7 = *(result + 32 + v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v6) = 8 * a2;
      }

      else
      {
        v8 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v8 | 0x80;
          v6 = v8 >> 7;
          v9 = v8 >> 14;
          v8 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v6;
      v5[1] = v7;
      v5 += 2;
    }

    while (v4 != v3);
    *v2 = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBoolField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v6 = v2;
  v8 = *(value._rawValue + 2);
  v9 = value._rawValue + 32;
  do
  {
    if (!v8)
    {
      break;
    }

    v10 = *v9++;
    (*(v5 + 104))(v10, fieldNumber, v6, v5);
    --v8;
  }

  while (!v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedStringField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v4;
  v13 = v2;
  v6 = *(value._rawValue + 2);
  if (v6)
  {
    v7 = v3;
    v9 = *(v3 + 112);
    for (i = (value._rawValue + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;

      v9(v11, v12, fieldNumber, v13, v7);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return;
      }
    }
  }
}

uint64_t sub_268645574(uint64_t result, unsigned int a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = 8 * a2;
  v5 = *v2;
  v6 = 4;
  if (((a2 >> 25) & 0xF) != 0)
  {
    v6 = 5;
  }

  v7 = 1;
  if (v4 >= 0x80)
  {
    v7 = 2;
  }

  if (v4 < 0x200000)
  {
    v6 = 3;
  }

  if (v4 >= 0x4000)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  for (i = (result + 40); ; i += 2)
  {
    v10 = *(i - 1);
    v11 = *i;
    v12 = *i >> 62;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v10 = 0;
        v13 = 1;
        goto LABEL_38;
      }

      v16 = v10 + 16;
      v14 = *(v10 + 16);
      v15 = *(v16 + 8);
      v17 = __OFSUB__(v15, v14);
      v10 = v15 - v14;
      if (v17)
      {
        goto LABEL_45;
      }

      if (v10 < 0x80)
      {
LABEL_23:
        v13 = 1;
        goto LABEL_38;
      }
    }

    else if (v12)
    {
      v17 = __OFSUB__(HIDWORD(v10), v10);
      LODWORD(v10) = HIDWORD(v10) - v10;
      if (v17)
      {
        goto LABEL_46;
      }

      v10 = v10;
      if (v10 < 0x80)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = BYTE6(v11);
      if (BYTE6(v11) < 0x80uLL)
      {
        goto LABEL_23;
      }
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v13 = 10;
      goto LABEL_38;
    }

    if (v10 >> 35)
    {
      if (!(v10 >> 49))
      {
        if (!(v10 >> 42))
        {
          v13 = 6;
          goto LABEL_38;
        }

        v13 = 6;
LABEL_37:
        ++v13;
        goto LABEL_38;
      }

      v18 = v10 >> 28;
      v13 = 8;
    }

    else
    {
      if (v10 < 0x200000)
      {
        v13 = 2;
        if (v10 >= 0x4000)
        {
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      v13 = 4;
      v18 = v10;
    }

    if (v18 >> 28)
    {
      goto LABEL_37;
    }

LABEL_38:
    v19 = v13 + v8;
    v17 = __OFADD__(v19, v10);
    v20 = v19 + v10;
    if (v17)
    {
      break;
    }

    v17 = __OFADD__(v5, v20);
    v5 += v20;
    if (v17)
    {
      goto LABEL_44;
    }

    if (!--v3)
    {
      *v2 = v5;
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2686456C8(uint64_t result, int a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v42 = *(result + 16);
  if (v42)
  {
    v3 = 0;
    v4 = *v2;
    v5 = 8 * (a2 & 0x1FFFFFFF);
    v6 = v5 | 2;
    v7 = result + 32;
    v8 = *(result + 16);
    v44 = v5 | 2;
    v45 = v5;
    v43 = result + 32;
    while (1)
    {
      v11 = (v7 + 16 * v3);
      v13 = *v11;
      v12 = v11[1];
      if (v5 < 0x80)
      {
        LOBYTE(v15) = v6;
      }

      else
      {
        v14 = v6;
        do
        {
          *v4++ = v14 | 0x80;
          v15 = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }

      *v4 = v15;
      v17 = v4 + 1;
      v18 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v18 != 2)
        {
          *v17 = 0;
          goto LABEL_4;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (v22)
        {
          goto LABEL_83;
        }

        if (v19 >= 0x80)
        {
          do
          {
LABEL_21:
            *v17++ = v19 | 0x80;
            v23 = v19 >> 7;
            v24 = v19 >> 14;
            v19 >>= 7;
          }

          while (v24);
          goto LABEL_24;
        }
      }

      else if (v18)
      {
        LODWORD(v19) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_84;
        }

        v19 = v19;
        if (v19 >= 0x80)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = BYTE6(v12);
        if (BYTE6(v12) >= 0x80uLL)
        {
          goto LABEL_21;
        }
      }

      LOBYTE(v23) = v19;
LABEL_24:
      *v17 = v23;
      if (v18 <= 1)
      {
        if (v18)
        {
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_85;
          }

          v9 = HIDWORD(v13) - v13;
          goto LABEL_33;
        }

        v9 = BYTE6(v12);
LABEL_34:
        v10 = v17 + 1;
        if (!v9)
        {
          goto LABEL_5;
        }

        if (v18)
        {
          if (v18 == 2)
          {
            v27 = *(v13 + 16);
          }

          else
          {
            v27 = v13;
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = v27 + v9;
        if (__OFADD__(v27, v9))
        {
          goto LABEL_81;
        }

        v29 = v9;
        if (v28 < v27)
        {
          goto LABEL_82;
        }

        if (v28 == v27)
        {
          goto LABEL_5;
        }

        if (v18 == 2)
        {
          if (v27 < *(v13 + 16))
          {
            goto LABEL_87;
          }

          if (*(v13 + 24) < v28)
          {
            goto LABEL_90;
          }

          sub_2685BA80C(v13, v12);
          v38 = sub_268689764();
          if (v38)
          {
            v39 = sub_268689794();
            if (__OFSUB__(v27, v39))
            {
              goto LABEL_93;
            }

            v38 += v27 - v39;
          }

          if (__OFSUB__(v28, v27))
          {
            goto LABEL_91;
          }

          v40 = sub_268689784();
          if (v38)
          {
            if (v40 >= v9)
            {
              v35 = v9;
            }

            else
            {
              v35 = v40;
            }

            v36 = v10;
            v37 = v38;
LABEL_67:
            memmove(v36, v37, v35);
          }

LABEL_76:
          result = sub_2685B593C(v13, v12);
          v8 = v42;
        }

        else
        {
          if (v18 == 1)
          {
            if (v13 >> 32 < v28 || v27 < v13 || v13 >> 32 < v27 || v28 < v13)
            {
              goto LABEL_88;
            }

            sub_2685BA80C(v13, v12);
            v30 = sub_268689764();
            if (v30)
            {
              v31 = v30;
              v32 = sub_268689794();
              if (__OFSUB__(v27, v32))
              {
                goto LABEL_92;
              }

              v33 = (v27 - v32 + v31);
              v34 = sub_268689784();
              if (v33)
              {
                if (v34 >= v9)
                {
                  v35 = v9;
                }

                else
                {
                  v35 = v34;
                }

                v36 = v10;
                v37 = v33;
                goto LABEL_67;
              }
            }

            else
            {
              sub_268689784();
            }

            goto LABEL_76;
          }

          if (v27 > BYTE6(v12) || v28 > BYTE6(v12))
          {
            goto LABEL_89;
          }

          v46 = v13;
          v47 = v12;
          v48 = BYTE2(v12);
          v49 = BYTE3(v12);
          v50 = BYTE4(v12);
          v51 = BYTE5(v12);
          if (v9 > 13)
          {
            v29 = 14;
          }

          else if (v9 < 1)
          {
            goto LABEL_77;
          }

          result = memmove(v10, &v46 + v27, v29);
        }

LABEL_77:
        v6 = v44;
        v5 = v45;
        v7 = v43;
        goto LABEL_5;
      }

      if (v18 == 2)
      {
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        v9 = v25 - v26;
        if (__OFSUB__(v25, v26))
        {
          goto LABEL_86;
        }

LABEL_33:
        if (v9 < 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
        }

        goto LABEL_34;
      }

LABEL_4:
      v9 = 0;
      v10 = v17 + 1;
LABEL_5:
      ++v3;
      v4 = &v10[v9];
      if (v3 == v8)
      {
        *v41 = v4;
        return result;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBytesField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v12 = v2;
  v5 = *(value._rawValue + 2);
  if (v5)
  {
    v6 = v3;
    v7 = *(v3 + 120);
    for (i = (value._rawValue + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      sub_2685BA80C(v9, *i);
      v7(v9, v10, fieldNumber, v12, v6);
      if (v4)
      {
        break;
      }

      sub_2685B593C(v9, v10);
      if (!--v5)
      {
        return;
      }
    }

    sub_2685B593C(v9, v10);
  }
}

uint64_t sub_268645BA8(int a1, uint64_t a2)
{
  v2 = a1;
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_268645BE4(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (result)
  {
    v17[0] = v11;
    v14 = 0;
    v18 = a5;
    v19 = (v10 + 16);
    v17[1] = a5 + 128;
    while (1)
    {
      v15 = sub_268689B64();
      sub_268689B24();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v17[0] != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*v19)(v12, &v23, a4);
        result = swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(v18 + 128))(v12, v20, a4, v22, v21);
      result = (*(v10 + 8))(v12, a4);
      if (!v6)
      {
        result = sub_268689B74();
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t Visitor.visitRepeatedGroupField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a6;
  v20 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (result)
  {
    v17[0] = v11;
    v14 = 0;
    v18 = a5;
    v19 = (v10 + 16);
    v17[1] = a5 + 144;
    while (1)
    {
      v15 = sub_268689B64();
      sub_268689B24();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v17[0] != 8)
        {
          __break(1u);
          return result;
        }

        v23 = result;
        (*v19)(v12, &v23, a4);
        result = swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(v18 + 144))(v12, v20, a4, v22, v21);
      result = (*(v10 + 8))(v12, a4);
      if (!v6)
      {
        result = sub_268689B74();
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

char *sub_268646148(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  sub_268663B88(v3);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 408))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 416))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_268646D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x26D61D920](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268646D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D61D8F0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_268689EC4();
      --v3;
    }

    while (v3);
  }

  return result;
}

char *static Message.jsonString<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2686899A4();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  v16 = a2[1];
  v24[0] = *a2;
  v24[1] = v16;
  v17 = static Message.jsonUTF8Data<A>(from:options:)(a1, v24, a3, a4, a5, a6);
  if (v6)
  {
    return v15;
  }

  v19 = v17;
  v20 = v18;
  sub_268689994();
  result = sub_268689964();
  if (v22)
  {
    v15 = result;
    sub_2685B593C(v19, v20);
    return v15;
  }

  __break(1u);
  return result;
}

char *static Message.jsonUTF8Data<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedConformanceWitness = a1;
  v56 = a5;
  v52 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268689C74();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v47 - v19;
  v20 = *a2;
  v21 = a2[1];
  v22 = swift_conformsToProtocol2();
  if (a3 && v22)
  {
    (*(v22 + 8))(&v57, a3);
    v62 = v57;
    v63 = v58;
    LOBYTE(v64) = v20;
    HIBYTE(v64) = v21;
    v23 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_2685B3F48((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v23[v25 + 32] = 91;
    *&v61 = v23;
    WORD4(v61) = 256;
    (*(v17 + 16))(v53, AssociatedConformanceWitness, a4);
    sub_268689B14();
    v26 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_268689C94();
    v27 = v52;
    v53 = *(v52 + 48);
    v54 = v52 + 48;
    if ((v53)(v16, 1, a3) == 1)
    {
LABEL_8:
      (*(v48 + 8))(v65, v26);
      *&v61 = v23;
      v29 = *(v23 + 2);
      v28 = *(v23 + 3);
      if (v29 >= v28 >> 1)
      {
        v23 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v23);
      }

      *(v23 + 2) = v29 + 1;
      v23[v29 + 32] = 93;
      *&v61 = v23;
      WORD4(v61) = 44;

      a2 = sub_26866677C(v30);

      v57 = v61;
      v58 = v62;
      v59 = v63;
      v60 = v64;
      sub_268647CF4(&v57);
    }

    else
    {
      v32 = 0;
      v34 = *(v27 + 32);
      v33 = v27 + 32;
      v51 = v34;
      v50 = v56 + 72;
      v52 = v33 - 24;
      v35 = 1;
      while (1)
      {
        v51(v12, v16, a3);
        if (v35)
        {
          v36 = *(v23 + 2);
        }

        else
        {
          v37 = v16;
          v38 = v12;
          v39 = v33;
          *&v61 = v23;
          v41 = *(v23 + 2);
          v40 = *(v23 + 3);
          v36 = v41 + 1;
          if (v41 >= v40 >> 1)
          {
            v23 = sub_2685B3F48((v40 > 1), v41 + 1, 1, v23);
          }

          *(v23 + 2) = v36;
          v23[v41 + 32] = v32;
          v33 = v39;
          v12 = v38;
          v16 = v37;
          v26 = AssociatedTypeWitness;
        }

        *&v61 = v23;
        v42 = *(v23 + 3);
        if (v36 >= v42 >> 1)
        {
          v23 = sub_2685B3F48((v42 > 1), v36 + 1, 1, v23);
        }

        *(v23 + 2) = v36 + 1;
        v23[v36 + 32] = 123;
        *&v61 = v23;
        WORD4(v61) = 256;
        a2 = v12;
        (*(v56 + 72))(&v61, &type metadata for JSONEncodingVisitor, &off_28792D200, a3);
        if (v6)
        {
          break;
        }

        v23 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
          *&v61 = v23;
        }

        v45 = *(v23 + 2);
        v44 = *(v23 + 3);
        if (v45 >= v44 >> 1)
        {
          v23 = sub_2685B3F48((v44 > 1), v45 + 1, 1, v23);
          *&v61 = v23;
        }

        (*v52)(v12, a3);
        *(v23 + 2) = v45 + 1;
        v23[v45 + 32] = 125;
        *&v61 = v23;
        v32 = 44;
        WORD4(v61) = 44;
        sub_268689C94();
        v35 = 0;
        if ((v53)(v16, 1, a3) == 1)
        {
          goto LABEL_8;
        }
      }

      (*v52)(v12, a3);
      (*(v48 + 8))(v65, v26);
      v57 = v61;
      v58 = v62;
      v59 = v63;
      v60 = v64;
      sub_268647CF4(&v57);
    }
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v31 = 4;
    swift_willThrow();
  }

  return a2;
}

void *static Message.array(fromJSONString:options:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_2686899A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (v26 = a4, v17 = *a3, v18 = *(a3 + 8), sub_268689994(), v19 = sub_268689954(), v21 = v20, (*(v13 + 8))(v15, v12), v21 >> 60 != 15))
  {
    v24 = v17;
    v25 = v18;
    v6 = static Message.array(fromJSONUTF8Data:options:)(v19, v21, &v24, v26, a5);
    sub_2685B98FC(v19, v21);
  }

  else
  {
    sub_2685BD910();
    swift_allocError();
    *v22 = xmmword_26868A580;
    swift_willThrow();
  }

  return v6;
}

void *static Message.array(fromJSONUTF8Data:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_268689BA4();
  result = sub_268689834();
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_268647AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2686898D4();
  v40[0] = result;
  if (a1)
  {
    v16 = a2 - a1;
    if (v16 >= 1)
    {
      *(&v38 + 1) = 0;
      v39[0] = 0;
      memset(&v39[8], 0, 32);
      *(&v37 + 1) = a3;
      v17 = a4 & 1;
      LOBYTE(v38) = a4 & 1;
      type metadata accessor for DoubleParser();
      v18 = swift_allocObject();
      v19 = swift_slowAlloc();
      *(v18 + 16) = v19;
      *(v18 + 24) = v19 + 128;
      *&v34 = a1;
      *(&v34 + 1) = v16;
      *&v35 = 0;
      *(&v35 + 1) = v18;
      *&v36 = a3;
      *(&v36 + 1) = a3;
      LOBYTE(v37) = v17;
      sub_26865DD80(v40, a5, a6);
      if (v7)
      {

LABEL_5:
        v30 = v38;
        v31 = *v39;
        v32 = *&v39[16];
        v33 = *&v39[32];
        v26 = v34;
        v27 = v35;
        v28 = v36;
        v29 = v37;
        return sub_268647D6C(&v26);
      }

      v20 = v35;
      if (v35 != *(&v34 + 1))
      {
        while (1)
        {
          v21 = *(v34 + v20);
          v22 = v21 > 0x20;
          v23 = (1 << v21) & 0x100002600;
          if (v22 || v23 == 0)
          {
            break;
          }

          if (*(&v34 + 1) == ++v20)
          {
            *&v35 = *(&v34 + 1);
            goto LABEL_13;
          }
        }

        *&v35 = v20;
        if (*(&v34 + 1) != v20)
        {

          sub_2685BD910();
          swift_allocError();
          *v25 = xmmword_268690760;
          swift_willThrow();
          goto LABEL_5;
        }
      }

LABEL_13:
      v30 = v38;
      v31 = *v39;
      v32 = *&v39[16];
      v33 = *&v39[32];
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      sub_268647D6C(&v26);
      result = v40[0];
    }
  }

  *a7 = result;
  return result;
}

uint64_t sub_268647DC0(char a1)
{
  result = a1 & 7;
  if (result > 5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268647DD4(unsigned int a1)
{
  v2 = (~a1 & 6) == 0 || a1 < 8;
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4 | (v3 << 32);
}

uint64_t Google_Protobuf_Empty.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Empty.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_Empty.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

unint64_t sub_268647E94()
{
  type metadata accessor for InternPool();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  qword_28028D408 = v0;
  qword_28028D410 = sub_268688CB0(v1);
  qword_28028D418 = sub_268688E38(v1);
  result = sub_268688E38(v1);
  qword_28028D420 = result;
  return result;
}

uint64_t static Google_Protobuf_Empty._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028D410;
  v2 = qword_28028D418;
  v3 = qword_28028D420;
  *a1 = qword_28028D408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Empty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    result = v6(a2, a3);
  }

  while (!v3 && (v8 & 1) == 0);
  return result;
}

uint64_t Google_Protobuf_Empty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  sub_2685BA80C(*v3, v9);
  UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
  return sub_2685B593C(v8, v9);
}

BOOL static Google_Protobuf_Empty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

uint64_t Google_Protobuf_Empty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return sub_268689EF4();
    }

    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
  }

  else
  {
    if (!v3)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_9;
    }

    v4 = v1;
    v5 = v1 >> 32;
  }

  if (v4 != v5)
  {
LABEL_9:
    sub_268689844();
  }

  return sub_268689EF4();
}

double sub_2686481A8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

__n128 sub_2686481D4(__n128 *a1)
{
  sub_2685B593C(*v1, *(v1 + 8));
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_268648234@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028D410;
  v2 = qword_28028D418;
  v3 = qword_28028D420;
  *a1 = qword_28028D408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686482D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  sub_2685DCF24(v4, v1, v2);
  return sub_268689EF4();
}

uint64_t sub_268648324(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_268689E94();
  sub_2685DCF24(v5, v2, v3);
  return sub_268689EF4();
}

BOOL sub_26864836C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2685BA80C(*a1, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

unint64_t sub_2686483EC(uint64_t a1)
{
  result = sub_268648414();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268648414()
{
  result = qword_28028D428;
  if (!qword_28028D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D428);
  }

  return result;
}

unint64_t sub_268648468(uint64_t a1)
{
  *(a1 + 8) = sub_268648498();
  result = sub_2686484EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268648498()
{
  result = qword_28028D430;
  if (!qword_28028D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D430);
  }

  return result;
}

unint64_t sub_2686484EC()
{
  result = qword_28028D438;
  if (!qword_28028D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D438);
  }

  return result;
}

unint64_t sub_268648544()
{
  result = qword_28028D440;
  if (!qword_28028D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D440);
  }

  return result;
}

uint64_t Google_Protobuf_Any.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BE58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28029B270;
}

uint64_t Google_Protobuf_Any.typeURL.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_268648674(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v6 = sub_26866D2A0(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
}

uint64_t Google_Protobuf_Any.typeURL.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v7 = sub_26866D2A0(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
}

void (*Google_Protobuf_Any.typeURL.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_268648838;
}

void sub_268648838(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v7 = sub_26866D2A0(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v10 = sub_26866D2A0(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;
  }

  free(v2);
}

uint64_t sub_268648980(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2685BA80C(*a1, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v6 = sub_26866D2A0(v6);
    *(a2 + 16) = v6;
  }

  v8[0] = v3;
  v8[1] = v4;
  v9 = 0;
  swift_beginAccess();
  sub_268643EE8(v8, v6 + 32);
  return swift_endAccess();
}

uint64_t Google_Protobuf_Any.value.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v6 = sub_26866D2A0(v6);
    *(v2 + 16) = v6;
  }

  v8[0] = a1;
  v8[1] = a2;
  v9 = 0;
  swift_beginAccess();
  sub_268643EE8(v8, v6 + 32);
  return swift_endAccess();
}

void (*Google_Protobuf_Any.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  *(v3 + 72) = sub_26866CF00();
  *(v4 + 80) = v5;
  return sub_268648B50;
}

void sub_268648B50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    sub_2685BA80C(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v7 = sub_26866D2A0(v7);
      *(v8 + 16) = v7;
    }

    *v2 = v3;
    v2[1] = v5;
    *(v2 + 40) = 0;
    swift_beginAccess();
    sub_268643EE8(v2, v7 + 32);
    swift_endAccess();
    sub_2685B593C(v2[9], v2[10]);
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for AnyMessageStorage();
      swift_allocObject();
      v10 = sub_26866D2A0(v10);
      *(v11 + 16) = v10;
    }

    *v2 = v3;
    v2[1] = v5;
    *(v2 + 40) = 0;
    swift_beginAccess();
    sub_268643EE8(v2, v10 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t Google_Protobuf_Any.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Any.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t static Google_Protobuf_Any._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D450;
  v2 = qword_28028D458;
  v3 = unk_28028D460;
  *a1 = qword_28028D448;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Any.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 16);
    type metadata accessor for AnyMessageStorage();
    swift_allocObject();
    v9 = sub_26866D2A0(v10);
    *(v4 + 16) = v9;
  }

  return sub_268648E5C(v9, a1, a2, a3);
}

uint64_t sub_268648E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    v16 = a4 + 360;
    while ((v10 & 1) == 0)
    {
      if (result == 2)
      {
        v14 = sub_26866CF00();
        v15 = v11;
        (*(a4 + 360))(&v14, a3, a4);
        v12[0] = v14;
        v12[1] = v15;
        v13 = 0;
        swift_beginAccess();
        sub_268643EE8(v12, a1 + 32);
        swift_endAccess();
      }

      else if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 336))(a1 + 16, a3, a4);
        swift_endAccess();
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Any.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  result = sub_2686490B4(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v8);
  }

  return result;
}

uint64_t sub_2686490B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26866D99C();
  if (!v4)
  {
    swift_beginAccess();
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = *(a4 + 112);

      v12(v9, v10, 1, a3, a4);
    }

    v13 = sub_26866CF00();
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        return sub_2685B593C(v13, v14);
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      result = sub_2685B593C(v13, v14);
      if (v18 == v17)
      {
        return result;
      }
    }

    else if (v15)
    {
      v19 = v13;
      result = sub_2685B593C(v13, v14);
      if (v19 == v19 >> 32)
      {
        return result;
      }
    }

    else
    {
      v16 = v14;
      result = sub_2685B593C(v13, v14);
      if ((v16 & 0xFF000000000000) == 0)
      {
        return result;
      }
    }

    v20 = sub_26866CF00();
    v22 = v21;
    (*(a4 + 120))();
    return sub_2685B593C(v20, v22);
  }

  return result;
}

uint64_t Google_Protobuf_Any.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_268689E94();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    sub_268689A24();
  }

  return sub_268689EF4();
}

uint64_t sub_2686492DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BE58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28029B270;
}

uint64_t sub_2686493A4@<X0>(void *a1@<X8>)
{
  if (qword_28028BDE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D450;
  v2 = qword_28028D458;
  v3 = unk_28028D460;
  *a1 = qword_28028D448;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268649454(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_268689E94();
  swift_beginAccess();
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    sub_268689A24();
  }

  return sub_268689EF4();
}

BOOL _s20SiriOntologyProtobuf07Google_C4_AnyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 != v7 && (sub_26866A280(v7) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v5, v6);
  v8 = sub_2686131DC(v2, v3, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v2, v3);
  return v8;
}

unint64_t sub_26864957C(uint64_t a1)
{
  result = sub_2686495A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686495A4()
{
  result = qword_28028D468;
  if (!qword_28028D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D468);
  }

  return result;
}

unint64_t sub_2686495F8(uint64_t a1)
{
  *(a1 + 8) = sub_2685CFD4C();
  result = sub_268649628();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268649628()
{
  result = qword_28028D470;
  if (!qword_28028D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D470);
  }

  return result;
}

unint64_t sub_268649680()
{
  result = qword_28028D478;
  if (!qword_28028D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JSONEncodingOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_268649914(uint64_t result, int a2)
{
  if ((result & 0x80000000) != 0)
  {
    if (a2)
    {
      return ((result + 1) / a2 - 1);
    }
  }

  else
  {
    if (a2)
    {
      return (result / a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268649940(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    if (a2)
    {
      return (result + 1) / a2 - 1;
    }
  }

  else
  {
    if (a2)
    {
      result /= a2;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26864996C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_2685C4674(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v22 = v3;
    v23 = v11;
    v12 = 15;
    v20 = v10;
    v21 = v5;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v5 = sub_268689A84();
        goto LABEL_5;
      }

      v13 = v12;
      if ((v12 & 0xC) == v10)
      {
        v13 = sub_26866A0F8(v12, v3, a2);
      }

      v14 = v13 >> 16;
      if (v13 >> 16 >= v23)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = sub_268689AB4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v24[0] = v3;
        v24[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(v24 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v15 = sub_268689D24();
        }

        v16 = *(v15 + v14);
      }

      v25 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2685C4674((v17 > 1), v18 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v10 = v20;
      if ((v12 & 0xC) == v20)
      {
        v3 = v22;
        v12 = sub_26866A0F8(v12, v22, a2);
        v19 = v21;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v3 = v22;
        v19 = v21;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v23 <= v12 >> 16)
      {
        goto LABEL_36;
      }

      v12 = sub_268689A94();
LABEL_13:
      ++v8;
      if (v4 == v19)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

int64x2_t *sub_268649BC0(unint64_t a1, unint64_t a2)
{
  result = sub_26864996C(a1, a2);
  v4 = result[1].u64[0];
  if (v4 < 0x14)
  {
    goto LABEL_3;
  }

  v7 = result[2];
  v6 = result[3];
  v5 = result + 2;
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFFFC6);
  v9 = vdupq_n_s64(0xFFFFFFFFFFFFFFF6);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v9, vaddq_s64(v7, v8)), vcgtq_u64(v9, vaddq_s64(v6, v8))))))
  {
    goto LABEL_3;
  }

  if (result[4].i64[0] != 45)
  {
    goto LABEL_3;
  }

  v11 = 1000 * v7.i64[0] + 100 * v7.i64[1] + 10 * v6.i64[0] + v6.i64[1];
  if (v11 == 53328)
  {
    goto LABEL_3;
  }

  v12 = result[4].i64[1];
  if ((v12 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v13 = result[5].i64[0];
  if ((v13 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (result[5].i64[1] != 45)
  {
    goto LABEL_3;
  }

  v14 = v13 + 10 * v12;
  if ((v14 - 541) < 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_3;
  }

  v15 = result[6].i64[0];
  if ((v15 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v16 = result[6].i64[1];
  if ((v16 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (result[7].i64[0] != 84)
  {
    goto LABEL_3;
  }

  v17 = v16 + 10 * v15;
  if ((v17 - 560) < 0xFFFFFFFFFFFFFFE1)
  {
    goto LABEL_3;
  }

  v18 = result[7].i64[1];
  if ((v18 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v19 = result[8].i64[0];
  if ((v19 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (result[8].i64[1] != 58)
  {
    goto LABEL_3;
  }

  v20 = v19 + 10 * v18 - 528;
  if (v20 > 0x17)
  {
    goto LABEL_3;
  }

  v21 = result[9].i64[0];
  if ((v21 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v22 = result[9].i64[1];
  if ((v22 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (result[10].i64[0] != 58)
  {
    goto LABEL_3;
  }

  v23 = v22 + 10 * v21 - 528;
  if (v23 > 0x3B)
  {
    goto LABEL_3;
  }

  v24 = result[10].i64[1];
  if ((v24 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v25 = result[11].i64[0];
  if ((v25 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v26 = v25 + 10 * v24 - 528;
  if (v26 > 0x3D)
  {
    goto LABEL_3;
  }

  v27 = v14 - 528;
  v28 = qword_2879286B8[v14 - 525];
  HIDWORD(v29) = -1030792151 * (v11 + 12208);
  LODWORD(v29) = HIDWORD(v29);
  if ((v29 >> 4) < 0xA3D70B)
  {
    if (v27 < 3)
    {
      goto LABEL_34;
    }
  }

  else if ((v11 & 3) != 0 || !((v11 + 12208) % 0x64u) || v27 <= 2)
  {
    goto LABEL_34;
  }

  v30 = __OFADD__(v28++, 1);
  if (v30)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_34:
  v31 = v17 - 529;
  v30 = __OFADD__(v28, v31);
  v32 = v28 + v31;
  if (v30)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v33 = 365 * (v11 - 53328) - 719527;
  v30 = __OFADD__(v32, v33);
  v34 = v32 + v33;
  if (v30)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v35 = v11 - 53329;
  v30 = __OFADD__(v34, v35 >> 2);
  v36 = v34 + (v35 >> 2);
  if (v30)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v37 = v35 / 0x64u;
  v30 = __OFSUB__(v36, v37);
  v38 = v36 - v37;
  if (v30)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v39 = v35 / 0x190u;
  v30 = __OFADD__(v38, v39);
  v40 = v38 + v39;
  if (v30)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v41 = 86400 * v40;
  if ((v40 * 86400) >> 64 != (86400 * v40) >> 63)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v42 = v26 + 60 * (v23 + 60 * v20);
  v2 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (result[11].i64[1] == 46)
  {
    if (v4 == 20)
    {
      v43 = 20;
      goto LABEL_45;
    }

    v54 = 0;
    v55 = result + 12;
    v43 = 20;
    v56 = 100000000;
    while (v4 != v43)
    {
      if ((v55->i64[0] - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        goto LABEL_45;
      }

      v57 = (v55->i64[0] - 48) * v56;
      if (v57 < 0xFFFFFFFF80000000)
      {
        goto LABEL_83;
      }

      if (v57 > 0x7FFFFFFF)
      {
        goto LABEL_84;
      }

      v30 = __OFADD__(v54, v57);
      v54 += v57;
      if (v30)
      {
        goto LABEL_85;
      }

      v56 /= 10;
      ++v43;
      v55 = (v55 + 8);
      if (v4 == v43)
      {
        v43 = result[1].u64[0];
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v43 = 19;
LABEL_45:
  if (v43 >= v4)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v44 = &v5->i64[v43];
  v45 = *v44;
  if (*v44 != 45 && v45 != 43)
  {
LABEL_66:

    if (v45 != 90)
    {
      goto LABEL_4;
    }

    v45 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      goto LABEL_68;
    }

    goto LABEL_98;
  }

  v59 = *v44;
  v45 = v43 + 6;
  if (__OFADD__(v43, 6))
  {
    goto LABEL_94;
  }

  if (v4 < v45)
  {
    goto LABEL_3;
  }

  if (v43 + 1 >= v4)
  {
    goto LABEL_96;
  }

  if (v43 + 2 >= v4)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v46 = v5->i64[v43 + 1];
  if ((v46 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  v47 = v5[1].i64[v43];
  if ((v47 - 58) < 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_3;
  }

  if (v43 + 4 >= v4)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v43 + 5 >= v4)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v48 = v5[2].i64[v43];
  if ((v48 - 58) < 0xFFFFFFFFFFFFFFF6 || (v49 = v5[2].i64[v43 + 1], (v49 - 58) < 0xFFFFFFFFFFFFFFF6) || (v50 = v47 + 10 * v46 - 528, v50 > 0xD) || (v43 = v49 + 10 * v48 - 528, v43 > 0x3B))
  {
LABEL_3:

    goto LABEL_4;
  }

  v51 = v44[3];

  if (v51 != 58)
  {
    goto LABEL_4;
  }

  v52 = 3600 * v50;
  if (v59 == 43)
  {
    v30 = __OFSUB__(v2, v52);
    v53 = v2 - v52;
    if (v30)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v2 = v53 - 60 * v43;
    if (!__OFSUB__(v53, 60 * v43))
    {
LABEL_80:
      if (v2 - 0x3AFFF44180 >= 0xFFFFFFB68879C780)
      {
LABEL_68:
        if (v45 == v4)
        {
          return v2;
        }
      }

LABEL_4:
      sub_2685BD910();
      swift_allocError();
      *v10 = xmmword_268690B50;
      swift_willThrow();
      return v2;
    }

    __break(1u);
    goto LABEL_66;
  }

  v30 = __OFADD__(v2, v52);
  v58 = v2 + v52;
  if (v30)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v2 = v58 + 60 * v43;
  if (!__OFADD__(v58, 60 * v43))
  {
    goto LABEL_80;
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_26864A180(uint64_t result, int a2)
{
  v2 = a2 / 0x3B9ACA00u;
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  v3 = result + v2;
  if (__OFADD__(result, v2))
  {
    __break(1u);
  }

  else
  {
    if (a2 % 1000000000 >= 0)
    {
      v4 = a2 % 1000000000;
    }

    else
    {
      v4 = a2 % 1000000000 + 1000000000;
    }

    if ((v3 - 0x3AFFF44180) >= 0xFFFFFFB68879C780)
    {
      v5 = sub_2686366F0(v3);
      v6 = v5;
      v8 = v7;
      v9 = HIDWORD(v5);
      v10 = sub_2686367AC(v3);
      v11 = v10;
      v13 = v12;
      v14 = HIDWORD(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
      if (v4)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_268690B60;
        v16 = MEMORY[0x277D849A8];
        v17 = MEMORY[0x277D84A20];
        *(v15 + 56) = MEMORY[0x277D849A8];
        *(v15 + 64) = v17;
        *(v15 + 32) = v11;
        *(v15 + 96) = v16;
        *(v15 + 104) = v17;
        *(v15 + 72) = v14;
        *(v15 + 136) = v16;
        *(v15 + 144) = v17;
        *(v15 + 112) = v13;
        *(v15 + 176) = v16;
        *(v15 + 184) = v17;
        *(v15 + 152) = v6;
        *(v15 + 216) = v16;
        *(v15 + 224) = v17;
        *(v15 + 192) = v9;
        *(v15 + 256) = v16;
        *(v15 + 264) = v17;
        *(v15 + 232) = v8;
        if (v4 % 1000000)
        {
          *(v15 + 296) = v16;
          *(v15 + 304) = v17;
          if (v4 % 1000)
          {
            *(v15 + 272) = v4;
          }

          else
          {
            *(v15 + 272) = v4 / 1000;
          }
        }

        else
        {
          *(v15 + 296) = v16;
          *(v15 + 304) = v17;
          *(v15 + 272) = v4 / 1000000;
        }
      }

      else
      {
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_268690B70;
        v19 = MEMORY[0x277D849A8];
        v20 = MEMORY[0x277D84A20];
        *(v18 + 56) = MEMORY[0x277D849A8];
        *(v18 + 64) = v20;
        *(v18 + 32) = v11;
        *(v18 + 96) = v19;
        *(v18 + 104) = v20;
        *(v18 + 72) = v14;
        *(v18 + 136) = v19;
        *(v18 + 144) = v20;
        *(v18 + 112) = v13;
        *(v18 + 176) = v19;
        *(v18 + 184) = v20;
        *(v18 + 152) = v6;
        *(v18 + 216) = v19;
        *(v18 + 224) = v20;
        *(v18 + 192) = v9;
        *(v18 + 256) = v19;
        *(v18 + 264) = v20;
        *(v18 + 232) = v8;
      }

      return sub_268689984();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26864A40C(uint64_t a1, int a2)
{
  v2 = a2 / 0x3B9ACA00u;
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

double Google_Protobuf_Timestamp.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26864A490()
{
  v1 = sub_26864A180(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x26D61D4B0](v1);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

void sub_26864A554(uint64_t a1)
{
  sub_2685BC49C(a1);
  if (!v2)
  {
    v5 = sub_268649BC0(v3, v4);
    v7 = v6;

    *v1 = v5;
    *(v1 + 8) = v7;
  }
}

void Google_Protobuf_Timestamp.init(timeIntervalSince1970:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_26864A40C(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_13:
  __break(1u);
}

void Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_268689894();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v3 + v5;
  if (__OFADD__(v3, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = round((a2 - v3) * 1000000000.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= -2147483650.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < 2147483650.0)
  {
    *a1 = sub_26864A40C(v6, v7);
    *(a1 + 8) = v8;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_21:
  __break(1u);
}

double Google_Protobuf_Timestamp.init(date:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_268689884();
  Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(&v8, v4);
  v5 = sub_2686898A4();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

void Google_Protobuf_Timestamp.timeIntervalSinceReferenceDate.getter()
{
  v1 = *v0;
  sub_268689894();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v1, v2))
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t Google_Protobuf_Timestamp.date.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_268689894();
  if ((v3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3.n128_f64[0] <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3.n128_f64[0] >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v3.n128_f64[0]))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x28211D478](v3);
  }

  v3.n128_f64[0] = v2 / 1000000000.0 + (v1 - v3.n128_f64[0]);

  return MEMORY[0x28211D478](v3);
}

uint64_t sub_26864AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFADD__(*a1, *a2);
  result = *a1 + *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFADD__(v8, v7))
    {
      result = sub_26864A40C(result, v8 + v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t - infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFSUB__(*a1, *a2);
  result = *a1 - *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFSUB__(v8, v7))
    {
      result = sub_26864A40C(result, v8 - v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26864C4A0()
{
  result = qword_28028D600;
  if (!qword_28028D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D600);
  }

  return result;
}

unint64_t sub_26864C4F4(uint64_t a1)
{
  result = sub_26864C51C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26864C51C()
{
  result = qword_28028D608;
  if (!qword_28028D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D608);
  }

  return result;
}

uint64_t Message.init(textFormatString:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a3;
  v28 = sub_2686899A4();
  v10 = *(v28 - 8);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 16);
  v27 = a5;
  v17(a4, a5);
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_8;
  }

  sub_268689994();
  v19 = sub_268689954();
  v21 = v20;

  v22 = (*(v10 + 8))(v13, v28);
  if (v21 >> 60 == 15)
  {
LABEL_8:
    v24 = v30;
LABEL_9:
    (*(v14 + 16))(v29, v16, a4);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v22);
  v23 = v27;
  *(&v27 - 4) = a4;
  *(&v27 - 3) = v23;
  v24 = v30;
  *(&v27 - 2) = v30;
  *(&v27 - 1) = v16;
  v25 = v31;
  sub_2685B2660(sub_26864CC94, (&v27 - 6), v19, v21);
  sub_2685B98FC(v19, v21);
  if (!v25)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_2685B55C0(v24);
  return (*(v14 + 8))(v16, a4);
}

unsigned __int8 *sub_26864C9D4(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v7 = result;
    v8 = a2 - result;
    if (a2 - result >= 1)
    {
      sub_2685B2978(a3, v32);
      *&v28 = 0;
      WORD4(v28) = 256;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_2685B2978(v32, &v22);
      type metadata accessor for DoubleParser();
      v24 = 0u;
      v25 = 0u;
      *&v26 = 0;
      v11 = swift_allocObject();
      v12 = swift_slowAlloc();
      *(v11 + 16) = v12;
      *(v11 + 24) = v12 + 128;
      *(&v27 + 1) = v11;
      v13 = &v7[v8];
      *(&v26 + 1) = v7;
      *&v27 = &v7[v8];
      sub_26864CCB4(&v22, &v24);
      do
      {
        v14 = *v7;
        if (v14 > 0x23)
        {
          break;
        }

        if (((1 << v14) & 0x100002600) == 0)
        {
          if (v14 == 35)
          {
            *(&v26 + 1) = ++v7;
            while (v7 != v13)
            {
              v16 = *v7++;
              v15 = v16;
              if (v16 == 10 || v15 == 13)
              {
                goto LABEL_7;
              }
            }

            *(&v26 + 1) = v13;
          }

          break;
        }

        ++v7;
LABEL_7:
        *(&v26 + 1) = v7;
      }

      while (v7 != v13);
      sub_2685B55C0(&v22);
      v18 = swift_conformsToProtocol2();
      if (v18 && a5)
      {
        (*(v18 + 8))(&v22, a5, v18);
        sub_2685B55C0(v32);
        sub_2685B2FBC(v29, *(&v29 + 1), v30, *(&v30 + 1));
        v30 = v23;
        v29 = v22;
        *&v31 = a5;
        *(&v31 + 1) = a6;
        v33[0] = v24;
        v33[1] = v25;
        v34 = v26;
        v35 = v27;
        v36 = v28;
        v37 = v22;
        v38 = v23;
        v39 = v31;
        (*(a6 + 64))(v33, &type metadata for TextFormatDecoder, &off_28792DCE0, a5, a6);
        if (v6 || *(&v34 + 1) == v35)
        {
          v19 = v33;
        }

        else
        {
          sub_2685C1CBC();
          swift_allocError();
          *v21 = 2;
          swift_willThrow();
          v19 = v33;
        }
      }

      else
      {
        sub_2685C1CBC();
        swift_allocError();
        *v20 = 6;
        swift_willThrow();
        sub_2685B55C0(v32);
        v19 = &v24;
      }

      return sub_268643E5C(v19);
    }
  }

  return result;
}

uint64_t sub_26864CCB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD70, &unk_268690670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void Google_Protobuf_DoubleValue.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

double Google_Protobuf_FloatValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

void Google_Protobuf_Int64Value.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
}

double Google_Protobuf_Int32Value.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_BoolValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

double Google_Protobuf_BoolValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_StringValue.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Google_Protobuf_StringValue.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Google_Protobuf_StringValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_BytesValue.value.getter()
{
  v1 = *v0;
  sub_2685BA80C(*v0, *(v0 + 8));
  return v1;
}

uint64_t Google_Protobuf_BytesValue.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2685B593C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Google_Protobuf_BytesValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

double Google_Protobuf_BytesValue.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  a1[1] = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_DoubleValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D618;
  v2 = qword_28028D620;
  v3 = unk_28028D628;
  *a1 = qword_28028D610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_DoubleValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 48))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864D2AC(uint64_t result, uint64_t a2, unint64_t a3, double a4)
{
  if (a4 != 0.0)
  {
    v5 = a3;
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    v7 = MEMORY[0x26D61D920](*&a4);
    a2 = v6;
    a3 = v5;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return v7;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return v7;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a2;
    v10 = a2 >> 32;
    goto LABEL_10;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v7;
}

uint64_t sub_26864D354(uint64_t result, uint64_t a2, unint64_t a3, double a4)
{
  v6 = result;
  if (a4 != 0.0)
  {
    sub_2685B301C(1);
    v9 = sub_2685B403C(": ", 2, v8);
    sub_2686639C4(v9, a4);
    v10 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v10;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *v6 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + v12 + 32) = 10;
    *v6 = v10;
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      return result;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v14 = a2;
    v15 = a2 >> 32;
  }

  if (v14 == v15)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a2, a3, v6);
  }

  return result;
}

uint64_t Google_Protobuf_DoubleValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 == 0.0)
  {
    goto LABEL_2;
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 8);
  result = (*(a3 + 16))(1, a2, a3, *v3);
  if (!v4)
  {
    v8 = v12;
    v9 = v11;
LABEL_2:
    v13 = v8;
    v14 = v9;
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v13, v14);
  }

  return result;
}

BOOL static Google_Protobuf_DoubleValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t Google_Protobuf_DoubleValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864D2AC(&v5, v2, v3, v1);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864D70C@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D618;
  v2 = qword_28028D620;
  v3 = unk_28028D628;
  *a1 = qword_28028D610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864D7B4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864D2AC(&v5, v2, v3, v1);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864D864(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26864D2AC(&v6, v3, v4, v2);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

BOOL sub_26864D910(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t static Google_Protobuf_FloatValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D638;
  v2 = qword_28028D640;
  v3 = unk_28028D648;
  *a1 = qword_28028D630;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_FloatValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 24))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864DB28(uint64_t result, uint64_t a2, unint64_t a3, float a4)
{
  if (a4 != 0.0)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    v7 = MEMORY[0x26D61D920](*&v4);
    a2 = v6;
    a3 = v5;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return v7;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return v7;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a2;
    v10 = a2 >> 32;
    goto LABEL_10;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v7;
}

uint64_t sub_26864DBD0(uint64_t result, uint64_t a2, unint64_t a3, float a4)
{
  v6 = result;
  if (a4 != 0.0)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_26866393C(a4);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a2, a3, v6);
  }

  return result;
}

uint64_t Google_Protobuf_FloatValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 == 0.0)
  {
    goto LABEL_2;
  }

  v11 = *(v3 + 16);
  v12 = *(v3 + 8);
  result = (*(a3 + 8))(1, a2, a3, *v3);
  if (!v4)
  {
    v8 = v12;
    v9 = v11;
LABEL_2:
    v13 = v8;
    v14 = v9;
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v13, v14);
  }

  return result;
}

BOOL static Google_Protobuf_FloatValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t Google_Protobuf_FloatValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864DB28(&v5, v2, v3, v1);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864DF88@<X0>(void *a1@<X8>)
{
  if (qword_28028BDF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D638;
  v2 = qword_28028D640;
  v3 = unk_28028D648;
  *a1 = qword_28028D630;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864E030()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864DB28(&v5, v2, v3, v1);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864E0E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26864DB28(&v6, v3, v4, v2);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

BOOL sub_26864E18C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t static Google_Protobuf_Int64Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D658;
  v2 = qword_28028D660;
  v3 = unk_28028D668;
  *a1 = qword_28028D650;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Int64Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

char *sub_26864E3A4(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!a2 || (result = sub_268636ED8(a2, 1), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (v7[64] == 1)
    {
      return sub_26863B108(a3, a4, v7);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Int64Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

uint64_t sub_26864E54C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D658;
  v2 = qword_28028D660;
  v3 = unk_28028D668;
  *a1 = qword_28028D650;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_UInt64Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D678;
  v2 = qword_28028D680;
  v3 = unk_28028D688;
  *a1 = qword_28028D670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_UInt64Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 144))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864E774(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    v7 = MEMORY[0x26D61D920](a2);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return v7;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return v7;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v7;
}

uint64_t sub_26864E818(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a2)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_268663B88(a2);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a3;
    v14 = a3 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a3, a4, v6);
  }

  return result;
}

uint64_t Google_Protobuf_UInt64Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  if (!*v3 || (result = (*(a3 + 48))(*v3, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

BOOL _s20SiriOntologyProtobuf07Google_C11_Int64ValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_Int64ValueV04hashF0Sivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864E774(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_26864EBA4@<X0>(void *a1@<X8>)
{
  if (qword_28028BE08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D678;
  v2 = qword_28028D680;
  v3 = unk_28028D688;
  *a1 = qword_28028D670;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

__n128 sub_26864EC4C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864E774(&v10, v3, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_26864ECCC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26864E774(&v6, v2, v3, v4);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Int32Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D698;
  v2 = qword_28028D6A0;
  v3 = unk_28028D6A8;
  *a1 = qword_28028D690;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Int32Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 72))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864EEF0(uint64_t result, int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    v7 = MEMORY[0x26D61D920](v6);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return v7;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return v7;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v7;
}

char *sub_26864EF94(char *result, int a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!a2 || (result = sub_2686440C0(a2, 1), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (v7[64] == 1)
    {
      return sub_26863B108(a3, a4, v7);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Int32Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  if (!v8 || (result = (*(a3 + 24))(v8, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

uint64_t sub_26864F150@<X0>(void *a1@<X8>)
{
  if (qword_28028BE10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D698;
  v2 = qword_28028D6A0;
  v3 = unk_28028D6A8;
  *a1 = qword_28028D690;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_UInt32Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6B8;
  v2 = qword_28028D6C0;
  v3 = unk_28028D6C8;
  *a1 = qword_28028D6B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_UInt32Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 120))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864F3A8(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x26D61D8F0](1);
    v7 = MEMORY[0x26D61D920](v6);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return v7;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return v7;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v7;
}

uint64_t sub_26864F44C(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a2)
  {
    v7 = a2;
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_268663B88(v7);
    v9 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *v6 = result;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = 10;
    *v6 = v9;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return result;
    }

    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v13 = a3;
    v14 = a3 >> 32;
  }

  if (v13 == v14)
  {
    return result;
  }

LABEL_15:
  if (*(v6 + 64) == 1)
  {
    return sub_26863B108(a3, a4, v6);
  }

  return result;
}

uint64_t Google_Protobuf_UInt32Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  if (!v8 || (result = (*(a3 + 40))(v8, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

BOOL _s20SiriOntologyProtobuf07Google_C11_Int32ValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v3, v2);
  v6 = sub_2686131DC(v5, v4, v3, v2);
  sub_2685B593C(v3, v2);
  sub_2685B593C(v5, v4);
  return v6;
}

uint64_t sub_26864F6FC(uint64_t (*a1)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  a1(&v7, v3, v5, v4);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

uint64_t sub_26864F800@<X0>(void *a1@<X8>)
{
  if (qword_28028BE18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6B8;
  v2 = qword_28028D6C0;
  v3 = unk_28028D6C8;
  *a1 = qword_28028D6B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26864F8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v7, v6);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

uint64_t sub_26864F990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v8 = *(v4 + 1);
  v7 = *(v4 + 2);
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v8, v7);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_BoolValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6D8;
  v2 = qword_28028D6E0;
  v3 = unk_28028D6E8;
  *a1 = qword_28028D6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_BoolValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 312))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26864FBC4(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    v6 = sub_268689EB4();
  }

  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return v6;
    }

    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
LABEL_10:
    if (v8 == v9)
    {
      return v6;
    }

    return sub_268689844();
  }

  if (v7)
  {
    v8 = a3;
    v9 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v6;
}

uint64_t sub_26864FC5C(uint64_t result, char a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  if (a2)
  {
    v6 = a3;
    v7 = a4;
    result = sub_2685B33F4(1, 1);
    if (v4)
    {
      return result;
    }

    a4 = v7;
    a3 = v6;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = a3;
    v10 = a3 >> 32;
  }

  if (v9 == v10)
  {
    return result;
  }

LABEL_12:
  if (*(v5 + 64) == 1)
  {
    return sub_26863B108(a3, a4, v5);
  }

  return result;
}

uint64_t Google_Protobuf_BoolValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  if (*v3 != 1 || (result = (*(a3 + 104))(1, 1, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v9);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v9);
  }

  return result;
}

BOOL static Google_Protobuf_BoolValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  sub_2685BA80C(v6, v5);
  sub_2685BA80C(v4, v3);
  v7 = sub_2686131DC(v6, v5, v4, v3);
  sub_2685B593C(v4, v3);
  sub_2685B593C(v6, v5);
  return v7;
}

uint64_t Google_Protobuf_BoolValue.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864FBC4(&v5, v1, v3, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

double sub_26864FF00@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26864FF60@<X0>(void *a1@<X8>)
{
  if (qword_28028BE20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6D8;
  v2 = qword_28028D6E0;
  v3 = unk_28028D6E8;
  *a1 = qword_28028D6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268650008()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26864FBC4(&v5, v1, v3, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_2686500B0(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26864FBC4(&v6, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

BOOL sub_268650154(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  sub_2685BA80C(v6, v5);
  sub_2685BA80C(v4, v3);
  v7 = sub_2686131DC(v6, v5, v4, v3);
  sub_2685B593C(v4, v3);
  sub_2685B593C(v6, v5);
  return v7;
}

uint64_t static Google_Protobuf_StringValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6F8;
  v2 = qword_28028D700;
  v3 = unk_28028D708;
  *a1 = qword_28028D6F0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_StringValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 336))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = (*(a3 + 112))(), !v4))
  {
    sub_2685BA80C(v9, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v10);
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268689E94();
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return sub_268689EF4();
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_13;
    }

    v7 = v3;
    v8 = v3 >> 32;
  }

  if (v7 != v8)
  {
LABEL_13:
    sub_268689844();
  }

  return sub_268689EF4();
}

uint64_t sub_268650580@<X0>(void *a1@<X8>)
{
  if (qword_28028BE28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D6F8;
  v2 = qword_28028D700;
  v3 = unk_28028D708;
  *a1 = qword_28028D6F0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_BytesValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D718;
  v2 = qword_28028D720;
  v3 = unk_28028D728;
  *a1 = qword_28028D710;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_BytesValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 360))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2686507AC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v7)
    {
      if (a2 == a2 >> 32)
      {
        goto LABEL_10;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    MEMORY[0x26D61D8F0](1);
    v8 = sub_268689844();
    goto LABEL_10;
  }

  if (v7 == 2 && *(a2 + 16) != *(a2 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return v8;
    }

    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
LABEL_17:
    if (v10 == v11)
    {
      return v8;
    }

    return sub_268689844();
  }

  if (v9)
  {
    v10 = a4;
    v11 = a4 >> 32;
    goto LABEL_17;
  }

  if ((a5 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v8;
}

uint64_t sub_26865089C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_14;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  sub_2685B301C(1);
  sub_2685B403C(": ", 2, v11);
  sub_2686637F4(a2, a3);
  v12 = *v9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v12;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
    *v9 = result;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v14 + 1;
  *(v12 + v14 + 32) = 10;
  *v9 = v12;
LABEL_14:
  v15 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v15)
    {
      if (a4 == a4 >> 32)
      {
        return result;
      }
    }

    else if ((a5 & 0xFF000000000000) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v15 == 2 && *(a4 + 16) != *(a4 + 24))
  {
LABEL_22:
    if (*(v9 + 64) == 1)
    {
      return sub_26863B108(a4, a5, v9);
    }
  }

  return result;
}

uint64_t Google_Protobuf_BytesValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v12 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v12)
  {
    if (v8 == v8 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v13 = v3[3];
  v14 = v3[2];
  result = (*(a3 + 120))(*v3, v3[1], 1, a2, a3);
  if (v4)
  {
    return result;
  }

  v10 = v14;
  v11 = v13;
LABEL_11:
  v16 = v10;
  v17 = v11;
  sub_2685BA80C(v10, v11);
  UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
  return sub_2685B593C(v16, v17);
}

BOOL static Google_Protobuf_BytesValue.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_2686131DC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

uint64_t Google_Protobuf_BytesValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2686507AC(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

double sub_268650C94@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  a1[1] = xmmword_26868A5E0;
  return result;
}

uint64_t sub_268650CF0@<X0>(void *a1@<X8>)
{
  if (qword_28028BE30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D718;
  v2 = qword_28028D720;
  v3 = unk_28028D728;
  *a1 = qword_28028D710;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268650D98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2686507AC(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t sub_268650E4C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  sub_2686507AC(&v7, v2, v3, v5, v4);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

BOOL sub_268650EFC(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_2686131DC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6;
}

unint64_t sub_268650F9C(uint64_t a1)
{
  result = sub_268650FC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268650FC4()
{
  result = qword_28028D730;
  if (!qword_28028D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D730);
  }

  return result;
}

unint64_t sub_268651044()
{
  result = qword_28028D738;
  if (!qword_28028D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D738);
  }

  return result;
}

unint64_t sub_268651098()
{
  result = qword_28028D740;
  if (!qword_28028D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D740);
  }

  return result;
}

unint64_t sub_2686510F0()
{
  result = qword_28028D748;
  if (!qword_28028D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D748);
  }

  return result;
}

unint64_t sub_268651144(uint64_t a1)
{
  result = sub_26865116C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26865116C()
{
  result = qword_28028D750;
  if (!qword_28028D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D750);
  }

  return result;
}