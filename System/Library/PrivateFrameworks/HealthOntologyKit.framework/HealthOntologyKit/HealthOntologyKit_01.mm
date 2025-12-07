uint64_t sub_2519D3AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v11 = sub_2519F09C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v55);
  sub_2519D9FD4(a2, a3, &v55, a4);
  result = sub_2519CC228(&v55);
  if (!v6)
  {
    v50 = v15;
    v51 = v12;
    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      return LOBYTE(v53);
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      v55 = 0x2820656E6F6ELL;
      v56 = 0xE600000000000000;
      v17 = sub_2519F0F18();
      MEMORY[0x253089BD0](v17);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v53);
    }

    sub_2519DA6C4(a1, &v55);
    result = swift_dynamicCast();
    if (!result)
    {
      return 256;
    }

    v19 = *&v53;
    v18 = v54;
    v20 = HIBYTE(v54) & 0xF;
    v21 = *&v53 & 0xFFFFFFFFFFFFLL;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v22 = *&v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if ((v54 & 0x1000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          v55 = *&v53;
          v56 = v54 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v53) == 43)
          {
            if (v20)
            {
              if (--v20)
              {
                v24 = 0;
                v34 = &v55 + 1;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    break;
                  }

                  v24 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v53) != 45)
          {
            if (v20)
            {
              v24 = 0;
              v39 = &v55;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                v41 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                v39 = (v39 + 1);
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v20)
          {
            if (--v20)
            {
              v24 = 0;
              v28 = &v55 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v30 - v29;
                if (__OFSUB__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v53 & 0x1000000000000000) != 0)
          {
            result = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_2519F0D08();
          }

          v23 = *result;
          if (v23 == 43)
          {
            if (v21 >= 1)
            {
              v20 = v21 - 1;
              if (v21 != 1)
              {
                v24 = 0;
                if (result)
                {
                  v31 = (result + 1);
                  while (1)
                  {
                    v32 = *v31 - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_69;
                    }

                    v33 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v24 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_69;
                    }

                    ++v31;
                    if (!--v20)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v23 != 45)
          {
            if (v21)
            {
              v24 = 0;
              if (result)
              {
                while (1)
                {
                  v37 = *result - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_69;
                  }

                  v38 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v21)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v24 = 0;
            LOBYTE(v20) = 1;
LABEL_70:
            LOBYTE(v53) = v20;
            if (v20)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v21 >= 1)
          {
            v20 = v21 - 1;
            if (v21 != 1)
            {
              v24 = 0;
              if (result)
              {
                v25 = (result + 1);
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_69;
                  }

                  v27 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    goto LABEL_69;
                  }

                  ++v25;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v24 = sub_2519D8B48(v19, v18, 10);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_71:
        v55 = 0x2820656E6F6ELL;
        v56 = 0xE600000000000000;
        v53 = *&v24;
        v42 = sub_2519F0F18();
        MEMORY[0x253089BD0](v42);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v55 = 0;
    if (sub_2519D9548(v19, v18, &v55))
    {
      MEMORY[0x253089DC0](*&v55);
    }

    v44 = v50;
    v43 = v51;
    sub_2519F09B8();
    v45 = sub_2519F09A8();
    v47 = v46;

    (*(v43 + 8))(v44, v11);
    if (v47 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v45, v47);

      return v55;
    }

    return 256;
  }

  return result;
}

uint64_t sub_2519D412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v11 = sub_2519F09C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v55);
  sub_2519D9FD4(a2, a3, &v55, a4);
  result = sub_2519CC228(&v55);
  if (!v6)
  {
    v50 = v15;
    v51 = v12;
    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      return LOWORD(v53);
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      v55 = 0x2820656E6F6ELL;
      v56 = 0xE600000000000000;
      v17 = sub_2519F0F18();
      MEMORY[0x253089BD0](v17);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v53);
    }

    sub_2519DA6C4(a1, &v55);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0x10000;
    }

    v19 = *&v53;
    v18 = v54;
    v20 = HIBYTE(v54) & 0xF;
    v21 = *&v53 & 0xFFFFFFFFFFFFLL;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v22 = *&v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if ((v54 & 0x1000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          v55 = *&v53;
          v56 = v54 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v53) == 43)
          {
            if (v20)
            {
              if (--v20)
              {
                v24 = 0;
                v34 = &v55 + 1;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    break;
                  }

                  v24 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v53) != 45)
          {
            if (v20)
            {
              v24 = 0;
              v39 = &v55;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                v41 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                v39 = (v39 + 1);
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v20)
          {
            if (--v20)
            {
              v24 = 0;
              v28 = &v55 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v30 - v29;
                if (__OFSUB__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v53 & 0x1000000000000000) != 0)
          {
            result = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_2519F0D08();
          }

          v23 = *result;
          if (v23 == 43)
          {
            if (v21 >= 1)
            {
              v20 = v21 - 1;
              if (v21 != 1)
              {
                v24 = 0;
                if (result)
                {
                  v31 = (result + 1);
                  while (1)
                  {
                    v32 = *v31 - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_69;
                    }

                    v33 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v24 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_69;
                    }

                    ++v31;
                    if (!--v20)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v23 != 45)
          {
            if (v21)
            {
              v24 = 0;
              if (result)
              {
                while (1)
                {
                  v37 = *result - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_69;
                  }

                  v38 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v21)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v24 = 0;
            LOBYTE(v20) = 1;
LABEL_70:
            LOBYTE(v53) = v20;
            if (v20)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v21 >= 1)
          {
            v20 = v21 - 1;
            if (v21 != 1)
            {
              v24 = 0;
              if (result)
              {
                v25 = (result + 1);
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_69;
                  }

                  v27 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    goto LABEL_69;
                  }

                  ++v25;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v24 = sub_2519D8B48(v19, v18, 10);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_71:
        v55 = 0x2820656E6F6ELL;
        v56 = 0xE600000000000000;
        v53 = *&v24;
        v42 = sub_2519F0F18();
        MEMORY[0x253089BD0](v42);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v55 = 0;
    if (sub_2519D9548(v19, v18, &v55))
    {
      MEMORY[0x253089DC0](*&v55);
    }

    v44 = v50;
    v43 = v51;
    sub_2519F09B8();
    v45 = sub_2519F09A8();
    v47 = v46;

    (*(v43 + 8))(v44, v11);
    if (v47 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v45, v47);

      return v55;
    }

    return 0x10000;
  }

  return result;
}

uint64_t sub_2519D47A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v135 = a7;
  v150 = a4;
  v151 = a5;
  v149 = a3;
  v134 = a1;
  v144 = a8;
  v10 = sub_2519F09C8();
  v139 = *(v10 - 8);
  v140 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v141 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2519F0C08();
  v148 = *(v143 - 8);
  v14 = MEMORY[0x28223BE20](v143, v13);
  v136 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v137 = &v132 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v138 = &v132 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v142 = &v132 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v132 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v146 = &v132 - v31;
  v147 = a6;
  v145 = *(a6 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = (&v132 - v38);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = &v132 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = (&v132 - v46);
  v49 = MEMORY[0x28223BE20](v45, v48);
  v51 = &v132 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v132 - v53;
  v55 = a2;
  sub_2519DA6C4(a2, v154);
  v56 = v155;
  sub_2519D9FD4(v149, v150, v154, v151);
  result = sub_2519CC228(v154);
  if (!v56)
  {
    v150 = v47;
    v151 = v51;
    v149 = v43;
    v133 = v39;
    v132 = v35;
    v155 = 0;
    v58 = v148;
    v59 = v55;
    sub_2519DA6C4(v55, v154);
    v61 = v146;
    v60 = v147;
    v62 = swift_dynamicCast();
    v63 = v145;
    v64 = *(v145 + 56);
    if (v62)
    {
      v64(v61, 0, 1, v60);
      v65 = *(v63 + 32);
      v65(v54, v61, v60);
      v66 = v144;
      v65(v144, v54, v60);
      v67 = v66;
      v68 = v60;
      return (v64)(v67, 0, 1, v68);
    }

    v64(v61, 1, 1, v60);
    v69 = v59;
    v70 = *(v58 + 8);
    v148 = v58 + 8;
    v70(v61, v143);
    v71 = v69;
    sub_2519DA6C4(v69, v154);
    if (swift_dynamicCast())
    {
      v72 = v28;
      sub_2519D8080(*&v152, v60, v28);
      v73 = v63;
      if ((*(v63 + 48))(v72, 1, v60) != 1)
      {
        v89 = *(v63 + 32);
        v90 = v151;
        v89(v151, v72, v60);
        v91 = v144;
        v89(v144, v90, v60);
        v67 = v91;
        v68 = v60;
        return (v64)(v67, 0, 1, v68);
      }

      v70(v72, v143);
    }

    else
    {
      v73 = v63;
    }

    v74 = v155;
    sub_2519DA6C4(v71, v154);
    if (swift_dynamicCast())
    {
      v75 = v142;
      sub_2519D83E0(v60, v142, v152);
      if ((*(v73 + 48))(v75, 1, v60) != 1)
      {
        v92 = *(v73 + 32);
        v93 = v150;
        v92(v150, v75, v60);
        goto LABEL_89;
      }

      v70(v75, v143);
    }

    sub_2519DA6C4(v71, v154);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_86:
      v122 = v144;
      v123 = 1;
      return (v64)(v122, v123, 1, v60);
    }

    v77 = *&v152;
    v76 = v153;
    v78 = HIBYTE(v153) & 0xF;
    v79 = *&v152 & 0xFFFFFFFFFFFFLL;
    if ((v153 & 0x2000000000000000) != 0)
    {
      v80 = HIBYTE(v153) & 0xF;
    }

    else
    {
      v80 = *&v152 & 0xFFFFFFFFFFFFLL;
    }

    v81 = v74;
    v155 = v153;
    v150 = v70;
    v151 = *&v152;
    if (!v80)
    {
      goto LABEL_79;
    }

    if ((v153 & 0x1000000000000000) != 0)
    {

      v129 = sub_2519D8B48(v151, v155, 10);
      v131 = v130;

      v77 = v151;
      v76 = v155;
      v81 = v74;
      if ((v131 & 1) == 0)
      {
        v83 = v129;
        goto LABEL_77;
      }

LABEL_79:
      v154[0] = 0.0;
      if (!sub_2519D9548(v77, v76, v154))
      {
        v115 = v141;
LABEL_83:
        sub_2519F09B8();
        v116 = sub_2519F09A8();
        v117 = v115;
        v119 = v118;

        (*(v139 + 8))(v117, v140);
        if (v119 >> 60 != 15)
        {
          sub_2519F0828();
          swift_allocObject();
          v120 = v60;
          sub_2519F0818();
          v121 = v136;
          sub_2519F0808();
          if (!v81)
          {
            sub_2519DA720(v116, v119);

            v64(v121, 0, 1, v60);
            v126 = *(v73 + 32);
            v127 = v132;
            v126(v132, v121, v60);
            v128 = v144;
            v126(v144, v127, v120);
            return (v64)(v128, 0, 1, v120);
          }

          sub_2519DA720(v116, v119);

          v64(v121, 1, 1, v60);
          v150(v121, v143);
        }

        goto LABEL_86;
      }

      v113 = v137;
      sub_2519D83E0(v60, v137, v154[0]);
      v114 = (*(v73 + 48))(v113, 1, v60);
      v115 = v141;
      if (v114 == 1)
      {
        v150(v113, v143);
        goto LABEL_83;
      }

      v92 = *(v73 + 32);
      v93 = v133;
      v92(v133, v113, v60);
LABEL_89:
      v125 = v144;
      v92(v144, v93, v60);
      v122 = v125;
      v123 = 0;
      return (v64)(v122, v123, 1, v60);
    }

    if ((v153 & 0x2000000000000000) != 0)
    {
      v154[0] = v152;
      *&v154[1] = v153 & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v152) == 43)
      {
        if (v78)
        {
          if (--v78)
          {
            v83 = 0;
            v102 = v154 + 1;
            while (1)
            {
              v103 = *v102 - 48;
              if (v103 > 9)
              {
                break;
              }

              v104 = (v83 * 10) >> 64;
              v105 = 10 * v83;
              if (v104 != v105 >> 63)
              {
                break;
              }

              v88 = __OFADD__(v105, v103);
              v83 = v105 + v103;
              if (v88)
              {
                break;
              }

              ++v102;
              if (!--v78)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_99:
        __break(1u);
        return result;
      }

      if (LOBYTE(v152) != 45)
      {
        if (v78)
        {
          v83 = 0;
          v108 = v154;
          while (1)
          {
            v109 = *v108 - 48;
            if (v109 > 9)
            {
              break;
            }

            v110 = (v83 * 10) >> 64;
            v111 = 10 * v83;
            if (v110 != v111 >> 63)
            {
              break;
            }

            v88 = __OFADD__(v111, v109);
            v83 = v111 + v109;
            if (v88)
            {
              break;
            }

            v108 = (v108 + 1);
            if (!--v78)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v78)
      {
        if (--v78)
        {
          v83 = 0;
          v94 = v154 + 1;
          while (1)
          {
            v95 = *v94 - 48;
            if (v95 > 9)
            {
              break;
            }

            v96 = (v83 * 10) >> 64;
            v97 = 10 * v83;
            if (v96 != v97 >> 63)
            {
              break;
            }

            v88 = __OFSUB__(v97, v95);
            v83 = v97 - v95;
            if (v88)
            {
              break;
            }

            ++v94;
            if (!--v78)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((*&v152 & 0x1000000000000000) != 0)
      {
        result = (v153 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2519F0D08();
        v77 = v151;
        v76 = v155;
        v81 = v74;
      }

      v82 = *result;
      if (v82 == 43)
      {
        if (v79 >= 1)
        {
          v78 = v79 - 1;
          if (v79 != 1)
          {
            v83 = 0;
            if (result)
            {
              v98 = (result + 1);
              while (1)
              {
                v99 = *v98 - 48;
                if (v99 > 9)
                {
                  goto LABEL_75;
                }

                v100 = (v83 * 10) >> 64;
                v101 = 10 * v83;
                if (v100 != v101 >> 63)
                {
                  goto LABEL_75;
                }

                v88 = __OFADD__(v101, v99);
                v83 = v101 + v99;
                if (v88)
                {
                  goto LABEL_75;
                }

                ++v98;
                if (!--v78)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_98;
      }

      if (v82 != 45)
      {
        if (v79)
        {
          v83 = 0;
          if (result)
          {
            while (1)
            {
              v106 = *result - 48;
              if (v106 > 9)
              {
                goto LABEL_75;
              }

              v107 = 10 * v83;
              if ((v83 * 10) >> 64 != (10 * v83) >> 63)
              {
                goto LABEL_75;
              }

              v83 = v107 + v106;
              if (__OFADD__(v107, v106))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v79)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v83 = 0;
        LOBYTE(v78) = 1;
LABEL_76:
        LOBYTE(v152) = v78;
        if ((v78 & 1) == 0)
        {
LABEL_77:
          v112 = v138;
          sub_2519D8080(v83, v60, v138);
          if ((*(v73 + 48))(v112, 1, v60) != 1)
          {

            v124 = v112;
            v92 = *(v73 + 32);
            v93 = v149;
            v92(v149, v124, v60);
            goto LABEL_89;
          }

          v150(v112, v143);
          v81 = v74;
          v76 = v155;
          v77 = v151;
          goto LABEL_79;
        }

        goto LABEL_79;
      }

      if (v79 >= 1)
      {
        v78 = v79 - 1;
        if (v79 != 1)
        {
          v83 = 0;
          if (result)
          {
            v84 = (result + 1);
            while (1)
            {
              v85 = *v84 - 48;
              if (v85 > 9)
              {
                goto LABEL_75;
              }

              v86 = (v83 * 10) >> 64;
              v87 = 10 * v83;
              if (v86 != v87 >> 63)
              {
                goto LABEL_75;
              }

              v88 = __OFSUB__(v87, v85);
              v83 = v87 - v85;
              if (v88)
              {
                goto LABEL_75;
              }

              ++v84;
              if (!--v78)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v78) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  return result;
}

uint64_t sub_2519D53D8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v44 = a3;
  v9 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v10 = a2[5];
  v36 = a2[3];
  v11 = sub_2519F1178();
  (*(v9 + 32))(&v40, v11);

  v12 = *(&v41 + 1);
  sub_2519CC228(&v40);
  if (v12)
  {
    v13 = v44;
    result = sub_2519D0C34(a1, a2, v44, a4, a5);
    if (!v39)
    {
      return (*(*(v13 - 8) + 56))(a5, 0, 1, v13);
    }
  }

  else
  {
    v15 = a1;
    v16 = v44;
    if (swift_conformsToProtocol2() && (v18 = v16) != 0)
    {
      v19 = type metadata accessor for HgQLDecoderCore(0, a2[2], a2[4], v17);
      *(&v41 + 1) = &type metadata for PlaceholderRow;
      WitnessTable = sub_2519DA2F4();
      v20 = v6[5];
      sub_2519D9D70(0);
      v21 = v18;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2519F3F20;
      *(inited + 56) = v36;
      *(inited + 64) = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, v15, v36);
      v43 = v20;

      sub_2519D8A3C(inited);
      v24 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v40, 0, 0, v43);
      v25 = v6[6];

      swift_beginAccess();
      v24[10] = v25;

      *(&v41 + 1) = v19;
      WitnessTable = swift_getWitnessTable();
      *&v40 = v24;
      result = sub_2519F0B88();
      if (!v39)
      {
        return (*(*(v21 - 8) + 56))(a5, 0, 1, v21);
      }
    }

    else
    {
      v26 = v6[6];
      if (qword_27F46CD80 != -1)
      {
        swift_once();
      }

      v27 = sub_2519F0D58();
      v28 = __swift_project_value_buffer(v27, qword_27F46D5D0);
      v29 = a5;
      if (*(v26 + 16))
      {
        v30 = sub_2519EA784(v28);
        if (v31)
        {
          sub_2519CEBFC(*(v26 + 56) + 32 * v30, &v40);
          sub_2519F0BB8();
          if (swift_dynamicCast())
          {
            *&v40 = v43;
            swift_getWitnessTable();
            sub_2519F0B48();
            v32 = sub_2519F1178();
            v34 = v33;
            sub_2519D9DD8(0, &qword_27F46D700, &protocol descriptor for HgQLResultRowDecodable);
            v40 = 0u;
            v41 = 0u;
            WitnessTable = 0;
            v35 = sub_2519F0D28();

            sub_2519D9FD4(v32, v34, &v40, v35);
            if (v39)
            {
              sub_2519CC228(&v40);
            }

            sub_2519CC228(&v40);

            v29 = a5;
          }
        }
      }

      return (*(*(v44 - 8) + 56))(v29, 1, 1);
    }
  }

  return result;
}

uint64_t sub_2519D5880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2519F0CE8();
  swift_allocError();
  v7 = v6;
  sub_2519D9D70(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2519F3F20;
  v9 = *(a3 + 24);
  *(inited + 56) = v9;
  *(inited + 64) = *(a3 + 40);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);

  sub_2519D8A3C(inited);
  sub_2519F0CC8();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84168], v5);
  return swift_willThrow();
}

uint64_t sub_2519D59E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2519F0CE8();
  swift_allocError();
  v6 = v5;
  sub_2519D9D70(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2519F3F20;
  v8 = *(a2 + 24);
  *(inited + 56) = v8;
  *(inited + 64) = *(a2 + 40);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);

  sub_2519D8A3C(inited);
  sub_2519F0CC8();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84168], v4);
  return swift_willThrow();
}

uint64_t sub_2519D5B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for HgQLDecoderCore(0, *(a1 + 16), *(a1 + 32), a3);
  sub_2519D986C(v3, v9);
  v6 = *(v3 + 40);

  v7 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(v9, 0, 0, v6);
  a2[3] = v5;
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v7;
  return result;
}

uint64_t sub_2519D5BE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = type metadata accessor for HgQLDecoderCore(0, a2[2], a2[4], a4);
  sub_2519D986C(v4, v15);
  v9 = *(v4 + 40);
  sub_2519D9D70(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2519F3F20;
  v11 = a2[3];
  *(inited + 56) = v11;
  *(inited + 64) = a2[5];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  sub_2519D8A3C(inited);
  v13 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(v15, 0, 0, v9);
  a3[3] = v8;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v13;
  return result;
}

uint64_t sub_2519D5D64(uint64_t a1, void *a2)
{
  sub_2519D0C34(a1, a2, MEMORY[0x277D839B0], MEMORY[0x277D839D0], &v5);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_2519D5DB0(uint64_t a1, void *a2)
{
  result = sub_2519D0C34(a1, a2, MEMORY[0x277D837D0], MEMORY[0x277D83808], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

double sub_2519D5DF8(uint64_t a1, void *a2)
{
  sub_2519D0C34(a1, a2, MEMORY[0x277D839F8], MEMORY[0x277D83A30], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

float sub_2519D5E40(uint64_t a1, void *a2)
{
  sub_2519D0C34(a1, a2, MEMORY[0x277D83A90], MEMORY[0x277D83AC8], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2519D5FB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2519D0C34(a1, a2, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2519D6018(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2519D0C34(a1, a2, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2519D6078(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2519D0C34(a1, a2, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2519D60D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_2519D0C34(a1, a2, a4, a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2519D6180()
{
  result = sub_2519F0FB8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2519D61D0()
{
  result = sub_2519F0FC8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2519D6278()
{
  result = sub_2519F0FE8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2519D62C8()
{
  result = sub_2519F0FD8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2519D6408()
{
  result = sub_2519F0FF8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2519D6458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2519D6510()
{
  sub_2519DA808(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2519F0D58();
  __swift_allocate_value_buffer(v4, qword_27F46D5D0);
  v5 = __swift_project_value_buffer(v4, qword_27F46D5D0);
  sub_2519F0D48();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.groupRowsKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F46CD80 != -1)
  {
    swift_once();
  }

  v2 = sub_2519F0D58();
  v3 = __swift_project_value_buffer(v2, qword_27F46D5D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2519D66E0()
{
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 32))(&v8, v0[5], v0[6], v2, v3);
  if (!*(&v9 + 1))
  {
    sub_2519CC228(&v8);
LABEL_6:
    v4 = sub_2519F0CE8();
    swift_allocError();
    v6 = v5;
    sub_2519C5C78(0);
    *v6 = MEMORY[0x277D839B0];

    sub_2519F0CC8();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
    return v4 & 1;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  LOBYTE(v4) = sub_2519D14CC(v11, 0, 0, 0);
  sub_2519CC398(v11);
  if (!v1 && v4 == 2)
  {
    goto LABEL_6;
  }

  return v4 & 1;
}

unsigned __int8 *sub_2519D6874()
{
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 32))(&v10, v0[5], v0[6], v2, v3);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
LABEL_6:
    v4 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = MEMORY[0x277D837D0];

    sub_2519F0CC8();
    (*(*(v4 - 8) + 104))(v8, *MEMORY[0x277D84160], v4);
    swift_willThrow();
    return v4;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v4 = sub_2519D1B28(v13, 0, 0, 0);
  v6 = v5;
  sub_2519CC398(v13);
  if (!v1 && !v6)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_2519D6A00()
{
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 32))(&v10, v0[5], v0[6], v2, v3);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
LABEL_6:
    v7 = sub_2519F0CE8();
    swift_allocError();
    v9 = v8;
    sub_2519C5C78(0);
    *v9 = MEMORY[0x277D839F8];

    sub_2519F0CC8();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    return swift_willThrow();
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  sub_2519D218C(v13, 0, 0, 0);
  if (v1)
  {
    return sub_2519CC398(v13);
  }

  v6 = v4;
  result = sub_2519CC398(v13);
  if (v6)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2519D6B98()
{
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 32))(&v11, v0[5], v0[6], v2, v3);
  if (!*(&v12 + 1))
  {
    sub_2519CC228(&v11);
LABEL_6:
    v7 = MEMORY[0x277D83A90];
    v8 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    sub_2519C5C78(0);
    *v10 = v7;

    sub_2519F0CC8();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
    return swift_willThrow();
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  v4 = sub_2519D2DBC(v14, 0, 0, 0, MEMORY[0x277D83A90], MEMORY[0x277D83AC8]);
  if (v1)
  {
    return sub_2519CC398(v14);
  }

  v6 = v4;
  result = sub_2519CC398(v14);
  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2519D6D3C()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v11, v0[5], v0[6], v3, v4);
  if (!*(&v12 + 1))
  {
    sub_2519CC228(&v11);
    goto LABEL_6;
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  v5 = sub_2519D27F4(v14, 0, 0, 0);
  if (!v1)
  {
    v2 = v5;
    v7 = v6;
    sub_2519CC398(v14);
    if ((v7 & 1) == 0)
    {
      return v2;
    }

LABEL_6:
    v2 = sub_2519F0CE8();
    swift_allocError();
    v9 = v8;
    sub_2519C5C78(0);
    *v9 = MEMORY[0x277D83B88];

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v9, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v14);
  return v2;
}

uint64_t sub_2519D6ED8()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D3AB4(v13, 0, 0, 0, MEMORY[0x277D84900], MEMORY[0x277D84928]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x100) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D84900];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D7080()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D412C(v13, 0, 0, 0, MEMORY[0x277D84958], MEMORY[0x277D84980]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x10000) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D84958];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D7220()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D2DBC(v13, 0, 0, 0, MEMORY[0x277D849A8], MEMORY[0x277D849D8]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x100000000) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D849A8];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D73C0()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v12, v0[5], v0[6], v3, v4);
  if (!*(&v13 + 1))
  {
    sub_2519CC228(&v12);
    goto LABEL_6;
  }

  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  v5 = sub_2519D3440(v15, 0, 0, 0, MEMORY[0x277D84A28], MEMORY[0x277D84A58]);
  if (!v1)
  {
    v2 = v5;
    v7 = v6;
    sub_2519CC398(v15);
    if ((v7 & 1) == 0)
    {
      return v2;
    }

LABEL_6:
    v8 = MEMORY[0x277D84A28];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    sub_2519C5C78(0);
    *v10 = v8;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v10, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v15);
  return v2;
}

uint64_t sub_2519D7564()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v12, v0[5], v0[6], v3, v4);
  if (!*(&v13 + 1))
  {
    sub_2519CC228(&v12);
    goto LABEL_6;
  }

  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  v5 = sub_2519D3440(v15, 0, 0, 0, MEMORY[0x277D83E88], MEMORY[0x277D83EB0]);
  if (!v1)
  {
    v2 = v5;
    v7 = v6;
    sub_2519CC398(v15);
    if ((v7 & 1) == 0)
    {
      return v2;
    }

LABEL_6:
    v8 = MEMORY[0x277D83E88];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    sub_2519C5C78(0);
    *v10 = v8;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v10, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v15);
  return v2;
}

uint64_t sub_2519D7710()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D3AB4(v13, 0, 0, 0, MEMORY[0x277D84B78], MEMORY[0x277D84BA0]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x100) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D84B78];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D78B0()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D412C(v13, 0, 0, 0, MEMORY[0x277D84C58], MEMORY[0x277D84C88]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x10000) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D84C58];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D7A50()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v10, v0[5], v0[6], v3, v4);
  if (!*(&v11 + 1))
  {
    sub_2519CC228(&v10);
    goto LABEL_6;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v5 = sub_2519D2DBC(v13, 0, 0, 0, MEMORY[0x277D84CC0], MEMORY[0x277D84CF0]);
  if (!v1)
  {
    v2 = v5;
    sub_2519CC398(v13);
    if ((v2 & 0x100000000) == 0)
    {
      return v2;
    }

LABEL_6:
    v6 = MEMORY[0x277D84CC0];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v8 = v7;
    sub_2519C5C78(0);
    *v8 = v6;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v8, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v13);
  return v2;
}

uint64_t sub_2519D7BF0()
{
  v2 = v1;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 32))(&v12, v0[5], v0[6], v3, v4);
  if (!*(&v13 + 1))
  {
    sub_2519CC228(&v12);
    goto LABEL_6;
  }

  v15[0] = v12;
  v15[1] = v13;
  v16 = v14;
  v5 = sub_2519D3440(v15, 0, 0, 0, MEMORY[0x277D84D38], MEMORY[0x277D84D68]);
  if (!v1)
  {
    v2 = v5;
    v7 = v6;
    sub_2519CC398(v15);
    if ((v7 & 1) == 0)
    {
      return v2;
    }

LABEL_6:
    v8 = MEMORY[0x277D84D38];
    v2 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    sub_2519C5C78(0);
    *v10 = v8;

    sub_2519F0CC8();
    (*(*(v2 - 8) + 104))(v10, *MEMORY[0x277D84160], v2);
    swift_willThrow();
    return v2;
  }

  sub_2519CC398(v15);
  return v2;
}

uint64_t sub_2519D7D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v22 = a4;
  v8 = sub_2519F0C08();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - v10;
  v12 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v12);
  (*(v13 + 32))(&v23, v4[5], v4[6], v12, v13);
  if (*(&v24 + 1))
  {
    v26[0] = v23;
    v26[1] = v24;
    v27 = v25;
    sub_2519D47A4(a2, v26, 0, 0, 0, a2, a3, v11);
    result = sub_2519CC398(v26);
    if (v5)
    {
      return result;
    }

    v15 = *(a2 - 8);
    if ((*(v15 + 48))(v11, 1, a2) != 1)
    {
      return (*(v15 + 32))(v22, v11, a2);
    }

    (*(v21 + 8))(v11, v8);
  }

  else
  {
    sub_2519CC228(&v23);
  }

  v16 = sub_2519F0CE8();
  swift_allocError();
  v18 = v17;
  sub_2519C5C78(0);
  *v18 = a2;
  *&v26[0] = 0x6465746365707845;
  *(&v26[0] + 1) = 0xEB00000000206120;

  v19 = sub_2519F11B8();
  MEMORY[0x253089BD0](v19);

  sub_2519F0CC8();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
  return swift_willThrow();
}

uint64_t sub_2519D8080@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = sub_2519F0C08();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v35 - v14;
  v16 = *(a2 - 8);
  v18 = MEMORY[0x28223BE20](v13, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v35 - v22;
  v39 = a1;
  v24 = swift_dynamicCast();
  v25 = *(v16 + 56);
  if (v24)
  {
    v25(v15, 0, 1, a2);
    v26 = *(v16 + 32);
    v26(v23, v15, a2);
    v26(a3, v23, a2);
    v27 = 0;
  }

  else
  {
    v36 = a3;
    v25(v15, 1, 1, a2);
    v28 = *(v38 + 8);
    v38 += 8;
    v29 = v28;
    v28(v15, v37);
    v39 = 0x2820656E6F6ELL;
    v40 = 0xE600000000000000;
    v42 = a1;
    v30 = sub_2519F0F18();
    MEMORY[0x253089BD0](v30);

    MEMORY[0x253089BD0](41, 0xE100000000000000);
    v31 = v39;
    v32 = v40;
    v39 = a1;
    v40 = v31;
    v41 = v32;
    if (swift_dynamicCast())
    {
      v25(v11, 0, 1, a2);
      v33 = *(v16 + 32);
      v33(v20, v11, a2);
      a3 = v36;
      v33(v36, v20, a2);
      v27 = 0;
    }

    else
    {
      v25(v11, 1, 1, a2);
      v29(v11, v37);
      v27 = 1;
      a3 = v36;
    }
  }

  return (v25)(a3, v27, 1, a2);
}

uint64_t sub_2519D83E0@<X0>(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>)
{
  v38 = sub_2519F0C08();
  v6 = *(v38 - 8);
  v8 = MEMORY[0x28223BE20](v38, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v37 - v13;
  v15 = *(a1 - 8);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v37 - v21;
  v42 = a3;
  v23 = swift_dynamicCast();
  v24 = *(v15 + 56);
  if (v23)
  {
    v24(v14, 0, 1, a1);
    v25 = *(v15 + 32);
    v25(v22, v14, a1);
    v26 = a2;
    v27 = v22;
  }

  else
  {
    v24(v14, 1, 1, a1);
    v28 = *(v6 + 8);
    v29 = v14;
    v30 = v38;
    v31 = v28(v29, v38);
    v39 = MEMORY[0x253089DC0](v31, a3);
    v40 = v32;
    v41 = v33;
    type metadata accessor for Decimal(0);
    if (!swift_dynamicCast())
    {
      v24(v10, 1, 1, a1);
      v28(v10, v30);
      v34 = a2;
      v35 = 1;
      return (v24)(v34, v35, 1, a1);
    }

    v24(v10, 0, 1, a1);
    v25 = *(v15 + 32);
    v25(v19, v10, a1);
    v26 = a2;
    v27 = v19;
  }

  v25(v26, v27, a1);
  v34 = a2;
  v35 = 0;
  return (v24)(v34, v35, 1, a1);
}

BOOL sub_2519D86E8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 32))(v5, v0[5], v0[6], v1, v2);
  v3 = v5[3] == 0;
  sub_2519CC228(v5);
  return v3;
}

void *sub_2519D8904(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2519DA7B4(0, &qword_27F46D730, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2519D8990(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_2519D8A3C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2519E0308(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2519D9DD8(0, &qword_27F46D6F8, MEMORY[0x277D84F00]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2519D8B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2519F0A68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2519D90D4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2519F0D08();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2519D90D4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2519F0A78();
  v6 = sub_2519D9154(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2519D9154(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2519F0C18();
    if (!v9 || (v10 = v9, v11 = sub_2519D8904(v9, 0), v12 = sub_2519D92AC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2519F09E8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2519F09E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2519F0D08();
LABEL_4:

  return sub_2519F09E8();
}

unint64_t sub_2519D92AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2519D94CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2519F0A48();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2519F0D08();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2519D94CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2519F0A28();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2519D94CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2519F0A58();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x253089C00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2519D9548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_2519F0C98();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_2519D96A8(uint64_t a1)
{
  sub_2519DA8C4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2519DA930(0);
    v9 = sub_2519F0DC8();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2519DA99C(v11, v7);
      result = sub_2519EA784(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_2519F0D58();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_2519CC0D8(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2519D986C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2519D98E8()
{
  result = qword_27F46D5E8[0];
  if (!qword_27F46D5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46D5E8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();
}

uint64_t sub_2519D9BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2519D9C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2519D9C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2519D9CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2519D9D1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_2519D9D70(uint64_t a1)
{
  if (!qword_27F46D6F0)
  {
    sub_2519D9DD8(255, &qword_27F46D6F8, MEMORY[0x277D84F00]);
    v1 = sub_2519F0F28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D6F0);
    }
  }
}

uint64_t sub_2519D9DD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2519D9E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a3 + 40))(a1, a3);
  sub_2519DA7B4(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2519DA648();
  v4 = sub_2519F0A88();

  return v4;
}

uint64_t sub_2519D9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a4 + 40))(a2, a4);
  v10[0] = sub_2519F1178();
  v10[1] = v6;
  v9[2] = v10;
  v7 = sub_2519D8990(sub_2519DA588, v9, v5);

  return v7 & 1;
}

uint64_t sub_2519D9FD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = result;
  if (!a4)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = *(a4 + 16);
  if (!v5)
  {
    return result;
  }

  for (i = (a4 + 32); ; i += 5)
  {
    v8 = i[3];
    v9 = i[4];
    __swift_project_boxed_opaque_existential_1(i, v8);
    (*(v9 + 32))(v27, v29, a2, v8, v9);
    sub_2519DA3C8(a3, v22);
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    if (!v23)
    {
      break;
    }

    sub_2519DA3C8(v22, v20);
    if (!*(&v25 + 1))
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_2519F0CA8();
      MEMORY[0x253089BD0](0xD000000000000034, 0x80000002519F6D20);
      MEMORY[0x253089BD0](v29, a2);
      v10 = v18[0];
      sub_2519DA534();
      swift_allocError();
      *v11 = v10;
      *(v11 + 16) = 2;
      swift_willThrow();
      v12 = v20;
LABEL_15:
      sub_2519CC398(v12);
      return sub_2519CC228(v22);
    }

    v18[0] = v20[0];
    v18[1] = v20[1];
    v19 = v21;
    v16[0] = v24;
    v16[1] = v25;
    v17 = v26;
    if ((MEMORY[0x253089E30](v18, v16) & 1) == 0)
    {
      sub_2519F0CA8();
      MEMORY[0x253089BD0](0xD000000000000034, 0x80000002519F6D20);
      MEMORY[0x253089BD0](v29, a2);
      sub_2519DA534();
      swift_allocError();
      *v13 = 0;
      *(v13 + 8) = 0xE000000000000000;
      *(v13 + 16) = 2;
      swift_willThrow();
      sub_2519CC398(v16);
      v12 = v18;
      goto LABEL_15;
    }

    sub_2519CC398(v16);
    sub_2519CC398(v18);
    result = sub_2519CC228(v22);
LABEL_5:
    if (!--v5)
    {
      return result;
    }
  }

  if (!*(&v25 + 1))
  {
    result = sub_2519DA450(v22);
    goto LABEL_5;
  }

  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_2519F0CA8();
  MEMORY[0x253089BD0](0xD000000000000034, 0x80000002519F6D20);
  MEMORY[0x253089BD0](v29, a2);
  v14 = v20[0];
  sub_2519DA534();
  swift_allocError();
  *v15 = v14;
  *(v15 + 16) = 2;
  swift_willThrow();
  sub_2519CC228(&v24);
  return sub_2519CC228(v22);
}

unint64_t sub_2519DA2F4()
{
  result = qword_27F46D708;
  if (!qword_27F46D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D708);
  }

  return result;
}

void sub_2519DA348(uint64_t a1)
{
  if (!qword_27F46D710)
  {
    sub_2519D9DD8(255, &qword_27F46D6F8, MEMORY[0x277D84F00]);
    sub_2519F0CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D710);
    }
  }
}

uint64_t sub_2519DA3C8(uint64_t a1, uint64_t a2)
{
  sub_2519DA7B4(0, &qword_27F46D3D0, MEMORY[0x277D84030], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2519DA450(uint64_t a1)
{
  sub_2519DA4AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519DA4AC(uint64_t a1)
{
  if (!qword_27F46D718)
  {
    sub_2519DA7B4(255, &qword_27F46D3D0, MEMORY[0x277D84030], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D718);
    }
  }
}

unint64_t sub_2519DA534()
{
  result = qword_27F46D720;
  if (!qword_27F46D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D720);
  }

  return result;
}

uint64_t sub_2519DA588(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2519F0F68() & 1;
  }
}

unint64_t sub_2519DA648()
{
  result = qword_27F46D728;
  if (!qword_27F46D728)
  {
    sub_2519DA7B4(255, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D728);
  }

  return result;
}

uint64_t sub_2519DA720(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2519CB6C4(result, a2);
  }

  return result;
}

_BYTE *sub_2519DA734@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2519DA7B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2519DA808(uint64_t a1)
{
  if (!qword_27F46D738)
  {
    sub_2519F0D58();
    v1 = sub_2519F0C08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D738);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_2519DA8C4(uint64_t a1)
{
  if (!qword_27F46D740)
  {
    sub_2519F0D58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D740);
    }
  }
}

void sub_2519DA930(uint64_t a1)
{
  if (!qword_27F46D748)
  {
    sub_2519F0D58();
    v1 = sub_2519F0DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D748);
    }
  }
}

uint64_t sub_2519DA99C(uint64_t a1, uint64_t a2)
{
  sub_2519DA8C4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MockRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MockRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2519F0F68();
  }
}

uint64_t sub_2519DAA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2519F0F68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2519DAB18(uint64_t a1)
{
  v2 = sub_2519DACF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519DAB54(uint64_t a1)
{
  v2 = sub_2519DACF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockRequest.encode(to:)(void *a1)
{
  sub_2519DB6CC(0, &qword_27F46D750, sub_2519DACF8, &type metadata for MockRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DACF8();
  sub_2519F1158();
  sub_2519F0ED8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2519DACF8()
{
  result = qword_27F46D758;
  if (!qword_27F46D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D758);
  }

  return result;
}

uint64_t MockRequest.hashValue.getter()
{
  sub_2519F1098();
  sub_2519F09F8();
  return sub_2519F10D8();
}

uint64_t MockRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_2519DB6CC(0, &qword_27F46D760, sub_2519DACF8, &type metadata for MockRequest.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DACF8();
  sub_2519F1148();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_2519F0E48();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519DAF48()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2519DAF90(void *a1)
{
  sub_2519DB6CC(0, &qword_27F46D750, sub_2519DACF8, &type metadata for MockRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DACF8();
  sub_2519F1158();
  sub_2519F0ED8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2519DB0F8()
{
  sub_2519F1098();
  sub_2519F09F8();
  return sub_2519F10D8();
}

uint64_t sub_2519DB14C(uint64_t a1)
{
  sub_2519F1098();
  sub_2519F09F8();
  return sub_2519F10D8();
}

uint64_t sub_2519DB194(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2519F0F68();
  }
}

uint64_t MockResponse.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MockResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2519F0F68() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2519DB26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2519F0F68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2519DB2F0(uint64_t a1)
{
  v2 = sub_2519DB4D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519DB32C(uint64_t a1)
{
  v2 = sub_2519DB4D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockResponse.encode(to:)(void *a1)
{
  sub_2519DB6CC(0, &qword_27F46D768, sub_2519DB4D0, &type metadata for MockResponse.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DB4D0();
  sub_2519F1158();
  sub_2519F0EB8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2519DB4D0()
{
  result = qword_27F46D770;
  if (!qword_27F46D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D770);
  }

  return result;
}

uint64_t MockResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_2519DB6CC(0, &qword_27F46D778, sub_2519DB4D0, &type metadata for MockResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DB4D0();
  sub_2519F1148();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_2519F0E28();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2519DB6CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2519DB738()
{
  result = qword_27F46D780;
  if (!qword_27F46D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D780);
  }

  return result;
}

unint64_t sub_2519DB790()
{
  result = qword_27F46D788;
  if (!qword_27F46D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D788);
  }

  return result;
}

unint64_t sub_2519DB7E4(void *a1)
{
  a1[1] = sub_2519DB81C();
  a1[2] = sub_2519DB870();
  result = sub_2519DB8C4();
  a1[3] = result;
  return result;
}

unint64_t sub_2519DB81C()
{
  result = qword_27F46D790;
  if (!qword_27F46D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D790);
  }

  return result;
}

unint64_t sub_2519DB870()
{
  result = qword_27F46D798;
  if (!qword_27F46D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D798);
  }

  return result;
}

unint64_t sub_2519DB8C4()
{
  result = qword_27F46D7A0;
  if (!qword_27F46D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7A0);
  }

  return result;
}

unint64_t sub_2519DB91C()
{
  result = qword_27F46D7A8;
  if (!qword_27F46D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7A8);
  }

  return result;
}

uint64_t sub_2519DB988(void *a1)
{
  sub_2519DB6CC(0, &qword_27F46D768, sub_2519DB4D0, &type metadata for MockResponse.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DB4D0();
  sub_2519F1158();
  sub_2519F0EB8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2519DBAF0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_2519F0F68() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2519DBB58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2519DBBA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2519DBBEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2519DBC48(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2519DBCCC()
{
  result = qword_27F46D7B0;
  if (!qword_27F46D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7B0);
  }

  return result;
}

unint64_t sub_2519DBD24()
{
  result = qword_27F46D7B8;
  if (!qword_27F46D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7B8);
  }

  return result;
}

unint64_t sub_2519DBD7C()
{
  result = qword_27F46D7C0;
  if (!qword_27F46D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7C0);
  }

  return result;
}

unint64_t sub_2519DBDD4()
{
  result = qword_27F46D7C8;
  if (!qword_27F46D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7C8);
  }

  return result;
}

unint64_t sub_2519DBE2C()
{
  result = qword_27F46D7D0;
  if (!qword_27F46D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7D0);
  }

  return result;
}

unint64_t sub_2519DBE84()
{
  result = qword_27F46D7D8;
  if (!qword_27F46D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7D8);
  }

  return result;
}

uint64_t SecurelyCodableOntologyResponse.decoded<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2519F0858();
  swift_allocObject();
  sub_2519F0848();
  sub_2519F0838();
}

uint64_t sub_2519DBFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5(a1, a2, a3, a4);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

Swift::Void __swiftcall SecurelyCodableOntologyResponse.encode(with:)(NSCoder with)
{
  v2 = sub_2519F08A8();
  v3 = sub_2519F0978();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id SecurelyCodableOntologyResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_2519DC5C0();
  v4 = sub_2519F0BE8();
  if (v4)
  {
    v5 = v4;
    sub_2519F08B8();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableOntologyResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_2519DC5C0();
  v2 = sub_2519F0BE8();
  if (v2)
  {
    v3 = v2;
    sub_2519F08B8();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableOntologyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableOntologyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2519DC470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_2519F0888();
  swift_allocObject();
  sub_2519F0878();
  v7 = sub_2519F0868();
  v9 = v8;

  if (v5)
  {
    return swift_deallocPartialClassInstance();
  }

  v11 = &v4[OBJC_IVAR____TtC17HealthOntologyKit31SecurelyCodableOntologyResponse_payload];
  *v11 = v7;
  v11[1] = v9;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_2519DC5C0()
{
  result = qword_27F46D2E8;
  if (!qword_27F46D2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F46D2E8);
  }

  return result;
}

uint64_t sub_2519DC684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2519F0F68() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2519DC714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_2519DC7CC(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2519DC7CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    v6 = (v4 + 80 * v3);
    v7 = v6[1];
    v76 = *v6;
    v77 = v7;
    v8 = v6[3];
    v78 = v6[2];
    *v79 = v8;
    *&v79[9] = *(v6 + 57);
    v9 = v76;
    v10 = (v5 + 80 * v3);
    v11 = v10[3];
    v82 = v10[2];
    *v83 = v11;
    *&v83[9] = *(v10 + 57);
    v12 = v10[1];
    v80 = *v10;
    v81 = v12;
    v13 = v80;
    if (v77)
    {
      if ((v12 & 1) == 0)
      {
        sub_2519C87E8(v80, *(&v80 + 1), 0);
        sub_2519C87E8(v9, *(&v9 + 1), 1);
        sub_2519C87F4(v9, *(&v9 + 1), 1);
        v61 = *(&v13 + 1);
        v60 = v13;
        v62 = 0;
        goto LABEL_82;
      }

      v14 = *(v76 + 16);
      if (v14 != *(v80 + 16))
      {
        goto LABEL_80;
      }

      if (!v14)
      {
LABEL_19:
        sub_2519DED80(&v76, &v73);
        sub_2519DED80(&v80, &v73);
        sub_2519C87E8(v13, *(&v13 + 1), 1);
        sub_2519C87E8(v9, *(&v9 + 1), 1);
        sub_2519C87F4(v9, *(&v9 + 1), 1);
        v15 = v13;
        goto LABEL_20;
      }

      if (v76 == v80)
      {
        sub_2519DED80(&v76, &v73);
        sub_2519DED80(&v80, &v73);
        sub_2519C87E8(v9, *(&v13 + 1), 1);
        sub_2519C87E8(v9, *(&v9 + 1), 1);
        sub_2519C87F4(v9, *(&v9 + 1), 1);
        v15 = v9;
LABEL_20:
        v16 = *(&v13 + 1);
        v17 = 1;
        goto LABEL_21;
      }

      v19 = (v76 + 32);
      v20 = (v80 + 32);
      while (*v19 == *v20)
      {
        ++v19;
        ++v20;
        if (!--v14)
        {
          goto LABEL_19;
        }
      }

LABEL_80:
      sub_2519C87E8(v80, *(&v80 + 1), 1);
      sub_2519C87E8(v9, *(&v9 + 1), 1);
      v58 = *(&v9 + 1);
      v57 = v9;
      v59 = 1;
LABEL_81:
      sub_2519C87F4(v57, v58, v59);
      v61 = *(&v13 + 1);
      v60 = v13;
      v62 = 1;
LABEL_82:
      sub_2519C87F4(v60, v61, v62);
      return 0;
    }

    if (v12)
    {
      sub_2519C87E8(v80, *(&v80 + 1), 1);
      sub_2519C87E8(v9, *(&v9 + 1), 0);
      v58 = *(&v9 + 1);
      v57 = v9;
      v59 = 0;
      goto LABEL_81;
    }

    if (v76 == v80)
    {
      sub_2519DED80(&v76, &v73);
      sub_2519DED80(&v80, &v73);
      sub_2519C87E8(v9, *(&v9 + 1), 0);
      sub_2519C87E8(v9, *(&v9 + 1), 0);
      sub_2519C87F4(v9, *(&v9 + 1), 0);
      v16 = *(&v9 + 1);
      v15 = v9;
      v17 = 0;
LABEL_21:
      sub_2519C87F4(v15, v16, v17);
      goto LABEL_22;
    }

    v18 = sub_2519F0F68();
    sub_2519DED80(&v76, &v73);
    sub_2519DED80(&v80, &v73);
    sub_2519C87E8(v13, *(&v13 + 1), 0);
    sub_2519C87E8(v9, *(&v9 + 1), 0);
    sub_2519C87F4(v9, *(&v9 + 1), 0);
    sub_2519C87F4(v13, *(&v13 + 1), 0);
    if ((v18 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_22:
    v21 = *(&v81 + 1);
    v22 = v82;
    v23 = v83[0];
    v73 = *(&v77 + 1);
    v74 = v78;
    v75 = v79[0];
    v70 = *(&v81 + 1);
    v71 = v82;
    v72 = v83[0];
    sub_2519C86C4(*(&v77 + 1), v78, *(&v78 + 1), v79[0]);
    sub_2519C86C4(v21, v22, *(&v22 + 1), v23);
    LOBYTE(v21) = _s17HealthOntologyKit19PredicateDescriptorO2eeoiySbAC_ACtFZ_0(&v73, &v70, v24, v25, v26, v27, v28, v29);
    sub_2519DEE30(v70, v71, *(&v71 + 1), v72);
    sub_2519DEE30(v73, v74, *(&v74 + 1), v75);
    if ((v21 & 1) == 0)
    {
      goto LABEL_95;
    }

    v31 = *&v79[8];
    v30 = *&v79[16];
    v33 = *&v83[8];
    v32 = *&v83[16];
    v34 = v83[24];
    if (v79[24] > 1u)
    {
      break;
    }

    if (v79[24])
    {
      if (v83[24] != 1)
      {
        sub_2519C863C(*&v83[8], *&v83[16], v83[24]);
        sub_2519C863C(v31, v30, 1u);
        v66 = v31;
        v67 = v30;
        v68 = 1;
        goto LABEL_93;
      }

      if (*&v79[8] != *&v83[8] || *&v79[16] != *&v83[16])
      {
        v43 = sub_2519F0F68();
        sub_2519C863C(v33, v32, 1u);
        sub_2519C863C(v31, v30, 1u);
        sub_2519C8680(v31, v30, 1u);
        v44 = v33;
        v45 = v32;
        v46 = 1;
LABEL_57:
        sub_2519C8680(v44, v45, v46);
        sub_2519DEDDC(&v80);
        sub_2519DEDDC(&v76);
        if ((v43 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_58;
      }

      sub_2519C863C(*&v79[8], *&v79[16], 1u);
      sub_2519C863C(v31, v30, 1u);
      sub_2519C8680(v31, v30, 1u);
      v36 = v31;
      v37 = v30;
      v38 = 1;
    }

    else
    {
      if (v83[24])
      {
        sub_2519C863C(*&v83[8], *&v83[16], v83[24]);
        sub_2519C863C(v31, v30, 0);
        v66 = v31;
        v67 = v30;
        v68 = 0;
        goto LABEL_93;
      }

      if (*&v79[8] != *&v83[8] || *&v79[16] != *&v83[16])
      {
        v43 = sub_2519F0F68();
        sub_2519C863C(v33, v32, 0);
        sub_2519C863C(v31, v30, 0);
        sub_2519C8680(v31, v30, 0);
        v44 = v33;
        v45 = v32;
        v46 = 0;
        goto LABEL_57;
      }

      sub_2519C863C(*&v79[8], *&v79[16], 0);
      sub_2519C863C(v31, v30, 0);
      sub_2519C8680(v31, v30, 0);
      v36 = v31;
      v37 = v30;
      v38 = 0;
    }

LABEL_53:
    sub_2519C8680(v36, v37, v38);
LABEL_54:
    sub_2519DEDDC(&v80);
    sub_2519DEDDC(&v76);
LABEL_58:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (v79[24] == 2)
  {
    if (v83[24] == 2)
    {
      v39 = *(*&v79[8] + 16);
      if (v39 != *(*&v83[8] + 16))
      {
        goto LABEL_83;
      }

      if (v39 && *&v79[8] != *&v83[8])
      {
        v40 = (*&v79[8] + 32);
        v41 = (*&v83[8] + 32);
        while (*v40 == *v41)
        {
          ++v40;
          ++v41;
          if (!--v39)
          {
            goto LABEL_43;
          }
        }

LABEL_83:
        sub_2519C863C(*&v83[8], *&v83[16], 2u);
        sub_2519C863C(v31, v30, 2u);
        sub_2519C8680(v31, v30, 2u);
        v63 = v33;
        v64 = v32;
        v65 = 2;
        goto LABEL_94;
      }

LABEL_43:
      sub_2519C863C(*&v83[8], *&v83[16], 2u);
      sub_2519C863C(v31, v30, 2u);
      sub_2519C8680(v31, v30, 2u);
      v36 = v33;
      v37 = v32;
      v38 = 2;
      goto LABEL_53;
    }

    sub_2519C863C(*&v83[8], *&v83[16], v83[24]);
    sub_2519C863C(v31, v30, 2u);
    v66 = v31;
    v67 = v30;
    v68 = 2;
    goto LABEL_93;
  }

  if (v79[24] == 3)
  {
    if (v83[24] == 3)
    {
      v35 = *(*&v79[8] + 16);
      if (v35 != *(*&v83[8] + 16))
      {
        goto LABEL_84;
      }

      if (v35 && *&v79[8] != *&v83[8])
      {
        v69 = v4;
        v47 = (*&v79[8] + 40);
        v48 = (*&v83[8] + 40);
        while (1)
        {
          v49 = *(v47 - 1) == *(v48 - 1) && *v47 == *v48;
          if (!v49 && (sub_2519F0F68() & 1) == 0)
          {
            break;
          }

          v47 += 2;
          v48 += 2;
          if (!--v35)
          {
            sub_2519C863C(v33, v32, 3u);
            sub_2519C863C(v31, v30, 3u);
            sub_2519C8680(v31, v30, 3u);
            v53 = v33;
            v54 = v32;
            v55 = 3;
            goto LABEL_78;
          }
        }

LABEL_84:
        sub_2519C863C(v33, v32, 3u);
        sub_2519C863C(v31, v30, 3u);
        sub_2519C8680(v31, v30, 3u);
        v63 = v33;
        v64 = v32;
        v65 = 3;
        goto LABEL_94;
      }

      sub_2519C863C(*&v83[8], *&v83[16], 3u);
      sub_2519C863C(v31, v30, 3u);
      sub_2519C8680(v31, v30, 3u);
      v36 = v33;
      v37 = v32;
      v38 = 3;
      goto LABEL_53;
    }

    sub_2519C863C(*&v83[8], *&v83[16], v83[24]);
    sub_2519C863C(v31, v30, 3u);
    v66 = v31;
    v67 = v30;
    v68 = 3;
LABEL_93:
    sub_2519C8680(v66, v67, v68);
    v63 = v33;
    v64 = v32;
    v65 = v34;
    goto LABEL_94;
  }

  if (v83[24] != 4)
  {
    sub_2519C863C(*&v83[8], *&v83[16], v83[24]);
    sub_2519C863C(v31, v30, 4u);
    v66 = v31;
    v67 = v30;
    v68 = 4;
    goto LABEL_93;
  }

  v42 = *(*&v79[8] + 16);
  if (v42 != *(*&v83[8] + 16))
  {
    goto LABEL_85;
  }

  if (!v42 || *&v79[8] == *&v83[8])
  {
    sub_2519C863C(*&v83[8], *&v83[16], 4u);
    sub_2519C863C(v31, v30, 4u);
    sub_2519C8680(v31, v30, 4u);
    v36 = v33;
    v37 = v32;
    v38 = 4;
    goto LABEL_53;
  }

  v69 = v4;
  v50 = (*&v79[8] + 40);
  v51 = (*&v83[8] + 40);
  while (1)
  {
    v52 = *(v50 - 1) == *(v51 - 1) && *v50 == *v51;
    if (!v52 && (sub_2519F0F68() & 1) == 0)
    {
      break;
    }

    v50 += 2;
    v51 += 2;
    if (!--v42)
    {
      sub_2519C863C(v33, v32, 4u);
      sub_2519C863C(v31, v30, 4u);
      sub_2519C8680(v31, v30, 4u);
      v53 = v33;
      v54 = v32;
      v55 = 4;
LABEL_78:
      sub_2519C8680(v53, v54, v55);
      v4 = v69;
      goto LABEL_54;
    }
  }

LABEL_85:
  sub_2519C863C(v33, v32, 4u);
  sub_2519C863C(v31, v30, 4u);
  sub_2519C8680(v31, v30, 4u);
  v63 = v33;
  v64 = v32;
  v65 = 4;
LABEL_94:
  sub_2519C8680(v63, v64, v65);
LABEL_95:
  sub_2519DEDDC(&v80);
  sub_2519DEDDC(&v76);
  return 0;
}

uint64_t sub_2519DD1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 16);
      v6 = *i;
      v16 = *(i - 1);
      v7 = *(v3 - 16);
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (sub_2519F0F68() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        v11 = 15649;
      }

      else
      {
        v11 = 15677;
      }

      if (v7)
      {
        v12 = 15649;
      }

      else
      {
        v12 = 15677;
      }

      if (v11 == v12)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v13 = sub_2519F0F68();

        swift_bridgeObjectRelease_n();
        if ((v13 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (v6)
      {
        if (!v8)
        {
LABEL_29:

          return 0;
        }

        if (v16 == v9 && v6 == v8)
        {
        }

        else
        {
          v14 = sub_2519F0F68();

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {

        if (v8)
        {
          return 0;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t HgQLTraversalPattern.globalCaptures.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HgQLTraversalPattern.matchChains.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HgQLTraversalPattern.subgraphChain.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HgQLTraversalPattern.filters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t HgQLTraversalPattern.init(globalCaptures:matchChains:subgraphChain:filters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2519DD56C()
{
  v1 = 0x61436C61626F6C67;
  v2 = 0x6870617267627573;
  if (*v0 != 2)
  {
    v2 = 0x737265746C6966;
  }

  if (*v0)
  {
    v1 = 0x616843686374616DLL;
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

uint64_t sub_2519DD608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2519DEC08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2519DD630(uint64_t a1)
{
  v2 = sub_2519DE550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519DD66C(uint64_t a1)
{
  v2 = sub_2519DE550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HgQLTraversalPattern.encode(to:)(void *a1)
{
  sub_2519DE77C(0, &qword_27F46D7E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v17 = v1[2];
  v18 = v10;
  v16 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DE550();

  sub_2519F1158();
  v20 = v11;
  v19 = 0;
  sub_2519DE660(0, &qword_27F46CEF0, MEMORY[0x277D837D0]);
  sub_2519DE7E0(&qword_27F46CEF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2519F0EF8();
  if (v2)
  {
  }

  else
  {
    v13 = v16;
    v14 = v17;

    v20 = v18;
    v19 = 1;
    sub_2519DE5A4(0);
    sub_2519DE850(&qword_27F46D808, &qword_27F46D810, sub_2519DE60C, MEMORY[0x277D83948]);
    sub_2519F0EF8();
    v20 = v14;
    v19 = 2;
    sub_2519DE660(0, &qword_27F46D800, &type metadata for Triple);
    sub_2519DE8D0(&qword_27F46D810, sub_2519DE60C, MEMORY[0x277D83948]);
    sub_2519F0EC8();
    v20 = v13;
    v19 = 3;
    sub_2519DE660(0, &qword_27F46D820, &type metadata for FilterExpression);
    sub_2519DE6AC(&qword_27F46D828, sub_2519DE728, MEMORY[0x277D83948]);
    sub_2519F0EC8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HgQLTraversalPattern.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  MEMORY[0x25308A270](*(*v1 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 40;
    do
    {

      sub_2519F09F8();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  MEMORY[0x25308A270](*(v4 + 16));
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = (v4 + 32);
    do
    {
      v11 = *v10++;

      sub_2519DE198(a1, v11);

      --v9;
    }

    while (v9);
  }

  if (!v6)
  {
    sub_2519F10B8();
    if (v5)
    {
      goto LABEL_9;
    }

    return sub_2519F10B8();
  }

  sub_2519F10B8();
  sub_2519DE198(a1, v6);
  if (!v5)
  {
    return sub_2519F10B8();
  }

LABEL_9:
  sub_2519F10B8();

  return sub_2519DE0A8(a1, v5);
}

uint64_t HgQLTraversalPattern.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_2519F1098();
  HgQLTraversalPattern.hash(into:)(v3);
  return sub_2519F10D8();
}

uint64_t HgQLTraversalPattern.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2519DE77C(0, &qword_27F46D838, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519DE550();
  sub_2519F1148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2519DE660(0, &qword_27F46CEF0, MEMORY[0x277D837D0]);
  v18 = 0;
  sub_2519DE7E0(&qword_27F46CF30, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_2519F0E68();
  v17 = v19;
  sub_2519DE5A4(0);
  v18 = 1;
  sub_2519DE850(&qword_27F46D840, &qword_27F46D848, sub_2519DE94C, MEMORY[0x277D83978]);
  sub_2519F0E68();
  v16 = v19;
  sub_2519DE660(0, &qword_27F46D800, &type metadata for Triple);
  v18 = 2;
  sub_2519DE8D0(&qword_27F46D848, sub_2519DE94C, MEMORY[0x277D83978]);
  sub_2519F0E38();
  v11 = v19;
  sub_2519DE660(0, &qword_27F46D820, &type metadata for FilterExpression);
  v18 = 3;
  sub_2519DE6AC(&qword_27F46D858, sub_2519DE9A0, MEMORY[0x277D83978]);
  sub_2519F0E38();
  (*(v7 + 8))(v10, v6);
  v13 = v19;
  v14 = v16;
  *a2 = v17;
  a2[1] = v14;
  a2[2] = v11;
  a2[3] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519DE00C()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_2519F1098();
  HgQLTraversalPattern.hash(into:)(v3);
  return sub_2519F10D8();
}

uint64_t sub_2519DE05C(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2519F1098();
  HgQLTraversalPattern.hash(into:)(v4);
  return sub_2519F10D8();
}

uint64_t sub_2519DE0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25308A270](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *v5;

      sub_2519F09F8();
      sub_2519F09F8();

      sub_2519F10B8();
      if (v6)
      {
        sub_2519F09F8();
      }

      v5 += 5;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2519DE198(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25308A270](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    while (1)
    {
      v7 = (v6 + 80 * v5);
      v8 = v7[1];
      v31 = *v7;
      v32 = v8;
      v9 = v7[3];
      v33 = v7[2];
      *v34 = v9;
      *&v34[9] = *(v7 + 57);
      v10 = v31;
      if (v32)
      {
        MEMORY[0x25308A270](1);
        MEMORY[0x25308A270](*(v10 + 16));
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = (v10 + 32);
          do
          {
            v13 = *v12++;
            MEMORY[0x25308A270](v13);
            --v11;
          }

          while (v11);
        }

        sub_2519DED80(&v31, v30);
      }

      else
      {
        MEMORY[0x25308A270](0);
        sub_2519DED80(&v31, v30);
        sub_2519F09F8();
      }

      v14 = *(&v32 + 1);
      v15 = *(&v33 + 1);
      if (v34[0] > 1u)
      {
        break;
      }

      if (v34[0])
      {
        MEMORY[0x25308A270](2);
        MEMORY[0x25308A270](*(v14 + 16));
        v19 = *(v14 + 16);
        if (v19)
        {
          v20 = (v14 + 32);
          do
          {
            v21 = *v20++;
            MEMORY[0x25308A290](v21);
            --v19;
          }

          while (v19);
        }

        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_19:
        sub_2519F10B8();
        sub_2519F09F8();
        goto LABEL_26;
      }

      MEMORY[0x25308A270](0);
      sub_2519F09F8();
LABEL_26:
      v22 = *&v34[8];
      if (v34[24] <= 1u)
      {
        MEMORY[0x25308A270](v34[24] != 0);
        sub_2519F09F8();
      }

      else if (v34[24] == 2)
      {
        MEMORY[0x25308A270](2);
        MEMORY[0x25308A270](*(v22 + 16));
        v25 = *(v22 + 16);
        if (v25)
        {
          v26 = (v22 + 32);
          do
          {
            v27 = *v26++;
            MEMORY[0x25308A270](v27);
            --v25;
          }

          while (v25);
        }
      }

      else if (v34[24] == 3)
      {
        MEMORY[0x25308A270](3);
        MEMORY[0x25308A270](*(v22 + 16));
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = v22 + 40;
          do
          {

            sub_2519F09F8();

            v24 += 16;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        MEMORY[0x25308A270](4);
        MEMORY[0x25308A270](*(v22 + 16));
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = v22 + 40;
          do
          {

            sub_2519F09F8();

            v29 += 16;
            --v28;
          }

          while (v28);
        }
      }

      result = sub_2519DEDDC(&v31);
      if (++v5 == v3)
      {
        return result;
      }
    }

    if (v34[0] != 2)
    {
      MEMORY[0x25308A270](1);
      goto LABEL_26;
    }

    MEMORY[0x25308A270](3);
    MEMORY[0x25308A270](*(v14 + 16));
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = (v14 + 32);
      do
      {
        v18 = *v17++;
        MEMORY[0x25308A290](v18);
        --v16;
      }

      while (v16);
    }

    if (!v15)
    {
LABEL_24:
      sub_2519F10B8();
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t _s17HealthOntologyKit20HgQLTraversalPatternV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_2519DC684(*a1, *a2) & 1) == 0 || (sub_2519DC714(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = sub_2519DC7CC(v4, v7);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {

      v9 = sub_2519DD1C4(v3, v6);

      if (v9)
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

unint64_t sub_2519DE550()
{
  result = qword_27F46D7F0;
  if (!qword_27F46D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D7F0);
  }

  return result;
}

void sub_2519DE5A4(uint64_t a1)
{
  if (!qword_27F46D7F8)
  {
    sub_2519DE660(255, &qword_27F46D800, &type metadata for Triple);
    v1 = sub_2519F0B18();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D7F8);
    }
  }
}

unint64_t sub_2519DE60C()
{
  result = qword_27F46D818;
  if (!qword_27F46D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D818);
  }

  return result;
}

void sub_2519DE660(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2519F0B18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2519DE6AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2519DE660(255, &qword_27F46D820, &type metadata for FilterExpression);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2519DE728()
{
  result = qword_27F46D830;
  if (!qword_27F46D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D830);
  }

  return result;
}

void sub_2519DE77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519DE550();
    v7 = a3(a1, &type metadata for HgQLTraversalPattern.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2519DE7E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2519DE660(255, &qword_27F46CEF0, MEMORY[0x277D837D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2519DE850(unint64_t *a1, unint64_t *a2, void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2519DE5A4(255);
    sub_2519DE8D0(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2519DE8D0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2519DE660(255, &qword_27F46D800, &type metadata for Triple);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2519DE94C()
{
  result = qword_27F46D850;
  if (!qword_27F46D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D850);
  }

  return result;
}

unint64_t sub_2519DE9A0()
{
  result = qword_27F46D860;
  if (!qword_27F46D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D860);
  }

  return result;
}

unint64_t sub_2519DE9F8()
{
  result = qword_27F46D868;
  if (!qword_27F46D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D868);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2519DEA58(uint64_t *a1, int a2)
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

uint64_t sub_2519DEAA0(uint64_t result, int a2, int a3)
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

unint64_t sub_2519DEB04()
{
  result = qword_27F46D870;
  if (!qword_27F46D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D870);
  }

  return result;
}

unint64_t sub_2519DEB5C()
{
  result = qword_27F46D878;
  if (!qword_27F46D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D878);
  }

  return result;
}

unint64_t sub_2519DEBB4()
{
  result = qword_27F46D880;
  if (!qword_27F46D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D880);
  }

  return result;
}

uint64_t sub_2519DEC08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61436C61626F6C67 && a2 == 0xEE00736572757470;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616843686374616DLL && a2 == 0xEB00000000736E69 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6870617267627573 && a2 == 0xED00006E69616843 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519DEE30(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 < 2)
  {
  }

  if (!a4)
  {
  }

  return v5;
}

BOOL _s17HealthOntologyKit0aB7DefinesO5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v30[0] = v3;
  v30[1] = v4;
  v30[2] = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (!(v5 | v4 | v3))
        {
          if (v10 == 5 && !(v9 | v8 | v7))
          {
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        if (v3 != 1 || v5 | v4)
        {
          if (v10 != 5 || v7 != 2)
          {
            goto LABEL_37;
          }
        }

        else if (v10 != 5 || v7 != 1)
        {
          goto LABEL_37;
        }

        if (!(v9 | v8))
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v10 == 4)
      {
        if (v3 == v7 && v4 == v8)
        {
          sub_2519DF34C(v3, v4, v9, 4u);
          sub_2519DF34C(v3, v4, v5, 4u);
          goto LABEL_36;
        }

        v24 = v7;
        v25 = v8;
        v26 = v9;
        v16 = sub_2519F0F68();
        sub_2519DF34C(v24, v25, v26, 4u);
        v17 = v3;
        v18 = v4;
        v19 = v5;
        v20 = 4;
        goto LABEL_42;
      }

LABEL_37:
      sub_2519DF34C(v7, v8, v9, v10);
      sub_2519DF34C(v3, v4, v5, v6);
      sub_2519DF368(v30);
      return 0;
    }

    if (v10 != 3)
    {
      goto LABEL_37;
    }

    if (v3 == v7 && v4 == v8)
    {
      sub_2519DF34C(v3, v4, v9, 3u);
      sub_2519DF34C(v3, v4, v5, 3u);
      goto LABEL_36;
    }

    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = sub_2519F0F68();
    sub_2519DF34C(v13, v14, v15, 3u);
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = 3;
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v10 == 1)
        {
          if (v3 == v7 && v4 == v8)
          {
            sub_2519DF34C(v3, v4, v9, 1u);
            sub_2519DF34C(v3, v4, v5, 1u);
LABEL_36:
            sub_2519DF368(v30);
            return 1;
          }

          v21 = v7;
          v22 = v8;
          v23 = v9;
          v16 = sub_2519F0F68();
          sub_2519DF34C(v21, v22, v23, 1u);
          v17 = v3;
          v18 = v4;
          v19 = v5;
          v20 = 1;
          goto LABEL_42;
        }
      }

      else if (v10 == 2)
      {
        v11 = v7;
        sub_2519DF34C(v7, v8, v9, 2u);
        sub_2519DF34C(v3, v4, v5, 2u);
        sub_2519DF368(v30);
        return v3 == v11;
      }

      goto LABEL_37;
    }

    if (v10)
    {
      goto LABEL_37;
    }

    if (v3 == v7 && v4 == v8)
    {
      sub_2519DF34C(v3, v4, v9, 0);
      sub_2519DF34C(v3, v4, v5, 0);
      goto LABEL_36;
    }

    v27 = v7;
    v28 = v8;
    v29 = v9;
    v16 = sub_2519F0F68();
    sub_2519DF34C(v27, v28, v29, 0);
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = 0;
  }

LABEL_42:
  sub_2519DF34C(v17, v18, v19, v20);
  sub_2519DF368(v30);
  return v16 & 1;
}

uint64_t get_enum_tag_for_layout_string_17HealthOntologyKit0aB7DefinesO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2519DF290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519DF2D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2519DF320(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_2519DF34C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
  }
}

uint64_t sub_2519DF368(uint64_t a1)
{
  sub_2519DF3C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519DF3C4()
{
  if (!qword_27F46D888)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D888);
    }
  }
}

uint64_t Triple.subject.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2519C87E8(v2, v3, v4);
}

uint64_t Triple.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_2519C86C4(v2, v3, v4, v5);
}

uint64_t Triple.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_2519C863C(v2, v3, v4);
}

char *Triple.captures.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[5];
  v4 = *(v0 + 48);
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + 72);
  if (v0[2])
  {
    v8 = MEMORY[0x277D84F90];
    if (v4 == 2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v27 = v0[3];
    v28 = v0[5];
    v9 = v0[4];
    v10 = *(v0 + 72);
    v11 = v0[8];
    v12 = v0[7];
    v14 = *v0;
    v13 = v0[1];

    v8 = sub_2519E0438(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_2519E0438((v15 > 1), v16 + 1, 1, v8);
    }

    *(v8 + 2) = v16 + 1;
    v17 = &v8[16 * v16];
    *(v17 + 4) = v14;
    *(v17 + 5) = v13;
    v5 = v12;
    v6 = v11;
    v7 = v10;
    v1 = v9;
    v2 = v27;
    v3 = v28;
    if (v4 == 2)
    {
      goto LABEL_13;
    }
  }

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2519E0438(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v8 = sub_2519E0438((v18 > 1), v19 + 1, 1, v8);
    }

    goto LABEL_19;
  }

LABEL_13:

  if (!v3)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2519E0438(0, *(v8 + 2) + 1, 1, v8);
  }

  v19 = *(v8 + 2);
  v21 = *(v8 + 3);
  v20 = v19 + 1;
  if (v19 >= v21 >> 1)
  {
    v8 = sub_2519E0438((v21 > 1), v19 + 1, 1, v8);
  }

  v2 = v1;
  v1 = v3;
LABEL_19:
  *(v8 + 2) = v20;
  v22 = &v8[16 * v19];
  *(v22 + 4) = v2;
  *(v22 + 5) = v1;
LABEL_20:
  if (v7 <= 1)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2519E0438(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    if (v24 >= v23 >> 1)
    {
      v8 = sub_2519E0438((v23 > 1), v24 + 1, 1, v8);
    }

    *(v8 + 2) = v24 + 1;
    v25 = &v8[16 * v24];
    *(v25 + 4) = v5;
    *(v25 + 5) = v6;
  }

  return v8;
}

BOOL Triple.isAttributeValueCapture.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v12 = v10 == 2 && v9 == 1;
  v14 = v12;
  sub_2519C87E8(v1, v2, v3);
  sub_2519C86C4(v4, v5, v6, v10);
  sub_2519C863C(v7, v8, v9);
  sub_2519C87F4(v1, v2, v3);
  sub_2519DEE30(v4, v5, v6, v10);
  sub_2519C8680(v7, v8, v9);
  return v14;
}

uint64_t Triple.debugDescription.getter()
{
  sub_2519F0D38();
  MEMORY[0x253089BD0](11552, 0xE200000000000000);
  sub_2519F0D38();
  MEMORY[0x253089BD0](2113069, 0xE300000000000000);
  sub_2519F0D38();
  return 0;
}

__n128 Triple.init(subject:predicate:object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = a3[1].n128_u8[0];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = *a2;
  *(a4 + 40) = v5;
  *(a4 + 48) = v6;
  result = *a3;
  *(a4 + 56) = *a3;
  *(a4 + 72) = v7;
  return result;
}

uint64_t sub_2519DF92C()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x7463656A626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_2519DF988@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2519E100C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2519DF9BC(uint64_t a1)
{
  v2 = sub_2519E0AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519DF9F8(uint64_t a1)
{
  v2 = sub_2519E0AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Triple.encode(to:)(void *a1)
{
  sub_2519E0C04(0, &qword_27F46D890, MEMORY[0x277D84538]);
  v4 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = v11;
  v12 = *(v1 + 40);
  v34 = *(v1 + 48);
  v13 = *(v1 + 64);
  v24 = *(v1 + 56);
  v25 = v12;
  v23 = v13;
  HIDWORD(v22) = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C87E8(v8, v9, v10);
  sub_2519E0AB4();
  sub_2519F1158();
  v30 = v8;
  v31 = v9;
  v14 = v4;
  v15 = v7;
  LOBYTE(v32) = v10;
  v35 = 0;
  sub_2519E0B08();
  v16 = v28;
  sub_2519F0EF8();
  if (v16)
  {
    sub_2519C87F4(v30, v31, v32);
    return (*(v29 + 8))(v7, v4);
  }

  else
  {
    v18 = BYTE4(v22);
    v20 = v23;
    v19 = v24;
    v21 = v29;
    sub_2519C87F4(v30, v31, v32);
    v30 = v27;
    v31 = v26;
    v32 = v25;
    v33 = v34;
    v35 = 1;
    sub_2519C86C4(v27, v26, v25, v34);
    sub_2519E0B5C();
    sub_2519F0EF8();
    sub_2519DEE30(v30, v31, v32, v33);
    v30 = v19;
    v31 = v20;
    LOBYTE(v32) = v18;
    v35 = 2;
    sub_2519C863C(v19, v20, v18);
    sub_2519E0BB0();
    sub_2519F0EF8();
    sub_2519C8680(v30, v31, v32);
    return (*(v21 + 8))(v15, v14);
  }
}

uint64_t Triple.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[2])
  {
    MEMORY[0x25308A270](1);
    MEMORY[0x25308A270](*(v3 + 16));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A270](v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);
    sub_2519F09F8();
  }

  PredicateDescriptor.hash(into:)(a1);
  return ObjectDescriptor.hash(into:)(a1);
}

uint64_t Triple.hashValue.getter()
{
  sub_2519F1098();
  Triple.hash(into:)(v1);
  return sub_2519F10D8();
}

uint64_t Triple.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2519E0C04(0, &qword_27F46D8B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E0AB4();
  sub_2519F1148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_2519E0C68();
  sub_2519F0E68();
  v48 = a2;
  v12 = v32;
  v11 = v33;
  v47 = BYTE8(v33);
  LOBYTE(v28) = 1;
  sub_2519E0CBC();
  sub_2519F0E68();
  v27 = v32;
  v25 = v33;
  v26 = v34;
  v41 = 2;
  sub_2519E0D10();
  sub_2519F0E68();
  (*(v7 + 8))(v10, v6);
  v24 = v42;
  v23 = v43;
  v22 = v44;
  *&v28 = v12;
  *(&v28 + 1) = v11;
  v21 = v47;
  LOBYTE(v29) = v47;
  *(&v29 + 1) = *v46;
  DWORD1(v29) = *&v46[3];
  v13 = v27;
  *(&v29 + 1) = v27;
  v14 = v25;
  v30 = v25;
  v15 = v26;
  v31[0] = v26;
  *&v31[1] = *v45;
  *&v31[4] = *&v45[3];
  *&v31[8] = v42;
  *&v31[16] = v43;
  v31[24] = v44;
  v16 = v29;
  v17 = v48;
  *v48 = v28;
  v17[1] = v16;
  v18 = *v31;
  v17[2] = v30;
  v17[3] = v18;
  *(v17 + 57) = *&v31[9];
  sub_2519DED80(&v28, &v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32 = v12;
  *&v33 = v11;
  BYTE8(v33) = v21;
  *(&v33 + 9) = *v46;
  HIDWORD(v33) = *&v46[3];
  v34 = v13;
  v35 = v14;
  v36 = v15;
  *v37 = *v45;
  *&v37[3] = *&v45[3];
  v38 = v24;
  v39 = v23;
  v40 = v22;
  return sub_2519DEDDC(&v32);
}

uint64_t sub_2519E0280()
{
  sub_2519F1098();
  Triple.hash(into:)(v1);
  return sub_2519F10D8();
}

uint64_t sub_2519E02C4(uint64_t a1)
{
  sub_2519F1098();
  Triple.hash(into:)(v2);
  return sub_2519F10D8();
}

void *sub_2519E0308(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2519D9D70(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2519E0FA8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2519E0438(char *result, int64_t a2, char a3, char *a4)
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
    sub_2519E11A4(0, &qword_27F46D910, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2519E055C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2519E11A4(0, &qword_27F46D908, &type metadata for Triple, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2519E0690(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2519E1128(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2519E11A4(0, &qword_27F46D800, &type metadata for Triple, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2519E07D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2519E11A4(0, &qword_27F46D8F8, MEMORY[0x277D84A28], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t _s17HealthOntologyKit6TripleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v28 = *(a1 + 56);
  v29 = *(a1 + 24);
  v27 = *(a1 + 64);
  v26 = *(a1 + 72);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 56);
  v23 = *(a2 + 72);
  v34 = *a1;
  v35 = v2;
  LOBYTE(v36) = v3;
  v30 = v7;
  v31 = v8;
  LOBYTE(v32) = v9;
  sub_2519C87E8(v34, v2, v3);
  sub_2519C87E8(v7, v8, v9);
  LOBYTE(v7) = _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(&v34, &v30);
  sub_2519C87F4(v30, v31, v32);
  sub_2519C87F4(v34, v35, v36);
  if ((v7 & 1) != 0 && (v34 = v29, v35 = v4, v36 = v5, v37 = v6, v30 = v10, v31 = v11, v32 = v12, v33 = v13, sub_2519C86C4(v29, v4, v5, v6), sub_2519C86C4(v10, v11, v12, v13), v20 = _s17HealthOntologyKit19PredicateDescriptorO2eeoiySbAC_ACtFZ_0(&v34, &v30, v14, v15, v16, v17, v18, v19), sub_2519DEE30(v30, v31, v32, v33), sub_2519DEE30(v34, v35, v36, v37), v20))
  {
    v34 = v28;
    v35 = v27;
    LOBYTE(v36) = v26;
    v30 = v25;
    v31 = v24;
    LOBYTE(v32) = v23;
    sub_2519C863C(v28, v27, v26);
    sub_2519C863C(v25, v24, v23);
    v21 = _s17HealthOntologyKit16ObjectDescriptorO2eeoiySbAC_ACtFZ_0(&v34, &v30);
    sub_2519C8680(v30, v31, v32);
    sub_2519C8680(v34, v35, v36);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t sub_2519E0AB4()
{
  result = qword_27F46D898;
  if (!qword_27F46D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D898);
  }

  return result;
}

unint64_t sub_2519E0B08()
{
  result = qword_27F46D8A0;
  if (!qword_27F46D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8A0);
  }

  return result;
}

unint64_t sub_2519E0B5C()
{
  result = qword_27F46D8A8;
  if (!qword_27F46D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8A8);
  }

  return result;
}

unint64_t sub_2519E0BB0()
{
  result = qword_27F46D8B0;
  if (!qword_27F46D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8B0);
  }

  return result;
}

void sub_2519E0C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519E0AB4();
    v7 = a3(a1, &type metadata for Triple.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519E0C68()
{
  result = qword_27F46D8C0;
  if (!qword_27F46D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8C0);
  }

  return result;
}

unint64_t sub_2519E0CBC()
{
  result = qword_27F46D8C8;
  if (!qword_27F46D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8C8);
  }

  return result;
}

unint64_t sub_2519E0D10()
{
  result = qword_27F46D8D0;
  if (!qword_27F46D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8D0);
  }

  return result;
}

unint64_t sub_2519E0D68()
{
  result = qword_27F46D8D8;
  if (!qword_27F46D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8D8);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2519E0DE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519E0E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2519E0EA4()
{
  result = qword_27F46D8E0;
  if (!qword_27F46D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8E0);
  }

  return result;
}

unint64_t sub_2519E0EFC()
{
  result = qword_27F46D8E8;
  if (!qword_27F46D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8E8);
  }

  return result;
}

unint64_t sub_2519E0F54()
{
  result = qword_27F46D8F0;
  if (!qword_27F46D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D8F0);
  }

  return result;
}

unint64_t sub_2519E0FA8()
{
  result = qword_27F46D6F8;
  if (!qword_27F46D6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D6F8);
  }

  return result;
}

uint64_t sub_2519E100C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_2519E1128(uint64_t a1)
{
  if (!qword_27F46D900)
  {
    sub_2519E11A4(255, &qword_27F46D800, &type metadata for Triple, MEMORY[0x277D83940]);
    v1 = sub_2519F0F28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D900);
    }
  }
}

void sub_2519E11A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t HgQLSelect.match(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v6[3];
      v21 = v6[2];
      v22[0] = v8;
      *(v22 + 9) = *(v6 + 57);
      v9 = v6[1];
      v19 = *v6;
      v20 = v9;
      sub_2519DED80(&v19, &v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2519E055C(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_2519E055C((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[80 * v11];
      *(v12 + 2) = v19;
      v13 = v20;
      v14 = v21;
      v15 = v22[0];
      *(v12 + 89) = *(v22 + 9);
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_2519E1128(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2519F3F20;
  *(v16 + 32) = v7;
  *a2 = v4;
  a2[1] = v16;
}

HealthOntologyKit::HgQLMatch __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HgQLSelect.match(_:)(Swift::OpaquePointer a1)
{
  v4 = v1;
  v5 = *v2;
  sub_2519E1128(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2519F3F20;
  *(v6 + 32) = a1;
  *v4 = v5;
  v4[1] = v6;

  result.tripleDescriptors._rawValue = v8;
  result.select.variables._rawValue = v7;
  return result;
}

uint64_t HgQLMatch.addTraversalPath(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v6[3];
      v23 = v6[2];
      v24[0] = v8;
      *(v24 + 9) = *(v6 + 57);
      v9 = v6[1];
      v21 = *v6;
      v22 = v9;
      sub_2519DED80(&v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2519E055C(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_2519E055C((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[80 * v11];
      *(v12 + 2) = v21;
      v13 = v22;
      v14 = v23;
      v15 = v24[0];
      *(v12 + 89) = *(v24 + 9);
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2519E0690(0, v4[2] + 1, 1, v4);
    v4 = result;
  }

  v18 = v4[2];
  v17 = v4[3];
  if (v18 >= v17 >> 1)
  {
    result = sub_2519E0690((v17 > 1), v18 + 1, 1, v4);
    v4 = result;
  }

  v4[2] = v18 + 1;
  v4[v18 + 4] = v7;
  *a2 = v3;
  a2[1] = v4;
  return result;
}

HealthOntologyKit::HgQLMatch __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HgQLMatch.addTraversalPath(_:)(Swift::OpaquePointer a1)
{
  v4 = v1;
  v5 = *v2;
  v6 = v2[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_2519E0690(0, v6[2] + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_2519E0690((v9 > 1), v10 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v6[2] = v10 + 1;
  v6[v10 + 4] = a1._rawValue;
  *v4 = v5;
  v4[1] = v6;
  result.tripleDescriptors._rawValue = v8;
  result.select.variables._rawValue = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t HgQLMatch.subgraph(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v17 = v2[1];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v6[3];
      v21 = v6[2];
      v22[0] = v8;
      *(v22 + 9) = *(v6 + 57);
      v9 = v6[1];
      v19 = *v6;
      v20 = v9;
      sub_2519DED80(&v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2519E055C(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_2519E055C((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[80 * v11];
      *(v12 + 2) = v19;
      v13 = v20;
      v14 = v21;
      v15 = v22[0];
      *(v12 + 89) = *(v22 + 9);
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a2 = v4;
  a2[1] = v17;
  a2[2] = v7;
}

HealthOntologyKit::HgQLSubgraph __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HgQLMatch.subgraph(_:)(Swift::OpaquePointer a1)
{
  v4 = *v2;
  v5 = v2[1];
  v1->_rawValue = v4;
  v1[1]._rawValue = v5;
  v1[2]._rawValue = a1._rawValue;

  result.tripleDescriptors._rawValue = v8;
  result.match.tripleDescriptors._rawValue = v7;
  result.match.select.variables._rawValue = v6;
  return result;
}

uint64_t HgQLMatch.filter(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = a1;
}

uint64_t HgQLMatch.build()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t HgQLSubgraph.filter(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = a1;
}

uint64_t HgQLSubgraph.build()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
}

uint64_t sub_2519E1914@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
}

uint64_t sub_2519E1968@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_2519E19D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2519E1A18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2519E1A64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2519E1AAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2519E1B2C(uint64_t *a1, int a2)
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

uint64_t sub_2519E1B74(uint64_t result, int a2, int a3)
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

uint64_t ExternalTaxonomyCoding.system.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExternalTaxonomyCoding.code.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExternalTaxonomyCoding.display.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExternalTaxonomyCoding.version.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall ExternalTaxonomyCoding.init(system:code:display:version:)(HealthOntologyKit::ExternalTaxonomyCoding *__return_ptr retstr, Swift::String system, Swift::String code, Swift::String_optional display, Swift::String_optional version)
{
  retstr->system = system;
  retstr->code = code;
  retstr->display = display;
  retstr->version = version;
}

uint64_t ExternalTaxonomyCoding.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2519F0CA8();
  MEMORY[0x253089BD0](0x203A6D6574737973, 0xE800000000000000);
  MEMORY[0x253089BD0](v1, v2);
  MEMORY[0x253089BD0](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  sub_2519E1E08();
  sub_2519F0D38();
  MEMORY[0x253089BD0](0x203A65646F63202CLL, 0xE800000000000000);
  MEMORY[0x253089BD0](v3, v4);
  MEMORY[0x253089BD0](0x616C70736964202CLL, 0xEB00000000203A79);
  sub_2519F0D38();
  return 0;
}

void sub_2519E1E08()
{
  if (!qword_27F46D3C8)
  {
    v0 = sub_2519F0C08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D3C8);
    }
  }
}

uint64_t sub_2519E1E5C()
{
  v1 = 0x6D6574737973;
  v2 = 0x79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

uint64_t sub_2519E1ECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2519E2B08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2519E1EF4(uint64_t a1)
{
  v2 = sub_2519E2868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E1F30(uint64_t a1)
{
  v2 = sub_2519E2868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalTaxonomyCoding.encode(to:)(void *a1)
{
  sub_2519E28BC(0, &qword_27F46D918, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v14[5] = v1[3];
  v14[6] = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E2868();
  sub_2519F1158();
  v18 = 0;
  v12 = v14[7];
  sub_2519F0ED8();
  if (!v12)
  {
    v17 = 1;
    sub_2519F0ED8();
    v16 = 2;
    sub_2519F0EB8();
    v15 = 3;
    sub_2519F0EB8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ExternalTaxonomyCoding.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_2519F09F8();
  sub_2519F09F8();
  if (!v2)
  {
    sub_2519F10B8();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_2519F10B8();
  }

  sub_2519F10B8();
  sub_2519F09F8();
  if (!v3)
  {
    return sub_2519F10B8();
  }

LABEL_3:
  sub_2519F10B8();

  return sub_2519F09F8();
}

uint64_t ExternalTaxonomyCoding.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_2519F1098();
  sub_2519F09F8();
  sub_2519F09F8();
  if (!v1)
  {
    sub_2519F10B8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2519F10B8();
    return sub_2519F10D8();
  }

  sub_2519F10B8();
  sub_2519F09F8();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2519F10B8();
  sub_2519F09F8();
  return sub_2519F10D8();
}

uint64_t ExternalTaxonomyCoding.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2519E28BC(0, &qword_27F46D928, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E2868();
  sub_2519F1148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_2519F0E48();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_2519F0E48();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_2519F0E28();
  v27 = v15;
  v35 = 3;
  v16 = sub_2519F0E28();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_2519E2920(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_2519E2958(v34);
}

uint64_t sub_2519E264C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_2519F1098();
  sub_2519F09F8();
  sub_2519F09F8();
  if (!v2)
  {
    sub_2519F10B8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2519F10B8();
    return sub_2519F10D8();
  }

  sub_2519F10B8();
  sub_2519F09F8();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2519F10B8();
  sub_2519F09F8();
  return sub_2519F10D8();
}

uint64_t _s17HealthOntologyKit22ExternalTaxonomyCodingV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2519F0F68() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2519F0F68() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_2519F0F68() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_2519F0F68() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2519E2868()
{
  result = qword_27F46D920;
  if (!qword_27F46D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D920);
  }

  return result;
}

void sub_2519E28BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519E2868();
    v7 = a3(a1, &type metadata for ExternalTaxonomyCoding.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519E298C()
{
  result = qword_27F46D930;
  if (!qword_27F46D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D930);
  }

  return result;
}

unint64_t sub_2519E2A04()
{
  result = qword_27F46D938;
  if (!qword_27F46D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D938);
  }

  return result;
}

unint64_t sub_2519E2A5C()
{
  result = qword_27F46D940;
  if (!qword_27F46D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D940);
  }

  return result;
}

unint64_t sub_2519E2AB4()
{
  result = qword_27F46D948;
  if (!qword_27F46D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D948);
  }

  return result;
}

uint64_t sub_2519E2B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C70736964 && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t HgQLOntologyRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HgQLOntologyRequest.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HgQLOntologyRequest.traversalPattern.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 HgQLOntologyRequest.traversalPattern.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  return result;
}

__n128 HgQLOntologyRequest.init(traversalPattern:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000013;
  *(a2 + 8) = 0x80000002519F5220;
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_2519E2E20()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2519E2E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002519F6F40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519E2F50(uint64_t a1)
{
  v2 = sub_2519E3CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E2F8C(uint64_t a1)
{
  v2 = sub_2519E3CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HgQLOntologyRequest.encode(to:)(void *a1)
{
  sub_2519E3F98(0, &qword_27F46D950, sub_2519E3CF8, &type metadata for HgQLOntologyRequest.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = v1[3];
  v14 = v1[2];
  v15 = v9;
  v10 = v1[5];
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E3CF8();
  sub_2519F1158();
  LOBYTE(v19) = 0;
  v11 = v18;
  sub_2519F0ED8();
  if (!v11)
  {
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = 1;
    sub_2519E3D4C();

    sub_2519F0EF8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HgQLOntologyRequest.hashValue.getter()
{
  sub_2519F1098();
  sub_2519F09F8();
  HgQLTraversalPattern.hash(into:)(v1);
  return sub_2519F10D8();
}

uint64_t HgQLOntologyRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  sub_2519E3F98(0, &qword_27F46D968, sub_2519E3CF8, &type metadata for HgQLOntologyRequest.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E3CF8();
  sub_2519F1148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v20;
  LOBYTE(v21) = 0;
  v11 = sub_2519F0E48();
  v13 = v12;
  v19 = v11;
  v25 = 1;
  sub_2519E3DA0();
  sub_2519F0E68();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  *v10 = v19;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519E357C()
{
  sub_2519F1098();
  sub_2519F09F8();
  HgQLTraversalPattern.hash(into:)(v1);
  return sub_2519F10D8();
}

uint64_t sub_2519E3648(uint64_t a1)
{
  sub_2519F1098();
  sub_2519F09F8();
  HgQLTraversalPattern.hash(into:)(v2);
  return sub_2519F10D8();
}

uint64_t HgQLGenericResponse.response.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2519E3734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2519F0F68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2519E37BC(uint64_t a1)
{
  v2 = sub_2519E3DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E37F8(uint64_t a1)
{
  v2 = sub_2519E3DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HgQLGenericResponse.encode(to:)(void *a1)
{
  sub_2519E3F98(0, &qword_27F46D978, sub_2519E3DF4, &type metadata for HgQLGenericResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E3DF4();

  sub_2519F1158();
  v11[3] = v9;
  sub_2519E3E48(0);
  sub_2519E3EFC();
  sub_2519F0EF8();

  return (*(v5 + 8))(v8, v4);
}

uint64_t HgQLGenericResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_2519E3F98(0, &qword_27F46D9A8, sub_2519E3DF4, &type metadata for HgQLGenericResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E3DF4();
  sub_2519F1148();
  if (!v2)
  {
    v10 = v13;
    sub_2519E3E48(0);
    sub_2519E4000();
    sub_2519F0E68();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s17HealthOntologyKit19HgQLOntologyRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = 0, (sub_2519F0F68() & 1) != 0))
  {
    v13[0] = v2;
    v13[1] = v4;
    v13[2] = v3;
    v13[3] = v5;
    v12[0] = v7;
    v12[1] = v6;
    v12[2] = v8;
    v12[3] = v9;

    v10 = _s17HealthOntologyKit20HgQLTraversalPatternV2eeoiySbAC_ACtFZ_0(v13, v12);
  }

  return v10 & 1;
}

unint64_t sub_2519E3CF8()
{
  result = qword_27F46D958;
  if (!qword_27F46D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D958);
  }

  return result;
}

unint64_t sub_2519E3D4C()
{
  result = qword_27F46D960;
  if (!qword_27F46D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D960);
  }

  return result;
}

unint64_t sub_2519E3DA0()
{
  result = qword_27F46D970;
  if (!qword_27F46D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D970);
  }

  return result;
}

unint64_t sub_2519E3DF4()
{
  result = qword_27F46D980;
  if (!qword_27F46D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D980);
  }

  return result;
}

void sub_2519E3E48(uint64_t a1)
{
  if (!qword_27F46D988)
  {
    sub_2519E3EA0();
    v1 = sub_2519F0B18();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D988);
    }
  }
}

void sub_2519E3EA0()
{
  if (!qword_27F46D990)
  {
    v0 = sub_2519F0948();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D990);
    }
  }
}

unint64_t sub_2519E3EFC()
{
  result = qword_27F46D998;
  if (!qword_27F46D998)
  {
    sub_2519E3E48(255);
    sub_2519E409C(&qword_27F46D9A0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D998);
  }

  return result;
}

void sub_2519E3F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2519E4000()
{
  result = qword_27F46D9B0;
  if (!qword_27F46D9B0)
  {
    sub_2519E3E48(255);
    sub_2519E409C(&qword_27F46D9B8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9B0);
  }

  return result;
}

uint64_t sub_2519E409C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2519E3EA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2519E4100()
{
  result = qword_27F46D9C0;
  if (!qword_27F46D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9C0);
  }

  return result;
}

unint64_t sub_2519E4158()
{
  result = qword_27F46D9C8;
  if (!qword_27F46D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9C8);
  }

  return result;
}

unint64_t sub_2519E41AC(void *a1)
{
  a1[1] = sub_2519E41E4();
  a1[2] = sub_2519E4238();
  result = sub_2519E428C();
  a1[3] = result;
  return result;
}

unint64_t sub_2519E41E4()
{
  result = qword_27F46D9D0;
  if (!qword_27F46D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9D0);
  }

  return result;
}

unint64_t sub_2519E4238()
{
  result = qword_27F46D9D8;
  if (!qword_27F46D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9D8);
  }

  return result;
}

unint64_t sub_2519E428C()
{
  result = qword_27F46D9E0;
  if (!qword_27F46D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9E0);
  }

  return result;
}

unint64_t sub_2519E42E4()
{
  result = qword_27F46D9E8;
  if (!qword_27F46D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9E8);
  }

  return result;
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

uint64_t sub_2519E434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2519E4394(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2519E4424()
{
  result = qword_27F46D9F0;
  if (!qword_27F46D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9F0);
  }

  return result;
}

unint64_t sub_2519E447C()
{
  result = qword_27F46D9F8;
  if (!qword_27F46D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D9F8);
  }

  return result;
}

unint64_t sub_2519E44D4()
{
  result = qword_27F46DA00;
  if (!qword_27F46DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA00);
  }

  return result;
}

unint64_t sub_2519E452C()
{
  result = qword_27F46DA08;
  if (!qword_27F46DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA08);
  }

  return result;
}

unint64_t sub_2519E4584()
{
  result = qword_27F46DA10;
  if (!qword_27F46DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA10);
  }

  return result;
}

unint64_t sub_2519E45DC()
{
  result = qword_27F46DA18;
  if (!qword_27F46DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA18);
  }

  return result;
}

unint64_t HKConcept.ontologyConceptIdentifier.getter()
{
  v1 = v0;
  v2 = [v0 identifier];
  v3 = [v2 rawIdentifier];

  v4 = [v1 preferredName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2519F0998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v6;
  v10 = v8;

  return OntologyConceptIdentifier.init(_:label:)(v3, *&v9);
}

unint64_t sub_2519E46F0()
{
  v1 = *v0;
  v2 = [*v0 identifier];
  v3 = [v2 rawIdentifier];

  v4 = [v1 preferredName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2519F0998();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v6;
  v10 = v8;

  return OntologyConceptIdentifier.init(_:label:)(v3, *&v9);
}

uint64_t MockOntologyStore.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2519E484C(0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MockOntologyStore.init()()
{
  sub_2519E484C(0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

void sub_2519E484C(uint64_t a1)
{
  if (!qword_27F46DA20)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_2519F0CF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46DA20);
    }
  }
}

void MockOntologyStore.setHandler<A>(_:handler:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_2519E49CC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_2519E4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11[3] = type metadata accessor for MockOntologyStore.ConcreteResultHandler(0, a5, a6, a4);
    v11[0] = a4;
    v11[1] = a2;
    v11[4] = swift_getWitnessTable();
    v11[2] = a3;

    return sub_2519ED1B0(v11, a5);
  }

  else
  {
    sub_2519E49F0(v11, a5);
    return sub_2519E5048(v11);
  }
}

double sub_2519E49F0@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_2519EA82C(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2519EB984();
      v9 = v11;
    }

    sub_2519C1710((*(v9 + 56) + 40 * v7), a1);
    sub_2519EF6DC(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t MockOntologyStore.fetchResponse<A>(for:handler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_2519D9DD8(255, &qword_27F46D4A0, MEMORY[0x277D84948]);
  v10 = sub_2519F1118();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - v13;
  sub_2519E4BE4(a1, a4, a5, (&v16 - v13));
  a2(v5, a1, v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2519E4BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  sub_2519E4D88((v9 + 16), a2, &v13);
  os_unfair_lock_unlock((v9 + 24));
  if (v14)
  {
    sub_2519C1710(&v13, v15);
    sub_2519D986C(v15, &v13);
    sub_2519D9DD8(0, &qword_27F46DA38, &protocol descriptor for MockOntologyStore.ResultHandler);
    type metadata accessor for MockOntologyStore.ConcreteResultHandler(0, a2, a3, v10);
    swift_dynamicCast();

    v12(v4, a1);

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2519E5048(&v13);
    sub_2519E510C();
    *a4 = swift_allocError();
    swift_getAssociatedTypeWitness();
    sub_2519D9DD8(255, &qword_27F46D4A0, MEMORY[0x277D84948]);
    sub_2519F1118();
    return swift_storeEnumTagMultiPayload();
  }
}

double sub_2519E4D88@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_2519EA82C(a2);
    if (v6)
    {
      sub_2519D986C(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t MockOntologyStore.Error.hashValue.getter()
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t MockOntologyStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2519E4ED4()
{
  result = qword_27F46DA28;
  if (!qword_27F46DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DA28);
  }

  return result;
}

uint64_t sub_2519E4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  MockOntologyStore.fetchResponse<A>(for:handler:)(a1, sub_2519CEB90, v10, a4, a5);
}

uint64_t sub_2519E5048(uint64_t a1)
{
  sub_2519E50A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519E50A4(uint64_t a1)
{
  if (!qword_27F46DA30)
  {
    sub_2519D9DD8(255, &qword_27F46DA38, &protocol descriptor for MockOntologyStore.ResultHandler);
    v1 = sub_2519F0C08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46DA30);
    }
  }
}

unint64_t sub_2519E510C()
{
  result = qword_27F46DA40[0];
  if (!qword_27F46DA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46DA40);
  }

  return result;
}

uint64_t sub_2519E5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

HealthOntologyKit::OntologyConceptIdentifier __swiftcall OntologyConceptIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

BOOL static OntologyElementIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  return v7 == v6(a3, a4);
}

uint64_t OntologyConceptIdentifier.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t OntologyConceptIdentifier.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2519F0CA8();

  v3 = sub_2519F0F18();
  MEMORY[0x253089BD0](v3);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v2);
  return 0x49747065636E6F63;
}

uint64_t sub_2519E5428(uint64_t a1)
{
  v2 = sub_2519E561C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519E5464(uint64_t a1)
{
  v2 = sub_2519E561C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyConceptIdentifier.encode(to:)(void *a1)
{
  sub_2519E58A4(0, &qword_27F46DAC8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E561C();
  sub_2519F1158();
  v14 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v13 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2519E561C()
{
  result = qword_27F46DAD0;
  if (!qword_27F46DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAD0);
  }

  return result;
}

uint64_t OntologyConceptIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyConceptIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519E58A4(0, &qword_27F46DAD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519E561C();
  sub_2519F1148();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2519F0E58();
    v17 = 1;
    v13 = sub_2519F0E48();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2519E58A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519E561C();
    v7 = a3(a1, &type metadata for OntologyConceptIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519E5908(void *a1)
{
  a1[1] = sub_2519E5950();
  a1[2] = sub_2519C95DC();
  a1[3] = sub_2519C9118();
  a1[4] = sub_2519E59A4();
  result = sub_2519E59F8();
  a1[5] = result;
  return result;
}

unint64_t sub_2519E5950()
{
  result = qword_27F46DAE0;
  if (!qword_27F46DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46DAE0);
  }

  return result;
}