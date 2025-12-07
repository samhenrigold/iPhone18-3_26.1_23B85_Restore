void sub_1C4BDBA48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1C44735D4(*a2, v5, *(a3 + 64));
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_1C4461BB8(0, &qword_1EDDDBB00, 0x1E69A9EA8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F01C68();
    if (v10)
    {
      v11 = v10;

      v12 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v24 = *a1;
      sub_1C466299C();

      *a1 = v24;
      return;
    }

    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v20 = sub_1C4F01CE8();

    if (!os_log_type_enabled(v14, v20))
    {

      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    v23 = sub_1C441D828(v8, v9, &v24);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1C43F8000, v14, v20, "CoreMLTransformerView: Mapped input feature name %s could not be parsed into a Feature Key", v21, 0xCu);
    sub_1C440962C(v22);
    MEMORY[0x1C6942830](v22, -1, -1);
    v18 = v21;
  }

  else
  {
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_14;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1C441D828(v4, v5, &v24);
    _os_log_impl(&dword_1C43F8000, v14, v15, "CoreMLTransformerView: Input feature name %s has no mapping in the config", v16, 0xCu);
    sub_1C440962C(v17);
    MEMORY[0x1C6942830](v17, -1, -1);
    v18 = v16;
  }

  MEMORY[0x1C6942830](v18, -1, -1);
LABEL_14:
}

uint64_t sub_1C4BDBD4C()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_config);

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CoreMLTransformerView_artifactsURL;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C4BDBE10()
{
  sub_1C4BDBD4C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreMLTransformerView(uint64_t a1)
{
  result = qword_1EC0C4838;
  if (!qword_1EC0C4838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BDBEBC(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EF98F8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C4BDBFF0()
{
  sub_1C4BDA978();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BDC068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4BDC0D8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4848, &qword_1C4F5C068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C4BDC140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C459D8F0(0, v1, 0);
    v3 = v45;
    v6 = sub_1C4702074(v2);
    v7 = 0;
    v8 = v2 + 64;
    v33 = v2 + 72;
    v34 = v1;
    v35 = v2 + 64;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v36 = v5;
        v37 = v7;
        v38 = v4;
        sub_1C4609884(*(v2 + 56) + 48 * v6, v41);
        v10 = v42;
        v11 = v2;
        v12 = v44;
        sub_1C4409678(v41, v42);
        v13 = (*(v12 + 8))(v10, v12);
        v39 = v14;
        v40 = v13;
        v15 = v42;
        v16 = v43;
        sub_1C4409678(v41, v42);
        v17 = (*(v16 + 8))(v15, v16);
        v19 = v18;
        sub_1C440962C(v41);
        v45 = v3;
        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C459D8F0(v20 > 1, v21 + 1, 1);
          v3 = v45;
        }

        *(v3 + 16) = v21 + 1;
        v22 = (v3 + 32 * v21);
        v22[4] = v40;
        v22[5] = v39;
        v22[6] = v17;
        v22[7] = v19;
        v23 = 1 << *(v11 + 32);
        if (v6 >= v23)
        {
          goto LABEL_26;
        }

        v8 = v35;
        v24 = *(v35 + 8 * v9);
        if ((v24 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        v2 = v11;
        if (*(v11 + 36) != v38)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v6 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v26 = v34;
        }

        else
        {
          v27 = v3;
          v28 = v9 << 6;
          v29 = v9 + 1;
          v26 = v34;
          v30 = (v33 + 8 * v9);
          while (v29 < (v23 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1C440951C(v6, v38, v36 & 1);
              v23 = __clz(__rbit64(v31)) + v28;
              goto LABEL_18;
            }
          }

          sub_1C440951C(v6, v38, v36 & 1);
LABEL_18:
          v3 = v27;
        }

        v7 = v37 + 1;
        if (v37 + 1 == v26)
        {
          return;
        }

        v5 = 0;
        v4 = *(v2 + 36);
        v6 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

unint64_t sub_1C4BDC410(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
    sub_1C43FBD18(v5);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1C4BDC4C0()
{
  sub_1C441131C();
  switch(v0)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 12:
      return;
    case 3:
    case 4:
    case 8:
    case 13:
    case 14:
    case 16:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
      sub_1C442D5D8();
      break;
    case 5:
      sub_1C43FF748();
      break;
    case 11:
      sub_1C4430254();
      break;
    default:
      sub_1C43FE984();
      break;
  }
}

uint64_t sub_1C4BDC858(uint64_t a1, uint64_t a2)
{
  sub_1C43FE984();
  v5 = v3 == 0xD000000000000014 && v4 == a2;
  if (v5 || (v6 = v3, (sub_1C44205B0(v3, v4) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v8 = sub_1C441131C();
    v10 = v6 == v8 && a2 == v9;
    if (v10 || (sub_1C43FEC00(v8, v9) & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_1C43FE984();
      v12 = v6 == 0xD000000000000017 && v11 == a2;
      if (v12 || (sub_1C43FEC00(0xD000000000000017, v11) & 1) != 0)
      {

        return 4;
      }

      else
      {
        v13 = v6 == 0x614D656C646E6148 && a2 == 0xED00007765695670;
        if (v13 || (sub_1C43FEC00(0x614D656C646E6148, 0xED00007765695670) & 1) != 0)
        {

          return 2;
        }

        else
        {
          sub_1C43FE984();
          v15 = v6 == 0xD00000000000001BLL && v14 == a2;
          if (v15 || (sub_1C43FEC00(0xD00000000000001BLL, v14) & 1) != 0)
          {

            return 3;
          }

          else
          {
            v16 = sub_1C43FF748();
            v18 = v6 == v16 && a2 == v17;
            if (v18 || (sub_1C43FEC00(v16, v17) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v19 = v6 == 0x656D67655353544BLL && a2 == 0xEE0077656956746ELL;
              if (v19 || (sub_1C43FEC00(0x656D67655353544BLL, 0xEE0077656956746ELL) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v20 = v6 == 0x6E6564614353544BLL && a2 == 0xEE00776569566563;
                if (v20 || (sub_1C43FEC00(0x6E6564614353544BLL, 0xEE00776569566563) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  sub_1C442D5D8();
                  v23 = v22 + 2;
                  v24 = v6 == v22 + 2 && v21 == a2;
                  if (v24 || (sub_1C43FEC00(v22 + 2, v21) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v25 = sub_1C4430254();
                    v27 = v6 == v25 && a2 == v26;
                    if (v27 || (sub_1C43FEC00(v25, v26) & 1) != 0)
                    {

                      return 11;
                    }

                    else
                    {
                      v28 = v6 == 0x6E6576456566694CLL && a2 == 0xED00007765695674;
                      if (v28 || (sub_1C43FEC00(0x6E6576456566694CLL, 0xED00007765695674) & 1) != 0)
                      {

                        return 12;
                      }

                      else
                      {
                        sub_1C442D5D8();
                        v31 = v6 == v30 - 4 && v29 == a2;
                        if (v31 || (sub_1C43FEC00(v30 - 4, v29) & 1) != 0)
                        {

                          return 13;
                        }

                        else
                        {
                          sub_1C43FE984();
                          v33 = v6 == 0xD00000000000001BLL && v32 == a2;
                          if (v33 || (sub_1C44061F8(), (sub_1C43FEC00(v34 + 7, v35) & 1) != 0))
                          {

                            return 14;
                          }

                          else
                          {
                            sub_1C4407E68();
                            v38 = v5 && v37 == a2;
                            if (v38 || (sub_1C44205B0(v36, v37) & 1) != 0)
                            {

                              return 15;
                            }

                            else
                            {
                              sub_1C442D5D8();
                              v41 = v6 == v40 + 12 && v39 == a2;
                              if (v41 || (sub_1C43FEC00(v40 + 12, v39) & 1) != 0)
                              {

                                return 16;
                              }

                              else
                              {
                                sub_1C442D5D8();
                                v44 = v43 + 10;
                                v45 = v6 == v43 + 10 && v42 == a2;
                                if (v45 || (sub_1C43FEC00(v43 + 10, v42) & 1) != 0)
                                {

                                  return 17;
                                }

                                else
                                {
                                  sub_1C442D5D8();
                                  v48 = v47 + 11;
                                  v49 = v6 == v47 + 11 && v46 == a2;
                                  if (v49 || (sub_1C43FEC00(v47 + 11, v46) & 1) != 0)
                                  {

                                    return 18;
                                  }

                                  else
                                  {
                                    sub_1C43FE984();
                                    v51 = v6 == v44 && v50 == a2;
                                    if (v51 || (sub_1C44061F8(), (sub_1C43FEC00(v52 + 10, v53) & 1) != 0))
                                    {

                                      return 10;
                                    }

                                    else
                                    {
                                      sub_1C4407E68();
                                      v56 = v5 && v55 == a2;
                                      if (v56 || (sub_1C44205B0(v54, v55) & 1) != 0)
                                      {

                                        return 9;
                                      }

                                      else
                                      {
                                        sub_1C442D5D8();
                                        v59 = v6 == v58 + 1 && v57 == a2;
                                        if (v59 || (sub_1C43FEC00(v58 + 1, v57) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          sub_1C43FE984();
                                          v61 = v6 == 0xD00000000000001BLL && v60 == a2;
                                          if (v61 || (sub_1C44061F8(), (sub_1C43FEC00(v62 + 7, v63) & 1) != 0))
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            sub_1C442D5D8();
                                            v66 = v6 == v65 + 5 && v64 == a2;
                                            if (v66 || (sub_1C43FEC00(v65 + 5, v64) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              sub_1C442D5D8();
                                              v69 = v6 == v68 + 8 && v67 == a2;
                                              if (v69 || (sub_1C43FEC00(v68 + 8, v67) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                sub_1C442D5D8();
                                                v72 = v6 == v71 + 16 && v70 == a2;
                                                if (v72 || (sub_1C43FEC00(v71 + 16, v70) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  sub_1C442D5D8();
                                                  v75 = v6 == v74 + 6 && v73 == a2;
                                                  if (v75 || (sub_1C43FEC00(v74 + 6, v73) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    sub_1C4407E68();
                                                    v78 = v5 && v77 == a2;
                                                    if (v78 || (sub_1C44205B0(v76, v77) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      sub_1C4407E68();
                                                      v81 = v5 && v80 == a2;
                                                      if (v81 || (sub_1C44205B0(v79, v80) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        sub_1C43FE984();
                                                        v83 = v6 == v23 && v82 == a2;
                                                        if (v83 || (sub_1C44061F8(), (sub_1C43FEC00(v84 + 2, v85) & 1) != 0))
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          sub_1C442D5D8();
                                                          v88 = v6 == v87 - 3 && v86 == a2;
                                                          if (v88 || (sub_1C43FEC00(v87 - 3, v86) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            sub_1C43FE984();
                                                            if (v6 == v48 && v89 == a2)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              sub_1C44061F8();
                                                              v93 = sub_1C43FEC00(v91 + 11, v92);

                                                              if (v93)
                                                              {
                                                                return 29;
                                                              }

                                                              else
                                                              {
                                                                return 30;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4BDCECC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v115 = a3;
  v116 = a2;
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  v113 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v111 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v112 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v110 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v109 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v107 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v108 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v106 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v105 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v105 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v105 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v105 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v105 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v105 - v42;
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v44 = v117;
  v45 = sub_1C44E7FAC();
  if (!v44)
  {
    switch(v116)
    {
      case 1:
        v74 = &_s27SiriRemembersViewGenerationVN;
        goto LABEL_37;
      case 2:
        v74 = &_s20HandleViewGenerationVN;
        goto LABEL_37;
      case 3:
        v74 = &_s41DefaultResolverInteractionsViewGenerationVN;
        goto LABEL_37;
      case 4:
        v61 = sub_1C43FDFE4();
        sub_1C44098F0(v61, v43);
        v62 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v62);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v43);
        v52 = &_s37EntityImportanceSignalsViewGenerationVN;
        v53 = &off_1F4402320;
        goto LABEL_38;
      case 5:
        v74 = &_s29SportsSchedulesViewGenerationVN;
        goto LABEL_37;
      case 6:
        v46 = &_s32KTSSegmentViewGenerationProviderVN;
        v47 = &off_1F44046A0;
        goto LABEL_27;
      case 7:
        v46 = &_s32KTSCadenceViewGenerationProviderVN;
        v47 = &off_1F4403D28;
        goto LABEL_27;
      case 8:
        v87 = sub_1C43FDFE4();
        sub_1C44098F0(v87, v40);
        v88 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v88);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v40);
        v52 = &_s32AppleMusicEventMapViewGenerationVN;
        v53 = &off_1F44014C8;
        goto LABEL_38;
      case 9:
        v65 = *(v45 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v66 = v45;
        v67 = v108;
        sub_1C44098F0(a1, v108);
        v68 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v68);
        v69 = v65;
        v97 = GraphStore.init(config:)(v67);
        v98 = v115;
        v115[3] = &_s37ContextualEventsViewGeneratorProviderVN;
        v98[4] = &off_1F4401A30;
        swift_unownedRetain();

        *v98 = v66;
        v98[1] = v69;
        v98[2] = v97;
        return;
      case 10:
        v82 = *(v45 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
        v83 = v45;
        v84 = v106;
        sub_1C44098F0(a1, v106);
        v85 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v85);
        v86 = v82;
        v101 = GraphStore.init(config:)(v84);
        v102 = v115;
        v115[3] = &_s47EntityInteractionHistogramViewGeneratorProviderVN;
        v102[4] = &off_1F44023D8;
        v103 = swift_allocObject();
        *v102 = v103;
        swift_unownedRetain();

        v103[2] = v83;
        v103[3] = v86;
        v103[4] = v101;
        v103[5] = &unk_1F43DA960;
        return;
      case 11:
        v58 = v45;
        sub_1C44098F0(a1, v37);
        v59 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v59);
        sub_1C440B51C();
        v60 = GraphStore.init(config:)(v37);
        v96 = v115;
        v115[3] = &_s22LanguageViewGenerationVN;
        v96[4] = &off_1F4404770;
        *v96 = v58;
        v96[1] = v60;
        return;
      case 12:
        v63 = sub_1C43FDFE4();
        sub_1C44098F0(v63, v34);
        v64 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v64);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v34);
        v52 = &_s23LifeEventViewGenerationVN;
        v53 = &off_1F4404840;
        goto LABEL_38;
      case 13:
        v79 = v45;
        sub_1C44098F0(a1, v31);
        v80 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v80);
        sub_1C440B51C();
        v99 = GraphStore.init(config:)(v31);
        v100 = v115;
        v115[3] = &_s29K2TLifeEventMapViewGenerationVN;
        v100[4] = &off_1F4403BA0;
        swift_unownedRetain();

        *v100 = v79;
        v100[1] = v99;
        return;
      case 14:
        v56 = sub_1C43FDFE4();
        sub_1C44098F0(v56, v28);
        v57 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v57);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v28);
        v52 = &_s37K2TSemanticEntitySearchViewGenerationVN;
        v53 = &off_1F4403C88;
        goto LABEL_38;
      case 15:
        v74 = &_s30PhotosAutonamingViewGenerationVN;
        goto LABEL_37;
      case 16:
        v54 = sub_1C43FDFE4();
        sub_1C44098F0(v54, v25);
        v55 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v55);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v25);
        v52 = &_s42RepresentationLearningSubsetViewGenerationVN;
        v53 = &off_1F44052A8;
        goto LABEL_38;
      case 17:
        sub_1C44338E8(&_s25ScoredTopicViewGenerationVN);

        *v37 = v28;
        v37[8] = 0;
        return;
      case 18:
        sub_1C44338E8(&_s25ScoredTopicViewGenerationVN);

        *v37 = v28;
        v37[8] = 1;
        return;
      case 19:
        v92 = sub_1C43FDFE4();
        v93 = v107;
        sub_1C44098F0(v92, v107);
        v94 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v94);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v93);
        v52 = &_s38MUIDIdentifierMapViewGeneratorProviderVN;
        v53 = &off_1F44049D0;
        goto LABEL_38;
      case 20:
        v31 = v45;
        type metadata accessor for GlobalKnowledgeStore(0);
        v75 = v111;
        sub_1C44098F0(a1, v111);
        v51 = sub_1C48300AC(v75);
        v52 = &_s48PeopleRelationshipAliasViewViewGeneratorProviderVN;
        v53 = &off_1F4404CF8;
        goto LABEL_38;
      case 21:
        v76 = sub_1C43FDFE4();
        v77 = v109;
        sub_1C44098F0(v76, v109);
        v78 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v78);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v77);
        v52 = &_s42PHPersonIdentifierMapViewGeneratorProviderVN;
        v53 = &off_1F4405128;
        goto LABEL_38;
      case 22:
        v89 = sub_1C43FDFE4();
        v90 = v110;
        sub_1C44098F0(v89, v110);
        v91 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v91);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v90);
        v52 = &_s38EntityRelevanceInferenceViewGenerationVN;
        v53 = &off_1F4402B58;
        goto LABEL_38;
      case 23:
        v74 = &_s46EntityRelevanceHistoricalFeatureViewGenerationVN;
        goto LABEL_37;
      case 24:
        v71 = sub_1C43FDFE4();
        v72 = v112;
        sub_1C44098F0(v71, v112);
        v73 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v73);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v72);
        v52 = &_s36EntityTaggingInferenceViewGenerationVN;
        v53 = &off_1F4402E40;
        goto LABEL_38;
      case 25:
        v31 = v45;
        type metadata accessor for GlobalKnowledgeStore(0);
        v70 = v113;
        sub_1C44098F0(a1, v113);
        v51 = sub_1C48300AC(v70);
        v52 = &_s41SourceConfidenceViewViewGeneratorProviderVN;
        v53 = &off_1F4405850;
        goto LABEL_38;
      case 26:
        v74 = &_s38SyncedStreamTestViewGenerationProviderVN;
        goto LABEL_37;
      case 27:
        v48 = sub_1C43FDFE4();
        v49 = v114;
        sub_1C44098F0(v48, v114);
        v50 = type metadata accessor for GraphStore(0);
        sub_1C44099C4(v50);
        sub_1C440B51C();
        v51 = GraphStore.init(config:)(v49);
        v52 = &_s43AddressContactResolverViewGeneratorProviderVN;
        v53 = &off_1F44013F8;
LABEL_38:
        v104 = v115;
        v115[3] = v52;
        v104[4] = v53;
        swift_unownedRetain();

        *v104 = v31;
        v104[1] = v51;
        break;
      case 28:
        v74 = &_s31PreprocessObjectsViewGenerationVN;
LABEL_37:
        sub_1C44338E8(v74);

        *v37 = v28;
        break;
      case 29:
        v95 = v115;
        v115[3] = &_s39InitializeGlobalKnowledgeAssetsProviderVN;
        v95[4] = &off_1F4403AB8;

        break;
      default:
        v46 = &_s34WalletOrderExtractedViewGenerationVN;
        v47 = &off_1F44069E8;
LABEL_27:
        v81 = v115;
        v115[3] = v46;
        v81[4] = v47;
        *v81 = v45;
        break;
    }
  }
}

uint64_t sub_1C4BDD960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4BDC858(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C4BDD990(void *a1@<X8>)
{
  sub_1C4BDC4C0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C4BDD9CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  v5 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v5);
  *(v4 + 80) = swift_task_alloc();
  v6 = _s10ViewConfigVMa(0);
  sub_1C43FBD18(v6);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BDDA88, 0, 0);
}

uint64_t sub_1C4BDDA88()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 72) + 16);
  swift_unownedRetainStrong();

  sub_1C443A738(v2, v1, v4, v5, v6, v7, v8, v9);
  v10 = *(v0 + 88);

  v11 = *(v10 + 136);
  if (v11 == 30)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    sub_1C450B034();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0xD000000000000017;
    *(v15 + 24) = 0x80000001C4FB8D70;
    *(v15 + 32) = v28;
    *(v15 + 48) = v29;
    *(v15 + 64) = 3;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C443C0C8(v12, _s10ViewConfigVMa);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v16 = *(v0 + 80);
    swift_unownedRetainStrong();
    sub_1C44098F0(v3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v16);

    sub_1C4BDCECC(v16, v11, (v0 + 16));
    sub_1C4413970();
    sub_1C443C0C8(v19, v20);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v21);
    v27 = (*(v22 + 8) + **(v22 + 8));
    v23 = swift_task_alloc();
    *(v0 + 96) = v23;
    *v23 = v0;
    v23[1] = sub_1C4BDDD60;
    v24 = *(v0 + 128);
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);

    return v27(v26, v25, v24, v21, v22);
  }
}

uint64_t sub_1C4BDDD60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_1C4BDDF1C;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_1C4BDDE94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4BDDE94()
{
  v1 = v0[11];
  sub_1C4407E80();
  sub_1C443C0C8(v1, v2);
  sub_1C440962C(v0 + 2);

  v3 = v0[1];
  v5 = v0[14];
  v4 = v0[15];

  return v3(v4, v5);
}

uint64_t sub_1C4BDDF1C()
{
  sub_1C4407E80();
  sub_1C443C0C8(v1, v2);
  sub_1C440962C((v0 + 16));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C4BDDF9C()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t _s14CustomViewTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C4BDE0D8()
{
  result = qword_1EDDF6D48[0];
  if (!qword_1EDDF6D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF6D48);
  }

  return result;
}

uint64_t sub_1C4BDE12C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C44502B8;

  return sub_1C4BDD9CC(a1, a2, a3);
}

uint64_t sub_1C4BDE1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C48684D8(&v128);
  if (!*(&v129[0] + 1))
  {
    sub_1C4420C3C(&v128, &qword_1EC0C4868, &qword_1C4F5E220);
    if (qword_1EDDFECD0 == -1)
    {
LABEL_23:
      v41 = sub_1C4F00978();
      sub_1C442B738(v41, qword_1EDE2DF70);
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v43))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v44, v45, "Error: No dependency tables specified");
        sub_1C43FE9D4();
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_67:
    sub_1C44066DC(&qword_1EDDFECD0);
    goto LABEL_23;
  }

  v101 = a3;
  v102 = a4;
  sub_1C460986C(&v128, &v131);
  sub_1C4409678(&v131, v132);
  v7 = sub_1C4402B58();
  v99 = v8(v7);
  v100 = v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v130 = MEMORY[0x1E69E7CC0];
    sub_1C459DBF8(0, v10, 0);
    v12 = v130;
    v15 = sub_1C4703354();
    v16 = 0;
    v17 = a1 + 64;
    v105 = v13;
    v106 = v10;
    v104 = a1 + 72;
    v107 = a1 + 64;
    v108 = a1;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_56;
      }

      if (*(a1 + 36) != v13)
      {
        goto LABEL_57;
      }

      v112 = v16;
      v114 = v13;
      v110 = v14;
      v19 = (*(a1 + 48) + 16 * v15);
      v21 = *v19;
      v20 = v19[1];
      sub_1C4609884(*(a1 + 56) + 48 * v15, v129);
      v124[0] = v21;
      v124[1] = v20;
      sub_1C460986C(v129, &v125);
      sub_1C4BDF610(v124, &v121);
      v116 = v122;
      v118 = v121;
      v22 = v126;
      v23 = v127;
      sub_1C4409678(&v125, v126);
      v24 = v12;
      v25 = *(v23 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = v25(v22, v23);
      v12 = v24;
      v27 = v26;
      v29 = v28;
      sub_1C440962C(v123);
      sub_1C4420C3C(v124, &qword_1EC0C4870, &unk_1C4F5C210);
      v130 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C459DBF8(v30 > 1, v31 + 1, 1);
        v12 = v130;
      }

      *(v12 + 16) = v31 + 1;
      v32 = (v12 + 32 * v31);
      v32[4] = v118;
      v32[5] = v116;
      v32[6] = v27;
      v32[7] = v29;
      a1 = v108;
      v33 = 1 << *(v108 + 32);
      if (v15 >= v33)
      {
        goto LABEL_58;
      }

      v17 = v107;
      v34 = *(v107 + 8 * v18);
      if ((v34 & (1 << v15)) == 0)
      {
        goto LABEL_59;
      }

      if (*(v108 + 36) != v114)
      {
        goto LABEL_60;
      }

      v35 = v34 & (-2 << (v15 & 0x3F));
      if (v35)
      {
        v33 = __clz(__rbit64(v35)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v18 << 6;
        v37 = v18 + 1;
        v38 = (v104 + 8 * v18);
        while (v37 < (v33 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_1C440951C(v15, v114, v110 & 1);
            v33 = __clz(__rbit64(v39)) + v36;
            goto LABEL_20;
          }
        }

        sub_1C440951C(v15, v114, v110 & 1);
      }

LABEL_20:
      v14 = 0;
      v16 = v112 + 1;
      v15 = v33;
      v13 = v105;
      if (v112 + 1 == v106)
      {
        v11 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_26:
  v47 = sub_1C4BA0370();
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FB8A00);
  v48 = *(v47 + 16);
  if (v48)
  {
    v121 = v11;
    sub_1C44CD9C0(0, v48, 0);
    v49 = v121;
    v52 = sub_1C4703354();
    v53 = 0;
    v54 = v47 + 64;
    v111 = v50;
    v113 = v48;
    v109 = v47 + 72;
    v115 = v47 + 64;
    while ((v52 & 0x8000000000000000) == 0 && v52 < 1 << *(v47 + 32))
    {
      v55 = v52 >> 6;
      if ((*(v54 + 8 * (v52 >> 6)) & (1 << v52)) == 0)
      {
        goto LABEL_62;
      }

      if (*(v47 + 36) != v50)
      {
        goto LABEL_63;
      }

      v119 = v50;
      v117 = v51;
      v56 = (*(v47 + 56) + 16 * v52);
      v57 = v47;
      v58 = *v56;
      v59 = v56[1];
      v124[0] = 0;
      v124[1] = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C43FCA20();
      v124[0] = v60;
      v124[1] = 0xEE00204D4F524620;
      MEMORY[0x1C6940010](v58, v59);

      v61 = v124[0];
      v62 = v124[1];
      v63 = v49;
      v121 = v49;
      v64 = *(v49 + 16);
      v65 = *(v63 + 24);
      if (v64 >= v65 >> 1)
      {
        sub_1C44CD9C0(v65 > 1, v64 + 1, 1);
        v63 = v121;
      }

      *(v63 + 16) = v64 + 1;
      v66 = v63 + 16 * v64;
      *(v66 + 32) = v61;
      *(v66 + 40) = v62;
      v67 = 1 << *(v57 + 32);
      if (v52 >= v67)
      {
        goto LABEL_64;
      }

      v54 = v115;
      v68 = *(v115 + 8 * v55);
      if ((v68 & (1 << v52)) == 0)
      {
        goto LABEL_65;
      }

      v47 = v57;
      v49 = v63;
      if (*(v57 + 36) != v119)
      {
        goto LABEL_66;
      }

      v69 = v68 & (-2 << (v52 & 0x3F));
      if (v69)
      {
        v67 = __clz(__rbit64(v69)) | v52 & 0x7FFFFFFFFFFFFFC0;
        v70 = v113;
      }

      else
      {
        v71 = v55 << 6;
        v72 = v55 + 1;
        v73 = (v109 + 8 * v55);
        v70 = v113;
        while (v72 < (v67 + 63) >> 6)
        {
          v75 = *v73++;
          v74 = v75;
          v71 += 64;
          ++v72;
          if (v75)
          {
            sub_1C440951C(v52, v119, v117 & 1);
            v67 = __clz(__rbit64(v74)) + v71;
            goto LABEL_44;
          }
        }

        sub_1C440951C(v52, v119, v117 & 1);
      }

LABEL_44:
      v51 = 0;
      ++v53;
      v52 = v67;
      v50 = v111;
      if (v53 == v70)
      {

        v76 = v49;
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v124[0] = v76;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4432C38(&qword_1EDDFCED0);
  v77 = sub_1C4F01048();
  v79 = v78;

  MEMORY[0x1C6940010](v77, v79);

  MEMORY[0x1C6940010](0xD00000000000002ELL, 0x80000001C4FB8A20);
  MEMORY[0x1C6940010](v99, v100);

  sub_1C43FE984();
  MEMORY[0x1C6940010](0xD000000000000013);
  v80 = *(&v128 + 1);
  v81 = v128;
  v82 = *(a2 + 16);
  v83 = MEMORY[0x1E69E7CC0];
  if (v82)
  {
    v120 = v128;
    *&v128 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v82, 0);
    v83 = v128;
    v84 = *(v128 + 16);
    v85 = 16 * v84;
    do
    {
      *&v128 = v83;
      v86 = *(v83 + 24);
      v87 = v84 + 1;
      if (v84 >= v86 >> 1)
      {
        sub_1C44CD9C0(v86 > 1, v84 + 1, 1);
        v83 = v128;
      }

      *(v83 + 16) = v87;
      v88 = v83 + v85;
      *(v88 + 32) = 63;
      *(v88 + 40) = 0xE100000000000000;
      v85 += 16;
      v84 = v87;
      --v82;
    }

    while (v82);
    v81 = v120;
  }

  *&v128 = v83;
  v89 = sub_1C4F01048();
  v91 = v90;

  *&v128 = v81;
  *(&v128 + 1) = v80;
  strcpy(v124, "$SUBJECT_IDS");
  BYTE5(v124[1]) = 0;
  HIWORD(v124[1]) = -5120;
  v121 = v89;
  v122 = v91;
  sub_1C4415EA8();
  v92 = sub_1C4F02008();
  v94 = v93;

  v95 = v132;
  v96 = v133;
  sub_1C4409678(&v131, v132);
  v97 = (*(v96 + 24))(v95, v96);
  v46 = (*(v102 + 16))(v92, v94, v97, a2, v101);

  sub_1C440962C(&v131);
  return v46;
}

uint64_t sub_1C4BDEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  sub_1C4BDC140(a1);
  v14 = v13[2];
  if (v14)
  {
    v82 = a5;
    v87 = v13[4];
    v85 = v13;
    v86 = v13[6];
    v80 = a7;
    v81 = v13[2];
    v88 = v13[7];
    v89 = v13[5];
    v79 = a6;
    v78 = a2;
    if (v14 == 1)
    {
      v15 = qword_1EDDFECD0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v15 != -1)
      {
        sub_1C44066DC(&qword_1EDDFECD0);
      }

      v16 = sub_1C4F00978();
      sub_1C442B738(v16, qword_1EDE2DF70);
      a5 = sub_1C4F00968();
      v17 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v17))
      {
        *swift_slowAlloc() = 0;
        sub_1C440BAE8(&dword_1C43F8000, v18, v19, "RowJoinTransformView: Join View given single dependency table, please consider using CustomSQLRowView or ObjectSQLRowView");
        sub_1C43FE9D4();
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v26 = 1 << *(v12 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v12 + 64);
    v29 = (v26 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
LABEL_21:
      while (1)
      {
        sub_1C4609884(*(v12 + 56) + 48 * (__clz(__rbit64(v28)) | (v30 << 6)), &v92);
        sub_1C4409678(&v92, v94);
        v33 = sub_1C4402B58();
        v35 = v34(v33);
        v36 = *(v35 + 16);
        v37 = v31;
        a5 = *(v31 + 16);
        v38 = &a5[v36];
        if (__OFADD__(a5, v36))
        {
          break;
        }

        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v39;
        if (!isUniquelyReferenced_nonNull_native || v38 > *(v39 + 24) >> 1)
        {
          if (a5 <= v38)
          {
            v42 = &a5[v36];
          }

          else
          {
            v42 = a5;
          }

          sub_1C458BA48(isUniquelyReferenced_nonNull_native, v42, 1, v39);
          v41 = v43;
        }

        if (*(v35 + 16))
        {
          a5 = *(v41 + 16);
          v7 = (*(v41 + 24) >> 1) - a5;
          v44 = v41;
          type metadata accessor for ViewDatabaseArtifact.Property(0);
          if (v7 < v36)
          {
            goto LABEL_63;
          }

          v7 = v44;
          swift_arrayInitWithCopy();

          if (v36)
          {
            v45 = *(v44 + 16);
            v46 = __OFADD__(v45, v36);
            v47 = v45 + v36;
            if (v46)
            {
              goto LABEL_64;
            }

            *(v44 + 16) = v47;
          }
        }

        else
        {
          v7 = v41;

          if (v36)
          {
            goto LABEL_62;
          }
        }

        v28 &= v28 - 1;
        sub_1C440962C(&v92);
        v31 = v7;
        if (!v28)
        {
          goto LABEL_17;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    else
    {
      while (1)
      {
LABEL_17:
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v32 >= v29)
        {
          break;
        }

        v28 = *(v12 + 64 + 8 * v32);
        ++v30;
        if (v28)
        {
          v30 = v32;
          goto LABEL_21;
        }
      }

      v77 = v31;

      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1C4F02248();
      sub_1C43FE984();
      MEMORY[0x1C6940010](0xD000000000000022);
      sub_1C4499338(1uLL, v81, v85);
      a5 = v48;
      v12 = v49;
      v51 = v50;
      sub_1C4F02248();

      sub_1C43FCA20();
      v90 = v52;
      MEMORY[0x1C6940010](v87, v89);
      v30 = v51 >> 1;
      if (v82)
      {
        v53 = 1413891404;
      }

      else
      {
        v53 = 0x52454E4E49;
      }

      if (v82)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v54 = &a5[32 * v12 + 16];
      v55 = v88;
      while (v30 != v12)
      {
        if (v12 >= v30)
        {
          goto LABEL_60;
        }

        ++v12;
        v57 = *v54;
        v56 = *(v54 + 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F02248();

        MEMORY[0x1C6940010](v53, v7);

        MEMORY[0x1C6940010](0x204E494F4A20, 0xE600000000000000);
        v58 = sub_1C4402B58();
        MEMORY[0x1C6940010](v58);
        MEMORY[0x1C6940010](542002976, 0xE400000000000000);
        v59 = sub_1C4402B58();
        MEMORY[0x1C6940010](v59);
        MEMORY[0x1C6940010](46, 0xE100000000000000);
        v60 = v57;
        v55 = v88;
        MEMORY[0x1C6940010](v60, v56);
        MEMORY[0x1C6940010](540884256, 0xE400000000000000);
        MEMORY[0x1C6940010](v87, v89);
        MEMORY[0x1C6940010](46, 0xE100000000000000);
        MEMORY[0x1C6940010](v86, v88);
        a5 = 0xE100000000000000;
        MEMORY[0x1C6940010](32, 0xE100000000000000);

        v54 += 32;
      }

      swift_unknownObjectRelease();

      MEMORY[0x1C6940010](v90, 0xEE00204D4F524620);

      MEMORY[0x1C6940010](0xD000000000000036, 0x80000001C4FB89C0);
      if (a4)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v55 = a4;
        v30 = v78;
        v12 = v79;
        v61 = a3;
      }

      else
      {
        v61 = v86;
        v30 = v78;
        v12 = v79;
      }

      MEMORY[0x1C6940010](v61, v55);

      MEMORY[0x1C6940010](0x28204E4920, 0xE500000000000000);
      v62 = *(v30 + 16);
      if (v62)
      {
        v91 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v62, 0);
        v63 = *(v91 + 16);
        v64 = 16 * v63;
        do
        {
          v65 = *(v91 + 24);
          v66 = v63 + 1;
          if (v63 >= v65 >> 1)
          {
            sub_1C44CD9C0(v65 > 1, v63 + 1, 1);
          }

          *(v91 + 16) = v66;
          v67 = v91 + v64;
          *(v67 + 32) = 63;
          *(v67 + 40) = 0xE100000000000000;
          v64 += 16;
          v63 = v66;
          --v62;
        }

        while (v62);
      }

      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4432C38(&qword_1EDDFCED0);
      v68 = sub_1C4F01048();
      v70 = v69;

      MEMORY[0x1C6940010](v68, v70);

      MEMORY[0x1C6940010](41, 0xE100000000000000);
      v7 = v92;
      a5 = v93;
      if (qword_1EDDFECD0 != -1)
      {
        goto LABEL_65;
      }
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CC8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v92 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_1C441D828(v7, a5, &v92);
      _os_log_impl(&dword_1C43F8000, v72, v73, "Query: %s", v74, 0xCu);
      sub_1C440962C(v75);
      MEMORY[0x1C6942830](v75, -1, -1);
      MEMORY[0x1C6942830](v74, -1, -1);
    }

    v25 = (*(v80 + 16))(v7, a5, v77, v30, v12);
  }

  else
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DF70);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v22))
    {
      *swift_slowAlloc() = 0;
      sub_1C440BAE8(&dword_1C43F8000, v23, v24, "Error: No dependency tables specified");
      sub_1C43FE9D4();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

uint64_t sub_1C4BDF3EC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_1C4609884(*(a3 + 56) + 48 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C4BDF444(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 64) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) == v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C4BDF4BC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (sub_1C442DF94(), v7 ^ v8 | v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v5 + 8 * (a1 >> 6) + 64) >> a1) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v5 + 36) != v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v5 + 56);
  sub_1C4EF9DD8();
  sub_1C43FBCE0();
  v12 = *(v11 + 16);
  v13 = v9 + *(v11 + 72) * a1;

  v12(a2, v13, v10);
}

void sub_1C4BDF568(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 64) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) == v2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

LABEL_8:
  __break(1u);
}

void sub_1C4BDF5BC(uint64_t a1)
{
  if (a1 < 0 || (sub_1C442DF94(), v5 ^ v6 | v4))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(v3 + 8 * (v1 >> 6) + 64) >> v1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 36) != v2)
  {
LABEL_8:
    __break(1u);
  }
}

uint64_t sub_1C4BDF610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4870, &unk_1C4F5C210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4BDF680()
{
  result = qword_1EDDFF3A0;
  if (!qword_1EDDFF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3A0);
  }

  return result;
}

uint64_t sub_1C4BDF6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v28 = a1;
  v5 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v32[6] = a3;
  v25 = v3;
  v31[3] = sub_1C4EFBD38();
  v31[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v31);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v32[3] = sub_1C4EFB298();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
  sub_1C4BE2F48();
  sub_1C4F01458();
  sub_1C440962C(v31);
  v16 = v26;
  sub_1C4EFBCD8();
  (*(v27 + 8))(v11, v16);
  sub_1C440962C(v32);
  v17 = v29;
  sub_1C4EFB898();
  result = (*(v13 + 8))(v15, v12);
  if (!v17)
  {
    sub_1C4BC76D8();
    sub_1C4EFBE98();

    v19 = v30;
    result = sub_1C4428DA0(v30);
    v20 = result;
    v21 = 0;
    v28 = v19 & 0xFFFFFFFFFFFFFF8;
    v29 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v20 == v21)
      {
      }

      if (v29)
      {
        result = MEMORY[0x1C6940F90](v21, v19);
      }

      else
      {
        if (v21 >= *(v28 + 16))
        {
          goto LABEL_13;
        }
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v32[0] = sub_1C4EFBBD8();
      v32[1] = v22;
      v32[2] = v23;
      sub_1C456902C(&qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4401CBC(&qword_1EDDDB828, &qword_1EC0C4878, &qword_1C4F5C358, MEMORY[0x1E69E6CC8]);
      sub_1C4EFB798();
      v24 = sub_1C4EFB768();
      sub_1C440BAA8(v7, 0, 1, v24);
      sub_1C4EFC0A8();
      sub_1C4AE5118(v7);

      ++v21;
      v19 = v30;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1C4BDFB60()
{
  sub_1C43FE96C();
  v29 = v1;
  v30 = v2;
  v28 = v3;
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v26 = v7;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v25 = v0;
  v31[3] = sub_1C4EFBD38();
  v31[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v31);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v32[3] = sub_1C4EFB298();
  v32[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v32);
  sub_1C456902C(&qword_1EC0BB250, &unk_1C4F1E7D0);
  sub_1C4401CBC(&qword_1EDDFA5B0, &qword_1EC0BB250, &unk_1C4F1E7D0, MEMORY[0x1E69E6328]);
  sub_1C4BE2F48();
  sub_1C4F01458();
  sub_1C440962C(v31);
  v17 = v26;
  sub_1C4EFBCD8();
  (*(v27 + 8))(v10, v17);
  sub_1C440962C(v32);
  v18 = v29;
  sub_1C4EFB898();
  (*(v13 + 8))(v16, v11);
  if (v18)
  {
LABEL_11:
    sub_1C43FBC80();
  }

  else
  {
    sub_1C4BC77A4();
    sub_1C4EFBE98();

    v19 = v30;
    v20 = sub_1C4428DA0(v30);
    v21 = 0;
    v28 = v19 & 0xFFFFFFFFFFFFFF8;
    v29 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v20 == v21)
      {

        goto LABEL_11;
      }

      if (v29)
      {
        MEMORY[0x1C6940F90](v21, v19);
      }

      else
      {
        if (v21 >= *(v28 + 16))
        {
          goto LABEL_13;
        }
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v32[0] = sub_1C4EFBBD8();
      v32[1] = v22;
      v32[2] = v23;
      sub_1C456902C(&qword_1EC0C4878, &qword_1C4F5C358);
      sub_1C4401CBC(&qword_1EDDDB828, &qword_1EC0C4878, &qword_1C4F5C358, MEMORY[0x1E69E6CC8]);
      sub_1C4EFB798();
      v24 = sub_1C4EFB768();
      sub_1C440BAA8(v6, 0, 1, v24);
      sub_1C4EFC0A8();
      sub_1C4AE5118(v6);

      ++v21;
      v19 = v30;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1C4BDFFC4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for CustomRowDatabaseTable;
  a1[4] = &off_1F43E71A0;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  return sub_1C46A9810(__dst, &v5);
}

uint64_t sub_1C4BE0084()
{

  sub_1C446C37C(sub_1C4BE2FA0, v0);
}

void sub_1C4BE00E4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = a2[22];
    if (v4)
    {
      v5 = a2[21];
      _s23UpdatedObjectDiffWriterCMa();
      v7 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4BE0210(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v84 = a4;
  v85 = a5;
  v82 = a2;
  v83 = a3;
  v87 = a1;
  sub_1C4F00908();
  sub_1C43FCDF8();
  v77[1] = v6;
  v77[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v77[0] = v7;
  v8 = sub_1C4F008B8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v90 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v77 - v16;
  v91 = sub_1C4F008F8();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v89 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v77 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v77 - v26;
  v28 = sub_1C4F00978();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v77 - v35;
  sub_1C4EFD618();
  sub_1C43FCDF8();
  v79 = v38;
  v80 = v37;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v88 = v39;
  sub_1C4C674A0();
  v81 = v40;
  v82 = v41;
  v83 = v42;
  sub_1C4F00188();
  v84 = v30;
  v85 = v28;
  (*(v30 + 16))(v33, v36, v28);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v43 = sub_1C4F008D8();
  v44 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v45 = swift_slowAlloc();
    v78 = v19;
    v46 = v10;
    v47 = v8;
    v48 = v45;
    *v45 = 0;
    v49 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v43, v44, v49, "CustomSQLRowView.performUpdate.loadRows", "", v48, 2u);
    v8 = v47;
    v10 = v46;
    v19 = v78;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v50);
  }

  (*(v10 + 16))(v86, v17, v8);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C4F00938();
  v51 = v91;
  (*(v19 + 2))(v24, v27, v91);
  v52 = v17;
  v53 = v88;
  sub_1C4EFD5E8();
  v54 = *(v10 + 8);
  v86 = (v10 + 8);
  v78 = v54;
  v54(v52, v8);
  v55 = *(v19 + 1);
  v55(v27, v51);
  (*(v84 + 8))(v36, v85);
  v56 = *(v87 + 24);
  v57 = *(v87 + 32);
  sub_1C4409678(v87, v56);
  v58 = (*(v57 + 24))(v81, v83, v82, v56, v57);

  sub_1C4EFD5C8();
  v87 = sub_1C4EFD5F8();
  v59 = v8;
  v61 = v60;
  v62 = sub_1C4EFD608();
  v63 = sub_1C4F008D8();
  sub_1C4F00928();
  LODWORD(v85) = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v65 = v63;
  v83 = v55;
  v84 = v59;
  if ((v61 & 1) == 0)
  {
    v66 = v87;
    if (v87)
    {
      v67 = v62;
LABEL_11:

      sub_1C4F00958();
      v87 = v67;

      v68 = sub_1C43FBC98();
      if (v69(v68) == *MEMORY[0x1E69E93E8])
      {
        v70 = "[Error] Interval already ended";
      }

      else
      {
        v71 = sub_1C43FBC98();
        v72(v71);
        v70 = "";
      }

      v63 = v65;
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v65, v85, v74, v66, v70, v73, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v75);
      v55 = v83;
      v59 = v84;
      v53 = v88;
LABEL_15:

      v78(v90, v59);
      v76 = sub_1C43FBC98();
      (v55)(v76);
      (*(v79 + 8))(v53, v80);
      return v58;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v87))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v87 & 0xFFFFF800) != 0xD800)
  {
    v67 = v62;
    if (v87 >> 16 <= 0x10)
    {
      v66 = &v92;
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1C4BE0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v117 = v21;
  v24 = v20;
  v128 = v25;
  v127 = v26;
  v126 = v27;
  v29 = v28;
  v114 = sub_1C4F00908();
  sub_1C43FCDF8();
  v113 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v32);
  v132 = sub_1C4F008B8();
  sub_1C43FCDF8();
  v131 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2C8(&v111 - v37);
  v130 = sub_1C4F008F8();
  sub_1C43FCDF8();
  v137 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2C8(&v111 - v42);
  v134 = sub_1C4F00978();
  sub_1C43FCDF8();
  v133 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v111 - v46;
  v116 = sub_1C4EFD618();
  sub_1C43FCDF8();
  v115 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD2D8();
  v136 = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = v29;

  v124 = v29;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F00188();
  v52 = sub_1C440F54C(&unk_1F4401DD8);
  *(v52 + 16) = 34;
  v53 = sub_1C440F54C(&unk_1F4401E00);
  *(v53 + 16) = 8;
  sub_1C44042C4();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1C4BE1C28;
  *(v54 + 24) = v24;
  v125 = v24;
  sub_1C44042C4();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1C4AD71F0;
  *(v55 + 24) = v54;
  v56 = sub_1C440F54C(&unk_1F4401E78);
  *(v56 + 16) = 2;
  v57 = sub_1C440F54C(&unk_1F4401EA0);
  *(v57 + 16) = 8;
  sub_1C44042C4();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1C4A9493C;
  *(v58 + 24) = v51;
  sub_1C44042C4();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1C4A94948;
  *(v59 + 24) = v58;
  v120 = sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v52;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v53;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v55;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v56;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v57;
  *(inited + 112) = sub_1C4716C58;
  *(inited + 120) = v59;
  v61 = *(v133 + 16);
  v121 = v47;
  v61(v118, v47, v134);
  sub_1C4F008C8();
  sub_1C4F008D8();
  v62 = v119;
  sub_1C4F00898();
  v63 = sub_1C4F008D8();
  v64 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = 0;
    v139 = 0;
    v138 = v66;
    *v65 = 514;
    v140[0] = v65 + 2;
    v68 = v131;
    while (v67 != 96)
    {
      v69 = *(inited + v67 + 32);

      v69(v140, &v139, &v138);

      v67 += 16;
    }

    v71 = v62;
    v72 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v63, v64, v72, "CustomSQLRowView.performUpdate", "viewName=%{public}s, subjectIds=%{public}ld", v65, 0x16u);
    sub_1C440962C(v66);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v70 = v130;
  }

  else
  {

    v68 = v131;
    v70 = v130;
    v71 = v62;
  }

  v73 = v132;
  (*(v68 + 16))(v123, v71, v132);
  sub_1C4F00948();
  swift_allocObject();
  sub_1C4F00938();
  v74 = v137;
  v75 = v135;
  (*(v137 + 16))(v122, v135, v70);
  sub_1C4EFD5E8();
  v122 = *(v68 + 8);
  v122(v71, v73);
  v123 = *(v74 + 8);
  v137 = v74 + 8;
  v123(v75, v70);
  (*(v133 + 8))(v121, v134);
  v76 = v125;
  v77 = v124;
  v78 = sub_1C4BE0210((v125 + 56), *(v125 + 40), *(v125 + 48), *(v125 + 32), v124);
  MEMORY[0x1EEE9AC00](v78);
  *(&v111 - 6) = v76;
  *(&v111 - 5) = v79;
  v80 = v126;
  *(&v111 - 4) = v77;
  *(&v111 - 3) = v80;
  *(&v111 - 2) = v127;
  *(&v111 - 8) = v128 & 1;

  sub_1C49A56B8();
  v134 = v81;
  v133 = v82;
  v128 = v83;

  v84 = swift_allocObject();
  *(v84 + 16) = v78;
  v85 = sub_1C440F54C(&unk_1F4401F40);
  *(v85 + 16) = 2;
  v86 = sub_1C440F54C(&unk_1F4401F68);
  *(v86 + 16) = 8;
  sub_1C44042C4();
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1C4BE2F40;
  *(v87 + 24) = v84;
  sub_1C44042C4();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1C4A95948;
  *(v88 + 24) = v87;
  v89 = swift_initStackObject();
  *(v89 + 16) = xmmword_1C4F0C890;
  *(v89 + 32) = sub_1C44549F4;
  *(v89 + 40) = v85;
  *(v89 + 48) = sub_1C44549F4;
  *(v89 + 56) = v86;
  *(v89 + 64) = sub_1C4A95928;
  *(v89 + 72) = v88;
  sub_1C4EFD5C8();
  v135 = sub_1C4EFD5F8();
  v91 = v90;
  v92 = v68 + 8;
  sub_1C4EFD608();
  v93 = sub_1C4F008D8();
  v94 = v129;
  sub_1C4F00928();
  v95 = sub_1C4F01E18();
  if ((sub_1C4F01F28() & 1) == 0)
  {

    v122(v94, v132);
    v100 = sub_1C4412758();
    v101(v100);
    (*(v115 + 8))(v136, v116);
LABEL_23:
    sub_1C43FBC80();
    return;
  }

  LODWORD(v127) = v95;
  v131 = v92;
  if ((v91 & 1) == 0)
  {
    v96 = v136;
    if (v135)
    {
      v97 = v114;
      v98 = v113;
      v99 = v112;
LABEL_16:

      sub_1C4F00958();

      if ((*(v98 + 88))(v99, v97) == *MEMORY[0x1E69E93E8])
      {
        v102 = 0;
        v103 = "[Error] Interval already ended";
      }

      else
      {
        (*(v98 + 8))(v99, v97);
        v103 = "rows=%{public}ld";
        v102 = 1;
      }

      v104 = swift_slowAlloc();
      v105 = 0;
      v139 = 0;
      v138 = 0;
      *v104 = 0;
      v104[1] = v102;
      v140[0] = v104 + 2;
      while (v105 != 48)
      {
        v106 = *(v89 + v105 + 32);

        v106(v140, &v139, &v138);

        v105 += 16;
      }

      v107 = v129;
      v108 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v93, v127, v108, v135, v103, v104, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v122(v107, v132);
      v109 = sub_1C4412758();
      v110(v109);
      (*(v115 + 8))(v96, v116);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  v96 = v136;
  if (HIDWORD(v135))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v135 & 0xFFFFF800) != 0xD800)
  {
    v97 = v114;
    v98 = v113;
    v99 = v112;
    if (v135 >> 16 <= 0x10)
    {
      v135 = &a10;
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1C4BE15E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C4BE1614(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, unint64_t, uint64_t)@<X5>, int a7@<W6>, void *a8@<X8>)
{
  LODWORD(v49) = a7;
  v51 = a6;
  v50 = a5;
  v48 = a8;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4BDF6D4(a1, a3, a4);
  if (!v8)
  {
    v46 = a4;
    v54 = v16;
    v17 = a2[22];
    if (v17)
    {
      v53 = v14;
      v52 = v13;
      v18 = a2[26];
      v19 = a2[27];
      v20 = a2[24];
      v21 = a2[25];
      v22 = a2[23];
      v23 = a2[21];
      v56[5] = v23;
      v56[6] = v17;
      v56[7] = v22;
      v56[8] = v20;
      v56[9] = v21;
      v56[10] = v18;
      v56[11] = v19;
      _s23UpdatedObjectDiffWriterCMa();
      v47 = swift_allocObject();
      sub_1C4BC3C1C(v23, v17);

      sub_1C4B8B458();
      v25 = 0;
      v26 = v46;
      v27 = *(v46 + 16);
      v28 = v52;
      if (v27)
      {
        v49 = 0;
        v58 = MEMORY[0x1E69E7CC0];
        v47 = v24;

        sub_1C44CD9C0(0, v27, 0);
        v29 = v58;
        v51 = *(v53 + 16);
        v30 = v26 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v50 = *(v53 + 72);
        v53 += 16;
        v31 = (v53 - 8);
        v32 = v54;
        do
        {
          v51(v32, v30, v28);
          v55 = sub_1C4EFF0A8();
          v33 = sub_1C4F02858();
          v32 = v54;
          v34 = v33;
          v36 = v35;
          (*v31)(v54, v28);
          v58 = v29;
          v38 = *(v29 + 16);
          v37 = *(v29 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1C44CD9C0(v37 > 1, v38 + 1, 1);
            v32 = v54;
            v29 = v58;
          }

          *(v29 + 16) = v38 + 1;
          v39 = v29 + 16 * v38;
          *(v39 + 32) = v34;
          *(v39 + 40) = v36;
          v30 += v50;
          --v27;
          v28 = v52;
        }

        while (v27);
        v41 = v48;
        v25 = v49;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
        v41 = v48;
      }

      v56[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v56[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
      v56[0] = v29;
      sub_1C4B8C0BC();

      if (v25)
      {

        sub_1C440962C(v56);
      }

      else
      {
        sub_1C440962C(v56);

        sub_1C4B8BB5C();
        v43 = v42;
        v45 = v44;

        *v41 = v43;
        v41[1] = v45;
        *(v41 + 16) = 0;
      }
    }

    else
    {
      v40 = v48;
      *v48 = 0;
      v40[1] = 0;
      *(v40 + 16) = 1;
    }
  }
}

uint64_t sub_1C4BE1AB0()
{

  sub_1C440962C((v0 + 56));
  memcpy(v2, (v0 + 96), sizeof(v2));
  sub_1C4BCDE54(v2);
  return v0;
}

uint64_t sub_1C4BE1B08()
{
  sub_1C4BE1AB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE1B60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4BE1B78(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C4BE1BB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C4BE1C30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[9];
    if (v11)
    {
      v12 = a3[14];
      v13 = a3[12];
      v27 = a3[11];
      v14 = a3[10];
      v15 = a3[8];
      v16 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v16 = v12;
      }

      v23 = v16;
      *&v25 = v15;
      *(&v25 + 1) = v11;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      a4[3] = &type metadata for CustomRowDatabaseTable;
      a4[4] = &off_1F43E71A0;
      v17 = swift_allocObject();
      *a4 = v17;
      *(v17 + 16) = v10;
      *(v17 + 24) = v15;
      *(v17 + 32) = v11;
      *(v17 + 40) = v14;
      *(v17 + 48) = v27;
      *(v17 + 56) = v13;
      *(v17 + 64) = v23;
      *(v17 + 72) = v25;
    }

    else
    {
      v18 = sub_1C440B538();
      v19 = sub_1C43FFB2C(&unk_1F44064D8, v18);
      *v20 = a1;
      v20[1] = a2;
      sub_1C440B528(v19, v20);
      sub_1C4411340(v24, v26, v21, v22);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4BE1D98()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v61 = 0;
  v62 = 0;
  sub_1C44E9220();
  if (!v1)
  {
    v9 = v3[9];
    if (!v9)
    {
      v35 = sub_1C440B538();
      v36 = sub_1C43FFB2C(&unk_1F44064D8, v35);
      *v37 = v7;
      v37[1] = v5;
      sub_1C440B528(v36, v37);
      sub_1C4411340(v60[0], v60[1], v38, v39);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_2;
    }

    v52 = v0;
    v10 = v3[14];
    v11 = v3[12];
    v57 = v3[11];
    v73 = v8;
    v12 = v3[10];
    v51 = (v3 + 10);
    v13 = v3[8];
    v55 = v13;
    v14 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v14 = v10;
    }

    v56 = v14;
    v58.n128_u64[0] = v13;
    v58.n128_u64[1] = v9;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440E8AC();
    v54 = v9;
    v15 = (v3 + *(_s6ConfigVMa(0) + 52));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    v22 = v15[6];
    v60[0].n128_u64[0] = v73;
    v60[0].n128_u64[1] = v55;
    v60[1].n128_u64[0] = v9;
    v23 = v16;
    v60[1].n128_u64[1] = v12;
    v60[2].n128_u64[0] = v57;
    v60[2].n128_u64[1] = v11;
    v60[3].n128_u64[0] = v56;
    *(&v60[3] + 8) = v58;
    v24 = v17;
    v60[4].n128_u64[1] = v16;
    v60[5].n128_u64[0] = v17;
    v60[5].n128_u64[1] = v18;
    v56 = v19;
    v57 = v18;
    v60[6].n128_u64[0] = v19;
    v60[6].n128_u64[1] = v20;
    v54 = v21;
    v55 = v20;
    v60[7].n128_u64[0] = v21;
    v60[7].n128_u64[1] = v22;
    v53 = v22;
    memcpy(v63, v60, sizeof(v63));
    v25 = v3[9];
    if (!v25)
    {
      v40 = sub_1C450B034();
      v41 = sub_1C43FFB2C(&unk_1F44064D8, v40);
      *v42 = v7;
      v42[1] = v5;
      sub_1C440B528(v41, v42);
      sub_1C4411340(v58, v59, v43, v44);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BC3C1C(v23, v24);
      sub_1C4BCDE54(v60);
      goto LABEL_2;
    }

    v27 = v3[16];
    v26 = v3[17];
    v28 = v3[18];
    v29 = v3[19];
    v30 = v3[20];
    v64[0] = v3[8];
    v64[1] = v25;
    v31 = v51[1];
    v65 = *v51;
    v66 = v31;
    v67 = v51[2];
    v68 = v27;
    v69 = v26;
    v32 = v28;
    v70 = v28;
    v71 = v29;
    v72 = v30;
    sub_1C4BC3C1C(v23, v24);
    if (v26)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C67CE4();
      _s27CustomRowViewClientProviderVMa(0);
      sub_1C4432C64();
      sub_1C4C67D64();
      v27 = v33;
      v46 = v34;

      v26 = v46;
      if (!v29)
      {
        goto LABEL_14;
      }
    }

    else if (!v29)
    {
LABEL_14:
      v48 = 0;
      v45 = v32;
      goto LABEL_15;
    }

    sub_1C4C67CE4();
    _s27CustomRowViewClientProviderVMa(0);
    sub_1C4432C64();
    sub_1C4C67D64();
    v48 = v47;
LABEL_15:
    MEMORY[0x1EEE9AC00](v45);
    v50[2] = v63;
    v50[3] = v64;
    v50[4] = v27;
    v50[5] = v26;
    v50[6] = v49;
    v50[7] = v48;

    sub_1C446C37C(sub_1C4BE3268, v50);
    sub_1C4BCDE54(v60);
  }

LABEL_2:
  sub_1C43FBC80();
}

void sub_1C4BE216C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3[12])
  {
    v13 = a3[12];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  memcpy(__dst, a2, sizeof(__dst));
  v14 = a3[5];
  v15 = a3[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = v14;
  v17 = v28;
  sub_1C46A78E8(a1, v16, v15, a4, a5, a6, a7, v13);

  if (!v17)
  {
    v18 = *(a2 + 80);
    if (v18)
    {
      v19 = *(a2 + 72);
      v20 = *(a2 + 104);
      v25 = *(a2 + 88);
      v26 = v20;
      v27 = *(a2 + 120);
      v23 = v19;
      v24 = v18;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4BE227C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = 0;
  v35 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    v8 = v2[9];
    if (v8)
    {
      v9 = v2[14];
      v10 = v2[12];
      v30 = v2[11];
      v11 = v2[10];
      v12 = v2[8];
      v37 = v7;
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      v33[0].n128_u64[0] = v2[8];
      v33[0].n128_u64[1] = v8;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v32[0] = v37;
      v32[1] = v12;
      v32[2] = v8;
      v32[3] = v11;
      v32[4] = v30;
      v32[5] = v10;
      v32[6] = v13;
      *&v32[7] = v33[0];
      v14 = (v2 + *(_s6ConfigVMa(0) + 52));
      v15 = *v14;
      v28 = v14[1];
      v29 = v15;
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[5];
      v20 = v14[6];
      memcpy(v33, v32, 0x48uLL);
      v33[4].n128_u64[1] = v15;
      v33[5].n128_u64[0] = v28;
      v33[5].n128_u64[1] = v16;
      v33[6].n128_u64[0] = v17;
      v33[6].n128_u64[1] = v18;
      v33[7].n128_u64[0] = v19;
      v33[7].n128_u64[1] = v20;
      v21 = memcpy(v36, v33, 0x80uLL);
      v30 = &v28;
      MEMORY[0x1EEE9AC00](v21);
      v27[2] = v36;
      sub_1C4BC3C1C(v29, v28);
      sub_1C46A9810(v32, &v31);

      sub_1C446C37C(sub_1C4BE324C, v27);
      sub_1C4BCDE54(v33);

      sub_1C4AF99F4(v32);
    }

    else
    {
      v22 = sub_1C440B538();
      v23 = sub_1C43FFB2C(&unk_1F44064D8, v22);
      *v24 = v6;
      v24[1] = v4;
      sub_1C440B528(v23, v24);
      sub_1C4411340(v33[0], v33[1], v25, v26);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  sub_1C43FBC80();
}

void sub_1C4BE24A8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03CE4();
  if (!v2)
  {
    v4 = *(a2 + 88);
    v7[0] = *(a2 + 72);
    v7[1] = v4;
    v7[2] = *(a2 + 104);
    v8 = *(a2 + 120);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 104);
      v11 = *(a2 + 88);
      v12 = v5;
      v13 = *(a2 + 120);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

void sub_1C4BE260C()
{
  sub_1C43FE96C();
  v85 = v2;
  v4 = v3;
  v6 = v5;
  v7 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;

  sub_1C443A738(v6, v4, v11, v12, v13, v14, v15, v16);
  if (v1)
  {
  }

  else
  {
    v78 = v6;
    v80 = v0;

    v17 = *(v9 + 26);
    v79 = v10;
    if (v17)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v18 = _s31CustomSQLViewGenerationProviderVMa(0);
    sub_1C4432C64();
    sub_1C4C67D64();
    v20 = v19;
    v22 = v21;

    sub_1C4C68220();
    v24 = v23;
    v73 = v20;
    *(&v82[1] + 1) = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    *&v82[2] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
    *&v82[0] = v24;
    v25 = sub_1C4C81ADC(v82);
    v69 = v22;
    v70 = v4;
    sub_1C440962C(v82);
    if (*(v9 + 33))
    {
      v26 = *(v9 + 33);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v27 = *(v26 + 16);
    v72 = v18;
    v75 = v25;
    v76 = v9;
    if (v27)
    {
      *&v82[0] = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0(0, v27, 0);
      v28 = *&v82[0];
      v77 = v26;
      v29 = (v26 + 48);
      do
      {
        v30 = *(v29 - 1);
        v31 = *v29;
        *&v82[0] = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v33 >= v32 >> 1)
        {
          sub_1C44CD9C0(v32 > 1, v33 + 1, 1);
          v28 = *&v82[0];
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v29 += 7;
        --v27;
      }

      while (v27);

      v25 = v75;
      v9 = v76;
      v18 = v72;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v35 = sub_1C4499940();
    v36 = v35;
    v37 = v25 + 64;
    v38 = 1 << *(v25 + 32);
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v40 = v39 & *(v25 + 64);
    v74 = (v38 + 63) >> 6;
    v77 = v35 + 56;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = 0;
    v71 = v25 + 64;
LABEL_21:
    v42 = v80;
    if (v40)
    {
LABEL_26:
      v44 = (*(v25 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v40)))));
      v46 = *v44;
      v45 = v44[1];
      if (*(v36 + 16))
      {
        v40 &= v40 - 1;
        v47 = v36;
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v48 = sub_1C4F02B68();
        v49 = ~(-1 << *(v36 + 32));
        while (1)
        {
          v50 = v48 & v49;
          if (((*(v77 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
          {
            break;
          }

          v51 = (*(v36 + 48) + 16 * v50);
          if (*v51 != v46 || v51[1] != v45)
          {
            v36 = v47;
            v53 = sub_1C4F02938();
            v48 = v50 + 1;
            if ((v53 & 1) == 0)
            {
              continue;
            }
          }

          v36 = v47;
          v25 = v75;
          v9 = v76;
          v37 = v71;
          v18 = v72;
          goto LABEL_21;
        }
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      *&v82[0] = 0;
      *(&v82[0] + 1) = 0xE000000000000000;
      v59 = v70;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000040, 0x80000001C4FB8E80);
      MEMORY[0x1C6940010](v46, v45);

      MEMORY[0x1C6940010](41, 0xE100000000000000);
      v60 = v82[0];
      v61 = sub_1C450B034();
      v62 = sub_1C43FFB2C(&unk_1F44064D8, v61);
      *v63 = v78;
      *(v63 + 8) = v59;
      *(v63 + 16) = v60;
      sub_1C4411340(v82[0], v82[1], v62, v63);

      sub_1C445F57C(v76);
    }

    else
    {
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          return;
        }

        if (v43 >= v74)
        {
          break;
        }

        v40 = *(v37 + 8 * v43);
        ++v41;
        if (v40)
        {
          v41 = v43;
          goto LABEL_26;
        }
      }

      if (*(v25 + 16))
      {
        sub_1C4C687F0(v25, v83);
      }

      else
      {
        v58 = *(*(v42 + *(v18 + 28)) + 16);
        v83[3] = type metadata accessor for GraphDatabase(0);
        v83[4] = &off_1F4405C68;
        v83[0] = v58;
      }

      v55 = v69;
      v54 = v70;
      v57 = v78;
      v56 = v79;
      sub_1C4C81AA0(v78, v70, v85 & 1);
      sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
      if (swift_dynamicCast())
      {
        memcpy(v84, v82, sizeof(v84));
        sub_1C442E860(v83, v82);
        v66 = sub_1C4C68B88(v25);

        _s22CustomSQLViewGeneratorCMa();
        v67 = swift_allocObject();
        v67[2] = v57;
        v67[3] = v54;
        sub_1C441D670(v82, (v67 + 7));
        memcpy(v67 + 12, v84, 0x80uLL);
        v67[5] = v73;
        v67[6] = v55;
        v67[4] = v66;
      }

      else
      {

        v64 = sub_1C440B538();
        sub_1C43FFB2C(&unk_1F44064D8, v64);
        *v65 = v57;
        *(v65 + 8) = v54;
        *(v65 + 16) = xmmword_1C4F5B670;
        *(v65 + 32) = 0xD000000000000025;
        *(v65 + 40) = v56;
        *(v65 + 48) = v81;
        *(v65 + 64) = 0;
        swift_willThrow();
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445F57C(v9);
      sub_1C440962C(v83);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4BE2D7C()
{
  sub_1C4BE260C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4BE2E24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4C81AA0(a1, a2, 0);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a3, __src, 0x80uLL);
    }

    else
    {
      v7 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v7);
      *v8 = a1;
      *(v8 + 8) = a2;
      *(v8 + 16) = 0xD000000000000013;
      *(v8 + 24) = 0x80000001C4FB8E60;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      *(v8 + 48) = v9;
      *(v8 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

unint64_t sub_1C4BE2F48()
{
  result = qword_1EDDFCCA0;
  if (!qword_1EDDFCCA0)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCCA0);
  }

  return result;
}

uint64_t sub_1C4BE2FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4880, &unk_1C4F5C360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4BE3074(uint64_t a1)
{
  sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    sub_1C4BE30F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4BE30F8(uint64_t a1)
{
  if (!qword_1EDDFCD88)
  {
    sub_1C4EF98F8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFCD88);
    }
  }
}

void sub_1C4BE3198(uint64_t a1)
{
  type metadata accessor for ViewGeneration.ViewClients(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EF98F8();
    if (v2 <= 0x3F)
    {
      sub_1C4BE30F8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GraphStore(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_1C4BE328C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      swift_unownedRetainStrong();
      sub_1C4C5ACD4(0x656D655269726973, 0xED0000737265626DLL, 0, __src);

      _s40DefaultResolverInteractionsViewGeneratorCMa();
      a4 = swift_allocObject();
      a4[2] = v12;
      a4[3] = v13;
      a4[4] = v14;
      a4[5] = v15;
      memcpy(a4 + 6, __src, 0x58uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4BE344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4BE328C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4BE34F8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1C4F00978();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BE35B8, 0, 0);
}

uint64_t sub_1C4BE35B8(uint64_t a1)
{
  sub_1C4F00178();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "DefaultResolverInteractionsViewGenerator: performUpdate: it is unsupported.", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  sub_1C4D0E51C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1C4BE36C8()
{

  return v0;
}

uint64_t sub_1C4BE3754()
{
  sub_1C4BE36C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE37AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C4BE34F8(a1);
}

uint64_t sub_1C4BE3840()
{

  return v0;
}

uint64_t sub_1C4BE3888()
{
  sub_1C4BE3840();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE38E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4BE391C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_1C4BE3978(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t *a3@<X8>, uint64_t a4)
{
  sub_1C44E9220();
  if (!v4)
  {
    v9 = v8;
    a3[3] = a1;
    a3[4] = a2;
    v10 = swift_allocObject();
    *a3 = v10;
    strcpy((v10 + 16), "interactions");
    *(v10 + 29) = 0;
    *(v10 + 30) = -5120;
    v11 = MEMORY[0x1E69E7CC0];
    *(v10 + 32) = v9;
    *(v10 + 40) = v11;
  }
}

void sub_1C4BE3A20()
{
  sub_1C44E9220();
  if (!v0)
  {
    sub_1C46BB164(0x7463617265746E69, 0xEC000000736E6F69, v1);
  }
}

void sub_1C4BE3AA4()
{
  v8 = 0;
  v9 = 0;
  sub_1C44E9220();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v1);
    strcpy(v4, "interactions");
    v4[13] = 0;
    v5 = -5120;
    v6 = v2;
    v7 = MEMORY[0x1E69E7CC0];
    sub_1C446C37C(sub_1C46BC374, &v3);
  }
}

uint64_t sub_1C4BE3C50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C4BE3CA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1C4EFF0C8() - 8);
    sub_1C4BE46C4(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
}

uint64_t sub_1C4BE3D80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C44205D4(a1, a2, a3, a4, a5, a6, a7, a8, v9[0], v9[1], v9[2], v9[3], v9[4]);
  sub_1C442D5EC();
  sub_1C446C37C(sub_1C4BE51FC, v9);
}

uint64_t sub_1C4BE3DEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C44205D4(a1, a2, a3, a4, a5, a6, a7, a8, v9[0], v9[1], v9[2], v9[3], v9[4]);
  sub_1C442D5EC();
  sub_1C446C37C(sub_1C4BE5194, v9);
}

uint64_t sub_1C4BE3EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  sub_1C4BE2E24(a1, a2, __src);

  if (!v5)
  {
    memcpy(__dst, __src, sizeof(__dst));

    sub_1C46A9810(__dst, &v11);
    sub_1C4BCDE54(__src);
    _s36EntityImportanceSignalsViewGeneratorCMa();
    a4 = swift_allocObject();
    *(a4 + 16) = a5;
    memcpy((a4 + 24), __dst, 0x48uLL);
  }

  return a4;
}

uint64_t sub_1C4BE3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4BE3EB0(a1, a2, 0, *v2, v2[1]);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_1C4BE4034(uint64_t a1)
{
  v2 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v51 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C456902C(&qword_1EC0C4718, &unk_1C4F5B7F0);
  MEMORY[0x1EEE9AC00](v60);
  v8 = v45 - v7;
  v9 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBFDC();
  v62 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v45 - v15;
  v17 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v47 = v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v63 = v45 - v22;
  v23 = 0;
  v24 = a1;
  v61 = *(a1 + 16);
  v57 = v25 + 16;
  v49 = (v4 + 32);
  v53 = (v4 + 8);
  v54 = (v25 + 8);
  v58 = v25;
  v46 = (v25 + 32);
  v26 = MEMORY[0x1E69E7CC0];
  v59 = v27;
  v50 = a1;
LABEL_2:
  v48 = v26;
  while (1)
  {
    v28 = v62;
    if (v61 == v23)
    {
      break;
    }

    v56 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v55 = *(v58 + 72);
    (*(v58 + 16))(v63, v24 + v56 + v55 * v23, v17, v21);
    sub_1C4EFF038();
    sub_1C4EFD4C8();
    sub_1C440BAA8(v13, 0, 1, v2);
    v29 = *(v60 + 48);
    sub_1C44A2E4C(v16, v8);
    sub_1C44A2E4C(v13, &v8[v29]);
    sub_1C440029C(v8);
    if (v30)
    {
      sub_1C4423A0C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C4423A0C(v16, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C440029C(&v8[v29]);
      if (v30)
      {
        sub_1C4423A0C(v8, &qword_1EC0B8568, &unk_1C4F319B0);
        v17 = v59;
LABEL_15:
        v33 = *v46;
        (*v46)(v47, v63, v17);
        v26 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459D178();
          v26 = __dst[0];
        }

        v35 = *(v26 + 16);
        v36 = v35 + 1;
        if (v35 >= *(v26 + 24) >> 1)
        {
          v52 = v35 + 1;
          v48 = v35;
          sub_1C459D178();
          v36 = v52;
          v35 = v48;
          v26 = __dst[0];
        }

        ++v23;
        *(v26 + 16) = v36;
        v33(v26 + v56 + v35 * v55, v47, v17);
        goto LABEL_2;
      }

      goto LABEL_12;
    }

    sub_1C44A2E4C(v8, v28);
    sub_1C440029C(&v8[v29]);
    if (v30)
    {
      sub_1C4423A0C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C4423A0C(v16, &qword_1EC0B8568, &unk_1C4F319B0);
      (*v53)(v28, v2);
LABEL_12:
      sub_1C4423A0C(v8, &qword_1EC0C4718, &unk_1C4F5B7F0);
      v17 = v59;
      goto LABEL_14;
    }

    v31 = v51;
    (*v49)(v51, &v8[v29], v2);
    sub_1C4BE51B4(&qword_1EDDFCCD8, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92E0]);
    LODWORD(v52) = sub_1C4F010B8();
    v32 = *v53;
    (*v53)(v31, v2);
    sub_1C4423A0C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C4423A0C(v16, &qword_1EC0B8568, &unk_1C4F319B0);
    v32(v62, v2);
    v24 = v50;
    sub_1C4423A0C(v8, &qword_1EC0B8568, &unk_1C4F319B0);
    v17 = v59;
    if (v52)
    {
      goto LABEL_15;
    }

LABEL_14:
    (*v54)(v63, v17);
    ++v23;
  }

  v65 = MEMORY[0x1E69E7CC0];
  v37 = v45[1];

  sub_1C4BE3CA8(v48, v37, &v65);

  memcpy(__dst, (v37 + 24), sizeof(__dst));
  sub_1C4BE3DEC(v65, v24, v38, v39, v40, v41, v42, v43);
}

void sub_1C4BE46C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v77 = a3;
  v78 = a1;
  v86 = sub_1C4EFEEF8();
  v90 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v75 - v6;
  v8 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v91 = v75 - v13;
  v93 = *(a2 + 16);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v14 = sub_1C4EFF0C8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0D130;
  v18 = *(v15 + 16);
  v75[1] = v15 + 16;
  v76 = v14;
  v75[0] = v18;
  v18(v17 + v16, v78, v14);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v19 = v90;
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBB8();
  sub_1C4EFE318();
  sub_1C4EFE878();
  v20 = sub_1C4872C50();

  v88 = 0;
  v89 = 0;
  v83 = 0;
  v21 = *(v20 + 16);
  v84 = v20;
  v85 = v21;
  v80 = (v19 + 8);
  v79 = MEMORY[0x1E69E7CC0];
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v23 = v89;
    if (v89 == v85)
    {

      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1C4F13950;
      v64 = v76;
      *(v63 + 56) = v76;
      *(v63 + 64) = sub_1C4BE51B4(&qword_1EDDFA1C8, MEMORY[0x1E69A9810], MEMORY[0x1E69A9808]);
      v65 = sub_1C4422F90((v63 + 32));
      (v75[0])(v65, v78, v64);
      v66 = MEMORY[0x1E69E6370];
      v67 = MEMORY[0x1E69A0150];
      *(v63 + 96) = MEMORY[0x1E69E6370];
      *(v63 + 104) = v67;
      *(v63 + 72) = v83 & 1;
      *(v63 + 136) = v66;
      *(v63 + 144) = v67;
      *(v63 + 112) = v88 & 1;
      *(v63 + 176) = v66;
      *(v63 + 184) = v67;
      *(v63 + 152) = BYTE4(v88) & 1;
      v94 = v79;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v68 = sub_1C4F01048();
      v70 = v69;

      v71 = MEMORY[0x1E69A0138];
      *(v63 + 216) = MEMORY[0x1E69E6158];
      *(v63 + 224) = v71;
      *(v63 + 192) = v68;
      *(v63 + 200) = v70;
      v72 = v77;
      sub_1C4588E94();
      v73 = *(*v72 + 16);
      sub_1C4589A7C();
      v74 = *v72;
      *(v74 + 16) = v73 + 1;
      *(v74 + 8 * v73 + 32) = v63;

      return;
    }

    if (v89 >= v85)
    {
      break;
    }

    v24 = type metadata accessor for GraphTriple(0);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_44;
    }

    v25 = *(*(v24 - 8) + 80);
    v26 = v84 + ((v25 + 32) & ~v25) + *(*(v24 - 8) + 72) * v23;
    v89 = v23 + 1;
    v90 = v24;
    v27 = *(v26 + *(v24 + 36));
    v28 = sub_1C4BE51B4(&qword_1EDDDC168, type metadata accessor for Source, &protocol conformance descriptor for Source);
    v94 = MEMORY[0x1C69407C0](0, v8, v28);
    v29 = 1;
    v30 = &dword_1EDE2D000;
    v93 = v26;
    v31 = v82;
    while (1)
    {
      if (p_info[213] != -1)
      {
        swift_once();
      }

      if (*(v30 + 414) < v29)
      {
        break;
      }

      sub_1C449E530(v29, v7);
      if (sub_1C44157D4(v7, 1, v8) == 1)
      {
        sub_1C4423A0C(v7, &unk_1EC0C0760, &qword_1C4F170D0);
        v32 = __OFADD__(v29++, 1);
        if (v32)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_1C448B210(v7, v31);
        v33 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v32 = __OFADD__(v29++, 1);
        if (v32)
        {
          goto LABEL_42;
        }

        v34 = v33 > 0x40;
        if (v33 >= 0x40)
        {
          v35 = 0;
        }

        else
        {
          v35 = 1 << v33;
        }

        if (v34)
        {
          v35 = 0;
        }

        v36 = v31;
        if ((v35 & v27) >= 1)
        {
          sub_1C448B210(v31, v91);
          v37 = v8;
          v38 = p_info;
          v39 = v92;
          v26 = v93;
          sub_1C483B6F0();
          v30 = &dword_1EDE2D000;
          v36 = v39;
          p_info = v38;
          v8 = v37;
        }

        sub_1C448D818(v36);
      }
    }

    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v8, &unk_1EDDFD088);
    sub_1C4836BF8();
    v40 = v80;
    if (v41)
    {
      v42 = *(v90 + 20);
      v43 = v81;
      sub_1C4EFE318();
      v44 = v26 + v42;
      v45 = v43;
      LODWORD(v43) = sub_1C44DBB50(v44, v43);
      (*v40)(v45, v86);
      v83 |= v43;
    }

    else
    {
      v45 = v81;
    }

    if (qword_1EDDFED38 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v8, qword_1EDDFD0F0);
    sub_1C4836BF8();
    v47 = v46;
    if (qword_1EDDFD218 != -1)
    {
      swift_once();
    }

    HIDWORD(v88) |= v47;
    sub_1C442B738(v8, &qword_1EDDFD220);
    sub_1C4836BF8();
    v49 = v48;

    LODWORD(v88) = v49 | v88;
    v50 = v90;
    v51 = *(v90 + 28);
    sub_1C4EFE878();
    v52 = v93;
    LODWORD(v87) = sub_1C44DBB50(v93 + v51, v45);
    v53 = *v40;
    v54 = v86;
    v53(v45, v86);
    if ((v87 & 1) == 0)
    {
      v87 = *(v50 + 20);
      sub_1C4EFE878();
      LODWORD(v87) = sub_1C44DBB50(v52 + v87, v45);
      v53(v45, v54);
      if ((v87 & 1) == 0)
      {
        continue;
      }
    }

    v55 = sub_1C4F00FF8();
    v57 = v56;
    v58 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v58 = v61;
    }

    v59 = *(v58 + 16);
    if (v59 >= *(v58 + 24) >> 1)
    {
      sub_1C443D664();
      v58 = v62;
    }

    *(v58 + 16) = v59 + 1;
    v79 = v58;
    v60 = v58 + 16 * v59;
    *(v60 + 32) = v55;
    *(v60 + 40) = v57;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1C4BE4FE8()
{

  return v0;
}

uint64_t sub_1C4BE505C()
{
  sub_1C4BE4FE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE51B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4BE522C(uint64_t *a1)
{
  v2 = *(sub_1C4EFFE78() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B048();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C4BE8DAC(v6);
  *a1 = v3;
}

uint64_t sub_1C4BE52D4()
{
  sub_1C43FBCD4();
  *(v0 + 680) = v1;
  *(v0 + 672) = v2;
  *(v0 + 664) = v3;
  *(v0 + 656) = v4;
  *(v0 + 720) = v5;
  *(v0 + 648) = v6;
  *(v0 + 640) = v7;
  type metadata accessor for Configuration(0);
  *(v0 + 688) = sub_1C43FBE7C();
  *(v0 + 696) = _s6ConfigVMa(0);
  *(v0 + 704) = sub_1C43FBE7C();
  _s10ViewConfigVMa(0);
  *(v0 + 712) = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4BE53B4()
{
  v69 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  swift_unownedRetainStrong();

  sub_1C443A738(v2, v1, v3, v4, v5, v6, v7, v8);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);

  sub_1C4438D00(v9);
  memcpy((v0 + 344), (v9 + *(v10 + 64)), 0x58uLL);
  sub_1C4460050(v0 + 344, v0 + 432, &qword_1EC0C4678, &unk_1C4F5C7F0);
  sub_1C4BEB7A0(v9, _s6ConfigVMa);
  v11 = *(v0 + 712);
  if (*(v0 + 352))
  {
    v54 = *(v0 + 352);
    v56 = *(v0 + 344);
    v12 = *(v0 + 720);
    v13 = *(v0 + 648);
    v14 = *(v0 + 640);
    v59 = *(v0 + 656);
    v61 = *(v0 + 672);
    swift_unownedRetainStrong();

    v15 = swift_task_alloc();
    *(v15 + 16) = v59;
    *(v15 + 32) = v61;
    *(v15 + 48) = v11;
    *(v15 + 56) = v14;
    *(v15 + 64) = v13;
    *(v15 + 72) = v12;
    sub_1C4EFFA58();
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);

    v23 = *(*(*(v0 + 48) + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
    v24 = type metadata accessor for BehaviorHistoryUtility(0);
    swift_allocObject();
    swift_retain_n();
    v25 = v22;

    v53 = v24;
    v26 = sub_1C4624330(v21, v25);

    v27 = *(v0 + 672);
    v28 = *(v0 + 664);
    type metadata accessor for InteractionSourceAdapterRegistry();
    v29 = *(v0 + 32);
    v30 = *(v0 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C494D274(v29, v30, v28, v27);
    v32 = v31;

    v33 = v56;
    v60 = objc_autoreleasePoolPush();
    if (v26 && v32)
    {
      v50 = *(v0 + 688);
      v34 = *(v0 + 656);
      v52 = *(v0 + 648);
      v57 = *(v0 + 640);
      sub_1C442E860(v0 + 104, v0 + 264);
      v51 = v30;
      *(v0 + 328) = v53;
      *(v0 + 336) = &off_1F43E41D8;
      *(v0 + 304) = v26;
      *(v0 + 240) = v33;
      *(v0 + 248) = v54;
      *(v0 + 256) = v23;
      *(v0 + 544) = &type metadata for BehaviorDatabaseHistogramManager;
      *(v0 + 552) = &off_1F43E25F0;
      v35 = swift_allocObject();
      *(v0 + 520) = v35;
      sub_1C4BEB830(v0 + 240, v35 + 16);
      v49 = *(v0 + 168);
      v36 = *(v0 + 168);
      v37 = sub_1C4409678((v0 + 144), v36);
      *(v0 + 584) = v49;
      v38 = sub_1C4422F90((v0 + 560));
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      *(v0 + 624) = v53;
      *(v0 + 632) = &off_1F43E41D8;
      *(v0 + 600) = v26;
      swift_unownedRetainStrong();
      sub_1C44098F0(v34 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v50);
      swift_retain_n();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C4F02248();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v67 = v57;
      v68 = v52;
      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
      type metadata accessor for KeyValueStore(0);
      swift_allocObject();
      v42 = KeyValueStore.init(config:domain:)(v50, v57, v52);
      v55 = *(v0 + 680);
      v58 = type metadata accessor for EntityInteractionHistoryIngestor();
      v65 = v53;
      v66 = &off_1F43E41D8;
      v64 = v26;
      sub_1C4BEB88C(v0 + 240);
      *&v62 = v42;
      *(&v62 + 1) = 0xD000000000000023;
      v63 = 0x80000001C4F8DA80;
      v43 = *(v0 + 584);
      v44 = *(v0 + 592);
      v45 = sub_1C4418280(v0 + 560, v43);
      v46 = *(v43 - 8);
      v47 = sub_1C43FBE7C();
      (*(v46 + 16))(v47, v45, v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v48 = sub_1C46E0824(v29, v51, (v0 + 520), v47, (v0 + 600), &v62, v32, v55, v58, v43, v44);
      sub_1C4420C3C(v0 + 344, &qword_1EC0C4678, &unk_1C4F5C7F0);

      sub_1C440962C((v0 + 560));

      v30 = v51;
    }

    else
    {
      sub_1C4420C3C(v0 + 344, &qword_1EC0C4678, &unk_1C4F5C7F0);

      v48 = 0;
    }

    v39 = *(v0 + 712);
    _s39EntityInteractionHistogramViewGeneratorCMa();
    v40 = swift_allocObject();
    v40[2] = v29;
    v40[3] = v30;
    v40[4] = v48;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    objc_autoreleasePoolPop(v60);

    sub_1C4707ED4(v0 + 16);
    sub_1C4BEB7A0(v39, _s10ViewConfigVMa);

    v41 = *(v0 + 8);

    return v41(v40, &off_1F4402330);
  }

  else
  {
    v16 = *(v0 + 648);
    v17 = *(v0 + 640);
    sub_1C450B034();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0xD000000000000023;
    *(v18 + 24) = 0x80000001C4FB91A0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    *(v18 + 48) = v62;
    *(v18 + 64) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4BEB7A0(v11, _s10ViewConfigVMa);

    sub_1C43FBDA0();

    return v19();
  }
}

uint64_t sub_1C4BE5EA4@<X0>(void *a3@<X2>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *x8_0@<X8>, unsigned __int8 a9)
{
  v15 = _s6ConfigVMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  sub_1C4C839B4();

  if (!v10)
  {
    sub_1C456902C(&qword_1EC0C48F0, &qword_1C4F61380);
    _s44EntityInteractionHistogramViewClientProviderCMa();
    if (swift_dynamicCast())
    {
      v20[3] = a9;
      v21 = v23;
      sub_1C4438D00(v17);
      sub_1C4BEBA08(a7, a8, v17, a3, x8_0);
      sub_1C4BEB7A0(v17, _s6ConfigVMa);
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v19 = a7;
      *(v19 + 8) = a8;
      *(v19 + 16) = xmmword_1C4F5B670;
      *(v19 + 32) = 0xD00000000000002CLL;
      *(v19 + 40) = 0x80000001C4FB91D0;
      *(v19 + 48) = v22;
      *(v19 + 64) = 0;
      swift_willThrow();
      return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return result;
}

uint64_t sub_1C4BE6098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4BE616C;

  return sub_1C4BE52D4();
}

uint64_t sub_1C4BE616C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1C4BE626C()
{
  *(v1 + 16) = v0;
  v2 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4BE6294()
{
  if (*(*(v0 + 16) + 32))
  {
    sub_1C46DE0D8();
  }

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4BE66A4(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - v6;
  v8 = sub_1C4EF9CD8();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v61 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v61 - v16;
  v17 = *(v1 + 64);
  v73 = MEMORY[0x1E69E7CC0];
  v18 = sub_1C4428DA0(v17);
  v19 = 0;
  v20 = v17 & 0xC000000000000001;
  while (v18 != v19)
  {
    if (v20)
    {
      MEMORY[0x1C6940F90](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      if (sub_1C44157D4(v2, 1, v20) == 1)
      {
        v14(v70, v20);
        v35 = v2;
        goto LABEL_22;
      }

      v48 = v66;
      v64(v66, v2, v20);
      v62(v7, v48, v20);
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CF8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v14;
        v53 = swift_slowAlloc();
        v73 = v53;
        *v51 = 136315138;
        sub_1C4BEB660(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v54 = sub_1C4F02858();
        v56 = v55;
        v52(v7, v72);
        v57 = sub_1C441D828(v54, v56, &v73);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_1C43F8000, v49, v50, "EntityInteractionHistogramViewGenerator: Last digest date is %s", v51, 0xCu);
        sub_1C440962C(v53);
        v58 = v53;
        v14 = v52;
        MEMORY[0x1C6942830](v58, -1, -1);
        v20 = v72;
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      else
      {

        v14(v7, v20);
      }

      v59 = v70;
      v60 = v66;
      v27 = sub_1C4EF9C18();
      v14(v60, v20);
      v14(v59, v20);
      return v27 & 1;
    }

    v21 = sub_1C4CDF950(0, 1, 0, 1);

    sub_1C49D3B44(v21);
    ++v19;
  }

  v22 = v73;
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v23 = sub_1C4F00978();
  sub_1C442B738(v23, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = *(v22 + 16);

    _os_log_impl(&dword_1C43F8000, v24, v25, "EntityInteractionHistogramViewGenerator: Retrieving graph objects for %ld events", v26, 0xCu);
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  else
  {
  }

  v29 = sub_1C4D20674();
  v30 = *(v22 + 16);

  if (*(v29 + 16) >= v30)
  {
    v34 = sub_1C4BE7A90(v29);

    sub_1C4BE8684(v34, v7);

    v20 = v72;
    if (sub_1C44157D4(v7, 1, v72) != 1)
    {
      v36 = v70;
      v37 = v71;
      v64 = *(v71 + 32);
      v65 = v71 + 32;
      v64(v70, v7, v20);
      v62 = *(v37 + 16);
      v63 = v37 + 16;
      v62(v14, v36, v20);
      v38 = sub_1C4F00968();
      v39 = sub_1C4F01CF8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v73 = v41;
        *v40 = 136315138;
        sub_1C4BEB660(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v42 = sub_1C4F02858();
        v44 = v43;
        v45 = v14;
        v14 = *(v71 + 8);
        v14(v45, v20);
        v46 = sub_1C441D828(v42, v44, &v73);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_1C43F8000, v38, v39, "EntityInteractionHistogramViewGenerator: Earliest date for updated life events is %s", v40, 0xCu);
        sub_1C440962C(v41);
        MEMORY[0x1C6942830](v41, -1, -1);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      else
      {

        v47 = v14;
        v14 = *(v37 + 8);
        v14(v47, v20);
      }

      v2 = v68;
      v7 = v69;
      sub_1C446FB00();
      goto LABEL_29;
    }

    v35 = v7;
LABEL_22:
    sub_1C4420C3C(v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v27 = 0;
    return v27 & 1;
  }

  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C43F8000, v31, v32, "EntityInteractionHistogramViewGenerator: Some subjects couldn't be resolved, therefore a delete occurred", v33, 2u);
    MEMORY[0x1C6942830](v33, -1, -1);
  }

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1C4BE6FE8()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C4EF9CD8();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4BE7094()
{
  sub_1C43FCF70();
  if (sub_1C4BE6414(v0[2]))
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v2 = sub_1C4BE72B4;
LABEL_5:
    v1[1] = v2;

    return sub_1C4BE626C();
  }

  v3 = v0[2];
  if (sub_1C4D0E2C0())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v2 = sub_1C4BE74FC;
    goto LABEL_5;
  }

  sub_1C4432C74();
  if (v3)
  {

    sub_1C4EF9CC8();
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    sub_1C442D60C(v5);

    return sub_1C46DE19C();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DDE0);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CF8();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FBED8(&dword_1C43F8000, v9, v10, "EntityInteractionHistogramViewGenerator: EventSource is nil. Ignoring AllSources and returning");
      sub_1C43FBE2C();
    }

    sub_1C4D0E51C();

    sub_1C43FC1B0();

    return v11();
  }
}

uint64_t sub_1C4BE72B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4BE7398()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  sub_1C4D0E478();
  sub_1C4432C74();
  if (v1)
  {

    sub_1C4EF9CC8();
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    sub_1C442D60C(v2);

    return sub_1C46DE19C();
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FBED8(&dword_1C43F8000, v7, v8, "EntityInteractionHistogramViewGenerator: EventSource is nil. Ignoring AllSources and returning");
      sub_1C43FBE2C();
    }

    sub_1C4D0E51C();

    sub_1C43FC1B0();

    return v9();
  }
}

uint64_t sub_1C4BE74FC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4BE75E0()
{
  sub_1C43FBCD4();
  sub_1C4D0E478();

  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4BE7640(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;
  *v6 = *v2;
  v5[12] = v1;

  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_1C4BE7908;
  }

  else
  {
    v5[13] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_1C4BE77C0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1C4BE77C0()
{
  sub_1C43FCF70();
  if (*(v0 + 72) >> 60 != 15 && *(v0 + 104) < 1)
  {
    sub_1C4D0E51C();
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DDE0);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "EntityInteractionHistogramViewGenerator: No changes since last time. Ignoring all Sources", v5, 2u);
      sub_1C43FBE2C();

      goto LABEL_12;
    }
  }

  else
  {
    sub_1C4D0E5C0();
  }

LABEL_12:

  sub_1C43FC1B0();

  return v6();
}

uint64_t sub_1C4BE7908()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4BE7970()
{

  return v0;
}

uint64_t sub_1C4BE79A8()
{
  sub_1C4BE7970();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4BE7A00()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4BE6FE8();
}

char *sub_1C4BE7A90(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C4890, &qword_1C4F5C710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v86 = (v71 - v3);
  v4 = sub_1C456902C(&qword_1EC0C4888, &unk_1C4F5C700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v71 - v5;
  v94 = sub_1C4EFFE78();
  v75 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v74 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = v71 - v9;
  v81 = sub_1C456902C(&qword_1EC0C4898, &qword_1C4F5C718);
  MEMORY[0x1EEE9AC00](v81);
  v83 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v71 - v12;
  v14 = sub_1C456902C(&qword_1EC0C48A0, &qword_1C4F5C720);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v71 - v15;
  v87 = sub_1C456902C(&qword_1EC0C48A8, &qword_1C4F5C728);
  v73 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v88 = v71 - v17;
  v18 = sub_1C456902C(&qword_1EC0C48B0, &unk_1C4F5C730);
  v77 = *(v18 - 8);
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v82 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v71 - v21;
  v89 = a1;
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0, MEMORY[0x1E69E6328]);
  sub_1C4BEB660(&qword_1EDDFE218, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v23 = sub_1C4F01498();
  v89 = v23;
  v24 = sub_1C456902C(&qword_1EC0C48B8, &qword_1C4F5C740);
  v25 = sub_1C4401CBC(&qword_1EC0C48C0, &qword_1EC0C48B8, &qword_1C4F5C740, MEMORY[0x1E69A99D8]);
  v26 = sub_1C4BEB660(&qword_1EC0C48C8, MEMORY[0x1E69A9C00], MEMORY[0x1E69A9BF8]);
  v27 = sub_1C4BEB6A8();
  v76 = v22;
  v80 = v24;
  v28 = v25;
  v29 = v27;
  v30 = AssociatedConformanceWitness;
  sub_1C4EFFDC8();
  if (v30)
  {

    return v13;
  }

  v71[1] = 0;
  v71[2] = v23;
  (*(v77 + 16))(v82, v76, v78);
  v89 = v80;
  v90 = v94;
  v91 = v28;
  v92 = v26;
  v93 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1C4F01478();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = MEMORY[0x1E69E7CC0];
  v31 = &qword_1EC0C4890;
  v82 = (v75 + 32);
  *&v32 = 138412290;
  v79 = v32;
  v84 = v16;
LABEL_4:
  v33 = v81;
  v34 = v83;
  while (1)
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v16, 1, v33) == 1)
    {
      break;
    }

    v35 = v6;
    v36 = v31;
    sub_1C44CD9E0(v16, v13, &qword_1EC0C4898, &qword_1C4F5C718);
    v37 = v13;
    sub_1C4460050(v13, v34, &qword_1EC0C4898, &qword_1C4F5C718);
    v38 = v86;
    sub_1C44CD9E0(v34 + *(v33 + 48), v86, v31, &qword_1C4F5C710);
    v39 = sub_1C456902C(&qword_1EC0C48E0, &qword_1C4F5C750);
    if (sub_1C44157D4(v38, 1, v39) == 1)
    {
      v40 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
      (*(*(v40 - 8) + 8))(v34, v40);
      sub_1C4420C3C(v38, v31, &qword_1C4F5C710);
      v41 = 1;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v6 = v35;
        (*v82)(v35, v38, v94);
        v54 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
        (*(*(v54 - 8) + 8))(v34, v54);
        v41 = 0;
        goto LABEL_17;
      }

      v42 = v34;
      v43 = *v38;
      v89 = *v38;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      swift_willThrowTypedImpl();
      v44 = sub_1C456902C(&qword_1EC0C48E8, qword_1C4F5C758);
      (*(*(v44 - 8) + 8))(v42, v44);
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v45 = sub_1C4F00978();
      sub_1C442B738(v45, qword_1EDE2DDE0);
      v46 = v43;
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CD8();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = v79;
        v51 = v43;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_1C43F8000, v47, v48, "EntityInteractionHistogramViewGenerator: Ignoring updated event: %@", v49, 0xCu);
        sub_1C4420C3C(v50, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v50, -1, -1);
        v53 = v49;
        v33 = v81;
        MEMORY[0x1C6942830](v53, -1, -1);
      }

      else
      {
      }

      v41 = 1;
      v34 = v83;
      v31 = v36;
    }

    v6 = v35;
LABEL_17:
    v55 = v94;
    sub_1C440BAA8(v6, v41, 1, v94);
    v13 = v37;
    sub_1C4420C3C(v37, &qword_1EC0C4898, &qword_1C4F5C718);
    if (sub_1C44157D4(v6, 1, v55) != 1)
    {
      v56 = *v82;
      v57 = v72;
      v58 = v94;
      (*v82)(v72, v6, v94);
      v56(v74, v57, v58);
      v59 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458BE04(0, *(v59 + 16) + 1, 1, v59);
        v59 = v64;
      }

      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      v80 = v59;
      if (v62 >= v61 >> 1)
      {
        sub_1C458BE04(v61 > 1, v62 + 1, 1, v80);
        v80 = v65;
      }

      v63 = v80;
      *(v80 + 2) = v62 + 1;
      (v56)(v63 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62);
      goto LABEL_4;
    }

    sub_1C4420C3C(v6, &qword_1EC0C4888, &unk_1C4F5C700);
    v16 = v84;
  }

  (*(v73 + 8))(v88, v87);
  (*(v77 + 8))(v76, v78);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v66 = sub_1C4F00978();
  sub_1C442B738(v66, qword_1EDE2DDE0);
  v13 = v80;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CF8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = *(v13 + 2);

    _os_log_impl(&dword_1C43F8000, v67, v68, "EntityInteractionHistogramViewGenerator: Resolved %ld life events", v69, 0xCu);
    MEMORY[0x1C6942830](v69, -1, -1);
  }

  else
  {
  }

  return v13;
}

uint64_t sub_1C4BE8684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0C4888, &unk_1C4F5C700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v18 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4BE522C(&v18);
  sub_1C48684C0(v18, v6);

  v10 = sub_1C4EFFE78();
  if (sub_1C44157D4(v6, 1, v10) == 1)
  {
    v11 = &qword_1EC0C4888;
    v12 = &unk_1C4F5C700;
    v13 = v6;
LABEL_5:
    sub_1C4420C3C(v13, v11, v12);
    v15 = sub_1C4EF9CD8();
    return sub_1C440BAA8(a2, 1, 1, v15);
  }

  sub_1C4EFFE68();
  (*(*(v10 - 8) + 8))(v6, v10);
  v14 = sub_1C4EFFC68();
  if (sub_1C44157D4(v9, 1, v14) == 1)
  {
    v11 = &qword_1EC0C0CC8;
    v12 = &unk_1C4F405F0;
    v13 = v9;
    goto LABEL_5;
  }

  sub_1C4EFFC58();
  return (*(*(v14 - 8) + 8))(v9, v14);
}

uint64_t sub_1C4BE88A4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v33 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = v33 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v19 = sub_1C4EF9CD8();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v34 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v33 - v22;
  sub_1C4EFFE68();
  v24 = sub_1C4EFFC68();
  if (sub_1C44157D4(v10, 1, v24) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0C0CC8, &unk_1C4F405F0);
    sub_1C440BAA8(v18, 1, 1, v19);
  }

  else
  {
    sub_1C4EFFC58();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v33[1] = v25 + 8;
    v26(v10, v24);
    if (sub_1C44157D4(v18, 1, v19) != 1)
    {
      v33[0] = v26;
      v28 = v36;
      v29 = *(v36 + 32);
      v29(v23, v18, v19);
      sub_1C4EFFE68();
      if (sub_1C44157D4(v7, 1, v24) != 1)
      {
        v13 = v35;
        sub_1C4EFFC58();
        (v33[0])(v7, v24);
        if (sub_1C44157D4(v13, 1, v19) != 1)
        {
          v31 = v34;
          v29(v34, v13, v19);
          v27 = sub_1C4EF9C18();
          v32 = *(v36 + 8);
          v32(v31, v19);
          v32(v23, v19);
          return v27 & 1;
        }

        (*(v36 + 8))(v23, v19);
        goto LABEL_11;
      }

      (*(v28 + 8))(v23, v19);
      sub_1C4420C3C(v7, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v13 = v35;
      goto LABEL_10;
    }
  }

  sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4EFFE68();
  if (sub_1C44157D4(v4, 1, v24) == 1)
  {
    sub_1C4420C3C(v4, &qword_1EC0C0CC8, &unk_1C4F405F0);
LABEL_10:
    sub_1C440BAA8(v13, 1, 1, v19);
    goto LABEL_11;
  }

  sub_1C4EFFC58();
  (*(*(v24 - 8) + 8))(v4, v24);
  if (sub_1C44157D4(v13, 1, v19) == 1)
  {
LABEL_11:
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v27 = 1;
    return v27 & 1;
  }

  sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v27 = 0;
  return v27 & 1;
}

void sub_1C4BE8DAC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4EFFE78();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFFE78() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1C4BE972C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1C4BE8EDC(0, v2, 1, a1);
  }
}

void sub_1C4BE8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v63[-v14];
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v79 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v63[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63[-v20];
  v90 = sub_1C4EF9CD8();
  v22 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v66 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v63[-v25];
  v26 = sub_1C4EFFE78();
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v63[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v63[-v29];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v89 = &v63[-v33];
  v65 = a2;
  if (a3 == a2)
  {
    return;
  }

  v34 = *a4;
  v36 = *(v31 + 16);
  v35 = v31 + 16;
  v37 = *(v35 + 56);
  v76 = (v22 + 32);
  v71 = (v22 + 8);
  v84 = (v35 - 8);
  v85 = v36;
  v86 = v35;
  v38 = v34 + v37 * (a3 - 1);
  v80 = -v37;
  v81 = (v35 + 16);
  v39 = (a1 - a3);
  v82 = v34;
  v64 = v37;
  v40 = v34 + v37 * a3;
  v72 = v21;
  v73 = v12;
  while (2)
  {
    v70 = a3;
    v67 = v40;
    v68 = v39;
    v69 = v38;
    v41 = v74;
    while (1)
    {
      v42 = v85;
      (v85)(v89, v40, v26, v32);
      v42(v91, v38, v26);
      v43 = v87;
      sub_1C4EFFE68();
      v44 = sub_1C4EFFC68();
      if (sub_1C44157D4(v43, 1, v44) == 1)
      {
        break;
      }

      sub_1C4EFFC58();
      v45 = *(*(v44 - 8) + 8);
      v45(v43, v44);
      if (sub_1C44157D4(v21, 1, v90) == 1)
      {
        goto LABEL_7;
      }

      v88 = v45;
      v50 = v21;
      v51 = v90;
      v75 = *v76;
      v75(v78, v50, v90);
      v52 = v73;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v52, 1, v44) == 1)
      {
        (*v71)(v78, v51);
        sub_1C4420C3C(v52, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v53 = v77;
        sub_1C440BAA8(v77, 1, 1, v51);
      }

      else
      {
        sub_1C4EFFC58();
        v54 = v44;
        v53 = v77;
        (v88)(v52, v54);
        if (sub_1C44157D4(v53, 1, v51) != 1)
        {
          v58 = v66;
          v75(v66, v53, v51);
          v59 = v78;
          LODWORD(v88) = sub_1C4EF9C18();
          v60 = *v71;
          (*v71)(v58, v51);
          v60(v59, v51);
          v61 = *v84;
          (*v84)(v91, v26);
          v61(v89, v26);
          v41 = v74;
          v21 = v72;
          if ((v88 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_17;
        }

        (*v71)(v78, v51);
      }

      v47 = v53;
      v41 = v74;
      v21 = v72;
LABEL_16:
      sub_1C4420C3C(v47, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v55 = *v84;
      (*v84)(v91, v26);
      v55(v89, v26);
LABEL_17:
      if (!v82)
      {
        __break(1u);
        return;
      }

      v88 = v39;
      v56 = *v81;
      v57 = v83;
      (*v81)(v83, v40, v26);
      swift_arrayInitWithTakeFrontToBack();
      v56(v38, v57, v26);
      v38 += v80;
      v40 += v80;
      v39 = v88 + 1;
      if (v88 == -1)
      {
        goto LABEL_21;
      }
    }

    sub_1C4420C3C(v43, &qword_1EC0C0CC8, &unk_1C4F405F0);
    sub_1C440BAA8(v21, 1, 1, v90);
LABEL_7:
    sub_1C4420C3C(v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EFFE68();
    if (sub_1C44157D4(v41, 1, v44) == 1)
    {
      sub_1C4420C3C(v41, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v46 = v79;
      sub_1C440BAA8(v79, 1, 1, v90);
      v47 = v46;
      goto LABEL_16;
    }

    v48 = v79;
    sub_1C4EFFC58();
    (*(*(v44 - 8) + 8))(v41, v44);
    v49 = sub_1C44157D4(v48, 1, v90);
    v47 = v48;
    if (v49 == 1)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v79, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v62 = *v84;
    (*v84)(v91, v26);
    v62(v89, v26);
LABEL_21:
    a3 = v70 + 1;
    v38 = v69 + v64;
    v39 = v68 - 1;
    v40 = v67 + v64;
    if (v70 + 1 != v65)
    {
      continue;
    }

    break;
  }
}

void sub_1C4BE972C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v197 = a4;
  v201 = a1;
  v7 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v196 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v225 = &v196 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v196 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v207 = &v196 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v196 - v21;
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v231 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v228 = &v196 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v236 = &v196 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v212 = &v196 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v202 = &v196 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v215 = &v196 - v34;
  v35 = sub_1C4EF9CD8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v209 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v196 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v196 = &v196 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v204 = &v196 - v44;
  v238 = sub_1C4EFFE78();
  MEMORY[0x1EEE9AC00](v238);
  v208 = &v196 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v234 = &v196 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v243 = &v196 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v242 = &v196 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v222 = &v196 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v220 = &v196 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v198 = &v196 - v57;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v200 = &v196 - v61;
  v219 = a3;
  v62 = a3[1];
  v218 = v59;
  if (v62 < 1)
  {
    v210 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v64 = *v201;
    if (!*v201)
    {
      goto LABEL_175;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_135;
    }

    goto LABEL_169;
  }

  v63 = 0;
  v239 = v59 + 16;
  v240 = (v59 + 8);
  v227 = (v36 + 32);
  v223 = (v36 + 8);
  v237 = (v59 + 32);
  v210 = MEMORY[0x1E69E7CC0];
  v230 = v9;
  v221 = v12;
  v64 = v225;
  v211 = v17;
  v217 = v22;
  v65 = v35;
  v241 = v35;
  v229 = v40;
  while (1)
  {
    v66 = v63;
    v67 = v63 + 1;
    v203 = v63;
    if (v63 + 1 >= v62)
    {
      v71 = v238;
      v99 = v63;
      v100 = v65;
      goto LABEL_48;
    }

    v232 = v62;
    v68 = *v219;
    v69 = *(v59 + 72);
    v224 = v63 + 1;
    v70 = *(v59 + 16);
    v235 = (v68 + v69 * v67);
    v71 = v238;
    (v70)(v200, v60);
    v233 = v68;
    v72 = v198;
    v216 = v70;
    (v70)(v198, v68 + v69 * v66, v71);
    v73 = v200;
    LODWORD(v226) = sub_1C4BE88A4(v200, v72);
    if (v5)
    {
      v195 = *v240;
      (*v240)(v72, v71);
      (v195)(v73, v71);
LABEL_144:

      return;
    }

    v199 = 0;
    v74 = *v240;
    (*v240)(v72, v71);
    v214 = v74;
    (v74)(v73, v71);
    v75 = v66 + 2;
    v76 = v232;
    v5 = v233 + v69 * (v66 + 2);
    v67 = v224;
    v233 = v69;
    v77 = v235;
    while (1)
    {
      v78 = v75;
      if (v67 + 1 >= v76)
      {
        break;
      }

      v224 = v67;
      v79 = v216;
      (v216)(v220, v5, v71);
      v235 = v77;
      v79(v222, v77, v71);
      sub_1C4EFFE68();
      v80 = sub_1C4EFFC68();
      if (sub_1C44157D4(v22, 1, v80) == 1)
      {
        sub_1C4420C3C(v22, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v81 = v215;
        sub_1C440BAA8(v215, 1, 1, v241);
      }

      else
      {
        v82 = v215;
        sub_1C4EFFC58();
        v81 = v82;
        v83 = v22;
        v84 = *(*(v80 - 8) + 8);
        v84(v83, v80);
        if (sub_1C44157D4(v82, 1, v241) != 1)
        {
          v91 = v204;
          v92 = v241;
          v213 = *v227;
          (v213)(v204, v82, v241);
          v93 = v207;
          sub_1C4EFFE68();
          if (sub_1C44157D4(v93, 1, v80) == 1)
          {
            (*v223)(v91, v92);
            sub_1C4420C3C(v93, &qword_1EC0C0CC8, &unk_1C4F405F0);
            v94 = v202;
            sub_1C440BAA8(v202, 1, 1, v92);
          }

          else
          {
            v94 = v202;
            sub_1C4EFFC58();
            v84(v207, v80);
            if (sub_1C44157D4(v94, 1, v92) != 1)
            {
              v95 = v196;
              (v213)(v196, v94, v92);
              v96 = v204;
              v90 = sub_1C4EF9C18();
              v97 = *v223;
              (*v223)(v95, v92);
              v97(v96, v92);
              v22 = v217;
              v71 = v238;
              v87 = v224;
              v64 = v225;
              goto LABEL_21;
            }

            (*v223)(v204, v92);
          }

          v22 = v217;
          v64 = v225;
          sub_1C4420C3C(v94, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v90 = 1;
          v71 = v238;
          v87 = v224;
          goto LABEL_21;
        }
      }

      sub_1C4420C3C(v81, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v85 = v211;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v85, 1, v80) == 1)
      {
        sub_1C4420C3C(v85, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v86 = v212;
        sub_1C440BAA8(v212, 1, 1, v241);
        v22 = v217;
        v87 = v224;
      }

      else
      {
        v88 = v212;
        sub_1C4EFFC58();
        v86 = v88;
        (*(*(v80 - 8) + 8))(v85, v80);
        v89 = sub_1C44157D4(v88, 1, v241);
        v22 = v217;
        v87 = v224;
        if (v89 != 1)
        {
          sub_1C4420C3C(v86, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v90 = 0;
          goto LABEL_21;
        }
      }

      sub_1C4420C3C(v86, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v90 = 1;
LABEL_21:
      v98 = v214;
      (v214)(v222, v71);
      v98(v220, v71);
      v76 = v232;
      v5 += v233;
      v77 = &v235[v233];
      v67 = v87 + 1;
      v75 = v78 + 1;
      if ((v226 ^ v90))
      {
        goto LABEL_25;
      }
    }

    v67 = v76;
LABEL_25:
    if ((v226 & 1) == 0)
    {
      v5 = v199;
      v100 = v241;
      goto LABEL_46;
    }

    v99 = v203;
    if (v67 < v203)
    {
      goto LABEL_168;
    }

    if (v203 >= v67)
    {
      v5 = v199;
      v100 = v241;
    }

    else
    {
      v101 = v76 >= v78 ? v78 : v76;
      v102 = v67;
      v103 = v233 * (v101 - 1);
      v104 = v203;
      v105 = v233 * v101;
      v106 = v203 * v233;
      v224 = v102;
      do
      {
        if (v104 != --v102)
        {
          v107 = *v219;
          if (!*v219)
          {
            goto LABEL_173;
          }

          v108 = v238;
          v109 = *v237;
          (*v237)(v208, v107 + v106, v238);
          v110 = v106 < v103 || v107 + v106 >= (v107 + v105);
          if (v110)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v106 != v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v109((v107 + v103), v208, v108);
          v64 = v225;
        }

        ++v104;
        v103 -= v233;
        v105 -= v233;
        v106 += v233;
      }

      while (v104 < v102);
      v5 = v199;
      v100 = v241;
      v71 = v238;
      v67 = v224;
LABEL_46:
      v99 = v203;
    }

LABEL_48:
    v111 = v219[1];
    if (v67 < v111)
    {
      if (__OFSUB__(v67, v99))
      {
        goto LABEL_165;
      }

      if (v67 - v99 < v197)
      {
        break;
      }
    }

LABEL_80:
    v64 = v210;
    if (v67 < v99)
    {
      goto LABEL_164;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v224 = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A358();
      v64 = v186;
    }

    v144 = *(v64 + 2);
    v145 = v144 + 1;
    if (v144 >= *(v64 + 3) >> 1)
    {
      sub_1C458A358();
      v64 = v187;
    }

    *(v64 + 2) = v145;
    v146 = v64 + 32;
    v147 = &v64[16 * v144 + 32];
    v148 = v224;
    *v147 = v203;
    *(v147 + 1) = v148;
    v235 = *v201;
    if (!v235)
    {
      goto LABEL_174;
    }

    if (v144)
    {
      while (1)
      {
        v149 = v145 - 1;
        v150 = &v146[2 * v145 - 2];
        v151 = &v64[16 * v145];
        if (v145 >= 4)
        {
          break;
        }

        if (v145 == 3)
        {
          v152 = *(v64 + 4);
          v153 = *(v64 + 5);
          v162 = __OFSUB__(v153, v152);
          v154 = v153 - v152;
          v155 = v162;
LABEL_100:
          if (v155)
          {
            goto LABEL_151;
          }

          v167 = *v151;
          v166 = *(v151 + 1);
          v168 = __OFSUB__(v166, v167);
          v169 = v166 - v167;
          v170 = v168;
          if (v168)
          {
            goto LABEL_154;
          }

          v171 = v150[1];
          v172 = v171 - *v150;
          if (__OFSUB__(v171, *v150))
          {
            goto LABEL_157;
          }

          if (__OFADD__(v169, v172))
          {
            goto LABEL_159;
          }

          if (v169 + v172 >= v154)
          {
            if (v154 < v172)
            {
              v149 = v145 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v145 < 2)
        {
          goto LABEL_153;
        }

        v174 = *v151;
        v173 = *(v151 + 1);
        v162 = __OFSUB__(v173, v174);
        v169 = v173 - v174;
        v170 = v162;
LABEL_115:
        if (v170)
        {
          goto LABEL_156;
        }

        v176 = *v150;
        v175 = v150[1];
        v162 = __OFSUB__(v175, v176);
        v177 = v175 - v176;
        if (v162)
        {
          goto LABEL_158;
        }

        if (v177 < v169)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v149 - 1 >= v145)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*v219)
        {
          goto LABEL_171;
        }

        v181 = &v146[2 * v149 - 2];
        v182 = *v181;
        v183 = &v146[2 * v149];
        v184 = *(v183 + 1);
        sub_1C4BEAD5C(*v219 + *(v218 + 72) * *v181, *v219 + *(v218 + 72) * *v183, *v219 + *(v218 + 72) * v184, v235);
        if (v5)
        {
          goto LABEL_144;
        }

        if (v184 < v182)
        {
          goto LABEL_146;
        }

        v5 = *(v64 + 2);
        if (v149 > v5)
        {
          goto LABEL_147;
        }

        *v181 = v182;
        v181[1] = v184;
        if (v149 >= v5)
        {
          goto LABEL_148;
        }

        v145 = v5 - 1;
        sub_1C461950C(v183 + 16, v5 - 1 - v149, &v146[2 * v149]);
        *(v64 + 2) = v5 - 1;
        v185 = v5 > 2;
        v5 = 0;
        v100 = v241;
        if (!v185)
        {
          goto LABEL_129;
        }
      }

      v156 = &v146[2 * v145];
      v157 = *(v156 - 8);
      v158 = *(v156 - 7);
      v162 = __OFSUB__(v158, v157);
      v159 = v158 - v157;
      if (v162)
      {
        goto LABEL_149;
      }

      v161 = *(v156 - 6);
      v160 = *(v156 - 5);
      v162 = __OFSUB__(v160, v161);
      v154 = v160 - v161;
      v155 = v162;
      if (v162)
      {
        goto LABEL_150;
      }

      v163 = *(v151 + 1);
      v164 = v163 - *v151;
      if (__OFSUB__(v163, *v151))
      {
        goto LABEL_152;
      }

      v162 = __OFADD__(v154, v164);
      v165 = v154 + v164;
      if (v162)
      {
        goto LABEL_155;
      }

      if (v165 >= v159)
      {
        v179 = *v150;
        v178 = v150[1];
        v162 = __OFSUB__(v178, v179);
        v180 = v178 - v179;
        if (v162)
        {
          goto LABEL_163;
        }

        if (v154 < v180)
        {
          v149 = v145 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v65 = v100;
    v210 = v64;
    v62 = v219[1];
    v63 = v224;
    v64 = v225;
    v22 = v217;
    v59 = v218;
    if (v224 >= v62)
    {
      goto LABEL_133;
    }
  }

  v112 = v99 + v197;
  if (__OFADD__(v99, v197))
  {
    goto LABEL_166;
  }

  if (v112 >= v111)
  {
    v112 = v219[1];
  }

  if (v112 < v99)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    v210 = sub_1C46194F4();
LABEL_135:
    v188 = (v210 + 16);
    for (i = *(v210 + 2); i >= 2; *v188 = i)
    {
      if (!*v219)
      {
        goto LABEL_172;
      }

      v190 = &v210[16 * i];
      v191 = *v190;
      v192 = &v188[2 * i];
      v193 = *(v192 + 1);
      sub_1C4BEAD5C(*v219 + *(v218 + 72) * *v190, *v219 + *(v218 + 72) * *v192, *v219 + *(v218 + 72) * v193, v64);
      if (v5)
      {
        break;
      }

      if (v193 < v191)
      {
        goto LABEL_160;
      }

      if (i - 2 >= *v188)
      {
        goto LABEL_161;
      }

      *v190 = v191;
      *(v190 + 1) = v193;
      v194 = *v188 - i;
      if (*v188 < i)
      {
        goto LABEL_162;
      }

      i = *v188 - 1;
      sub_1C461950C(v192 + 16, v194, v192);
    }

    goto LABEL_144;
  }

  if (v67 == v112)
  {
    goto LABEL_80;
  }

  v199 = v5;
  v113 = *v219;
  v114 = *(v218 + 72);
  v235 = *(v218 + 16);
  v115 = (v113 + v114 * (v67 - 1));
  v232 = -v114;
  v233 = v113;
  v116 = (v99 - v67);
  v205 = v114;
  v117 = (v113 + v67 * v114);
  v206 = v112;
  while (2)
  {
    v224 = v67;
    v213 = v117;
    v118 = v117;
    v214 = v116;
    v216 = v115;
LABEL_58:
    v119 = v235;
    (v235)(v242, v118, v71, v60);
    (v119)(v243, v115, v71);
    sub_1C4EFFE68();
    v120 = sub_1C4EFFC68();
    if (sub_1C44157D4(v64, 1, v120) == 1)
    {
      sub_1C4420C3C(v64, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v121 = v236;
      sub_1C440BAA8(v236, 1, 1, v100);
      goto LABEL_61;
    }

    v122 = v236;
    sub_1C4EFFC58();
    v121 = v122;
    v123 = *(*(v120 - 8) + 8);
    v123(v64, v120);
    v124 = v229;
    if (sub_1C44157D4(v121, 1, v100) != 1)
    {
      v131 = v124;
      v127 = v241;
      v226 = *v227;
      (v226)(v131, v121, v241);
      v132 = v221;
      sub_1C4EFFE68();
      if (sub_1C44157D4(v132, 1, v120) == 1)
      {
        (*v223)(v229, v127);
        sub_1C4420C3C(v132, &qword_1EC0C0CC8, &unk_1C4F405F0);
        v133 = v228;
        sub_1C440BAA8(v228, 1, 1, v127);
      }

      else
      {
        sub_1C4EFFC58();
        v134 = v132;
        v133 = v228;
        v123(v134, v120);
        if (sub_1C44157D4(v133, 1, v127) != 1)
        {
          v138 = v209;
          (v226)(v209, v133, v127);
          v139 = v229;
          LODWORD(v226) = sub_1C4EF9C18();
          v140 = *v223;
          (*v223)(v138, v127);
          v140(v139, v127);
          v141 = *v240;
          v71 = v238;
          (*v240)(v243, v238);
          (v141)(v242, v71);
          v64 = v225;
          if ((v226 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_72;
        }

        (*v223)(v229, v127);
      }

      v128 = v133;
      v64 = v225;
LABEL_70:
      v71 = v238;
      break;
    }

LABEL_61:
    sub_1C4420C3C(v121, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v125 = v230;
    sub_1C4EFFE68();
    if (sub_1C44157D4(v125, 1, v120) == 1)
    {
      sub_1C4420C3C(v125, &qword_1EC0C0CC8, &unk_1C4F405F0);
      v126 = v231;
      v127 = v241;
      sub_1C440BAA8(v231, 1, 1, v241);
      v128 = v126;
      goto LABEL_70;
    }

    v129 = v231;
    sub_1C4EFFC58();
    (*(*(v120 - 8) + 8))(v125, v120);
    v127 = v241;
    v130 = sub_1C44157D4(v129, 1, v241);
    v128 = v129;
    v71 = v238;
    if (v130 != 1)
    {
      sub_1C4420C3C(v231, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v142 = *v240;
      (*v240)(v243, v71);
      (v142)(v242, v71);
LABEL_77:
      v100 = v127;
LABEL_78:
      v67 = v224 + 1;
      v115 = &v216[v205];
      v116 = v214 - 1;
      v117 = &v213[v205];
      if (v224 + 1 == v206)
      {
        v67 = v206;
        v5 = v199;
        v99 = v203;
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  sub_1C4420C3C(v128, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v135 = *v240;
  (*v240)(v243, v71);
  (v135)(v242, v71);
LABEL_72:
  if (v233)
  {
    v136 = *v237;
    v137 = v234;
    (*v237)(v234, v118, v71);
    swift_arrayInitWithTakeFrontToBack();
    v136(v115, v137, v71);
    v115 += v232;
    v118 += v232;
    v110 = __CFADD__(v116++, 1);
    v100 = v127;
    if (v110)
    {
      goto LABEL_78;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

void sub_1C4BEAD5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1C4EFFE78();
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_66;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v87 = a1;
  v86 = a4;
  v80 = a3;
  v81 = (v17 + 16);
  v82 = (v17 + 8);
  v25 = v23 / v21;
  v26 = v21;
  if ((a2 - a1) / v21 >= v23 / v21)
  {
    v76 = v12;
    sub_1C459C64C(a2, v23 / v21, a4);
    v42 = a2;
    v43 = a4 + v25 * v26;
    v44 = -v26;
    v45 = v43;
    v46 = v80;
    v47 = v84;
    v73 = v44;
    v74 = a1;
    v75 = a4;
LABEL_39:
    v77 = v42;
    v78 = (v42 + v44);
    v48 = v46;
    v71 = v45;
    v49 = v45;
    v50 = v79;
    while (1)
    {
      if (v43 <= a4)
      {
        v84 = v47;
        v85 = v49;
        v87 = v42;
        goto LABEL_64;
      }

      if (v42 <= a1)
      {
        v87 = v42;
        v84 = v47;
        v85 = v71;
        goto LABEL_64;
      }

      v51 = v50;
      v52 = v48;
      v72 = v49;
      v53 = v47;
      v80 = v43;
      v54 = v43 + v44;
      v55 = *v81;
      v56 = v76;
      (*v81)(v76, v43 + v44, v8);
      (v55)(v51, v78, v8);
      v57 = sub_1C4BE88A4(v56, v51);
      v84 = v53;
      if (v53)
      {
        break;
      }

      v58 = v57;
      v46 = v52 + v44;
      v59 = *v82;
      (*v82)(v51, v8);
      v59(v56, v8);
      if (v58)
      {
        v63 = v52 < v77 || v46 >= v77;
        a4 = v75;
        if (v63)
        {
          v64 = v78;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v64;
          v45 = v72;
          v44 = v73;
          v47 = v84;
          a1 = v74;
          v43 = v80;
        }

        else
        {
          v44 = v73;
          v45 = v72;
          v65 = v78;
          v42 = v78;
          v47 = v84;
          a1 = v74;
          v43 = v80;
          if (v52 != v77)
          {
            v66 = v84;
            v67 = v73;
            v68 = v72;
            swift_arrayInitWithTakeBackToFront();
            v43 = v80;
            v47 = v66;
            v42 = v65;
            v45 = v68;
            v44 = v67;
          }
        }

        goto LABEL_39;
      }

      v60 = v52 < v80 || v46 >= v80;
      a4 = v75;
      if (v60)
      {
        swift_arrayInitWithTakeFrontToBack();
        v48 = v52 + v44;
        v43 = v54;
        v49 = v54;
        v42 = v77;
        v47 = v84;
        v44 = v73;
        a1 = v74;
        v50 = v79;
      }

      else
      {
        v49 = v54;
        v22 = v80 == v52;
        v48 = v52 + v44;
        v43 = v54;
        v42 = v77;
        v47 = v84;
        v44 = v73;
        a1 = v74;
        v50 = v79;
        if (!v22)
        {
          v61 = v77;
          v62 = v84;
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v42 = v61;
          v48 = v46;
          v43 = v54;
          v49 = v54;
        }
      }
    }

    v70 = *v82;
    (*v82)(v51, v8);
    v70(v56, v8);
    v87 = v77;
    v85 = v72;
  }

  else
  {
    v27 = v8;
    v28 = (a2 - a1) / v21;
    sub_1C459C64C(a1, v28, a4);
    v29 = a2;
    v78 = v19;
    v79 = (a4 + v28 * v26);
    v85 = v79;
    v30 = v80;
    v31 = a1;
    v83 = v27;
    v77 = v15;
    while (a4 < v79 && v29 < v30)
    {
      v33 = v26;
      v34 = *v81;
      v35 = v29;
      (*v81)(v19);
      (v34)(v15, a4, v27);
      v36 = v84;
      v37 = sub_1C4BE88A4(v19, v15);
      v84 = v36;
      if (v36)
      {
        v69 = *v82;
        (*v82)(v15, v27);
        v69(v19, v27);
        break;
      }

      v38 = v37;
      v39 = *v82;
      (*v82)(v15, v27);
      v39(v19, v27);
      v26 = v33;
      if (v38)
      {
        if (v31 < v35 || v31 >= v35 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v29 = v35 + v33;
          v15 = v77;
        }

        else
        {
          v15 = v77;
          if (v31 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = v35 + v33;
        }

        v19 = v78;
      }

      else
      {
        if (v31 < a4 || v31 >= a4 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v15 = v77;
        }

        else
        {
          v15 = v77;
          if (v31 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = a4 + v33;
        a4 += v33;
        v19 = v78;
        v29 = v35;
      }

      v31 += v33;
      v87 = v31;
      v30 = v80;
      v27 = v83;
    }
  }

LABEL_64:
  sub_1C4BEB4BC(&v87, &v86, &v85, MEMORY[0x1E69A9C00]);
}

void sub_1C4BEB4BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_1C43FBCE0();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_1C4409238();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C4BEB598(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_1C456902C(a4, a5);
  sub_1C43FBCE0();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_1C4409238();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_1C4402120();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1C4BEB660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4BEB6A8()
{
  result = qword_1EC0C48D0;
  if (!qword_1EC0C48D0)
  {
    sub_1C4572308(&qword_1EC0C48D8, &qword_1C4F5C748);
    sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0, MEMORY[0x1E69E6328]);
    sub_1C4BEB660(&qword_1EDDFE218, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C48D0);
  }

  return result;
}

uint64_t sub_1C4BEB7A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C4BEB8E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4C81AA0(a1, a2, 0);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(a3, __src, 0xE0uLL);
    }

    else
    {
      bzero(__src, 0xE0uLL);
      sub_1C4423A0C(__src, &qword_1EC0C48F8, &qword_1C4F5C958);
      sub_1C450B034();
      swift_allocError();
      *v7 = a1;
      *(v7 + 8) = a2;
      *(v7 + 16) = 0xD000000000000024;
      *(v7 + 24) = 0x80000001C4FB9260;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0xE000000000000000;
      *(v7 + 48) = v8;
      *(v7 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4BEBA08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, unint64_t *a5@<X8>)
{
  v8 = sub_1C4EFBE38();
  sub_1C43FCE64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = (a3 + *(_s6ConfigVMa(0) + 64));
  if (v22[1])
  {
    v67 = v22[1];
    v61 = v14;
    v62 = v10;
    v63 = v8;
    v64 = *v22;
    v66 = v22[2];
    v65 = v22[3];
    v70 = v22[4];
    v69 = v22[5];
    v23 = v22[7];
    v68 = v22[6];
    v25 = v22[8];
    v24 = v22[9];
    v26 = v22[10];
    v79 = 0uLL;
    sub_1C44E9220();
    if (!v92)
    {
      v58 = v26;
      v59 = v24;
      v60 = v25;
      v74 = v27;
      v28 = *(*(v27 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      (*(v17 + 104))(v21, *MEMORY[0x1E69A9418], v15);
      v29 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
      swift_allocObject();
      v30 = sub_1C45EA510(v28, v21, v70, v69);
      v31 = *(v71 + 16);
      v32 = type metadata accessor for BehaviorHistoryUtility(0);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v37 = sub_1C4624330(v31, a4);
      v92 = 0;
      v83 = v29;
      v84 = &off_1F43E2510;
      v86 = v32;
      v87 = &off_1F43E41D8;
      v85 = v37;
      v79.n128_u64[0] = v64;
      v79.n128_u64[1] = v67;
      v80 = v28;
      v81 = v30;
      v90 = &type metadata for BehaviorDatabaseHistogramManager;
      v91 = &off_1F43E25F0;
      *&v88 = swift_allocObject();
      sub_1C4BEB830(&v79, v88 + 16);
      v77 = v32;
      v78 = &off_1F43E41D8;
      *&v76 = v37;
      v75[4] = &off_1F43E2510;
      v75[3] = v29;
      v75[0] = v30;
      type metadata accessor for CachedBehaviorDatabaseHistogramManager();
      v38 = swift_allocObject();
      sub_1C4418280(v75, v29);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v39);
      sub_1C43FBCC4();
      v42 = (v41 - v40);
      (*(v43 + 16))(v41 - v40);
      v44 = *v42;
      v38[15] = v29;
      v38[16] = &off_1F43E2510;
      v38[12] = v44;
      v38[17] = MEMORY[0x1E69E7CC8];
      sub_1C441D670(&v76, (v38 + 2));
      sub_1C441D670(&v88, (v38 + 7));
      swift_retain_n();

      sub_1C440962C(v75);
      sub_1C4BEB88C(&v79);

      v81 = v29;
      v82 = &off_1F43E2510;
      v79.n128_u64[0] = v30;
      v45 = 0;
      if (v38)
      {
        v45 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
        v46 = &off_1F43E24F0;
      }

      else
      {
        v46 = 0;
        *(&v88 + 1) = 0;
        v89 = 0;
      }

      *&v88 = v38;
      v90 = v45;
      v91 = v46;
      sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
      v47 = (type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
      v48 = *(*v47 + 72);
      v49 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C4F0C890;
      v51 = (v50 + v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BEC810(v25, v59);
      sub_1C4EFBE08();
      *v51 = 1701869940;
      *(v51 + 1) = 0xE400000000000000;
      v52 = *(v62 + 32);
      v52(&v51[v47[7]], v61, v63);
      v53 = &v51[v48];
      sub_1C4EFBE08();
      strcpy(&v51[v48], "behaviorType");
      v53[13] = 0;
      *(v53 + 7) = -5120;
      v52(&v51[v48 + v47[7]], v61, v63);
      v54 = &v51[2 * v48];
      sub_1C4EFBDB8();
      *v54 = 1635017060;
      *(v54 + 1) = 0xE400000000000000;
      v52(&v54[v47[7]], v61, v63);
      a5[4] = v74;
      a5[5] = v50;
      *a5 = v64;
      a5[1] = v67;
      a5[2] = v66;
      a5[3] = v65;
      sub_1C442E860(&v79, (a5 + 11));
      sub_1C46DA590(&v88, (a5 + 6));
      v55 = *(*(v74 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
      v56 = type metadata accessor for BehaviorDatabaseEventTracker();
      swift_allocObject();
      v57 = sub_1C45DC594(v68, v23, v55, v60, v59, v58);
      a5[19] = v56;
      a5[20] = &off_1F43E2390;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BEC810(v60, v59);

      a5[16] = v57;
      sub_1C4423A0C(&v88, &qword_1EC0BB460, &qword_1C4F5D900);
      sub_1C440962C(&v79);
      a5[21] = v70;
      a5[22] = v69;
      a5[23] = v68;
      a5[24] = v23;
      a5[25] = v60;
      a5[26] = v59;
      a5[27] = v58;
    }
  }

  else
  {
    sub_1C450B034();
    v33 = swift_allocError();
    *v34 = a1;
    v34[1] = a2;
    sub_1C442D638(v33, v34);
    sub_1C44010A8(v79, v35, v36);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4BEC2A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for EntityInteractionHistogramDatabaseTable;
  a5[4] = &off_1F43E8B88;
  v11 = swift_allocObject();
  *a5 = v11;
  sub_1C4BEBA08(a1, a2, a3, a4, (v11 + 16));
  if (v5)
  {
    sub_1C47C41F8(a5);
  }
}

void sub_1C4BEC368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1C4BEBA08(a1, a2, a3, a4, v8);
  if (!v5)
  {
    a5[3] = &_s36EntityInteractionHistogramViewClientVN;
    a5[4] = &off_1F4402490;
    v7 = swift_allocObject();
    *a5 = v7;
    memcpy((v7 + 16), v8, 0xE0uLL);
  }
}

void sub_1C4BEC438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1C4BEBA08(a1, a2, a3, a5, v11);
  if (!v7)
  {
    MEMORY[0x1EEE9AC00](v9);
    v10[2] = v11;

    sub_1C446C37C(a7, v10);

    sub_1C4707ED4(v11);
  }
}

uint64_t sub_1C4BEC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a3 + *(_s6ConfigVMa(0) + 64));
  v8 = v7[1];
  if (v8)
  {
    v24 = a1;
    v25 = a2;
    v9 = v7[9];
    v23 = v7[8];
    v10 = v7[6];
    v11 = v7[7];
    v13 = v7[4];
    v12 = v7[5];
    v14 = *v7;
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = v14;
    *(inited + 40) = v8;
    *(inited + 48) = v13;
    *(inited + 56) = v12;
    *(inited + 64) = v10;
    *(inited + 72) = v11;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v9)
    {
      sub_1C4BEC810(v23, v9);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443D664();
      v17 = v16;
      v16[2] = 4;
      v16[10] = v23;
      v16[11] = v9;

      sub_1C4C74574(v24, v25, v17);
    }

    else
    {
      sub_1C4C74574(v24, v25, inited);
    }
  }

  else
  {
    sub_1C450B034();
    v18 = swift_allocError();
    *v19 = a1;
    v19[1] = a2;
    sub_1C442D638(v18, v19);
    sub_1C44010A8(v26, v20, v21);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4BEC810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4BEC854()
{

  if (v0[11])
  {
    sub_1C440962C(v0 + 8);
  }

  sub_1C440962C(v0 + 13);
  sub_1C440962C(v0 + 18);

  if (v0[28])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

void sub_1C4BEC8F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextAspects);
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 32);
    sub_1C456902C(&qword_1EC0B8810, &qword_1C4F0DC00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = v2;
    *(inited + 40) = 1;
    *(inited + 48) = v2;
    *(inited + 56) = 0;
    sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1C4F0D130;
    *(v4 + 32) = v2;
    sub_1C4D50668();
    *(inited + 64) = v5;
    *(inited + 72) = 3;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8810, &qword_1C4F0DC00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(inited + 32) = sub_1C45979B8(v6);
    *(inited + 40) = 3;
  }

  sub_1C4D50A90(inited);
}

uint64_t sub_1C4BEC9FC()
{
  sub_1C4BEC8F0();
  sub_1C463402C(v0);

  return sub_1C4499940();
}

uint64_t sub_1C4BECA58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v88 = a2;
  v94 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - v6;
  v8 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v95 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  sub_1C446FB00();
  if (v3)
  {

    sub_1C440BAA8(v7, 1, 1, v8);
    v83 = 0;
  }

  else
  {
    v92 = v19;
    v93 = v16;
    v83 = 0;
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      v34 = v95;
      v35 = v22;
      (v95)[4](v22, v7, v8);
      v36 = v8;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v37 = sub_1C4F00978();
      sub_1C442B738(v37, qword_1EDE2DDE0);
      v38 = sub_1C4F00968();
      v39 = sub_1C4F01CD8();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v92;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v13 = v2;
        *v42 = 0;
        _os_log_impl(&dword_1C43F8000, v38, v39, "EntityRelevanceContextualFeatureView: Mocked date context found in KeyValueStore.", v42, 2u);
        sub_1C43FBE2C();
      }

      v91 = v34[2];
      v91(v41, v35, v36);
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CD8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v90 = v35;
        v46 = v45;
        v89 = swift_slowAlloc();
        v96 = v89;
        *v46 = 136315138;
        sub_1C45C2A2C();
        LODWORD(v87) = v44;
        v47 = sub_1C4F02858();
        v85 = v4;
        v49 = v48;
        v50 = sub_1C44205F4();
        v51(v50);
        v52 = sub_1C441D828(v47, v49, &v96);
        v4 = v85;

        v53 = v46;
        v35 = v90;
        *(v53 + 1) = v52;
        _os_log_impl(&dword_1C43F8000, v43, v87, "EntityRelevanceContextualFeatureView: Using %s as the context instead of reading from currentContext views.", v53, 0xCu);
        sub_1C440962C(v89);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {

        v54 = sub_1C44205F4();
        v55(v54);
      }

      v91(v93, v35, v36);
      v96 = 0;
      v97 = 256;
      type metadata accessor for BehaviorContext(0);
      swift_allocObject();
      sub_1C45D689C();
      v33 = v56;
      v41(v35, v36);
      goto LABEL_18;
    }
  }

  sub_1C4423A0C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (qword_1EDDFA668 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DDE0);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v95;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "EntityRelevanceContextualFeatureView: Merging contexts based on currentContext views.", v28, 2u);
      sub_1C43FBE2C();
    }

    type metadata accessor for BehaviorContext(0);
    v29 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_contextViews);
    sub_1C4EF9CC8();
    v30 = v83;
    v31 = sub_1C4BED310(v29, v13);
    v83 = v30;
    if (v30)
    {
      return (v27[1])(v13, v8);
    }

    v33 = v31;
    (v27[1])(v13, v8);
LABEL_18:
    v100 = MEMORY[0x1E69E7CC0];
    v87 = *(v94 + 16);
    v86 = v94 + 32;

    v57 = 0;
    v85 = v4;
    v84 = v33;
    while (1)
    {
      if (v57 == v87)
      {

        return v100;
      }

      v58 = (v86 + 48 * v57);
      v59 = v58[1];
      v98 = *v58;
      v99[0] = v59;
      *(v99 + 9) = *(v58 + 25);
      sub_1C45A2358(&v98, &v96);
      sub_1C4BEC8F0();
      v61 = sub_1C4601874(&v98, v60, v33);

      if (v61)
      {
        break;
      }

      sub_1C45EC75C(&v98);
      v81 = MEMORY[0x1E69E7CC0];
LABEL_41:
      ++v57;
      sub_1C49D3A70(v81);
    }

    v90 = v57;
    v89 = objc_autoreleasePoolPush();
    v95 = v61;
    v62 = [v61 featureNames];
    v63 = sub_1C4F01AB8();

    v8 = v63 + 56;
    v64 = 1 << *(v63 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & *(v63 + 56);
    v67 = (v64 + 63) >> 6;
    v94 = v63;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = 0;
    v91 = MEMORY[0x1E69E7CC0];
    while (v66)
    {
LABEL_30:
      v69 = (*(v94 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v66)))));
      v70 = *v69;
      v71 = v69[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = objc_autoreleasePoolPush();
      v72 = sub_1C4F01108();
      v73 = [v95 featureValueForName_];

      v93 = v73;
      if (v73)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v92 = sub_1C45D2400();
        v75 = v74;
        v73 = v71;
      }

      else
      {
        v70 = 0;
        v92 = 0;
        v75 = 0;
      }

      v66 &= v66 - 1;
      objc_autoreleasePoolPop(v13);

      if (v73)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458B504();
          v91 = v79;
        }

        v13 = *(v91 + 2);
        if (v13 >= *(v91 + 3) >> 1)
        {
          sub_1C458B504();
          v91 = v80;
        }

        v77 = v91;
        v76 = v92;
        *(v91 + 2) = v13 + 1;
        v78 = (v77 + 40 * v13);
        v78[4] = v70;
        v78[5] = v73;
        v78[6] = v76;
        v78[7] = v75;
        v78[8] = v93;
      }
    }

    while (1)
    {
      v68 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v68 >= v67)
      {

        objc_autoreleasePoolPop(v89);
        sub_1C45EC75C(&v98);
        swift_unknownObjectRelease();
        v33 = v84;
        v57 = v90;
        v81 = v91;
        goto LABEL_41;
      }

      v66 = *(v8 + 8 * v68);
      ++v4;
      if (v66)
      {
        v4 = v68;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_44:
    sub_1C4406728(&qword_1EDDFA668);
  }
}

char *sub_1C4BED310(char *a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v123 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v102 - v11;
  v136 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v121 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v122 = v15 - v14;
  v16 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v36 = *(a1 + 2);
  if (!v36)
  {
    sub_1C4BEE870();
    swift_allocError();
    *v40 = 0;
LABEL_18:
    swift_willThrow();
    return a1;
  }

  if (v36 == 1)
  {
    v37 = *(a1 + 7);
    v38 = *(a1 + 8);
    sub_1C4409678(a1 + 4, v37);
    v39 = (*(v38 + 24))(v37, v38);
    if (!v4)
    {
      return v39;
    }

    return a1;
  }

  v114 = v31;
  v105 = v28;
  v106 = v35;
  v109 = v22;
  v107 = v18;
  v108 = v16;
  v111 = a2;
  v117 = &v102 - v32;
  v115 = v34;
  v118 = v33;
  v116 = v30;
  v110 = v2;
  v119 = v4;
  v41 = a1 + 32;
  v42 = MEMORY[0x1E69E7CC0];
  a1 = &qword_1EC0B8F70;
  v112 = v41;
  v113 = v36;
  do
  {
    sub_1C442E860(v41, &v133);
    sub_1C441D670(&v133, &v126);
    sub_1C456902C(&qword_1EC0B8F70, &qword_1C4F0EA48);
    sub_1C456902C(&qword_1EC0B8968, &qword_1C4F0DD70);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v124, &v131);
      sub_1C441D670(&v131, &v128);
      sub_1C441D670(&v128, &v131);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BF90();
        v42 = v50;
      }

      v43 = *(v42 + 16);
      if (v43 >= *(v42 + 24) >> 1)
      {
        sub_1C458BF90();
        v42 = v51;
      }

      v44 = sub_1C4418280(&v131, v132);
      MEMORY[0x1EEE9AC00](v44);
      sub_1C43FBCC4();
      v47 = (v46 - v45);
      (*(v48 + 16))(v46 - v45);
      v49 = *v47;
      v129 = type metadata accessor for CurrentTimeContextView(0);
      v130 = &off_1F43E6EE0;
      *&v128 = v49;
      *(v42 + 16) = v43 + 1;
      sub_1C441D670(&v128, v42 + 40 * v43 + 32);
      sub_1C440962C(&v131);
      a1 = &qword_1EC0B8F70;
    }

    else
    {
      v125 = 0;
      memset(v124, 0, sizeof(v124));
      sub_1C4423A0C(v124, &qword_1EC0C4900, &qword_1C4F5C9F8);
    }

    v41 += 40;
    --v36;
  }

  while (v36);
  v52 = *(v42 + 16);
  if (v52 > 2)
  {
LABEL_16:

LABEL_17:
    sub_1C4BEE870();
    swift_allocError();
    *v53 = 1;
    goto LABEL_18;
  }

  if (v52 == 2)
  {
    v55 = 0;
    a1 = (v42 + 32);
    v56 = v42 + 32;
    v57 = v136;
    while (v55 != 2)
    {
      if (v55 >= *(v42 + 16))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_1C442E860(v56, &v128);
      if (*(*sub_1C4409678(&v128, v129) + 72) != 1)
      {
        sub_1C441D670(&v128, &v131);
        sub_1C441D670(&v131, &v133);
        v62 = 0;
        v63 = v122;
        while (1)
        {
          if (v62 == 2)
          {

            sub_1C440962C(&v133);
            goto LABEL_17;
          }

          if (v62 >= *(v42 + 16))
          {
            goto LABEL_72;
          }

          sub_1C442E860(a1, &v126);
          if (*(*sub_1C4409678(&v126, v127) + 72))
          {
            break;
          }

          ++v62;
          sub_1C440962C(&v126);
          a1 += 40;
        }

        sub_1C441D670(&v126, &v128);
        sub_1C441D670(&v128, &v131);
        if (*(*sub_1C4409678(&v133, v134) + 72))
        {
          goto LABEL_76;
        }

        sub_1C4409678(&v133, v134);
        v65 = v119;
        sub_1C46A7024();
        a1 = v65;
        if (v65)
        {
          sub_1C440962C(&v131);
          sub_1C440962C(&v133);
          return a1;
        }

        sub_1C4409678(&v131, v132);
        v84 = sub_1C46A7024();
        v119 = 0;
        v123 = v84;
        v104 = objc_autoreleasePoolPush();
        sub_1C4EF9F58();
        v114 = objc_autoreleasePoolPush();
        v85 = v121;
        v86 = *(v121 + 104);
        v86(v63, *MEMORY[0x1E6969AB0], v57);
        v87 = sub_1C4EF9F78();
        v88 = *(v85 + 8);
        v121 = v85 + 8;
        v103 = v88;
        v88(v63, v57);
        v89 = __OFSUB__(v87, 1);
        v90 = v87 - 1;
        if (!v89)
        {
          objc_autoreleasePoolPop(v114);
          v86(v63, *MEMORY[0x1E6969A48], v57);
          v91 = v123;
          if (__OFSUB__(v123, v90))
          {
            goto LABEL_75;
          }

          a1 = v120;
          sub_1C4EF9F28();
          v103(v63, v57);
          v58 = v116;
          if (sub_1C44157D4(a1, 1, v116) == 1)
          {
            sub_1C4423A0C(a1, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4600F60();
            swift_allocError();
            *v92 = v91;
            swift_willThrow();
            v93 = sub_1C44010C8();
            v94(v93);
            objc_autoreleasePoolPop(v104);
            sub_1C440962C(&v131);
            sub_1C440962C(&v133);
            return a1;
          }

          v95 = a1;
          v96 = v118;
          v97 = v105;
          (*(v118 + 32))(v105, v95, v58);
          v98 = v106;
          sub_1C4EF9E78();
          sub_1C4EF9BE8();
          v99 = *(v96 + 8);
          v99(v98, v58);
          v99(v97, v58);
          v100 = sub_1C44010C8();
          v101(v100);
          objc_autoreleasePoolPop(v104);
          sub_1C440962C(&v131);
          sub_1C440962C(&v133);
          v68 = v112;
          goto LABEL_46;
        }

        goto LABEL_74;
      }

      ++v55;
      sub_1C440962C(&v128);
      v56 += 40;
    }

    goto LABEL_16;
  }

  sub_1C486C278(v42, &v133);

  a1 = v134;
  v58 = v116;
  if (!v134)
  {
    sub_1C4423A0C(&v133, &qword_1EC0C4900, &qword_1C4F5C9F8);
    v64 = v123;
    sub_1C440BAA8(v123, 1, 1, v58);
    (*(v118 + 16))(v114, v111, v58);
    goto LABEL_42;
  }

  v59 = v135;
  sub_1C4409678(&v133, v134);
  v60 = v119;
  v61 = (*(*(v59 + 8) + 24))(a1);
  v119 = v60;
  if (v60)
  {
    sub_1C440962C(&v133);
    return a1;
  }

  v66 = v118;
  v67 = *(v118 + 16);
  v64 = v123;
  v67(v123, v61 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v58);

  sub_1C440BAA8(v64, 0, 1, v58);
  sub_1C440962C(&v133);
  if (sub_1C44157D4(v64, 1, v58) == 1)
  {
    v67(v114, v111, v58);
LABEL_42:
    if (sub_1C44157D4(v64, 1, v58) != 1)
    {
      sub_1C4423A0C(v64, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    goto LABEL_45;
  }

  (*(v66 + 32))(v114, v64, v58);
LABEL_45:
  v68 = v112;
  (*(v118 + 32))(v117, v114, v58);
LABEL_46:
  v69 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  for (i = v113; i; --i)
  {
    sub_1C442E860(v68, &v133);
    sub_1C442E860(&v133, &v131);
    type metadata accessor for CurrentTimeContextView(0);
    if (swift_dynamicCast())
    {

      sub_1C440962C(&v133);
    }

    else
    {
      sub_1C441D670(&v133, &v131);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DC38();
        v70 = v128;
      }

      v73 = *(v70 + 16);
      if (v73 >= *(v70 + 24) >> 1)
      {
        sub_1C459DC38();
        v70 = v128;
      }

      *(v70 + 16) = v73 + 1;
      sub_1C441D670(&v131, v70 + 40 * v73 + 32);
    }

    v68 += 40;
  }

  (*(v118 + 16))(v115, v117, v58);
  a1 = *(v70 + 16);
  if (!a1)
  {

    v79 = MEMORY[0x1E69E7CC0];
    v76 = v119;
LABEL_62:
    sub_1C45D6F00(v115, v79);
    if (!v76)
    {
      a1 = v80;
    }

    v81 = sub_1C440B550();
    v82(v81);
    return a1;
  }

  *&v131 = v69;
  sub_1C4F02348();
  v74 = 0;
  v75 = v70 + 32;
  v76 = v119;
  while (v74 < *(v70 + 16))
  {
    sub_1C442E860(v75, &v133);
    v77 = v134;
    v78 = v135;
    sub_1C4409678(&v133, v134);
    (*(v78 + 24))(v77, v78);
    if (v76)
    {

      a1 = *(v118 + 8);
      v83 = v116;
      (a1)(v115, v116);
      (a1)(v117, v83);
      sub_1C440962C(&v133);

      return a1;
    }

    ++v74;
    sub_1C440962C(&v133);
    sub_1C4F02318();
    sub_1C4F02358();
    sub_1C4F02368();
    sub_1C4F02328();
    v75 += 40;
    if (a1 == v74)
    {

      v79 = v131;
      goto LABEL_62;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void sub_1C4BEE248()
{
  v2 = v0;
  v3 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_featurizer);
    if (v10)
    {
      sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider + 24));
      (*(v5 + 104))(v9, *MEMORY[0x1E69A9418], v3);

      v11 = sub_1C45EA9C0(v9);
      if (v1)
      {
        (*(v5 + 8))(v9, v3);
      }

      else
      {
        v17 = v11;
        (*(v5 + 8))(v9, v3);
        sub_1C4BECA58(v17, v10);

        v18 = v0[3];
        v19 = v0[4];
        v20 = v0[5];
        v21 = v0[6];
        v22[0] = v2[2];
        v22[1] = v18;
        v22[2] = v19;
        v22[3] = v20;
        v22[4] = v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C4D0E5C0();
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v12 = sub_1C4F00978();
      sub_1C442B738(v12, qword_1EDE2DDE0);

      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CF8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config + 8), v22);
        _os_log_impl(&dword_1C43F8000, v13, v14, "%s: Featurizer is nil. Ignoring AllSources and returning", v15, 0xCu);
        sub_1C440962C(v16);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4D0E51C();
    }
  }
}

uint64_t sub_1C4BEE5A8()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_config);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceContextualFeatureView_histogramKeyProvider));

  return v0;
}

uint64_t sub_1C4BEE64C()
{
  sub_1C4BEE5A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceContextualFeatureView(uint64_t a1)
{
  result = qword_1EDDF1108;
  if (!qword_1EDDF1108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BEE6F8(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BEE7BC()
{
  sub_1C4BEE248();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C4BEE870()
{
  result = qword_1EC0C4908;
  if (!qword_1EC0C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4908);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MergedContextViewError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4BEE9A4()
{
  result = qword_1EC0C4910;
  if (!qword_1EC0C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4910);
  }

  return result;
}

uint64_t sub_1C4BEE9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 40) = *(a1 + 24);
  sub_1C4BEF204(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config, _s10ViewConfigVMa);
  sub_1C4BEF204(a3, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_environmentConfig, type metadata accessor for Configuration);
  return v3;
}

uint64_t sub_1C4BEEA88()
{
  sub_1C43FBCD4();
  v1[7] = v0;
  _s10ViewConfigVMa(0);
  v1[8] = swift_task_alloc();
  v2 = sub_1C4EF9D38();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BEEB70, 0, 0);
}

uint64_t sub_1C4BEEB70()
{
  if ([objc_opt_self() isInternalDevice])
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    sub_1C4EF9058();
    v6 = sub_1C4EF9CF8();
    v8 = v7;
    (*(v2 + 8))(v1, v4);
    v9 = v5[3];
    v10 = v5[4];
    v11 = v5[5];
    v12 = v5[6];
    *(v0 + 16) = v5[2];
    *(v0 + 24) = v9;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
    *(v0 + 48) = v12;
    v13 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config);
    sub_1C463F29C(v13, v3);
    v15 = *v13;
    v14 = v13[1];
    type metadata accessor for EntityRelevanceDataCollectionTask(0);
    swift_allocObject();
    *(v0 + 96) = sub_1C46ED494((v0 + 16), v3, v15, v14, v6, v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_1C4BEED60;

    return sub_1C46ED560();
  }

  else
  {

    sub_1C43FBDA0();

    return v18();
  }
}

uint64_t sub_1C4BEED60()
{
  sub_1C43FBCD4();
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1C4BEEEE0;
  }

  else
  {
    v2 = sub_1C4BEEE70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4BEEE70()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4BEEEE0()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4BEEF50()
{

  sub_1C443C120(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_config, _s10ViewConfigVMa);
  sub_1C443C120(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionView_environmentConfig, type metadata accessor for Configuration);
  return v0;
}

uint64_t sub_1C4BEEFDC()
{
  sub_1C4BEEF50();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceDataCollectionView(uint64_t a1)
{
  result = qword_1EC0C4918;
  if (!qword_1EC0C4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BEF088(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4BEF160()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4BEEA88();
}

uint64_t sub_1C4BEF204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4BEF26C()
{
  sub_1C4D50A90(&unk_1F43D6BC0);
  sub_1C463402C(v0);

  return sub_1C4499940();
}

uint64_t sub_1C4BEF2D0(unint64_t a1, uint64_t a2)
{
  v131 = a2;
  v126 = a1;
  v135 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v134 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  v132 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v122 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBFDC();
  v130 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v122 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v122 - v14;
  v16 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v144 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v122 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v122 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v122 - v28;
  v30 = v133;
  sub_1C446FB00();
  v128 = v18;
  if (v30)
  {

    sub_1C440BAA8(v15, 1, 1, v16);
    v133 = 0;
LABEL_4:
    sub_1C44686E4(v15);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v127 = v16;
    v31 = v135;
    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDE2DDE0);
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C43F8000, v33, v34, "EntityRelevanceFeatureView: Using current context plus fixed previous entity interaction.", v35, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4EF9CC8();
    sub_1C44010E4();
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v36 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    sub_1C440B56C(v36, v143);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C4F0D130;
    v40 = v39 + v38;
    v41 = *MEMORY[0x1E69A9418];
    v42 = v134;
    v43 = *(v134 + 104);
    v43(v40, v41, v31);
    sub_1C4413988();
    v44 = v132;
    v43(v132, v41, v31);
    v45 = v130;
    v46 = v127;
    sub_1C440BAA8(v130, 1, 1, v127);
    v47 = v133;
    sub_1C45E1070(&v140);
    v129 = v47;
    if (v47)
    {
      sub_1C44686E4(v45);
      v48 = *(v42 + 8);
      v48(v44, v31);
      (*(v128 + 8))(v144, v46);
      v48(v40, v31);
      *(v39 + 16) = 0;
      swift_setDeallocating();
      return sub_1C49E167C();
    }

    v50 = (v40 + *(v125 + 12));
    sub_1C44686E4(v45);
    (*(v42 + 8))(v44, v31);
    v51 = *v141;
    *v50 = v140;
    v50[1] = v51;
    *(v50 + 25) = *&v141[9];
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4407E98();
    sub_1C4403DDC(v52, v53, MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
    v55 = v54;
    goto LABEL_12;
  }

  v129 = v26;
  v123 = v12;
  v125 = v23;
  v124 = v7;
  v127 = v29;
  v133 = 0;
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  v84 = v18;
  v85 = v127;
  (*(v18 + 32))(v127, v15, v16);
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v86 = sub_1C4F00978();
  sub_1C442B738(v86, qword_1EDE2DDE0);
  v87 = sub_1C4F00968();
  v88 = sub_1C4F01CD8();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v129;
  if (v89)
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_1C43F8000, v87, v88, "EntityRelevanceFeatureView: Mocked date context found in KeyValueStore.", v91, 2u);
    v85 = v127;
    sub_1C43FBE2C();
  }

  v92 = *(v84 + 16);
  v92(v90, v85, v16);
  v93 = sub_1C4F00968();
  v94 = v84;
  v95 = sub_1C4F01CD8();
  if (os_log_type_enabled(v93, v95))
  {
    v96 = swift_slowAlloc();
    v132 = v92;
    v97 = v96;
    v98 = swift_slowAlloc();
    v136[0] = v98;
    *v97 = 136315138;
    sub_1C4403DDC(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v99 = sub_1C4F02858();
    v100 = v90;
    v102 = v101;
    v144 = *(v94 + 8);
    v144(v100, v16);
    v103 = sub_1C441D828(v99, v102, v136);

    *(v97 + 4) = v103;
    _os_log_impl(&dword_1C43F8000, v93, v95, "EntityRelevanceFeatureView: Using %s as the context instead of reading from currentContext views.", v97, 0xCu);
    sub_1C440962C(v98);
    sub_1C43FBE2C();
    v92 = v132;
    sub_1C43FBE2C();
  }

  else
  {

    v144 = *(v94 + 8);
    v144(v90, v16);
  }

  v104 = v134;
  v92(v125, v127, v16);
  sub_1C44010E4();
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v105 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
  sub_1C440B56C(v105, &v141[24]);
  v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v108 = swift_allocObject();
  v56 = v16;
  *(v108 + 16) = xmmword_1C4F0D130;
  v132 = v108;
  v109 = *MEMORY[0x1E69A9418];
  v110 = *(v104 + 104);
  v130 = v108 + v107;
  v111 = v135;
  v110();
  sub_1C4413988();
  v112 = v124;
  (v110)(v124, v109, v111);
  v63 = v127;
  v68 = v112;
  v67 = v123;
  v92(v123, v127, v16);
  sub_1C440BAA8(v67, 0, 1, v16);
  v113 = v133;
  sub_1C45E1070(&v138);
  v129 = v113;
  if (v113)
  {
    sub_1C44686E4(v67);
    v114 = *(v134 + 8);
    v115 = v135;
    v114(v68, v135);
    v116 = v144;
    v144(v125, v56);
    v116(v63, v56);
    v114(v130, v115);
    *(v132 + 2) = 0;
    swift_setDeallocating();
    return sub_1C49E167C();
  }

LABEL_44:
  v117 = (v130 + *(v122[1] + 48));
  sub_1C44686E4(v67);
  (*(v134 + 8))(v68, v135);
  v118 = v139[0];
  *v117 = v138;
  v117[1] = v118;
  *(v117 + 25) = *(v139 + 9);
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4407E98();
  sub_1C4403DDC(v119, v120, MEMORY[0x1E69A9488]);
  sub_1C4F00F28();
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  v55 = v121;
  v144(v63, v56);
LABEL_12:
  v137 = MEMORY[0x1E69E7CC0];
  v133 = *(v126 + 16);
  v132 = (v126 + 32);

  v56 = 0;
  v130 = v55;
  while (v56 != v133)
  {
    v57 = &v132[48 * v56];
    v58 = *(v57 + 1);
    v142 = *v57;
    *v143 = v58;
    *&v143[9] = *(v57 + 25);
    sub_1C45A2358(&v142, v136);
    sub_1C4D50A90(&unk_1F43D6BC0);
    v60 = sub_1C4601874(&v142, v59, v55);

    if (v60)
    {
      v134 = v56;
      v144 = v60;
      v61 = [v60 featureNames];
      v62 = sub_1C4F01AB8();

      v63 = v62 + 56;
      v64 = 1 << *(v62 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & *(v62 + 56);
      v67 = (v64 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v68 = 0;
      v135 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v69 = v68;
        if (!v66)
        {
          break;
        }

LABEL_23:
        v70 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v71 = (*(v62 + 48) + ((v68 << 10) | (16 * v70)));
        v56 = *v71;
        v72 = v71[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v73 = sub_1C4F01108();
        v74 = [v144 featureValueForName_];

        if (v74)
        {
          v128 = sub_1C45D2400();
          v127 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B504();
            v135 = v81;
          }

          v76 = *(v135 + 16);
          v77 = v76 + 1;
          if (v76 >= *(v135 + 24) >> 1)
          {
            v126 = v76 + 1;
            sub_1C458B504();
            v77 = v126;
            v135 = v82;
          }

          v78 = v135;
          *(v135 + 16) = v77;
          v79 = (v78 + 40 * v76);
          v79[4] = v56;
          v79[5] = v72;
          v80 = v127;
          v79[6] = v128;
          v79[7] = v80;
          v79[8] = v74;
        }

        else
        {
        }
      }

      while (1)
      {
        v68 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v68 >= v67)
        {
          sub_1C45EC75C(&v142);

          swift_unknownObjectRelease();
          v55 = v130;
          v56 = v134;
          v83 = v135;
          goto LABEL_32;
        }

        v66 = *(v63 + 8 * v68);
        ++v69;
        if (v66)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    sub_1C45EC75C(&v142);
    v83 = MEMORY[0x1E69E7CC0];
LABEL_32:
    ++v56;
    sub_1C49D3A70(v83);
  }

  return v137;
}

void sub_1C4BF01BC()
{
  v2 = v0;
  v3 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_featurizer);
    if (v9)
    {
      sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider + 24));
      (*(v5 + 104))(v8, *MEMORY[0x1E69A9418], v3);

      v10 = sub_1C45EA9C0(v8);
      if (v1)
      {
        (*(v5 + 8))(v8, v3);
      }

      else
      {
        v16 = v10;
        (*(v5 + 8))(v8, v3);
        sub_1C4BEF2D0(v16, v9);

        v17 = v0[3];
        v18 = v0[4];
        v19 = v0[5];
        v20 = v0[6];
        v22[0] = v2[2];
        v22[1] = v17;
        v22[2] = v18;
        v22[3] = v19;
        v22[4] = v20;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C47D32C8();

        sub_1C4D0E5C0();
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v11 = sub_1C4F00978();
      sub_1C442B738(v11, qword_1EDE2DDE0);

      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CF8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config + 8), v22);
        _os_log_impl(&dword_1C43F8000, v12, v13, "%s: Featurizer is nil. Ignoring AllSources and returning", v14, 0xCu);
        sub_1C440962C(v15);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      sub_1C4D0E51C();
    }
  }
}

uint64_t sub_1C4BF0524()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_config);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore26EntityRelevanceFeatureView_histogramKeyProvider));

  return v0;
}

uint64_t sub_1C4BF05A8()
{
  sub_1C4BF0524();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceFeatureView(uint64_t a1)
{
  result = qword_1EDDE10A8;
  if (!qword_1EDDE10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4BF0654(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4BF0708()
{
  sub_1C4BF01BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4BF07B0()
{
  v1[13] = v0;
  v2 = sub_1C4F01828();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for BehaviorDigestRunSpecification(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  v1[23] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C4938, qword_1C4F5CCB0);
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4BF097C, 0, 0);
}

uint64_t sub_1C4BF097C()
{
  v52 = v0;
  v1 = v0[13];
  v2 = v1[2];
  v0[27] = v2;
  v0[28] = v1[3];
  v0[29] = v1[4];
  v3 = *(v2 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v4 = sub_1C4A72854(0, v3);
  v0[2] = v2;
  v0[3] = v4;
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v6 = v0[24];
    v7 = v0[22];
    sub_1C45F6EC8();
    sub_1C44CDA7C();
    v8 = 1;
    if (sub_1C44157D4(v6, 1, v7) != 1)
    {
      v9 = v0[28];
      v10 = v0[23];
      sub_1C44CDA7C();
      v9(v10);
      sub_1C4420C3C(v10, &qword_1EC0B9CF8, &unk_1C4F11660);
      v8 = 0;
    }

    v11 = v0[26];
    sub_1C440BAA8(v11, v8, 1, v0[18]);
    sub_1C4414160(v11);
    if (v12)
    {
      sub_1C43FDFF0();

      sub_1C43FBDA0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C442D650();
    sub_1C4BF85E8();
    if (p_info[205] != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    v0[30] = sub_1C442B738(v13, qword_1EDE2DDE0);
    sub_1C442D650();
    sub_1C4BF8590();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[20];
    if (v16)
    {
      sub_1C43FECF0();
      v18 = swift_slowAlloc();
      sub_1C43FEC60();
      v19 = swift_slowAlloc();
      v51[0] = v19;
      *v18 = 136315138;
      sub_1C4433E14();
      sub_1C4F02438();
      sub_1C442BA70();
      sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4F02438();
      v20 = v0[10];
      v21 = v0[11];
      sub_1C441A76C();
      sub_1C4BF8528(v17, v22);
      sub_1C441D828(v20, v21, v51);
      sub_1C4426A94();

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1C43F8000, v14, v15, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v18, 0xCu);
      sub_1C440962C(v19);
      v23 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v23);
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v17, v24);
    }

    v25 = v0[21];
    v26 = *(v25 + *(v0[18] + 20));
    v0[31] = v26;
    v27 = v26[2];
    v0[32] = v27;
    v0[33] = 0;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v27)
    {
      break;
    }

    sub_1C4BF8528(v25, type metadata accessor for BehaviorDigestRunSpecification);
  }

  if (v26[2])
  {
    v29 = v26[4];
    v0[34] = v29;
    v30 = v26[5];
    v0[35] = v30;
    swift_unknownObjectRetain();
    sub_1C4F01968();
    sub_1C442D650();
    sub_1C4BF8590();
    swift_unknownObjectRetain();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();
    swift_unknownObjectRelease();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[19];
    if (v35)
    {
      v37 = sub_1C440F274();
      v51[0] = swift_slowAlloc();
      *v37 = 136315394;
      v0[6] = v29;
      v0[7] = v30;
      swift_unknownObjectRetain();
      sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
      v38 = sub_1C4F01198();
      v40 = sub_1C441D828(v38, v39, v51);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v0[8] = 0;
      v0[9] = 0xE000000000000000;
      sub_1C4EF9CD8();
      sub_1C4F02438();
      sub_1C442BA70();
      sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4F02438();
      sub_1C441A76C();
      sub_1C4BF8528(v36, v41);
      v42 = sub_1C4402120();
      v45 = sub_1C441D828(v42, v43, v44);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1C43F8000, v33, v34, "BehaviorDigestBatchedTaskRunner: Running %s over %s", v37, 0x16u);
      swift_arrayDestroy();
      v46 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v46);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v36, v47);
    }

    swift_getObjectType();
    sub_1C4404280();
    v48 = swift_task_alloc();
    v0[36] = v48;
    *v48 = v0;
    sub_1C4412778(v48);
    sub_1C440405C();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4BF10F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4BF11EC()
{
  v51 = v0;
  result = swift_unknownObjectRelease();
  v3 = v0[32];
  v4 = v0[33] + 1;
  v49 = v0[37];
  p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
  while (1)
  {
    v0[33] = v4;
    if (v4 != v3)
    {
      break;
    }

    sub_1C441A76C();
    sub_1C4BF8528(v6, v7);

    v8 = v0[24];
    v1 = v0[22];
    sub_1C45F6EC8();
    sub_1C4402B58();
    sub_1C44CDA7C();
    v9 = 1;
    sub_1C4414160(v8);
    if (!v10)
    {
      v1 = v0[28];
      v11 = v0[23];
      sub_1C44CDA7C();
      v1(v11);
      sub_1C4420C3C(v11, &qword_1EC0B9CF8, &unk_1C4F11660);
      v9 = 0;
    }

    v12 = v0[26];
    v13 = v0[18];
    sub_1C440BAA8(v12, v9, 1, v13);
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C43FDFF0();

      sub_1C43FBDA0();
      goto LABEL_16;
    }

    sub_1C442D650();
    sub_1C4BF85E8();
    if (p_info[205] != -1)
    {
      swift_once();
    }

    v3 = v0[20];
    v14 = sub_1C4F00978();
    v0[30] = sub_1C442B738(v14, qword_1EDE2DDE0);
    sub_1C442D650();
    sub_1C4402120();
    sub_1C4BF8590();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[20];
    if (v17)
    {
      sub_1C43FECF0();
      v3 = swift_slowAlloc();
      sub_1C43FEC60();
      v1 = swift_slowAlloc();
      v50[0] = v1;
      *v3 = 136315138;
      sub_1C4433E14();
      sub_1C4F02438();
      sub_1C442BA70();
      sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C4F02438();
      sub_1C441A76C();
      sub_1C4BF8528(v18, v19);
      v20 = sub_1C4414A08();
      v23 = sub_1C441D828(v20, v21, v22);
      p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);

      *(v3 + 4) = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v3, 0xCu);
      sub_1C440962C(v1);
      v24 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v24);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C441A76C();
      sub_1C4BF8528(v18, v25);
    }

    result = sub_1C4415D1C();
    v4 = 0;
  }

  if (v4 < *(v0[31] + 16))
  {
    sub_1C440C770(v4);
    sub_1C4F01968();
    if (!v49)
    {
      sub_1C442D650();
      sub_1C4BF8590();
      swift_unknownObjectRetain();
      v30 = sub_1C4F00968();
      v31 = sub_1C4F01CF8();
      swift_unknownObjectRelease();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[19];
      if (v32)
      {
        v34 = sub_1C440F274();
        v50[0] = swift_slowAlloc();
        *v34 = 136315394;
        v0[6] = v3;
        v0[7] = v1;
        swift_unknownObjectRetain();
        sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
        v35 = sub_1C4F01198();
        sub_1C441D828(v35, v36, v50);

        sub_1C440BFE8();
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C442BA70();
        sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C441A76C();
        sub_1C4BF8528(v33, v37);
        v38 = sub_1C4414A08();
        v41 = sub_1C441D828(v38, v39, v40);

        *(v34 + 14) = v41;
        sub_1C4423D00(&dword_1C43F8000, v42, v43, "BehaviorDigestBatchedTaskRunner: Running %s over %s");
        swift_arrayDestroy();
        v44 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v44);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v33, v45);
      }

      swift_getObjectType();
      sub_1C4404280();
      v46 = swift_task_alloc();
      v0[36] = v46;
      *v46 = v0;
      sub_1C4412778(v46);
      sub_1C4409BA4();

      __asm { BRAA            X3, X16 }
    }

    v26 = v0[21];

    swift_unknownObjectRelease();
    sub_1C441A76C();
    sub_1C4BF8528(v26, v27);

    sub_1C440254C(v0[26]);

    sub_1C43FBDA0();
LABEL_16:
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

void sub_1C4BF18B8()
{
  v79 = v0;
  v1 = *(v0 + 296);
  *(v0 + 96) = v1;
  v2 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 296);
  if (v3)
  {
    v5 = *(v0 + 168);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);

    (*(v8 + 32))(v7, v6, v9);
    sub_1C4426130();
    sub_1C4472598(v10, v11, MEMORY[0x1E69E8558]);
    swift_allocError();
    (*(v8 + 16))(v12, v7, v9);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v7, v9);
    sub_1C441A76C();
    sub_1C4BF8528(v5, v13);

    sub_1C440254C(*(v0 + 208));

    sub_1C43FBDA0();
LABEL_20:

    v55();
  }

  else
  {

    swift_unknownObjectRetain();
    v14 = v4;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    swift_unknownObjectRelease();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 296);
    if (v17)
    {
      v76 = *(v0 + 272);
      v19 = sub_1C440F274();
      v20 = swift_slowAlloc();
      sub_1C43FEC60();
      v21 = swift_slowAlloc();
      v78[0] = v21;
      *v19 = 136315394;
      *(v0 + 32) = v76;
      swift_unknownObjectRetain();
      sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
      v22 = sub_1C4F01198();
      v24 = sub_1C441D828(v22, v23, v78);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      sub_1C4404B90();
      _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
      sub_1C4420C3C(v20, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C446C0A0(v21);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v32 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v32);

      swift_unknownObjectRelease();
    }

    else
    {
      v19 = *(v0 + 272);

      swift_unknownObjectRelease();
    }

    v33 = *(v0 + 256);
    v34 = *(v0 + 264) + 1;
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    while (1)
    {
      *(v0 + 264) = v34;
      if (v34 != v33)
      {
        break;
      }

      sub_1C441A76C();
      sub_1C4BF8528(v36, v37);

      v38 = *(v0 + 192);
      v39 = *(v0 + 176);
      sub_1C45F6EC8();
      sub_1C44CDA7C();
      v40 = 1;
      if (sub_1C44157D4(v38, 1, v39) != 1)
      {
        v41 = *(v0 + 224);
        v42 = *(v0 + 184);
        sub_1C44CDA7C();
        v41(v42);
        sub_1C4420C3C(v42, &qword_1EC0B9CF8, &unk_1C4F11660);
        v40 = 0;
      }

      v43 = *(v0 + 208);
      sub_1C440BAA8(v43, v40, 1, *(v0 + 144));
      sub_1C4414160(v43);
      if (v44)
      {
        sub_1C43FDFF0();

        sub_1C43FBDA0();
        goto LABEL_20;
      }

      sub_1C442D650();
      sub_1C4BF85E8();
      if (p_info[205] != -1)
      {
        swift_once();
      }

      v45 = sub_1C4F00978();
      v19 = sub_1C442B738(v45, qword_1EDE2DDE0);
      *(v0 + 240) = v19;
      sub_1C442D650();
      sub_1C4402120();
      sub_1C4BF8590();
      v46 = sub_1C4F00968();
      v47 = sub_1C4F01CF8();
      v48 = os_log_type_enabled(v46, v47);
      v33 = *(v0 + 160);
      if (v48)
      {
        sub_1C43FECF0();
        v49 = swift_slowAlloc();
        sub_1C43FEC60();
        v19 = swift_slowAlloc();
        v78[0] = v19;
        *v49 = 136315138;
        sub_1C4433E14();
        sub_1C4F02438();
        sub_1C442BA70();
        sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
        sub_1C4F02438();
        v50 = *(v0 + 80);
        v51 = *(v0 + 88);
        sub_1C441A76C();
        sub_1C4BF8528(v33, v52);
        sub_1C441D828(v50, v51, v78);
        sub_1C4426A94();
        p_info = (&OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore + 32);

        *(v49 + 4) = v50;
        _os_log_impl(&dword_1C43F8000, v46, v47, "BehaviorDigestBatchedTaskRunner: Running tasks over %s", v49, 0xCu);
        sub_1C440962C(v19);
        v53 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v53);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v33, v54);
      }

      sub_1C4415D1C();
      v34 = 0;
    }

    if (v34 >= *(*(v0 + 248) + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C440C770(v34);
      sub_1C4F01968();
      sub_1C442D650();
      sub_1C4BF8590();
      swift_unknownObjectRetain();
      v56 = sub_1C4F00968();
      v57 = sub_1C4F01CF8();
      swift_unknownObjectRelease();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 152);
      if (v58)
      {
        v60 = sub_1C440F274();
        v78[0] = swift_slowAlloc();
        *v60 = 136315394;
        *(v0 + 48) = v33;
        *(v0 + 56) = v19;
        swift_unknownObjectRetain();
        sub_1C456902C(&qword_1EC0B88A8, &qword_1C4F115E0);
        v61 = sub_1C4F01198();
        sub_1C441D828(v61, v62, v78);

        sub_1C440BFE8();
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C442BA70();
        sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
        sub_1C44185F8();
        sub_1C4F02438();
        sub_1C441A76C();
        sub_1C4BF8528(v59, v63);
        v64 = sub_1C4414A08();
        v67 = sub_1C441D828(v64, v65, v66);

        *(v60 + 14) = v67;
        sub_1C4423D00(&dword_1C43F8000, v68, v69, "BehaviorDigestBatchedTaskRunner: Running %s over %s");
        swift_arrayDestroy();
        v70 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v70);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        sub_1C441A76C();
        sub_1C4BF8528(v59, v71);
      }

      ObjectType = swift_getObjectType();
      sub_1C4404280();
      v77 = (v73 + *v73);
      v74 = swift_task_alloc();
      *(v0 + 288) = v74;
      *v74 = v0;
      v75 = sub_1C4412778(v74);

      v77(v75, ObjectType, v19);
    }
  }
}