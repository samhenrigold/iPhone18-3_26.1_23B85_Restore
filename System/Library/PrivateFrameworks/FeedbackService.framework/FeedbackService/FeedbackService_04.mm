uint64_t FBKSInteraction.AnnotatedContent.withIconType(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v73 = a1[1];
  v9 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v10 = (v3 + v9[9]);
  v11 = v10[1];
  if (v11 == 38)
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v12 = sub_1B014CB5C();
    __swift_project_value_buffer(v12, qword_1EDAE7828);
    v13 = v73;
    sub_1B012E464(v8, v73);
    v14 = sub_1B014CB3C();
    v15 = sub_1B014CF2C();
    sub_1B0130200(v8, v13);
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_14;
    }

    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74 = v71;
    *v16 = 136315138;
    v76 = v8;
    v77 = v73;
    v17 = FBKSInteraction.AnnotatedContent.IconType.stringValue.getter();
    v19 = sub_1B00E6C2C(v17, v18, &v74);

    *(v16 + 4) = v19;
    v20 = "Icon type is nil. Setting icon type to: [%s]";
    goto LABEL_13;
  }

  v21 = *v10;
  v76 = *v10;
  v77 = v11;
  if (v73 == 38)
  {
    sub_1B012E464(v8, 0x26uLL);
    sub_1B0130214(v21, v11);
    sub_1B0130214(v21, v11);
    sub_1B0130200(v21, v11);
    sub_1B0130224(v21, v11);
    sub_1B0130224(v8, 0x26uLL);
  }

  else
  {
    v74 = v8;
    v75 = v73;
    sub_1B012E464(v8, v73);
    sub_1B0130214(v21, v11);
    sub_1B0130214(v21, v11);
    v22 = _s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeO2eeoiySbAG_AGtFZ_0(&v76, &v74);
    sub_1B0130200(v74, v75);
    sub_1B0130200(v76, v77);
    sub_1B0130224(v21, v11);
    if (v22)
    {
      goto LABEL_15;
    }
  }

  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v23 = sub_1B014CB5C();
  __swift_project_value_buffer(v23, qword_1EDAE7828);
  v24 = v73;
  sub_1B012E464(v8, v73);
  v14 = sub_1B014CB3C();
  v15 = sub_1B014CF6C();
  sub_1B0130200(v8, v24);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74 = v71;
    *v16 = 136315138;
    v76 = v8;
    v77 = v73;
    v25 = FBKSInteraction.AnnotatedContent.IconType.stringValue.getter();
    v27 = sub_1B00E6C2C(v25, v26, &v74);

    *(v16 + 4) = v27;
    v20 = "Replacing IconType with: [%s]";
LABEL_13:
    _os_log_impl(&dword_1B00C4000, v14, v15, v20, v16, 0xCu);
    v28 = v71;
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x1B271F750](v28, -1, -1);
    MEMORY[0x1B271F750](v16, -1, -1);
  }

LABEL_14:

LABEL_15:
  sub_1B01306BC(v3, v72, type metadata accessor for FBKSInteraction.Content);
  v29 = v9[6];
  v30 = v3 + v9[5];
  v31 = *v30;
  v32 = *(v30 + 8);
  v70 = v8;
  v71 = v31;
  v33 = *(v3 + v29);
  v34 = *(v3 + v29 + 8);
  v35 = (v3 + v9[7]);
  v36 = *v35;
  v37 = v35[1];
  v38 = (v3 + v9[8]);
  v39 = *v38;
  v40 = v38[1];
  v68 = v36;
  v69 = v39;
  v41 = *(v3 + v9[10]);
  if ((v37 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v42 = v36 & 0xFFFFFFFFFFFFLL;
  }

  sub_1B012E464(v8, v73);
  if (v42)
  {
  }

  else
  {
    v67 = v33;
    v43 = qword_1EDAE7070;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_1B014CB5C();
    __swift_project_value_buffer(v44, qword_1EDAE7828);
    v45 = sub_1B014CB3C();
    v46 = sub_1B014CF5C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v34;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1B00C4000, v45, v46, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v48, 2u);
      v49 = v48;
      v34 = v47;
      MEMORY[0x1B271F750](v49, -1, -1);
    }

    v33 = v67;
  }

  v50 = v71;
  v51 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v51 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
    v67 = v33;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v52 = sub_1B014CB5C();
    __swift_project_value_buffer(v52, qword_1EDAE7828);
    v53 = sub_1B014CB3C();
    v54 = sub_1B014CF5C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v34;
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1B00C4000, v53, v54, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v56, 2u);
      v57 = v56;
      v34 = v55;
      v50 = v71;
      MEMORY[0x1B271F750](v57, -1, -1);
    }

    v33 = v67;
  }

  result = sub_1B0130234(v72, a2, type metadata accessor for FBKSInteraction.Content);
  v59 = (a2 + v9[5]);
  *v59 = v50;
  v59[1] = v32;
  v60 = (a2 + v9[6]);
  *v60 = v33;
  v60[1] = v34;
  v61 = (a2 + v9[7]);
  v62 = v69;
  *v61 = v68;
  v61[1] = v37;
  v63 = (a2 + v9[8]);
  *v63 = v62;
  v63[1] = v40;
  *(a2 + v9[10]) = v41;
  v64 = (a2 + v9[9]);
  v65 = v73;
  *v64 = v70;
  v64[1] = v65;
  return result;
}

double FBKSInteraction.AnnotatedContent.withAdditionalInformation(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v11 = sub_1B014CB5C();
  v56 = __swift_project_value_buffer(v11, qword_1EDAE7828);
  v12 = sub_1B014CB3C();
  v13 = sub_1B014CF6C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v65 = v16;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B00E6C2C(0xD00000000000001DLL, 0x80000001B015DAE0, &v65);
    _os_log_impl(&dword_1B00C4000, v12, v13, "%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B271F750](v16, -1, -1);
    MEMORY[0x1B271F750](v14, -1, -1);
  }

  else
  {
    v15 = a1;
  }

  v63 = v10;
  sub_1B01306BC(v3, v10, type metadata accessor for FBKSInteraction.Content);
  v17 = (v3 + v5[5]);
  v19 = *v17;
  v18 = v17[1];
  v20 = (v3 + v5[6]);
  v21 = v20[1];
  v62 = *v20;
  v22 = (v3 + v5[7]);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v3 + v5[8]);
  v27 = *v25;
  v26 = v25[1];
  v57 = v23;
  v58 = v27;
  v28 = (v3 + v5[9]);
  v29 = v21;
  v31 = *v28;
  v30 = v28[1];
  if ((v24 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v32 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v59 = v26;

  v60 = v30;
  v61 = v31;
  sub_1B0130214(v31, v30);
  v33 = v15;
  if (!v32)
  {
    v55 = v15;
    v34 = sub_1B014CB3C();
    v35 = sub_1B014CF5C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v54 = v29;
      v37 = v36;
      *v36 = 0;
      _os_log_impl(&dword_1B00C4000, v34, v35, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v36, 2u);
      v38 = v37;
      v29 = v54;
      MEMORY[0x1B271F750](v38, -1, -1);
    }

    v33 = v55;
  }

  v39 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v39 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
    v40 = sub_1B014CB3C();
    v41 = sub_1B014CF5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = v29;
      v43 = v42;
      *v42 = 0;
      _os_log_impl(&dword_1B00C4000, v40, v41, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v42, 2u);
      v44 = v43;
      v29 = v54;
      MEMORY[0x1B271F750](v44, -1, -1);
    }
  }

  sub_1B0130234(v63, v7, type metadata accessor for FBKSInteraction.Content);
  v45 = &v7[v5[5]];
  *v45 = v19;
  *(v45 + 1) = v18;
  v46 = &v7[v5[6]];
  *v46 = v62;
  *(v46 + 1) = v29;
  v47 = &v7[v5[7]];
  v48 = v58;
  *v47 = v57;
  *(v47 + 1) = v24;
  v49 = &v7[v5[8]];
  v50 = v59;
  *v49 = v48;
  *(v49 + 1) = v50;
  *&v7[v5[10]] = v33;
  v51 = &v7[v5[9]];
  v52 = v60;
  *v51 = v61;
  *(v51 + 1) = v52;
  sub_1B0130234(v7, v64, type metadata accessor for FBKSInteraction.AnnotatedContent);

  return result;
}

uint64_t FBKSInteraction.AnnotatedContent.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 20));

  return v1;
}

uint64_t FBKSInteraction.AnnotatedContent.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 24));

  return v1;
}

uint64_t FBKSInteraction.AnnotatedContent.fileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 28));

  return v1;
}

uint64_t FBKSInteraction.AnnotatedContent.group.getter()
{
  v1 = *(v0 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 32));

  return v1;
}

double FBKSInteraction.AnnotatedContent.iconType.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1B0130214(v4, v5);
}

double FBKSInteraction.AnnotatedContent.additionalInfo.getter()
{
  type metadata accessor for FBKSInteraction.AnnotatedContent(0);

  return result;
}

uint64_t FBKSInteraction.AnnotatedContent.itemCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for FBKSInteraction.AnnotatedContent(0) + 40));
  if (v1)
  {
    if (*(v1 + 16))
    {
      result = sub_1B013E0D0(0x6E756F436D657469, 0xE900000000000074);
      if (v3)
      {
        v4 = (*(v1 + 56) + 16 * result);
        v5 = *v4;
        v6 = v4[1];
        v7 = HIBYTE(v6) & 0xF;
        v8 = *v4 & 0xFFFFFFFFFFFFLL;
        if ((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : *v4 & 0xFFFFFFFFFFFFLL)
        {
          if ((v6 & 0x1000000000000000) == 0)
          {
            if ((v6 & 0x2000000000000000) != 0)
            {
              v34[0] = *v4;
              v34[1] = v6 & 0xFFFFFFFFFFFFFFLL;
              if (v5 == 43)
              {
                if (!v7)
                {
LABEL_74:
                  __break(1u);
                  return result;
                }

                v10 = v7 - 1;
                if (v7 != 1)
                {
                  result = 0;
                  v23 = v34 + 1;
                  while (1)
                  {
                    v24 = *v23 - 48;
                    if (v24 > 9)
                    {
                      break;
                    }

                    v25 = 10 * result;
                    if ((result * 10) >> 64 != (10 * result) >> 63)
                    {
                      break;
                    }

                    result = v25 + v24;
                    if (__OFADD__(v25, v24))
                    {
                      break;
                    }

                    ++v23;
                    if (!--v10)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }

              else if (v5 == 45)
              {
                if (!v7)
                {
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

                v10 = v7 - 1;
                if (v7 != 1)
                {
                  result = 0;
                  v16 = v34 + 1;
                  while (1)
                  {
                    v17 = *v16 - 48;
                    if (v17 > 9)
                    {
                      break;
                    }

                    v18 = 10 * result;
                    if ((result * 10) >> 64 != (10 * result) >> 63)
                    {
                      break;
                    }

                    result = v18 - v17;
                    if (__OFSUB__(v18, v17))
                    {
                      break;
                    }

                    ++v16;
                    if (!--v10)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }

              else if (v7)
              {
                result = 0;
                v28 = v34;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * result;
                  if ((result * 10) >> 64 != (10 * result) >> 63)
                  {
                    break;
                  }

                  result = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v7)
                  {
LABEL_63:
                    LOBYTE(v10) = 0;
                    goto LABEL_65;
                  }
                }
              }
            }

            else
            {
              if ((v5 & 0x1000000000000000) != 0)
              {
                v10 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                result = sub_1B014D06C();
                v10 = result;
              }

              v11 = *v10;
              if (v11 == 43)
              {
                if (v8 >= 1)
                {
                  v19 = v8 - 1;
                  if (v8 != 1)
                  {
                    result = 0;
                    if (!v10)
                    {
                      goto LABEL_65;
                    }

                    v20 = (v10 + 1);
                    while (1)
                    {
                      v21 = *v20 - 48;
                      if (v21 > 9)
                      {
                        break;
                      }

                      v22 = 10 * result;
                      if ((result * 10) >> 64 != (10 * result) >> 63)
                      {
                        break;
                      }

                      result = v22 + v21;
                      if (__OFADD__(v22, v21))
                      {
                        break;
                      }

                      ++v20;
                      if (!--v19)
                      {
                        goto LABEL_63;
                      }
                    }
                  }

                  goto LABEL_64;
                }

                goto LABEL_73;
              }

              if (v11 == 45)
              {
                if (v8 >= 1)
                {
                  v12 = v8 - 1;
                  if (v8 != 1)
                  {
                    result = 0;
                    if (!v10)
                    {
                      goto LABEL_65;
                    }

                    v13 = (v10 + 1);
                    while (1)
                    {
                      v14 = *v13 - 48;
                      if (v14 > 9)
                      {
                        break;
                      }

                      v15 = 10 * result;
                      if ((result * 10) >> 64 != (10 * result) >> 63)
                      {
                        break;
                      }

                      result = v15 - v14;
                      if (__OFSUB__(v15, v14))
                      {
                        break;
                      }

                      ++v13;
                      if (!--v12)
                      {
                        goto LABEL_63;
                      }
                    }
                  }

                  goto LABEL_64;
                }

                __break(1u);
                goto LABEL_72;
              }

              if (v8)
              {
                result = 0;
                if (!v10)
                {
                  goto LABEL_65;
                }

                while (1)
                {
                  v26 = *v10 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v27 = 10 * result;
                  if ((result * 10) >> 64 != (10 * result) >> 63)
                  {
                    break;
                  }

                  result = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    break;
                  }

                  ++v10;
                  if (!--v8)
                  {
                    goto LABEL_63;
                  }
                }
              }
            }

LABEL_64:
            result = 0;
            LOBYTE(v10) = 1;
LABEL_65:
            v35 = v10;
            if ((v10 & 1) == 0)
            {
              return result;
            }

            return 0;
          }

          v31 = sub_1B012E4EC(v5, v6, 10);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            return v31;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B012D6D4()
{
  v1 = *v0;
  v2 = 0x64616F6C796170;
  v3 = 0x657079546E6F6369;
  if (v1 != 5)
  {
    v3 = 0x6E6F697469646461;
  }

  v4 = 0x656D614E656C6966;
  if (v1 != 3)
  {
    v4 = 0x70756F7267;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E79616C70736964;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B012D7C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0131390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B012D7F0(uint64_t a1)
{
  v2 = sub_1B0130510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012D82C(uint64_t a1)
{
  v2 = sub_1B0130510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.AnnotatedContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DC8, &unk_1B0156A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B0130510();
  sub_1B014D35C();
  LOBYTE(v15) = 0;
  type metadata accessor for FBKSInteraction.Content(0);
  sub_1B01305B8(&qword_1EDAE7230, &protocol conformance descriptor for FBKSInteraction.Content);
  sub_1B014D21C();
  if (!v2)
  {
    v9 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
    LOBYTE(v15) = 1;
    sub_1B014D1DC();
    LOBYTE(v15) = 2;
    sub_1B014D1DC();
    LOBYTE(v15) = 3;
    sub_1B014D1DC();
    LOBYTE(v15) = 4;
    sub_1B014D1AC();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 5;
    sub_1B0130214(v15, v11);
    sub_1B0130564();
    sub_1B014D1CC();
    sub_1B0130224(v15, v16);
    v15 = *(v3 + *(v9 + 40));
    v14 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A00, &qword_1B0156540);
    sub_1B0130650(&qword_1EDAE6F60, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1B014D1CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FBKSInteraction.AnnotatedContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DD0, &qword_1B0156A28);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v30 - v6;
  v8 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1B0130510();
  v12 = v7;
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v13 = v32;
  v14 = v10;
  LOBYTE(v36) = 0;
  sub_1B01305B8(&qword_1EDAE6B28, &protocol conformance descriptor for FBKSInteraction.Content);
  v16 = v33;
  v15 = v34;
  sub_1B014D17C();
  sub_1B0130234(v16, v14, type metadata accessor for FBKSInteraction.Content);
  LOBYTE(v36) = 1;
  v17 = sub_1B014D13C();
  v18 = (v14 + v8[5]);
  *v18 = v17;
  v18[1] = v19;
  LOBYTE(v36) = 2;
  v20 = sub_1B014D13C();
  v21 = (v14 + v8[6]);
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v36) = 3;
  v23 = sub_1B014D13C();
  v24 = (v14 + v8[7]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v36) = 4;
  v26 = sub_1B014D10C();
  v27 = (v14 + v8[8]);
  *v27 = v26;
  v27[1] = v28;
  v37 = 5;
  sub_1B01305FC();
  sub_1B014D12C();
  *(v14 + v8[9]) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A00, &qword_1B0156540);
  v37 = 6;
  sub_1B0130650(&qword_1EDAE6AB8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1B014D12C();
  (*(v13 + 8))(v12, v15);
  *(v14 + v8[10]) = v36;
  sub_1B01306BC(v14, v31, type metadata accessor for FBKSInteraction.AnnotatedContent);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return sub_1B0130724(v14, type metadata accessor for FBKSInteraction.AnnotatedContent);
}

uint64_t FBKSInteraction.AnnotatedContent.saveExtendedAttributes(inURL:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1B014CA4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v9 = sub_1B014CB5C();
  __swift_project_value_buffer(v9, qword_1EDAE7828);
  v10 = *(v6 + 16);
  v37 = a1;
  v10(v8, a1, v5);
  v11 = sub_1B014CB3C();
  v12 = sub_1B014CF3C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v34[1] = v2;
    v14 = v13;
    v34[0] = swift_slowAlloc();
    v35 = v34[0];
    *v14 = 136446466;
    *(v14 + 4) = sub_1B00E6C2C(0xD00000000000001ELL, 0x80000001B015DB60, &v35);
    *(v14 + 12) = 2080;
    v15 = sub_1B014CA1C();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_1B00E6C2C(v15, v17, &v35);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_1B00C4000, v11, v12, "%{public}s URL: %s", v14, 0x16u);
    v19 = v34[0];
    swift_arrayDestroy();
    MEMORY[0x1B271F750](v19, -1, -1);
    MEMORY[0x1B271F750](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v21 = v3 + v20[5];
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = (v3 + v20[6]);
  v25 = *v24;
  v26 = v24[1];
  v27 = (v3 + v20[8]);
  v28 = *v27;
  v29 = v27[1];
  v30 = (v3 + v20[9]);
  v31 = v30[1];
  v35 = *v30;
  v36 = v31;
  v32 = *(v3 + v20[10]);
  sub_1B0130214(v35, v31);
  sub_1B0143AF0(v37, v22, v23, v25, v26, v28, v29, &v35, v32);
  return sub_1B0130224(v35, v36);
}

double sub_1B012E464(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x26)
  {
  }

  return result;
}

void *sub_1B012E478(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DD0, &unk_1B0158CC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1B012E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B014CD9C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B012EA78(result, v5);
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
      result = sub_1B014D06C();
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

uint64_t sub_1B012EA78(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B014CDAC();
  v6 = sub_1B012EAF8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B012EAF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B014CFCC();
    if (!v9 || (v10 = v9, v11 = sub_1B012E478(v9, 0), v12 = sub_1B012EC50(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B014CC9C();

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
      return sub_1B014CC9C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B014D06C();
LABEL_4:

  return sub_1B014CC9C();
}

unint64_t sub_1B012EC50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1B012EE70(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B014CD5C();
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
          result = sub_1B014D06C();
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

    result = sub_1B012EE70(v12, a6, a7);
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

    result = sub_1B014CD3C();
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

unint64_t sub_1B012EE70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B014CD6C();
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
    v5 = MEMORY[0x1B271E840](15, a1 >> 16);
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

uint64_t _s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_86;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_84;
      }

      v8 = 1;
      sub_1B0130200(*a1, 1uLL);
      sub_1B0130200(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_86;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_86;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_86;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_86;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_86;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_86;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_86;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_86;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_86;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_86;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_86;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_86;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_86;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_86;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_86;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_86;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_86;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_86;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_86;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_86;
    case 0x16uLL:
      if (v5 != 22)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x16uLL);
      v6 = v4;
      v7 = 22;
      goto LABEL_86;
    case 0x17uLL:
      if (v5 != 23)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x17uLL);
      v6 = v4;
      v7 = 23;
      goto LABEL_86;
    case 0x18uLL:
      if (v5 != 24)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x18uLL);
      v6 = v4;
      v7 = 24;
      goto LABEL_86;
    case 0x19uLL:
      if (v5 != 25)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x19uLL);
      v6 = v4;
      v7 = 25;
      goto LABEL_86;
    case 0x1AuLL:
      if (v5 != 26)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1AuLL);
      v6 = v4;
      v7 = 26;
      goto LABEL_86;
    case 0x1BuLL:
      if (v5 != 27)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1BuLL);
      v6 = v4;
      v7 = 27;
      goto LABEL_86;
    case 0x1CuLL:
      if (v5 != 28)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1CuLL);
      v6 = v4;
      v7 = 28;
      goto LABEL_86;
    case 0x1DuLL:
      if (v5 != 29)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1DuLL);
      v6 = v4;
      v7 = 29;
      goto LABEL_86;
    case 0x1EuLL:
      if (v5 != 30)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1EuLL);
      v6 = v4;
      v7 = 30;
      goto LABEL_86;
    case 0x1FuLL:
      if (v5 != 31)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x1FuLL);
      v6 = v4;
      v7 = 31;
      goto LABEL_86;
    case 0x20uLL:
      if (v5 != 32)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x20uLL);
      v6 = v4;
      v7 = 32;
      goto LABEL_86;
    case 0x21uLL:
      if (v5 != 33)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x21uLL);
      v6 = v4;
      v7 = 33;
      goto LABEL_86;
    case 0x22uLL:
      if (v5 != 34)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x22uLL);
      v6 = v4;
      v7 = 34;
      goto LABEL_86;
    case 0x23uLL:
      if (v5 != 35)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x23uLL);
      v6 = v4;
      v7 = 35;
      goto LABEL_86;
    case 0x24uLL:
      if (v5 != 36)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x24uLL);
      v6 = v4;
      v7 = 36;
      goto LABEL_86;
    case 0x25uLL:
      if (v5 != 37)
      {
        goto LABEL_84;
      }

      sub_1B0130200(*a1, 0x25uLL);
      v6 = v4;
      v7 = 37;
      goto LABEL_86;
    default:
      if (v5 < 0x26)
      {
LABEL_84:
        sub_1B012E464(*a2, *(a2 + 8));
        sub_1B012E464(v2, v3);
        sub_1B0130200(v2, v3);
        sub_1B0130200(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1B014D25C();
          sub_1B012E464(v4, v5);
          sub_1B012E464(v2, v3);
          sub_1B0130200(v2, v3);
          sub_1B0130200(v4, v5);
          return v11 & 1;
        }

        sub_1B012E464(v9, v3);
        sub_1B012E464(v2, v3);
        sub_1B0130200(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_86:
        sub_1B0130200(v6, v7);
        return 1;
      }
  }
}

unint64_t sub_1B012F4E0()
{
  result = qword_1EDAE6DC8;
  if (!qword_1EDAE6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DC8);
  }

  return result;
}

unint64_t sub_1B012F534()
{
  result = qword_1EDAE6DB0;
  if (!qword_1EDAE6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DB0);
  }

  return result;
}

unint64_t sub_1B012F588()
{
  result = qword_1EB6C4B58;
  if (!qword_1EB6C4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B58);
  }

  return result;
}

unint64_t sub_1B012F5DC()
{
  result = qword_1EB6C4B60;
  if (!qword_1EB6C4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B60);
  }

  return result;
}

unint64_t sub_1B012F630()
{
  result = qword_1EB6C4B68;
  if (!qword_1EB6C4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B68);
  }

  return result;
}

unint64_t sub_1B012F684()
{
  result = qword_1EB6C4B70;
  if (!qword_1EB6C4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B70);
  }

  return result;
}

unint64_t sub_1B012F6D8()
{
  result = qword_1EB6C4B78;
  if (!qword_1EB6C4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B78);
  }

  return result;
}

unint64_t sub_1B012F72C()
{
  result = qword_1EB6C4B80;
  if (!qword_1EB6C4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B80);
  }

  return result;
}

unint64_t sub_1B012F780()
{
  result = qword_1EB6C4B88;
  if (!qword_1EB6C4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B88);
  }

  return result;
}

unint64_t sub_1B012F7D4()
{
  result = qword_1EB6C4B90;
  if (!qword_1EB6C4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B90);
  }

  return result;
}

unint64_t sub_1B012F828()
{
  result = qword_1EB6C4B98;
  if (!qword_1EB6C4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4B98);
  }

  return result;
}

unint64_t sub_1B012F87C()
{
  result = qword_1EB6C4BA0;
  if (!qword_1EB6C4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BA0);
  }

  return result;
}

unint64_t sub_1B012F8D0()
{
  result = qword_1EB6C4BA8;
  if (!qword_1EB6C4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BA8);
  }

  return result;
}

unint64_t sub_1B012F924()
{
  result = qword_1EB6C4BB0;
  if (!qword_1EB6C4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BB0);
  }

  return result;
}

unint64_t sub_1B012F978()
{
  result = qword_1EB6C4BB8;
  if (!qword_1EB6C4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BB8);
  }

  return result;
}

unint64_t sub_1B012F9CC()
{
  result = qword_1EB6C4BC0;
  if (!qword_1EB6C4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BC0);
  }

  return result;
}

unint64_t sub_1B012FA20()
{
  result = qword_1EB6C4BC8;
  if (!qword_1EB6C4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BC8);
  }

  return result;
}

unint64_t sub_1B012FA74()
{
  result = qword_1EB6C4BD0;
  if (!qword_1EB6C4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BD0);
  }

  return result;
}

unint64_t sub_1B012FAC8()
{
  result = qword_1EB6C4BD8;
  if (!qword_1EB6C4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BD8);
  }

  return result;
}

unint64_t sub_1B012FB1C()
{
  result = qword_1EB6C4BE0;
  if (!qword_1EB6C4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BE0);
  }

  return result;
}

unint64_t sub_1B012FB70()
{
  result = qword_1EB6C4BE8;
  if (!qword_1EB6C4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BE8);
  }

  return result;
}

unint64_t sub_1B012FBC4()
{
  result = qword_1EB6C4BF0;
  if (!qword_1EB6C4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BF0);
  }

  return result;
}

unint64_t sub_1B012FC18()
{
  result = qword_1EB6C4BF8;
  if (!qword_1EB6C4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4BF8);
  }

  return result;
}

unint64_t sub_1B012FC6C()
{
  result = qword_1EB6C4C00;
  if (!qword_1EB6C4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C00);
  }

  return result;
}

unint64_t sub_1B012FCC0()
{
  result = qword_1EB6C4C08;
  if (!qword_1EB6C4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C08);
  }

  return result;
}

unint64_t sub_1B012FD14()
{
  result = qword_1EB6C4C10;
  if (!qword_1EB6C4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C10);
  }

  return result;
}

unint64_t sub_1B012FD68()
{
  result = qword_1EB6C4C18;
  if (!qword_1EB6C4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C18);
  }

  return result;
}

unint64_t sub_1B012FDBC()
{
  result = qword_1EB6C4C20;
  if (!qword_1EB6C4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C20);
  }

  return result;
}

unint64_t sub_1B012FE10()
{
  result = qword_1EB6C4C28;
  if (!qword_1EB6C4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C28);
  }

  return result;
}

unint64_t sub_1B012FE64()
{
  result = qword_1EB6C4C30;
  if (!qword_1EB6C4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C30);
  }

  return result;
}

unint64_t sub_1B012FEB8()
{
  result = qword_1EB6C4C38;
  if (!qword_1EB6C4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C38);
  }

  return result;
}

unint64_t sub_1B012FF0C()
{
  result = qword_1EB6C4C40;
  if (!qword_1EB6C4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C40);
  }

  return result;
}

unint64_t sub_1B012FF60()
{
  result = qword_1EB6C4C48;
  if (!qword_1EB6C4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C48);
  }

  return result;
}

unint64_t sub_1B012FFB4()
{
  result = qword_1EB6C4C50;
  if (!qword_1EB6C4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C50);
  }

  return result;
}

unint64_t sub_1B0130008()
{
  result = qword_1EB6C4C58;
  if (!qword_1EB6C4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C58);
  }

  return result;
}

unint64_t sub_1B013005C()
{
  result = qword_1EB6C4C60;
  if (!qword_1EB6C4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C60);
  }

  return result;
}

unint64_t sub_1B01300B0()
{
  result = qword_1EB6C4C68;
  if (!qword_1EB6C4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C68);
  }

  return result;
}

unint64_t sub_1B0130104()
{
  result = qword_1EB6C4C70;
  if (!qword_1EB6C4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C70);
  }

  return result;
}

unint64_t sub_1B0130158()
{
  result = qword_1EB6C4C78;
  if (!qword_1EB6C4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C78);
  }

  return result;
}

unint64_t sub_1B01301AC()
{
  result = qword_1EB6C4C80;
  if (!qword_1EB6C4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4C80);
  }

  return result;
}

uint64_t sub_1B0130200(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x26)
  {
  }

  return result;
}

double sub_1B0130214(uint64_t a1, unint64_t a2)
{
  if (a2 != 38)
  {
    return sub_1B012E464(a1, a2);
  }

  return result;
}

uint64_t sub_1B0130224(uint64_t a1, unint64_t a2)
{
  if (a2 != 38)
  {
    return sub_1B0130200(a1, a2);
  }

  return a1;
}

uint64_t sub_1B0130234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15FeedbackService15FBKSInteractionC16AnnotatedContentV2eeoiySbAE_AEtFZ_0(char *a1, void *a2)
{
  if ((_s15FeedbackService15FBKSInteractionC7ContentO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v5 = v4[5];
  v6 = *&a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *&a1[v10];
  v12 = *&a1[v10 + 8];
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *&a1[v15];
  v17 = *&a1[v15 + 8];
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B014D25C() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[8];
  v21 = &a1[v20];
  v22 = *&a1[v20 + 8];
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = *v21 == *v23 && v22 == v24;
    if (!v25 && (sub_1B014D25C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = v4[9];
  v27 = *&a1[v26];
  v28 = *&a1[v26 + 8];
  v29 = (a2 + v26);
  v30 = *v29;
  v31 = v29[1];
  if (v28 != 38)
  {
    v40 = v27;
    v41 = v28;
    if (v31 != 38)
    {
      v38 = v30;
      v39 = v31;
      sub_1B0130214(v27, v28);
      sub_1B0130214(v30, v31);
      sub_1B0130214(v27, v28);
      v33 = _s15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeO2eeoiySbAG_AGtFZ_0(&v40, &v38);
      sub_1B0130200(v38, v39);
      sub_1B0130200(v40, v41);
      sub_1B0130224(v27, v28);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }

    sub_1B0130214(v27, v28);
    sub_1B0130214(v30, 0x26uLL);
    sub_1B0130214(v27, v28);
    sub_1B0130200(v27, v28);
LABEL_32:
    sub_1B0130224(v27, v28);
    sub_1B0130224(v30, v31);
    return 0;
  }

  sub_1B0130214(v27, 0x26uLL);
  if (v31 != 38)
  {
    sub_1B0130214(v30, v31);
    goto LABEL_32;
  }

  sub_1B0130214(v30, 0x26uLL);
  sub_1B0130224(v27, 0x26uLL);
LABEL_36:
  v34 = v4[10];
  v35 = *&a1[v34];
  v36 = *(a2 + v34);
  if (v35)
  {
    if (v36)
    {

      v37 = sub_1B00D55B0(v35, v36);

      if (v37)
      {
        return 1;
      }
    }
  }

  else if (!v36)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B0130510()
{
  result = qword_1EDAE6F88;
  if (!qword_1EDAE6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F88);
  }

  return result;
}

unint64_t sub_1B0130564()
{
  result = qword_1EDAE6F70;
  if (!qword_1EDAE6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F70);
  }

  return result;
}

uint64_t sub_1B01305B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSInteraction.Content(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B01305FC()
{
  result = qword_1EDAE6AE0;
  if (!qword_1EDAE6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6AE0);
  }

  return result;
}

uint64_t sub_1B0130650(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4A00, &qword_1B0156540);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B01306BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0130724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0130784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015D820 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657268546C69616DLL && a2 == 0xEA00000000006461 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D840 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xED00006567617373 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B015D860 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D800 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015D880 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B015D8A0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B015D8C0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B015D8E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015D900 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D920 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015DA40 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6172546F69647561 && a2 == 0xEF7470697263736ELL || (sub_1B014D25C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B015D940 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6552697269536564 && a2 == 0xED00007473657571 || (sub_1B014D25C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015D960 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B015D980 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x7571655269726973 && a2 == 0xEB00000000747365 || (sub_1B014D25C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D9A0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D9C0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x756F537466697773 && a2 == 0xEF656C6946656372 || (sub_1B014D25C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B015DA00 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6C6F467466697773 && a2 == 0xEB00000000726564 || (sub_1B014D25C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B015DA20 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015DA60 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015DA80 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B015DAA0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B015DAC0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015D9E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369 || (sub_1B014D25C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x7261726F706D6574 && a2 == 0xE900000000000079 || (sub_1B014D25C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D7E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x6574746972776572 && a2 == 0xE90000000000006ELL || (sub_1B014D25C() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 38;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 38;
    }

    else
    {
      return 39;
    }
  }
}

uint64_t sub_1B0131390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546E6F6369 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1B013160C(uint64_t a1)
{
  type metadata accessor for FBKSInteraction.Content(319);
  if (v1 <= 0x3F)
  {
    sub_1B01316E4(319, &qword_1EDAE7648, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B01316E4(319, &qword_1EDAE77D0, &type metadata for FBKSInteraction.AnnotatedContent.IconType);
      if (v3 <= 0x3F)
      {
        sub_1B0131730(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B01316E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B014CFBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B0131730(uint64_t a1)
{
  if (!qword_1EDAE7658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4A00, &qword_1B0156540);
    v1 = sub_1B014CFBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAE7658);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService15FBKSInteractionC16AnnotatedContentV8IconTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B01317AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFD9 && *(a1 + 16))
  {
    return (*a1 + 2147483610);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 37;
  if (v4 >= 0x27)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0131804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483610;
    if (a3 >= 0x7FFFFFDA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 37;
    }
  }

  return result;
}

uint64_t _s16AnnotatedContentV8IconTypeO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16AnnotatedContentV8IconTypeO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0131C38()
{
  result = qword_1EB6C4DD8;
  if (!qword_1EB6C4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4DD8);
  }

  return result;
}

unint64_t sub_1B0131C90()
{
  result = qword_1EB6C4DE0;
  if (!qword_1EB6C4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4DE0);
  }

  return result;
}

unint64_t sub_1B0131CE8()
{
  result = qword_1EB6C4DE8;
  if (!qword_1EB6C4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4DE8);
  }

  return result;
}

unint64_t sub_1B0131D40()
{
  result = qword_1EDAE6F78;
  if (!qword_1EDAE6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F78);
  }

  return result;
}

unint64_t sub_1B0131D98()
{
  result = qword_1EDAE6F80;
  if (!qword_1EDAE6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F80);
  }

  return result;
}

unint64_t sub_1B0131DF0()
{
  result = qword_1EDAE6D40;
  if (!qword_1EDAE6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D40);
  }

  return result;
}

unint64_t sub_1B0131E48()
{
  result = qword_1EDAE6D48;
  if (!qword_1EDAE6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D48);
  }

  return result;
}

unint64_t sub_1B0131EA0()
{
  result = qword_1EDAE6C20;
  if (!qword_1EDAE6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C20);
  }

  return result;
}

unint64_t sub_1B0131EF8()
{
  result = qword_1EDAE6C28;
  if (!qword_1EDAE6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C28);
  }

  return result;
}

unint64_t sub_1B0131F50()
{
  result = qword_1EDAE6D60;
  if (!qword_1EDAE6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D60);
  }

  return result;
}

unint64_t sub_1B0131FA8()
{
  result = qword_1EDAE6D68;
  if (!qword_1EDAE6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D68);
  }

  return result;
}

unint64_t sub_1B0132000()
{
  result = qword_1EDAE6C90;
  if (!qword_1EDAE6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C90);
  }

  return result;
}

unint64_t sub_1B0132058()
{
  result = qword_1EDAE6C98;
  if (!qword_1EDAE6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C98);
  }

  return result;
}

unint64_t sub_1B01320B0()
{
  result = qword_1EDAE6CE0;
  if (!qword_1EDAE6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CE0);
  }

  return result;
}

unint64_t sub_1B0132108()
{
  result = qword_1EDAE6CE8;
  if (!qword_1EDAE6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CE8);
  }

  return result;
}

unint64_t sub_1B0132160()
{
  result = qword_1EDAE6BC0;
  if (!qword_1EDAE6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BC0);
  }

  return result;
}

unint64_t sub_1B01321B8()
{
  result = qword_1EDAE6BC8;
  if (!qword_1EDAE6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BC8);
  }

  return result;
}

unint64_t sub_1B0132210()
{
  result = qword_1EDAE6CB0;
  if (!qword_1EDAE6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CB0);
  }

  return result;
}

unint64_t sub_1B0132268()
{
  result = qword_1EDAE6CB8;
  if (!qword_1EDAE6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CB8);
  }

  return result;
}

unint64_t sub_1B01322C0()
{
  result = qword_1EDAE6BA0;
  if (!qword_1EDAE6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BA0);
  }

  return result;
}

unint64_t sub_1B0132318()
{
  result = qword_1EDAE6BA8;
  if (!qword_1EDAE6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BA8);
  }

  return result;
}

unint64_t sub_1B0132370()
{
  result = qword_1EDAE6D10;
  if (!qword_1EDAE6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D10);
  }

  return result;
}

unint64_t sub_1B01323C8()
{
  result = qword_1EDAE6D18;
  if (!qword_1EDAE6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D18);
  }

  return result;
}

unint64_t sub_1B0132420()
{
  result = qword_1EDAE6BF0;
  if (!qword_1EDAE6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BF0);
  }

  return result;
}

unint64_t sub_1B0132478()
{
  result = qword_1EDAE6BF8;
  if (!qword_1EDAE6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BF8);
  }

  return result;
}

unint64_t sub_1B01324D0()
{
  result = qword_1EDAE6CF0;
  if (!qword_1EDAE6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CF0);
  }

  return result;
}

unint64_t sub_1B0132528()
{
  result = qword_1EDAE6CF8;
  if (!qword_1EDAE6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CF8);
  }

  return result;
}

unint64_t sub_1B0132580()
{
  result = qword_1EDAE6BD0;
  if (!qword_1EDAE6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BD0);
  }

  return result;
}

unint64_t sub_1B01325D8()
{
  result = qword_1EDAE6BD8;
  if (!qword_1EDAE6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BD8);
  }

  return result;
}

unint64_t sub_1B0132630()
{
  result = qword_1EDAE6B70;
  if (!qword_1EDAE6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B70);
  }

  return result;
}

unint64_t sub_1B0132688()
{
  result = qword_1EDAE6B78;
  if (!qword_1EDAE6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B78);
  }

  return result;
}

unint64_t sub_1B01326E0()
{
  result = qword_1EDAE6B60;
  if (!qword_1EDAE6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B60);
  }

  return result;
}

unint64_t sub_1B0132738()
{
  result = qword_1EDAE6B68;
  if (!qword_1EDAE6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B68);
  }

  return result;
}

unint64_t sub_1B0132790()
{
  result = qword_1EDAE6C80;
  if (!qword_1EDAE6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C80);
  }

  return result;
}

unint64_t sub_1B01327E8()
{
  result = qword_1EDAE6C88;
  if (!qword_1EDAE6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C88);
  }

  return result;
}

unint64_t sub_1B0132840()
{
  result = qword_1EDAE6C10;
  if (!qword_1EDAE6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C10);
  }

  return result;
}

unint64_t sub_1B0132898()
{
  result = qword_1EDAE6C18;
  if (!qword_1EDAE6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C18);
  }

  return result;
}

unint64_t sub_1B01328F0()
{
  result = qword_1EDAE6CD0;
  if (!qword_1EDAE6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CD0);
  }

  return result;
}

unint64_t sub_1B0132948()
{
  result = qword_1EDAE6CD8;
  if (!qword_1EDAE6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CD8);
  }

  return result;
}

unint64_t sub_1B01329A0()
{
  result = qword_1EDAE6BB0;
  if (!qword_1EDAE6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BB0);
  }

  return result;
}

unint64_t sub_1B01329F8()
{
  result = qword_1EDAE6BB8;
  if (!qword_1EDAE6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BB8);
  }

  return result;
}

unint64_t sub_1B0132A50()
{
  result = qword_1EDAE6D00;
  if (!qword_1EDAE6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D00);
  }

  return result;
}

unint64_t sub_1B0132AA8()
{
  result = qword_1EDAE6D08;
  if (!qword_1EDAE6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D08);
  }

  return result;
}

unint64_t sub_1B0132B00()
{
  result = qword_1EDAE6C40;
  if (!qword_1EDAE6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C40);
  }

  return result;
}

unint64_t sub_1B0132B58()
{
  result = qword_1EDAE6C48;
  if (!qword_1EDAE6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C48);
  }

  return result;
}

unint64_t sub_1B0132BB0()
{
  result = qword_1EDAE6C00;
  if (!qword_1EDAE6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C00);
  }

  return result;
}

unint64_t sub_1B0132C08()
{
  result = qword_1EDAE6C08;
  if (!qword_1EDAE6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C08);
  }

  return result;
}

unint64_t sub_1B0132C60()
{
  result = qword_1EDAE6D30;
  if (!qword_1EDAE6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D30);
  }

  return result;
}

unint64_t sub_1B0132CB8()
{
  result = qword_1EDAE6D38;
  if (!qword_1EDAE6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D38);
  }

  return result;
}

unint64_t sub_1B0132D10()
{
  result = qword_1EDAE6CA0;
  if (!qword_1EDAE6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CA0);
  }

  return result;
}

unint64_t sub_1B0132D68()
{
  result = qword_1EDAE6CA8;
  if (!qword_1EDAE6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CA8);
  }

  return result;
}

unint64_t sub_1B0132DC0()
{
  result = qword_1EDAE6C70;
  if (!qword_1EDAE6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C70);
  }

  return result;
}

unint64_t sub_1B0132E18()
{
  result = qword_1EDAE6C78;
  if (!qword_1EDAE6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C78);
  }

  return result;
}

unint64_t sub_1B0132E70()
{
  result = qword_1EDAE6CC0;
  if (!qword_1EDAE6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CC0);
  }

  return result;
}

unint64_t sub_1B0132EC8()
{
  result = qword_1EDAE6CC8;
  if (!qword_1EDAE6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6CC8);
  }

  return result;
}

unint64_t sub_1B0132F20()
{
  result = qword_1EDAE6B80;
  if (!qword_1EDAE6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B80);
  }

  return result;
}

unint64_t sub_1B0132F78()
{
  result = qword_1EDAE6B88;
  if (!qword_1EDAE6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B88);
  }

  return result;
}

unint64_t sub_1B0132FD0()
{
  result = qword_1EDAE6D20;
  if (!qword_1EDAE6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D20);
  }

  return result;
}

unint64_t sub_1B0133028()
{
  result = qword_1EDAE6D28;
  if (!qword_1EDAE6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D28);
  }

  return result;
}

unint64_t sub_1B0133080()
{
  result = qword_1EDAE6BE0;
  if (!qword_1EDAE6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BE0);
  }

  return result;
}

unint64_t sub_1B01330D8()
{
  result = qword_1EDAE6BE8;
  if (!qword_1EDAE6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6BE8);
  }

  return result;
}

unint64_t sub_1B0133130()
{
  result = qword_1EDAE6C60;
  if (!qword_1EDAE6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C60);
  }

  return result;
}

unint64_t sub_1B0133188()
{
  result = qword_1EDAE6C68;
  if (!qword_1EDAE6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C68);
  }

  return result;
}

unint64_t sub_1B01331E0()
{
  result = qword_1EDAE6B90;
  if (!qword_1EDAE6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B90);
  }

  return result;
}

unint64_t sub_1B0133238()
{
  result = qword_1EDAE6B98;
  if (!qword_1EDAE6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B98);
  }

  return result;
}

unint64_t sub_1B0133290()
{
  result = qword_1EDAE6B40;
  if (!qword_1EDAE6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B40);
  }

  return result;
}

unint64_t sub_1B01332E8()
{
  result = qword_1EDAE6B48;
  if (!qword_1EDAE6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B48);
  }

  return result;
}

unint64_t sub_1B0133340()
{
  result = qword_1EDAE6B50;
  if (!qword_1EDAE6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B50);
  }

  return result;
}

unint64_t sub_1B0133398()
{
  result = qword_1EDAE6B58;
  if (!qword_1EDAE6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B58);
  }

  return result;
}

unint64_t sub_1B01333F0()
{
  result = qword_1EDAE6C30;
  if (!qword_1EDAE6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C30);
  }

  return result;
}

unint64_t sub_1B0133448()
{
  result = qword_1EDAE6C38;
  if (!qword_1EDAE6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C38);
  }

  return result;
}

unint64_t sub_1B01334A0()
{
  result = qword_1EDAE6D90;
  if (!qword_1EDAE6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D90);
  }

  return result;
}

unint64_t sub_1B01334F8()
{
  result = qword_1EDAE6D98;
  if (!qword_1EDAE6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D98);
  }

  return result;
}

unint64_t sub_1B0133550()
{
  result = qword_1EDAE6D50;
  if (!qword_1EDAE6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D50);
  }

  return result;
}

unint64_t sub_1B01335A8()
{
  result = qword_1EDAE6D58;
  if (!qword_1EDAE6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D58);
  }

  return result;
}

unint64_t sub_1B0133600()
{
  result = qword_1EDAE6D70;
  if (!qword_1EDAE6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D70);
  }

  return result;
}

unint64_t sub_1B0133658()
{
  result = qword_1EDAE6D78;
  if (!qword_1EDAE6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D78);
  }

  return result;
}

unint64_t sub_1B01336B0()
{
  result = qword_1EDAE6C50;
  if (!qword_1EDAE6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C50);
  }

  return result;
}

unint64_t sub_1B0133708()
{
  result = qword_1EDAE6C58;
  if (!qword_1EDAE6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6C58);
  }

  return result;
}

unint64_t sub_1B0133760()
{
  result = qword_1EDAE6D80;
  if (!qword_1EDAE6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D80);
  }

  return result;
}

unint64_t sub_1B01337B8()
{
  result = qword_1EDAE6D88;
  if (!qword_1EDAE6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6D88);
  }

  return result;
}

unint64_t sub_1B0133810()
{
  result = qword_1EDAE6DA0;
  if (!qword_1EDAE6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DA0);
  }

  return result;
}

unint64_t sub_1B0133868()
{
  result = qword_1EDAE6DA8;
  if (!qword_1EDAE6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DA8);
  }

  return result;
}

unint64_t sub_1B01338C0()
{
  result = qword_1EDAE6DB8;
  if (!qword_1EDAE6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DB8);
  }

  return result;
}

unint64_t sub_1B0133918()
{
  result = qword_1EDAE6DC0;
  if (!qword_1EDAE6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DC0);
  }

  return result;
}

uint64_t FBKSForm.Question.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x656C7469743ALL && a2 == 0xE600000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x616572613ALL && v3 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x706972637365643ALL && v3 == 0xEC0000006E6F6974 || (sub_1B014D25C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x657275746165663ALL && v3 == 0xEF6E69616D6F645FLL || (sub_1B014D25C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x6165665F6275733ALL && v3 == 0xEC00000065727574 || (sub_1B014D25C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001B015C080 == v3 || (result = sub_1B014D25C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t FBKSForm.AuthenticationMethod.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 1701736302;
    case 3:
      return 0x6465726975716572;
    case 2:
      return 0x6C616E6F6974706FLL;
  }

  result = sub_1B014D27C();
  __break(1u);
  return result;
}

uint64_t FBKSForm.AuthenticationMethod.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1B0133C2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B0133CFC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 1)
  {
    return 1701736302;
  }

  if (v2 == 3)
  {
    return 0x6465726975716572;
  }

  if (v2 == 2)
  {
    return 0x6C616E6F6974706FLL;
  }

  result = sub_1B014D27C();
  __break(1u);
  return result;
}

unint64_t sub_1B0133D90()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x657275746165663ALL;
        goto LABEL_15;
      case 4:
        v3 = 0x6165665F6275733ALL;
        goto LABEL_15;
      case 5:
        v3 = 0xD000000000000012;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x656C7469743ALL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x616572613ALL;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x706972637365643ALL;
LABEL_15:
  sub_1B00D1FFC(v1, v2);
  return v3;
}

uint64_t sub_1B0133EA4(uint64_t a1)
{
  v2 = sub_1B0137480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0133EE0(uint64_t a1)
{
  v2 = sub_1B0137480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0133F1C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7261506472696874;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x4465727574616566;
  if (v1 != 3)
  {
    v4 = 0x7574616546627573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1634038369;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0134004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B01381DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B013402C(uint64_t a1)
{
  v2 = sub_1B0137288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0134068(uint64_t a1)
{
  v2 = sub_1B0137288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01340A4(uint64_t a1)
{
  v2 = sub_1B01372DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01340E0(uint64_t a1)
{
  v2 = sub_1B01372DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B013411C(uint64_t a1)
{
  v2 = sub_1B013742C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0134158(uint64_t a1)
{
  v2 = sub_1B013742C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0134194(uint64_t a1)
{
  v2 = sub_1B01373D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01341D0(uint64_t a1)
{
  v2 = sub_1B01373D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B013420C(uint64_t a1)
{
  v2 = sub_1B0137384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0134248(uint64_t a1)
{
  v2 = sub_1B0137384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0134284(uint64_t a1)
{
  v2 = sub_1B0137330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01342C0(uint64_t a1)
{
  v2 = sub_1B0137330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01342FC(uint64_t a1)
{
  v2 = sub_1B01374D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0134338(uint64_t a1)
{
  v2 = sub_1B01374D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSForm.Question.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DF0, &qword_1B0158CD0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DF8, &qword_1B0158CD8);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E00, &qword_1B0158CE0);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E08, &qword_1B0158CE8);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E10, &qword_1B0158CF0);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E18, &qword_1B0158CF8);
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E20, &qword_1B0158D00);
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E28, &qword_1B0158D08);
  v51 = *(v20 - 8);
  v52 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = *v2;
  v24 = v2[1];
  v33 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B0137288();
  sub_1B014D35C();
  if (v24 > 2)
  {
    switch(v24)
    {
      case 3:
        v56 = 3;
        sub_1B01373D8();
        v25 = v39;
        v26 = v52;
        sub_1B014D19C();
        v28 = v40;
        v27 = v41;
        goto LABEL_15;
      case 4:
        v57 = 4;
        sub_1B0137384();
        v25 = v42;
        v26 = v52;
        sub_1B014D19C();
        v28 = v43;
        v27 = v44;
        goto LABEL_15;
      case 5:
        v58 = 5;
        sub_1B0137330();
        v25 = v45;
        v26 = v52;
        sub_1B014D19C();
        v28 = v46;
        v27 = v47;
        goto LABEL_15;
    }

LABEL_12:
    v59 = 6;
    sub_1B01372DC();
    v29 = v48;
    v30 = v52;
    sub_1B014D19C();
    v31 = v50;
    sub_1B014D1DC();
    (*(v49 + 8))(v29, v31);
    return (*(v51 + 8))(v22, v30);
  }

  if (v24)
  {
    if (v24 != 1)
    {
      if (v24 == 2)
      {
        v55 = 2;
        sub_1B013742C();
        v25 = v36;
        v26 = v52;
        sub_1B014D19C();
        v28 = v37;
        v27 = v38;
LABEL_15:
        (*(v28 + 8))(v25, v27);
        return (*(v51 + 8))(v22, v26);
      }

      goto LABEL_12;
    }

    v54 = 1;
    sub_1B0137480();
    v26 = v52;
    sub_1B014D19C();
    (*(v35 + 8))(v16, v14);
  }

  else
  {
    v53 = 0;
    sub_1B01374D4();
    v26 = v52;
    sub_1B014D19C();
    (*(v34 + 8))(v19, v17);
  }

  return (*(v51 + 8))(v22, v26);
}

uint64_t FBKSForm.Question.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1B271EE00](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1B271EE00](v3);
      case 5:
        v3 = 5;
        return MEMORY[0x1B271EE00](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1B271EE00](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1B271EE00](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1B271EE00](v3);
    }
  }

  MEMORY[0x1B271EE00](6);

  return sub_1B014CCAC();
}

uint64_t FBKSForm.Question.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B014D2FC();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        goto LABEL_15;
      case 4:
        v2 = 4;
        goto LABEL_15;
      case 5:
        v2 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x1B271EE00](v2);
        return sub_1B014D33C();
    }
  }

  MEMORY[0x1B271EE00](6);
  sub_1B014CCAC();
  return sub_1B014D33C();
}

uint64_t FBKSForm.Question.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E60, &qword_1B0158D10);
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E68, &qword_1B0158D18);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E70, &qword_1B0158D20);
  v63 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v72 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E78, &qword_1B0158D28);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E80, &qword_1B0158D30);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v53 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E88, &qword_1B0158D38);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E90, &qword_1B0158D40);
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4E98, &qword_1B0158D48);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B0137288();
  v23 = v75;
  sub_1B014D34C();
  if (!v23)
  {
    v24 = v17;
    v53 = v15;
    v54 = v14;
    v26 = v71;
    v25 = v72;
    v27 = v73;
    v75 = v19;
    v28 = sub_1B014D18C();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_1B00D4B6C();
    v31 = v21;
    if (v30 != 7 && v78 == v79 >> 1)
    {
      if (v30 <= 2u)
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v80 = 1;
            sub_1B0137480();
            v41 = v54;
            sub_1B014D0EC();
            (*(v56 + 8))(v41, v58);
            (*(v75 + 8))(v31, v18);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = 1;
          }

          else
          {
            v80 = 2;
            sub_1B013742C();
            v45 = v68;
            sub_1B014D0EC();
            (*(v59 + 8))(v45, v60);
            (*(v75 + 8))(v31, v18);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = 2;
          }
        }

        else
        {
          v80 = 0;
          sub_1B01374D4();
          sub_1B014D0EC();
          (*(v55 + 8))(v24, v53);
          (*(v75 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 0;
        }
      }

      else
      {
        v32 = v21;
        if (v30 > 4u)
        {
          v42 = v70;
          if (v30 == 5)
          {
            v80 = 5;
            sub_1B0137330();
            v43 = v69;
            sub_1B014D0EC();
            v44 = v75;
            (*(v64 + 8))(v43, v65);
            (*(v44 + 8))(v32, v18);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = 5;
          }

          else
          {
            v80 = 6;
            sub_1B01372DC();
            v47 = v27;
            sub_1B014D0EC();
            v48 = v75;
            v49 = v66;
            v50 = sub_1B014D13C();
            v51 = v47;
            v34 = v50;
            v35 = v52;
            (*(v67 + 8))(v51, v49);
            (*(v48 + 8))(v32, v18);
            swift_unknownObjectRelease();
          }

          v39 = v74;
          goto LABEL_22;
        }

        if (v30 == 3)
        {
          v80 = 3;
          sub_1B01373D8();
          sub_1B014D0EC();
          v33 = v75;
          (*(v61 + 8))(v26, v62);
          (*(v33 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 3;
        }

        else
        {
          v80 = 4;
          sub_1B0137384();
          sub_1B014D0EC();
          v46 = v75;
          (*(v63 + 8))(v25, v57);
          (*(v46 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 4;
        }
      }

      v39 = v74;
      v42 = v70;
LABEL_22:
      *v42 = v34;
      v42[1] = v35;
      return __swift_destroy_boxed_opaque_existential_0(v39);
    }

    v36 = sub_1B014D05C();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v38 = &type metadata for FBKSForm.Question;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v75 + 8))(v31, v18);
    swift_unknownObjectRelease();
  }

  v39 = v74;
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_1B01356AC(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1B271EE00](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1B271EE00](v3);
      case 5:
        v3 = 5;
        return MEMORY[0x1B271EE00](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1B271EE00](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1B271EE00](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1B271EE00](v3);
    }
  }

  MEMORY[0x1B271EE00](6);

  return sub_1B014CCAC();
}

uint64_t sub_1B013577C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B014D2FC();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1B271EE00](v3);
        return sub_1B014D33C();
    }
  }

  MEMORY[0x1B271EE00](6);
  sub_1B014CCAC();
  return sub_1B014D33C();
}

uint64_t sub_1B0135908()
{
  v1 = (v0 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B01359CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B0135A38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_1B0135AA0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B0135AE8()
{
  v1 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1B0135B84()
{
  v1 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B0135C1C(uint64_t a1)
{
  v3 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FBKSForm.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  v7 = MEMORY[0x1E69E7CC0];
  *&v5[v6] = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod] = 3;
  v8 = sub_1B0122BE8(v7);
  swift_beginAccess();
  *&v5[v6] = v8;

  v9 = &v5[OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id FBKSForm.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  v6 = MEMORY[0x1E69E7CC0];
  *&v2[v5] = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod] = 3;
  v7 = sub_1B0122BE8(v6);
  swift_beginAccess();
  *&v2[v5] = v7;

  v8 = &v2[OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FBKSForm();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1B0135F14(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v9 = sub_1B014CB5C();
  __swift_project_value_buffer(v9, qword_1EDAE7828);

  sub_1B00D1FFC(v7, v8);
  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF3C();

  sub_1B00D2010(v7, v8);
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_20;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v31[0] = v13;
  *v12 = 136315394;
  *(v12 + 4) = sub_1B00E6C2C(a2, a3, v31);
  *(v12 + 12) = 2080;
  v29 = a2;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v14 = 0xEF6E69616D6F645FLL;
        v15 = 0x657275746165663ALL;
        goto LABEL_19;
      case 4:
        v14 = 0xEC00000065727574;
        v15 = 0x6165665F6275733ALL;
        goto LABEL_19;
      case 5:
        v14 = 0x80000001B015C080;
        v15 = 0xD000000000000012;
        goto LABEL_19;
    }

LABEL_16:
    v15 = v7;
    v14 = v8;
    goto LABEL_19;
  }

  if (!v8)
  {
    v14 = 0xE600000000000000;
    v15 = 0x656C7469743ALL;
    goto LABEL_19;
  }

  if (v8 == 1)
  {
    v14 = 0xE500000000000000;
    v15 = 0x616572613ALL;
    goto LABEL_19;
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  v14 = 0xEC0000006E6F6974;
  v15 = 0x706972637365643ALL;
LABEL_19:
  sub_1B00D1FFC(v7, v8);
  v16 = sub_1B00E6C2C(v15, v14, v31);

  *(v12 + 14) = v16;
  _os_log_impl(&dword_1B00C4000, v10, v11, "setting answer [%s] for question [%s]", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1B271F750](v13, -1, -1);
  MEMORY[0x1B271F750](v12, -1, -1);

  a2 = v29;
LABEL_20:
  v17 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  swift_beginAccess();
  v18 = *(v4 + v17);
  if (!*(v18 + 16))
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B014F1E0;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    swift_beginAccess();

    sub_1B00D1FFC(v7, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + v17);
    *(v4 + v17) = 0x8000000000000000;
    v26 = v27;
    goto LABEL_29;
  }

  v19 = sub_1B013E148(v7, v8);
  if ((v20 & 1) == 0)
  {

    goto LABEL_28;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1B00D12DC(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1B00D12DC((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[16 * v23];
  *(v24 + 4) = a2;
  *(v24 + 5) = a3;
  swift_beginAccess();
  sub_1B00D1FFC(v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  v26 = v21;
LABEL_29:
  sub_1B01184A8(v26, v7, v8, isUniquelyReferenced_nonNull_native);
  sub_1B00D2010(v7, v8);
  *(v4 + v17) = v30;
  return swift_endAccess();
}

uint64_t sub_1B0136384(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9[0] = a1;
  v9[1] = a2;

  sub_1B0135F14(v9, a3, a4);

  return sub_1B00D2010(a1, a2);
}

uint64_t sub_1B01364A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73726577736E61;
  v5 = 0x80000001B015B970;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B015B970;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0x73726577736E61;
  if (*a2 == 1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B014D25C();
  }

  return v11 & 1;
}

uint64_t sub_1B01365A0()
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

uint64_t sub_1B013664C(uint64_t a1)
{
  sub_1B014CCAC();
}

uint64_t sub_1B01366E4(uint64_t a1)
{
  sub_1B014D2FC();
  sub_1B014CCAC();

  return sub_1B014D33C();
}

unint64_t sub_1B013678C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0138438(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B01367BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE700000000000000;
  v5 = 0x73726577736E61;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001B015B970;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B0136824()
{
  v1 = 0x73726577736E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1B0136888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0138438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B01368B0(uint64_t a1)
{
  v2 = sub_1B013754C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01368EC(uint64_t a1)
{
  v2 = sub_1B013754C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *FBKSForm.init(from:)(void *a1)
{
  v3 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4EB8, &qword_1B0158D50);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v22 - v6;
  v8 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
  v9 = sub_1B0122BE8(MEMORY[0x1E69E7CC0]);
  v25 = v8;
  *&v3[v8] = v9;
  v10 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
  *&v3[OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B013754C();
  sub_1B014D34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);

    type metadata accessor for FBKSForm();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v10;
    v28 = 0;
    v11 = v24;
    v12 = sub_1B014D13C();
    v14 = &v3[OBJC_IVAR___FBKSForm_FrameworkPrivateName_identifier];
    *v14 = v12;
    v14[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    v28 = 1;
    sub_1B00DC504();
    sub_1B014D17C();
    v16 = v5;
    v17 = v25;
    v18 = v27[0];
    swift_beginAccess();
    *&v3[v17] = v18;

    LOBYTE(v27[0]) = 2;
    sub_1B01375A0();
    sub_1B014D17C();
    (*(v16 + 8))(v7, v11);
    v19 = v29;
    v20 = v23;
    swift_beginAccess();
    *&v3[v20] = v19;
    v21 = type metadata accessor for FBKSForm();
    v26.receiver = v3;
    v26.super_class = v21;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_1B0136C74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4ED0, &qword_1B0158D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B013754C();
  sub_1B014D35C();
  swift_beginAccess();
  v15 = 0;

  sub_1B014D1DC();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v10 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_answers;
    swift_beginAccess();
    v14 = *(v3 + v10);
    LOBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC3B8();
    sub_1B014D21C();
    v11 = OBJC_IVAR___FBKSForm_FrameworkPrivateName_authenticationMethod;
    swift_beginAccess();
    v13 = *(v3 + v11);
    v12[15] = 2;
    sub_1B01375F4();
    sub_1B014D21C();
    return (*(v6 + 8))(v8, v5);
  }
}

id FBKSForm.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSForm.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKSForm();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B0136FF0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s15FeedbackService8FBKSFormC8QuestionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_1B00D2010(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_1B00D2010(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_1B00D2010(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_1B00D1FFC(*a2, *(a2 + 8));
        sub_1B00D1FFC(v2, v3);
        sub_1B00D2010(v2, v3);
        sub_1B00D2010(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_1B00D2010(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_1B00D2010(*a1, 1uLL);
          sub_1B00D2010(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_1B00D2010(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_1B00D2010(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1B00D1FFC(*a1, v3);
    sub_1B00D1FFC(v2, v3);
    sub_1B00D2010(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = sub_1B014D25C();
  sub_1B00D1FFC(v4, v5);
  sub_1B00D1FFC(v2, v3);
  sub_1B00D2010(v2, v3);
  sub_1B00D2010(v4, v5);
  return v10 & 1;
}

unint64_t sub_1B0137288()
{
  result = qword_1EDAE70D8;
  if (!qword_1EDAE70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70D8);
  }

  return result;
}

unint64_t sub_1B01372DC()
{
  result = qword_1EDAE7090;
  if (!qword_1EDAE7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7090);
  }

  return result;
}

unint64_t sub_1B0137330()
{
  result = qword_1EB6C4E30;
  if (!qword_1EB6C4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E30);
  }

  return result;
}

unint64_t sub_1B0137384()
{
  result = qword_1EB6C4E38;
  if (!qword_1EB6C4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E38);
  }

  return result;
}

unint64_t sub_1B01373D8()
{
  result = qword_1EB6C4E40;
  if (!qword_1EB6C4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E40);
  }

  return result;
}

unint64_t sub_1B013742C()
{
  result = qword_1EB6C4E48;
  if (!qword_1EB6C4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E48);
  }

  return result;
}

unint64_t sub_1B0137480()
{
  result = qword_1EB6C4E50;
  if (!qword_1EB6C4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E50);
  }

  return result;
}

unint64_t sub_1B01374D4()
{
  result = qword_1EB6C4E58;
  if (!qword_1EB6C4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4E58);
  }

  return result;
}

unint64_t sub_1B013754C()
{
  result = qword_1EB6C4EC0;
  if (!qword_1EB6C4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EC0);
  }

  return result;
}

unint64_t sub_1B01375A0()
{
  result = qword_1EB6C4EC8;
  if (!qword_1EB6C4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EC8);
  }

  return result;
}

unint64_t sub_1B01375F4()
{
  result = qword_1EB6C4ED8;
  if (!qword_1EB6C4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4ED8);
  }

  return result;
}

unint64_t sub_1B013764C()
{
  result = qword_1EB6C4EE0;
  if (!qword_1EB6C4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EE0);
  }

  return result;
}

unint64_t sub_1B01376A4()
{
  result = qword_1EDAE7450;
  if (!qword_1EDAE7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7450);
  }

  return result;
}

uint64_t dispatch thunk of FBKSForm.prefill(question:answer:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService8FBKSFormC8QuestionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B013795C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01379B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1B0137AA8()
{
  result = qword_1EB6C4EE8;
  if (!qword_1EB6C4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EE8);
  }

  return result;
}

unint64_t sub_1B0137B00()
{
  result = qword_1EB6C4EF0;
  if (!qword_1EB6C4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EF0);
  }

  return result;
}

unint64_t sub_1B0137B58()
{
  result = qword_1EB6C4EF8;
  if (!qword_1EB6C4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4EF8);
  }

  return result;
}

unint64_t sub_1B0137BB0()
{
  result = qword_1EB6C4F00;
  if (!qword_1EB6C4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F00);
  }

  return result;
}

unint64_t sub_1B0137C08()
{
  result = qword_1EB6C4F08;
  if (!qword_1EB6C4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F08);
  }

  return result;
}

unint64_t sub_1B0137C60()
{
  result = qword_1EDAE70A8;
  if (!qword_1EDAE70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70A8);
  }

  return result;
}

unint64_t sub_1B0137CB8()
{
  result = qword_1EDAE70B0;
  if (!qword_1EDAE70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70B0);
  }

  return result;
}

unint64_t sub_1B0137D10()
{
  result = qword_1EDAE70B8;
  if (!qword_1EDAE70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70B8);
  }

  return result;
}

unint64_t sub_1B0137D68()
{
  result = qword_1EDAE70C0;
  if (!qword_1EDAE70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70C0);
  }

  return result;
}

unint64_t sub_1B0137DC0()
{
  result = qword_1EDAE7080;
  if (!qword_1EDAE7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7080);
  }

  return result;
}

unint64_t sub_1B0137E18()
{
  result = qword_1EDAE7088;
  if (!qword_1EDAE7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7088);
  }

  return result;
}

unint64_t sub_1B0137E70()
{
  result = qword_1EDAE6F00;
  if (!qword_1EDAE6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F00);
  }

  return result;
}

unint64_t sub_1B0137EC8()
{
  result = qword_1EDAE6F08;
  if (!qword_1EDAE6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F08);
  }

  return result;
}

unint64_t sub_1B0137F20()
{
  result = qword_1EDAE6F20;
  if (!qword_1EDAE6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F20);
  }

  return result;
}

unint64_t sub_1B0137F78()
{
  result = qword_1EDAE6F28;
  if (!qword_1EDAE6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F28);
  }

  return result;
}

unint64_t sub_1B0137FD0()
{
  result = qword_1EDAE6F10;
  if (!qword_1EDAE6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F10);
  }

  return result;
}

unint64_t sub_1B0138028()
{
  result = qword_1EDAE6F18;
  if (!qword_1EDAE6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F18);
  }

  return result;
}

unint64_t sub_1B0138080()
{
  result = qword_1EDAE7098;
  if (!qword_1EDAE7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7098);
  }

  return result;
}

unint64_t sub_1B01380D8()
{
  result = qword_1EDAE70A0;
  if (!qword_1EDAE70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70A0);
  }

  return result;
}

unint64_t sub_1B0138130()
{
  result = qword_1EDAE70C8;
  if (!qword_1EDAE70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70C8);
  }

  return result;
}

unint64_t sub_1B0138188()
{
  result = qword_1EDAE70D0;
  if (!qword_1EDAE70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE70D0);
  }

  return result;
}

uint64_t sub_1B01381DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1634038369 && a2 == 0xE400000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4465727574616566 && a2 == 0xED00006E69616D6FLL || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574616546627573 && a2 == 0xEA00000000006572 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1B0138438(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B014D0DC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0138484()
{
  result = qword_1EB6C4F10;
  if (!qword_1EB6C4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F10);
  }

  return result;
}

uint64_t sub_1B01384DC()
{
  if (*v0)
  {
    return 0x697461756C617665;
  }

  else
  {
    return 1836216166;
  }
}

uint64_t sub_1B0138514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836216166 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697461756C617665 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

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

uint64_t sub_1B01385F8(uint64_t a1)
{
  v2 = sub_1B0138ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0138634(uint64_t a1)
{
  v2 = sub_1B0138ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0138670(uint64_t a1)
{
  v2 = sub_1B0138B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01386AC(uint64_t a1)
{
  v2 = sub_1B0138B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01386E8(uint64_t a1)
{
  v2 = sub_1B0138B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0138724(uint64_t a1)
{
  v2 = sub_1B0138B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSRemoteAlertRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F18, &qword_1B0159850);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F20, &qword_1B0159858);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F28, &qword_1B0159860);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v19 - v10;
  v12 = v1[1];
  v24 = *v1;
  v19 = v12;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B0138ADC();
  sub_1B014D35C();
  if ((v13 & 0x80) != 0)
  {
    LOBYTE(v26) = 1;
    sub_1B0138B30();
    v17 = v25;
    sub_1B014D19C();
    LOBYTE(v26) = v24;
    v27 = v19;
    v28 = v13 & 0xFF01;
    sub_1B00EC108();
    v18 = v23;
    sub_1B014D21C();
    (*(v22 + 8))(v5, v18);
    return (*(v9 + 8))(v11, v17);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1B0138B84();
    v14 = v25;
    sub_1B014D19C();
    v26 = v24;
    type metadata accessor for FBKSForm();
    sub_1B00D207C(&qword_1EB6C3B38, &protocol conformance descriptor for FBKSForm);
    v15 = v21;
    sub_1B014D21C();
    (*(v20 + 8))(v8, v15);
    return (*(v9 + 8))(v11, v14);
  }
}

unint64_t sub_1B0138ADC()
{
  result = qword_1EB6C4F30;
  if (!qword_1EB6C4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F30);
  }

  return result;
}

unint64_t sub_1B0138B30()
{
  result = qword_1EB6C4F38;
  if (!qword_1EB6C4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F38);
  }

  return result;
}

unint64_t sub_1B0138B84()
{
  result = qword_1EB6C4F40;
  if (!qword_1EB6C4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F40);
  }

  return result;
}

uint64_t FBKSRemoteAlertRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F48, &qword_1B0159868);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F50, &qword_1B0159870);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4F58, &unk_1B0159878);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B0138ADC();
  v13 = v37;
  sub_1B014D34C();
  if (!v13)
  {
    v32 = v5;
    v37 = v9;
    v15 = v35;
    v14 = v36;
    v16 = sub_1B014D18C();
    v17 = (2 * *(v16 + 16)) | 1;
    v42 = v16;
    v43 = v16 + 32;
    v44 = 0;
    v45 = v17;
    v18 = sub_1B00DEA8C();
    v19 = v8;
    if (v18 == 2 || v44 != v45 >> 1)
    {
      v25 = sub_1B014D05C();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
      *v27 = &type metadata for FBKSRemoteAlertRequest;
      sub_1B014D0FC();
      sub_1B014D04C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v37 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v38) = 1;
        sub_1B0138B30();
        sub_1B014D0EC();
        v20 = v37;
        sub_1B00EC0B4();
        sub_1B014D17C();
        (*(v33 + 8))(v4, v15);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        v21 = v38;
        v22 = v39;
        if (v40)
        {
          v23 = 129;
        }

        else
        {
          v23 = 128;
        }

        v24 = v23 | (v41 << 8);
      }

      else
      {
        LOBYTE(v38) = 0;
        sub_1B0138B84();
        sub_1B014D0EC();
        v29 = v37;
        type metadata accessor for FBKSForm();
        sub_1B00D207C(&qword_1EB6C3B78, &protocol conformance descriptor for FBKSForm);
        v30 = v32;
        sub_1B014D17C();
        (*(v34 + 8))(v7, v30);
        (*(v29 + 8))(v11, v19);
        swift_unknownObjectRelease();
        v22 = 0;
        v24 = 0;
        v21 = v38;
      }

      *v14 = v21;
      *(v14 + 8) = v22;
      *(v14 + 16) = v24;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v46);
}

unint64_t sub_1B0139138(uint64_t a1)
{
  *(a1 + 8) = sub_1B00EBFC8();
  result = sub_1B00EC01C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B01391A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFF && *(a1 + 18))
  {
    return (*a1 + 0x3FFFF);
  }

  v3 = (((*(a1 + 16) << 10) >> 17) & 1 | (2 * ((*(a1 + 8) >> 53) & 0x780 | (*a1 >> 60) & 0x8F | (16 * (*(a1 + 8) & 7)) | (*(a1 + 16) >> 1 << 11) & 0x1FFFF))) ^ 0x3FFFF;
  if (v3 >= 0x3FFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0139224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFFF) - (a2 << 17);
      *result = v3 << 60;
      *(result + 8) = ((v3 >> 4) | (v3 << 53)) & 0xF000000000000007;
      *(result + 16) = (v3 >> 10) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_1B01392AC(int8x16_t *a1, char a2)
{
  v2 = a1[1].i16[0] & 0xFF01 | ((a2 & 1) << 7);
  result = vandq_s8(*a1, xmmword_1B0159840);
  *a1 = result;
  a1[1].i16[0] = v2;
  return result;
}

unint64_t sub_1B013931C()
{
  result = qword_1EB6C4F60;
  if (!qword_1EB6C4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F60);
  }

  return result;
}

unint64_t sub_1B0139374()
{
  result = qword_1EB6C4F68;
  if (!qword_1EB6C4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F68);
  }

  return result;
}

unint64_t sub_1B01393CC()
{
  result = qword_1EB6C4F70;
  if (!qword_1EB6C4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F70);
  }

  return result;
}

unint64_t sub_1B0139424()
{
  result = qword_1EB6C4F78;
  if (!qword_1EB6C4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F78);
  }

  return result;
}

unint64_t sub_1B013947C()
{
  result = qword_1EB6C4F80;
  if (!qword_1EB6C4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F80);
  }

  return result;
}

unint64_t sub_1B01394D4()
{
  result = qword_1EB6C4F88;
  if (!qword_1EB6C4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F88);
  }

  return result;
}

unint64_t sub_1B013952C()
{
  result = qword_1EB6C4F90;
  if (!qword_1EB6C4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F90);
  }

  return result;
}

unint64_t sub_1B0139584()
{
  result = qword_1EB6C4F98;
  if (!qword_1EB6C4F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4F98);
  }

  return result;
}

unint64_t sub_1B01395DC()
{
  result = qword_1EB6C4FA0;
  if (!qword_1EB6C4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4FA0);
  }

  return result;
}

id static FBKSError.maybeXpcSafeNSError(error:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  v3 = _s15FeedbackService9FBKSErrorV14xpcSafeNSError5errorSo0F0Cs5Error_p_tFZ_0(a1);

  return v3;
}

id static FBKSError.nsError(anyError:)(uint64_t a1)
{
  sub_1B00D20D0(a1, v6);
  if (swift_dynamicCast())
  {
    v2 = _s15FeedbackService9FBKSErrorV7nsError06stringE0So7NSErrorCSS_tFZ_0(v4, v5);
  }

  else
  {
    sub_1B00D20D0(a1, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B40, &qword_1B0151890);
    if (swift_dynamicCast())
    {
      v2 = _s15FeedbackService9FBKSErrorV14xpcSafeNSError5errorSo0F0Cs5Error_p_tFZ_0(v4);
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.FeedbackService" code:-1000 userInfo:0];
    }
  }

  return v2;
}

id _s15FeedbackService9FBKSErrorV14xpcSafeNSError5errorSo0F0Cs5Error_p_tFZ_0(uint64_t a1)
{
  v1 = sub_1B014C9BC();
  v2 = [v1 domain];
  if (!v2)
  {
    sub_1B014CC1C();
    v2 = sub_1B014CC0C();
  }

  v3 = [v1 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B014F1E0;
  *(inited + 32) = sub_1B014CC1C();
  *(inited + 40) = v5;
  v6 = v1;
  v7 = [v6 description];
  v8 = sub_1B014CC1C();
  v10 = v9;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  sub_1B011BEB4(inited);
  swift_setDeallocating();
  sub_1B00EDC14(inited + 32);
  v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v12 = sub_1B014CB9C();

  v13 = [v11 initWithDomain:v2 code:v3 userInfo:v12];

  return v13;
}

id _s15FeedbackService9FBKSErrorV7nsError06stringE0So7NSErrorCSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3E80, &unk_1B0151230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B014F1E0;
  *(inited + 32) = sub_1B014CC1C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v6 = @"com.apple.FeedbackService";

  sub_1B011BEB4(inited);
  swift_setDeallocating();
  sub_1B00EDC14(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_1B014CB9C();

  v9 = [v7 initWithDomain:v6 code:-200 userInfo:v8];

  return v9;
}

unint64_t sub_1B0139A6C()
{
  result = qword_1EB6C4FA8;
  if (!qword_1EB6C4FA8)
  {
    sub_1B00D0014(255, &qword_1EDAE6F58, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4FA8);
  }

  return result;
}

id sub_1B0139AD4@<X0>(void *a1@<X8>)
{
  result = [*v1 ID];
  *a1 = result;
  return result;
}

uint64_t sub_1B0139B1C@<X0>(uint64_t *a2@<X8>)
{
  sub_1B00D0014(0, &qword_1EB6C4FB0, off_1E7A8FAD8);
  result = sub_1B014CB8C();
  *a2 = result;
  return result;
}

uint64_t getEntitlement(for:entitlement:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4FB8, &qword_1B0159DB0);
  sub_1B014CB6C();
  return v1;
}

void sub_1B0139BDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1B014CC0C();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    if (!*token.val)
    {

      *a5 = v9;
      return;
    }

    if (qword_1EB6C3A60 != -1)
    {
      swift_once();
    }

    v10 = sub_1B014CB5C();
    __swift_project_value_buffer(v10, qword_1EB6C5248);
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4FC0, &qword_1B0159DB8);
      v15 = sub_1B014CC6C();
      v17 = sub_1B00E6C2C(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Error getting entitlement: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B271F750](v14, -1, -1);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  *a5 = 0;
}

void sub_1B0139E20(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[3];
  v4 = v1[4];
  if (!v4)
  {
    v6 = (v1[2] + 64) >> 6;
    if (v6 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = (v1[2] + 64) >> 6;
    }

    v8 = v7 - 1;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        v1[3] = v8;
        v1[4] = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      v4 = *(v1[1] + 8 * v5);
      ++v3;
      if (v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v5 = v1[3];
LABEL_10:
  v9 = __clz(__rbit64(v4)) | (v5 << 6);
  v10 = *(*(v2 + 48) + 16 * v9);
  v11 = *(*(v2 + 56) + 8 * v9);
  v1[3] = v5;
  v1[4] = (v4 - 1) & v4;
  v12 = v1[5];
  if (__OFADD__(v12, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v1[5] = v12 + 1;
  *a1 = v12;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  sub_1B00D1FFC(v10, *(&v10 + 1));
}

uint64_t FBKSInteraction.CAPayload(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v158 = &v156 - v7;
  v162 = type metadata accessor for FBKSInteraction.Content(0);
  v164 = *(v162 - 8);
  v8 = MEMORY[0x1EEE9AC00](v162);
  v10 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v159 = &v156 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v156 - v13;
  v14 = sub_1B011A788(MEMORY[0x1E69E7CC0]);
  v15 = sub_1B014CE5C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v179[0] = v14;
  sub_1B0118364(v15, 0x656E696C6E497369, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v17 = v179[0];
  v18 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  swift_beginAccess();
  v20 = v18[1];
  v177 = *v18;
  v19 = v177;
  v178 = v20;
  v176 = xmmword_1B01511A0;
  sub_1B0100B40(v177, v20);
  if (_s15FeedbackService15FBKSInteractionC13FeatureDomainO2eeoiySbAE_AEtFZ_0(&v177, &v176))
  {
    v177 = v19;
    v178 = v20;
    v21 = v2;
    v22 = sub_1B013CC10(v21);
  }

  else
  {
    v177 = v19;
    v178 = v20;
    sub_1B0100B40(v19, v20);
    sub_1B013C244(&v177, &v176);
    v22 = FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
  }

  sub_1B0100A3C(v19, v20);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v177 = v17;
  sub_1B0118364(v22, 0xD000000000000011, 0x80000001B015DC30, v23);
  v24 = v177;
  v25 = *&v2[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8];
  v26 = v164;
  if (v25)
  {
    v27 = *&v2[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];

    if ((sub_1B01154BC(0x6C7070612E6D6F63, 0xEA00000000002E65, v27, v25) & 1) == 0)
    {
    }

    v28 = sub_1B014CC0C();

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v24;
    sub_1B0118364(v28, 0x4449656C646E7562, 0xE800000000000000, v29);
    v24 = v177;
  }

  v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v31 = sub_1B014CE5C();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *&v176 = v24;
  sub_1B0118364(v31, 0xD000000000000010, 0x80000001B015D470, v32);
  v33 = v176;
  v157 = v30;
  v34 = *&v2[v30];
  v163 = v2;
  v160 = v6;
  v161 = v10;
  if (v34)
  {

    sub_1B013AED4(v35);
    v37 = v36;

    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v166 = v37;

    v43 = 0;
    v165 = v37 + 64;
    while (v41)
    {
      v46 = v43;
LABEL_19:
      v47 = __clz(__rbit64(v41)) | (v46 << 6);
      v48 = (*(v166 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      v51 = *(*(v166 + 56) + 8 * v47);

      v167 = v51;
      v52 = v33;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v176 = v52;
      v55 = sub_1B013E0D0(v49, v50);
      v56 = v52[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_85;
      }

      v59 = v54;
      if (v52[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          sub_1B013F300();
        }
      }

      else
      {
        sub_1B013E840(v58, v53);
        v60 = sub_1B013E0D0(v49, v50);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_91;
        }

        v55 = v60;
      }

      v41 &= v41 - 1;
      v33 = v176;
      if (v59)
      {
        v44 = *(v176 + 56);
        v45 = *(v44 + 8 * v55);
        *(v44 + 8 * v55) = v167;
      }

      else
      {
        *(v176 + 8 * (v55 >> 6) + 64) |= 1 << v55;
        v62 = (v33[6] + 16 * v55);
        *v62 = v49;
        v62[1] = v50;
        *(v33[7] + 8 * v55) = v167;
        v63 = v33[2];
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_88;
        }

        v33[2] = v65;
      }

      v43 = v46;
      v38 = v165;
    }

    while (1)
    {
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_83;
      }

      if (v46 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v46);
      ++v43;
      if (v41)
      {
        goto LABEL_19;
      }
    }

    v2 = v163;
    v66 = *&v163[v157];
    if (!v66)
    {
LABEL_49:
      v6 = v160;
      v10 = v161;
      v95 = v162;
      v26 = v164;
      goto LABEL_51;
    }

    v67 = sub_1B013B218(0x6C6C6966657270, 0xE700000000000000, v66);

    v68 = v67 + 64;
    v69 = 1 << *(v67 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 64);
    v72 = (v69 + 63) >> 6;
    v166 = v67;

    v73 = 0;
    if (v71)
    {
      goto LABEL_34;
    }

LABEL_35:
    while (1)
    {
      v76 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v76 >= v72)
      {

        v2 = v163;
        goto LABEL_49;
      }

      v71 = *(v68 + 8 * v76);
      ++v73;
      if (v71)
      {
        while (1)
        {
          v77 = __clz(__rbit64(v71)) | (v76 << 6);
          v78 = (*(v166 + 48) + 16 * v77);
          v79 = *v78;
          v80 = v78[1];
          v81 = *(*(v166 + 56) + 8 * v77);

          v167 = v81;
          v82 = v33;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *&v176 = v82;
          v84 = sub_1B013E0D0(v79, v80);
          v86 = v82[2];
          v87 = (v85 & 1) == 0;
          v64 = __OFADD__(v86, v87);
          v88 = v86 + v87;
          if (v64)
          {
            goto LABEL_87;
          }

          v89 = v85;
          if (v82[3] >= v88)
          {
            if ((v83 & 1) == 0)
            {
              v94 = v84;
              sub_1B013F300();
              v84 = v94;
            }
          }

          else
          {
            sub_1B013E840(v88, v83);
            v84 = sub_1B013E0D0(v79, v80);
            if ((v89 & 1) != (v90 & 1))
            {
              goto LABEL_91;
            }
          }

          v71 &= v71 - 1;
          v33 = v176;
          if (v89)
          {
            v74 = *(v176 + 56);
            v75 = *(v74 + 8 * v84);
            *(v74 + 8 * v84) = v167;

            v73 = v76;
            if (!v71)
            {
              goto LABEL_35;
            }
          }

          else
          {
            *(v176 + 8 * (v84 >> 6) + 64) |= 1 << v84;
            v91 = (v33[6] + 16 * v84);
            *v91 = v79;
            v91[1] = v80;
            *(v33[7] + 8 * v84) = v167;
            v92 = v33[2];
            v64 = __OFADD__(v92, 1);
            v93 = v92 + 1;
            if (v64)
            {
              goto LABEL_90;
            }

            v33[2] = v93;
            v73 = v76;
            if (!v71)
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          v76 = v73;
        }
      }
    }
  }

  else
  {
    v95 = v162;
LABEL_51:
    v96 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
    swift_beginAccess();
    v97 = &v2[v96];
    v98 = v158;
    sub_1B013F780(v97, v158);
    v99 = *(v26 + 48);
    if (v99(v98, 1, v95) == 1)
    {
      v100 = v33;
      sub_1B013F7F0(v98);
    }

    else
    {
      v101 = v156;
      sub_1B013F858(v98, v156);
      v102 = v159;
      sub_1B013FE38(v101, v159, type metadata accessor for FBKSInteraction.Content);
      sub_1B013D160(v102, v175);
      v103 = FBKSInteraction.Content.CAEnum.rawValue.getter();
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *v175 = v33;
      v105 = v103;
      v95 = v162;
      sub_1B0118364(v105, 0xD000000000000013, 0x80000001B015DC70, v104);
      v100 = *v175;
      v106 = v101;
      v6 = v160;
      v10 = v161;
      sub_1B013FEA0(v106, type metadata accessor for FBKSInteraction.Content);
    }

    v107 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
    swift_beginAccess();
    sub_1B013F780(&v2[v107], v6);
    if (v99(v6, 1, v95) == 1)
    {
      sub_1B013F7F0(v6);
    }

    else
    {
      sub_1B013F858(v6, v10);
      v108 = v159;
      sub_1B013FE38(v10, v159, type metadata accessor for FBKSInteraction.Content);
      sub_1B013D160(v108, v174);
      v109 = FBKSInteraction.Content.CAEnum.rawValue.getter();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      *v174 = v100;
      sub_1B0118364(v109, 0xD000000000000014, 0x80000001B015DC50, v110);
      v100 = *v174;
      sub_1B013FEA0(v10, type metadata accessor for FBKSInteraction.Content);
    }

    v111 = &v2[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
    swift_beginAccess();
    if (*(v111 + 1))
    {

      v112 = sub_1B014CC0C();

      v113 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v100;
      sub_1B0118364(v112, 0x7265566C65646F6DLL, 0xEC0000006E6F6973, v113);
      v114 = v173;
    }

    else
    {
      v114 = v100;
    }

    swift_beginAccess();
    v115 = sub_1B014CE5C();
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v172[0] = v114;
    sub_1B0118364(v115, 0x74736F6E67616964, 0xEB00000000736369, v116);
    v117 = v172[0];
    v118 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
    swift_beginAccess();
    v119 = sub_1B014CE5C();
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v117;
    sub_1B0118364(v119, 0xD000000000000010, 0x80000001B015D520, v120);
    v121 = v171;
    v122 = *&v2[v118];
    if (!v122)
    {
LABEL_81:
      swift_beginAccess();
      v147 = sub_1B014CE5C();
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v170 = v121;
      sub_1B0118364(v147, 0x7250686769487369, 0xEE00797469726F69, v148);
      v149 = v170;
      swift_beginAccess();
      v150 = sub_1B014CE5C();
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = v149;
      sub_1B0118364(v150, 0x73657250746E6573, 0xED00006465746E65, v151);
      v152 = v169[0];
      swift_beginAccess();
      v153 = sub_1B014CE5C();
      v154 = swift_isUniquelyReferenced_nonNull_native();
      v168 = v152;
      sub_1B0118364(v153, 0x6176457473726966, 0xEF6E6F697461756CLL, v154);
      return v168;
    }

    v123 = v122 + 64;
    v124 = 1 << *(v122 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v122 + 64);
    v127 = (v124 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v128 = 0;
    v166 = v122;
    while (v126)
    {
      v131 = v128;
LABEL_71:
      v132 = (*(v122 + 48) + 16 * (__clz(__rbit64(v126)) | (v131 << 6)));
      v134 = *v132;
      v133 = v132[1];

      v167 = sub_1B014CEDC();
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v171 = v121;
      v136 = sub_1B013E0D0(v134, v133);
      v138 = v121[2];
      v139 = (v137 & 1) == 0;
      v64 = __OFADD__(v138, v139);
      v140 = v138 + v139;
      if (v64)
      {
        goto LABEL_86;
      }

      v141 = v137;
      if (v121[3] >= v140)
      {
        if ((v135 & 1) == 0)
        {
          v146 = v136;
          sub_1B013F300();
          v136 = v146;
        }
      }

      else
      {
        sub_1B013E840(v140, v135);
        v136 = sub_1B013E0D0(v134, v133);
        if ((v141 & 1) != (v142 & 1))
        {
          goto LABEL_91;
        }
      }

      v126 &= v126 - 1;
      v121 = v171;
      if (v141)
      {
        v129 = v171[7];
        v130 = *(v129 + 8 * v136);
        *(v129 + 8 * v136) = v167;
      }

      else
      {
        v171[(v136 >> 6) + 8] |= 1 << v136;
        v143 = (v121[6] + 16 * v136);
        *v143 = v134;
        v143[1] = v133;
        *(v121[7] + 8 * v136) = v167;
        v144 = v121[2];
        v64 = __OFADD__(v144, 1);
        v145 = v144 + 1;
        if (v64)
        {
          goto LABEL_89;
        }

        v121[2] = v145;
      }

      v128 = v131;
      v122 = v166;
    }

    while (1)
    {
      v131 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      if (v131 >= v127)
      {

        goto LABEL_81;
      }

      v126 = *(v123 + 8 * v131);
      ++v128;
      if (v126)
      {
        goto LABEL_71;
      }
    }

LABEL_83:
    __break(1u);
  }

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
  result = sub_1B014D28C();
  __break(1u);
  return result;
}

uint64_t sub_1B013AD88()
{
  v0 = sub_1B014CB5C();
  __swift_allocate_value_buffer(v0, qword_1EDAE6AC8);
  __swift_project_value_buffer(v0, qword_1EDAE6AC8);
  return sub_1B014CB4C();
}

uint64_t sub_1B013AE0C(uint64_t a1, uint64_t a2)
{

  v2 = sub_1B014CD1C();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    do
    {
      if ((sub_1B014CBDC() & 1) == 0)
      {
        MEMORY[0x1B271E7E0](v4, v5);
      }

      v4 = sub_1B014CD1C();
      v5 = v6;
    }

    while (v6);
  }

  return 0;
}

void sub_1B013AED4(uint64_t a1)
{
  v19 = sub_1B011A788(MEMORY[0x1E69E7CC0]);
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v18 = a1;

  v7 = 0;
  v17 = a1 + 64;
  while (v5)
  {
LABEL_9:
    v13 = __clz(__rbit64(v5)) | (v7 << 6);
    v14 = (*(v18 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v5 &= v5 - 1;
    v8 = *(*(v18 + 56) + 8 * v13);
    sub_1B00D1FFC(*v14, v16);
    sub_1B00D1FFC(v15, v16);
    sub_1B01403DC();

    sub_1B014CEFC();
    sub_1B0140430();
    sub_1B00D1FA8();
    v9 = sub_1B014CFDC();
    v11 = v10;

    sub_1B013F96C(v8, v9, v11, &v19);
    swift_bridgeObjectRelease_n();
    sub_1B00D2010(v15, v16);

    v2 = v17;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v12);
    ++v7;
    if (v5)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1B013B218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B011A788(MEMORY[0x1E69E7CC0]);
  v7 = -1 << *(a3 + 32);
  v8 = *(a3 + 64);
  v9 = ~v7;
  v10 = -v7;
  v28 = a3;
  v29 = a3 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v30 = v9;
  v31 = 0;
  v32 = v11 & v8;
  v33 = 0;

  sub_1B0139E20(&v24);
  v12 = v27;
  if (!v27)
  {
LABEL_23:
    sub_1B0140370(v28);
    return v6;
  }

  v14 = v24;
  v13 = v25;
  v15 = v26;
  while (1)
  {
    sub_1B00D1FFC(v13, v15);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v13 = 0x657275746165663ALL;
        v15 = 0xEF6E69616D6F645FLL;
        goto LABEL_21;
      }

      if (v15 != 4)
      {
        if (v15 == 5)
        {
          v13 = 0xD000000000000012;
          v15 = 0x80000001B015C080;
          goto LABEL_21;
        }

LABEL_17:
        sub_1B00D2010(v13, v15);
        goto LABEL_21;
      }

      v13 = 0x6165665F6275733ALL;
      v16 = 1701999988;
    }

    else
    {
      if (!v15)
      {
        v15 = 0xE600000000000000;
        v13 = 0x656C7469743ALL;
        goto LABEL_21;
      }

      if (v15 == 1)
      {
        v15 = 0xE500000000000000;
        v13 = 0x616572613ALL;
        goto LABEL_21;
      }

      if (v15 != 2)
      {
        goto LABEL_17;
      }

      v13 = 0x706972637365643ALL;
      v16 = 1852795252;
    }

    v15 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_21:
    v24 = a1;
    v25 = a2;

    result = MEMORY[0x1B271E7F0](95, 0xE100000000000000);
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = sub_1B014D22C();
    MEMORY[0x1B271E7F0](v18);

    v20 = v24;
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B58, &qword_1B014F338);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B014F1E0;
    *(v21 + 32) = v13;
    *(v21 + 40) = v15;
    v24 = v21;
    sub_1B013B534(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B80, qword_1B0151250);
    sub_1B0140378();
    sub_1B014CBEC();

    v22 = sub_1B014CC0C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B0118364(v22, v20, v19, isUniquelyReferenced_nonNull_native);

    sub_1B0139E20(&v24);
    v14 = v24;
    v13 = v25;
    v15 = v26;
    v12 = v27;
    if (!v27)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B013B534(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1B00D12DC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void static RACAnalytics.sendEvaluation(_:isInline:)(char *a1, char a2)
{
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B013FE38(&a1[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject], v6, type metadata accessor for FBKSEvaluation.Subject);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = FBKSEvaluation.CAPayload(_:)(a2 & 1);
    if (qword_1EDAE6AC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B014CB5C();
    __swift_project_value_buffer(v9, qword_1EDAE6AC8);

    v10 = sub_1B014CB3C();
    v11 = sub_1B014CF3C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v8;
      v32 = v13;
      *v12 = 136380675;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4FC8, &qword_1B0159DC8);
      v14 = sub_1B014CC6C();
      v16 = sub_1B00E6C2C(v14, v15, &v32);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B00C4000, v10, v11, "Sending CAPayload %{private}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B271F750](v13, -1, -1);
      MEMORY[0x1B271F750](v12, -1, -1);
    }

    if (v8)
    {
      v17 = sub_1B014CC0C();
      sub_1B00D0014(0, &qword_1EDAE6F50, 0x1E69E58C0);
      v18 = sub_1B014CB9C();
      AnalyticsSendEvent();

      v19 = sub_1B014CC0C();
      v20 = sub_1B014CB9C();
      AnalyticsSendEvent();

      _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(v7);
      v21 = sub_1B014CC0C();

      v22 = sub_1B014CB9C();

      AnalyticsSendEvent();
    }
  }

  else
  {
    sub_1B013FEA0(v6, type metadata accessor for FBKSEvaluation.Subject);
    if (qword_1EDAE6AC0 != -1)
    {
      swift_once();
    }

    v23 = sub_1B014CB5C();
    __swift_project_value_buffer(v23, qword_1EDAE6AC8);
    v24 = a1;
    v7 = sub_1B014CB3C();
    v25 = sub_1B014CF4C();

    if (os_log_type_enabled(v7, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      v28 = FBKSEvaluation.Subject.description.getter();
      v30 = sub_1B00E6C2C(v28, v29, &v32);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B00C4000, v7, v25, "Unable to send analytics without Interaction: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B271F750](v27, -1, -1);
      MEMORY[0x1B271F750](v26, -1, -1);
    }
  }
}

Swift::OpaquePointer_optional __swiftcall FBKSEvaluation.CAPayload(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B013FE38(v1 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject, v5, type metadata accessor for FBKSEvaluation.Subject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B013FEA0(v5, type metadata accessor for FBKSEvaluation.Subject);
    v14 = 0;
LABEL_46:
    v76 = v14;
    goto LABEL_54;
  }

  v7 = *v5;
  v8 = FBKSInteraction.CAPayload(_:)(EnumCaseMultiPayload);
  v9 = sub_1B014CE5C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v8;
  sub_1B0118364(v9, 0x656E696C6E497369, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v80;
  LOBYTE(v80) = *(v2 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action) + 1;
  v12 = FBKSEvaluation.Action.CAEnum.rawValue.getter();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v11;
  sub_1B0118364(v12, 0x6E456E6F69746361, 0xEA00000000006D75, v13);
  v14 = v80;
  if (!*(v2 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse + 8))
  {
LABEL_45:

    goto LABEL_46;
  }

  v77 = v7;
  v78 = v2 + OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse;

  sub_1B013AED4(v15);
  v17 = v16;

  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v79 = v17;

  v23 = 0;
  if (v21)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_9:
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v26 >= v22)
    {

      if (!*(v78 + 8))
      {
        v7 = v77;
        goto LABEL_45;
      }

      v47 = *(v78 + 16);

      v48 = sub_1B013B218(0x6E6F697473657571, 0xE800000000000000, v47);

      v49 = v48 + 64;
      v50 = 1 << *(v48 + 32);
      v51 = -1;
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      v52 = v51 & *(v48 + 64);
      v53 = (v50 + 63) >> 6;
      v79 = v48;

      v54 = 0;
      if (v52)
      {
        goto LABEL_29;
      }

LABEL_30:
      while (1)
      {
        v57 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_48;
        }

        if (v57 >= v53)
        {

          goto LABEL_46;
        }

        v52 = *(v49 + 8 * v57);
        ++v54;
        if (v52)
        {
          while (1)
          {
            v58 = __clz(__rbit64(v52)) | (v57 << 6);
            v59 = (*(v79 + 48) + 16 * v58);
            v61 = *v59;
            v60 = v59[1];
            v62 = *(*(v79 + 56) + 8 * v58);

            v63 = v62;
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v80 = v14;
            v65 = sub_1B013E0D0(v61, v60);
            v67 = v14[2];
            v68 = (v66 & 1) == 0;
            v38 = __OFADD__(v67, v68);
            v69 = v67 + v68;
            if (v38)
            {
              goto LABEL_50;
            }

            v70 = v66;
            if (v14[3] >= v69)
            {
              if ((v64 & 1) == 0)
              {
                v75 = v65;
                sub_1B013F300();
                v65 = v75;
              }
            }

            else
            {
              sub_1B013E840(v69, v64);
              v65 = sub_1B013E0D0(v61, v60);
              if ((v70 & 1) != (v71 & 1))
              {
                goto LABEL_53;
              }
            }

            v52 &= v52 - 1;
            v14 = v80;
            if (v70)
            {
              v55 = v80[7];
              v56 = *(v55 + 8 * v65);
              *(v55 + 8 * v65) = v63;

              v54 = v57;
              if (!v52)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v80[(v65 >> 6) + 8] |= 1 << v65;
              v72 = (v14[6] + 16 * v65);
              *v72 = v61;
              v72[1] = v60;
              *(v14[7] + 8 * v65) = v63;
              v73 = v14[2];
              v38 = __OFADD__(v73, 1);
              v74 = v73 + 1;
              if (v38)
              {
                goto LABEL_52;
              }

              v14[2] = v74;
              v54 = v57;
              if (!v52)
              {
                goto LABEL_30;
              }
            }

LABEL_29:
            v57 = v54;
          }
        }
      }
    }

    v21 = *(v18 + 8 * v26);
    ++v23;
  }

  while (!v21);
  while (1)
  {
    v27 = __clz(__rbit64(v21)) | (v26 << 6);
    v28 = (*(v79 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(*(v79 + 56) + 8 * v27);

    v32 = v31;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v14;
    v34 = sub_1B013E0D0(v30, v29);
    v36 = v14[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      break;
    }

    v40 = v35;
    if (v14[3] >= v39)
    {
      if ((v33 & 1) == 0)
      {
        v45 = v34;
        sub_1B013F300();
        v34 = v45;
      }
    }

    else
    {
      sub_1B013E840(v39, v33);
      v34 = sub_1B013E0D0(v30, v29);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_53;
      }
    }

    v21 &= v21 - 1;
    v14 = v80;
    if (v40)
    {
      v24 = v80[7];
      v25 = *(v24 + 8 * v34);
      *(v24 + 8 * v34) = v32;

      v23 = v26;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v80[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v14[6] + 16 * v34);
      *v42 = v30;
      v42[1] = v29;
      *(v14[7] + 8 * v34) = v32;
      v43 = v14[2];
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_51;
      }

      v14[2] = v44;
      v23 = v26;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v26 = v23;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  v76 = sub_1B014D28C();
  __break(1u);
LABEL_54:
  result.value._rawValue = v76;
  result.is_nil = v46;
  return result;
}

uint64_t static RACAnalytics.sendInteractionPresented(_:isInline:)(uint64_t a1, uint64_t a2)
{
  v3 = FBKSInteraction.CAPayload(_:)(a2);
  v4 = _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(a1);
  _s15FeedbackService12RACAnalyticsV24sendInteractionPresented16analyticsPayload22featureDomainEventNameySDySSSo8NSObjectCG_SStFZ_0(v3, v4, v5);
}

unsigned __int8 *FBKSInteraction.FeatureDomain.caEnumValue(fromInteraction:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v8 = xmmword_1B01511A0;
  if ((_s15FeedbackService15FBKSInteractionC13FeatureDomainO2eeoiySbAE_AEtFZ_0(&v9, &v8) & 1) != 0 && a1)
  {
    v9 = v4;
    v10 = v3;
    v5 = a1;
    v6 = sub_1B013CC10(v5);

    return v6;
  }

  else
  {
    v9 = v4;
    v10 = v3;
    sub_1B0100B40(v4, v3);
    sub_1B013C244(&v9, &v8);
    return FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
  }
}

NSNumber __swiftcall FBKSInteraction.Content.caEnumValue()()
{
  v1 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B013FE38(v0, v3, type metadata accessor for FBKSInteraction.Content);
  sub_1B013D160(v3, &v6);
  return FBKSInteraction.Content.CAEnum.rawValue.getter();
}

uint64_t *sub_1B013C244@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 0x24)
  {
    result = sub_1B0100A3C(*result, v3);
    v4 = 34;
  }

  else
  {
    v4 = byte_1B015A0E2[v3];
  }

  *a2 = v4;
  return result;
}

void FBKSInteraction.FeatureDomain.CAEnum.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v4 = a1;
  v5 = sub_1B014CF8C();
  v6 = sub_1B014CF9C();

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = sub_1B014CF8C();
    v10 = sub_1B014CF9C();

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = v8;
      v12 = sub_1B014CF8C();
      v13 = sub_1B014CF9C();

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v14 = v11;
        v15 = sub_1B014CF8C();
        v16 = sub_1B014CF9C();

        if (v16)
        {
          v7 = 3;
        }

        else
        {
          v17 = v14;
          v18 = sub_1B014CF8C();
          v19 = sub_1B014CF9C();

          if (v19)
          {
            v7 = 4;
          }

          else
          {
            v20 = v17;
            v21 = sub_1B014CF8C();
            v22 = sub_1B014CF9C();

            if (v22)
            {
              v7 = 5;
            }

            else
            {
              v23 = v20;
              v24 = sub_1B014CF8C();
              v25 = sub_1B014CF9C();

              if (v25)
              {
                v7 = 6;
              }

              else
              {
                v26 = v23;
                v27 = sub_1B014CF8C();
                v28 = sub_1B014CF9C();

                if (v28)
                {
                  v7 = 7;
                }

                else
                {
                  v29 = v26;
                  v30 = sub_1B014CF8C();
                  v31 = sub_1B014CF9C();

                  if (v31)
                  {
                    v7 = 8;
                  }

                  else
                  {
                    v32 = v29;
                    v33 = sub_1B014CF8C();
                    v34 = sub_1B014CF9C();

                    if (v34)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      v35 = v32;
                      v36 = sub_1B014CF8C();
                      v37 = sub_1B014CF9C();

                      if (v37)
                      {
                        v7 = 10;
                      }

                      else
                      {
                        v38 = v35;
                        v39 = sub_1B014CF8C();
                        v40 = sub_1B014CF9C();

                        if (v40)
                        {
                          v7 = 11;
                        }

                        else
                        {
                          v41 = v38;
                          v42 = sub_1B014CF8C();
                          v43 = sub_1B014CF9C();

                          if (v43)
                          {
                            v7 = 12;
                          }

                          else
                          {
                            v44 = v41;
                            v45 = sub_1B014CF8C();
                            v46 = sub_1B014CF9C();

                            if (v46)
                            {
                              v7 = 13;
                            }

                            else
                            {
                              v47 = v44;
                              v48 = sub_1B014CF8C();
                              v49 = sub_1B014CF9C();

                              if (v49)
                              {
                                v7 = 14;
                              }

                              else
                              {
                                v50 = v47;
                                v51 = sub_1B014CF8C();
                                v52 = sub_1B014CF9C();

                                if (v52)
                                {
                                  v7 = 15;
                                }

                                else
                                {
                                  v53 = v50;
                                  v54 = sub_1B014CF8C();
                                  v55 = sub_1B014CF9C();

                                  if (v55)
                                  {
                                    v7 = 16;
                                  }

                                  else
                                  {
                                    v56 = v53;
                                    v57 = sub_1B014CF8C();
                                    v58 = sub_1B014CF9C();

                                    if (v58)
                                    {
                                      v7 = 17;
                                    }

                                    else
                                    {
                                      v59 = v56;
                                      v60 = sub_1B014CF8C();
                                      v61 = sub_1B014CF9C();

                                      if (v61)
                                      {
                                        v7 = 18;
                                      }

                                      else
                                      {
                                        v62 = v59;
                                        v63 = sub_1B014CF8C();
                                        v64 = sub_1B014CF9C();

                                        if (v64)
                                        {

                                          v7 = 19;
                                        }

                                        else
                                        {
                                          v65 = v62;
                                          v66 = sub_1B014CF8C();
                                          v67 = sub_1B014CF9C();

                                          if (v67)
                                          {

                                            v7 = 20;
                                          }

                                          else
                                          {
                                            v68 = v65;
                                            v69 = sub_1B014CF8C();
                                            v70 = sub_1B014CF9C();

                                            if (v70)
                                            {

                                              v7 = 21;
                                            }

                                            else
                                            {
                                              v71 = v68;
                                              v72 = sub_1B014CF8C();
                                              v73 = sub_1B014CF9C();

                                              if (v73)
                                              {

                                                v7 = 22;
                                              }

                                              else
                                              {
                                                v74 = v71;
                                                v75 = sub_1B014CF8C();
                                                v76 = sub_1B014CF9C();

                                                if (v76)
                                                {

                                                  v7 = 23;
                                                }

                                                else
                                                {
                                                  v77 = v74;
                                                  v78 = sub_1B014CF8C();
                                                  v79 = sub_1B014CF9C();

                                                  if (v79)
                                                  {

                                                    v7 = 24;
                                                  }

                                                  else
                                                  {
                                                    v80 = v77;
                                                    v81 = sub_1B014CF8C();
                                                    v82 = sub_1B014CF9C();

                                                    if (v82)
                                                    {

                                                      v7 = 25;
                                                    }

                                                    else
                                                    {
                                                      v83 = v80;
                                                      v84 = sub_1B014CF8C();
                                                      v85 = sub_1B014CF9C();

                                                      if (v85)
                                                      {

                                                        v7 = 26;
                                                      }

                                                      else
                                                      {
                                                        v86 = v83;
                                                        v87 = sub_1B014CF8C();
                                                        v88 = sub_1B014CF9C();

                                                        if (v88)
                                                        {

                                                          v7 = 27;
                                                        }

                                                        else
                                                        {
                                                          v89 = v86;
                                                          v90 = sub_1B014CF8C();
                                                          v91 = sub_1B014CF9C();

                                                          if (v91)
                                                          {

                                                            v7 = 28;
                                                          }

                                                          else
                                                          {
                                                            v92 = v89;
                                                            v93 = sub_1B014CF8C();
                                                            v94 = sub_1B014CF9C();

                                                            if (v94)
                                                            {

                                                              v7 = 29;
                                                            }

                                                            else
                                                            {
                                                              v95 = v92;
                                                              v96 = sub_1B014CF8C();
                                                              v97 = sub_1B014CF9C();

                                                              if (v97)
                                                              {

                                                                v7 = 30;
                                                              }

                                                              else
                                                              {
                                                                v98 = v95;
                                                                v99 = sub_1B014CF8C();
                                                                v100 = sub_1B014CF9C();

                                                                if (v100)
                                                                {

                                                                  v7 = 31;
                                                                }

                                                                else
                                                                {
                                                                  v101 = v98;
                                                                  v102 = sub_1B014CF8C();
                                                                  v103 = sub_1B014CF9C();

                                                                  if (v103)
                                                                  {

                                                                    v7 = 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v104 = v101;
                                                                    v105 = sub_1B014CF8C();
                                                                    v106 = sub_1B014CF9C();

                                                                    if (v106)
                                                                    {

                                                                      v7 = 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v107 = v104;
                                                                      v108 = sub_1B014CF8C();
                                                                      v109 = sub_1B014CF9C();

                                                                      if (v109)
                                                                      {

                                                                        v7 = 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v110 = v107;
                                                                        v111 = sub_1B014CF8C();
                                                                        v112 = sub_1B014CF9C();

                                                                        if (v112)
                                                                        {

                                                                          v7 = 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v113 = sub_1B014CF8C();
                                                                          v114 = sub_1B014CF9C();

                                                                          if (v114)
                                                                          {
                                                                            v7 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v7 = 37;
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
          }
        }
      }
    }
  }

  *a2 = v7;
}

uint64_t sub_1B013CBA4@<X0>(uint64_t *a1@<X8>)
{
  result = FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
  *a1 = result;
  return result;
}

NSNumber __swiftcall FBKSInteraction.FeatureDomain.caEnumValue()()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  sub_1B0100B40(v4[0], v1);
  sub_1B013C244(v4, &v3);
  return FBKSInteraction.FeatureDomain.CAEnum.rawValue.getter();
}

unsigned __int8 *sub_1B013CC10(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!v3 || !*(v3 + 16))
  {
    goto LABEL_30;
  }

  v4 = sub_1B013E148(0, 3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (!v6[2])
  {
    goto LABEL_29;
  }

  v8 = v6[4];
  v7 = v6[5];

  if (qword_1EDAE6AC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B014CB5C();
  __swift_project_value_buffer(v9, qword_1EDAE6AC8);

  v10 = sub_1B014CB3C();
  v11 = sub_1B014CF2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B00E6C2C(v8, v7, v50);
    _os_log_impl(&dword_1B00C4000, v10, v11, "Extracting CA value from given answer [%s]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B271F750](v13, -1, -1);
    MEMORY[0x1B271F750](v12, -1, -1);
  }

  if ((sub_1B014CD7C() & 1) == 0 || ((v14 = sub_1B014CCBC(), v15 = sub_1B013F8BC(v14, v8, v7), v17 = v16, v19 = v18, v21 = v20, , v22 = MEMORY[0x1B271E780](v15, v17, v19, v21), v24 = v23, result = , v26 = HIBYTE(v24) & 0xF, v27 = v22 & 0xFFFFFFFFFFFFLL, (v24 & 0x2000000000000000) != 0) ? (v28 = HIBYTE(v24) & 0xF) : (v28 = v22 & 0xFFFFFFFFFFFFLL), !v28))
  {
LABEL_29:

    goto LABEL_30;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v51 = 0;
    v30 = sub_1B012E4EC(v22, v24, 10);
    v48 = v49;
    goto LABEL_75;
  }

  if ((v24 & 0x2000000000000000) == 0)
  {
    if ((v22 & 0x1000000000000000) != 0)
    {
      result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B014D06C();
    }

    v29 = *result;
    if (v29 == 43)
    {
      if (v27 >= 1)
      {
        v26 = v27 - 1;
        if (v27 != 1)
        {
          v30 = 0;
          if (result)
          {
            v37 = result + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                goto LABEL_73;
              }

              v39 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                goto LABEL_73;
              }

              v30 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_73;
              }

              ++v37;
              if (!--v26)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_73;
      }

      goto LABEL_82;
    }

    if (v29 != 45)
    {
      if (v27)
      {
        v30 = 0;
        if (result)
        {
          while (1)
          {
            v43 = *result - 48;
            if (v43 > 9)
            {
              goto LABEL_73;
            }

            v44 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_73;
            }

            v30 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v27)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_73:
      v30 = 0;
      LOBYTE(v26) = 1;
      goto LABEL_74;
    }

    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v30 = 0;
        if (result)
        {
          v31 = result + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_73;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_73;
            }

            v30 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              goto LABEL_73;
            }

            ++v31;
            if (!--v26)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_65:
        LOBYTE(v26) = 0;
LABEL_74:
        v51 = v26;
        v48 = v26;
LABEL_75:

        if ((v48 & 1) == 0 && v30 >= 40)
        {
          return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        }

LABEL_30:
        sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
        return sub_1B014CF8C();
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v50[0] = v22;
  v50[1] = v24 & 0xFFFFFFFFFFFFFFLL;
  if (v22 != 43)
  {
    if (v22 != 45)
    {
      if (v26)
      {
        v30 = 0;
        v45 = v50;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          v45 = (v45 + 1);
          if (!--v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v26)
    {
      if (--v26)
      {
        v30 = 0;
        v34 = v50 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_81;
  }

  if (v26)
  {
    if (--v26)
    {
      v30 = 0;
      v40 = v50 + 1;
      while (1)
      {
        v41 = *v40 - 48;
        if (v41 > 9)
        {
          break;
        }

        v42 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          break;
        }

        ++v40;
        if (!--v26)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1B013D160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B013FE38(a1, v6, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      if (qword_1EDAE6AC0 != -1)
      {
        swift_once();
      }

      v10 = sub_1B014CB5C();
      __swift_project_value_buffer(v10, qword_1EDAE6AC8);
      v11 = sub_1B014CB3C();
      v12 = sub_1B014CF4C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_1B00E6C2C(0x293A5F2874696E69, 0xE800000000000000, &v16);
        _os_log_impl(&dword_1B00C4000, v11, v12, "_file(name:data:) should not be sent to %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1B271F750](v14, -1, -1);
        MEMORY[0x1B271F750](v13, -1, -1);
      }

      result = sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      v9 = 17;
      break;
    case 2u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 0;
      break;
    case 3u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 1;
      break;
    case 4u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 2;
      break;
    case 5u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 3;
      break;
    case 6u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 4;
      break;
    case 7u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 5;
      break;
    case 8u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 6;
      break;
    case 9u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 7;
      break;
    case 0xAu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 8;
      break;
    case 0xBu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 9;
      break;
    case 0xCu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 10;
      break;
    case 0xDu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 11;
      break;
    case 0xEu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 12;
      break;
    case 0xFu:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 13;
      break;
    case 0x10u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 14;
      break;
    case 0x11u:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      result = sub_1B013FEA0(v6, type metadata accessor for FBKSInteraction.Content);
      v9 = 16;
      break;
    default:
      sub_1B013FEA0(a1, type metadata accessor for FBKSInteraction.Content);
      v7 = sub_1B014CA4C();
      result = (*(*(v7 - 8) + 8))(v6, v7);
      v9 = 15;
      break;
  }

  *a2 = v9;
  return result;
}

void FBKSInteraction.Content.CAEnum.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  sub_1B00D0014(0, &qword_1EDAE6F58, 0x1E696AD98);
  v4 = a1;
  v5 = sub_1B014CF8C();
  v6 = sub_1B014CF9C();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = sub_1B014CF8C();
    v10 = sub_1B014CF9C();

    if (v10)
    {

      v7 = 1;
    }

    else
    {
      v11 = v8;
      v12 = sub_1B014CF8C();
      v13 = sub_1B014CF9C();

      if (v13)
      {

        v7 = 2;
      }

      else
      {
        v14 = v11;
        v15 = sub_1B014CF8C();
        v16 = sub_1B014CF9C();

        if (v16)
        {

          v7 = 3;
        }

        else
        {
          v17 = v14;
          v18 = sub_1B014CF8C();
          v19 = sub_1B014CF9C();

          if (v19)
          {

            v7 = 4;
          }

          else
          {
            v20 = v17;
            v21 = sub_1B014CF8C();
            v22 = sub_1B014CF9C();

            if (v22)
            {

              v7 = 5;
            }

            else
            {
              v23 = v20;
              v24 = sub_1B014CF8C();
              v25 = sub_1B014CF9C();

              if (v25)
              {

                v7 = 6;
              }

              else
              {
                v26 = v23;
                v27 = sub_1B014CF8C();
                v28 = sub_1B014CF9C();

                if (v28)
                {

                  v7 = 7;
                }

                else
                {
                  v29 = v26;
                  v30 = sub_1B014CF8C();
                  v31 = sub_1B014CF9C();

                  if (v31)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v32 = v29;
                    v33 = sub_1B014CF8C();
                    v34 = sub_1B014CF9C();

                    if (v34)
                    {

                      v7 = 9;
                    }

                    else
                    {
                      v35 = v32;
                      v36 = sub_1B014CF8C();
                      v37 = sub_1B014CF9C();

                      if (v37)
                      {

                        v7 = 10;
                      }

                      else
                      {
                        v38 = v35;
                        v39 = sub_1B014CF8C();
                        v40 = sub_1B014CF9C();

                        if (v40)
                        {

                          v7 = 11;
                        }

                        else
                        {
                          v41 = v38;
                          v42 = sub_1B014CF8C();
                          v43 = sub_1B014CF9C();

                          if (v43)
                          {

                            v7 = 12;
                          }

                          else
                          {
                            v44 = v41;
                            v45 = sub_1B014CF8C();
                            v46 = sub_1B014CF9C();

                            if (v46)
                            {

                              v7 = 13;
                            }

                            else
                            {
                              v47 = v44;
                              v48 = sub_1B014CF8C();
                              v49 = sub_1B014CF9C();

                              if (v49)
                              {

                                v7 = 14;
                              }

                              else
                              {
                                v50 = v47;
                                v51 = sub_1B014CF8C();
                                v52 = sub_1B014CF9C();

                                if (v52)
                                {

                                  v7 = 15;
                                }

                                else
                                {
                                  v53 = v50;
                                  v54 = sub_1B014CF8C();
                                  v55 = sub_1B014CF9C();

                                  if (v55)
                                  {

                                    v7 = 16;
                                  }

                                  else
                                  {
                                    v56 = sub_1B014CF8C();
                                    v57 = sub_1B014CF9C();

                                    if (v57)
                                    {
                                      v7 = 17;
                                    }

                                    else
                                    {
                                      v7 = 18;
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

  *a2 = v7;
}