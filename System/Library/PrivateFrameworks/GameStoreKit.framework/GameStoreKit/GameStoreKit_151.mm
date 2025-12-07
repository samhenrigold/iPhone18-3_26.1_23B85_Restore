uint64_t sub_24F589A48(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Page(0) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v14[0] = v3;
  v14[1] = v4;
  v10 = (v8 + 48) & ~v8;
  v14[2] = v5;
  v14[3] = v6;
  v11 = *(type metadata accessor for BasePageView(0, v14) - 8);
  v12 = v1 + ((v10 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_24F584078(a1, v1 + v10, v12, v3, v4, v5, v6);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = *(v0 + 32);
  v131[0] = *(v0 + 16);
  v131[1] = v1;
  v2 = type metadata accessor for BasePageView(0, v131);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for Page(0);
  v130 = *(*(v6 - 1) + 80);
  v7 = v5 + v130;
  v8 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v4, 1, v9))
    {
      (*(v10 + 8))(v0 + v4, v9);
    }
  }

  else
  {
  }

  v11 = v4 + v7;
  v12 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F925218();
    v14 = *(v13 - 8);
    v15 = v130;
    if (!(*(v14 + 48))(v8 + v12, 1, v13))
    {
      (*(v14 + 8))(v8 + v12, v13);
    }
  }

  else
  {

    v15 = v130;
  }

  v16 = v11 & ~v15;
  sub_24E62A5EC(*(v8 + v2[14]), *(v8 + v2[14] + 8));
  sub_24E62A5EC(*(v8 + v2[15]), *(v8 + v2[15] + 8));
  v17 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923E98();
    (*(*(v18 - 8) + 8))(v8 + v17, v18);
  }

  else
  {
  }

  v19 = v8 + v2[17];
  v20 = sub_24F91F648();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);

  __swift_destroy_boxed_opaque_existential_1((v8 + v2[19]));

  v21 = v2[24];
  v22 = sub_24F929158();
  (*(*(v22 - 8) + 8))(v8 + v21, v22);

  v23 = v8 + v2[29];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v24 - 8) + 8))(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);

  v25 = v0 + v16;
  v26 = sub_24F92A708();
  (*(*(v26 - 8) + 8))(v0 + v16, v26);

  v27 = v6[6];
  v28 = sub_24F928818();
  (*(*(v28 - 8) + 8))(v0 + v16 + v27, v28);

  v29 = v0 + v16 + v6[20];
  v30 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v30 - 1) + 48))(v29, 1, v30))
  {
    v31 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v32 = (*(v31 - 1) + 48);
    v129 = *v32;
    if ((*v32)(v29, 1, v31))
    {
      goto LABEL_26;
    }

    v33 = v29 + v31[5];
    v34 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34))
    {
      goto LABEL_15;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v104 = sub_24F9289E8();
          (*(*(v104 - 8) + 8))(v33, v104);
          goto LABEL_15;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_15:
          v35 = v29 + v31[7];
          v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v38 = sub_24F928388();
              (*(*(v38 - 8) + 8))(v35, v38);
            }
          }

          v39 = (v29 + v31[10]);
          if (v39[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v39);
          }

LABEL_26:
          v40 = v29 + v30[5];
          if (v129(v40, 1, v31))
          {
            goto LABEL_43;
          }

          v41 = v40 + v31[5];
          v42 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v42 - 8) + 48))(v41, 1, v42))
          {
            goto LABEL_28;
          }

          v45 = swift_getEnumCaseMultiPayload();
          if (v45 > 2)
          {
            if (v45 != 3)
            {
              if (v45 == 4)
              {
                v107 = sub_24F9289E8();
                (*(*(v107 - 8) + 8))(v41, v107);
                goto LABEL_28;
              }

              if (v45 != 5)
              {
LABEL_28:
                v43 = v40 + v31[7];
                v44 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v46 = sub_24F928388();
                    (*(*(v46 - 8) + 8))(v43, v46);
                  }
                }

                v47 = (v40 + v31[10]);
                if (v47[3])
                {
                  __swift_destroy_boxed_opaque_existential_1(v47);
                }

LABEL_43:
                v48 = v29 + v30[6];
                if (v129(v48, 1, v31))
                {
                  goto LABEL_60;
                }

                v49 = v48 + v31[5];
                v50 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v50 - 8) + 48))(v49, 1, v50))
                {
                  goto LABEL_45;
                }

                v53 = swift_getEnumCaseMultiPayload();
                if (v53 > 2)
                {
                  if (v53 != 3)
                  {
                    if (v53 == 4)
                    {
                      v108 = sub_24F9289E8();
                      (*(*(v108 - 8) + 8))(v49, v108);
                      goto LABEL_45;
                    }

                    if (v53 != 5)
                    {
LABEL_45:
                      v51 = v48 + v31[7];
                      v52 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v54 = sub_24F928388();
                          (*(*(v54 - 8) + 8))(v51, v54);
                        }
                      }

                      v55 = (v48 + v31[10]);
                      if (v55[3])
                      {
                        __swift_destroy_boxed_opaque_existential_1(v55);
                      }

LABEL_60:
                      v56 = v29 + v30[7];
                      if (*(v56 + 56) == 1)
                      {
                      }

                      else if (!*(v56 + 56))
                      {

                        if (*(v56 + 40))
                        {
                          __swift_destroy_boxed_opaque_existential_1((v56 + 16));
                        }
                      }

                      v57 = v29 + v30[8];
                      v58 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v58 - 8) + 48))(v57, 1, v58))
                      {
                        goto LABEL_66;
                      }

                      v72 = swift_getEnumCaseMultiPayload();
                      if (v72 == 2)
                      {
LABEL_156:

                        goto LABEL_66;
                      }

                      if (v72 != 1)
                      {
                        if (v72)
                        {
                          goto LABEL_66;
                        }

                        v73 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v73 - 8) + 48))(v57, 1, v73))
                        {
                          goto LABEL_66;
                        }

                        v74 = swift_getEnumCaseMultiPayload();
                        if (v74 > 2)
                        {
                          if (v74 != 3)
                          {
                            if (v74 == 4)
                            {
                              v127 = sub_24F9289E8();
                              (*(*(v127 - 8) + 8))(v57, v127);
                              goto LABEL_66;
                            }

                            if (v74 != 5)
                            {
                              goto LABEL_66;
                            }
                          }

                          goto LABEL_156;
                        }

                        if (v74)
                        {
                          if (v74 == 1)
                          {
                            v125 = sub_24F9289E8();
                            v126 = *(v125 - 8);
                            if (!(*(v126 + 48))(v57, 1, v125))
                            {
                              (*(v126 + 8))(v57, v125);
                            }

                            if (!*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                            {
                              goto LABEL_66;
                            }
                          }

                          else if (v74 != 2)
                          {
                            goto LABEL_66;
                          }

                          goto LABEL_156;
                        }

                        v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_175:
                        v121 = v57 + v115;
                        v122 = type metadata accessor for JSColor(0);
                        if (!(*(*(v122 - 8) + 48))(v121, 1, v122))
                        {
                          v123 = sub_24F928388();
                          (*(*(v123 - 8) + 8))(v121, v123);
                        }

                        goto LABEL_66;
                      }

                      v86 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v87 = *(*(v86 - 8) + 48);
                      if (v87(v57, 1, v86))
                      {
LABEL_106:
                        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
                        v89 = v57 + *(v88 + 48);
                        if (!v87(v89, 1, v86))
                        {
                          v90 = swift_getEnumCaseMultiPayload();
                          if (v90 <= 2)
                          {
                            switch(v90)
                            {
                              case 0:

                                v109 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                                v110 = type metadata accessor for JSColor(0);
                                if (!(*(*(v110 - 8) + 48))(v109, 1, v110))
                                {
                                  v111 = sub_24F928388();
                                  (*(*(v111 - 8) + 8))(v109, v111);
                                }

                                goto LABEL_174;
                              case 1:
                                v116 = sub_24F9289E8();
                                v117 = *(v116 - 8);
                                if (!(*(v117 + 48))(v89, 1, v116))
                                {
                                  (*(v117 + 8))(v89, v116);
                                }

                                if (!*(v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                                {
                                  goto LABEL_174;
                                }

                                break;
                              case 2:
                                break;
                              default:
                                goto LABEL_174;
                            }

LABEL_168:

                            goto LABEL_174;
                          }

                          switch(v90)
                          {
                            case 3:
                              goto LABEL_168;
                            case 4:
                              v120 = sub_24F9289E8();
                              (*(*(v120 - 8) + 8))(v89, v120);
                              break;
                            case 5:
                              goto LABEL_168;
                          }
                        }

LABEL_174:
                        v115 = *(v88 + 80);
                        goto LABEL_175;
                      }

                      v91 = swift_getEnumCaseMultiPayload();
                      if (v91 > 2)
                      {
                        if (v91 != 3)
                        {
                          if (v91 == 4)
                          {
                            v124 = sub_24F9289E8();
                            (*(*(v124 - 8) + 8))(v57, v124);
                            goto LABEL_106;
                          }

                          if (v91 != 5)
                          {
                            goto LABEL_106;
                          }
                        }
                      }

                      else
                      {
                        if (!v91)
                        {

                          v112 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                          v113 = type metadata accessor for JSColor(0);
                          if (!(*(*(v113 - 8) + 48))(v112, 1, v113))
                          {
                            v114 = sub_24F928388();
                            (*(*(v114 - 8) + 8))(v112, v114);
                          }

                          goto LABEL_106;
                        }

                        if (v91 == 1)
                        {
                          v118 = sub_24F9289E8();
                          v119 = *(v118 - 8);
                          if (!(*(v119 + 48))(v57, 1, v118))
                          {
                            (*(v119 + 8))(v57, v118);
                          }

                          if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                          {
                          }

                          goto LABEL_106;
                        }

                        if (v91 != 2)
                        {
                          goto LABEL_106;
                        }
                      }

                      goto LABEL_106;
                    }
                  }
                }

                else
                {
                  if (!v53)
                  {

                    v98 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                    v99 = type metadata accessor for JSColor(0);
                    if (!(*(*(v99 - 8) + 48))(v98, 1, v99))
                    {
                      v100 = sub_24F928388();
                      (*(*(v100 - 8) + 8))(v98, v100);
                    }

                    goto LABEL_45;
                  }

                  if (v53 == 1)
                  {
                    v105 = sub_24F9289E8();
                    v106 = *(v105 - 8);
                    if (!(*(v106 + 48))(v49, 1, v105))
                    {
                      (*(v106 + 8))(v49, v105);
                    }

                    if (*(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                    {
                    }

                    goto LABEL_45;
                  }

                  if (v53 != 2)
                  {
                    goto LABEL_45;
                  }
                }

                goto LABEL_45;
              }
            }
          }

          else
          {
            if (!v45)
            {

              v95 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v96 = type metadata accessor for JSColor(0);
              if (!(*(*(v96 - 8) + 48))(v95, 1, v96))
              {
                v97 = sub_24F928388();
                (*(*(v97 - 8) + 8))(v95, v97);
              }

              goto LABEL_28;
            }

            if (v45 == 1)
            {
              v103 = sub_24F9289E8();
              v128 = *(v103 - 8);
              if (!(*(v128 + 48))(v41, 1, v103))
              {
                (*(v128 + 8))(v41, v103);
              }

              if (*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
              }

              goto LABEL_28;
            }

            if (v45 != 2)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v92 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v93 = type metadata accessor for JSColor(0);
        if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
        {
          v94 = sub_24F928388();
          (*(*(v94 - 8) + 8))(v92, v94);
        }

        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v101 = sub_24F9289E8();
        v102 = *(v101 - 8);
        if (!(*(v102 + 48))(v33, 1, v101))
        {
          (*(v102 + 8))(v33, v101);
        }

        if (*(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_15;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_15;
  }

LABEL_66:
  if (*(v25 + v6[23]))
  {
  }

  v59 = v25 + v6[24];
  v60 = type metadata accessor for Page.Background(0);
  if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
  {
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 <= 1)
    {
      if (v66)
      {
        if (v66 == 1)
        {
          v68 = sub_24F9289E8();
          (*(*(v68 - 8) + 8))(v59, v68);
          v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v70 = sub_24F922348();
          v71 = *(v70 - 8);
          if (!(*(v71 + 48))(v59 + v69, 1, v70))
          {
            (*(v71 + 8))(v59 + v69, v70);
          }
        }
      }

      else
      {
        v85 = sub_24F9289E8();
        (*(*(v85 - 8) + 8))(v59, v85);
      }
    }

    else if (v66 == 2)
    {
      v75 = sub_24F9289E8();
      v76 = *(v75 - 8);
      if (!(*(v76 + 48))(v59, 1, v75))
      {
        (*(v76 + 8))(v59, v75);
      }

      v77 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v78 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v78 - 1) + 48))(v77, 1, v78))
      {
        v79 = sub_24F91F4A8();
        (*(*(v79 - 8) + 8))(v77, v79);
        (*(v76 + 8))(v77 + v78[5], v75);
        v80 = v78[9];
        v81 = sub_24F928698();
        v82 = *(v81 - 8);
        v83 = *(v82 + 48);
        if (!v83(v77 + v80, 1, v81))
        {
          (*(v82 + 8))(v77 + v80, v81);
        }

        v84 = v78[10];
        if (!v83(v77 + v84, 1, v81))
        {
          (*(v82 + 8))(v77 + v84, v81);
        }
      }
    }

    else if (v66 == 3 || v66 == 4)
    {
      v67 = sub_24F928388();
      (*(*(v67 - 8) + 8))(v59, v67);
    }
  }

  v61 = (v25 + v6[27]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = (v25 + v6[28]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = (v25 + v6[29]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = (v25 + v6[30]);
  if (v64[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  return swift_deallocObject();
}

uint64_t sub_24F58B8D0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12 = v0[2];
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = *(type metadata accessor for BasePageView(0, &v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(*(type metadata accessor for Page(0) - 8) + 80);
  v12 = v1;
  v13 = v2;
  v9 = (v6 + v7 + v8) & ~v8;
  v14 = v3;
  v15 = v4;
  v10 = type metadata accessor for BasePageView(0, &v12);
  return sub_24F583690(v0 + v9, v10);
}

uint64_t sub_24F58B9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24F58BA7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v9 = *(type metadata accessor for BasePageView(0, v14) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for Page(0) - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_24F584F80(a1, a2, v2 + v10, v13, v5, v6, v7, v8);
}

uint64_t sub_24F58BB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248490, &unk_24FA203D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F58BC60()
{
  result = qword_27F248498;
  if (!qword_27F248498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248498);
  }

  return result;
}

uint64_t sub_24F58BCB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for BasePageView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Page(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_24F073C78;

  return sub_24F583558(v0 + v7, v0 + v10, v2, v3, v4, v5);
}

uint64_t objectdestroyTm_75()
{
  v1 = *(v0 + 32);
  v19[0] = *(v0 + 16);
  v19[1] = v1;
  v2 = type metadata accessor for BasePageView(0, v19);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F925218();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F925218();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  sub_24E62A5EC(*(v4 + v2[15]), *(v4 + v2[15] + 8));
  v10 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v12 = v4 + v2[17];
  v13 = sub_24F91F648();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);

  __swift_destroy_boxed_opaque_existential_1((v4 + v2[19]));

  v14 = v2[24];
  v15 = sub_24F929158();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);

  v16 = v4 + v2[29];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);

  return swift_deallocObject();
}

uint64_t sub_24F58C294(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for BasePageView(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_24F58C35C@<X0>(_BYTE *a1@<X8>)
{
  sub_24F58D394();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F58C3F8()
{
  v1 = *(v0 + 32);
  v19[0] = *(v0 + 16);
  v19[1] = v1;
  v2 = type metadata accessor for BasePageView(0, v19);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F925218();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v2[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F925218();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v4 + v7, 1, v8))
    {
      (*(v9 + 8))(v4 + v7, v8);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  sub_24E62A5EC(*(v4 + v2[15]), *(v4 + v2[15] + 8));
  v10 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v12 = v4 + v2[17];
  v13 = sub_24F91F648();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);

  __swift_destroy_boxed_opaque_existential_1((v4 + v2[19]));

  v14 = v2[24];
  v15 = sub_24F929158();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);

  v16 = v4 + v2[29];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);

  return swift_deallocObject();
}

uint64_t sub_24F58C878@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v7 = *(type metadata accessor for BasePageView(0, v13) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24F58637C(v1 + v8, v10, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_24F58C954()
{
  type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  v0 = MEMORY[0x277CE0868];
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v0);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v2 = *(sub_24F924038() - 8);
  (*(*(OpaqueTypeMetadata2 - 8) + 8))(v4 + ((*(v2 + 80) + 48) & ~*(v2 + 80)), OpaqueTypeMetadata2);
  return swift_deallocObject();
}

uint64_t sub_24F58CE64@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE0868];
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v1);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v2 = *(sub_24F924038() - 8);
  v3 = v5 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_24F58669C(v3, a1);
}

unint64_t sub_24F58D394()
{
  result = qword_27F2484A0;
  if (!qword_27F2484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2484A0);
  }

  return result;
}

unint64_t sub_24F58D3F0()
{
  result = qword_27F2484B0;
  if (!qword_27F2484B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
    sub_24E8533A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2484B0);
  }

  return result;
}

uint64_t sub_24F58D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
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
    v12 = *(a1 + *(a3 + 24) + 24);
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
}

uint64_t sub_24F58D588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
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
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_24F58D654(uint64_t a1)
{
  sub_24F58D7B4(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F58DC64(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F58D7B4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F58DCC8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F58D7B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24F58D82C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468, &qword_24FA0B140);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_24F92A708();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24F58D9AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468, &qword_24FA0B140);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_24F92A708();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F58DB14(uint64_t a1)
{
  sub_24F58DC64(319, &qword_27F235C80, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F58DC64(319, &qword_27F2484D8, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24F92A708();
      if (v3 <= 0x3F)
      {
        sub_24F58DCC8(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E6C5550();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F58DC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F58DCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F58DD18(unint64_t *a1)
{
  v49 = type metadata accessor for Page(255);
  v50 = sub_24F921BC8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750, &qword_24FA0B0F0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v91 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = sub_24E667ED0();
  v86 = swift_getWitnessTable();
  v87 = OpaqueTypeConformance2;
  v85 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  sub_24F924038();
  v83 = swift_getOpaqueTypeConformance2();
  v84 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v1 = swift_getWitnessTable();
  v2 = MEMORY[0x277CE0868];
  v46 = MEMORY[0x277CE0868];
  v81 = v1;
  v82 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v79 = swift_getWitnessTable();
  v80 = sub_24E669F00();
  v77 = swift_getWitnessTable();
  v78 = sub_24E669F54();
  v75 = swift_getWitnessTable();
  v76 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v2);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v3 = sub_24F924038();
  v4 = sub_24F5877B0();
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v5 = swift_getWitnessTable();
  v51 = v47;
  v52 = v3;
  v53 = &type metadata for AppEventDetailSideBySideStyling;
  v54 = v4;
  v55 = v5;
  v56 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v51);
  v6 = sub_24F924E38();
  v71 = swift_getWitnessTable();
  v72 = v5;
  v7 = swift_getWitnessTable();
  v51 = v6;
  v52 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  v51 = v6;
  v52 = v7;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v7;
  v68 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v9 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v46);
  v66 = v8;
  v67 = v9;
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  v10 = sub_24F924038();
  v11 = sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0790];
  v64 = v12;
  v65 = MEMORY[0x277CE0790];
  v62 = swift_getWitnessTable();
  v63 = v13;
  v14 = swift_getWitnessTable();
  v51 = v48;
  v52 = v10;
  v53 = v11;
  v54 = v14;
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  v15 = sub_24F924038();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  v17 = swift_getWitnessTable();
  v18 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier, &unk_24FA0B3E8);
  v60 = v17;
  v61 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier, &unk_24FA0B398);
  v58 = v19;
  v59 = v20;
  v21 = swift_getWitnessTable();
  v22 = MEMORY[0x277D839B0];
  v51 = v15;
  v52 = MEMORY[0x277D839B0];
  v23 = MEMORY[0x277D839C8];
  v53 = v21;
  v54 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = sub_24E6A4C1C();
  v51 = &type metadata for GameOverlayViewPredicate;
  v52 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v51 = v15;
  v52 = v22;
  v53 = v21;
  v54 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v51 = v15;
  v52 = v16;
  v53 = OpaqueTypeMetadata2;
  v54 = v21;
  v55 = v26;
  v56 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = sub_24F921C58();
  v30 = sub_24F58786C(&qword_27F2477E8, MEMORY[0x277D7EC50], MEMORY[0x277D7EC48]);
  v51 = v15;
  v52 = v16;
  v53 = OpaqueTypeMetadata2;
  v54 = v21;
  v55 = v26;
  v56 = v27;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_24F58786C(&qword_27F248440, MEMORY[0x277D7EC80], MEMORY[0x277D7EC78]);
  v51 = v49;
  v52 = v50;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v57 = v32;
  v33 = sub_24F921908();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448, &qword_24FA0B128);
  v35 = swift_getWitnessTable();
  v36 = sub_24E602068(&qword_27F248450, &qword_27F248448, &qword_24FA0B128, MEMORY[0x277D21CF8]);
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_24F58786C(&qword_27F23FB90, type metadata accessor for Page, &protocol conformance descriptor for Page);
  v51 = v33;
  v52 = v37;
  v53 = v35;
  v54 = v38;
  v55 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v51 = v33;
  v52 = v37;
  v53 = v35;
  v54 = v38;
  v55 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v51 = v40;
  v52 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = sub_24F928FD8();
  v51 = v40;
  v52 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v51 = v42;
  v52 = v43;
  v53 = v44;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F58E928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58E990()
{
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  v2 = (*(*(refreshed - 8) + 80) + 16) & ~*(*(refreshed - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923418();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(refreshed + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468, &qword_24FA0B140) + 32);
  v7 = sub_24F91F648();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(refreshed + 24);
  v9 = sub_24F92A708();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24F58EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58EBC8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OnForegroundRefreshViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F586C9C(a1, a2, v6);
}

uint64_t objectdestroy_116Tm()
{
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v2 = (*(*(ActionViewModifier - 8) + 80) + 16) & ~*(*(ActionViewModifier - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v2));
    }
  }

  else
  {
  }

  v4 = *(ActionViewModifier + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = (v3 + *(ActionViewModifier + 24));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return swift_deallocObject();
}

unint64_t sub_24F58EE10()
{
  result = qword_27F248500;
  if (!qword_27F248500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484F0, &qword_24FA0B440);
    sub_24E602068(&qword_27F248508, &qword_27F2484F8, &unk_24FA0B448, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248500);
  }

  return result;
}

uint64_t sub_24F58EEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484E0, &qword_24FA0B438);
  sub_24F923418();
  sub_24E602068(&qword_27F2484E8, &qword_27F2484E0, &qword_24FA0B438, MEMORY[0x277CE04B0]);
  sub_24F58786C(&qword_27F235EA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F58EFA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484F0, &qword_24FA0B440);
  sub_24F58EE10();
  return swift_getOpaqueTypeConformance2();
}

unint64_t PlayerProfileData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F58FAD4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75DB0;
  v6 = v2 + *(type metadata accessor for PlayerProfileData(0) + 20);
  v7 = *(v6 + 32);
  v8 = sub_24F4E70D8();
  v9 = swift_allocObject();
  v10 = *v6;
  v11 = *(v6 + 16);
  *(inited + 128) = &type metadata for PlayerProfileStats;
  *(inited + 136) = v8;
  *(inited + 104) = v9;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v7;
  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t type metadata accessor for PlayerProfileData(uint64_t a1)
{
  result = qword_27F248528;
  if (!qword_27F248528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F58F244()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F58F280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75DB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F58F360(uint64_t a1)
{
  v2 = sub_24F58FA80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F58F39C(uint64_t a1)
{
  v2 = sub_24F58FA80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248510, &qword_24FA0B488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F58FA80();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for PlayerProfileData(0) + 20));
    v10 = *(v9 + 4);
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v16 = v10;
    v13[15] = 1;
    sub_24F4E7A2C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlayerProfileData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248520, &qword_24FA0B490);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PlayerProfileData(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F58FA80();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v11;
  LOBYTE(v23) = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  v14 = v21;
  sub_24F92CC68();
  sub_24E61C0A8(v22, v13);
  v26 = 1;
  sub_24F4E7A80();
  sub_24F92CC68();
  (*(v12 + 8))(v8, v14);
  v15 = v25;
  v16 = v13 + *(v9 + 20);
  v17 = v24;
  *v16 = v23;
  *(v16 + 16) = v17;
  *(v16 + 32) = v15;
  sub_24F58FAD4(v13, v19, type metadata accessor for PlayerProfileData);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F58FB3C(v13, type metadata accessor for PlayerProfileData);
}

unint64_t sub_24F58F8D4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F58FAD4(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75DB0;
  v8 = v4 + *(a1 + 20);
  v9 = *(v8 + 32);
  v10 = sub_24F4E70D8();
  v11 = swift_allocObject();
  v12 = *v8;
  v13 = *(v8 + 16);
  *(inited + 128) = &type metadata for PlayerProfileStats;
  *(inited + 136) = v10;
  *(inited + 104) = v11;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v9;
  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v14;
  return result;
}

unint64_t sub_24F58FA80()
{
  result = qword_27F248518;
  if (!qword_27F248518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248518);
  }

  return result;
}

uint64_t sub_24F58FAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58FB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F58FBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F58FC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F58FCA0(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F58FD28()
{
  result = qword_27F248538;
  if (!qword_27F248538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248538);
  }

  return result;
}

unint64_t sub_24F58FD80()
{
  result = qword_27F248540;
  if (!qword_27F248540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248540);
  }

  return result;
}

unint64_t sub_24F58FDD8()
{
  result = qword_27F248548;
  if (!qword_27F248548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248548);
  }

  return result;
}

uint64_t sub_24F58FE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
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

uint64_t sub_24F58FF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
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

uint64_t type metadata accessor for OverlappingPlayerAvatarsView(uint64_t a1)
{
  result = qword_27F248550;
  if (!qword_27F248550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F59002C(uint64_t a1)
{
  sub_24E66ED3C(319);
  if (v1 <= 0x3F)
  {
    sub_24F5900C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F5900C8(uint64_t a1)
{
  if (!qword_27F248560)
  {
    type metadata accessor for PlayerAvatarView(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F248560);
    }
  }
}

uint64_t getEnumTagSinglePayload for OverlappingPlayerAvatarsView.TruncationRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OverlappingPlayerAvatarsView.TruncationRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24F5901CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F5901E8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

unint64_t sub_24F590224()
{
  result = qword_27F248568;
  if (!qword_27F248568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248568);
  }

  return result;
}

int *sub_24F590278@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v58[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248570, &qword_24FA0B748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v58[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248578, &qword_24FA0B750);
  MEMORY[0x28223BE20](v11);
  v13 = &v58[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248580, &qword_24FA0B758);
  MEMORY[0x28223BE20](v14);
  v16 = &v58[-v15];
  result = type metadata accessor for OverlappingPlayerAvatarsView(0);
  v18 = result;
  v19 = (v1 + result[6]);
  v20 = *(v19 + 8);
  if (v20 == 2)
  {
    v21 = *(v1 + result[7]);
    *v16 = *(v1 + result[5]);
    v16[8] = v21;
    swift_storeEnumTagMultiPayload();
    sub_24F591068();
    sub_24E602068(&qword_27F2485A0, &qword_27F248578, &qword_24FA0B750, MEMORY[0x277CE1138]);

    return sub_24F924E28();
  }

  else
  {
    v67 = v14;
    v68 = v7;
    v22 = *v19;
    v23 = *(v1 + result[5]);
    v24 = *(v23 + 16);
    if (*v19 >= v24)
    {
      v25 = *(v23 + 16);
    }

    else
    {
      v25 = *v19;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v65 = v11;
      v66 = a1;
      if (v24 <= v22)
      {

        v29 = v23;
      }

      else
      {
        v26 = (2 * v25) | 1;
        v27 = *(type metadata accessor for PlayerAvatarView(0) - 8);
        sub_24E6B90B8(v23, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), 0, v26);
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      sub_24F9237D8();
      v30 = v72;
      *v13 = sub_24F9249A8();
      *(v13 + 1) = v30;
      v13[16] = 0;
      v64 = *(v1 + v18[7]);
      if ((v20 & 1) != 0 && (v31 = *(v23 + 16), v32 = v31 - v22, v31 > v22))
      {

        v72 = sub_24F69B160(v32);
        v73 = v33;
        sub_24E600AEC();
        v34 = sub_24F925E18();
        v36 = v35;
        v38 = v37;
        sub_24F925A18();
        v60 = sub_24F925C98();
        v61 = v39;
        v41 = v40;
        v59 = v42;

        sub_24E600B40(v34, v36, v38 & 1);

        LODWORD(v72) = sub_24F9251C8();
        v43 = v59;
        v44 = v60;
        v62 = sub_24F925C58();
        v63 = v45;
        v47 = v46;
        v49 = v48;
        sub_24E600B40(v44, v41, v43 & 1);

        v50 = v71;
        v51 = *(v71 + 36);
        v52 = *MEMORY[0x277CE13B8];
        v53 = sub_24F927748();
        v54 = v69;
        (*(*(v53 - 8) + 104))(&v69[v51], v52, v53);
        *v54 = v62;
        *(v54 + 8) = v47;
        *(v54 + 16) = v49 & 1;
        *(v54 + 24) = v63;
        sub_24E6009C8(v54, v10, &qword_27F214BA8, &unk_24F94DA80);
        (*(v70 + 56))(v10, 0, 1, v50);
      }

      else
      {
        (*(v70 + 56))(v10, 1, 1, v71);
      }

      v55 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248588, &qword_24FA0B760) + 44)];
      v56 = v68;
      sub_24E60169C(v10, v68, &qword_27F248570, &qword_24FA0B748);
      *v55 = v29;
      v55[8] = v64;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248590, &qword_24FA0B768);
      sub_24E60169C(v56, &v55[*(v57 + 48)], &qword_27F248570, &qword_24FA0B748);

      sub_24E601704(v10, &qword_27F248570, &qword_24FA0B748);
      sub_24E601704(v56, &qword_27F248570, &qword_24FA0B748);

      sub_24E60169C(v13, v16, &qword_27F248578, &qword_24FA0B750);
      swift_storeEnumTagMultiPayload();
      sub_24F591068();
      sub_24E602068(&qword_27F2485A0, &qword_27F248578, &qword_24FA0B750, MEMORY[0x277CE1138]);
      sub_24F924E28();
      return sub_24E601704(v13, &qword_27F248578, &qword_24FA0B750);
    }
  }

  return result;
}

void sub_24F5908E8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>)
{
  *&v41 = a3;
  v44 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248608, &qword_24FA0B858);
  MEMORY[0x28223BE20](v43);
  v10 = &v39 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248610, &qword_24FA0B860);
  MEMORY[0x28223BE20](v42);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485E8, &unk_24FA0B838);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485D8, &qword_24FA0B830);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v26 = *a1;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(a2 + 16))
    {
      v40 = v23;
      v27 = *(type metadata accessor for PlayerAvatarView(0) - 8);
      sub_24EF8FCD0(a2 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v15);
      sub_24F927618();
      sub_24F9238C8();
      v28 = &v15[*(v13 + 36)];
      v29 = v49;
      *v28 = v48;
      *(v28 + 1) = v29;
      *(v28 + 2) = v50;
      sub_24F925B38();
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = a5;
      v54.size.height = a5;
      CGRectGetMidY(v54);
      v55.origin.x = 0.0;
      v55.origin.y = 0.0;
      v55.size.width = a5;
      v55.size.height = a5;
      CGRectGetHeight(v55);
      v51 = 0x3FF0000000000000uLL;
      *&v52 = 0;
      *(&v52 + 1) = 0x3FF0000000000000;
      v53 = 0uLL;
      sub_24F925B08();
      sub_24F925AE8();
      v30 = v47;
      v41 = v45;
      v39 = v46;
      sub_24E6009C8(v15, v18, &qword_27F2233D0, &qword_24F958810);
      v31 = &v18[*(v16 + 36)];
      v32 = v39;
      *v31 = v41;
      *(v31 + 1) = v32;
      v31[32] = v30;
      sub_24E6009C8(v18, v21, &qword_27F2485E8, &unk_24FA0B838);
      *&v21[*(v40 + 36)] = 1.0 / (v26 + 1);
      sub_24E6009C8(v21, v25, &qword_27F2485D8, &qword_24FA0B830);
      sub_24E60169C(v25, v12, &qword_27F2485D8, &qword_24FA0B830);
      swift_storeEnumTagMultiPayload();
      sub_24F59127C();
      sub_24F5913EC();
      sub_24F924E28();
      v33 = v25;
      v34 = &qword_27F2485D8;
      v35 = &qword_24FA0B830;
LABEL_7:
      sub_24E601704(v33, v34, v35);
      return;
    }

    __break(1u);
  }

  else if (*(a2 + 16))
  {
    v36 = *(type metadata accessor for PlayerAvatarView(0) - 8);
    sub_24EF8FCD0(a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v10);
    sub_24F927618();
    sub_24F9238C8();
    v37 = &v10[*(v13 + 36)];
    v38 = v52;
    *v37 = v51;
    *(v37 + 1) = v38;
    *(v37 + 2) = v53;
    *&v10[*(v43 + 36)] = 0x3FF0000000000000;
    sub_24E60169C(v10, v12, &qword_27F248608, &qword_24FA0B858);
    swift_storeEnumTagMultiPayload();
    sub_24F59127C();
    sub_24F5913EC();
    sub_24F924E28();
    v33 = v10;
    v34 = &qword_27F248608;
    v35 = &qword_24FA0B858;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_24F590ED8@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = qword_24FA0B878[v5];
  v7 = qword_24FA0B8A8[v5];
  v8 = qword_24FA0B8D8[v5];
  v9 = dbl_24FA0B908[v5];
  *a2 = sub_24F9249A8();
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485B8, &unk_24FA0B7F8);
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485C0, &qword_24FA0B828);
  sub_24E62A6CC();
  sub_24F5911F0();
  return sub_24F927228();
}

unint64_t sub_24F591068()
{
  result = qword_27F248598;
  if (!qword_27F248598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248598);
  }

  return result;
}

unint64_t sub_24F5910D0()
{
  result = qword_27F2485A8;
  if (!qword_27F2485A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485B0, &qword_24FA0B7A0);
    sub_24F591068();
    sub_24E602068(&qword_27F2485A0, &qword_27F248578, &qword_24FA0B750, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485A8);
  }

  return result;
}

uint64_t sub_24F5911A4()
{

  return swift_deallocObject();
}

unint64_t sub_24F5911F0()
{
  result = qword_27F2485C8;
  if (!qword_27F2485C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485C0, &qword_24FA0B828);
    sub_24F59127C();
    sub_24F5913EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485C8);
  }

  return result;
}

unint64_t sub_24F59127C()
{
  result = qword_27F2485D0;
  if (!qword_27F2485D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485D8, &qword_24FA0B830);
    sub_24F591334();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485D0);
  }

  return result;
}

unint64_t sub_24F591334()
{
  result = qword_27F2485E0;
  if (!qword_27F2485E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485E8, &unk_24FA0B838);
    sub_24E680290();
    sub_24E602068(&qword_27F2485F0, &qword_27F2485F8, &unk_24FA0B848, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485E0);
  }

  return result;
}

unint64_t sub_24F5913EC()
{
  result = qword_27F248600;
  if (!qword_27F248600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248608, &qword_24FA0B858);
    sub_24E680290();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248600);
  }

  return result;
}

id sub_24F5914E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact);
  *a2 = v4;

  return v4;
}

void sub_24F591578(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F556BB0(v1);
}

void sub_24F59161C(void *a1, void *a2, void *a3)
{
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_24F9289E8();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v49 = &v46 - v21;
  v50 = a3;
  v22 = [a3 source];
  v53 = v9;
  v54 = a1;
  v52 = v3;
  if (v22 == 4 || v22 == 1)
  {
    v23 = [v55 imageData];
    if (v23)
    {
      v24 = v23;
      v25 = sub_24F91F4E8();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xF000000000000000;
    }
  }

  else
  {
    v25 = sub_24F591BF4();
    v27 = v28;
  }

  v29 = v16;
  v30 = [objc_opt_self() defaultManager];
  sub_24F5D30C4();
  sub_24F5D3628(v25, v27, v14);
  v31 = v15;
  if ((*(v29 + 48))(v14, 1, v15) != 1)
  {
    v38 = v49;
    (*(v29 + 32))(v49, v14, v31);
    (*(v29 + 16))(v18, v38, v31);
    v48 = v25;
    v39 = v11;
    sub_24F928978();
    v46 = *(v52 + OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent + 8);
    v47 = v30;
    v40 = v51;
    v41 = v11;
    v42 = v53;
    (*(v51 + 16))(v8, v41, v53);
    (*(v40 + 56))(v8, 0, 1, v42);
    v52 = v31;
    v43 = sub_24F91F398();
    v46(v8, v43, v44, v50, v55);

    sub_24E71CBAC(v48, v27);
    sub_24E601704(v8, &qword_27F213FB0, &qword_24F93E6B0);
    (*(v40 + 8))(v39, v42);
    (*(v29 + 8))(v38, v52);
    v37 = [v54 presentingViewController];
    if (!v37)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_24E601704(v14, &qword_27F228530, &unk_24F93C6E0);
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9220D8();
  __swift_project_value_buffer(v32, qword_27F39E8F8);
  v33 = sub_24F9220B8();
  v34 = sub_24F92BDB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24E5DD000, v33, v34, "There is no cached avatar URL. Was the avatar deleted?", v35, 2u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  v36 = *(v52 + OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent + 8);
  (*(v51 + 56))(v8, 1, 1, v53);
  v36(v8, 0, 0, 0, 0);

  sub_24E71CBAC(v25, v27);
  sub_24E601704(v8, &qword_27F213FB0, &qword_24F93E6B0);
  v37 = [v54 presentingViewController];
  if (v37)
  {
LABEL_15:
    v45 = v37;
    [v37 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_24F591BF4()
{
  v1 = [v0 imageData];
  if (!v1)
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8F8);
    p_super = sub_24F9220B8();
    v15 = sub_24F92BDB8();
    if (os_log_type_enabled(p_super, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24E5DD000, p_super, v15, "There is no image for the avatar. Is it deleted?", v16, 2u);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    goto LABEL_28;
  }

  v2 = v1;
  v3 = sub_24F91F4E8();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24E71CBC0(v3, v5);
  v7 = sub_24F91F4C8();
  v8 = [v6 initWithData_];

  sub_24E627880(v3, v5);
  if (!v8 || (p_super = [v8 CGImage], v8, !p_super))
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8F8);
    p_super = sub_24F9220B8();
    v12 = sub_24F92BDB8();
    if (os_log_type_enabled(p_super, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, p_super, v12, "Could not convert image data to CGImage.", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    sub_24E627880(v3, v5);
    goto LABEL_28;
  }

  [v0 cropRect];
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 0.0;
  v33.size.height = 0.0;
  if (CGRectEqualToRect(v31, v33))
  {
    v10 = p_super;
  }

  else
  {
    [v0 cropRect];
    v10 = CGImageCreateWithImageInRect(p_super, v32);
    if (!v10)
    {
      if (qword_27F211438 != -1)
      {
        swift_once();
      }

      v26 = sub_24F9220D8();
      __swift_project_value_buffer(v26, qword_27F39E8F8);
      v27 = sub_24F9220B8();
      v28 = sub_24F92BDB8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24E5DD000, v27, v28, "Could not get the cropped image.", v29, 2u);
        MEMORY[0x2530542D0](v29, -1, -1);
      }

      sub_24E627880(v3, v5);

      goto LABEL_28;
    }
  }

  v17 = v10;
  v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v19 = UIImagePNGRepresentation(v18);
  if (!v19)
  {

    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E8F8);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Could not create a PNG data from the cropped image.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    sub_24E627880(v3, v5);

LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  v20 = v19;
  v21 = sub_24F91F4E8();

  sub_24E627880(v3, v5);
  p_super = &v20->super;
LABEL_29:

  return v21;
}

id sub_24F592164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarEditorView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24F59221C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = type metadata accessor for AvatarEditorView.Coordinator();
  v8 = *v1;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent];
  *v6 = v8;
  *(v6 + 2) = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24F5922A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F59260C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24F59230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F59260C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24F592370(uint64_t a1)
{
  sub_24F59260C();
  sub_24F925628();
  __break(1u);
}

id sub_24F59239C(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_24F922D68();
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  v15 = a3;
  sub_24E69A53C();
  sub_24F91FD88();

  v5 = *&a3[OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact];
  if (!v5)
  {
    return [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 photoPickerForGameCenterWithContact_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248690, &qword_24FA0BA88);
  sub_24F925788();
  [v8 setDelegate_];

  if (qword_27F2116B8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F92B098();
  [v8 setAssignActionTitleOverride_];

  v10 = *MEMORY[0x277D76838];
  v11 = v8;
  v12 = v10;
  sub_24F92BE18();
  sub_24F922D48();
  sub_24F92BE28();
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v13;
}

void sub_24F5925DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F556BB0(v1);
}

unint64_t sub_24F59260C()
{
  result = qword_27F248698;
  if (!qword_27F248698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248698);
  }

  return result;
}

uint64_t sub_24F592674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5926F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsExpandedSummaryView(uint64_t a1)
{
  result = qword_27F2486A8;
  if (!qword_27F2486A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5927B0(uint64_t a1)
{
  result = type metadata accessor for GSKDebugMetricsEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24F592840()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_24F92B098();
  [v0 setDateFormat_];

  qword_27F2486A0 = v0;
}

uint64_t sub_24F5928BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486C0, &qword_24FA0BB10);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  sub_24F77748C();
  sub_24F926DF8();
  sub_24F924CF8();
  v14 = sub_24F924D08();
  v15 = *(v14 - 8);
  v34 = *(v15 + 56);
  v33 = v15 + 56;
  v34(v13, 0, 1, v14);
  v38 = sub_24F926E58();

  sub_24E601704(v13, &qword_27F214410, &unk_24F9576A0);
  v16 = sub_24F925908();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v37 = sub_24F925968();
  sub_24E601704(v10, &qword_27F214698, &unk_24F95F810);
  KeyPath = swift_getKeyPath();
  type metadata accessor for GSKDebugMetricsExpandedSummaryView(0);
  sub_24F9238C8();
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486C8, &qword_24FA0BB48);
  sub_24F592E70(a1, &v7[*(v18 + 44)]);
  if (*(*(a1 + *(type metadata accessor for GSKDebugMetricsEvent(0) + 24)) + 16))
  {
    sub_24F926DF8();
    sub_24F924CE8();
    v34(v13, 0, 1, v14);
    v19 = sub_24F926E58();

    sub_24E601704(v13, &qword_27F214410, &unk_24F9576A0);
    v17(v10, 1, 1, v16);
    v20 = sub_24F925968();
    sub_24E601704(v10, &qword_27F214698, &unk_24F95F810);
    v21 = swift_getKeyPath();
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  v22 = v39;
  sub_24E60169C(v7, v39, &qword_27F2486C0, &qword_24FA0BB10);
  v34 = v7;
  v23 = v38;
  *&v40 = v38;
  v24 = KeyPath;
  *(&v40 + 1) = KeyPath;
  v25 = v37;
  *v41 = v37;
  *&v41[8] = v46;
  *&v41[24] = v47;
  *&v41[40] = v48;
  v26 = *v41;
  v27 = v35;
  *v35 = v40;
  v27[1] = v26;
  v28 = *&v41[32];
  v27[2] = *&v41[16];
  v27[3] = v28;
  *(v27 + 8) = *&v41[48];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486D0, &unk_24FA0BB50);
  sub_24E60169C(v22, v27 + v29[12], &qword_27F2486C0, &qword_24FA0BB10);
  v30 = v27 + v29[16];
  *v30 = 0;
  v30[8] = 1;
  v31 = (v27 + v29[20]);
  sub_24E60169C(&v40, v42, &qword_27F2128C8, &unk_24F939720);
  sub_24E680F54(v19, v21, v20);
  sub_24E680FA4(v19, v21, v20);
  *v31 = v19;
  v31[1] = v21;
  v31[2] = v20;
  sub_24E601704(v34, &qword_27F2486C0, &qword_24FA0BB10);
  sub_24E680FA4(v19, v21, v20);
  sub_24E601704(v22, &qword_27F2486C0, &qword_24FA0BB10);
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v43 = v46;
  v44 = v47;
  v45 = v48;
  return sub_24E601704(v42, &qword_27F2128C8, &unk_24F939720);
}

uint64_t sub_24F592E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486D8, &unk_24FA0BB60);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = aEventtype_6[0];
  v12 = aEventtype_6[1];
  v13 = off_281C9F358;

  v14 = a1;
  sub_24F5C567C(v11, v12, v13, v10);

  v15 = sub_24F929458();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_24E601704(v10, &qword_27F220998, &qword_24F964950);
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
  }

  else
  {
    v18 = sub_24F929448();
    v17 = v19;
    (*(v16 + 8))(v10, v15);
  }

  v68 = v18;
  v69 = v17;
  sub_24E600AEC();
  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  sub_24F925A28();
  v58 = sub_24F925C98();
  v59 = v25;
  v27 = v26;
  v51 = v26;
  v52 = v28;

  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v68 = sub_24F777ACC();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486E0, &unk_24FA0BBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486E8, &unk_24FA0C450);
  sub_24E602068(&qword_27F2486F0, &qword_27F2486E0, &unk_24FA0BBC0, MEMORY[0x277D83980]);
  sub_24F593A2C();
  v29 = v62;
  sub_24F927228();
  v61 = sub_24F9249A8();
  LOBYTE(v68) = 1;
  sub_24F593620(v14, v65);
  *(v64 + 7) = v65[0];
  *(&v64[1] + 7) = v65[1];
  *(&v64[2] + 7) = v65[2];
  *(&v64[3] + 7) = v65[3];
  v60 = v68;
  v50 = sub_24F925A18();
  v49 = swift_getKeyPath();
  v57 = sub_24F9251C8();
  v30 = v54;
  v31 = v55;
  v32 = *(v55 + 16);
  v33 = v63;
  v32(v63, v29, v54);
  v34 = v58;
  v35 = v59;
  v36 = v53;
  *v53 = v58;
  v36[1] = v27;
  v52 &= 1u;
  *(v36 + 16) = v52;
  v37 = KeyPath;
  v36[3] = v35;
  v36[4] = v37;
  v36[5] = 3;
  *(v36 + 48) = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248700, &qword_24FA0BBD0);
  v32(v36 + *(v38 + 48), v33, v30);
  v39 = (v36 + *(v38 + 64));
  v66 = v61;
  LOBYTE(v67[0]) = v60;
  *(&v67[3] + 1) = v64[3];
  *(&v67[2] + 1) = v64[2];
  *(v67 + 1) = v64[0];
  *(&v67[1] + 1) = v64[1];
  v40 = v49;
  v41 = v50;
  *&v67[4] = *(&v64[3] + 15);
  *(&v67[4] + 1) = v49;
  *&v67[5] = v50;
  DWORD2(v67[5]) = v57;
  v42 = v67[4];
  v39[4] = v67[3];
  v39[5] = v42;
  *(v39 + 92) = *(&v67[4] + 12);
  v43 = v67[0];
  *v39 = v66;
  v39[1] = v43;
  v44 = v67[2];
  v39[2] = v67[1];
  v39[3] = v44;
  v45 = v34;
  v46 = v51;
  LOBYTE(v34) = v52;
  sub_24E5FD138(v45, v51, v52);

  sub_24E60169C(&v66, &v68, &qword_27F248708, &unk_24FA0BBD8);
  v47 = *(v31 + 8);
  v47(v62, v30);
  v72 = v64[1];
  v73 = v64[2];
  *v74 = v64[3];
  v68 = v61;
  v69 = 0;
  v70 = v60;
  v71 = v64[0];
  *&v74[15] = *(&v64[3] + 15);
  v75 = v40;
  v76 = v41;
  v77 = v57;
  sub_24E601704(&v68, &qword_27F248708, &unk_24FA0BBD8);
  v47(v63, v30);
  sub_24E600B40(v58, v46, v34);
}

uint64_t sub_24F593484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24F91F008();
  MEMORY[0x28223BE20](v12 - 8);
  if (a4)
  {

    MEMORY[0x253050C20](8250, 0xE200000000000000);
    MEMORY[0x253050C20](a3, a4);
    sub_24F777CA0(a5, a1, a2);

    v13 = sub_24F925DF8();
    v15 = v14;
    v17 = v16;
    sub_24F9258D8();
    v18 = sub_24F925C98();
    v20 = v19;
    v22 = v21;
    a4 = v23;

    sub_24E600B40(v13, v15, v17 & 1);

    result = swift_getKeyPath();
    v25 = v22 & 1;
    v26 = 1;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v25 = 0;
    result = 0;
    v26 = 0;
  }

  *a6 = v18;
  *(a6 + 8) = v20;
  *(a6 + 16) = v25;
  *(a6 + 24) = a4;
  *(a6 + 32) = result;
  *(a6 + 40) = v26;
  *(a6 + 48) = 0;
  return result;
}

uint64_t sub_24F593620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = aEventtime_0[0];
  v12 = aEventtime_0[1];
  v13 = off_281C9F538;

  sub_24F5C5694(v11, v12, v13, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_27F211350 != -1)
    {
      swift_once();
    }

    v18 = qword_27F2486A0;
    v19 = sub_24F91F578();
    v20 = [v18 stringFromDate_];

    v21 = sub_24F92B0D8();
    v23 = v22;

    v37 = v21;
    v38 = v23;
    sub_24E600AEC();
    v14 = sub_24F925E18();
    v15 = v24;
    v26 = v25;
    v17 = v27;
    (*(v8 + 8))(v10, v7);
    v16 = v26 & 1;
    sub_24E5FD138(v14, v15, v26 & 1);
  }

  v28 = (a1 + *(type metadata accessor for GSKDebugMetricsEvent(0) + 28));
  v29 = v28[1];
  if (v29)
  {
    v37 = *v28;
    v38 = v29;
    sub_24E600AEC();

    v29 = sub_24F925E18();
    v31 = v30;
    v33 = v32;
    v35 = v34 & 1;
    sub_24E5FD138(v29, v30, v34 & 1);
  }

  else
  {
    v31 = 0;
    v35 = 0;
    v33 = 0;
  }

  sub_24E65D2B4(v14, v15, v16, v17);
  sub_24E65D2B4(v29, v31, v35, v33);
  sub_24E65D2F8(v14, v15, v16, v17);
  sub_24E65D2F8(v29, v31, v35, v33);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v29;
  a2[5] = v31;
  a2[6] = v35;
  a2[7] = v33;
  sub_24E65D2F8(v29, v31, v35, v33);
  return sub_24E65D2F8(v14, v15, v16, v17);
}

uint64_t sub_24F5939C8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486B8, &qword_24FA0BB08);
  return sub_24F5928BC(v2, (a2 + *(v4 + 44)));
}

unint64_t sub_24F593A2C()
{
  result = qword_27F2486F8;
  if (!qword_27F2486F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2486E8, &unk_24FA0C450);
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2486F8);
  }

  return result;
}

uint64_t FriendSuggestionType.rawValue.getter()
{
  v1 = 0x746E6F4368737570;
  if (*v0 != 1)
  {
    v1 = 0x79616C5068737570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736567617373656DLL;
  }
}

GameStoreKit::FriendSuggestionType_optional __swiftcall FriendSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F593BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E6F4368737570;
  v4 = 0xEB00000000746361;
  if (v2 != 1)
  {
    v3 = 0x79616C5068737570;
    v4 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736567617373656DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x746E6F4368737570;
  v8 = 0xEB00000000746361;
  if (*a2 != 1)
  {
    v7 = 0x79616C5068737570;
    v8 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736567617373656DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F593CD8()
{
  result = qword_27F248720;
  if (!qword_27F248720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248720);
  }

  return result;
}

uint64_t sub_24F593D2C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F593DDC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F593E78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F593F30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000746361;
  v5 = 0x746E6F4368737570;
  if (v2 != 1)
  {
    v5 = 0x79616C5068737570;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736567617373656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F59405C()
{
  result = qword_27F248728;
  if (!qword_27F248728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248728);
  }

  return result;
}

uint64_t sub_24F5940C0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248740, &qword_24FA0BE40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F594580();
  sub_24F92D128();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
  sub_24F5945D4(&qword_27F22D0C8, sub_24ECA4FDC, MEMORY[0x277D83948]);
  sub_24F92CCF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F594264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F5942EC(uint64_t a1)
{
  v2 = sub_24F594580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F594328(uint64_t a1)
{
  v2 = sub_24F594580();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F594384@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F5943CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_24F5943CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248730, &unk_24FA0BE30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F594580();
  sub_24F92D108();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
    sub_24F5945D4(&qword_27F22D0B0, sub_24ECA4F58, MEMORY[0x277D83978]);
    sub_24F92CC18();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_24F594580()
{
  result = qword_27F248738;
  if (!qword_27F248738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248738);
  }

  return result;
}

uint64_t sub_24F5945D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8, &qword_24F993850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F594660()
{
  result = qword_27F248748;
  if (!qword_27F248748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248748);
  }

  return result;
}

unint64_t sub_24F5946B8()
{
  result = qword_27F248750;
  if (!qword_27F248750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248750);
  }

  return result;
}

unint64_t sub_24F594710()
{
  result = qword_27F248758;
  if (!qword_27F248758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248758);
  }

  return result;
}

uint64_t sub_24F594764@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v22 = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070, &qword_24F94FF00);
  MEMORY[0x28223BE20](v21);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248760, &unk_24FA0BF68);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v12 = type metadata accessor for ColorGroup(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v11, &qword_27F2190D8, &unk_24F94BD70);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F2190D8, &unk_24F94BD70);
    *v8 = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768, &qword_24FA0BF78);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24F594E60();
    return sub_24F924E28();
  }

  else
  {
    sub_24E77D42C(v11, v15);
    *v5 = sub_24F927618();
    v5[1] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
    sub_24F594F18(v20 & 1, v15, v5 + *(v18 + 44));
    sub_24E60169C(v5, v8, &qword_27F219070, &qword_24F94FF00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768, &qword_24FA0BF78);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24F594E60();
    sub_24F924E28();
    sub_24E601704(v5, &qword_27F219070, &qword_24F94FF00);
    return sub_24E77D068(v15);
  }
}

uint64_t sub_24F594AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070, &qword_24F94FF00);
  MEMORY[0x28223BE20](v18[0]);
  v4 = (v18 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248760, &unk_24FA0BF68);
  MEMORY[0x28223BE20](v5);
  v7 = (v18 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for ColorGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v10, &qword_27F2190D8, &unk_24F94BD70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F2190D8, &unk_24F94BD70);
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768, &qword_24FA0BF78);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24F594E60();
    return sub_24F924E28();
  }

  else
  {
    sub_24E77D42C(v10, v14);
    *v4 = sub_24F927618();
    v4[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
    sub_24F59525C(v14, v4 + *(v17 + 44));
    sub_24E60169C(v4, v7, &qword_27F219070, &qword_24F94FF00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768, &qword_24FA0BF78);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24F594E60();
    sub_24F924E28();
    sub_24E601704(v4, &qword_27F219070, &qword_24F94FF00);
    return sub_24E77D068(v14);
  }
}

unint64_t sub_24F594E60()
{
  result = qword_27F248770;
  if (!qword_27F248770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248768, &qword_24FA0BF78);
    sub_24E760430();
    sub_24E602068(&qword_27F248778, &qword_27F248780, &unk_24FA0BF80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248770);
  }

  return result;
}

uint64_t sub_24F594F18@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788, &qword_24FA0BF90);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v12 = swift_allocObject();
  v27 = xmmword_24F93A400;
  *(v12 + 16) = xmmword_24F93A400;
  v13 = type metadata accessor for ColorGroup(0);
  v14 = 28;
  if (a1)
  {
    v15 = 28;
  }

  else
  {
    v15 = 32;
  }

  if (a1)
  {
    v14 = 32;
  }

  *(v12 + 32) = *(a2 + *(v13 + v15));
  *(v12 + 40) = *(a2 + *(v13 + v14));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v12);
  sub_24F923BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  if (a1)
  {
    *(v16 + 32) = sub_24F926C98();
    sub_24F926C88();
    v17 = sub_24F926D08();

    *(v16 + 40) = v17;
  }

  else
  {
    sub_24F926C88();
    v18 = sub_24F926D08();

    *(v16 + 32) = v18;
    *(v16 + 40) = sub_24F926C98();
  }

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v16);
  sub_24F923BD8();
  v19 = *(v6 + 36);
  v20 = *MEMORY[0x277CE13B0];
  v21 = sub_24F927748();
  (*(*(v21 - 8) + 104))(&v11[v19], v20, v21);
  v22 = v32;
  *v11 = v31;
  *(v11 + 1) = v22;
  *(v11 + 4) = v33;
  v23 = v28;
  sub_24E60169C(v11, v8, &qword_27F248788, &qword_24FA0BF90);
  *a3 = v23;
  v24 = v29;
  *(a3 + 24) = v30;
  *(a3 + 8) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790, &qword_24FA0BF98);
  sub_24E60169C(v8, a3 + *(v25 + 48), &qword_27F248788, &qword_24FA0BF90);

  sub_24E601704(v11, &qword_27F248788, &qword_24FA0BF90);
  sub_24E601704(v8, &qword_27F248788, &qword_24FA0BF90);
}

uint64_t sub_24F59525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788, &qword_24FA0BF90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  v12 = type metadata accessor for ColorGroup(0);
  *(v11 + 32) = *(a1 + *(v12 + 28));
  *(v11 + 40) = *(a1 + *(v12 + 32));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F9479A0;
  sub_24F926C98();
  *(v13 + 32) = sub_24F9273C8();
  *(v13 + 40) = v14;
  sub_24F926C98();
  *(v13 + 48) = sub_24F9273C8();
  *(v13 + 56) = v15;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 64) = sub_24F9273C8();
  *(v13 + 72) = v16;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v17 = *(v5 + 44);
  v18 = *MEMORY[0x277CE13B0];
  v19 = sub_24F927748();
  (*(*(v19 - 8) + 104))(&v10[v17], v18, v19);
  v20 = v29;
  *v10 = v28;
  *(v10 + 1) = v20;
  *(v10 + 4) = v30;
  v21 = v25;
  sub_24E60169C(v10, v7, &qword_27F248788, &qword_24FA0BF90);
  *a2 = v21;
  v22 = v26;
  *(a2 + 24) = v27;
  *(a2 + 8) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790, &qword_24FA0BF98);
  sub_24E60169C(v7, a2 + *(v23 + 48), &qword_27F248788, &qword_24FA0BF90);

  sub_24E601704(v10, &qword_27F248788, &qword_24FA0BF90);
  sub_24E601704(v7, &qword_27F248788, &qword_24FA0BF90);
}

unint64_t sub_24F595594()
{
  result = qword_27F248798;
  if (!qword_27F248798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248798);
  }

  return result;
}

uint64_t sub_24F5955E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788, &qword_24FA0BF90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v11 = swift_allocObject();
  v23 = xmmword_24F93A400;
  *(v11 + 16) = xmmword_24F93A400;
  v12 = type metadata accessor for ColorGroup(0);
  *(v11 + 32) = *(a1 + *(v12 + 28));
  *(v11 + 40) = *(a1 + *(v12 + 32));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  v13 = swift_allocObject();
  *(v13 + 16) = v23;
  *(v13 + 32) = sub_24F926C98();
  sub_24F926C88();
  v14 = sub_24F926D08();

  *(v13 + 40) = v14;
  sub_24F927898();
  MEMORY[0x25304CD70](v13);
  sub_24F923BD8();
  v15 = *(v5 + 44);
  v16 = *MEMORY[0x277CE13B0];
  v17 = sub_24F927748();
  (*(*(v17 - 8) + 104))(&v10[v15], v16, v17);
  v18 = v28;
  *v10 = v27;
  *(v10 + 1) = v18;
  *(v10 + 4) = v29;
  v19 = v24;
  sub_24E60169C(v10, v7, &qword_27F248788, &qword_24FA0BF90);
  *a2 = v19;
  v20 = v25;
  *(a2 + 24) = v26;
  *(a2 + 8) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790, &qword_24FA0BF98);
  sub_24E60169C(v7, a2 + *(v21 + 48), &qword_27F248788, &qword_24FA0BF90);

  sub_24E601704(v10, &qword_27F248788, &qword_24FA0BF90);
  sub_24E601704(v7, &qword_27F248788, &qword_24FA0BF90);
}

uint64_t sub_24F5958D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
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

uint64_t sub_24F5959B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
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

void sub_24F595A98(uint64_t a1)
{
  sub_24EF36C6C(319);
  if (v1 <= 0x3F)
  {
    sub_24F595B1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F595B1C(uint64_t a1)
{
  if (!qword_27F2487B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214490, &qword_24F93CD40);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2487B0);
    }
  }
}

uint64_t sub_24F595B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for RibbonView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487B8, &qword_24FA0C0A8);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v23[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C0, &qword_24FA0C0B0) + 44);
  v10 = (v2 + *(v4 + 28));
  v12 = *v10;
  v11 = v10[1];
  v25 = v12;
  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C8, &qword_24FA0C0B8);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F59A100(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RibbonView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24F598CA4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214490, &qword_24F93CD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487D0, &qword_24FA0C0E0);
  sub_24E602068(&qword_27F2487D8, &qword_27F214490, &qword_24F93CD40, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F2487E0, &qword_27F2487D0, &qword_24FA0C0E0, MEMORY[0x277CE14C0]);
  sub_24F927228();
  v15 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_24F598D90();
  v18 = v24;
  sub_24F9268B8();
  sub_24E601704(v9, &qword_27F2487B8, &qword_24FA0C0A8);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248800, &qword_24FA0C128) + 36)) = 0;
  v19 = v18;
  v20 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248808, &unk_24FA0C160);
  v22 = v19 + *(result + 36);
  *v22 = v20;
  *(v22 + 8) = 1;
  *(v22 + 16) = 0;
  return result;
}

uint64_t sub_24F595EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v103);
  v104 = &v102 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248810, &qword_24FA0C170);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248818, &qword_24FA0C178);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v102 - v12;
  v13 = sub_24F924BE8();
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x28223BE20](v13);
  v119 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F929888();
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  v20 = sub_24F925A38();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248820, &qword_24FA0C180);
  v113 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v102 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248828, &qword_24FA0C188);
  v28 = *(v27 - 8);
  v116 = v27;
  v117 = v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - v29;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248830, &unk_24FA0C190);
  MEMORY[0x28223BE20](v123);
  v107 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v114 = &v102 - v33;
  MEMORY[0x28223BE20](v34);
  v122 = &v102 - v35;
  MEMORY[0x28223BE20](v36);
  v125 = &v102 - v37;
  v38 = *a1;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  v124 = a2;
  sub_24F9237D8();
  countAndFlagsBits = v127._countAndFlagsBits;
  *v26 = v38;
  v26[1] = countAndFlagsBits;
  type metadata accessor for RibbonView.BadgeView(0);
  v127._countAndFlagsBits = 0x4010000000000000;
  (*(v21 + 104))(v23, *MEMORY[0x277CE0A98], v20);
  sub_24E62C088();
  sub_24F9237B8();
  *(v26 + *(v24 + 36)) = 257;
  v127 = 0;
  v128 = 0u;
  memset(v126, 0, sizeof(v126));
  sub_24F9297C8();
  sub_24E601704(v126, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v127, &qword_27F2129B0, &unk_24F945320);
  LOBYTE(v126[0]) = *(v38 + 16);
  v40 = BadgeType.rawValue.getter();
  *(&v128 + 1) = MEMORY[0x277D837D0];
  v127._countAndFlagsBits = v40;
  v127._object = v41;
  sub_24F929868();
  v42 = *(v118 + 8);
  v43 = v16;
  v44 = v115;
  v42(v43, v115);
  sub_24E601704(&v127, &qword_27F2129B0, &unk_24F945320);
  v45 = sub_24F598E9C();
  v46 = v113;
  sub_24F925EE8();
  v42(v19, v44);
  v47 = v26;
  v48 = v114;
  sub_24E601704(v47, &qword_27F248820, &qword_24FA0C180);
  v49 = v119;
  sub_24F924BB8();
  v127._countAndFlagsBits = v46;
  v127._object = v45;
  swift_getOpaqueTypeConformance2();
  v50 = v116;
  sub_24F9267D8();
  (*(v120 + 8))(v49, v121);
  (*(v117 + 8))(v30, v50);
  v51 = *(v38 + 17);
  if ((v51 - 3) >= 3)
  {
    if (v51 == 2)
    {
      if (qword_27F2117E0 != -1)
      {
        swift_once();
      }

      v52 = &qword_27F39EFD8;
    }

    else
    {
      if (v51 != 13)
      {
        v53 = 0;
        v54 = 0xE000000000000000;
        goto LABEL_13;
      }

      if (qword_27F2117E8 != -1)
      {
        swift_once();
      }

      v52 = &qword_27F39EFE8;
    }

    goto LABEL_12;
  }

  if (qword_27F2117F0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v52 = &qword_27F39EFF8;
LABEL_12:
    v53 = *v52;
    v54 = v52[1];

LABEL_13:
    v127._countAndFlagsBits = v53;
    v127._object = v54;
    sub_24E600AEC();
    v55 = v122;
    sub_24F923FF8();

    sub_24E601704(v48, &qword_27F248830, &unk_24FA0C190);
    v56 = sub_24ECD05BC(v38);
    v48 = v57;
    v127._countAndFlagsBits = v56;
    v127._object = v57;
    sub_24F924008();

    sub_24E601704(v55, &qword_27F248830, &unk_24FA0C190);
    v58 = (v124 + *(type metadata accessor for RibbonView(0) + 20));
    v60 = *v58;
    v59 = v58[1];
    v127._countAndFlagsBits = v60;
    v127._object = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C8, &qword_24FA0C0B8);
    sub_24F926F38();
    v61 = *&v126[0];
    if (*&v126[0] >> 62)
    {
      v62 = sub_24F92C738();
      if (!v62)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v62 = *((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v62)
      {
        goto LABEL_24;
      }
    }

    v63 = __OFSUB__(v62, 1);
    v64 = v62 - 1;
    if (v63)
    {
      break;
    }

    if ((v61 & 0xC000000000000001) != 0)
    {
      goto LABEL_28;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v64 < *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v65 = *(v61 + 8 * v64 + 32);

      goto LABEL_20;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
LABEL_28:
  v65 = MEMORY[0x253052270](v64, v61);
LABEL_20:

  v66 = MEMORY[0x253052150](v38 + 184, v65 + 184);

  if (v66)
  {
    v67 = 1;
    v68 = v110;
    v69 = v108;
    goto LABEL_26;
  }

LABEL_25:
  v70._object = 0x800000024FA76D30;
  v70._countAndFlagsBits = 0xD00000000000002BLL;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v127 = localizedString(_:comment:)(v70, v71);
  v72 = sub_24F925E18();
  v74 = v73;
  v76 = v75;
  v124 = v38;
  sub_24F9258F8();
  v77 = sub_24F925C98();
  v79 = v78;
  v81 = v80;

  sub_24E600B40(v72, v74, v76 & 1);

  LODWORD(v72) = sub_24F9251C8();
  v82 = *(v103 + 36);
  v83 = *MEMORY[0x277CE13B8];
  v84 = sub_24F927748();
  v85 = v104;
  (*(*(v84 - 8) + 104))(&v104[v82], v83, v84);
  *v85 = v72;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v86 = sub_24F925C58();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  sub_24E600B40(v77, v79, v81 & 1);

  sub_24E601704(v85, &qword_27F213F10, &unk_24F93BE10);
  v127._countAndFlagsBits = v86;
  v127._object = v88;
  LOBYTE(v128) = v90 & 1;
  *(&v128 + 1) = v92;
  v93 = v106;
  sub_24F9265E8();
  sub_24E600B40(v86, v88, v90 & 1);

  v94 = v105;
  v68 = v110;
  sub_24F923FE8();
  sub_24E601704(v93, &qword_27F248810, &qword_24FA0C170);
  v95 = v94;
  v69 = v108;
  sub_24F598F58(v95, v108);
  v67 = 0;
LABEL_26:
  (*(v109 + 56))(v69, v67, 1, v68);
  v96 = v125;
  v97 = v107;
  sub_24F598FC8(v125, v107);
  v98 = v111;
  sub_24E60169C(v69, v111, &qword_27F248818, &qword_24FA0C178);
  v99 = v112;
  sub_24F598FC8(v97, v112);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248848, &qword_24FA0C1A0);
  sub_24E60169C(v98, v99 + *(v100 + 48), &qword_27F248818, &qword_24FA0C178);

  sub_24E601704(v69, &qword_27F248818, &qword_24FA0C178);
  sub_24E601704(v96, &qword_27F248830, &unk_24FA0C190);
  sub_24E601704(v98, &qword_27F248818, &qword_24FA0C178);
  return sub_24E601704(v97, &qword_27F248830, &unk_24FA0C190);
}

uint64_t sub_24F596C40@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_24F925508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_24ECD04A4(*v1, v6);
  type metadata accessor for RibbonView.BadgeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  v7 = v14;
  v26 = 0;
  sub_24F596EEC(v1, &v14);
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  v33[2] = v16;
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v19;
  v33[0] = v14;
  v33[1] = v15;
  sub_24E60169C(&v27, &v12, &qword_27F248870, &qword_24FA0C208);
  sub_24E601704(v33, &qword_27F248870, &qword_24FA0C208);
  *&v25[39] = v29;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[7] = v27;
  *&v25[23] = v28;
  v8 = v26;
  v9 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  *(&v13[3] + 1) = *&v25[48];
  *(&v13[4] + 1) = *&v25[64];
  *(&v13[5] + 1) = *&v25[80];
  *(v13 + 1) = *v25;
  *(&v13[1] + 1) = *&v25[16];
  *&v12 = v11[0];
  *(&v12 + 1) = v7;
  LOBYTE(v13[0]) = v8;
  *(&v13[2] + 1) = *&v25[32];
  *&v13[6] = *&v25[95];
  *(&v13[6] + 1) = v9;
  sub_24F9254E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248878, &qword_24FA0C210);
  sub_24F59941C();
  sub_24F926678();
  (*(v3 + 8))(v5, v2);
  v22 = v13[7];
  v23 = v13[8];
  v24 = v13[9];
  v18 = v13[3];
  v19 = v13[4];
  v20 = v13[5];
  v21 = v13[6];
  v14 = v12;
  v15 = v13[0];
  v16 = v13[1];
  v17 = v13[2];
  return sub_24E601704(&v14, &qword_27F248878, &qword_24FA0C210);
}

uint64_t sub_24F596EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 120);

  v6 = sub_24ECD02FC(v4);
  v8 = v7;
  v9 = *(v4 + 16);
  v11 = v9 == 1 || v9 == 11;
  v12 = sub_24ECD03D8(v4);
  v13 = a1[1];
  v14 = *(v4 + 136);
  v16 = v15 & 1;
  v17 = *(v4 + 24);
  v18 = *(v4 + 32);
  v19 = *(v4 + 128);
  *&v24 = v5;
  *(&v24 + 1) = v6;
  *&v25 = v8;
  BYTE8(v25) = v11;
  *v26 = v12;
  v26[8] = v15 & 1;
  *&v26[16] = v13;
  v26[24] = v14;
  *&v29[9] = *&v26[9];
  v28 = v25;
  *v29 = *v26;
  v27 = v24;
  v20 = v24;
  v21 = v25;
  v22 = *&v29[16];
  *(a2 + 32) = *v26;
  *(a2 + 48) = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = v13;

  sub_24F59958C(&v24, v30);
  v30[0] = v5;
  v30[1] = v6;
  v30[2] = v8;
  v31 = v11;
  v32 = v12;
  v33 = v16;
  v34 = v13;
  v35 = v14;
  return sub_24F5995C4(v30);
}

uint64_t sub_24F597024@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488A8, &qword_24FA0C3B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B0, &qword_24FA0C3C0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  if (*v1)
  {
    v15 = *(v1 + 48);
    v16 = *(v1 + 56);
    *&v83 = *v1;
    *(&v83 + 1) = v15;
    v84 = v16;
    v85 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488E8, &unk_24FA0C3D8);
    sub_24F59987C();
    sub_24F5998D0();
    sub_24F924E28();
    v17 = v89;
    v18 = BYTE2(v89);
    v19 = BYTE3(v89);
    v20 = v88;
    *v14 = v87;
    *(v14 + 1) = v20;
    v14[34] = v18;
    *(v14 + 16) = v17;
    v14[35] = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8, &qword_24FA0C3D0);
    sub_24F5997F0();
    v21 = sub_24F59979C();
    *&v87 = &type metadata for StarRatingView;
    *(&v87 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();

LABEL_3:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8, &qword_24FA0C3C8);
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  v24 = *(v1 + 16);
  if (v24)
  {
    v82 = v12;
    v80 = v7;
    v81 = a1;
    v25 = *(v1 + 24);
    if (*(v1 + 24))
    {
      *&v83 = *(v1 + 8);
      *(&v83 + 1) = v24;
      v84 = v25 == 1;
      LOWORD(v85) = 0;
      BYTE2(v85) = 1;
    }

    else
    {
      *&v87 = *(v1 + 8);
      *(&v87 + 1) = v24;
      sub_24E600AEC();

      v28 = sub_24F925E18();
      v30 = v29;
      v32 = v31;
      sub_24F925A18();
      sub_24F9258E8();

      v33 = sub_24F925C98();
      v35 = v34;
      v37 = v36;

      sub_24E600B40(v28, v30, v32 & 1);

      *&v87 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v38 = sub_24F925C58();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_24E600B40(v33, v35, v37 & 1);

      *&v83 = v38;
      *(&v83 + 1) = v40;
      *&v84 = v42 & 1;
      *(&v84 + 1) = v44;
      LOWORD(v85) = 257;
      BYTE2(v85) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A920, &qword_24F9CEF60);
    sub_24F16D158();
    sub_24F59995C();
    sub_24F924E28();
    v45 = v89;
    v46 = BYTE2(v89);
    v83 = v87;
    v84 = v88;
    LOWORD(v85) = v89;
    v74 = v89;
    BYTE2(v85) = BYTE2(v89) != 0;
    HIBYTE(v85) = 1;
    v47 = *(&v87 + 1);
    v49 = v87;
    v78 = v49 >> 64;
    v48 = v49;
    v79 = v87;
    v50 = v88;
    v51 = *(&v88 + 1);
    v76 = *(&v88 + 1);
    v77 = v88;
    v75 = BYTE2(v89);
    sub_24F5999B0(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, SBYTE2(v89));
    sub_24F5999B0(v48, v47, v50, v51, v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488E8, &unk_24FA0C3D8);
    sub_24F59987C();
    sub_24F5998D0();
    sub_24F924E28();
    v52 = v87;
    v53 = v88;
    v54 = BYTE2(v89);
    v55 = v89;
    v56 = v89 | (BYTE2(v89) << 16);
    v73 = v89 | (BYTE2(v89) << 16);
    v57 = BYTE3(v89);
    *v14 = v87;
    v72 = v52;
    *(v14 + 1) = v53;
    v71 = *(&v53 + 1);
    v14[34] = v54;
    *(v14 + 16) = v55;
    v14[35] = v57;
    swift_storeEnumTagMultiPayload();
    sub_24F5999F8(v52, *(&v52 + 1), v53, *(&v53 + 1), v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8, &qword_24FA0C3D0);
    sub_24F5997F0();
    v58 = sub_24F59979C();
    *&v87 = &type metadata for StarRatingView;
    *(&v87 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v81;
    sub_24F924E28();
    v60 = v79;
    v61 = v78;
    v62 = v77;
    v63 = v76;
    v64 = v74;
    LOBYTE(v56) = v75;
    sub_24F599A08(v79, v78, v77, v76, v74, v75);
    sub_24F599A50(v72, *(&v52 + 1), v53, v71, v73, v57);
    sub_24F599A08(v60, v61, v62, v63, v64, v56);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8, &qword_24FA0C3C8);
    return (*(*(v65 - 8) + 56))(v59, 0, 1, v65);
  }

  else
  {
    if ((*(v1 + 40) & 1) == 0)
    {
      v66 = *(v1 + 32);
      v82 = v12;
      sub_24F925A18();
      v67 = v7;
      v68 = sub_24F9258E8();

      *&v87 = v66;
      *(&v87 + 1) = 5;
      LOBYTE(v88) = 0;
      *(&v88 + 1) = 0;
      v89 = v68;
      v83 = 0u;
      v84 = 0u;
      memset(v86, 0, sizeof(v86));
      sub_24F929828();
      sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(&v83, &qword_27F2129B0, &unk_24F945320);
      v69 = sub_24F59979C();
      sub_24F925EE8();
      (*(v4 + 8))(v6, v3);

      (*(v8 + 16))(v14, v10, v67);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8, &qword_24FA0C3D0);
      sub_24F5997F0();
      *&v87 = &type metadata for StarRatingView;
      *(&v87 + 1) = v69;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      (*(v8 + 8))(v10, v67);
      goto LABEL_3;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8, &qword_24FA0C3C8);
    v27 = *(*(v26 - 8) + 56);

    return v27(a1, 1, 1, v26);
  }
}

double sub_24F5979C0@<D0>(uint64_t a4@<X8>)
{
  sub_24F599E8C();
  sub_24F599EE0();

  sub_24F924E28();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_24F597A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v5 = sub_24F924258();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925A38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(a3 + *(type metadata accessor for RibbonView.InnerText(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *a3 = v39;
  a3[1] = a2;
  *&v40 = 0x403E000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0AB0], v9);
  sub_24E62C088();

  sub_24F9237B8();
  v14 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248950, &qword_24FA0C648) + 36)) = v14;
  v15 = *(v6 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  __asm { FMOV            V0.2D, #6.0 }

  *v8 = _Q0;
  LODWORD(v16) = sub_24F925198();
  sub_24F923658();
  v23 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248958, &unk_24FA0C650) + 36);
  v24 = MEMORY[0x277CDFC08];
  sub_24F59A100(v8, v23, MEMORY[0x277CDFC08]);
  v25 = *&v40 * 0.5;
  v26 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248960, &unk_24FA1F0E0) + 68)];
  sub_24F59A100(v8, v26, v24);
  *(v26 + *(sub_24F924248() + 20)) = v25;
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF8, &qword_24FA02480) + 36);
  v28 = v41;
  *v27 = v40;
  *(v27 + 16) = v28;
  *(v27 + 32) = v42;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248968, &unk_24FA1F0F0);
  *(v26 + *(v29 + 52)) = v16;
  *(v26 + *(v29 + 56)) = 256;
  v30 = sub_24F927618();
  v32 = v31;
  sub_24E6EB974(v8);
  v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248970, &qword_24FA0C660) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_24F927618();
  v36 = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248978, &qword_24FA0C668);
  v38 = &v23[*(result + 36)];
  *v38 = v34;
  v38[1] = v36;
  return result;
}

uint64_t sub_24F597E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a1;
  v6 = sub_24F925A38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for RibbonView.InnerText(0);
  *(a3 + *(v11 + 20)) = KeyPath;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  v34 = a2;
  v39 = 0x403E000000000000;
  v36 = *MEMORY[0x277CE0AB0];
  v35 = *(v7 + 104);
  v35(v9);
  sub_24E62C088();
  swift_bridgeObjectRetain_n();
  sub_24F9237B8();
  v12 = sub_24F926C98();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248950, &qword_24FA0C648);
  *(a3 + *(v13 + 36)) = v12;
  v14 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248980, &qword_24FA0C670) + 36);
  v15 = *(sub_24F924258() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #6.0 }

  *v14 = _Q0;
  LODWORD(v16) = sub_24F9251C8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248988, &qword_24FA0C678);
  *&v14[*(v23 + 52)] = v16;
  *&v14[*(v23 + 56)] = 256;
  v24 = sub_24F927618();
  v26 = v25;
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248990, &qword_24FA0C680) + 36)];
  *v27 = v24;
  v27[1] = v26;
  v28 = swift_getKeyPath();
  v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248998, &qword_24FA0C688) + 36));
  *(v29 + *(v11 + 20)) = v28;
  swift_storeEnumTagMultiPayload();
  v30 = v34;
  *v29 = v38;
  v29[1] = v30;
  v39 = 0x403E000000000000;
  (v35)(v9, v36, v6);
  sub_24F9237B8();
  *(v29 + *(v13 + 36)) = sub_24F926C88();
  v31 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  LOBYTE(v28) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2489A0, &unk_24FA0C690);
  v33 = v29 + *(result + 36);
  *v33 = v31;
  v33[8] = v28;
  return result;
}

uint64_t sub_24F598170@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RibbonView.InnerText(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F598380@<D0>(uint64_t a1@<X8>)
{
  v40 = sub_24F923E98();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v1;
  v6 = *v1;
  v7 = v1[1];
  *&v49 = v6;
  *(&v49 + 1) = v7;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925A18();
  sub_24F9258E8();

  v13 = sub_24F925C98();
  v43 = v14;
  v44 = v13;
  v16 = v15;
  v42 = v17;

  sub_24E600B40(v8, v10, v12 & 1);

  LOBYTE(v10) = sub_24F925868();
  sub_24F923318();
  v41 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v46 = v16 & 1;
  v45 = 0;
  v25 = sub_24F9257F8();
  sub_24F598170(v5);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 8))(v5, v40);
  sub_24F923318();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v47 = 0;
  type metadata accessor for RibbonView.InnerText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v48[55] = v52;
  *&v48[71] = v53;
  *&v48[87] = v54;
  *&v48[103] = v55;
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v34 = v43;
  *a1 = v44;
  *(a1 + 8) = v34;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v42;
  *(a1 + 32) = 257;
  *(a1 + 40) = v10;
  *(a1 + 48) = v41;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  *(a1 + 80) = 0;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = v29;
  *(a1 + 112) = v31;
  *(a1 + 120) = v33;
  *(a1 + 128) = 0;
  v35 = *&v48[80];
  *(a1 + 193) = *&v48[64];
  *(a1 + 209) = v35;
  *(a1 + 225) = *&v48[96];
  *(a1 + 240) = *&v48[111];
  v36 = *&v48[16];
  *(a1 + 129) = *v48;
  *(a1 + 145) = v36;
  result = *&v48[32];
  v38 = *&v48[48];
  *(a1 + 161) = *&v48[32];
  *(a1 + 177) = v38;
  return result;
}

uint64_t sub_24F598720@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_24E600AEC();

    v4 = sub_24F925E18();
    v6 = v5;
    v8 = v7;
    sub_24F925A18();
    sub_24F9258E8();

    v9 = sub_24F925C98();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    sub_24E600B40(v4, v6, v8 & 1);

    result = swift_getKeyPath();
    v17 = v13 & 1;
    v18 = 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v17 = 0;
    v15 = 0;
    result = 0;
    v18 = 0;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v17;
  *(a3 + 24) = v15;
  *(a3 + 32) = result;
  *(a3 + 40) = v18;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_24F598850@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1 != 0;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_24F59886C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char a2@<W1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v38 = a1;
  v40 = a3;
  v4 = sub_24F926E68();
  v5 = *(v4 - 8);
  v37 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v35 = sub_24F9289E8();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = *(v5 + 104);
  v19 = MEMORY[0x277CE1020];
  if ((a2 & 1) == 0)
  {
    v19 = MEMORY[0x277CE1010];
  }

  v20 = *v19;
  v18(v11, v20, v4, v15);
  sub_24E84AFA8(v11);
  v21 = v4;
  (*(v5 + 8))(v11, v4);
  v22 = v36;
  v23 = v20;
  v24 = v21;
  v34 = v21;
  (v18)(v36, v23, v21);
  v38 = *(v12 + 32);
  v25 = v35;
  v38(v41, v17, v35);
  v26 = *(v5 + 32);
  v27 = v39;
  v26(v39, v22, v24);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v13 + *(v5 + 80) + v28) & ~*(v5 + 80);
  v30 = v29 + v37;
  v31 = swift_allocObject();
  v38((v31 + v28), v41, v25);
  result = (v26)(v31 + v29, v27, v34);
  *(v31 + v30) = 0;
  v33 = v40;
  *v40 = sub_24EB98724;
  v33[1] = v31;
  v33[2] = 0;
  *(v33 + 12) = 1;
  return result;
}

uint64_t sub_24F598BA4()
{
  v1 = *(type metadata accessor for RibbonView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F598CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RibbonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F598D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RibbonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F595EF8(a1, v6, a2);
}

unint64_t sub_24F598D90()
{
  result = qword_27F2487E8;
  if (!qword_27F2487E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2487B8, &qword_24FA0C0A8);
    sub_24E602068(&qword_27F2487F0, &qword_27F2487F8, &unk_24FA0C118, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2487E8);
  }

  return result;
}

unint64_t sub_24F598E9C()
{
  result = qword_27F248838;
  if (!qword_27F248838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248820, &qword_24FA0C180);
    sub_24F59A640(&qword_27F248840, type metadata accessor for RibbonView.BadgeView, &unk_24FA0C1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248838);
  }

  return result;
}

uint64_t sub_24F598F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248810, &qword_24FA0C170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F598FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248830, &unk_24FA0C190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F59904C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F59911C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5991CC(uint64_t a1)
{
  sub_24EF36C6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24F599254()
{
  result = qword_27F248860;
  if (!qword_27F248860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248808, &unk_24FA0C160);
    sub_24F59930C();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248860);
  }

  return result;
}

unint64_t sub_24F59930C()
{
  result = qword_27F248868;
  if (!qword_27F248868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248800, &qword_24FA0C128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2487B8, &qword_24FA0C0A8);
    sub_24F598D90();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248868);
  }

  return result;
}

unint64_t sub_24F59941C()
{
  result = qword_27F248880;
  if (!qword_27F248880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248878, &qword_24FA0C210);
    sub_24F5994A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248880);
  }

  return result;
}

unint64_t sub_24F5994A8()
{
  result = qword_27F248888;
  if (!qword_27F248888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248890, &qword_24FA0C218);
    sub_24E602068(&qword_27F248898, &qword_27F2488A0, &unk_24FA0C220, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248888);
  }

  return result;
}

uint64_t sub_24F599614(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24F599670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24F5996E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248878, &qword_24FA0C210);
  sub_24F59941C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F59979C()
{
  result = qword_27F2488C0;
  if (!qword_27F2488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488C0);
  }

  return result;
}

unint64_t sub_24F5997F0()
{
  result = qword_27F2488D0;
  if (!qword_27F2488D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488C8, &qword_24FA0C3D0);
    sub_24F59987C();
    sub_24F5998D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488D0);
  }

  return result;
}

unint64_t sub_24F59987C()
{
  result = qword_27F2488D8;
  if (!qword_27F2488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488D8);
  }

  return result;
}

unint64_t sub_24F5998D0()
{
  result = qword_27F2488E0;
  if (!qword_27F2488E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488E8, &unk_24FA0C3D8);
    sub_24F16D158();
    sub_24F59995C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488E0);
  }

  return result;
}

unint64_t sub_24F59995C()
{
  result = qword_27F2488F0;
  if (!qword_27F2488F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488F0);
  }

  return result;
}

double sub_24F5999B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_24E5FD138(a1, a2, a3 & 1);
  }

  return result;
}

void sub_24F5999F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_24F5999B0(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  else
  {
  }
}

uint64_t sub_24F599A08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_24E600B40(a1, a2, a3 & 1);
  }
}

double sub_24F599A50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_24F599A08(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  else
  {
  }

  return result;
}

uint64_t sub_24F599A70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24F599AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F599BD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F599C50()
{
  result = qword_27F248918;
  if (!qword_27F248918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488B8, &qword_24FA0C3C8);
    sub_24F5997F0();
    sub_24F59979C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248918);
  }

  return result;
}

uint64_t sub_24F599D40()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_24F599E8C()
{
  result = qword_27F248920;
  if (!qword_27F248920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248920);
  }

  return result;
}

unint64_t sub_24F599EE0()
{
  result = qword_27F248928;
  if (!qword_27F248928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248928);
  }

  return result;
}

unint64_t sub_24F599F58()
{
  result = qword_27F248930;
  if (!qword_27F248930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248938, &unk_24FA0C558);
    sub_24E602068(&qword_27F22A6B0, &qword_27F22A6B8, &qword_24F987990, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248930);
  }

  return result;
}

unint64_t sub_24F59A014()
{
  result = qword_27F248940;
  if (!qword_27F248940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248948, &qword_24FA0C568);
    sub_24F599E8C();
    sub_24F599EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248940);
  }

  return result;
}

uint64_t sub_24F59A100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F59A17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F59A2CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F59A408(uint64_t a1)
{
  sub_24E6CAF48(319);
  if (v1 <= 0x3F)
  {
    sub_24EF36C6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F59A4A0()
{
  result = qword_27F2489B8;
  if (!qword_27F2489B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248958, &unk_24FA0C650);
    sub_24F59A558();
    sub_24E602068(&qword_27F2489D0, &qword_27F248978, &qword_24FA0C668, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489B8);
  }

  return result;
}

unint64_t sub_24F59A558()
{
  result = qword_27F2489C0;
  if (!qword_27F2489C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248950, &qword_24FA0C648);
    sub_24F59A640(&qword_27F2489C8, type metadata accessor for RibbonView.InnerText, &unk_24FA0C6B8);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489C0);
  }

  return result;
}

uint64_t sub_24F59A640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F59A68C()
{
  result = qword_27F2489D8;
  if (!qword_27F2489D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248998, &qword_24FA0C688);
    sub_24F59A744();
    sub_24E602068(&qword_27F2489F0, &qword_27F2489F8, &qword_24FA0C6B0, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489D8);
  }

  return result;
}

unint64_t sub_24F59A744()
{
  result = qword_27F2489E0;
  if (!qword_27F2489E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248980, &qword_24FA0C670);
    sub_24F59A558();
    sub_24E602068(&qword_27F2489E8, &qword_27F248990, &qword_24FA0C680, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489E0);
  }

  return result;
}

unint64_t sub_24F59A81C()
{
  result = qword_27F248A00;
  if (!qword_27F248A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A08, &qword_24FA0C708);
    sub_24F59A8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A00);
  }

  return result;
}

unint64_t sub_24F59A8A8()
{
  result = qword_27F248A10;
  if (!qword_27F248A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A18, &qword_24FA0C710);
    sub_24F59A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A10);
  }

  return result;
}

unint64_t sub_24F59A934()
{
  result = qword_27F248A20;
  if (!qword_27F248A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A28, &qword_24FA0C718);
    sub_24F16D158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A20);
  }

  return result;
}

uint64_t sub_24F59AA08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v335 = a2;
  v342 = a1;
  v341 = a4;
  updated = type metadata accessor for UpdateFriendRequestActionImplementation(0, a3, a3, a5);
  v340 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v338 = &v303 - v6;
  v333 = type metadata accessor for AlertActionImplementation(0, a3, v7, v8);
  v334 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v332 = &v303 - v9;
  v330 = type metadata accessor for AddFriendActionImplementation(0, a3, v10, v11);
  v331 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v329 = &v303 - v12;
  v327 = sub_24F921B28();
  v328 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v326 = &v303 - v13;
  v324 = sub_24F921B88();
  v325 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v323 = &v303 - v14;
  v15 = type metadata accessor for FlowAction(255);
  v16 = sub_24F59DEBC(&qword_27F219B98, &protocol conformance descriptor for FlowAction);
  v312 = v16;
  v343 = sub_24F59DEBC(&qword_27F219BA0, &protocol conformance descriptor for Action);
  v409[0] = v15;
  v409[1] = a3;
  v409[2] = v16;
  v409[3] = v343;
  v321 = sub_24F921AC8();
  v322 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v320 = &v303 - v17;
  v318 = sub_24F921C38();
  v319 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v317 = &v303 - v18;
  v315 = sub_24F92A048();
  v316 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v314 = &v303 - v19;
  v311 = sub_24F92A228();
  v313 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v310 = &v303 - v20;
  v308 = sub_24F92A158();
  v309 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v307 = &v303 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A30, &unk_24FA0C720);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v303 - v23;
  v305 = sub_24F921AE8();
  v306 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v26 = &v303 - v25;
  v27 = sub_24F9292A8();
  v336 = *(v27 - 8);
  v337 = v27 - 8;
  v345 = v336;
  MEMORY[0x28223BE20](v27);
  v353 = &v303 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v352 = &v303 - v30;
  MEMORY[0x28223BE20](v31);
  v351 = &v303 - v32;
  MEMORY[0x28223BE20](v33);
  v350 = &v303 - v34;
  MEMORY[0x28223BE20](v35);
  v394 = &v303 - v36;
  MEMORY[0x28223BE20](v37);
  v344 = &v303 - v38;
  MEMORY[0x28223BE20](v39);
  v378 = &v303 - v40;
  MEMORY[0x28223BE20](v41);
  v408 = &v303 - v42;
  MEMORY[0x28223BE20](v43);
  v375 = &v303 - v44;
  MEMORY[0x28223BE20](v45);
  v407 = &v303 - v46;
  MEMORY[0x28223BE20](v47);
  v372 = &v303 - v48;
  MEMORY[0x28223BE20](v49);
  v406 = &v303 - v50;
  MEMORY[0x28223BE20](v51);
  v369 = &v303 - v52;
  MEMORY[0x28223BE20](v53);
  v405 = &v303 - v54;
  MEMORY[0x28223BE20](v55);
  v366 = &v303 - v56;
  MEMORY[0x28223BE20](v57);
  v404 = &v303 - v58;
  MEMORY[0x28223BE20](v59);
  v362 = &v303 - v60;
  MEMORY[0x28223BE20](v61);
  v403 = &v303 - v62;
  MEMORY[0x28223BE20](v63);
  v360 = &v303 - v64;
  MEMORY[0x28223BE20](v65);
  v402 = &v303 - v66;
  MEMORY[0x28223BE20](v67);
  v358 = &v303 - v68;
  MEMORY[0x28223BE20](v69);
  v401 = &v303 - v70;
  MEMORY[0x28223BE20](v71);
  v356 = &v303 - v72;
  MEMORY[0x28223BE20](v73);
  v400 = &v303 - v74;
  MEMORY[0x28223BE20](v75);
  v354 = &v303 - v76;
  MEMORY[0x28223BE20](v77);
  v399 = &v303 - v78;
  MEMORY[0x28223BE20](v79);
  v355 = &v303 - v80;
  MEMORY[0x28223BE20](v81);
  v398 = &v303 - v82;
  MEMORY[0x28223BE20](v83);
  v357 = &v303 - v84;
  MEMORY[0x28223BE20](v85);
  v397 = &v303 - v86;
  MEMORY[0x28223BE20](v87);
  v359 = &v303 - v88;
  MEMORY[0x28223BE20](v89);
  v396 = &v303 - v90;
  MEMORY[0x28223BE20](v91);
  v361 = &v303 - v92;
  MEMORY[0x28223BE20](v93);
  v395 = &v303 - v94;
  MEMORY[0x28223BE20](v95);
  v363 = &v303 - v96;
  MEMORY[0x28223BE20](v97);
  v364 = &v303 - v98;
  MEMORY[0x28223BE20](v99);
  v365 = &v303 - v100;
  MEMORY[0x28223BE20](v101);
  v367 = &v303 - v102;
  MEMORY[0x28223BE20](v103);
  v368 = &v303 - v104;
  MEMORY[0x28223BE20](v105);
  v370 = &v303 - v106;
  MEMORY[0x28223BE20](v107);
  v371 = &v303 - v108;
  MEMORY[0x28223BE20](v109);
  v373 = &v303 - v110;
  MEMORY[0x28223BE20](v111);
  v374 = &v303 - v112;
  MEMORY[0x28223BE20](v113);
  v376 = &v303 - v114;
  MEMORY[0x28223BE20](v115);
  v377 = &v303 - v116;
  MEMORY[0x28223BE20](v117);
  v379 = &v303 - v118;
  MEMORY[0x28223BE20](v119);
  v380 = &v303 - v120;
  MEMORY[0x28223BE20](v121);
  v381 = &v303 - v122;
  MEMORY[0x28223BE20](v123);
  v382 = &v303 - v124;
  MEMORY[0x28223BE20](v125);
  v383 = &v303 - v126;
  MEMORY[0x28223BE20](v127);
  v384 = &v303 - v128;
  MEMORY[0x28223BE20](v129);
  v385 = &v303 - v130;
  MEMORY[0x28223BE20](v131);
  v386 = &v303 - v132;
  MEMORY[0x28223BE20](v133);
  v387 = &v303 - v134;
  MEMORY[0x28223BE20](v135);
  v388 = &v303 - v136;
  MEMORY[0x28223BE20](v137);
  v389 = &v303 - v138;
  MEMORY[0x28223BE20](v139);
  v390 = &v303 - v140;
  MEMORY[0x28223BE20](v141);
  v391 = &v303 - v142;
  MEMORY[0x28223BE20](v143);
  v392 = &v303 - v144;
  MEMORY[0x28223BE20](v145);
  v393 = &v303 - v146;
  MEMORY[0x28223BE20](v147);
  v346 = &v303 - v148;
  MEMORY[0x28223BE20](v149);
  v347 = &v303 - v150;
  MEMORY[0x28223BE20](v151);
  v348 = &v303 - v152;
  MEMORY[0x28223BE20](v153);
  v349 = &v303 - v154;
  v304 = v24;
  sub_24F59DF00(v342, v24);
  v155 = v312;
  sub_24F921AD8();
  v156 = v305;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v306 + 8))(v26, v156);
  sub_24F59DF70(v409);
  v157 = v307;
  sub_24F92A148();
  v158 = v308;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v309 + 8))(v157, v158);
  v159 = v310;
  sub_24F92A218();
  v160 = v311;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v313 + 8))(v159, v160);
  v161 = v314;
  sub_24F92A038();
  v162 = v315;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v316 + 8))(v161, v162);
  v163 = v317;
  sub_24F921C28();
  v164 = v318;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v319 + 8))(v163, v164);
  v165 = v342;
  v166 = v304;
  sub_24F59DF00(v342, v304);
  v167 = v320;
  v168 = v15;
  v169 = v343;
  sub_24F921AB8();
  v170 = v321;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v322 + 8))(v167, v170);
  sub_24F59DF00(v165, v166);
  v171 = v323;
  sub_24F921B78();
  v172 = v324;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v325 + 8))(v171, v172);
  sub_24F59DF00(v165, v166);
  v173 = v326;
  sub_24F921B18();
  v174 = v327;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v328 + 8))(v173, v174);
  CGSizeMake();
  type metadata accessor for AcceptChallengeActionImplementation(0, a3, v175, v176);
  swift_getWitnessTable();
  sub_24F929268();
  v177 = v329;
  sub_24F71ED20();
  v178 = v330;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v331 + 8))(v177, v178);
  sub_24F59DF00(v165, v166);
  v179 = v332;
  sub_24ED09178(v166, a3, v168, v155, v169);
  v180 = v333;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v334 + 8))(v179, v180);
  ArcadeLaunchAttributionActionImplementation.init()();
  type metadata accessor for ArcadeLaunchAttributionActionImplementation(0, a3, v181, v182);
  swift_getWitnessTable();
  sub_24F929268();
  ArcadeSubscriptionStateActionImplementation.init()();
  type metadata accessor for ArcadeSubscriptionStateActionImplementation(0, a3, v183, v184);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for CallActionImplementation(0, a3, v185, v186);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for CallInviteActionImplementation(0, a3, v187, v188);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for CancelFriendInvitationActionImplementation(0, a3, v189, v190);
  swift_getWitnessTable();
  sub_24F929268();
  CancelPreorderActionImplementation.init()();
  type metadata accessor for CancelPreorderActionImplementation(0, a3, v191, v192);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ClearCachesDebugActionImplementation(0, a3, v193, v194);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for CreateChallengeRematchActionImplementation(0, a3, v195, v196);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for InviteChallengeViaMessagesActionImplementation(0, a3, v197, v198);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for DismissDashboardActionImplementation(0, a3, v199, v200);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for DraftPlayTogetherActionImplementation(0, a3, v201, v202);
  swift_getWitnessTable();
  sub_24F929268();
  GSKTabChangeActionImplementation.init()();
  type metadata accessor for GSKTabChangeActionImplementation(0, a3, v203, v204);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for GSKWrappedActionImplementation(0, a3, v205, v206);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for InvitePlayersToChallengeActionImplementation(0, a3, v207, v208);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for InvitePlayersToMultiplayerActivityActionImplementation(0, a3, v209, v210);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LaunchChallengeDefinitionActionImplementation(0, a3, v211, v212);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LaunchGameActionImplementation(0, a3, v213, v214);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LaunchGameActivityActionImplementation(0, a3, v215, v216);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LaunchGameClipActionImplementation(0, a3, v217, v218);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LaunchDashboardActionImplementation(0, a3, v219, v220);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for LeaveChallengeActionImplementation(0, a3, v221, v222);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for OpenURLActionImplementation(0, a3, v223, v224);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for PresentPromptActionImplementation(0, a3, v225, v226);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ProgressPerformActionImplementation(0, a3, v227, v228);
  swift_getWitnessTable();
  sub_24F929268();
  RateLimitedActionImplementation.init()();
  type metadata accessor for RateLimitedActionImplementation(0, a3, v229, v230);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RefreshAppStateUpdateRegistryActionImplementation(0, a3, v231, v232);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RefreshChallengeDetailActionImplementation(0, a3, v233, v234);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RefreshFeedsActionImplementation(0, a3, v235, v236);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RematchChallengeActionImplementation(0, a3, v237, v238);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RemoveFriendActionImplementation(0, a3, v239, v240);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for RemoveFriendSuggestionActionImplementation(0, a3, v241, v242);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ReportFriendRequestDidSendActionImplementation(0, a3, v243, v244);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ReportPromptDidPresentActionImplementation(0, a3, v245, v246);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ResetRequestReviewPropertiesIfNeededActionImplementation(0, a3, v247, v248);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ResetDebugSettingsActionImplementation(0, a3, v249, v250);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for ResetTipDatastoreDebugSettingsActionImplementation(0, a3, v251, v252);
  swift_getWitnessTable();
  sub_24F929268();
  v253 = v335;
  v254 = v335;
  sub_24F14CED0(v253);
  v257 = type metadata accessor for RequestReviewActionImplementation(0, a3, v255, v256);
  swift_getWitnessTable();
  sub_24F929268();
  (*(*(v257 - 8) + 8))(v409, v257);
  CGSizeMake();
  type metadata accessor for SaveAvatarActionImplementation(0, a3, v258, v259);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for SaveRecentSearchActionImplementation(0, a3, v260, v261);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for SetContactsIntegrationConsentActionImplementation(0, a3, v262, v263);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for SetNicknameActionImplementation(0, a3, v264, v265);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for SetProfilePrivacyActionImplementation(0, a3, v266, v267);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateActivityDefinitionActionImplementation(0, a3, v268, v269);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateActivityInstanceActionImplementation(0, a3, v270, v271);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateChallengeDefinitionActionImplementation(0, a3, v272, v273);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateChallengeLeaderboardActionImplementation(0, a3, v274, v275);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateChallengePlayersToInviteActionImplementation(0, a3, v276, v277);
  swift_getWitnessTable();
  sub_24F929268();
  v278 = v338;
  sub_24F63BE24();
  v279 = updated;
  swift_getWitnessTable();
  v280 = v344;
  sub_24F929268();
  (*(v340 + 8))(v278, v279);
  CGSizeMake();
  type metadata accessor for UpdateFriendRequestsPrivacyStateActionImplementation(0, a3, v281, v282);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateGamedActivityInstanceActionImplementation(0, a3, v283, v284);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdateNotificationTopicsActionImplementation(0, a3, v285, v286);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for UpdatePlayTogetherGameActionImplementation(0, a3, v287, v288);
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake();
  type metadata accessor for WaitActionImplementation(0, a3, v289, v290);
  swift_getWitnessTable();
  sub_24F929268();
  sub_24F92CD98();
  v291 = *(v336 + 72);
  v292 = v345;
  swift_allocObject();
  v343 = sub_24F92B5C8();
  v294 = v293;
  v295 = *(v292 + 16);
  v295(v293, v349, v27);
  v295(v294 + v291, v348, v27);
  v295(v294 + 2 * v291, v347, v27);
  v295(v294 + 3 * v291, v346, v27);
  v295(v294 + 4 * v291, v393, v27);
  v295(v294 + 5 * v291, v392, v27);
  v295(v294 + 6 * v291, v391, v27);
  v295(v294 + 7 * v291, v390, v27);
  v295(v294 + 8 * v291, v389, v27);
  v295(v294 + 9 * v291, v388, v27);
  v295(v294 + 10 * v291, v387, v27);
  v295(v294 + 11 * v291, v386, v27);
  v295(v294 + 12 * v291, v385, v27);
  v295(v294 + 13 * v291, v384, v27);
  v295(v294 + 14 * v291, v383, v27);
  v295(v294 + 15 * v291, v382, v27);
  v295(v294 + 16 * v291, v381, v27);
  v295(v294 + 17 * v291, v380, v27);
  v295(v294 + 18 * v291, v379, v27);
  v295(v294 + 19 * v291, v377, v27);
  v295(v294 + 20 * v291, v376, v27);
  v295(v294 + 21 * v291, v374, v27);
  v295(v294 + 22 * v291, v373, v27);
  v295(v294 + 23 * v291, v371, v27);
  v295(v294 + 24 * v291, v370, v27);
  v295(v294 + 25 * v291, v368, v27);
  v295(v294 + 26 * v291, v367, v27);
  v295(v294 + 27 * v291, v365, v27);
  v295(v294 + 28 * v291, v364, v27);
  v295(v294 + 29 * v291, v363, v27);
  v295(v294 + 30 * v291, v395, v27);
  v295(v294 + 31 * v291, v361, v27);
  v295(v294 + 32 * v291, v396, v27);
  v295(v294 + 33 * v291, v359, v27);
  v295(v294 + 34 * v291, v397, v27);
  v295(v294 + 35 * v291, v357, v27);
  v295(v294 + 36 * v291, v398, v27);
  v295(v294 + 37 * v291, v355, v27);
  v295(v294 + 38 * v291, v399, v27);
  v295(v294 + 39 * v291, v354, v27);
  v295(v294 + 40 * v291, v400, v27);
  v295(v294 + 41 * v291, v356, v27);
  v295(v294 + 42 * v291, v401, v27);
  v295(v294 + 43 * v291, v358, v27);
  v295(v294 + 44 * v291, v402, v27);
  v295(v294 + 45 * v291, v360, v27);
  v295(v294 + 46 * v291, v403, v27);
  v295(v294 + 47 * v291, v362, v27);
  v295(v294 + 48 * v291, v404, v27);
  v295(v294 + 49 * v291, v366, v27);
  v295(v294 + 50 * v291, v405, v27);
  v295(v294 + 51 * v291, v369, v27);
  v295(v294 + 52 * v291, v406, v27);
  v295(v294 + 53 * v291, v372, v27);
  v295(v294 + 54 * v291, v407, v27);
  v295(v294 + 55 * v291, v375, v27);
  v295(v294 + 56 * v291, v408, v27);
  v295(v294 + 57 * v291, v378, v27);
  v295(v294 + 58 * v291, v280, v27);
  v295(v294 + 59 * v291, v394, v27);
  v296 = v350;
  v295(v294 + 60 * v291, v350, v27);
  v297 = v351;
  v295(v294 + 61 * v291, v351, v27);
  v298 = v352;
  v295(v294 + 62 * v291, v352, v27);
  v299 = v294 + 63 * v291;
  v300 = v353;
  v295(v299, v353, v27);
  sub_24EEB6DF8(v343, v27);
  sub_24F929258();

  v301 = *(v345 + 8);
  v301(v300, v27);
  v301(v298, v27);
  v301(v297, v27);
  v301(v296, v27);
  v301(v394, v27);
  v301(v344, v27);
  v301(v378, v27);
  v301(v408, v27);
  v301(v375, v27);
  v301(v407, v27);
  v301(v372, v27);
  v301(v406, v27);
  v301(v369, v27);
  v301(v405, v27);
  v301(v366, v27);
  v301(v404, v27);
  v301(v362, v27);
  v301(v403, v27);
  v301(v360, v27);
  v301(v402, v27);
  v301(v358, v27);
  v301(v401, v27);
  v301(v356, v27);
  v301(v400, v27);
  v301(v354, v27);
  v301(v399, v27);
  v301(v355, v27);
  v301(v398, v27);
  v301(v357, v27);
  v301(v397, v27);
  v301(v359, v27);
  v301(v396, v27);
  v301(v361, v27);
  v301(v395, v27);
  v301(v363, v27);
  v301(v364, v27);
  v301(v365, v27);
  v301(v367, v27);
  v301(v368, v27);
  v301(v370, v27);
  v301(v371, v27);
  v301(v373, v27);
  v301(v374, v27);
  v301(v376, v27);
  v301(v377, v27);
  v301(v379, v27);
  v301(v380, v27);
  v301(v381, v27);
  v301(v382, v27);
  v301(v383, v27);
  v301(v384, v27);
  v301(v385, v27);
  v301(v386, v27);
  v301(v387, v27);
  v301(v388, v27);
  v301(v389, v27);
  v301(v390, v27);
  v301(v391, v27);
  v301(v392, v27);
  v301(v393, v27);
  v301(v346, v27);
  v301(v347, v27);
  v301(v348, v27);
  return (v301)(v349, v27);
}

uint64_t sub_24F59DEBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F59DF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A30, &unk_24FA0C720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F59DF70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F929638();
  v3 = MEMORY[0x277D21FB0];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F929628();
}

uint64_t sub_24F59DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F59E098(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F59E168(uint64_t a1)
{
  sub_24F59E214(319);
  if (v1 <= 0x3F)
  {
    sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F59E214(uint64_t a1)
{
  if (!qword_27F248A48)
  {
    type metadata accessor for LockupViewModel(255);
    sub_24F5A2B1C(&qword_27F2282E0, type metadata accessor for LockupViewModel, &unk_24F997C58);
    v1 = sub_24F923C48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F248A48);
    }
  }
}

uint64_t sub_24F59E2C4()
{
  v1 = type metadata accessor for LockupContentView.VerticalContent(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A50, &qword_24FA0C798);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = type metadata accessor for LockupContentView.HorizontalContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 8);
  v11 = sub_24F59E65C();
  if (*(v10 + 25))
  {
    *v3 = v10;
    v3[1] = v11;
    *(v3 + 2) = v12;
    v13 = *(v1 + 24);
    *(v3 + v13) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v18[1] = 0x4055400000000000;
    sub_24E66ED98();

    sub_24F9237C8();
    v14 = type metadata accessor for LockupContentView.VerticalContent;
    sub_24F5A2B64(v3, v6, type metadata accessor for LockupContentView.VerticalContent);
    swift_storeEnumTagMultiPayload();
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent, &unk_24FA0C850);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent, &unk_24FA0C800);
    sub_24F924E28();
    v15 = v3;
  }

  else
  {
    *v9 = v10;
    v9[1] = v11;
    *(v9 + 2) = v12;
    v16 = *(v7 + 24);
    *(v9 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v14 = type metadata accessor for LockupContentView.HorizontalContent;
    sub_24F5A2B64(v9, v6, type metadata accessor for LockupContentView.HorizontalContent);
    swift_storeEnumTagMultiPayload();
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent, &unk_24FA0C850);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent, &unk_24FA0C800);

    sub_24F924E28();
    v15 = v9;
  }

  return sub_24F5A2BCC(v15, v14);
}

double sub_24F59E65C()
{
  type metadata accessor for LockupContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  return v1;
}

uint64_t sub_24F59E6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AA8, &qword_24FA0C8B0);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v92 = &v92 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AB0, &qword_24FA0C8B8);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v92 - v7;
  v107 = type metadata accessor for LockupContentView.TextStack(0);
  MEMORY[0x28223BE20](v107);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AB8, &qword_24FA0C8C0);
  MEMORY[0x28223BE20](v106);
  v112 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v105 = &v92 - v13;
  MEMORY[0x28223BE20](v14);
  v117 = &v92 - v15;
  v16 = type metadata accessor for LockupContentView.Ordinal(0);
  MEMORY[0x28223BE20](v16);
  v110 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v92 - v19);
  v21 = *a1;
  v22 = *(*a1 + 16);
  v23 = *(v22 + 72);
  *v20 = *(v22 + 64);
  v20[1] = v23;
  v118 = 0x4040000000000000;
  sub_24E66ED98();

  sub_24F9237C8();
  v118 = 0x4053800000000000;
  sub_24F9237C8();
  v118 = 0x4018000000000000;
  sub_24F9237C8();
  v118 = 0x4052C00000000000;
  sub_24F9237C8();
  v118 = 0x4049000000000000;
  v109 = v20;
  sub_24F9237C8();
  v24 = a1[1];
  v25 = a1[2];
  v108 = *(*(v21 + 16) + 48);

  v26 = sub_24F59F1A0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v27 = 0;
  v28 = 0;
  if ((v118 & 1) == 0)
  {
    v27 = *(*(v21 + 16) + 80);
  }

  v29 = *(v21 + 24) > 1u;
  v104 = v28;
  v102 = v27;
  if (v29)
  {
    v30 = sub_24F925A18();
  }

  else
  {
    v30 = sub_24F9259E8();
  }

  v103 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v31 = *(v21 + 16);
  v32 = 96;
  if (v118)
  {
    v32 = 272;
  }

  v33 = 104;
  if (v118)
  {
    v33 = 280;
  }

  v34 = *(v31 + v33);
  v101 = *(v31 + v32);
  v35 = v34;

  v100 = sub_24F41C130();
  if (*(v21 + 24) - 2 >= 2)
  {
    if (*(v21 + 24))
    {
      v99 = sub_24F9258D8();
      goto LABEL_16;
    }

    sub_24F925A18();
  }

  else
  {
    sub_24F9258D8();
  }

  sub_24F925918();
  v99 = sub_24F9259A8();

LABEL_16:
  v98 = sub_24F41C320();
  v97 = v36;
  if (*(v21 + 25) != 1 || *(v21 + 26) == 1)
  {
    goto LABEL_21;
  }

  sub_24F41C3E0();
  if (v37 || (sub_24F41C4F8(), v38))
  {

LABEL_21:
    v39 = 1;
    goto LABEL_22;
  }

  v39 = 2;
LABEL_22:
  v96 = v39;
  v95 = sub_24F41C3E0();
  v94 = v40;
  sub_24F41C3E0();
  if (v41)
  {

    v42 = *(*(v21 + 16) + 336);
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_24F41C4F8();
  v93 = v44;
  v45 = *(v21 + 26);
  v114 = v8;
  if (v45 == 1)
  {
    v46 = *(v21 + 16);
    v47 = 0;
    if ((*(v46 + 56) & 1) != 0 || (v48 = *(v46 + 160)) == 0)
    {
      v51 = 1;
    }

    else
    {
      v49 = v48;
      sub_24F91FE38();
      v47 = v50;

      v51 = 0;
      if (*(v21 + 26) != 1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        goto LABEL_35;
      }
    }

    v55 = *(v21 + 16);
    if (*(v55 + 56))
    {
      v52 = 0;
      v53 = 0;
      v54 = 1;
    }

    else
    {
      v53 = *(v55 + 168);
      v52 = *(v55 + 176);

      v54 = 0;
    }

    goto LABEL_35;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 1;
  v47 = 0;
LABEL_35:
  v56 = sub_24F41C654();
  v57 = *(v21 + 25);
  v58 = v104;
  *v10 = v102;
  *(v10 + 1) = v58;
  v59 = v101;
  *(v10 + 2) = v103;
  *(v10 + 3) = v59;
  v60 = v100;
  *(v10 + 4) = v35;
  *(v10 + 5) = v60;
  v61 = v98;
  *(v10 + 6) = v99;
  *(v10 + 7) = v61;
  v62 = v96;
  *(v10 + 8) = v97;
  *(v10 + 9) = v62;
  v63 = v94;
  *(v10 + 10) = v95;
  *(v10 + 11) = v63;
  *(v10 + 12) = v42;
  *(v10 + 13) = v43;
  *(v10 + 14) = v93;
  *(v10 + 15) = v47;
  v10[128] = v51;
  *(v10 + 17) = v53;
  *(v10 + 18) = v52;
  v10[152] = v54;
  v10[153] = v56 & 1;
  v10[154] = v57;
  v118 = 0x4028000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  v64 = v105;
  sub_24F5A33A4(v10, v105);
  *(v64 + *(v106 + 36)) = 0x3FF0000000000000;
  sub_24E6009C8(v64, v117, &qword_27F248AB8, &qword_24FA0C8C0);
  if (*(v21 + qword_27F39E5A0) == 1)
  {
    v65 = *(v21 + 32);
    v66 = type metadata accessor for OfferButtonView(0);
    v118 = 0x4052000000000000;

    v67 = v92;
    sub_24F9237C8();
    v68 = *(v66 + 24);
    *(v67 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v69 = *(v66 + 28);
    *(v67 + v69) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
    swift_storeEnumTagMultiPayload();
    *v67 = sub_24E690E30;
    *(v67 + 8) = v65;
    *(v67 + 16) = 0;
    LOBYTE(v65) = sub_24F925838();
    sub_24F923318();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AC8, &unk_24FA0C948) + 36);
    *v78 = v65;
    *(v78 + 8) = v71;
    *(v78 + 16) = v73;
    *(v78 + 24) = v75;
    *(v78 + 32) = v77;
    *(v78 + 40) = 0;
    v79 = v113;
    v80 = v114;
    *(v67 + *(v113 + 36)) = 0x4008000000000000;
    sub_24E6009C8(v67, v80, &qword_27F248AA8, &qword_24FA0C8B0);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v79 = v113;
    v80 = v114;
  }

  (*(v111 + 56))(v80, v81, 1, v79);
  v83 = v109;
  v82 = v110;
  sub_24F5A2B64(v109, v110, type metadata accessor for LockupContentView.Ordinal);
  v84 = v117;
  v85 = v112;
  sub_24E60169C(v117, v112, &qword_27F248AB8, &qword_24FA0C8C0);
  v86 = v115;
  sub_24E60169C(v80, v115, &qword_27F248AB0, &qword_24FA0C8B8);
  v87 = v116;
  sub_24F5A2B64(v82, v116, type metadata accessor for LockupContentView.Ordinal);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AC0, &qword_24FA0C910);
  v89 = v87 + v88[12];
  *v89 = v108;
  *(v89 + 8) = v24;
  *(v89 + 16) = v25;
  *(v89 + 24) = v26;
  *(v89 + 32) = 0;
  *(v89 + 40) = 0x4000000000000000;
  sub_24E60169C(v85, v87 + v88[16], &qword_27F248AB8, &qword_24FA0C8C0);
  v90 = v87 + v88[20];
  *v90 = 0;
  *(v90 + 8) = 0;
  sub_24E60169C(v86, v87 + v88[24], &qword_27F248AB0, &qword_24FA0C8B8);

  sub_24E601704(v80, &qword_27F248AB0, &qword_24FA0C8B8);
  sub_24E601704(v84, &qword_27F248AB8, &qword_24FA0C8C0);
  sub_24F5A2BCC(v83, type metadata accessor for LockupContentView.Ordinal);
  sub_24E601704(v86, &qword_27F248AB0, &qword_24FA0C8B8);
  sub_24E601704(v85, &qword_27F248AB8, &qword_24FA0C8C0);

  return sub_24F5A2BCC(v82, type metadata accessor for LockupContentView.Ordinal);
}

double sub_24F59F1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = dbl_24FA0CDC8[*(*v0 + 24)];
  type metadata accessor for LockupContentView.HorizontalContent(0);
  sub_24F769788(v10);
  v12 = *(v8 + 56);
  v12(v6, 1, 1, v7);
  (*(v8 + 104))(v3, *MEMORY[0x277CDF988], v7);
  v12(v3, 0, 1, v7);
  v13 = sub_24EF13DC0(v6, v3, v11);
  sub_24E601704(v3, &qword_27F2140C0, &qword_24F93C240);
  sub_24E601704(v6, &qword_27F2140C0, &qword_24F93C240);
  (*(v8 + 8))(v10, v7);
  return v13;
}

double sub_24F59F3C0@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A98, &qword_24FA0C8A0);
  sub_24F59E6E8(v2, a2 + *(v4 + 44));
  sub_24F927618();
  sub_24F9238C8();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AA0, &qword_24FA0C8A8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

__n128 sub_24F59F46C@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AD0, &qword_24FA0C958);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AD8, &qword_24FA0C960);
  sub_24F59F5CC(v1, &v5[*(v6 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, a1, &qword_27F248AD0, &qword_24FA0C958);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AE0, &qword_24FA0C968) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_24F59F5CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AE8, &qword_24FA0C970);
  MEMORY[0x28223BE20](v105);
  v110 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v86 - v5;
  v102 = type metadata accessor for LockupContentView.TextStack(0);
  MEMORY[0x28223BE20](v102);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AF0, &qword_24FA0C978);
  MEMORY[0x28223BE20](v104);
  v108 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v111 = &v86 - v12;
  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v107 = *(*(*a1 + 16) + 48);

  v106 = sub_24F925828();
  v99 = type metadata accessor for LockupContentView.VerticalContent(0);
  v101 = a1;
  sub_24F769788(v16);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v14 + 8))(v16, v13);
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v131 = 1;
  v128 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v28 = 0;
  v29 = 0;
  if ((v118[0] & 1) == 0)
  {
    v28 = *(*(v17 + 16) + 80);
  }

  v30 = *(v17 + 24) > 1u;
  v97 = v29;
  if (v30)
  {
    v31 = sub_24F925A18();
  }

  else
  {
    v31 = sub_24F9259E8();
  }

  v98 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v32 = *(v17 + 16);
  v33 = 96;
  if (LOBYTE(v118[0]))
  {
    v33 = 272;
  }

  v34 = 104;
  if (LOBYTE(v118[0]))
  {
    v34 = 280;
  }

  v35 = *(v32 + v34);
  v96 = *(v32 + v33);
  v36 = v35;

  v95 = sub_24F41C130();
  if (*(v17 + 24) - 2 >= 2)
  {
    if (*(v17 + 24))
    {
      v94 = sub_24F9258D8();
      goto LABEL_16;
    }

    sub_24F925A18();
  }

  else
  {
    sub_24F9258D8();
  }

  sub_24F925918();
  v94 = sub_24F9259A8();

LABEL_16:
  v93 = sub_24F41C320();
  v92 = v37;
  if (*(v17 + 25) != 1 || *(v17 + 26) == 1)
  {
    goto LABEL_21;
  }

  sub_24F41C3E0();
  if (v38 || (sub_24F41C4F8(), v39))
  {

LABEL_21:
    v40 = 1;
    goto LABEL_22;
  }

  v40 = 2;
LABEL_22:
  v91 = v40;
  v90 = sub_24F41C3E0();
  v89 = v41;
  sub_24F41C3E0();
  if (v42)
  {

    v43 = *(*(v17 + 16) + 336);
  }

  else
  {
    v43 = 0;
  }

  v88 = sub_24F41C4F8();
  v87 = v44;
  if (*(v17 + 26) != 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 1;
    v46 = 0;
    goto LABEL_35;
  }

  v45 = *(v17 + 16);
  v46 = 0;
  if ((*(v45 + 56) & 1) != 0 || (v47 = *(v45 + 160)) == 0)
  {
    v50 = 1;
  }

  else
  {
    v48 = v47;
    sub_24F91FE38();
    v46 = v49;

    v50 = 0;
    if (*(v17 + 26) != 1)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      goto LABEL_35;
    }
  }

  v54 = *(v17 + 16);
  if (*(v54 + 56))
  {
    v51 = 0;
    v52 = 0;
    v53 = 1;
  }

  else
  {
    v52 = *(v54 + 168);
    v51 = *(v54 + 176);

    v53 = 0;
  }

LABEL_35:
  v55 = sub_24F41C654();
  v56 = *(v17 + 25);
  v57 = v97;
  *v7 = v28;
  *(v7 + 1) = v57;
  v58 = v96;
  *(v7 + 2) = v98;
  *(v7 + 3) = v58;
  v59 = v95;
  *(v7 + 4) = v36;
  *(v7 + 5) = v59;
  v60 = v93;
  *(v7 + 6) = v94;
  *(v7 + 7) = v60;
  v61 = v91;
  *(v7 + 8) = v92;
  *(v7 + 9) = v61;
  v62 = v89;
  *(v7 + 10) = v90;
  *(v7 + 11) = v62;
  v63 = v88;
  *(v7 + 12) = v43;
  *(v7 + 13) = v63;
  *(v7 + 14) = v87;
  *(v7 + 15) = v46;
  v7[128] = v50;
  *(v7 + 17) = v52;
  *(v7 + 18) = v51;
  v7[152] = v53;
  v7[153] = v55 & 1;
  v7[154] = v56;
  v118[0] = 0x4028000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v64 = v103;
  sub_24F5A33A4(v7, v103);
  v65 = (v64 + *(v104 + 36));
  v66 = v133;
  *v65 = v132;
  v65[1] = v66;
  v65[2] = v134;
  v67 = v64;
  v68 = v111;
  sub_24E6009C8(v67, v111, &qword_27F248AF0, &qword_24FA0C978);
  v69 = *(v17 + 32);
  v70 = type metadata accessor for OfferButtonView(0);
  v118[0] = 0x4052000000000000;

  v71 = v100;
  sub_24F9237C8();
  v72 = *(v70 + 24);
  *(v71 + v72) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v73 = *(v70 + 28);
  *(v71 + v73) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  *v71 = sub_24F5A41BC;
  *(v71 + 8) = v69;
  *(v71 + 16) = 0;
  *(v71 + *(v105 + 36)) = 0x4000000000000000;
  v74 = v108;
  sub_24E60169C(v68, v108, &qword_27F248AF0, &qword_24FA0C978);
  v75 = v110;
  sub_24E60169C(v71, v110, &qword_27F248AE8, &qword_24FA0C970);
  v76 = v107;
  *&v112 = v107;
  *(&v112 + 1) = v18;
  v113 = v19;
  LOBYTE(v114) = 1;
  *(&v114 + 1) = *v130;
  DWORD1(v114) = *&v130[3];
  v77 = v106;
  BYTE8(v114) = v106;
  HIDWORD(v114) = *&v129[3];
  *(&v114 + 9) = *v129;
  *&v115 = v21;
  *(&v115 + 1) = v23;
  *&v116 = v25;
  *(&v116 + 1) = v27;
  v117 = 0;
  v78 = v114;
  v79 = v115;
  v80 = v116;
  v81 = v109;
  *(v109 + 80) = 0;
  v81[3] = v79;
  v81[4] = v80;
  v82 = v112;
  v81[1] = v113;
  v81[2] = v78;
  *v81 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AF8, &qword_24FA0C980);
  sub_24E60169C(v74, v81 + v83[12], &qword_27F248AF0, &qword_24FA0C978);
  v84 = v81 + v83[16];
  *v84 = 0x402C000000000000;
  v84[8] = 0;
  sub_24E60169C(v75, v81 + v83[20], &qword_27F248AE8, &qword_24FA0C970);
  sub_24E60169C(&v112, v118, &qword_27F248B00, &qword_24FA0C988);
  sub_24E601704(v71, &qword_27F248AE8, &qword_24FA0C970);
  sub_24E601704(v111, &qword_27F248AF0, &qword_24FA0C978);
  sub_24E601704(v75, &qword_27F248AE8, &qword_24FA0C970);
  sub_24E601704(v74, &qword_27F248AF0, &qword_24FA0C978);
  v118[0] = v76;
  v118[1] = v18;
  v118[2] = v19;
  v118[3] = 0;
  v119 = 1;
  *v120 = *v130;
  *&v120[3] = *&v130[3];
  v121 = v77;
  *v122 = *v129;
  *&v122[3] = *&v129[3];
  v123 = v21;
  v124 = v23;
  v125 = v25;
  v126 = v27;
  v127 = 0;
  return sub_24E601704(v118, &qword_27F248B00, &qword_24FA0C988);
}

uint64_t sub_24F5A00C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BC0, &qword_24FA0CC60);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BC8, &unk_24FA0CC68);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *v1;
  if (*v1)
  {
    v16 = v1[2];
    v40 = v1[1];
    v15 = v40;
    v41 = v16;
    v43 = v10;
    v17 = type metadata accessor for SwiftUIArtworkView(0);
    v42 = a1;
    v18 = v17;
    v19 = *(v17 + 24);
    v20 = *MEMORY[0x277CE1010];
    v21 = sub_24F926E68();
    (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
    *v5 = v14;
    *(v5 + 1) = v15;
    *(v5 + 2) = v16;
    v5[24] = 0;
    v22 = &v5[v18[7]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = 1;
    v5[v18[8]] = 2;
    v5[v18[9]] = 0;
    LOBYTE(v18) = *(v14 + 64);
    v46[0] = 0;

    sub_24F926F28();
    LOBYTE(v19) = v47;
    v23 = *(&v47 + 1);
    LOBYTE(v47) = 1;
    v24 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430, &qword_24F979D60) + 36)];
    *v24 = v18;
    *(v24 + 1) = *v46;
    *(v24 + 1) = *&v46[3];
    *(v24 + 1) = v15;
    *(v24 + 2) = v16;
    *(v24 + 3) = 0;
    *(v24 + 4) = 0;
    v24[40] = 1;
    *(v24 + 41) = *v45;
    *(v24 + 11) = *&v45[3];
    v24[48] = v19;
    *(v24 + 49) = *v44;
    *(v24 + 13) = *&v44[3];
    *(v24 + 7) = v23;
    sub_24F927618();
    sub_24F9238C8();
    v25 = &v5[*(v3 + 36)];
    v26 = v48;
    *v25 = v47;
    *(v25 + 1) = v26;
    *(v25 + 2) = v49;
    LOBYTE(v18) = sub_24F925858();
    sub_24F923318();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E6009C8(v5, v8, &qword_27F248BC0, &qword_24FA0CC60);
    v35 = &v8[*(v6 + 36)];
    *v35 = v18;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    sub_24E6009C8(v8, v13, &qword_27F248BC8, &unk_24FA0CC68);
    v36 = v42;
    sub_24E6009C8(v13, v42, &qword_27F248BC8, &unk_24FA0CC68);
    return (*(v43 + 56))(v36, 0, 1, v6);
  }

  else
  {
    v38 = *(v10 + 56);

    return v38(a1, 1, 1, v6, v11);
  }
}

uint64_t sub_24F5A04DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v4 - 8);
  v173 = &v156[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B68, &qword_24FA0CB90);
  v175 = *(v6 - 8);
  v176 = v6;
  MEMORY[0x28223BE20](v6);
  v174 = &v156[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B70, &qword_24FA0CB98);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v156[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v204 = &v156[-v11];
  v12 = *(a1 + 8);
  v197 = a1;
  if (v12)
  {
    v232 = *a1;
    v233 = v12;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    sub_24F9259E8();
    v18 = sub_24F925C98();
    v20 = v19;
    v22 = v21;
    v208 = v23;

    sub_24E600B40(v13, v15, v17 & 1);
    a1 = v197;

    LOBYTE(v232) = 0;
    sub_24ED1A304();
    v24 = sub_24F925C58();
    v194 = v25;
    v195 = v24;
    LOBYTE(v13) = v26;
    v193 = v27;
    sub_24E600B40(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v20) = sub_24F925828();
    sub_24F923318();
    v190 = v29;
    v191 = v28;
    v188 = v31;
    v189 = v30;
    LOBYTE(v232) = v13 & 1;
    LOBYTE(v228[0]) = 0;
    LOBYTE(v221) = 0;
    v185 = v13 & 1;
    v187 = 0;
    v186 = v20;
    v184 = 1;
    v32 = *(a1 + 32);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_6:
    v208 = 0;
    v202 = 0;
    v203 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v207 = 0;
    v48 = *(a1 + 64);
    if (v48)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v194 = 0;
  v195 = 0;
  KeyPath = 0;
  v193 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v32 = *(a1 + 32);
  if (!v32)
  {
    goto LABEL_6;
  }

LABEL_3:
  v232 = *(a1 + 24);
  v233 = v32;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v37 = v36;
  v38 = sub_24F925C98();
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v33, v35, v37 & 1);

  LOBYTE(v232) = 0;
  sub_24ED1A304();
  v208 = sub_24F925C58();
  v202 = v44;
  v203 = v43;
  LOBYTE(v33) = v45;
  v46 = v38;
  a1 = v197;
  sub_24E600B40(v46, v40, v42 & 1);

  v201 = *(a1 + 40);
  v47 = swift_getKeyPath();
  LOBYTE(v232) = v33 & 1;
  LOBYTE(v228[0]) = 0;
  v199 = v33 & 1;
  v200 = v47;
  v207 = 0x10000;
  v48 = *(a1 + 64);
  if (v48)
  {
LABEL_4:
    v232 = *(a1 + 56);
    v233 = v48;
    sub_24E600AEC();

    v49 = sub_24F925E18();
    v51 = v50;
    v53 = v52;
    LOBYTE(v232) = 1;
    sub_24ED1A304();
    v54 = sub_24F925C58();
    v56 = v55;
    v58 = v57;
    sub_24E600B40(v49, v51, v53 & 1);

    sub_24F925A18();
    v59 = sub_24F925C98();
    v61 = v60;
    LODWORD(v206) = v62;
    v64 = v63;

    v65 = v54;
    a1 = v197;
    sub_24E600B40(v65, v56, v58 & 1);

    v181 = *(a1 + 72);
    v66 = swift_getKeyPath();
    v183 = v59;
    v205 = v206 & 1;
    v206 = v61;
    sub_24E5FD138(v59, v61, v205);
    v182 = v64;

    v198 = v66;

    goto LABEL_8;
  }

LABEL_7:
  v182 = 0;
  v183 = 0;
  v205 = 0;
  v206 = 0;
  v198 = 0;
  v181 = 0;
LABEL_8:
  v67 = 0;
  if (*(a1 + 128))
  {
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 1;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
  }

  else
  {
    v68 = *(a1 + 120);
    v69 = *(a1 + 144);
    v179 = *(a1 + 136);
    v180 = v68;
    v178 = v69;

    v70 = sub_24F925818();
    sub_24F923318();
    v169 = v72;
    v170 = v71;
    v167 = v74;
    v168 = v73;
    LOBYTE(v232) = 0;
    v177 = v70;
  }

  v75 = *(a1 + 152);
  if (v75 == 1)
  {
    v76 = sub_24F925818();
    sub_24F923318();
    v67 = v77;
    v164 = v79;
    v165 = v78;
    v163 = v80;
    v162 = v76;
    v81 = *(a1 + 88);
    if (v81)
    {
LABEL_13:
      v82 = *(a1 + 80);
      v83 = sub_24F9249A8();
      v84 = v174;
      *v174 = v83;
      *(v84 + 8) = 0x4010000000000000;
      *(v84 + 16) = 0;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B88, &qword_24FA0CBB8);
      sub_24F5A1280(a1, v82, v81, v84 + *(v85 + 44));
      LOBYTE(v82) = sub_24F925818();
      sub_24F923318();
      v86 = v176;
      v87 = v84 + *(v176 + 36);
      *v87 = v82;
      *(v87 + 8) = v88;
      *(v87 + 16) = v89;
      *(v87 + 24) = v90;
      *(v87 + 32) = v91;
      *(v87 + 40) = 0;
      v92 = v204;
      sub_24E6009C8(v84, v204, &qword_27F248B68, &qword_24FA0CB90);
      v93 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v162 = 0;
    v164 = 0;
    v165 = 0;
    v163 = 0;
    v81 = *(a1 + 88);
    if (v81)
    {
      goto LABEL_13;
    }
  }

  v93 = 1;
  v92 = v204;
  v86 = v176;
LABEL_16:
  (*(v175 + 56))(v92, v93, 1, v86);
  v94 = *(a1 + 112);
  v166 = v67;
  if (v94)
  {
    v232 = *(a1 + 104);
    v233 = v94;
    sub_24E600AEC();

    v95 = sub_24F925E18();
    v97 = v96;
    v99 = v98;
    v100 = *(a1 + 153);
    v157 = v75;
    if (v100 == 1)
    {
      type metadata accessor for LockupContentView.TextStack(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      sub_24F9237D8();
      v101 = sub_24F925908();
      v102 = v173;
      (*(*(v101 - 8) + 56))(v173, 1, 1, v101);
      sub_24F925968();
      sub_24E601704(v102, &qword_27F214698, &unk_24F95F810);
    }

    else
    {
      sub_24F925A18();
    }

    v107 = sub_24F925C98();
    v109 = v108;
    v111 = v110;
    v173 = v112;

    sub_24E600B40(v95, v97, v99 & 1);

    LOBYTE(v232) = 0;
    sub_24ED1A304();
    v113 = sub_24F925C58();
    v175 = v114;
    v176 = v113;
    v116 = v115;
    v174 = v117;
    sub_24E600B40(v107, v109, v111 & 1);

    v173 = swift_getKeyPath();
    LOBYTE(v109) = sub_24F925818();
    sub_24F923318();
    v160 = v119;
    v161 = v118;
    v105 = v120;
    v106 = v121;
    LOBYTE(v232) = v116 & 1;
    LOBYTE(v228[0]) = 0;
    LOBYTE(v221) = 0;
    v104 = v116 & 1;
    v172 = 0;
    v171 = v109;
    v103 = 1;
    a1 = v197;
    LOBYTE(v75) = v157;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    v103 = 0;
    v171 = 0;
    v172 = 0;
    v104 = 0;
    v160 = 0;
    v161 = 0;
    v105 = 0;
    v106 = 0;
  }

  v158 = v103;
  v159 = v104;
  LODWORD(v197) = *(a1 + 154);
  v122 = v196;
  sub_24E60169C(v204, v196, &qword_27F248B70, &qword_24FA0CB98);
  *&v209 = v195;
  *(&v209 + 1) = v194;
  *&v210 = v185;
  *(&v210 + 1) = v193;
  *&v211 = KeyPath;
  *(&v211 + 1) = v184;
  *&v212 = v187;
  *(&v212 + 1) = v186;
  *&v213 = v191;
  *(&v213 + 1) = v190;
  *&v214 = v189;
  *(&v214 + 1) = v188;
  v215 = 0;
  *(a2 + 96) = 0;
  v123 = v214;
  *(a2 + 64) = v213;
  *(a2 + 80) = v123;
  v124 = v210;
  *a2 = v209;
  *(a2 + 16) = v124;
  v125 = v212;
  *(a2 + 32) = v211;
  *(a2 + 48) = v125;
  v126 = v203;
  *(a2 + 104) = v208;
  *(a2 + 112) = v126;
  v127 = v202;
  *(a2 + 120) = v199;
  *(a2 + 128) = v127;
  v128 = v201;
  *(a2 + 136) = v200;
  *(a2 + 144) = v128;
  v129 = v207;
  *(a2 + 154) = BYTE2(v207);
  *(a2 + 152) = v129;
  v131 = v205;
  v130 = v206;
  *(a2 + 160) = v183;
  *(a2 + 168) = v130;
  v132 = v182;
  *(a2 + 176) = v131;
  *(a2 + 184) = v132;
  v133 = v198;
  *(a2 + 192) = v198;
  v134 = v133;
  v135 = v180;
  *(a2 + 200) = v181;
  *(a2 + 208) = 0;
  *&v216 = v135;
  *(&v216 + 1) = v179;
  *&v217 = v178;
  *(&v217 + 1) = v177;
  v137 = v169;
  v136 = v170;
  *&v218 = v170;
  *(&v218 + 1) = v169;
  v139 = v167;
  v138 = v168;
  *&v219 = v168;
  *(&v219 + 1) = v167;
  v220 = 0;
  v140 = v217;
  *(a2 + 216) = v216;
  v141 = v218;
  v142 = v219;
  *(a2 + 280) = 0;
  *(a2 + 264) = v142;
  *(a2 + 248) = v141;
  *(a2 + 232) = v140;
  *(a2 + 288) = v162;
  *&v141 = v165;
  *(a2 + 296) = v166;
  *(a2 + 304) = v141;
  *&v141 = v163;
  *(a2 + 312) = v164;
  *(a2 + 320) = v141;
  *(a2 + 328) = 0;
  *(a2 + 329) = v75 ^ 1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B78, &unk_24FA0CBA0);
  sub_24E60169C(v122, a2 + v143[28], &qword_27F248B70, &qword_24FA0CB98);
  v144 = a2 + v143[32];
  *&v221 = v176;
  *(&v221 + 1) = v175;
  *&v222 = v104;
  *(&v222 + 1) = v174;
  *&v223 = v173;
  *(&v223 + 1) = v103;
  *&v224 = v172;
  *(&v224 + 1) = v171;
  v146 = v160;
  v145 = v161;
  *&v225 = v161;
  *(&v225 + 1) = v160;
  *&v226 = v105;
  *(&v226 + 1) = v106;
  v147 = v226;
  *(v144 + 64) = v225;
  *(v144 + 80) = v147;
  *(v144 + 96) = 0;
  v148 = v222;
  *v144 = v221;
  *(v144 + 16) = v148;
  v149 = v224;
  *(v144 + 32) = v223;
  *(v144 + 48) = v149;
  v150 = a2 + v143[36];
  v227 = 0;
  sub_24E60169C(&v209, &v232, &qword_27F232198, &qword_24F9A8B38);
  sub_24ED1A264(v208, v203, v199, v202);
  v151 = v182;
  v152 = v183;
  v154 = v205;
  v153 = v206;
  v198 = v134;
  sub_24ED1A264(v183, v206, v205, v182);
  sub_24E60169C(&v216, &v232, &qword_27F248B80, &qword_24FA0CBB0);
  sub_24E60169C(&v221, &v232, &qword_27F232198, &qword_24F9A8B38);
  sub_24ED1A2B4(v152, v153, v154, v151, v134);
  *v150 = 0;
  *(v150 + 8) = 0;
  *(v150 + 9) = (v197 & 1) == 0;
  sub_24E601704(v204, &qword_27F248B70, &qword_24FA0CB98);
  v228[0] = v176;
  v228[1] = v175;
  v228[2] = v159;
  v228[3] = v174;
  v228[4] = v173;
  v228[5] = v158;
  v228[6] = v172;
  v228[7] = v171;
  v228[8] = v145;
  v228[9] = v146;
  v228[10] = v105;
  v228[11] = v106;
  v229 = 0;
  sub_24E601704(v228, &qword_27F232198, &qword_24F9A8B38);
  sub_24E601704(v196, &qword_27F248B70, &qword_24FA0CB98);
  v230[0] = v180;
  v230[1] = v179;
  v230[2] = v178;
  v230[3] = v177;
  v230[4] = v136;
  v230[5] = v137;
  v230[6] = v138;
  v230[7] = v139;
  v231 = 0;
  sub_24E601704(v230, &qword_27F248B80, &qword_24FA0CBB0);
  sub_24ED1A2B4(v152, v206, v205, v151, v198);
  sub_24ED1A2B4(v208, v203, v199, v202, v200);
  v232 = v195;
  v233 = v194;
  v234 = v185;
  v235 = v193;
  v236 = KeyPath;
  v237 = v184;
  v238 = v187;
  v239 = v186;
  v240 = v191;
  v241 = v190;
  v242 = v189;
  v243 = v188;
  v244 = 0;
  return sub_24E601704(&v232, &qword_27F232198, &qword_24F9A8B38);
}

uint64_t sub_24F5A1280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B90, &qword_24FA0CBC0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B98, &qword_24FA0CBC8);
  MEMORY[0x28223BE20](v77);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BA0, &qword_24FA0CBD0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BA8, &qword_24FA0CBD8);
  MEMORY[0x28223BE20](v20 - 8);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = *(a1 + 96);
  v81 = &v72 - v25;
  if (v24)
  {
    v73 = v14;
    v74 = a2;
    v75 = a3;
    v26 = type metadata accessor for SwiftUIArtworkView(0);
    v27 = v26[6];
    v28 = *MEMORY[0x277CE1010];
    v29 = sub_24F926E68();
    (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = v24;
    v11[24] = 1;
    v30 = &v11[v26[7]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v30[16] = 1;
    v11[v26[8]] = 2;
    v11[v26[9]] = 0;
    v31 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BB8, &unk_24FA0CBE8) + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v33 = *MEMORY[0x277CE1050];
    v34 = sub_24F926E78();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    v35 = &v11[*(v9 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);

    sub_24F924CD8();
    v37 = sub_24F924D08();
    (*(*(v37 - 8) + 56))(v35 + v36, 0, 1, v37);
    *v35 = swift_getKeyPath();
    if (*(a1 + 153))
    {
      type metadata accessor for LockupContentView.TextStack(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      sub_24F9237D8();
      v38 = sub_24F925908();
      v39 = v78;
      (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
      v40 = sub_24F925968();
      sub_24E601704(v39, &qword_27F214698, &unk_24F95F810);
    }

    else
    {
      v40 = sub_24F925A18();
    }

    v41 = v73;
    KeyPath = swift_getKeyPath();
    sub_24E6009C8(v11, v13, &qword_27F248B90, &qword_24FA0CBC0);
    v43 = &v13[*(v77 + 36)];
    *v43 = KeyPath;
    v43[1] = v40;
    sub_24E6009C8(v13, v17, &qword_27F248B98, &qword_24FA0CBC8);
    v17[*(v41 + 36)] = 1;
    v44 = v76;
    sub_24E6009C8(v17, v76, &qword_27F248BA0, &qword_24FA0CBD0);
    v45 = v44;
    v46 = v81;
    sub_24E6009C8(v45, v81, &qword_27F248BA0, &qword_24FA0CBD0);
    (*(v15 + 56))(v46, 0, 1, v41);
    a2 = v74;
    a3 = v75;
  }

  else
  {
    (*(v15 + 56))(v23);
  }

  v82 = a2;
  v83 = a3;
  sub_24E600AEC();

  v47 = sub_24F925E18();
  v49 = v48;
  v51 = v50;
  LOBYTE(v82) = 1;
  sub_24ED1A304();
  v52 = sub_24F925C58();
  v54 = v53;
  v56 = v55;
  sub_24E600B40(v47, v49, v51 & 1);

  if (*(a1 + 153) == 1)
  {
    type metadata accessor for LockupContentView.TextStack(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    sub_24F9237D8();
    v57 = sub_24F925908();
    v58 = v78;
    (*(*(v57 - 8) + 56))(v78, 1, 1, v57);
    sub_24F925968();
    sub_24E601704(v58, &qword_27F214698, &unk_24F95F810);
  }

  else
  {
    sub_24F925A18();
  }

  v59 = sub_24F925C98();
  v61 = v60;
  v63 = v62;
  v65 = v64;

  sub_24E600B40(v52, v54, v56 & 1);

  v66 = swift_getKeyPath();
  v67 = v81;
  v68 = v79;
  sub_24E60169C(v81, v79, &qword_27F248BA8, &qword_24FA0CBD8);
  v69 = v80;
  sub_24E60169C(v68, v80, &qword_27F248BA8, &qword_24FA0CBD8);
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BB0, &qword_24FA0CBE0) + 48);
  *v70 = v59;
  *(v70 + 8) = v61;
  v63 &= 1u;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v66;
  *(v70 + 40) = 1;
  *(v70 + 48) = 0;
  sub_24E5FD138(v59, v61, v63);

  sub_24E601704(v67, &qword_27F248BA8, &qword_24FA0CBD8);
  sub_24E600B40(v59, v61, v63);

  return sub_24E601704(v68, &qword_27F248BA8, &qword_24FA0CBD8);
}

uint64_t sub_24F5A1ACC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B60, &unk_24FA0CB80);
  return sub_24F5A04DC(v2, a2 + *(v4 + 44));
}

uint64_t sub_24F5A1B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v40 = sub_24F925A18();
  v41 = sub_24F925858();
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v48) = 0;
  if (a2)
  {
    *&v48 = a1;
    *(&v48 + 1) = a2;
    sub_24E600AEC();

    v16 = sub_24F925E18();
    v18 = v17;
    v20 = v19;
    v39 = 1;
    LOBYTE(v48) = 1;
    sub_24ED1A304();
    v21 = sub_24F925C58();
    v23 = v22;
    v25 = v24;
    sub_24E600B40(v16, v18, v20 & 1);

    sub_24F925A18();
    v26 = sub_24F925C98();
    v28 = v27;
    v38 = v29;
    v31 = v30;

    sub_24E600B40(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v33 = v38 & 1;
    sub_24E5FD138(v26, v28, v38 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
    KeyPath = 0;
    v39 = 0;
  }

  *&v42 = a4;
  *(&v42 + 1) = 5;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = v69[0];
  HIDWORD(v43) = *(v69 + 3);
  v44 = 0;
  *&v45 = v40;
  BYTE8(v45) = 1;
  HIDWORD(v45) = *&v68[3];
  *(&v45 + 9) = *v68;
  LOBYTE(v46) = v41;
  DWORD1(v46) = *&v67[3];
  *(&v46 + 1) = *v67;
  *(&v46 + 1) = v9;
  *v47 = v11;
  *&v47[8] = v13;
  *&v47[16] = v15;
  v47[24] = 0;
  v48 = v42;
  v49 = v43;
  *&v52[9] = *&v47[9];
  v51 = v46;
  *v52 = *v47;
  v50 = v45;
  sub_24E60169C(&v42, v53, &qword_27F248C38, &qword_24FA0CD98);
  sub_24ED1A264(v26, v28, v33, v31);
  sub_24ED1A2B4(v26, v28, v33, v31, KeyPath);
  v34 = v51;
  *(a3 + 32) = v50;
  *(a3 + 48) = v34;
  v35 = *&v52[16];
  *(a3 + 64) = *v52;
  *(a3 + 80) = v35;
  v36 = v49;
  *a3 = v48;
  *(a3 + 16) = v36;
  *(a3 + 96) = v26;
  *(a3 + 104) = v28;
  *(a3 + 112) = v33;
  *(a3 + 120) = v31;
  *(a3 + 128) = KeyPath;
  *(a3 + 136) = v39;
  *(a3 + 144) = 0;
  sub_24ED1A2B4(v26, v28, v33, v31, KeyPath);
  *v53 = a4;
  v53[1] = 5;
  v54 = 0;
  *v55 = v69[0];
  *&v55[3] = *(v69 + 3);
  v56 = 0;
  v57 = v40;
  v58 = 1;
  *v59 = *v68;
  *&v59[3] = *&v68[3];
  v60 = v41;
  *&v61[3] = *&v67[3];
  *v61 = *v67;
  v62 = v9;
  v63 = v11;
  v64 = v13;
  v65 = v15;
  v66 = 0;
  return sub_24E601704(v53, &qword_27F248C38, &qword_24FA0CD98);
}

double sub_24F5A1E98@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = sub_24F924978();
  v26 = 0;
  sub_24F5A1B20(v5, v6, &v15, v4);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v27 = v15;
  v28 = v16;
  v37[6] = v21;
  v37[7] = v22;
  v37[8] = v23;
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v37[5] = v20;
  v36 = v24;
  v38 = v24;
  v37[0] = v15;
  v37[1] = v16;
  sub_24E60169C(&v27, &v14, &qword_27F248C30, &qword_24FA0CD90);
  sub_24E601704(v37, &qword_27F248C30, &qword_24FA0CD90);
  *&v25[55] = v30;
  *&v25[39] = v29;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[7] = v27;
  *&v25[23] = v28;
  v8 = *&v25[112];
  *(a2 + 113) = *&v25[96];
  *(a2 + 129) = v8;
  *(a2 + 145) = *&v25[128];
  v9 = *&v25[48];
  *(a2 + 49) = *&v25[32];
  *(a2 + 65) = v9;
  v10 = *&v25[80];
  *(a2 + 81) = *&v25[64];
  *(a2 + 97) = v10;
  result = *v25;
  v12 = *&v25[16];
  *(a2 + 17) = *v25;
  v25[151] = v36;
  v13 = v26;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 161) = *&v25[144];
  *(a2 + 33) = v12;
  return result;
}

double sub_24F5A2030@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_24F924978();
  v20 = 0;
  sub_24F5A2160(&v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v29[7] = v18;
  sub_24E60169C(&v21, &v10, &qword_27F248C28, &unk_24FA0CD80);
  sub_24E601704(v29, &qword_27F248C28, &unk_24FA0CD80);
  *&v19[71] = v25;
  *&v19[87] = v26;
  *&v19[103] = v27;
  *&v19[119] = v28;
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  v4 = *&v19[64];
  *(a2 + 97) = *&v19[80];
  v5 = *&v19[112];
  *(a2 + 113) = *&v19[96];
  *(a2 + 129) = v5;
  v6 = *v19;
  *(a2 + 33) = *&v19[16];
  result = *&v19[32];
  v8 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = v4;
  v9 = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 144) = *&v19[127];
  *(a2 + 17) = v6;
  *(a2 + 152) = 1;
  return result;
}

void sub_24F5A2160(uint64_t a1@<X8>)
{
  v28 = sub_24F926DF8();
  v2 = sub_24F9259E8();
  KeyPath = swift_getKeyPath();
  v4._object = 0x800000024FA76D80;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  sub_24F9259E8();
  v6 = sub_24F925C98();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_24F9257F8();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10 & 1;
  LOBYTE(v33[0]) = v10 & 1;
  v23 = sub_24F926DF8();
  v24 = sub_24F9259E8();
  v25 = swift_getKeyPath();
  *&v29 = v6;
  *(&v29 + 1) = v8;
  LOBYTE(v30) = v22;
  *(&v30 + 1) = v12;
  LOBYTE(v31) = v13;
  *(&v31 + 1) = v15;
  *v32 = v17;
  *&v32[8] = v19;
  *&v32[16] = v21;
  v26 = v29;
  *(a1 + 40) = v30;
  v27 = *v32;
  *(a1 + 56) = v31;
  v32[24] = 0;
  *(a1 + 72) = v27;
  *(a1 + 81) = *&v32[9];
  *a1 = v28;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v2;
  *(a1 + 24) = v26;
  *(a1 + 104) = v23;
  *(a1 + 112) = v25;
  *(a1 + 120) = v24;

  sub_24E60169C(&v29, v33, &qword_27F217790, &qword_24F946350);
  v33[0] = v6;
  v33[1] = v8;
  v34 = v22;
  v35 = v12;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v39 = v19;
  v40 = v21;
  v41 = 0;
  sub_24E601704(v33, &qword_27F217790, &qword_24F946350);
}

void *sub_24F5A23AC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2 == 0.0)
  {
    sub_24F5A3C10(v85);
  }

  else
  {
    v3 = *v1;

    v30 = sub_24F926C98();
    type metadata accessor for LockupContentView.Ordinal(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    v28 = v80;
    v29 = v78;
    v24 = v81;
    v25 = v79;
    v26 = v83;
    v27 = v82;
    v85[0] = v3;
    v85[1] = v2;
    sub_24E600AEC();
    v4 = sub_24F925E18();
    v22 = v5;
    v7 = v6;
    v19 = v8;
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v18 = v7 & 1;
    v77[0] = v7 & 1;
    LOBYTE(__dst[0]) = 0;
    v9 = sub_24F92B098();
    sub_24F9237D8();
    CTFontCreateWithNameAndOptions(v9, v85[0], 0, 0x20000uLL);

    v21 = sub_24F925A78();
    v20 = swift_getKeyPath();
    v31 = sub_24F9251C8();
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    *&v34[4] = v84[0];
    *&v34[20] = v84[1];
    *&v34[36] = v84[2];
    v10 = sub_24F927618();
    v12 = v11;
    sub_24F5A2924(__dst);
    *&v35[0] = v10;
    *(&v35[0] + 1) = v12;
    v35[1] = __dst[0];
    v35[2] = __dst[1];
    v35[4] = __dst[3];
    v35[5] = __dst[4];
    *&v77[64] = __dst[3];
    *&v77[80] = __dst[4];
    v35[6] = __dst[5];
    v35[7] = __dst[6];
    *&v77[96] = __dst[5];
    *&v77[112] = __dst[6];
    *v77 = v35[0];
    *&v77[16] = __dst[0];
    v35[3] = __dst[2];
    *&v77[32] = __dst[1];
    *&v77[48] = __dst[2];
    v36[0] = v10;
    v36[1] = v12;
    v37 = __dst[0];
    v38 = __dst[1];
    v42 = __dst[5];
    v43 = __dst[6];
    v40 = __dst[3];
    v41 = __dst[4];
    v39 = __dst[2];
    sub_24E60169C(v35, v85, &qword_27F248B50, &qword_24FA0CB68);
    sub_24E601704(v36, &qword_27F248B50, &qword_24FA0CB68);
    sub_24F9237D8();
    *&v13 = v85[0] * 0.5 + -11.0;
    v16 = sub_24F927618();
    v17 = v14;
    *&__src[0] = v4;
    *(&__src[0] + 1) = v22;
    LOBYTE(__src[1]) = v18;
    *(&__src[1] + 1) = *v45;
    DWORD1(__src[1]) = *&v45[3];
    *(&__src[1] + 1) = v19;
    *&__src[2] = KeyPath;
    *(&__src[2] + 1) = 1;
    LOBYTE(__src[3]) = 0;
    *(&__src[3] + 1) = *v44;
    *(&__src[3] + 1) = v23;
    *&__src[4] = 0x3FE999999999999ALL;
    *(&__src[4] + 1) = v20;
    *&__src[5] = v21;
    DWORD1(__src[3]) = *&v44[3];
    DWORD2(__src[5]) = v31;
    *(&__src[5] + 12) = *v34;
    *(&__src[6] + 12) = *&v34[16];
    *(&__src[7] + 12) = *&v34[32];
    HIDWORD(__src[8]) = *&v34[48];
    __src[13] = *&v77[64];
    __src[14] = *&v77[80];
    __src[15] = *&v77[96];
    __src[16] = *&v77[112];
    __src[9] = *v77;
    __src[10] = *&v77[16];
    __src[11] = *&v77[32];
    __src[12] = *&v77[48];
    __src[17] = v13;
    *&__src[18] = v16;
    *(&__src[18] + 1) = v14;
    memcpy(__dst, __src, sizeof(__dst));
    v47[0] = v4;
    v47[1] = v22;
    v48 = v18;
    *v49 = *v45;
    *&v49[3] = *&v45[3];
    v50 = v19;
    v51 = KeyPath;
    v52 = 1;
    v53 = 0;
    *v54 = *v44;
    v55 = v23;
    v56 = 0x3FE999999999999ALL;
    v57 = v20;
    v58 = v21;
    *&v54[3] = *&v44[3];
    v59 = v31;
    v60 = *v34;
    v61 = *&v34[16];
    v62 = *&v34[32];
    v63 = *&v34[48];
    v68 = *&v77[64];
    v69 = *&v77[80];
    v70 = *&v77[96];
    v71 = *&v77[112];
    v64 = *v77;
    v65 = *&v77[16];
    v66 = *&v77[32];
    v67 = *&v77[48];
    v72 = v13;
    v73 = 0;
    v74 = v16;
    v75 = v17;
    sub_24E60169C(__src, v85, &qword_27F248B58, &unk_24FA0CB70);
    sub_24E601704(v47, &qword_27F248B58, &unk_24FA0CB70);
    *v77 = v30;
    *&v77[8] = v29;
    v77[16] = v25;
    *&v77[24] = v28;
    v77[32] = v24;
    *&v77[40] = v27;
    *&v77[48] = v26;
    memcpy(&v77[56], __dst, 0x130uLL);
    CGSizeMake();
    memcpy(v85, v77, 0x168uLL);
  }

  return memcpy(a1, v85, 0x168uLL);
}

void sub_24F5A2924(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  *(v2 + 32) = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F926D08();

  *(v2 + 40) = v3;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v2);
  sub_24F923BD8();
  type metadata accessor for LockupContentView.Ordinal(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  *&v6 = v12;
  sub_24F9278A8();
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 80) = v9;
  *(a1 + 88) = 0xBFE657184AE74487;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
}

uint64_t sub_24F5A2B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F5A2B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5A2BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5A2C40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F5A2D90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F5A2ECC(uint64_t a1)
{
  type metadata accessor for LockupViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_24F5A3970(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F5A2FE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F5A30B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A3168(uint64_t a1)
{
  type metadata accessor for LockupViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_24F5A3970(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F5A3238()
{
  result = qword_27F248A88;
  if (!qword_27F248A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A90, &qword_24FA0C7F8);
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent, &unk_24FA0C850);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent, &unk_24FA0C800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A88);
  }

  return result;
}

uint64_t sub_24F5A33A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupContentView.TextStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5A3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F5A3500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A35B0(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F5A3688(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F5A3758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5A3808(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F5A3970(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F215E08, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_24F5A39D4(319, &qword_27F2340A0, sub_24E62C088, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F5A3970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F5A39D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_24F9237E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24F5A3A48()
{
  result = qword_27F248B28;
  if (!qword_27F248B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248AA0, &qword_24FA0C8A8);
    sub_24E602068(&qword_27F248B30, &qword_27F248B38, qword_24FA0C9E0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248B28);
  }

  return result;
}

unint64_t sub_24F5A3B04()
{
  result = qword_27F248B40;
  if (!qword_27F248B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248AE0, &qword_24FA0C968);
    sub_24E602068(&qword_27F248B48, &qword_27F248AD0, &qword_24FA0C958, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248B40);
  }

  return result;
}

double sub_24F5A3C10(uint64_t a1)
{
  *(a1 + 352) = 0;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F5A3C80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24F5A3CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24F5A3D84()
{
  result = qword_27F248BE0;
  if (!qword_27F248BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BE8, &unk_24FA0CCC0);
    sub_24EB8F770();
    sub_24E602068(&qword_27F248BF0, &qword_27F248B58, &unk_24FA0CB70, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248BE0);
  }

  return result;
}

uint64_t sub_24F5A3EC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F5A3F40()
{
  result = qword_27F248C18;
  if (!qword_27F248C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BC8, &unk_24FA0CC68);
    sub_24F5A3FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C18);
  }

  return result;
}

unint64_t sub_24F5A3FCC()
{
  result = qword_27F248C20;
  if (!qword_27F248C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248BC0, &qword_24FA0CC60);
    sub_24EA66BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C20);
  }

  return result;
}

unint64_t sub_24F5A4094()
{
  result = qword_27F248C40;
  if (!qword_27F248C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248C48, &qword_24FA0CDA0);
    sub_24E602068(&qword_27F248C50, &qword_27F248C58, &unk_24FA0CDA8, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8, &qword_24F981230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C40);
  }

  return result;
}

uint64_t sub_24F5A41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GlassBackgroundModifierWithShape(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x25304C420](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_24F5A4374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF0, &qword_24FA0D248);
  MEMORY[0x28223BE20](v5);
  v7 = &v44[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF8, &qword_24FA0D250);
  MEMORY[0x28223BE20](v8);
  v10 = &v44[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D00, &qword_24FA0D258);
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-1] - v12;
  v14 = *(v2 + 40);
  sub_24F5A47C8(a1, v10);
  if (v14 == 1)
  {
    v43 = a2;
    v15 = sub_24F924258();
    v44[3] = v15;
    v44[4] = sub_24F5AB138(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    v17 = *(v2 + 16);
    v18 = *(v15 + 20);
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_24F924B38();
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1 + v18, v19, v20);
    *boxed_opaque_existential_1 = v17;
    boxed_opaque_existential_1[1] = v17;
    sub_24E60169C(v44, v13, &qword_27F248D88, &qword_24FA0D2A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D28, &qword_24FA0D268);
    sub_24E60169C(v10, &v13[v21[9]], &qword_27F248CF8, &qword_24FA0D250);
    v22 = &v13[v21[10]];
    *v22 = sub_24F923398() & 1;
    *(v22 + 1) = v23;
    v22[16] = v24 & 1;
    v25 = &v13[v21[11]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v26 = qword_27F24E488;
    v27 = sub_24F923398();
    v29 = v28;
    v31 = v30;
    v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D18, &qword_24FA0D260) + 36)];
    *v32 = v26;
    v32[8] = v27 & 1;
    *(v32 + 2) = v29;
    v32[24] = v31 & 1;
    v33 = sub_24F923398();
    v35 = v34;
    v37 = v36;
    sub_24E601704(v44, &qword_27F248D88, &qword_24FA0D2A0);
    sub_24E601704(v10, &qword_27F248CF8, &qword_24FA0D250);
    v38 = &v13[*(v11 + 36)];
    *v38 = v33 & 1;
    *(v38 + 1) = v35;
    v38[16] = v37 & 1;
    v39 = &qword_27F248D00;
    v40 = &qword_24FA0D258;
    sub_24E60169C(v13, v7, &qword_27F248D00, &qword_24FA0D258);
    swift_storeEnumTagMultiPayload();
    sub_24F5AAD40();
    sub_24F5AAE84();
    sub_24F924E28();
    v41 = v13;
  }

  else
  {
    v39 = &qword_27F248CF8;
    v40 = &qword_24FA0D250;
    sub_24E60169C(v10, v7, &qword_27F248CF8, &qword_24FA0D250);
    swift_storeEnumTagMultiPayload();
    sub_24F5AAD40();
    sub_24F5AAE84();
    sub_24F924E28();
    v41 = v10;
  }

  return sub_24E601704(v41, v39, v40);
}

uint64_t sub_24F5A47C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D90, &unk_24FA0D2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D40, &qword_24FA0D270);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = sub_24F9257F8();
  v11 = *(v2 + 24);
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D70, &unk_24FA0D288);
  (*(*(v20 - 8) + 16))(v9, a1, v20);
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D60, &qword_24FA0D280) + 36)];
  *v21 = v10;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D50, &qword_24FA0D278) + 36)];
  *v30 = a1;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = *(v2 + 16);
  v32 = &v9[*(v7 + 44)];
  v33 = sub_24F924258();
  v34 = *(v33 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24F924B38();
  v37 = *(*(v36 - 8) + 104);
  v37(&v32[v34], v35, v36);
  *v32 = v31;
  *(v32 + 1) = v31;
  v38 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  sub_24E60169C(v2 + v38, &v32[*(v39 + 36)], &qword_27F21C920, &unk_24FA2EBB0);
  *&v32[*(v39 + 40)] = v11;
  LODWORD(v32) = *(v2 + 41);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246370, &qword_24FA02430);
  v41 = v40;
  if (v32 == 1)
  {
    v42 = v54;
    v43 = &v54[*(v40 + 36)];
    v37(&v43[*(v33 + 20)], v35, v36);
    *v43 = v31;
    *(v43 + 1) = v31;
    KeyPath = swift_getKeyPath();
    v45 = 0;
    *v42 = KeyPath;
    *(v42 + 8) = 0;
  }

  else
  {
    v45 = 1;
    v42 = v54;
  }

  (*(*(v41 - 8) + 56))(v42, v45, 1, v41);
  v46 = sub_24F927618();
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248CF8, &qword_24FA0D250);
  v50 = v55;
  v51 = v55 + *(v49 + 36);
  sub_24E6009C8(v42, v51, &qword_27F248D90, &unk_24FA0D2D0);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248D80, &qword_24FA0D298) + 36));
  *v52 = v46;
  v52[1] = v48;
  return sub_24E6009C8(v9, v50, &qword_27F248D40, &qword_24FA0D270);
}

uint64_t sub_24F5A4B98()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000012;
    if (v1 != 4)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0x746E656964617267;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD00000000000001DLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F5A4CB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5AAA8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5A4CDC(uint64_t a1)
{
  v2 = sub_24F5A50BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5A4D18(uint64_t a1)
{
  v2 = sub_24F5A50BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientBackground.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248C70, &qword_24FA0CDF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5A50BC();
  sub_24F92D128();
  v11[31] = 0;
  type metadata accessor for JSColor(0);
  sub_24F5AB138(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for GradientBackground(0);
    v11[30] = 1;
    sub_24F92CCF8();
    v11[29] = 2;
    sub_24F9289E8();
    sub_24F5AB138(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v11[28] = 3;
    sub_24F92CCB8();
    v11[27] = *(v3 + v9[8]);
    v11[26] = 4;
    sub_24F5A5130();
    sub_24F92CD48();
    v11[25] = *(v3 + v9[9]);
    v11[24] = 5;
    sub_24F92CD48();
    v11[15] = *(v3 + v9[10]);
    v11[14] = 6;
    sub_24F5A5184();
    sub_24F92CD48();
    v11[13] = 7;
    sub_24F92CD28();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F5A50BC()
{
  result = qword_27F248C78;
  if (!qword_27F248C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C78);
  }

  return result;
}

unint64_t sub_24F5A5130()
{
  result = qword_27F248C80;
  if (!qword_27F248C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C80);
  }

  return result;
}

unint64_t sub_24F5A5184()
{
  result = qword_27F248C88;
  if (!qword_27F248C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C88);
  }

  return result;
}

uint64_t GradientBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248C90, &qword_24FA0CDF8);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for GradientBackground(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24F5A50BC();
  v17 = v35;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v30 = v5;
  v35 = v15;
  type metadata accessor for JSColor(0);
  v47 = 0;
  sub_24F5AB138(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
  v18 = v32;
  v19 = v33;
  sub_24F92CC18();
  v20 = v18;
  v21 = v35;
  sub_24E6009C8(v20, v35, &qword_27F21C728, &unk_24F956450);
  v46 = 1;
  sub_24F92CC18();
  v22 = v13;
  sub_24E6009C8(v8, v21 + *(v13 + 20), &qword_27F21C728, &unk_24F956450);
  sub_24F9289E8();
  v45 = 2;
  sub_24F5AB138(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v23 = v30;
  sub_24F92CC18();
  sub_24E6009C8(v23, v21 + *(v13 + 24), &qword_27F213FB0, &qword_24F93E6B0);
  v44 = 3;
  v24 = sub_24F92CBD8();
  v25 = v34;
  *(v21 + v22[7]) = v24;
  v42 = 4;
  sub_24F5A5858();
  sub_24F92CC68();
  *(v21 + v22[8]) = v43;
  v40 = 5;
  sub_24F92CC68();
  *(v21 + v22[9]) = v41;
  v38 = 6;
  sub_24F5A58AC();
  sub_24F92CC68();
  *(v21 + v22[10]) = v39;
  v37 = 7;
  sub_24F92CC48();
  v27 = v26;
  (*(v25 + 8))(0, v19);
  *(v21 + v22[11]) = v27;
  sub_24F5A5900(v21, v31);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_24F5ABDDC(v21, type metadata accessor for GradientBackground);
}

unint64_t sub_24F5A5858()
{
  result = qword_27F248C98;
  if (!qword_27F248C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248C98);
  }

  return result;
}

unint64_t sub_24F5A58AC()
{
  result = qword_27F248CA0;
  if (!qword_27F248CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CA0);
  }

  return result;
}

uint64_t sub_24F5A5900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GameStoreKit::GradientPoint_optional __swiftcall GradientPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GradientPoint.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x654C6D6F74746F62;
    v7 = 0x6D6F74746F62;
    if (v1 != 8)
    {
      v7 = 0x72546D6F74746F62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x7265746E6563;
    if (v1 != 5)
    {
      v8 = 0x676E696C69617274;
    }

    if (*v0 <= 6u)
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
    v2 = 1869768058;
    v3 = 7368564;
    v4 = 0x6C69617254706F74;
    if (v1 != 3)
    {
      v4 = 0x676E696461656CLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x696461654C706F74;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F5A5B44()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F204854(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F5A5B94()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F204854(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F5A5BE4@<X0>(uint64_t *a1@<X8>)
{
  result = GradientPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::GradientUseCase_optional __swiftcall GradientUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t GradientUseCase.rawValue.getter()
{
  if (*v0)
  {
    return 0x42646574736F7266;
  }

  else
  {
    return 0x6F7247726F6C6F63;
  }
}

unint64_t sub_24F5A5D74()
{
  result = qword_27F248CA8;
  if (!qword_27F248CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CA8);
  }

  return result;
}

uint64_t sub_24F5A5DC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x42646574736F7266;
  }

  else
  {
    v3 = 0x6F7247726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xEF6B636972427075;
  }

  else
  {
    v4 = 0xEC0000006B636972;
  }

  if (*a2)
  {
    v5 = 0x42646574736F7266;
  }

  else
  {
    v5 = 0x6F7247726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xEC0000006B636972;
  }

  else
  {
    v6 = 0xEF6B636972427075;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t sub_24F5A5E88()
{
  result = qword_27F248CB0;
  if (!qword_27F248CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248CB0);
  }

  return result;
}

uint64_t sub_24F5A5EDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}