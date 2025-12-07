uint64_t sub_1C121F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[1] = a5;
  v26[2] = a2;
  v26[3] = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  v23 = *(a1 + *(type metadata accessor for PhotosStaticListPicker(0, v20, v21, v22) + 48));
  sub_1C12661D0();
  v23(v11);
  (*(v9 + 8))(v11, a3);
  sub_1C0FDBA4C();
  v24 = *(v13 + 8);
  v24(v16, a4);
  sub_1C0FDBA4C();
  return (v24)(v19, a4);
}

uint64_t sub_1C121F2F4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, _BYTE *a5@<X8>)
{
  v7 = type metadata accessor for PhotosStaticListPicker(0, a2, a3, a4);
  result = sub_1C121F34C(v7);
  *a5 = (result == a1) & ~v9;
  return result;
}

uint64_t sub_1C121F34C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F68, &unk_1C12C97F0);
  sub_1C1265420();
  return v2;
}

void sub_1C121F3B8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  if (*a1 == 1)
  {
    v16 = type metadata accessor for PhotosStaticListPicker(0, a6, a7, a8);
    sub_1C121F4B8(a5, 0, v16);
    sub_1C12661D0();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a6);
    sub_1C121E784(v15, v16);
  }
}

double sub_1C121F4B8(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F68, &unk_1C12C97F0);
  sub_1C1265430();
  return result;
}

void sub_1C121F530(uint64_t a1)
{
  sub_1C1266790();
  sub_1C1265640();
  if (v1 <= 0x3F)
  {
    sub_1C12661A0();
    if (v2 <= 0x3F)
    {
      sub_1C1007F88();
      if (v3 <= 0x3F)
      {
        sub_1C121FA2C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_DWORD *sub_1C121F5FC(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 7;
  if (!v6)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    v19 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v19 + v9 + 8) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return (EnumTagSinglePayload - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  else
  {
    v11 = ((((((v10 + *(*(v4 - 8) + 64) + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = (v8 + (v13 | v18) + 1);
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1C121F794(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v22 = ((v20 + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v26 = a2 + 1;

              __swift_storeEnumTagSinglePayload((v20 + v12 + 8) & ~v12, v26, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v23 = ~(-1 << (8 * v13));
              }

              else
              {
                v23 = -1;
              }

              if (v13)
              {
                v24 = v23 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v25 = v13;
                }

                else
                {
                  v25 = 4;
                }

                bzero(v22, v13);
                switch(v25)
                {
                  case 2:
                    *v22 = v24;
                    break;
                  case 3:
                    *v22 = v24;
                    v22[2] = BYTE2(v24);
                    break;
                  case 4:
                    *v22 = v24;
                    break;
                  default:
                    *v22 = v24;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = a2 - 1;
            }

            *v20 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1C121FA2C(uint64_t a1)
{
  if (!qword_1EBE97F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929A8, &unk_1C12AFBE0);
    v1 = sub_1C1265450();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE97F60);
    }
  }
}

uint64_t sub_1C121FA90(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for PhotosStaticListPicker(0, v3, v4, v5) - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1C121ED00(a1, v7, v3, v4, v5);
}

uint64_t sub_1C121FB48@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = OUTLINED_FUNCTION_2_68();
  v8 = *(type metadata accessor for PhotosStaticListPicker(v6, v7, v4, v5) - 8);
  v9 = *(v1 + ((*(v8 + 64) + ((*(v8 + 80) + 56) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C121F2F4(v9, v3, v4, v5, a1);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_2_68();
  type metadata accessor for PhotosStaticListPicker(v2, v3, v4, v5);
  OUTLINED_FUNCTION_10_4();
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  sub_1C1266790();
  v8 = *(sub_1C1265640() + 32);
  if (!__swift_getEnumTagSinglePayload(v0 + v7 + v8, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v7 + v8, v1);
  }

  return swift_deallocObject();
}

void sub_1C121FD6C(_BYTE *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = OUTLINED_FUNCTION_2_68();
  v8 = *(type metadata accessor for PhotosStaticListPicker(v6, v7, v4, v5) - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C121F3B8(a1, v10, v11, v1 + v9, v12, v3, v4, v5);
}

void OneUpChromeLegibilityView.init(model:enableDebugBorders:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v6 = *(type metadata accessor for OneUpChromeLegibilityView(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
}

uint64_t type metadata accessor for OneUpChromeLegibilityView(uint64_t a1)
{
  result = qword_1EDE7C9A8;
  if (!qword_1EDE7C9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpChromeLegibilityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_58();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F70, &qword_1C12C9888);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F78, &qword_1C12C9890);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  *v12 = sub_1C1263AA0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F80, &qword_1C12C9898);
  sub_1C12201B0(v3, &v12[*(v17 + 44)]);
  v12[*(v10 + 44)] = 0;
  sub_1C1220C08();
  v18 = sub_1C1222F4C();

  if (v18)
  {
    (*(v7 + 104))(v2, *MEMORY[0x1E697DBA8], v5);
  }

  else
  {
    sub_1C1220F3C(v2);
  }

  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v13 + 36)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70, &qword_1C12B69E0);
  (*(v7 + 32))(v20 + *(v21 + 28), v2, v5);
  *v20 = KeyPath;
  sub_1C0FDB71C(v12, v16, &qword_1EBE97F70, &qword_1C12C9888);
  v22 = sub_1C12631E0();
  v23 = sub_1C1264470();
  sub_1C0FDB71C(v16, a1, &qword_1EBE97F78, &qword_1C12C9890);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F88, &qword_1C12C98D8);
  v25 = a1 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23;
  return result;
}

uint64_t sub_1C12201B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F98, &unk_1C12C9970);
  MEMORY[0x1EEE9AC00](v76);
  v4 = &v61 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A90, &unk_1C12C2128);
  MEMORY[0x1EEE9AC00](v63);
  v6 = &v61 - v5;
  v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA0, &unk_1C12C9980);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A88, &qword_1C12C2120);
  v70 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA8, &qword_1C12C9990);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v72 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v74 = &v61 - v28;
  sub_1C1220C08();
  sub_1C1223BB0();

  PhotosBlurLegibilityGradient.init(spec:)(v9, v12);
  sub_1C1220C08();
  sub_1C1224208();

  sub_1C12659A0();
  sub_1C1262C80();
  v29 = &v12[*(v10 + 36)];
  v30 = v85;
  *v29 = v84;
  *(v29 + 1) = v30;
  *(v29 + 2) = v86;
  sub_1C1265A30();
  v79 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB0, &qword_1C12C9998);
  v32 = sub_1C122155C();
  v33 = sub_1C12215E8();
  v78 = v31;
  v77 = v32;
  v34 = v33;
  sub_1C1265030();

  sub_1C12216A0(v12);
  v35 = *(a1 + 8);
  v73 = (v70 + 8);
  v62 = v35;
  v68 = v4;
  v61 = v6;
  if (v35 == 1)
  {
    v36 = sub_1C1265180();
    v37.n128_u64[0] = 1.0;
    sub_1C11C37BC(v36, v6, v37, v38, v39);

    sub_1C0FDB800(v6, v4, &qword_1EBE96A90, &unk_1C12C2128);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    *&v87 = v10;
    *(&v87 + 1) = v78;
    *&v88 = v77;
    *(&v88 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    sub_1C0FD1A5C(v6, &qword_1EBE96A90, &unk_1C12C2128);
  }

  else
  {
    (*(v70 + 16))(v4, v16, v75);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    *&v87 = v10;
    *(&v87 + 1) = v78;
    *&v88 = v77;
    *(&v88 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
  }

  v40 = *v73;
  v41 = v16;
  v42 = v75;
  (*v73)(v41, v75);
  sub_1C0FDB71C(v72, v74, &qword_1EBE97FA8, &qword_1C12C9990);
  sub_1C1220C08();
  sub_1C1223DE8();

  PhotosBlurLegibilityGradient.init(spec:)(v9, v12);
  sub_1C1220C08();
  sub_1C1224300();

  sub_1C12659A0();
  sub_1C1262C80();
  v43 = &v12[*(v10 + 36)];
  v44 = v88;
  *v43 = v87;
  *(v43 + 1) = v44;
  *(v43 + 2) = v89;
  v45 = sub_1C1265A30();
  MEMORY[0x1EEE9AC00](v45);
  *(&v61 - 2) = a1;
  v46 = v71;
  sub_1C1265030();

  sub_1C12216A0(v12);
  if (v62)
  {
    v47 = sub_1C1265180();
    v48.n128_u64[0] = 1.0;
    v49 = v61;
    sub_1C11C37BC(v47, v61, v48, v50, v51);

    sub_1C0FDB800(v49, v68, &qword_1EBE96A90, &unk_1C12C2128);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    v80 = v10;
    v81 = v78;
    v82 = v77;
    v83 = v34;
    swift_getOpaqueTypeConformance2();
    v52 = v64;
    v46 = v71;
    sub_1C1263C20();
    sub_1C0FD1A5C(v49, &qword_1EBE96A90, &unk_1C12C2128);
  }

  else
  {
    (*(v70 + 16))(v68, v46, v42);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    v80 = v10;
    v81 = v78;
    v82 = v77;
    v83 = v34;
    swift_getOpaqueTypeConformance2();
    v52 = v64;
    sub_1C1263C20();
  }

  v40(v46, v42);
  v53 = v65;
  sub_1C0FDB71C(v52, v65, &qword_1EBE97FA8, &qword_1C12C9990);
  v54 = v74;
  v55 = v66;
  sub_1C0FDB800(v74, v66, &qword_1EBE97FA8, &qword_1C12C9990);
  v56 = v67;
  sub_1C0FDB800(v53, v67, &qword_1EBE97FA8, &qword_1C12C9990);
  v57 = v69;
  sub_1C0FDB800(v55, v69, &qword_1EBE97FA8, &qword_1C12C9990);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FC0, &qword_1C12C99B0);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_1C0FDB800(v56, v57 + *(v58 + 64), &qword_1EBE97FA8, &qword_1C12C9990);
  sub_1C0FD1A5C(v53, &qword_1EBE97FA8, &qword_1C12C9990);
  sub_1C0FD1A5C(v54, &qword_1EBE97FA8, &qword_1C12C9990);
  sub_1C0FD1A5C(v56, &qword_1EBE97FA8, &qword_1C12C9990);
  return sub_1C0FD1A5C(v55, &qword_1EBE97FA8, &qword_1C12C9990);
}

uint64_t sub_1C1220C08()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1220D48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  if (sub_1C1220DF4(a2))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB8, &unk_1C12C99A0);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB0, &qword_1C12C9998);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C1220DF4(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_58();
  v8 = *(v1 + 24);

  if ((v8 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    v9 = (*(v6 + 8))(v2, v4);
  }

  v11 = a1(v9);

  return v11 & 1;
}

uint64_t sub_1C1220F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpChromeLegibilityView(0);
  sub_1C101268C(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1221130(uint64_t a1)
{
  v2 = sub_1C12629F0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12634C0();
}

void sub_1C122123C(uint64_t a1)
{
  type metadata accessor for OneUpChromeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
    if (v2 <= 0x3F)
    {
      sub_1C10387FC(319);
      if (v3 <= 0x3F)
      {
        sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1221330()
{
  result = qword_1EDE770C8;
  if (!qword_1EDE770C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F88, &qword_1C12C98D8);
    sub_1C12213BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770C8);
  }

  return result;
}

unint64_t sub_1C12213BC()
{
  result = qword_1EDE77188;
  if (!qword_1EDE77188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F78, &qword_1C12C9890);
    sub_1C1221474();
    sub_1C0FDB6D4(&qword_1EDE7B960, &qword_1EBE93D70, &qword_1C12B69E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77188);
  }

  return result;
}

unint64_t sub_1C1221474()
{
  result = qword_1EDE77300;
  if (!qword_1EDE77300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F70, &qword_1C12C9888);
    sub_1C0FDB6D4(&qword_1EDE76BE0, &qword_1EBE97F90, &qword_1C12C9968, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77300);
  }

  return result;
}

unint64_t sub_1C122155C()
{
  result = qword_1EDE774A8;
  if (!qword_1EDE774A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FA0, &unk_1C12C9980);
    sub_1C11217A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774A8);
  }

  return result;
}

unint64_t sub_1C12215E8()
{
  result = qword_1EDE77460;
  if (!qword_1EDE77460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FB0, &qword_1C12C9998);
    sub_1C0FDB6D4(&qword_1EDE76DC0, &qword_1EBE97FB8, &unk_1C12C99A0, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77460);
  }

  return result;
}

uint64_t sub_1C12216A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA0, &unk_1C12C9980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1221708()
{
  result = qword_1EDE77350;
  if (!qword_1EDE77350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A90, &unk_1C12C2128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FA0, &unk_1C12C9980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FB0, &qword_1C12C9998);
    sub_1C122155C();
    sub_1C12215E8();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7BCC0, &qword_1EBE96990, &qword_1C12C2028, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77350);
  }

  return result;
}

id sub_1C1221858(uint64_t a1, void *a2)
{
  if (a2)
  {

    return a2;
  }

  else
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  return result;
}

double View.sheet(presentedViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  sub_1C1265410();
  v10 = v13;
  v11 = v14;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v10;
  v17 = v11;
  MEMORY[0x1C68EE920](&v13, a4, &type metadata for ViewControllerSheet, a5);

  return result;
}

unint64_t sub_1C1221970()
{
  result = qword_1EBE97FC8;
  if (!qword_1EBE97FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FC8);
  }

  return result;
}

uint64_t sub_1C12219F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FD0, &unk_1C12C9A58);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v18 - v3;
  v34[0] = *(v2 + 24);
  v32 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265440();
  v20 = v29;
  v4 = *v2;
  v5 = *(v2 + 8);
  v21 = *(v2 + 16);
  *&v32 = v4;
  v33 = v21;
  v6 = swift_allocObject();
  v7 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v2 + 32);
  sub_1C110BC68(&v32, &v27);

  sub_1C102EFA0(&v33, &v27, &qword_1EBE97FD8, &qword_1C12C9A68);
  sub_1C102EFA0(v34, &v27, &unk_1EBE95B10, &unk_1C12A7C50);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FE0, &qword_1C12C9A70);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FE8, &qword_1C12C9A78);
  v16 = sub_1C1221EA8();
  v17 = sub_1C1221F0C();
  sub_1C1264EB0();

  v27 = v4;
  v28 = v5;
  v29 = v21;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98008, &qword_1C12C9A80);
  MEMORY[0x1C68EEF20](&v31, v9);
  v10 = v31;
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  sub_1C110BC68(&v32, &v27);

  sub_1C102EFA0(&v33, &v27, &qword_1EBE97FD8, &qword_1C12C9A68);
  sub_1C102EFA0(v34, &v27, &unk_1EBE95B10, &unk_1C12A7C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FD8, &qword_1C12C9A68);
  v27 = v19;
  v28 = v8;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C1222044();
  v13 = v23;
  v14 = v26;
  sub_1C1265000();

  return (*(v25 + 8))(v14, v13);
}

uint64_t sub_1C1221D88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98008, &qword_1C12C9A80);
  MEMORY[0x1C68EEF20](&v7, v3);
  v4 = v7;
  v5 = sub_1C12631E0();
  result = sub_1C1264470();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

double sub_1C1221E00(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265430();
  }

  return result;
}

unint64_t sub_1C1221EA8()
{
  result = qword_1EBE97FF0;
  if (!qword_1EBE97FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE0, &qword_1C12C9A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FF0);
  }

  return result;
}

unint64_t sub_1C1221F0C()
{
  result = qword_1EBE97FF8;
  if (!qword_1EBE97FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE8, &qword_1C12C9A78);
    sub_1C1221F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FF8);
  }

  return result;
}

unint64_t sub_1C1221F98()
{
  result = qword_1EBE98000;
  if (!qword_1EBE98000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98000);
  }

  return result;
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

unint64_t sub_1C1222044()
{
  result = qword_1EBE98010;
  if (!qword_1EBE98010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FD8, &qword_1C12C9A68);
    sub_1C12220C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98010);
  }

  return result;
}

unint64_t sub_1C12220C8()
{
  result = qword_1EBE98018;
  if (!qword_1EBE98018)
  {
    sub_1C116E8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98018);
  }

  return result;
}

id sub_1C1222134(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1222204(uint64_t a1)
{
  result = sub_1C122222C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C122222C()
{
  result = qword_1EBE98020;
  if (!qword_1EBE98020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98020);
  }

  return result;
}

uint64_t sub_1C1222280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C122222C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C12222E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C122222C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C1222348(uint64_t a1)
{
  sub_1C122222C();
  sub_1C1264320();
  __break(1u);
}

uint64_t EnvironmentValues.oneUpChromeSpec.getter()
{
  sub_1C12223AC();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C12223AC()
{
  result = qword_1EDE7D6C0;
  if (!qword_1EDE7D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6C0);
  }

  return result;
}

void (*sub_1C1222454())(void)
{
  result = sub_1C12225F8();
  if (result)
  {
    result();
    v1 = OUTLINED_FUNCTION_18();
    return sub_1C0FCF004(v1, v2);
  }

  return result;
}

uint64_t (*sub_1C12224AC(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C12224F8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C12225F8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C122931C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C1222568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C12292E4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C12226E0(v4, v3);
}

uint64_t sub_1C12225F8()
{
  swift_getKeyPath();
  v8 = v0;
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);
  v6 = *(v0 + 16);
  sub_1C0FCF1B4(v6, *(v8 + 24));
  return v6;
}

uint64_t type metadata accessor for OneUpChromeSpec(uint64_t a1)
{
  result = qword_1EDE7E150;
  if (!qword_1EDE7E150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C12226E0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v10 = v2;
  v11 = a1;
  v12 = a2;
  sub_1C1227794(KeyPath, sub_1C12227E0, &v9);
  v6 = OUTLINED_FUNCTION_20_15();
  sub_1C0FCF004(v6, v7);

  return result;
}

uint64_t sub_1C1222764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1C0FCF1B4(a2, a3);
  return sub_1C0FCF004(v6, v7);
}

uint64_t (*sub_1C1222800(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C12224AC(v3);
  return sub_1C12228E8;
}

void sub_1C12228F4(char a1)
{
  v1 = a1 & 1;
  sub_1C12229B0();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222A30(v1);
  }
}

uint64_t (*sub_1C1222944(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C12229B0();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222984;
}

uint64_t sub_1C12229B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 32);
}

void sub_1C1222A30(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1222AB8(char a1)
{
  v1 = a1 & 1;
  sub_1C1222BC4();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222C44(v1);
  }
}

uint64_t (*sub_1C1222B08(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222BC4();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222B48;
}

uint64_t sub_1C1222B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 8);
  result = a3();
  if (v5 != (result & 1))
  {
    return a4(v5);
  }

  return result;
}

uint64_t sub_1C1222BC4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 33);
}

void sub_1C1222C44(char a1)
{
  if (*(v1 + 33) == (a1 & 1))
  {
    *(v1 + 33) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1222CCC(char a1)
{
  v1 = a1 & 1;
  sub_1C1222D88();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222E08(v1);
  }
}

uint64_t (*sub_1C1222D1C(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222D88();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222D5C;
}

uint64_t sub_1C1222D88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 34);
}

void sub_1C1222E08(char a1)
{
  if (*(v1 + 34) == (a1 & 1))
  {
    *(v1 + 34) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1222E90(char a1, __n128 a2)
{
  v2 = a1 & 1;
  sub_1C1222F4C();
  OUTLINED_FUNCTION_15_0();
  if (!v3)
  {

    sub_1C1222FCC(v2);
  }
}

uint64_t (*sub_1C1222EE0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222F4C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222F20;
}

uint64_t sub_1C1222F4C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 35);
}

void sub_1C1222FCC(char a1)
{
  if (*(v1 + 35) == (a1 & 1))
  {
    *(v1 + 35) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1223054(char a1)
{
  v1 = a1 & 1;
  sub_1C1223110();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1223190(v1);
  }
}

uint64_t (*sub_1C12230A4(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1223110();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C12230E4;
}

uint64_t sub_1C1223110()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 36);
}

void sub_1C1223190(char a1)
{
  if (*(v1 + 36) == (a1 & 1))
  {
    *(v1 + 36) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1223244(__n128 a1, double a2, double a3, double a4)
{
  v7 = a1.n128_u64[0];
  if (sub_1C122336C() != a1.n128_f64[0] || v9.n128_f64[0] != a2 || v10.n128_f64[0] != a3 || v11.n128_f64[0] != a4)
  {
    v8.n128_u64[0] = v7;
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    sub_1C122344C(v8, v9, v10, v11);
  }
}

uint64_t sub_1C12232C4(double **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  *v3 = sub_1C122336C();
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return OUTLINED_FUNCTION_36();
}

void sub_1C1223328(unint64_t **a1, __n128 a2)
{
  v2 = *a1;
  a2.n128_u64[0] = **a1;
  sub_1C1223244(a2, *(*a1 + 1), *(*a1 + 2), *(*a1 + 3));

  free(v2);
}

double sub_1C122336C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 40);
}

void sub_1C12233F0()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = v1();
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

void sub_1C1223420(unint64_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_u64[0] = *a1;
  a3.n128_u64[0] = a1[1];
  a4.n128_u64[0] = a1[2];
  a5.n128_u64[0] = a1[3];
  sub_1C122344C(a2, a3, a4, a5);
}

void sub_1C122344C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*(v4 + 40), v5), vceqq_f64(*(v4 + 56), v6))))))
  {
    v13 = a3;
    v14 = a4;
    v11 = a1;
    v12 = a2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = v4;
    v10[3] = v11.n128_u64[0];
    v10[4] = v12.n128_u64[0];
    v10[5] = v13.n128_u64[0];
    v10[6] = v14.n128_u64[0];
    OUTLINED_FUNCTION_29_12(v8, v9, v10);
  }

  else
  {
    *(v4 + 40) = a1.n128_u64[0];
    *(v4 + 48) = a2.n128_u64[0];
    *(v4 + 56) = a3.n128_u64[0];
    *(v4 + 64) = a4.n128_u64[0];
  }
}

void sub_1C1223528(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C12235E4() != a1.n128_f64[0])
  {

    sub_1C1223664(v1);
  }
}

uint64_t sub_1C1223578(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12235E4();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12235E4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 72);
}

void sub_1C1223664(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12(v5, v6, v7);
  }
}

void sub_1C12236FC(double a1)
{
  if (sub_1C1223804() != a1)
  {

    sub_1C1223884(a1);
  }
}

uint64_t sub_1C122374C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1223804();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C12237B8(double *a1, uint64_t a2, double (*a3)(void), void (*a4)(double))
{
  v5 = *a1;
  if (v5 != a3())
  {
    a4(v5);
  }
}

double sub_1C1223804()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 80);
}

void sub_1C1223884(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12(v5, v6, v7);
  }
}

void sub_1C122391C(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C12239D8() != a1.n128_f64[0])
  {

    sub_1C1223A58(v1);
  }
}

uint64_t sub_1C122396C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12239D8();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12239D8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  return *(v0 + 88);
}

void sub_1C1223A58(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12(v5, v6, v7);
  }
}

uint64_t sub_1C1223B20(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1223BB0();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1223C2C(double *a1, void (*a2)(void), void (*a3)(double *))
{
  v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  a2();
  LOBYTE(a2) = static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(a1, v3);
  sub_1C122766C(v3);
  if ((a2 & 1) == 0)
  {
    sub_1C12276C8(a1, v3);
    a3(v3);
  }

  return sub_1C122766C(a1);
}

uint64_t sub_1C1223CE8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1223DE8();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1223D78(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_55_4(a1);
  if (v5)
  {
    sub_1C12276C8(v4, v1);
    v3(v1);
    sub_1C122766C(v2);
  }

  else
  {
    v3(v4);
  }

  free(v2);

  free(v1);
}

uint64_t sub_1C1223E10@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v11 = sub_1C122772C(v9, v10, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_14_27(v11, v12, v13, v14, v15, v16, v17, v18, v22, v4);
  sub_1C1261F30();

  v19 = *a2;
  OUTLINED_FUNCTION_7_4(v7 + *a2, v20);
  return a3(v7 + v19, a4);
}

uint64_t sub_1C1223EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v9 = OUTLINED_FUNCTION_15(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  sub_1C12276C8(a1, v5);
  return a5(v5);
}

uint64_t sub_1C1223F6C(double *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = (v9 - v8);
  v11 = *a2;
  swift_beginAccess();
  sub_1C12276C8(v3 + v11, v10);
  LOBYTE(a2) = static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(v10, a1);
  sub_1C122766C(v10);
  if (a2)
  {
    sub_1C12276C8(a1, v10);
    OUTLINED_FUNCTION_42_8();
    swift_beginAccess();
    sub_1C12291FC(v10, v3 + v11);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_38_11(v13);
  }

  return sub_1C122766C(a1);
}

uint64_t sub_1C1224098(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1C12276C8(a2, v9 - v8);
  v11 = *a3;
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  sub_1C12291FC(v10, a1 + v11);
  return swift_endAccess();
}

void sub_1C122414C(double a1)
{
  if (sub_1C1224208() != a1)
  {

    sub_1C122421C(a1);
  }
}

uint64_t sub_1C122419C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1224208();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1224244(double a1)
{
  if (sub_1C1224300() != a1)
  {

    sub_1C122439C(a1);
  }
}

uint64_t sub_1C1224294(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1224300();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1224314()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

uint64_t sub_1C1224440(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = v2;
  v3 = sub_1C12244A8();
  OUTLINED_FUNCTION_32(v3, v4);
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1224518(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C12245D4() != a1.n128_f64[0])
  {

    sub_1C12245E8(v1);
  }
}

uint64_t sub_1C1224568(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12245D4();
  return OUTLINED_FUNCTION_17_3();
}

void *sub_1C1224610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12246B0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C12246B4(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1224710();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1224798(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement))
  {
    *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v4, v5, v6);
  }
}

void sub_1C1224828(char a1)
{
  v1 = a1 & 1;
  sub_1C12248E4();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C12248F8(v1);
  }
}

uint64_t (*sub_1C1224878(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C12248E4();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C12248B8;
}

void *sub_1C1224920@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1C1224A1C(&v4, a2);
  *a1 = v4;
  return result;
}

void *sub_1C12249C0(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 != v7)
  {
    v6 = v4;
    return a3(&v6);
  }

  return result;
}

uint64_t sub_1C1224A20(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1224ADC();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1224A7C(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

void sub_1C1224AF0()
{
  OUTLINED_FUNCTION_51_9();
  v3 = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_14_27(v6, v7, v8, v9, v10, v11, v12, v13, v14, v1);
  sub_1C1261F30();

  *v3 = *(v1 + *v0);
}

void sub_1C1224BFC(unsigned __int8 *a1)
{
  if (*a1 == *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___viewAspectRatio))
  {
    v6[0] = *a1;
    sub_1C1224AC8(v6);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v3, v4, v5);
  }
}

void sub_1C1224C94(char a1, __n128 a2)
{
  v2 = a1 & 1;
  sub_1C1224CE4();
  OUTLINED_FUNCTION_15_0();
  if (!v3)
  {

    sub_1C1224D80(v2);
  }
}

uint64_t sub_1C1224CF8()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

void sub_1C1224DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v1 = OUTLINED_FUNCTION_15(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_30();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  if (sub_1C1226204())
  {
    v8 = 1;
  }

  else
  {
    sub_1C12265E0();
    sub_1C1226AE4();
    sub_1C1224ADC();
    v12[14] = v12[15];
    static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)();
    v8 = v9;
    sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v7, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  v10 = sub_1C1224CE4() & 1;
  v11 = v8 & 1;
  if (v11 != v10)
  {
    sub_1C1224D80(v11);
  }
}

void static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v111 = v2;
  v4 = v3;
  v5 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v110 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v107 = (v13 - v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101[-v16];
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_8();
  v109 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v24 = OUTLINED_FUNCTION_15(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v105 = v25 - v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3_8();
  v106 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_8();
  v114 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_8();
  v116 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_8();
  v108 = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v101[-v36];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v101[-v39];
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v101[-v43];
  v112 = *v1;
  v45 = v11;
  v46 = *MEMORY[0x1E697FF40];
  v117 = v7;
  v48 = *(v7 + 104);
  v47 = v7 + 104;
  v115 = v46;
  v118 = v48;
  v48(&v101[-v43], v42);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v5);
  v52 = *(v11 + 48);
  v113 = v4;
  sub_1C10B1CE8(v4, v22);
  sub_1C10B1CE8(v44, &v22[v52]);
  OUTLINED_FUNCTION_17_1(v22);
  if (v53)
  {
    sub_1C0FD1A5C(v44, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_17_1(&v22[v52]);
    if (!v53)
    {
      OUTLINED_FUNCTION_50_5();
LABEL_19:
      sub_1C0FD1A5C(v22, &qword_1EBE902E8, &unk_1C12A2E90);
      goto LABEL_20;
    }

    sub_1C0FD1A5C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_50_5();
  }

  else
  {
    sub_1C10B1CE8(v22, v40);
    OUTLINED_FUNCTION_17_1(&v22[v52]);
    if (v53)
    {
      OUTLINED_FUNCTION_50_5();
LABEL_18:
      sub_1C0FD1A5C(v44, &qword_1EBE902F0, &qword_1C12B38C0);
      v67 = OUTLINED_FUNCTION_18();
      v68(v67);
      goto LABEL_19;
    }

    v54 = v117;
    v55 = *(v117 + 32);
    v104 = v47;
    v56 = v110;
    v55(v110, &v22[v52], v5);
    OUTLINED_FUNCTION_1_59();
    sub_1C122772C(v57, v58, MEMORY[0x1E697FF60]);
    v102 = sub_1C1265DE0();
    v103 = v45;
    v52 = v54 + 8;
    v4 = *(v54 + 8);
    v59 = v56;
    v47 = v104;
    (v4)(v59, v5);
    v60 = v44;
    v44 = &qword_1EBE902F0;
    sub_1C0FD1A5C(v60, &qword_1EBE902F0, &qword_1C12B38C0);
    v61 = OUTLINED_FUNCTION_18();
    v4(v61);
    v45 = v103;
    sub_1C0FD1A5C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_50_5();
    if ((v102 & 1) == 0)
    {
LABEL_20:
      v118(v4, v52, v5);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v5);
      v72 = *(v45 + 48);
      sub_1C10B1CE8(v113, v17);
      sub_1C10B1CE8(v4, &v17[v72]);
      OUTLINED_FUNCTION_17_1(v17);
      if (v53)
      {
        sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
        OUTLINED_FUNCTION_17_1(&v17[v72]);
        if (!v53)
        {
          goto LABEL_36;
        }

        sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
      }

      else
      {
        sub_1C10B1CE8(v17, v114);
        OUTLINED_FUNCTION_17_1(&v17[v72]);
        if (v73)
        {
          goto LABEL_35;
        }

        v74 = v117;
        v75 = OUTLINED_FUNCTION_2_37();
        v76(v75);
        OUTLINED_FUNCTION_1_59();
        sub_1C122772C(v77, v78, MEMORY[0x1E697FF60]);
        v79 = v114;
        v80 = sub_1C1265DE0();
        v81 = *(v74 + 8);
        v81(v44, v5);
        v44 = &qword_1EBE902F0;
        sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
        v81(v79, v5);
        sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
        if ((v80 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v4 = v106;
      v118(v106, *MEMORY[0x1E697FF38], v5);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v5);
      v85 = *(v45 + 48);
      v17 = v107;
      sub_1C10B1CE8(v111, v107);
      sub_1C10B1CE8(v4, &v17[v85]);
      OUTLINED_FUNCTION_17_1(v17);
      if (v53)
      {
        sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
        OUTLINED_FUNCTION_17_1(&v17[v85]);
        if (v53)
        {
          sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
          goto LABEL_37;
        }

LABEL_36:
        sub_1C0FD1A5C(v17, &qword_1EBE902E8, &unk_1C12A2E90);
        goto LABEL_37;
      }

      v86 = v105;
      sub_1C10B1CE8(v17, v105);
      OUTLINED_FUNCTION_17_1(&v17[v85]);
      if (!v87)
      {
        v95 = v117;
        v96 = OUTLINED_FUNCTION_2_37();
        v97(v96);
        OUTLINED_FUNCTION_1_59();
        sub_1C122772C(v98, v99, MEMORY[0x1E697FF60]);
        sub_1C1265DE0();
        v100 = *(v95 + 8);
        v100(v44, v5);
        sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
        v100(v86, v5);
        sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
        goto LABEL_37;
      }

      v114 = v86;
LABEL_35:
      sub_1C0FD1A5C(v4, &qword_1EBE902F0, &qword_1C12B38C0);
      (*(v117 + 8))(v114, v5);
      goto LABEL_36;
    }
  }

  v118(v37, v52, v5);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v5);
  v65 = *(v45 + 48);
  v22 = v109;
  sub_1C10B1CE8(v111, v109);
  sub_1C10B1CE8(v37, &v22[v65]);
  OUTLINED_FUNCTION_17_1(v22);
  if (v53)
  {
    sub_1C0FD1A5C(v37, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_17_1(&v22[v65]);
    if (v53)
    {
      sub_1C0FD1A5C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  sub_1C10B1CE8(v22, v108);
  OUTLINED_FUNCTION_17_1(&v22[v65]);
  if (v66)
  {
    v44 = v37;
    goto LABEL_18;
  }

  v88 = v117;
  v89 = OUTLINED_FUNCTION_2_37();
  v90(v89);
  OUTLINED_FUNCTION_1_59();
  sub_1C122772C(v91, v92, MEMORY[0x1E697FF60]);
  LODWORD(v103) = sub_1C1265DE0();
  v104 = v47;
  v93 = *(v88 + 8);
  v93(v44, v5);
  v44 = &qword_1EBE902F0;
  sub_1C0FD1A5C(v37, &qword_1EBE902F0, &qword_1C12B38C0);
  v94 = OUTLINED_FUNCTION_18();
  (v93)(v94);
  v52 = v115;
  v4 = v116;
  sub_1C0FD1A5C(v22, &qword_1EBE902F0, &qword_1C12B38C0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_37:
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1225818()
{
  sub_1C1224ADC();
  if (v1 != 1)
  {
    return 0;
  }

  return sub_1C1225C6C();
}

unint64_t sub_1C12258C8(unint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, void, __n128, __n128))
{
  *&result = COERCE_DOUBLE(a3());
  if (a2)
  {
    if (v7)
    {
      return result;
    }
  }

  else if ((v7 & 1) == 0)
  {
    v8.n128_u64[0] = result;
    v9.n128_u64[0] = a1;
    if (*&a1 == *&result)
    {
      return result;
    }
  }

  *&result = COERCE_DOUBLE(a4(a1, a2 & 1, v8, v9));
  return result;
}

uint64_t sub_1C1225978(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1C12259E0();
  OUTLINED_FUNCTION_32(v2, v3);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C12259F4()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

double sub_1C1225AE0(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = v5 + *a3;
  v10 = *(v9 + 8);
  if (v10 & 1) != 0 || (a2)
  {
    if (v10 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *v9;
    if (*v9 == *&a1)
    {
LABEL_4:
      *v9 = *&a1;
      *(v9 + 8) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v14[2] = v5;
  v14[3] = a1;
  v15 = v7 & 1;
  sub_1C1227794(v13, a5, v14);

  return result;
}

void sub_1C1225BB0(uint64_t a1)
{
  v1 = a1 & 1;
  sub_1C1225C6C();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1225C80(v1);
  }
}

uint64_t (*sub_1C1225C00(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1225C6C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1225C40;
}

void sub_1C1225CA8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1227794(v7, a4, v8);
  }
}

double static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v3 = OUTLINED_FUNCTION_15(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1C10B1CE8(a1, &v19 - v8);
  v10 = sub_1C1263EB0();
  v11 = 8.0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v12 = OUTLINED_FUNCTION_18();
    sub_1C10B1CE8(v12, v13);
    OUTLINED_FUNCTION_1();
    v15 = v14;
    v17 = (*(v16 + 88))(v6, v10);
    if (v17 != *MEMORY[0x1E697FF38])
    {
      v11 = 12.0;
      if (v17 != *MEMORY[0x1E697FF40])
      {
        (*(v15 + 8))(v6, v10);
        v11 = 8.0;
      }
    }
  }

  sub_1C0FD1A5C(v9, &qword_1EBE902F0, &qword_1C12B38C0);
  return v11;
}

double sub_1C1225F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_11();
  sub_1C12265E0();
  v3 = static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v0);
  v4 = OUTLINED_FUNCTION_20_15();
  sub_1C0FD1A5C(v4, v5, &qword_1C12B38C0);
  return v3;
}

void sub_1C1225FC0(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C122607C() != a1.n128_f64[0])
  {

    sub_1C1226090(v1);
  }
}

uint64_t sub_1C1226010(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C122607C();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C12260B8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *a1) == a4)
  {
    *(v4 + *a1) = a4;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_9_1();
    *(v8 - 8) = a4;
    sub_1C1227794(v9, a3, v10);
  }
}

uint64_t (*sub_1C1226150(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C12261AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1226204();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1226204()
{
  swift_getKeyPath();
  v8 = v0;
  OUTLINED_FUNCTION_0_84();
  v3 = sub_1C122772C(v1, v2, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_6(v3, v4);

  v5 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  OUTLINED_FUNCTION_7_4(v8 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars, v6);
  return *(v8 + v5);
}

void sub_1C1226294(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12(v5, v6, v7);
  }
}

uint64_t sub_1C1226338(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C1226394(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5, &protocol conformance descriptor for OneUpChromeSpec);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C1226150(v3);
  return sub_1C122647C;
}

uint64_t sub_1C12264B8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C12265E0();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1226554(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_55_4(a1);
  if (v5)
  {
    sub_1C10B1CE8(v4, v1);
    v3(v1);
    sub_1C0FD1A5C(v2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  else
  {
    v3(v4);
  }

  free(v2);

  free(v1);
}

void sub_1C1226674()
{
  OUTLINED_FUNCTION_23();
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v16 = OUTLINED_FUNCTION_15(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33[-v21];
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v33[-v25];
  v36 = v0;
  v4(v24);
  v27 = *(v13 + 56);
  sub_1C10B1CE8(v6, v1);
  sub_1C10B1CE8(v26, v1 + v27);
  OUTLINED_FUNCTION_61(v1);
  if (v28)
  {
    sub_1C0FD1A5C(v26, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_61(v1 + v27);
    if (v28)
    {
      sub_1C0FD1A5C(v1, &qword_1EBE902F0, &qword_1C12B38C0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1C10B1CE8(v1, v22);
  OUTLINED_FUNCTION_61(v1 + v27);
  if (v28)
  {
    sub_1C0FD1A5C(v26, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v35 + 8))(v22, v7);
LABEL_9:
    sub_1C0FD1A5C(v1, &qword_1EBE902E8, &unk_1C12A2E90);
LABEL_10:
    sub_1C10B1CE8(v6, v19);
    v37(v19);
    goto LABEL_11;
  }

  v29 = v35;
  (*(v35 + 32))(v12, v1 + v27, v7);
  OUTLINED_FUNCTION_1_59();
  sub_1C122772C(v30, v31, MEMORY[0x1E697FF60]);
  v34 = sub_1C1265DE0();
  v32 = *(v29 + 8);
  v32(v12, v7);
  sub_1C0FD1A5C(v26, &qword_1EBE902F0, &qword_1C12B38C0);
  v32(v22, v7);
  sub_1C0FD1A5C(v1, &qword_1EBE902F0, &qword_1C12B38C0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1C0FD1A5C(v6, &qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12269C8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1226AE4();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1226A70(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  sub_1C1228FD0(a1, v2 + v4);
  swift_endAccess();
  sub_1C1224DA8();
  return sub_1C0FD1A5C(a1, &qword_1EBE902F0, &qword_1C12B38C0);
}

uint64_t sub_1C1226B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_11();
  sub_1C10B1CE8(a1, v5);
  return a5(v5);
}

void sub_1C1226BD8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_7();
  v10 = *v5;
  swift_beginAccess();
  sub_1C10B1CE8(v0 + v10, v1);
  LOBYTE(v10) = sub_1C12278A0(v1, v7);
  sub_1C0FD1A5C(v1, &qword_1EBE902F0, &qword_1C12B38C0);
  if (v10)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_38_11(v12);
  }

  else
  {
    sub_1C10B1CE8(v7, v1);
    v3(v1);
  }

  sub_1C0FD1A5C(v7, &qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1226D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C10B1CE8(a2, v3);
  return a3(v3);
}

uint64_t OneUpChromeSpec.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpChromeSpec.init()();
  return v0;
}

void OneUpChromeSpec.init()()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 29) = 0;
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 40) = *MEMORY[0x1E69DDCE0];
  *(v0 + 56) = v6;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  v7 = (v4 - v3 + *(v2 + 48));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  v9 = *(v8 + 48);
  *v7 = sub_1C1265160();
  v10 = *MEMORY[0x1E6981DF0];
  v11 = sub_1C1265A90();
  OUTLINED_FUNCTION_3();
  v13 = *(v12 + 104);
  v13(v7 + v9, v10, v11);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  *v5 = 0;
  *(v5 + 8) = xmmword_1C12C9BC0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0x3FE4CCCCCCCCCCCDLL;
  *(v5 + 40) = 0;
  sub_1C122783C(v5, v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topImmersiveGradientSpec);
  v17 = (v5 + *(v2 + 48));
  v18 = *(v8 + 48);
  *v17 = sub_1C1265160();
  v13(v17 + v18, v10, v11);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  *v5 = 0;
  *(v5 + 8) = xmmword_1C12C9BC0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0x3FE4CCCCCCCCCCCDLL;
  *(v5 + 40) = 0;
  sub_1C122783C(v5, v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomImmersiveGradientSpec);
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topLegibilityHeight) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomLegibilityHeight) = 0;
  v22 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberMaxWidth;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberHorizontalOffset) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___isVideoScrubberOverContent) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___viewAspectRatio) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___wantsBadgesInSeparateBar) = 0;
  v23 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___maxTitleWidth;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___wantsLightTitleAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___chromeOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars) = 0;
  v24 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___verticalSizeClass;
  v25 = sub_1C1263EB0();
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___horizontalSizeClass, 1, 1, v25);
  sub_1C1261F60();
  OUTLINED_FUNCTION_22_0();
}

uint64_t static OneUpChromeSpec.bottomLegibilityHeight(_:layoutMarginBottom:verticalSizeClass:isElementVisible:)(char a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_11();
  if (a1)
  {
    v18 = 3;
    if (a3(&v18) & 1) != 0 || (v17 = 4, result = a3(&v17), (result))
    {
      v9 = sub_1C1263EB0();
      OUTLINED_FUNCTION_3();
      v10 = OUTLINED_FUNCTION_20_15();
      v11(v10);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
      static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v3);
      return sub_1C0FD1A5C(v3, &qword_1EBE902F0, &qword_1C12B38C0);
    }
  }

  else
  {
    v16 = 2;
    a3(&v16);
    v15 = 3;
    return a3(&v15);
  }

  return result;
}

uint64_t static OneUpChromeSpec.contentInsetsForToolbarAxis(_:horizontalSizeClass:verticalSizeClass:layoutMargins:viewAspectRatio:)(int a1, uint64_t a2, uint64_t a3, char *a4)
{
  v40 = a1;
  v8 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v13 = OUTLINED_FUNCTION_15(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *a4;
  v22 = v10[2];
  v22(&v39 - v19, a3, v8, v18);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
  v39 = a2;
  (v22)(v16, a2, v8);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
  v41 = v21;
  static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)();
  sub_1C0FD1A5C(v16, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v20, &qword_1EBE902F0, &qword_1C12B38C0);
  if (v40)
  {
    (v22)(v20, a3, v8);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v8);
    static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v20);
    return sub_1C0FD1A5C(v20, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  else
  {
    v33 = *MEMORY[0x1E697FF40];
    v34 = v10[13];
    v34(v4, v33, v8);
    v35 = sub_1C1263EA0();
    v36 = v10[1];
    v37 = OUTLINED_FUNCTION_20_15();
    result = v36(v37);
    if (v35)
    {
      v34(v4, v33, v8);
      sub_1C1263EA0();
      v38 = OUTLINED_FUNCTION_20_15();
      return v36(v38);
    }
  }

  return result;
}

uint64_t sub_1C122766C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C12276C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C122772C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1227794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v3, v4, &protocol conformance descriptor for OneUpChromeSpec);
  return sub_1C1261F20();
}

uint64_t sub_1C122783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C12278A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10B1CE8(a1, &v20 - v12);
  sub_1C10B1CE8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10B1CE8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C122772C(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FD1A5C(v13, &qword_1EBE902E8, &unk_1C12A2E90);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
  v16 = 0;
  return v16 & 1;
}

uint64_t OneUpChromeSpec.deinit()
{
  sub_1C0FCF004(*(v0 + 16), *(v0 + 24));
  sub_1C122766C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topImmersiveGradientSpec);
  sub_1C122766C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomImmersiveGradientSpec);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___verticalSizeClass, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___horizontalSizeClass, &qword_1EBE902F0, &qword_1C12B38C0);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpChromeSpec.__deallocating_deinit()
{
  OneUpChromeSpec.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t EnvironmentValues.oneUpChromeSpec.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C12223AC();
  sub_1C12637F0();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1227CEC(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

unint64_t sub_1C1227D84()
{
  result = qword_1EBE98028;
  if (!qword_1EBE98028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98028);
  }

  return result;
}

unint64_t sub_1C1227DDC()
{
  result = qword_1EBE98030;
  if (!qword_1EBE98030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98030);
  }

  return result;
}

void sub_1C1227E38(uint64_t a1)
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v1 <= 0x3F)
  {
    sub_1C1228DD0(319);
    if (v2 <= 0x3F)
    {
      sub_1C1261F70();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C1228DD0(uint64_t a1)
{
  if (!qword_1EDE7BAA8)
  {
    sub_1C1263EB0();
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE7BAA8);
    }
  }
}

_BYTE *sub_1C1228E38(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C1228F24()
{
  type metadata accessor for OneUpChromeSpec(0);
  v0 = swift_allocObject();
  OneUpChromeSpec.init()();
  qword_1EDE7D6D0 = v0;
}

double sub_1C1228F64@<D0>(void *a1@<X8>)
{
  if (qword_1EDE7D6C8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7D6D0;

  return result;
}

uint64_t sub_1C1228FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_47Tm()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0();
  return OUTLINED_FUNCTION_32(v1, v2);
}

uint64_t sub_1C12291FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1C1229284()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1)
{

  return sub_1C1227794(a1, v1, &v4);
}

uint64_t PhotosMockCollection.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, __int16 a10)
{
  HIDWORD(v20) = a8;
  OUTLINED_FUNCTION_9_40();
  v12 = swift_allocObject();
  LOWORD(v18) = a10;
  v13 = OUTLINED_FUNCTION_8_42();
  PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(v13, v14, v15, v16, a5, a6, a7, HIDWORD(v20), a9, v18, a7, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, HIBYTE(v30));
  return v12;
}

uint64_t PhotosMockMemory.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_9_40();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_8_42();
  PhotosMockMemory.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)(v1);
  return v0;
}

void PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23)
{
  OUTLINED_FUNCTION_23();
  v25 = v24;
  v50 = v26;
  v51 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v54 = a23;
  v52 = v36;
  v53 = a22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_15(v37);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v50 - v39;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  v41 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  v42 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v23 + v41, 1, 1, v42);
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset) = 0;
  v43 = v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1C1261F60();

  *(v23 + 16) = v35;
  *(v23 + 24) = v33;
  v44 = 0x80000001C126AE30;
  v45 = 0xD000000000000013;
  if (v33)
  {
    v45 = v35;
    v44 = v33;
  }

  *(v23 + 32) = v45;
  *(v23 + 40) = v44;

  *(v23 + 48) = v31;
  *(v23 + 56) = v29;

  v46 = v51;
  *(v23 + 64) = v50;
  *(v23 + 72) = v46;
  sub_1C109CF2C(v25, v40);
  sub_1C0FFC7B0(v23 + v41, &qword_1EBE929A0, &qword_1C12AF660);
  sub_1C11DA978(v40, v23 + v41);
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFavorite) = v52;
  if (a21)
  {
    *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets) = a21;
    if (sub_1C0FF7688())
    {
      sub_1C0FF768C();
      if ((a21 & 0xC000000000000001) != 0)
      {

        v47 = MEMORY[0x1C68F02D0](0, a21);
      }

      else
      {
        v47 = *(a21 + 32);
      }
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
    *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets) = MEMORY[0x1E69E7CC0];
  }

  sub_1C0FFC7B0(v25, &qword_1EBE929A0, &qword_1C12AF660);
  v48 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;

  *(v23 + v48) = v47;
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFolder) = v53 & 1;
  v49 = v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  *v49 = 0;
  *(v49 + 8) = 1;
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isContentPrivacyEnabled) = v54 & 1;
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_22_0();
}

double sub_1C12297B8()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 16);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16(v8, v9, v10);
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }

  return result;
}

double sub_1C1229864()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 32);
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16(v6, v7, v8);
  }

  return result;
}

double sub_1C1229920()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 48);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16(v8, v9, v10);
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }

  return result;
}

double sub_1C12299CC()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 64);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16(v8, v9, v10);
  }

  else
  {
    *(v1 + 64) = v2;
    *(v1 + 72) = v0;
  }

  return result;
}

void sub_1C1229A78()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  swift_beginAccess();
  sub_1C109CF2C(v0 + v7, v6);
  v8 = sub_1C122BB38(v6, v2);
  sub_1C0FFC7B0(v6, &qword_1EBE929A0, &qword_1C12AF660);
  if (v8)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_2_7();
    *(v10 - 16) = v0;
    *(v10 - 8) = v2;
    OUTLINED_FUNCTION_26_16(v11, v12, v13);
  }

  else
  {
    sub_1C109CF2C(v2, v6);
    swift_beginAccess();
    sub_1C109CD00(v6, v0 + v7);
    swift_endAccess();
  }

  sub_1C0FFC7B0(v2, &qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_18_4();
}

double sub_1C1229C0C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets;
  OUTLINED_FUNCTION_9_5(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets);

  v5 = sub_1C0FEAAF0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_26_16(v9, v10, v11);
  }

  return result;
}

void sub_1C1229CDC(void *a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  OUTLINED_FUNCTION_9_5(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset);
  v4 = *(v1 + v3);
  v5 = v4;
  LOBYTE(v4) = sub_1C0FDFE74(v4, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_2_7();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    OUTLINED_FUNCTION_26_16(v8, v9, v10);
  }

  else
  {
    v11 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_1C1229DD0(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  OUTLINED_FUNCTION_9_5(v4 + *a2);
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v9 - 16) = v4;
    *(v9 - 8) = v6;
    sub_1C122BA90(v10, a4, v11);
  }
}

double sub_1C1229E78(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = v2;
  v10[3] = a1;
  v11 = a2 & 1;
  OUTLINED_FUNCTION_26_16(v8, v9, v10);

  return result;
}

uint64_t sub_1C1229F88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1229FCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1229FCC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 16, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A068()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A1A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A1A0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 32, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A23C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A34C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A34C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 48, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A3E8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A4F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A4F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 64, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A594()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A6EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A6A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C122A6EC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 80, v11);

  return OUTLINED_FUNCTION_5_5();
}

double sub_1C122A788()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 80);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16(v8, v9, v10);
  }

  else
  {
    *(v1 + 80) = v2;
    *(v1 + 88) = v0;
  }

  return result;
}

void sub_1C122A834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
}

void sub_1C122A8A0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C122A9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C109CF2C(a1, &v4 - v3);
  sub_1C1229A78();
}

uint64_t sub_1C122AA70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v6 = sub_1C122C890(v4, v5, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  OUTLINED_FUNCTION_7_4(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval, v15);
  return sub_1C109CF2C(v2 + v14, a1);
}

uint64_t sub_1C122AB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C109CF2C(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  swift_beginAccess();
  sub_1C109CD00(v6, a1 + v7);
  return swift_endAccess();
}

void sub_1C122ABD8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122A96C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122ACF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122AD48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122AD5C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122ADB8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122ACA4();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C122AED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122AF2C();
  *a1 = result;
  return result;
}

void sub_1C122AEFC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1229CDC(v1);
}

void *sub_1C122AF2C()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v4 = sub_1C122C890(v2, v3, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v17, v0);
  sub_1C1261F30();

  v12 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  OUTLINED_FUNCTION_7_4(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset, v13);
  v14 = *(v1 + v12);
  v15 = v14;
  return v14;
}

void sub_1C122AFCC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void sub_1C122B03C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122AE84();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C122B1AC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets, v11);

  return result;
}

void sub_1C122B248(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C122B2B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B108();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B3D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122B428();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122B43C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFolder;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122B498()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B384();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B5B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C122B618();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C122B618()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  v11 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  swift_beginAccess();
  return *v11;
}

uint64_t sub_1C122B6C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  result = swift_beginAccess();
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  return result;
}

void sub_1C122B72C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B564();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122B8BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122B8D0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  sub_1C122C890(v4, v5, &protocol conformance descriptor for PhotosMockCollection);
  sub_1C1261F30();

  v6 = *a2;
  OUTLINED_FUNCTION_7_4(v2 + v6, v7);
  return *(v2 + v6);
}

uint64_t sub_1C122B968(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isContentPrivacyEnabled;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122B9C4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B818();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_85();
  sub_1C122C890(v3, v4, &protocol conformance descriptor for PhotosMockCollection);
  return sub_1C1261F20();
}

uint64_t sub_1C122BB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261990();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F00, &unk_1C12C3D10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C109CF2C(a1, &v20 - v12);
  sub_1C109CF2C(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C109CF2C(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C122C890(&qword_1EDE82F50, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE929A0, &qword_1C12AF660);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE96F00, &unk_1C12C3D10);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE929A0, &qword_1C12AF660);
  v16 = 0;
  return v16 & 1;
}

char *PhotosMockCollection.deinit()
{

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval, &qword_1EBE929A0, &qword_1C12AF660);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void (*sub_1C122BEE8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C122B498();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C122BF6C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C122B9C4();
  v2[4] = v3;
  return sub_1C10768AC;
}

void *sub_1C122C05C@<X0>(void *a1@<X8>)
{
  result = sub_1C122AF2C();
  *a1 = result;
  return result;
}

void PhotosMockMemory.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_23();
  v10 = v0;
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C109CF2C(v2, &v9 - v8);
  v12 = 0;
  v11 = 768;
  type metadata accessor for PhotosMockMemory(0);
  swift_allocObject();
  PhotosMockMemory.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)(v5);
  sub_1C0FFC7B0(v2, &qword_1EBE929A0, &qword_1C12AF660);
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosMockMemory.TitleStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C122C6B0()
{
  PhotosMockCollection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C122C838(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98080, type metadata accessor for PhotosMockCollection, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C122C890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C122C8D8(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98088, type metadata accessor for PhotosMockCollection, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C122C978(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98090, type metadata accessor for PhotosMockCollection, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C122CA18(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980A0, type metadata accessor for PhotosMockTrip, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C122CA90(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980A8, type metadata accessor for PhotosMockEvent, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C122CB0C()
{
  result = qword_1EBE980B0;
  if (!qword_1EBE980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE980B0);
  }

  return result;
}

uint64_t sub_1C122CB60(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980B8, type metadata accessor for PhotosMockMemory, &protocol conformance descriptor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

void sub_1C122CBC0(uint64_t a1)
{
  sub_1C0FA4124(319);
  if (v1 <= 0x3F)
  {
    sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotosMockMemory.TitleStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosMockMemory.TitleStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

double sub_1C122D670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1C1262CE0();
  sub_1C12649D0();

  return result;
}

double PhotosNotificationStackView.init(notifications:id:expanded:notificationView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&result = 3;
  *(a8 + 56) = xmmword_1C12CA7C0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  return result;
}

uint64_t sub_1C122D7C0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C122D818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C1265610();
  return v1;
}

uint64_t PhotosNotificationStackView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v4 = a1[2];
  swift_getTupleTypeMetadata2();
  v5 = sub_1C12661A0();
  v7 = a1[3];
  v6 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  OUTLINED_FUNCTION_11_0();
  v66 = v6;
  v69 = sub_1C1263190();
  v70 = sub_1C1263190();
  v8 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  OUTLINED_FUNCTION_11_0();
  v71 = v8;
  v9 = sub_1C1263190();
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  v11 = a1[6];
  __dst[0] = v5;
  __dst[1] = v7;
  v67 = v7;
  v72 = v9;
  __dst[2] = v9;
  __dst[3] = WitnessTable;
  v65 = v11;
  __dst[4] = v11;
  v12 = sub_1C12656A0();
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v13, qword_1EBE90EF8, &qword_1C12AC0F0, v14);
  v68 = v12;
  v15 = sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v77 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v73 = v64 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v83 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v75 = v64 - v22;
  v23 = v4;
  v24 = sub_1C12661A0();
  v25 = a1[5];
  v102[9] = v25;
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v81 = v24;
  v74 = v26;
  v27 = sub_1C12639F0();
  v84 = v19;
  v79 = v27;
  v78 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v82 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_3();
  v76 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v80 = v64 - v32;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v102, v2, 0x48uLL);
  if (sub_1C122D7C0())
  {
    v102[0] = sub_1C1263AA0();
    v102[1] = 0;
    LOBYTE(v102[2]) = 1;
    sub_1C10228C4();
  }

  else
  {
    v102[0] = 0x402E000000000000;
    v102[1] = __dst[7];
    sub_1C122E040();
  }

  v33 = sub_1C1265A70();
  v64[2] = v33;
  OUTLINED_FUNCTION_10_36();
  if (sub_1C122D7C0())
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v34 = __dst[8];
  }

  OUTLINED_FUNCTION_10_36();
  v35 = sub_1C122D7C0();
  v64[1] = v64;
  v102[0] = v33;
  v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  *&v37 = v23;
  *(&v37 + 1) = v67;
  *&v38 = v66;
  *(&v38 + 1) = v25;
  *&v64[-10] = v37;
  *&v64[-8] = v38;
  v39 = a1[7];
  v64[-6] = v65;
  v64[-5] = v39;
  v64[-4] = __dst;
  v64[-3] = v34;
  v64[-2] = v36;
  v40 = sub_1C1022650();
  v41 = MEMORY[0x1E697FDC0];
  v42 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  v100 = v39;
  v101 = v42;
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x1E697E070];
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E697E5C0];
  v43 = swift_getWitnessTable();
  v44 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, v41);
  v94 = v43;
  v95 = v44;
  v93 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  v45 = v68;
  v46 = swift_getWitnessTable();
  v47 = v73;
  sub_1C121710C(sub_1C122E668, &v64[-12], MEMORY[0x1E6981D78], v45, v40, v46, v73);
  sub_1C1265A30();
  OUTLINED_FUNCTION_10_36();
  LOBYTE(v90) = sub_1C122D7C0() & 1;
  OUTLINED_FUNCTION_5_0();
  v91 = sub_1C0FDB6D4(v48, v49, v50, v51);
  v92 = v46;
  OUTLINED_FUNCTION_12_0();
  v52 = swift_getWitnessTable();
  v53 = v75;
  sub_1C1265040();

  (*(v77 + 8))(v47, v15);
  sub_1C1265A30();
  v102[0] = __dst[0];
  v90 = __dst[0];
  v54 = sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
  v88 = v52;
  v89 = v54;

  v55 = v84;
  v56 = swift_getWitnessTable();
  v57 = v76;
  v58 = v81;
  sub_1C1265040();

  (*(*(v58 - 8) + 8))(v102, v58);
  (*(v83 + 8))(v53, v55);
  v59 = swift_getWitnessTable();
  v86 = v56;
  v87 = v59;
  v60 = v78;
  swift_getWitnessTable();
  v61 = v80;
  sub_1C0FDBA4C();
  v62 = *(v82 + 8);
  v62(v57, v60);
  sub_1C0FDBA4C();
  return (v62)(v61, v60);
}

unint64_t sub_1C122E040()
{
  result = qword_1EBE98100[0];
  if (!qword_1EBE98100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE98100);
  }

  return result;
}

uint64_t sub_1C122E094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v46 = a8;
  v57 = a9;
  v58 = a7;
  v44 = a6;
  *&v45 = a2;
  v43 = a1;
  swift_getTupleTypeMetadata2();
  v55 = sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  v49 = sub_1C1263190();
  v51 = sub_1C1263190();
  v50 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  v52 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  *&v74 = v55;
  *(&v74 + 1) = a4;
  *&v75 = v52;
  *(&v75 + 1) = WitnessTable;
  v76 = a7;
  v47 = sub_1C12656A0();
  v56 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v41 - v18;
  *&v74 = *a1;
  sub_1C12661A0();

  swift_getWitnessTable();
  sub_1C1266360();
  v45 = v80;
  v78 = v80;
  v79 = v81;
  v19 = sub_1C1266800();
  v20 = swift_getWitnessTable();
  MEMORY[0x1C68EF8D0](&v74, v19, v20);
  swift_unknownObjectRelease();
  v80 = v74;
  v81 = v75;
  sub_1C1266BA0();
  swift_getWitnessTable();
  *&v80 = sub_1C12661C0();
  v59 = a3;
  v60 = a4;
  v21 = a5;
  v61 = a5;
  v22 = v44;
  v62 = v44;
  v63 = v58;
  v23 = v46;
  v64 = v46;
  swift_getKeyPath();
  v24 = v43;
  v42 = a3;
  sub_1C1266AF0();
  *&v45 = sub_1C12669F0();

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v26 = a4;
  *(v25 + 32) = v21;
  *(v25 + 40) = v22;
  v27 = v58;
  *(v25 + 48) = v58;
  *(v25 + 56) = v23;
  memcpy((v25 + 64), v24, 0x48uLL);
  *(v25 + 136) = a10;
  v28 = swift_allocObject();
  v29 = v42;
  v28[2] = v42;
  v28[3] = v26;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v27;
  v28[7] = v23;
  v28[8] = sub_1C1230F20;
  v28[9] = v25;
  *&v74 = v29;
  *(&v74 + 1) = v26;
  *&v75 = v21;
  *(&v75 + 1) = v22;
  v76 = v27;
  v77 = v23;
  v30 = type metadata accessor for PhotosNotificationStackView(0, &v74);
  (*(*(v30 - 8) + 16))(&v74, v24, v30);
  v31 = MEMORY[0x1E697FDC0];
  v32 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  v72 = v23;
  v73 = v32;
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x1E697E070];
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x1E697E5C0];
  v33 = swift_getWitnessTable();
  v34 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, v31);
  v66 = v33;
  v67 = v34;
  v40 = swift_getWitnessTable();
  v35 = v48;
  sub_1C1265680();
  v65 = v40;
  v36 = v47;
  swift_getWitnessTable();
  v37 = v53;
  sub_1C0FDBA4C();
  v38 = *(v56 + 8);
  v38(v35, v36);
  sub_1C0FDBA4C();
  return (v38)(v37, v36);
}

uint64_t sub_1C122E680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, long double a10@<D0>, uint64_t a11)
{
  v76 = a5;
  v79 = a2;
  v73 = a1;
  v96 = a9;
  v95 = sub_1C1263840();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C1263210();
  v88 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981D8, &unk_1C12CAB10);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v69 - v19;
  v74 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538, &unk_1C12A9380);
  v23 = sub_1C1263190();
  v75 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v69 - v24;
  v25 = sub_1C1263190();
  v77 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v71 = &v69 - v26;
  v78 = v27;
  v28 = sub_1C1263190();
  v83 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v80 = &v69 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  v84 = v28;
  v86 = sub_1C1263190();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v82 = &v69 - v32;
  v33 = a3[7];
  __dst[0] = a4;
  __dst[1] = v76;
  __dst[2] = a6;
  __dst[3] = a7;
  __dst[4] = a8;
  __dst[5] = a11;
  v34 = type metadata accessor for PhotosNotificationStackView(0, __dst);
  v35 = v73;
  if (v33 >= v73)
  {
    v36 = v73;
  }

  else
  {
    v36 = v33;
  }

  v37 = pow(a10, v36);
  v70 = a3;
  v38 = a3[2];
  memcpy(__dst, a3, sizeof(__dst));
  v76 = v34;
  v39 = sub_1C122D818();
  v38(v79, v39, v41, v40 & 1);

  v42 = v72;
  v43 = v71;
  sub_1C1264F20();
  (*(v74 + 8))(v22, a6);
  v44 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
  v103 = a11;
  v104 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_1C1265B90();
  MEMORY[0x1C68EE3D0](v23, WitnessTable, v37, v37, v46, v47);
  (*(v75 + 8))(v42, v23);
  if (*(v70 + 7) <= v35)
  {
    memcpy(__dst, v70, sizeof(__dst));
    sub_1C122D7C0();
  }

  v101 = WitnessTable;
  v102 = MEMORY[0x1E697E070];
  v48 = v78;
  v49 = swift_getWitnessTable();
  v50 = v80;
  sub_1C1264F50();
  (*(v77 + 8))(v43, v48);
  sub_1C1265B90();
  v51 = v87;
  sub_1C1263220();
  v52 = v90;
  sub_1C1263830();
  v53 = sub_1C1230F8C(&qword_1EBE92E80, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
  v54 = sub_1C1230F8C(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v55 = v89;
  v56 = v93;
  v57 = v95;
  sub_1C1262980();
  (*(v92 + 8))(v52, v57);
  (*(v88 + 8))(v51, v56);
  v99 = v49;
  v100 = MEMORY[0x1E697E5C0];
  v58 = v84;
  v59 = swift_getWitnessTable();
  __dst[0] = v56;
  __dst[1] = v57;
  __dst[2] = v53;
  __dst[3] = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v81;
  v62 = v94;
  v63 = sub_1C122D670(v55, v58, v94, v59, OpaqueTypeConformance2);
  (*(v91 + 8))(v55, v62, v63);
  (*(v83 + 8))(v50, v58);
  v64 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
  v97 = v59;
  v98 = v64;
  v65 = v86;
  swift_getWitnessTable();
  v66 = v82;
  sub_1C0FDBA4C();
  v67 = *(v85 + 8);
  v67(v61, v65);
  sub_1C0FDBA4C();
  return (v67)(v66, v65);
}

uint64_t sub_1C122F08C(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

double PhotosNotificationStackView<>.init(notifications:notificationView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1C122D764();
  *a7 = a1;
  *(a7 + 8) = KeyPath;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = v11;
  *(a7 + 40) = v13;
  *(a7 + 48) = v12 & 1;
  *&result = 3;
  *(a7 + 56) = xmmword_1C12CA7C0;
  return result;
}

uint64_t sub_1C122F244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C122F288(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C122F2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C122F330@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981B0, &qword_1C12CAAB8);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_3();
  v24 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for PhotosNotificationStackView_Previews.Model(0);
  OUTLINED_FUNCTION_7_45();
  sub_1C1230F8C(v13, v14, &unk_1C12CAA9C);
  v15 = sub_1C1262A80();
  OUTLINED_FUNCTION_11_34(v15, v16);
  v17 = swift_allocObject();
  sub_1C1261F60();
  *(v17 + 16) = &unk_1F406CFE8;
  sub_1C1230E78();
  sub_1C1264A20();

  *&v12[*(v2 + 44)] = xmmword_1C12CA7D0;
  v18 = sub_1C1262A80();
  OUTLINED_FUNCTION_11_34(v18, v19);
  sub_1C122F5B0();
  sub_1C1264A20();

  *&v9[*(v2 + 44)] = xmmword_1C12CA7E0;
  sub_1C0FCB6E4(v12, v6);
  v20 = v24;
  sub_1C0FCB6E4(v9, v24);
  v21 = v25;
  sub_1C0FCB6E4(v6, v25);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981C8, &qword_1C12CAAC0);
  sub_1C0FCB6E4(v20, v21 + *(v22 + 48));
  sub_1C0FCB74C(v9);
  sub_1C0FCB74C(v12);
  sub_1C0FCB74C(v20);
  return sub_1C0FCB74C(v6);
}

uint64_t sub_1C122F5B0()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1C1102490(0, 100, 0);
  for (i = 0; i != 100; ++i)
  {
    sub_1C1266940();

    v1 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v1);

    MEMORY[0x1C68EF850](10794, 0xE200000000000000);
    v3 = *(v7 + 16);
    v2 = *(v7 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_1C1102490((v2 > 1), v3 + 1, 1);
    }

    *(v7 + 16) = v3 + 1;
    v4 = (v7 + 40 * v3);
    v4[4] = i;
    v4[5] = 0xD000000000000011;
    v4[6] = 0x80000001C12691F0;
    v4[7] = 0xD00000000000001CLL;
    v4[8] = 0x80000001C126E680;
  }

  type metadata accessor for PhotosNotificationStackView_Previews.Model(0);
  v5 = swift_allocObject();
  sub_1C1261F60();
  *(v5 + 16) = v7;
  return v5;
}

uint64_t sub_1C122F73C(uint64_t a1, char a2)
{
  sub_1C1264440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981F0, &qword_1C12CAC00);
  sub_1C0FDB6D4(&qword_1EBE981F8, &qword_1EBE981F0, &qword_1C12CAC00, MEMORY[0x1E6981870]);
  return sub_1C1262950();
}

uint64_t sub_1C122F800@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C1263AA0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98200, &qword_1C12CAC08);
  return sub_1C122F868(a1, a2 & 1, (a3 + *(v6 + 44)));
}

uint64_t sub_1C122F868@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98208, &qword_1C12CAC10);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v61 = a1;
  }

  else
  {

    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  sub_1C1230774();
  v49 = v15;

  v16 = swift_allocObject();
  v46 = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  MEMORY[0x1EEE9AC00](v16);
  v17 = MEMORY[0x1E69E6530];
  *(&v41 - 6) = &type metadata for PhotosNotificationStackView_Previews.Model.NotificationData;
  *(&v41 - 5) = v17;
  *(&v41 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98210, &qword_1C12CAC18);
  *(&v41 - 3) = sub_1C1230D04();
  *(&v41 - 2) = sub_1C1231024();
  *(&v41 - 1) = sub_1C1231078();
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;

  sub_1C1265630();
  v44 = v52;
  v43 = v53;
  v42 = v54;
  *&v41 = sub_1C1265130();
  sub_1C12659A0();
  sub_1C1262C80();
  v18 = v62;
  v19 = v63;
  v20 = v64;
  v21 = v65;
  v22 = v66;
  v23 = v67;
  v24 = &v9[*(v5 + 36)];
  v25 = *(sub_1C1263320() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1C12639D0();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #10.0 }

  *v24 = _Q0;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010) + 36)] = 256;
  *v9 = v41;
  *(v9 + 1) = v18;
  v9[16] = v19;
  *(v9 + 3) = v20;
  v9[32] = v21;
  *(v9 + 5) = v22;
  *(v9 + 6) = v23;
  v33 = v47;
  sub_1C10D1A1C(v9, v47, &qword_1EBE98208, &qword_1C12CAC10);
  __src[0] = v49;
  v34 = KeyPath;
  __src[1] = KeyPath;
  __src[2] = sub_1C1231018;
  v35 = v46;
  __src[3] = v46;
  v36 = v44;
  v37 = v43;
  __src[4] = v44;
  __src[5] = v43;
  LOBYTE(v25) = v42;
  LOBYTE(__src[6]) = v42;
  *(&__src[6] + 1) = *v50;
  HIDWORD(__src[6]) = *&v50[3];
  v41 = xmmword_1C12CA7C0;
  *&__src[7] = xmmword_1C12CA7C0;
  v38 = v48;
  memcpy(v48, __src, 0x48uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98238, &qword_1C12CAC30);
  sub_1C10D1A1C(v33, v38 + *(v39 + 48), &qword_1EBE98208, &qword_1C12CAC10);
  sub_1C10D1A1C(__src, &v52, &qword_1EBE98240, &qword_1C12CAC38);
  sub_1C0FD1A5C(v9, &qword_1EBE98208, &qword_1C12CAC10);
  sub_1C0FD1A5C(v33, &qword_1EBE98208, &qword_1C12CAC10);
  v52 = v49;
  v53 = v34;
  v54 = sub_1C1231018;
  v55 = v35;
  v56 = v36;
  v57 = v37;
  v58 = v25;
  *v59 = *v50;
  *&v59[3] = *&v50[3];
  v60 = v41;
  return sub_1C0FD1A5C(&v52, &qword_1EBE98240, &qword_1C12CAC38);
}

double sub_1C122FDE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = *(a1 + 24);
  v27 = *(a1 + 8);
  v28 = v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  v26[0] = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6 & 1;
  v19 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 32);
  __asm { FMOV            V1.2D, #20.0 }

  *a7 = xmmword_1C12B0730;
  *(a7 + 16) = _Q1;
  *(a7 + 32) = xmmword_1C12B0740;
  *(a7 + 48) = xmmword_1C12B0750;
  *(a7 + 64) = sub_1C122FF88;
  *(a7 + 72) = 0;
  *(a7 + 80) = sub_1C1231130;
  *(a7 + 88) = v15;
  *(a7 + 96) = j_nullsub_1;
  *(a7 + 104) = 0;
  *(a7 + 112) = a2;
  *(a7 + 120) = a3;
  *(a7 + 128) = a4;
  *(a7 + 136) = KeyPath;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  *(a7 + 160) = sub_1C1231138;
  *(a7 + 168) = v18;
  sub_1C11F16F0(&v27, v26);
  sub_1C11F16F0(&v28, v26);
  sub_1C11F16F0(&v27, v26);
  sub_1C11F16F0(&v28, v26);

  return result;
}

uint64_t sub_1C122FF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C1265120();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98250, &qword_1C12CAC98) + 36);
  v5 = *(sub_1C1263320() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1C12639D0();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #10.0 }

  *v4 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010);
  *&v4[*(result + 36)] = 256;
  *a2 = v3;
  return result;
}

uint64_t sub_1C123005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1261A10();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C1261A20();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1261A40();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98248, &qword_1C12CAC68);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v24 = sub_1C1261AD0();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v17 = sub_1C1261C70();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  (*(v7 + 104))(v9, *MEMORY[0x1E6968750], v23);
  (*(v25 + 104))(v6, *MEMORY[0x1E6968728], v26);

  sub_1C1261A30();
  sub_1C1261AC0();
  if (qword_1EBE8FC18 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBE90BC0;
  v29 = *(v27 + 8);
  v19 = type metadata accessor for PhotosNotificationCellTextView(0);
  (*(v14 + 32))(a2 + v19[6], v16, v24);
  v20 = a2 + v19[9];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *a2 = 0x4000000000000000;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *(a2 + 48) = v29;
  v21 = (a2 + v19[7]);
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v19[8]) = 0;

  return sub_1C11F16F0(&v29, v28);
}

double sub_1C1230448(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  sub_1C1230774();
  v12 = v11;

  v13 = sub_1C125D824(a3, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {

    if ((a2 & 1) == 0)
    {
      sub_1C1266420();
      v17 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      a1 = v19;
    }

    swift_getKeyPath();
    v19 = a1;
    sub_1C1230F8C(&qword_1EBE981B8, type metadata accessor for PhotosNotificationStackView_Previews.Model, &unk_1C12CAA9C);
    sub_1C1261F30();

    v19 = a1;
    swift_getKeyPath();
    sub_1C1261F50();

    swift_beginAccess();
    sub_1C125D93C(v13, &v19);
    v22 = v21;
    v23 = v20;
    swift_endAccess();
    sub_1C1231148(&v23);
    sub_1C1231148(&v22);
    v18 = a1;
    swift_getKeyPath();
    sub_1C1261F40();
  }

  return result;
}

double sub_1C1230774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_45();
  sub_1C1230F8C(v0, v1, &unk_1C12CAA9C);
  sub_1C1261F30();

  swift_beginAccess();

  return result;
}

double sub_1C1230848(uint64_t a1)
{
  swift_beginAccess();
  sub_1C0FEAF28();
  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v1;
    v7[3] = a1;
    sub_1C1230AB0(v6, sub_1C0FF8B58, v7);
  }

  return result;
}

uint64_t sub_1C1230920(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_1C1266D50();
}

uint64_t sub_1C12309B8(uint64_t a1)
{
  MEMORY[0x1C68F07E0](*v1);
  sub_1C1265EF0();

  return sub_1C1265EF0();
}

uint64_t sub_1C1230A08()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](*v0);
  sub_1C1265EF0();
  sub_1C1265EF0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1230A70(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C12309B8(v2);
  return sub_1C1266EE0();
}

uint64_t sub_1C1230B68()
{

  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore36PhotosNotificationStackView_Previews5Model___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PhotosNotificationStackView_Previews.Model(uint64_t a1)
{
  result = qword_1EBE98190;
  if (!qword_1EBE98190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1230C68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C1230CA8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C1230D04()
{
  result = qword_1EBE981A0;
  if (!qword_1EBE981A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981A0);
  }

  return result;
}

uint64_t sub_1C1230D6C(uint64_t a1)
{
  v2 = sub_1C1230ECC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1C1230DB8(uint64_t a1)
{
  v2 = sub_1C1230ECC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

unint64_t sub_1C1230E08()
{
  result = qword_1EBE981A8;
  if (!qword_1EBE981A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981A8);
  }

  return result;
}

unint64_t sub_1C1230E78()
{
  result = qword_1EBE981C0;
  if (!qword_1EBE981C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981C0);
  }

  return result;
}

unint64_t sub_1C1230ECC()
{
  result = qword_1EBE981D0;
  if (!qword_1EBE981D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981D0);
  }

  return result;
}

uint64_t sub_1C1230F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1231024()
{
  result = qword_1EBE98218;
  if (!qword_1EBE98218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98218);
  }

  return result;
}

unint64_t sub_1C1231078()
{
  result = qword_1EBE98220;
  if (!qword_1EBE98220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98210, &qword_1C12CAC18);
    sub_1C0FDB6D4(&qword_1EBE98228, &qword_1EBE98230, &unk_1C12CAC20, &protocol conformance descriptor for PhotosNotificationCell<A, B, C>);
    sub_1C10A9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98220);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_34(uint64_t result, char a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2 & 1;
  return result;
}

uint64_t PhotosBounceEffectButton.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C123122C();
  *(a5 + 32) = v11;
  *(a5 + 40) = v10;
  *(a5 + 48) = sub_1C1231268(2);
  *(a5 + 56) = v12;
  result = sub_1C1012790(0);
  *(a5 + 64) = result & 1;
  *(a5 + 72) = v14;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1C1231268(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0, &unk_1C12B6BD0);
  sub_1C1265410();
  return v2;
}

uint64_t PhotosBounceEffectButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = *(a1 + 16);
  v27 = a1;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92420, &qword_1C12CACB0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98270, &unk_1C12CACB8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08, &unk_1C12B0EB0);
  OUTLINED_FUNCTION_11_0();
  v3 = sub_1C1263190();
  v35 = *(a1 + 24);
  v4 = v35;
  v36 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_52();
  v34[14] = WitnessTable;
  v34[15] = sub_1C0FDB6D4(v6, &qword_1EBE92420, &qword_1C12CACB0, v7);
  v8 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_60();
  v34[12] = v8;
  v34[13] = sub_1C0FDB6D4(v9, &qword_1EBE98270, &unk_1C12CACB8, v10);
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_7();
  v34[10] = v11;
  v34[11] = sub_1C0FDB6D4(v12, &qword_1EBE90C08, &unk_1C12B0EB0, v13);
  v26[1] = v3;
  swift_getWitnessTable();
  v14 = sub_1C12654A0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  v21 = v28;
  memcpy(__dst, v28, 0x50uLL);
  v22 = swift_allocObject();
  v23 = v29;
  v22[2] = v29;
  v22[3] = v4;
  memcpy(v22 + 4, v21, 0x50uLL);
  v31 = v23;
  v32 = v4;
  v33 = __dst;
  (*(*(v27 - 8) + 16))(v34, __dst);
  sub_1C1265480();
  OUTLINED_FUNCTION_8_1();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v24 = *(v15 + 8);
  v24(v17, v14);
  sub_1C0FDBA4C();
  return (v24)(v20, v14);
}

void sub_1C123163C(void (**__src)(uint64_t), uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x50uLL);
  v7 = type metadata accessor for PhotosBounceEffectButton(0, a2, a3, v6);
  v8 = sub_1C12319FC();
  if (v8 == 2)
  {
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = swift_beginAccess();
  v9 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    goto LABEL_10;
  }

  if (![swift_unknownObjectRetain() allowZoomBounce])
  {
    v8 = swift_unknownObjectRelease();
LABEL_10:
    (*__src)(v8);
    return;
  }

  memcpy(__dst, __src, 0x50uLL);
  v10 = &selRef_proposedBeginState;
  if ((sub_1C1231A54() & 1) == 0)
  {
    memcpy(__dst, __src, 0x50uLL);
    v11 = *(v7 - 8);
    v12 = *(v11 + 16);
    v12(v26, __src, v7);
    sub_1C1231AAC(1);
    memcpy(v26, __dst, sizeof(v26));
    v13 = *(v11 + 8);
    v13(v26, v7);
    memcpy(v25, __src, sizeof(v25));
    v12(__dst, __src, v7);
    [v9 zoomBounceScale];
    sub_1C1231B08(v14);
    memcpy(__dst, v25, 0x50uLL);
    v13(__dst, v7);
    v10 = &selRef_proposedBeginState;
    sub_1C0FDAFC4();
    v15 = sub_1C12664C0();
    [v9 zoomBounceDelay];
    v17 = v16 + v16;
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    memcpy(v18 + 4, __src, 0x50uLL);
    v12(v25, __src, v7);
    sub_1C1231CA8(sub_1C1232CC8, v18, v17);
  }

  if (byte_1EDE78A38)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    byte_1EDE78A38 = 1;
    sub_1C0FDAFC4();
    v19 = sub_1C12664C0();
    [v9 zoomBounceRefractoryPeriod];
    sub_1C1231CA8(sub_1C1232044, 0, v20);

    v21 = sub_1C12664C0();
    [v9 v10[219]];
    v23 = v22;
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a3;
    memcpy(v24 + 4, __src, 0x50uLL);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    sub_1C1231CA8(sub_1C1023CDC, v24, v23);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C12319FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98278, &unk_1C12CAE30);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1231A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v1;
}

double sub_1C1231AAC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

double sub_1C1231B08(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1231B60(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = type metadata accessor for PhotosBounceEffectButton(0, a2, a3, v6);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v13, __src, v7);
  sub_1C1231AAC(0);
  memcpy(v13, __dst, sizeof(v13));
  v10 = *(v8 + 8);
  v10(v13, v7);
  memcpy(v12, __src, sizeof(v12));
  v9(__dst, __src, v7);
  sub_1C1231B08(1.0);
  memcpy(__dst, v12, sizeof(__dst));
  return (v10)(__dst, v7);
}

void sub_1C1231CA8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1C1265C10();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265C30();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1265C50();
  v22 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  UIAnimationDragCoefficient();
  sub_1C1265C40();
  sub_1C1265C90();
  v21 = *(v12 + 8);
  v21(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = sub_1C0FFC3FC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0FD7FC4;
  aBlock[3] = &block_descriptor_17;
  v19 = _Block_copy(aBlock);

  sub_1C1265C20();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C1232D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
  sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280, MEMORY[0x1E69E6328]);
  sub_1C1266870();
  MEMORY[0x1C68EFDD0](v17, v10, v7, v19);
  _Block_release(v19);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);
  v21(v17, v22);
}

uint64_t sub_1C1232050@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1263190();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92420, &qword_1C12CACB0);
  v42 = sub_1C1263190();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98270, &unk_1C12CACB8);
  v44 = sub_1C1263190();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08, &unk_1C12B0EB0);
  v47 = sub_1C1263190();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v17;
  a1[2](v16);
  memcpy(__dst, a1, sizeof(__dst));
  v19 = type metadata accessor for PhotosBounceEffectButton(0, a2, a3, v18);
  sub_1C12327B0();
  sub_1C1265B90();
  sub_1C1264A80();
  (*(v7 + 8))(v9, a2);
  MEMORY[0x1C68EF360](0.5, 1.0, 0.0);
  memcpy(__dst, a1, sizeof(__dst));
  v59 = sub_1C12327B0();
  v57 = a3;
  v58 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FF9EE4();
  v21 = v39;
  v22 = v38;
  sub_1C1265040();

  (*(v41 + 8))(v22, v10);
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  memcpy(v23 + 4, a1, 0x50uLL);
  (*(*(v19 - 8) + 16))(__dst, a1, v19);
  v24 = sub_1C0FDB6D4(&qword_1EDE7BC88, &qword_1EBE92420, &qword_1C12CACB0, MEMORY[0x1E697F548]);
  v55 = WitnessTable;
  v56 = v24;
  v25 = v42;
  v26 = swift_getWitnessTable();
  sub_1C1061D74();
  sub_1C10F8E40();
  v27 = v40;
  sub_1C1264C90();

  (*(v45 + 8))(v21, v25);
  v28 = sub_1C0FDB6D4(&qword_1EDE7BA18, &qword_1EBE98270, &unk_1C12CACB8, MEMORY[0x1E6980620]);
  v53 = v26;
  v54 = v28;
  v29 = v44;
  v30 = swift_getWitnessTable();
  sub_1C100AE3C();
  OUTLINED_FUNCTION_2_1();
  v31 = v43;
  sub_1C1264AC0();
  (*(v48 + 8))(v27, v29);
  v32 = sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08, &unk_1C12B0EB0, MEMORY[0x1E697FD58]);
  v51 = v30;
  v52 = v32;
  v33 = v47;
  swift_getWitnessTable();
  v34 = v46;
  sub_1C0FDBA4C();
  v35 = *(v49 + 8);
  v35(v31, v33);
  sub_1C0FDBA4C();
  return (v35)(v34, v33);
}

double sub_1C12327B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1232808(char *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  memcpy(v12, a2, sizeof(v12));
  v9 = type metadata accessor for PhotosBounceEffectButton(0, a3, a4, v8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(__dst, a2, v9);
  sub_1C12328EC(v7);
  memcpy(__dst, v12, sizeof(__dst));
  return (*(v10 + 8))(__dst, v9);
}

double sub_1C12328EC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98278, &unk_1C12CAE30);
  sub_1C1265430();
  return result;
}

uint64_t static PhotosWantsBounceEffectPreferenceKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBE98269 = a1;
  return result;
}

uint64_t sub_1C1232A30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBE98269;
  return result;
}

uint64_t sub_1C1232A7C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBE98269 = v1;
  return result;
}

unsigned __int8 *sub_1C1232AC4(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2(&v4);
    LOBYTE(v3) = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static PhotosWantsBounceEffectPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (result == 2)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1C1232B90@<X0>(_BYTE *a1@<X8>)
{
  result = static PhotosWantsBounceEffectPreferenceKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1232BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for PhotosWantsBounceEffectPreferenceKey(_BYTE *result, int a2, int a3)
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

uint64_t objectdestroyTm_24()
{

  return swift_deallocObject();
}

unint64_t sub_1C1232D34()
{
  result = qword_1EDE7B768;
  if (!qword_1EDE7B768)
  {
    sub_1C1265C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B768);
  }

  return result;
}

uint64_t PhotosFeedStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1232E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1232FFC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosFeedStyle.getter()
{
  sub_1C1232ECC();

  return sub_1C12637F0();
}

unint64_t sub_1C1232ECC()
{
  result = qword_1EBE98280;
  if (!qword_1EBE98280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98280);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosFeedStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C1232ECC();
  sub_1C12637F0();
  return sub_1C1232FC0;
}

unint64_t sub_1C1232FFC()
{
  result = qword_1EBE98288;
  if (!qword_1EBE98288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosFeedStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OneUpRecoveredAlbumToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = 0x4044000000000000;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpRecoveredAlbumToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C123327C()
{
  result = qword_1EBE98290;
  if (!qword_1EBE98290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98298, &unk_1C12CAFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98290);
  }

  return result;
}

uint64_t sub_1C1233324(uint64_t a1)
{
  sub_1C1266E90();
  PhotosQuestionType.hash(into:)();
  return sub_1C1266EE0();
}

unint64_t sub_1C1233370()
{
  result = qword_1EBE982A0;
  if (!qword_1EBE982A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982A0);
  }

  return result;
}

unint64_t sub_1C12333C8()
{
  result = qword_1EBE982A8;
  if (!qword_1EBE982A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosQuestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosQuestionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosQuestionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 PhotosDetailsNavigationDisplayedMediaTracker.DisplayConfiguration.init(mediaRepository:item:layoutKind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  v5 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v5;
  result = *(a2 + 32);
  *(a4 + 40) = result;
  *(a4 + 56) = v4;
  return result;
}

double PhotosDetailsNavigationDisplayedMediaTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

double PhotosDetailsNavigationDisplayedMediaTracker.init()()
{
  result = 0.0;
  *(v0 + 57) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

uint64_t sub_1C1233768(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1C1233CB4(a1, v4);
  sub_1C0FD1A5C(v4, &unk_1EBE8FE18, &qword_1C12B1780);
  swift_beginAccess();
  sub_1C0FDB800(v1 + 16, v4, &qword_1EBE982B0, &unk_1C12CB1B0);
  swift_beginAccess();
  sub_1C0FDB800(v1 + 80, v3, &unk_1EBE8FE18, &qword_1C12B1780);
  sub_1C1233CB4(v4, v3);
  sub_1C0FD1A5C(v3, &unk_1EBE8FE18, &qword_1C12B1780);
  return sub_1C0FD1A5C(v4, &qword_1EBE982B0, &unk_1C12CB1B0);
}

uint64_t sub_1C12338AC()
{
  OUTLINED_FUNCTION_44(v0 + 16, v6);
  sub_1C0FDB800(v0 + 16, v7, &qword_1EBE982B0, &unk_1C12CB1B0);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_0_86();
  sub_1C10CFC40(v1, v2, v3, v4);
  swift_endAccess();
  sub_1C1233768(v7);
  OUTLINED_FUNCTION_2_69();
  return sub_1C0FD1A5C(v7, &qword_1EBE982B0, &unk_1C12CB1B0);
}

void (*sub_1C1233950(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[19] = v1;
  OUTLINED_FUNCTION_44(v1 + 16, (v3 + 16));
  sub_1C0FDB800(v1 + 16, v3, &qword_1EBE982B0, &unk_1C12CB1B0);
  return sub_1C12339D4;
}

void sub_1C12339D4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_0_86();
    sub_1C0FDB800(v3, v4, v5, v6);
    sub_1C12338AC();
    OUTLINED_FUNCTION_2_69();
  }

  else
  {
    sub_1C12338AC();
  }

  free(v2);
}

uint64_t sub_1C1233A9C()
{
  swift_beginAccess();
  sub_1C0FDB800(v0 + 16, v3, &qword_1EBE982B0, &unk_1C12CB1B0);
  swift_beginAccess();
  sub_1C0FDB800(v0 + 80, v2, &unk_1EBE8FE18, &qword_1C12B1780);
  sub_1C1233CB4(v3, v2);
  sub_1C0FD1A5C(v2, &unk_1EBE8FE18, &qword_1C12B1780);
  return sub_1C0FD1A5C(v3, &qword_1EBE982B0, &unk_1C12CB1B0);
}

uint64_t sub_1C1233BBC()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_0_86();
  sub_1C10CFC40(v0, v1, v2, v3);
  swift_endAccess();
  sub_1C1233A9C();
  return OUTLINED_FUNCTION_2_69();
}

uint64_t (*sub_1C1233C2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1233C80;
}

uint64_t sub_1C1233C80(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1233A9C();
  }

  return result;
}

uint64_t sub_1C1233CB4(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB800(a1, &v7, &qword_1EBE982B0, &unk_1C12CB1B0);
  if (!v7)
  {
    return sub_1C0FD1A5C(&v7, &qword_1EBE982B0, &unk_1C12CB1B0);
  }

  v9[0] = v7;
  v9[1] = *v8;
  *v10 = *&v8[16];
  *&v10[9] = *&v8[25];
  v7 = 0uLL;
  *v8 = 0;
  *&v8[8] = xmmword_1C12A6550;
  v8[24] = 0;
  sub_1C0FDB800(a2, &v4, &unk_1EBE8FE18, &qword_1C12B1780);
  if (v5)
  {
    sub_1C0FD1A5C(&v7, &qword_1EBE8FE10, qword_1C12A1CA0);
    sub_1C0F9DDE4(&v4, v6);
    sub_1C0F9DDE4(v6, &v7);
    v8[24] = v10[24];
  }

  else
  {
    sub_1C0FD1A5C(&v4, &unk_1EBE8FE18, &qword_1C12B1780);
  }

  sub_1C0FF9434(&v7, v9 + 1);
  sub_1C0FD1A5C(&v7, &qword_1EBE8FE10, qword_1C12A1CA0);
  return sub_1C1233FD4(v9);
}

uint64_t PhotosDetailsNavigationDisplayedMediaTracker.deinit()
{
  sub_1C0FD1A5C(v0 + 16, &qword_1EBE982B0, &unk_1C12CB1B0);
  sub_1C0FD1A5C(v0 + 80, &unk_1EBE8FE18, &qword_1C12B1780);
  return v0;
}

uint64_t PhotosDetailsNavigationDisplayedMediaTracker.__deallocating_deinit()
{
  sub_1C0FD1A5C(v0 + 16, &qword_1EBE982B0, &unk_1C12CB1B0);
  sub_1C0FD1A5C(v0 + 80, &unk_1EBE8FE18, &qword_1C12B1780);

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

id sub_1C1234004(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void sub_1C12340D4(uint64_t a1)
{
  sub_1C1234290(a1);
  OUTLINED_FUNCTION_3_53();
  OUTLINED_FUNCTION_8_0();
}

void sub_1C1234290(uint64_t a1)
{
  sub_1C1266400();
  if (qword_1EDE7B5C0 != -1)
  {
    OUTLINED_FUNCTION_0_87();
    swift_once();
  }

  v4 = qword_1EDE7B5C8;
  sub_1C1262620();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v6 = Strong;
  if (![Strong representedItem])
  {
    goto LABEL_12;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  UIViewController.detailsNavigationContext.getter(&v133);
  v7 = *(&v133 + 1);
  if (!*(&v133 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v138);
LABEL_12:

LABEL_13:
    sub_1C1234E7C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  v8 = v133;
  v9 = v134;
  v10 = v136;
  v11 = v137;
  v116 = v135;
  sub_1C1246C30(v138, &v133, &v128);
  if (!v129)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v138);

    OUTLINED_FUNCTION_4_58(v23, v24, v25, v26, v27, v28, v29, v30, v94, buf, v98, v102, v104, v106, v108, v110, v112, v114, v116);
    sub_1C0F9E21C(&v128, &qword_1EBE982C0, &unk_1C12CB298);
    goto LABEL_13;
  }

  v115 = v8;
  sub_1C0F9DDE4(&v128, v130);
  v12 = [v6 viewIfLoaded];
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v138);
LABEL_18:

    sub_1C1093918(v115, v7, v9, v116, v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v6 presentingViewController];
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v138);

    goto LABEL_18;
  }

  v111 = v14;
  v113 = v9;
  v15 = sub_1C1266400();
  sub_1C0FA139C(v138, &v133);
  v107 = v7;
  v109 = v13;
  if (os_log_type_enabled(v4, v15))
  {
    OUTLINED_FUNCTION_5_42();
    v16 = swift_slowAlloc();
    v98 = v11;
    v17 = swift_slowAlloc();
    v125[0] = v17;
    *v16 = 136315138;
    sub_1C0FA139C(&v133, &v128);
    v104 = v10;
    v18 = sub_1C1265ED0();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(&v133);
    v21 = sub_1C0FA0E80(v18, v20, v125);
    v9 = v113;

    *(v16 + 4) = v21;
    v10 = v104;
    _os_log_impl(&dword_1C0F96000, v4, v15, "representedItem: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v11 = v98;
    OUTLINED_FUNCTION_1_61();
    MEMORY[0x1C68F1630]();
    v7 = v107;
    OUTLINED_FUNCTION_1_61();
    MEMORY[0x1C68F1630]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v133);
  }

  *&v133 = v115;
  *(&v133 + 1) = v7;
  v134 = v9;
  v135 = v116;
  v136 = v10;
  v137 = v11;
  v31 = UIViewController.presentationSourceView(for:in:)(v138, &v133);
  if (v31)
  {
    v103 = v31;
    if (v10)
    {
      v32 = v31;
      sub_1C0FCF1B4(v10, v11);
      v10(&v133, v138);
      sub_1C0FCF004(v10, v11);
      sub_1C0FD09FC(&v133, &v128);
    }

    else
    {
      v42 = v31;
      sub_1C0FA139C(v138, &v128);
      v43 = v42;
    }

    sub_1C10C8EF4(&v128, &v134);
    __swift_destroy_boxed_opaque_existential_0Tm(&v128);
    *&v133 = v115;
    *(&v133 + 1) = v7;

    sub_1C0FF9388(&v133, &v128);
    sub_1C102EFA0(&v128, v125, &qword_1EBE8FE10, qword_1C12A1CA0);
    if (v126 == 1)
    {
      sub_1C0F9E21C(v125, &qword_1EBE8FE10, qword_1C12A1CA0);
      v44 = 2;
    }

    else
    {
      v44 = v127;
      sub_1C0FD09A8(v125);
    }

    v45 = sub_1C1266400();
    if (os_log_type_enabled(v4, v45))
    {
      OUTLINED_FUNCTION_5_42();
      bufb = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v125[0] = v99;
      *bufb = 136315138;
      LOBYTE(v123[0]) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE982C8, &qword_1C12CB2A8);
      v46 = sub_1C1265ED0();
      v48 = v44;
      v49 = v10;
      v50 = v11;
      v51 = sub_1C0FA0E80(v46, v47, v125);
      v9 = v113;

      *(bufb + 4) = v51;
      v11 = v50;
      v10 = v49;
      v44 = v48;
      _os_log_impl(&dword_1C0F96000, v4, v45, "layoutKind: %s", bufb, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      OUTLINED_FUNCTION_1_61();
      MEMORY[0x1C68F1630]();
      OUTLINED_FUNCTION_1_61();
      MEMORY[0x1C68F1630]();
    }

    v52 = v44 == 2;
    v53 = v44;
    v54 = v109;
    if (v52 || (v53 & 1) != 0)
    {
      [v109 bounds];
      OUTLINED_FUNCTION_3_53();
      [v103 bounds];
      CGRectGetHeight(v139);
      [v103 bounds];
      CGRectGetWidth(v140);

      sub_1C1093918(v115, v107, v9, v116, v10, v11);
      sub_1C0F9E21C(&v128, &qword_1EBE8FE10, qword_1C12A1CA0);
      sub_1C0FD0978(&v133);
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    else
    {
      sub_1C102EFA0(&v128, v125, &qword_1EBE8FE10, qword_1C12A1CA0);
      v105 = v10;
      if (v126 == 1)
      {
        sub_1C0F9E21C(v125, &qword_1EBE8FE10, qword_1C12A1CA0);
        memset(v123, 0, sizeof(v123));
        v124 = 0;
      }

      else
      {
        sub_1C102EFA0(v125, v123, &unk_1EBE8FE18, &qword_1C12B1780);
        sub_1C0FD09A8(v125);
      }

      v55 = sub_1C1266400();
      OUTLINED_FUNCTION_6_43(v123, v125);
      OUTLINED_FUNCTION_6_43(v123, v122);
      if (os_log_type_enabled(v4, v55))
      {
        v100 = v55;
        v56 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v56 = 136315394;
        OUTLINED_FUNCTION_6_43(v125, v117);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18, &qword_1C12B1780);
        v57 = sub_1C1265ED0();
        v59 = v58;
        sub_1C0F9E21C(v125, &unk_1EBE8FE18, &qword_1C12B1780);
        v60 = sub_1C0FA0E80(v57, v59, &v121);

        *(v56 + 4) = v60;
        bufa = v56;
        *(v56 + 12) = 2080;
        OUTLINED_FUNCTION_6_43(v122, v117);
        v61 = v119;
        if (v119)
        {
          v62 = v120;
          __swift_project_boxed_opaque_existential_1(v117, v119);
          v63 = (*(v62 + 16))(v61, v62);
          v61 = v64;
          v66 = v65;
          __swift_destroy_boxed_opaque_existential_0Tm(v117);
        }

        else
        {
          sub_1C0F9E21C(v117, &unk_1EBE8FE18, &qword_1C12B1780);
          v63 = 0;
          v66 = 1;
        }

        v54 = v109;
        v117[0] = v63;
        v117[1] = v61;
        v118 = v66 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0, &qword_1C12A2EA0);
        v67 = sub_1C1265ED0();
        v69 = v68;
        sub_1C0F9E21C(v122, &unk_1EBE8FE18, &qword_1C12B1780);
        v70 = sub_1C0FA0E80(v67, v69, &v121);

        *(bufa + 14) = v70;
        _os_log_impl(&dword_1C0F96000, v4, v100, "media: %s pixelSize: %s", bufa, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
      }

      else
      {
        sub_1C0F9E21C(v122, &unk_1EBE8FE18, &qword_1C12B1780);
        sub_1C0F9E21C(v125, &unk_1EBE8FE18, &qword_1C12B1780);
      }

      v71 = v131;
      v72 = v132;
      __swift_project_boxed_opaque_existential_1(v130, v131);
      v125[0] = v103;
      PhotosDetailsNavigationEndPoint.frameForContent<A>(of:displayedIn:for:)(v123, v125, v138, v71, &type metadata for PXPlatformViewViewport, v72, &off_1F407DDA8);
      OUTLINED_FUNCTION_3_53();
      v73 = v131;
      v74 = v132;
      __swift_project_boxed_opaque_existential_1(v130, v131);
      v75 = (*(v74 + 16))(v73, v74);
      v76 = OUTLINED_FUNCTION_8_0();
      [v77 v78];
      OUTLINED_FUNCTION_3_53();
      v80 = v79;
      swift_unknownObjectRelease();
      v81 = sub_1C1266400();
      if (os_log_type_enabled(v4, v81))
      {
        OUTLINED_FUNCTION_5_42();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v122[0] = v83;
        *v82 = 136315138;
        v125[0] = v1;
        v125[1] = v2;
        v125[2] = v3;
        v126 = v80;
        type metadata accessor for CGRect(0);
        v84 = sub_1C1265ED0();
        v101 = v11;
        v86 = sub_1C0FA0E80(v84, v85, v122);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_1C0F96000, v4, v81, "frame of source in destination: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();

        v87 = v103;
        v89 = v113;
        v88 = v115;
        v91 = v105;
        v90 = v107;
        v92 = v116;
        v93 = v101;
      }

      else
      {

        v87 = v103;
        v89 = v113;
        v88 = v115;
        v91 = v105;
        v90 = v107;
        v92 = v116;
        v93 = v11;
      }

      sub_1C1093918(v88, v90, v89, v92, v91, v93);

      sub_1C0F9E21C(v123, &unk_1EBE8FE18, &qword_1C12B1780);
      sub_1C0F9E21C(&v128, &qword_1EBE8FE10, qword_1C12A1CA0);
      sub_1C0FD0978(&v133);
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v130);
  }

  else
  {
    sub_1C1234E7C();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_4_58(v34, v35, v36, v37, v38, v39, v40, v41, v94, buf, v98, v102, v104, v107, v13, v111, v113, v115, v116);
    __swift_destroy_boxed_opaque_existential_0Tm(v138);
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
  }

LABEL_14:
  OUTLINED_FUNCTION_8_0();
}

id sub_1C1234E14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C1234E7C()
{
  result = qword_1EDE7EF28[0];
  if (!qword_1EDE7EF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7EF28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationViewControllerTransitionOptions.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1234FB0()
{
  result = qword_1EBE982D0;
  if (!qword_1EBE982D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982D0);
  }

  return result;
}

uint64_t sub_1C1235004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1)
  {
    if (a5)
    {
      sub_1C1263AA0();
    }

    sub_1C10228C4();
  }

  else
  {
    if (a7)
    {
      sub_1C12638E0();
    }

    sub_1C1022918();
  }

  return sub_1C1265A70();
}

uint64_t sub_1C1235090(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a4;
  v6 = a1 & 1;
  return MEMORY[0x1C68EE920](&v5, a2, &type metadata for FrameAxisModifier, a3);
}

double sub_1C12350CC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1C1264450();
  sub_1C1264450();
  sub_1C1264450();
  sub_1C1264450();
  sub_1C12659A0();
  sub_1C1262C80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE982D8, &qword_1C12CB3F8);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE982E0, &unk_1C12CB400) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_1C1235200()
{
  v1 = v0;
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697E718])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E697E6F0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697E6F8])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E697E6E8])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E697E708])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E697E6C0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x1E697E6C8])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x1E697E6D0])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x1E697E6D8])
  {
    return 11;
  }

  if (v7 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(v6, v2);
    return 4;
  }

  return 12;
}

uint64_t getEnumTagSinglePayload for FrameAxisModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameAxisModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C12354F4()
{
  result = qword_1EDE7BF18;
  if (!qword_1EDE7BF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE982E0, &unk_1C12CB400);
    sub_1C1235580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF18);
  }

  return result;
}

unint64_t sub_1C1235580()
{
  result = qword_1EDE7BB48;
  if (!qword_1EDE7BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE982D8, &qword_1C12CB3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BB48);
  }

  return result;
}

id PhotosSearchRange.textRange(in:)(void *a1)
{
  swift_getObjectType();

  return sub_1C1235B1C(a1, v1);
}

uint64_t PhotosSearchRange.tokenRange.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotosSearchRange.init(textRange:textInput:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PhotosSearchRange.TextInputStorage();
  v6 = OUTLINED_FUNCTION_24_0(v5);
  OUTLINED_FUNCTION_0_88(v6);
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  return result;
}

uint64_t PhotosSearchRange.init(tokenRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PhotosSearchRange.TextInputStorage();
  v9 = OUTLINED_FUNCTION_24_0(v8);
  result = OUTLINED_FUNCTION_0_88(v9);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  if (a3)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  *(a4 + 16) = v13;
  *(a4 + 24) = v9;
  return result;
}

uint64_t PhotosSearchRange.init(textRange:textInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    swift_getObjectType();
    v7 = sub_1C1184354(a4, a1, a2);
  }

  v10 = type metadata accessor for PhotosSearchRange.TextInputStorage();
  v11 = OUTLINED_FUNCTION_24_0(v10);
  OUTLINED_FUNCTION_0_88(v11);
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a5 = v7;
  *(a5 + 8) = 0;
  *(a5 + 16) = v12;
  *(a5 + 24) = v11;
  return result;
}

uint64_t PhotosSearchRange.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosSearchRange.TextInputStorage();
  v3 = OUTLINED_FUNCTION_24_0(v2);
  result = OUTLINED_FUNCTION_0_88(v3);
  *(a1 + 24) = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  return result;
}

uint64_t sub_1C1235830()
{
  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_1EBE98308 = v0;
  qword_1EBE982F0 = 0;
  *algn_1EBE982F8 = 0;
  byte_1EBE98300 = 2;
  return result;
}

double static PhotosSearchRange.beginningOfDocument.getter()
{
  if (qword_1EBE8FD80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_70(&qword_1EBE982F0);

  return result;
}

id PhotosSearchRange.insertionPoint.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    v3 = 0;
    if (v2 != 1 && v2 != 255)
    {
      return 0;
    }
  }

  else if ([*v0 isEmpty] && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v5 = Strong;
    v6 = [Strong beginningOfDocument];
    v7 = [v1 start];
    v3 = [v5 offsetFromPosition:v6 toPosition:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL sub_1C1235A00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      sub_1C1049588();
      return sub_1C12666B0() & 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v8 = a6 == 2 && a4 == 1;
      if (!v8 || a5)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a5 | a4)
    {
      return 0;
    }

    return 1;
  }

  if (a6 != 1)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t sub_1C1235AD8()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1C1235B1C(id a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    if (v5 != 1 && v5 != 255)
    {
      if (v4 | v3)
      {
        v8 = [a1 endOfDocument];
        v9 = [a1 endOfDocument];
      }

      else
      {
        v8 = [a1 beginningOfDocument];
        v9 = [a1 beginningOfDocument];
      }

      v6 = [a1 textRangeFromPosition:v8 toPosition:v9];
    }
  }

  else
  {
    sub_1C0F99AE4(v4, v3, 0);
    return v4;
  }

  return v6;
}

uint64_t sub_1C1235C3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1C1235C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1235CC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void PhotosSectionHeader.init(title:titleSize:titleMaxLines:stackVertically:topPadding:wantsDivider:extraPaddings:titleViewProvider:disclosureViewProvider:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t (*a15)(void), uint64_t a16, void (*a17)(uint64_t), uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v28 = *a3;
  v37 = a19;
  v38 = a20;
  v39 = a21;
  v29 = a9 + *(type metadata accessor for PhotosSectionHeader(0, &v37) + 84);
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v28;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  v30 = a15();
  a17(v30);
  if (a8)
  {
    if (qword_1EDE812E8 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDE7A438;
  }

  else
  {

    v31 = a7;
  }

  *(a9 + 40) = v31;
  *(a9 + 48) = a14 & 1;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
}

double sub_1C1235E94(uint64_t a1)
{
  v3 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = v1 + *(a1 + 84);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (*(v10 + 32) == 1)
  {
    return *v10;
  }

  sub_1C1266420();
  v16 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v17 = sub_1C1001C04(v12, v11, v14, v13, 0);
  (*(v5 + 8))(v9, v3, v17);
  return v18;
}

uint64_t PhotosSectionHeader.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v50 = a1[5];
  v75[0] = v3;
  v75[1] = v4;
  v75[2] = v5;
  v75[3] = v50;
  type metadata accessor for HeaderTitle(255, v75);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98398, &qword_1C12CB5F8);
  v6 = OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4(v6, v7, v8);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  v49[1] = swift_getWitnessTable();
  v9 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v51 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v54 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_44(v49 - v17);
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v55 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_44(v49 - v21);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v58 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_44(v49 - v24);
  v59 = v25;
  v53 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v60 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v56 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v57 = v49 - v30;
  sub_1C1263AB0();
  v62 = v3;
  v63 = v4;
  v64 = v5;
  v65 = v50;
  v66 = v52;
  sub_1C1265590();
  sub_1C12644A0();
  sub_1C1235E94(a1);
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  v32 = v49[0];
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v33(v13, v9);
  sub_1C12644C0();
  sub_1C1235E94(a1);
  v34 = MEMORY[0x1E697E5D8];
  v73 = WitnessTable;
  v74 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = v49[3];
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v37(v32, v14);
  sub_1C1264480();
  v71 = v35;
  v72 = v34;
  v38 = v49[2];
  v39 = swift_getWitnessTable();
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v40(v36, v18);
  sub_1C1264490();
  if (qword_1EDE812E0 != -1)
  {
    swift_once();
  }

  v69 = v39;
  v70 = v34;
  v41 = v59;
  v42 = swift_getWitnessTable();
  v43 = v56;
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v44(v38, v41);
  v67 = v42;
  v68 = v34;
  v45 = v53;
  swift_getWitnessTable();
  v46 = v57;
  sub_1C0FDBA4C();
  v47 = *(v60 + 8);
  v47(v43, v45);
  sub_1C0FDBA4C();
  return (v47)(v46, v45);
}

uint64_t sub_1C123664C@<X0>(char **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a6;
  v79 = sub_1C1265670();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979C8, &qword_1C12C6B50);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v64 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98398, &qword_1C12CB5F8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v64 - v18;
  v74 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v67 = type metadata accessor for HeaderTitle(0, &v86);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = a1[1];
  v71 = *a1;
  v66 = v30;
  LOBYTE(v85[0]) = *(a1 + 16);
  v69 = a1[3];
  v65 = *(a1 + 32);
  v64 = *(a1 + 33);
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v31 = type metadata accessor for PhotosSectionHeader(0, &v86);
  (*(v21 + 16))(v24, a1 + *(v31 + 76), a2);
  v32 = *(v31 + 80);
  v33 = v74[2];
  v74 = a1;
  v34 = v72;
  (v33)(v72, a1 + v32, a3);
  v63 = a2;
  v35 = v67;
  sub_1C1236DA4(v71, v66, v85, v69, v65, v64, v24, v34, v26, v63, a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  v71 = v29;
  v69 = WitnessTable;
  sub_1C0FDBA4C();
  v37 = v68;
  v38 = *(v68 + 8);
  v39 = v70;

  v72 = v26;
  v38(v26, v35);
  sub_1C1265660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(a3) = sub_1C1264480();
  *(inited + 32) = a3;
  v41 = sub_1C1264490();
  *(inited + 33) = v41;
  v42 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != a3)
  {
    v42 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v41)
  {
    v42 = sub_1C12644B0();
  }

  v43 = *(v74 + 48);
  sub_1C12628A0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v76;
  (*(v77 + 32))(v76, v39, v79);
  v53 = &v52[*(v75 + 36)];
  *v53 = v42;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  v54 = v52;
  v55 = v73;
  sub_1C0FDB71C(v54, v73, &qword_1EBE979C8, &qword_1C12C6B50);
  v56 = v80;
  *(v55 + *(v80 + 36)) = v43 ^ 1;
  v57 = v78;
  sub_1C0FDB71C(v55, v78, &qword_1EBE98398, &qword_1C12CB5F8);
  v58 = *(v37 + 16);
  v59 = v72;
  v60 = v71;
  v58(v72, v71, v35);
  v86 = v59;
  v61 = v81;
  sub_1C1239FB8(v57, v81);
  v87 = v61;
  v85[0] = v35;
  v85[1] = v56;
  v83 = v69;
  v84 = sub_1C123A028();
  sub_1C119EE80(&v86, 2, v85);
  sub_1C0FD1A5C(v57, &qword_1EBE98398, &qword_1C12CB5F8);
  v38(v60, v35);
  sub_1C0FD1A5C(v61, &qword_1EBE98398, &qword_1C12CB5F8);
  return (v38)(v59, v35);
}

uint64_t sub_1C1236DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *a3;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v18;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 49) = a6;
  v24[0] = a10;
  v24[1] = a11;
  v24[2] = a12;
  v24[3] = a13;
  v19 = type metadata accessor for HeaderTitle(0, v24);
  (*(*(a10 - 8) + 32))(a9 + *(v19 + 68), a7, a10);
  return (*(*(a11 - 8) + 32))(a9 + *(v19 + 72), a8, a11);
}

double PhotosSectionHeaderTitleSize.font.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_1EBE8FD88 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_1EBE8FD90 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_1EBE8FD98 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_1EDE812C0 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return result;
}

uint64_t PhotosSectionHeaderTitleSize.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double PhotosSectionHeaderTitleView.init(title:titleSize:titleMaxLines:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  result = 0.0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5 & 1;
  return result;
}

uint64_t PhotosSectionHeaderTitleView.init(titleText:titleSize:titleMaxLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = v8;
  *(a8 + 24) = result;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3 & 1;
  *(a8 + 48) = a4;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7 & 1;
  return result;
}

uint64_t PhotosSectionHeaderTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x41uLL);
  *a1 = sub_1C12638E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983A0, &qword_1C12CB600);
  return sub_1C1237154(__dst, a1 + *(v3 + 44));
}

uint64_t sub_1C1237154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  v69 = sub_1C1263D20();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983C0, &qword_1C12CB8D0);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983C8, &qword_1C12CB8D8);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v67 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983D0, &qword_1C12CB8E0);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v67 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983D8, &qword_1C12CB8E8);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v67 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983E0, &qword_1C12CB8F0);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v67 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983E8, &qword_1C12CB8F8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983F0, &qword_1C12CB900);
  MEMORY[0x1EEE9AC00](v18);
  v19 = *(a1 + 8);
  v84 = v6;
  v85 = a2;
  v82 = v21;
  v83 = v20;
  v80 = v17;
  v81 = &v67 - v22;
  if (v19)
  {
    v86 = *a1;
    v87 = v19;
    sub_1C0FDB9AC();

    v23 = sub_1C12648F0();
    v25 = v24;
    LOBYTE(v19) = v26;
    v28 = v27;
  }

  else
  {
    v28 = *(a1 + 48);
    if (!v28)
    {
      result = sub_1C1266B70();
      __break(1u);
      return result;
    }

    LODWORD(v19) = *(a1 + 40);
    v23 = *(a1 + 24);
    v25 = *(a1 + 32);
    sub_1C0FDB850(v23, v25, v19 & 1);
  }

  KeyPath = swift_getKeyPath();
  v86 = v23;
  v87 = v25;
  v88 = v19 & 1;
  v89 = v28;
  v90 = KeyPath;
  v91 = 1;
  sub_1C1263D10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983F8, &qword_1C12CB938);
  sub_1C1239B2C();
  sub_1C1264D60();
  (*(v68 + 8))(v8, v69);
  sub_1C0FDB8E8(v23, v25, v19 & 1);

  v30 = v72;
  v31 = &v72[*(v67 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v33 = *MEMORY[0x1E6980FA8];
  v34 = sub_1C1264830();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  (*(v74 + 32))(v30, v11, v75);
  v35 = swift_getKeyPath();
  v36 = v73;
  sub_1C0FDB71C(v30, v73, &qword_1EBE983C8, &qword_1C12CB8D8);
  v37 = v36 + *(v70 + 36);
  *v37 = v35;
  *(v37 + 8) = 0;
  v38 = *(a1 + 56);
  LOBYTE(v32) = *(a1 + 64);
  v39 = swift_getKeyPath();
  v40 = v36;
  v41 = v77;
  sub_1C0FDB71C(v40, v77, &qword_1EBE983D0, &qword_1C12CB8E0);
  v42 = v41 + *(v71 + 36);
  *v42 = v39;
  *(v42 + 8) = v38;
  *(v42 + 16) = v32;
  switch(*(a1 + 16))
  {
    case 1:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD88 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98380;
      break;
    case 2:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD90 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98388;
      break;
    case 3:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD98 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98390;
      break;
    default:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EDE812C0 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EDE812C8;
      break;
  }

  v47 = *v46;

  v48 = swift_getKeyPath();
  v49 = v41;
  v50 = v78;
  sub_1C0FDB71C(v49, v78, &qword_1EBE983D8, &qword_1C12CB8E8);
  v51 = (v50 + *(v76 + 36));
  *v51 = v48;
  v51[1] = v47;
  v52 = sub_1C12651F0();
  v53 = swift_getKeyPath();
  v54 = v50;
  v55 = v80;
  sub_1C0FDB71C(v54, v80, &qword_1EBE983E0, &qword_1C12CB8F0);
  v56 = (v55 + *(v79 + 36));
  *v56 = v53;
  v56[1] = v52;
  v57 = *MEMORY[0x1E6980E20];
  v58 = sub_1C1264590();
  (*(*(v58 - 8) + 104))(v43, v57, v58);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v58);
  sub_1C1239BE4();
  v59 = v81;
  sub_1C1264980();
  sub_1C0FD1A5C(v43, &qword_1EBE96550, &qword_1C12AC4C0);
  sub_1C0FCC014(v55);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98400, &unk_1C12CBA30);
  v61 = v85;
  v62 = (v85 + *(v60 + 36));
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v64 = *MEMORY[0x1E69816C8];
  v65 = sub_1C1265340();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  return (*(v45 + 32))(v61, v59, v44);
}

uint64_t sub_1C1237AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983B8, &unk_1C12CB8C0);
  v19 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1263C30();
  sub_1C1266790();
  v17 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  v4 = sub_1C1265B00();
  sub_1C0FDB6D4(&qword_1EDE7C010, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDC8]);
  v5 = sub_1C1262E70();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (*(v2 + 49) == 1)
  {
    v23 = sub_1C1263AB0();
    v24 = 0;
    v25 = 1;
    sub_1C10228C4();
  }

  else
  {
    if (qword_1EDE812D0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDE812D8;
    v24 = 0;
    v25 = 1;
    sub_1C1022918();
  }

  v23 = sub_1C1265A70();
  MEMORY[0x1EEE9AC00](v23);
  v11 = v17;
  *(&v16 - 6) = v19;
  *(&v16 - 5) = v11;
  *(&v16 - 2) = *(a1 + 32);
  *(&v16 - 2) = v2;
  v12 = sub_1C1022650();
  WitnessTable = swift_getWitnessTable();
  sub_1C121710C(sub_1C1239A94, (&v16 - 8), MEMORY[0x1E6981D78], v4, v12, WitnessTable, v7);

  v21 = sub_1C0FDB6D4(&unk_1EDE7C000, qword_1EBE90EF8, &qword_1C12AC0F0, MEMORY[0x1E697DDD0]);
  v22 = WitnessTable;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v14 = *(v18 + 8);
  v14(v7, v5);
  sub_1C0FDBA4C();
  return (v14)(v10, v5);
}

uint64_t sub_1C1237E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a4;
  v80 = a5;
  v75 = a6;
  v78 = a3;
  v76 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v74 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v64 - v10;
  swift_getTupleTypeMetadata2();
  v11 = sub_1C1265B00();
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v67 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983B8, &unk_1C12CB8C0);
  v82 = v11;
  v21 = sub_1C1263C30();
  v22 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v64 - v25;
  v27 = *(a1 + 24);
  v71 = v29;
  v72 = v28;
  v77 = a1;
  v81 = &v64 - v25;
  v69 = v21;
  if (v27)
  {
    v30 = *(a1 + 16);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    LOBYTE(__dst[0]) = *(a1 + 48);
    v87[0] = v30;
    v87[1] = v27;
    LOBYTE(v87[2]) = v31;
    memset(&v87[3], 0, 32);
    v87[7] = v32;
    LOBYTE(v87[8]) = __dst[0];
    v67 = a2;
    v33 = v21;
    v34 = v24;
    memcpy(v90, v87, 0x41uLL);
    memcpy(v88, v87, 0x41uLL);
    memcpy(v89, v87, 0x41uLL);
    v86 = 1;

    sub_1C1239AC4(v87, __dst);
    sub_1C1239AC4(v88, __dst);
    sub_1C1239AFC(v90);
    memcpy(v85, v89, 0x48uLL);
    v85[9] = 0;
    LOBYTE(v85[10]) = 1;
    v35 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8, &unk_1C12CB8C0, MEMORY[0x1E6981F48]);
    WitnessTable = swift_getWitnessTable();
    sub_1C1112D68();
    sub_1C1239AFC(v87);
    memcpy(__dst, v85, 0x51uLL);
    sub_1C0FD1A5C(__dst, &qword_1EBE983B8, &unk_1C12CB8C0);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    v83 = v35;
    v84 = WitnessTable;
    v37 = v34;
    swift_getWitnessTable();
    sub_1C1170030(v34, v26);
    v38 = v71;
    v39 = v34;
    v40 = v72;
    v70 = *(v71 + 8);
    (v70)(v39, v72);
    a2 = v67;
    v41 = v26;
  }

  else
  {
    v65 = v13;
    v66 = v20;
    v42 = v82;
    if (a2 == MEMORY[0x1E6981E70])
    {
      v37 = v24;
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v21);
      v52 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8, &unk_1C12CB8C0, MEMORY[0x1E6981F48]);
      v53 = swift_getWitnessTable();
      __dst[11] = v52;
      __dst[12] = v53;
      swift_getWitnessTable();
      v41 = v81;
      v50 = v81;
      v51 = v37;
    }

    else
    {
      v43 = v79;
      __dst[0] = a2;
      __dst[1] = v78;
      __dst[2] = v79;
      __dst[3] = v80;
      v44 = v24;
      type metadata accessor for HeaderTitle(0, __dst);
      v45 = v19;
      sub_1C0FDBA4C();
      v46 = v67;
      (*(v67 + 16))(v16, v19, a2);
      v90[0] = 0;
      LOBYTE(v90[1]) = 1;
      __dst[0] = v16;
      __dst[1] = v90;
      v85[0] = a2;
      v85[1] = MEMORY[0x1E6981840];
      v89[0] = v43;
      v89[1] = MEMORY[0x1E6981838];
      v47 = v65;
      sub_1C119EE80(__dst, 2, v85);
      v67 = *(v46 + 8);
      (v67)(v16, a2);
      v48 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8, &unk_1C12CB8C0, MEMORY[0x1E6981F48]);
      v49 = swift_getWitnessTable();
      sub_1C1112E18();
      (*(v70 + 8))(v47, v42);
      (v67)(v45, a2);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v21);
      __dst[16] = v48;
      __dst[17] = v49;
      v37 = v44;
      swift_getWitnessTable();
      v41 = v81;
      v50 = v81;
      v51 = v44;
    }

    sub_1C1170030(v51, v50);
    v38 = v71;
    v40 = v72;
    v70 = *(v71 + 8);
    (v70)(v37, v72);
  }

  v68 = v37;
  __dst[0] = a2;
  v54 = v78;
  __dst[1] = v78;
  __dst[2] = v79;
  v55 = v80;
  __dst[3] = v80;
  type metadata accessor for HeaderTitle(0, __dst);
  v56 = v73;
  sub_1C0FDBA4C();
  (*(v38 + 16))(v37, v41, v40);
  __dst[0] = v37;
  v57 = v76;
  v58 = v74;
  (*(v76 + 16))(v74, v56, v54);
  __dst[1] = v58;
  v85[0] = v40;
  v85[1] = v54;
  v59 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8, &unk_1C12CB8C0, MEMORY[0x1E6981F48]);
  v60 = swift_getWitnessTable();
  __dst[14] = v59;
  __dst[15] = v60;
  __dst[13] = swift_getWitnessTable();
  v89[0] = swift_getWitnessTable();
  v89[1] = v55;
  sub_1C119EE80(__dst, 2, v85);
  v61 = *(v57 + 8);
  v61(v56, v54);
  v62 = v70;
  (v70)(v81, v40);
  v61(v58, v54);
  return v62(v68, v40);
}

uint64_t sub_1C12387D4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = sub_1C1264560();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  a2();
  sub_1C12645B0();
  sub_1C1264670();

  sub_1C1264550();
  sub_1C1264580();

  (*(v14 + 8))(v18, v12);
  (*(v7 + 104))(v11, *MEMORY[0x1E6980EA8], v5);
  v19 = sub_1C12646C0();

  result = (*(v7 + 8))(v11, v5);
  *a3 = v19;
  return result;
}

uint64_t sub_1C123899C()
{
  v0 = sub_1C1264560();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1264570();
  sub_1C12645B0();
  sub_1C1264670();

  sub_1C1264550();
  v4 = sub_1C1264580();

  result = (*(v1 + 8))(v3, v0);
  qword_1EBE98390 = v4;
  return result;
}

uint64_t sub_1C1238AA4(uint64_t a1)
{
  result = sub_1C12638E0();
  qword_1EDE812D8 = result;
  return result;
}

uint64_t sub_1C1238AC4()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 0.0;
  if (result)
  {
    v1 = 13.0;
  }

  qword_1EDE7A438 = *&v1;
  return result;
}

uint64_t sub_1C1238B24()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 0.0;
  if (result)
  {
    v1 = 13.0;
  }

  qword_1EDE7A430 = *&v1;
  return result;
}

unint64_t sub_1C1238B70()
{
  result = qword_1EBE983A8;
  if (!qword_1EBE983A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE983A8);
  }

  return result;
}

void sub_1C1238BE0(uint64_t a1)
{
  sub_1C1239A2C(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C1239A2C(319, &qword_1EDE76A80, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1C1239A2C(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C1238D4C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = *(v6 + 80);
  v13 = *(*(v5 - 8) + 64);
  v14 = *(v9 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (v15 >= a2)
  {
LABEL_29:
    if (v11 > 0x7FFFFFFE)
    {
      v25 = ((((result & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + v12 + 48) & ~v12;
      if (v7 != v15)
      {
        v25 = (v25 + v13 + v14) & ~v14;
        v7 = v10;
        v5 = v8;
      }

      return __swift_getEnumTagSinglePayload(v25, v7, v5);
    }

    else
    {
      v24 = *(result + 8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = ((*(*(v8 - 8) + 64) + ((v13 + v14 + ((v12 + 88) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
    v17 = (a2 - v15 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(result + v16);
        if (!*(result + v16))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v21 = *(result + v16);
        if (!*(result + v16))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(result + v16);
        if (!v21)
        {
          goto LABEL_29;
        }

LABEL_25:
        v22 = (v21 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v23 = *result;
        }

        else
        {
          v22 = 0;
          v23 = *result;
        }

        result = v15 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1C1238F54(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((*(*(v10 - 8) + 64) + ((v16 + v17 + ((v15 + 88) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    v19 = (a3 - v14 + 255) >> 8;
    if (v18 <= 3)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v13 > 0x7FFFFFFE)
          {
            v25 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + v15 + 48) & ~v15;
            if (v9 != v14)
            {
              v25 = (v25 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v25, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 8) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    bzero(a1, v18);
    if (v18 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosSectionHeaderTitleSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}