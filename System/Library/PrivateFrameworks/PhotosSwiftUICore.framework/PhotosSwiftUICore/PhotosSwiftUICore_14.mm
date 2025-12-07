uint64_t sub_1C10FA9D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_10();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C10FAA30()
{
  result = qword_1EBE93F28;
  if (!qword_1EBE93F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F28);
  }

  return result;
}

BOOL static OneUpChromeToolbarPosition.axis(for:)(double a1, double a2)
{
  if (_UIUserInterfaceSizeClassForHeight() == 2)
  {
    return 0;
  }

  sub_1C12665B0();
  return v3 > 1.0;
}

uint64_t static OneUpChromeToolbarPosition.for (viewSize:interfaceOrientation:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v124 = a1;
  v7 = sub_1C1263CD0();
  v125 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v109[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F38, &qword_1C12B6D70);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v116 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_8();
  v123 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_8();
  v122 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v109[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F40, &qword_1C12B6D78);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_1_3();
  v111 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_8();
  v117 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_8();
  v115 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_8();
  v113 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_8();
  v120 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_8();
  v118 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_8();
  v114 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v109[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v109[-v36];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v109[-v39];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v109[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v109[-v45];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v109[-v48];
  result = _UIUserInterfaceSizeClassForHeight();
  if (result != 2)
  {
    v121 = a2;
    v52 = a3 / a4;
    sub_1C10FB618(v124, v49);
    v112 = v49;
    sub_1C10FB618(v49, v46);
    sub_1C1263C90();
    OUTLINED_FUNCTION_4_35(v43);
    v124 = v9;
    v53 = *(v9 + 48);
    sub_1C10FB618(v43, v17);
    sub_1C10FB618(v46, &v17[v53]);
    OUTLINED_FUNCTION_17_1(v17);
    if (v55)
    {
      sub_1C0F9E21C(v43, &qword_1EBE93F40, &qword_1C12B6D78);
      sub_1C0F9E21C(v46, &qword_1EBE93F40, &qword_1C12B6D78);
      OUTLINED_FUNCTION_17_1(&v17[v53]);
      if (v55)
      {
        sub_1C0F9E21C(v17, &qword_1EBE93F40, &qword_1C12B6D78);
        a2 = v121;
        v54 = v112;
LABEL_27:
        v51 = v52 > 1.0;
LABEL_50:
        result = sub_1C0F9E21C(v54, &qword_1EBE93F40, &qword_1C12B6D78);
        goto LABEL_51;
      }
    }

    else
    {
      sub_1C10FB618(v17, v40);
      OUTLINED_FUNCTION_17_1(&v17[v53]);
      if (!v55)
      {
        v69 = v125;
        v70 = OUTLINED_FUNCTION_2_37();
        v71(v70);
        v72 = sub_1C10FB688();
        v110 = OUTLINED_FUNCTION_10_21(v40, v73, v74, v72);
        v75 = *(v69 + 8);
        v76 = OUTLINED_FUNCTION_8_27();
        v75(v76);
        sub_1C0F9E21C(v43, &qword_1EBE93F40, &qword_1C12B6D78);
        sub_1C0F9E21C(v46, &qword_1EBE93F40, &qword_1C12B6D78);
        (v75)(v40, v7);
        sub_1C0F9E21C(v17, &qword_1EBE93F40, &qword_1C12B6D78);
        a2 = v121;
        v54 = v112;
        if (v110)
        {
          goto LABEL_27;
        }

LABEL_12:
        sub_1C10FB618(v54, v37);
        sub_1C1263CA0();
        OUTLINED_FUNCTION_4_35(v34);
        v56 = v124;
        v57 = *(v124 + 48);
        v58 = v122;
        sub_1C10FB618(v34, v122);
        sub_1C10FB618(v37, v58 + v57);
        OUTLINED_FUNCTION_17_1(v58);
        if (v55)
        {
          OUTLINED_FUNCTION_11_18(v34);
          OUTLINED_FUNCTION_11_18(v37);
          OUTLINED_FUNCTION_17_1(v58 + v57);
          if (v55)
          {
            sub_1C0F9E21C(v58, &qword_1EBE93F40, &qword_1C12B6D78);
LABEL_39:
            v51 = 2 * (v52 > 1.0);
            goto LABEL_50;
          }
        }

        else
        {
          v59 = v114;
          sub_1C10FB618(v58, v114);
          OUTLINED_FUNCTION_17_1(v58 + v57);
          if (!v60)
          {
            v80 = v58;
            v81 = v125;
            v82 = OUTLINED_FUNCTION_2_37();
            v83(v82);
            v84 = sub_1C10FB688();
            v110 = OUTLINED_FUNCTION_10_21(v59, v85, v86, v84);
            v87 = *(v81 + 8);
            v88 = OUTLINED_FUNCTION_8_27();
            v87(v88);
            sub_1C0F9E21C(v34, &qword_1EBE93F40, &qword_1C12B6D78);
            sub_1C0F9E21C(v37, &qword_1EBE93F40, &qword_1C12B6D78);
            (v87)(v59, v7);
            v56 = v124;
            a2 = v121;
            v89 = v80;
            v54 = v112;
            sub_1C0F9E21C(v89, &qword_1EBE93F40, &qword_1C12B6D78);
            if (v110)
            {
              goto LABEL_39;
            }

LABEL_21:
            v61 = v118;
            sub_1C10FB618(v54, v118);
            v62 = v120;
            sub_1C1263CC0();
            OUTLINED_FUNCTION_4_35(v62);
            v63 = *(v56 + 48);
            v64 = v123;
            sub_1C10FB618(v62, v123);
            sub_1C10FB618(v61, v64 + v63);
            OUTLINED_FUNCTION_17_1(v64);
            if (v55)
            {
              OUTLINED_FUNCTION_6_22(v62);
              OUTLINED_FUNCTION_9_22();
              OUTLINED_FUNCTION_17_1(&qword_1EBE93F40 + v63);
              v65 = v115;
              v66 = v116;
              v67 = v117;
              if (v55)
              {
                v68 = &qword_1EBE93F40;
                goto LABEL_37;
              }
            }

            else
            {
              v77 = v113;
              sub_1C10FB618(v64, v113);
              OUTLINED_FUNCTION_17_1(v64 + v63);
              v67 = v117;
              if (!v78)
              {
                v92 = v125;
                v93 = OUTLINED_FUNCTION_2_37();
                v94(v93);
                v95 = sub_1C10FB688();
                LODWORD(v124) = OUTLINED_FUNCTION_10_21(v77, v96, v97, v95);
                v98 = *(v92 + 8);
                v99 = OUTLINED_FUNCTION_8_27();
                v98(v99);
                OUTLINED_FUNCTION_5_24(v120);
                OUTLINED_FUNCTION_5_24(v118);
                (v98)(v77, v7);
                OUTLINED_FUNCTION_5_24(v64);
                v65 = v115;
                v66 = v116;
                a2 = v121;
                if (v124)
                {
                  goto LABEL_49;
                }

                goto LABEL_32;
              }

              OUTLINED_FUNCTION_6_22(v120);
              OUTLINED_FUNCTION_9_22();
              (*(v125 + 8))(v77, v7);
              v65 = v115;
              v66 = v116;
            }

            sub_1C0F9E21C(&qword_1EBE93F40, &qword_1EBE93F38, &qword_1C12B6D70);
LABEL_32:
            sub_1C10FB618(v54, v65);
            sub_1C1263CB0();
            OUTLINED_FUNCTION_4_35(v67);
            v79 = *(v56 + 48);
            sub_1C10FB618(v67, v66);
            sub_1C10FB618(v65, v66 + v79);
            OUTLINED_FUNCTION_17_1(v66);
            if (!v55)
            {
              v90 = v111;
              sub_1C10FB618(v66, v111);
              OUTLINED_FUNCTION_17_1(v66 + v79);
              if (!v91)
              {
                v100 = v125;
                v101 = OUTLINED_FUNCTION_2_37();
                v102(v101);
                v103 = sub_1C10FB688();
                v106 = OUTLINED_FUNCTION_10_21(v90, v104, v105, v103);
                v107 = *(v100 + 8);
                v108 = OUTLINED_FUNCTION_8_27();
                v107(v108);
                OUTLINED_FUNCTION_5_24(v117);
                OUTLINED_FUNCTION_5_24(v65);
                (v107)(v90, v7);
                OUTLINED_FUNCTION_5_24(v66);
                a2 = v121;
                if (v106)
                {
LABEL_49:
                  v51 = 0;
                  goto LABEL_50;
                }

LABEL_44:
                result = __swift_getEnumTagSinglePayload(v54, 1, v7);
                v51 = 0;
                if (result == 1)
                {
                  goto LABEL_51;
                }

                goto LABEL_50;
              }

              OUTLINED_FUNCTION_6_22(v67);
              OUTLINED_FUNCTION_6_22(v65);
              (*(v125 + 8))(v90, v7);
LABEL_43:
              sub_1C0F9E21C(v66, &qword_1EBE93F38, &qword_1C12B6D70);
              a2 = v121;
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_6_22(v67);
            OUTLINED_FUNCTION_6_22(v65);
            OUTLINED_FUNCTION_17_1(v66 + v79);
            if (!v55)
            {
              goto LABEL_43;
            }

            v68 = v66;
LABEL_37:
            sub_1C0F9E21C(v68, &qword_1EBE93F40, &qword_1C12B6D78);
            v51 = 0;
            a2 = v121;
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_11_18(v34);
          OUTLINED_FUNCTION_11_18(v37);
          (*(v125 + 8))(v59, v7);
        }

        sub_1C0F9E21C(v58, &qword_1EBE93F38, &qword_1C12B6D70);
        goto LABEL_21;
      }

      sub_1C0F9E21C(v43, &qword_1EBE93F40, &qword_1C12B6D78);
      sub_1C0F9E21C(v46, &qword_1EBE93F40, &qword_1C12B6D78);
      (*(v125 + 8))(v40, v7);
    }

    sub_1C0F9E21C(v17, &qword_1EBE93F38, &qword_1C12B6D70);
    a2 = v121;
    v54 = v112;
    goto LABEL_12;
  }

  v51 = 0;
LABEL_51:
  *a2 = v51;
  return result;
}

uint64_t OneUpChromeToolbarPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10FB618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F40, &qword_1C12B6D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10FB688()
{
  result = qword_1EBE93F48;
  if (!qword_1EBE93F48)
  {
    sub_1C1263CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F48);
  }

  return result;
}

unint64_t sub_1C10FB6E4()
{
  result = qword_1EBE93F50;
  if (!qword_1EBE93F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeToolbarPosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1)
{

  return sub_1C0F9E21C(a1, v1, v2);
}

void static PhotosLegibilityGradient.strong(abovePlaceholder:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDE7A4C8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EDE7A4D0;
    goto LABEL_7;
  }

  if (qword_1EDE7A498 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = &qword_1EDE7A4A0;
LABEL_7:
    v5 = *v4;
    sub_1C1265B80();
    v7 = v6;
    v9 = v8;
    if (v2)
    {
      if (qword_1EDE7A480 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EDE7A488;
    }

    else
    {
      if (qword_1EDE7A4B0 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EDE7A4B8;
    }

    v11 = *v10;
    if (qword_1EDE7A4E0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBE93FA0;
    if (qword_1EBE93FA0 <= 1)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  *a2 = 0x3FE0000000000000;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
}

double PhotosLegibilityBlurAlternativeTextShadow.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C1265160();
  v4 = sub_1C12651E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FA8, &qword_1C12B6E80);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FB0, &qword_1C12B6E88) + 36);
  *v6 = v4;
  result = 8.0;
  *(v6 + 8) = xmmword_1C12B5C50;
  *(v6 + 24) = 0x4000000000000000;
  return result;
}

PhotosSwiftUICore::PhotosLegibilityGradient::Style_optional __swiftcall PhotosLegibilityGradient.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C10FBB2C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosLegibilityGradient.Style.rawValue.getter();
  *a1 = result;
  return result;
}

char *PhotosLegibilityGradient.init(startPoint:endPoint:strength:style:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = v7;
  return result;
}

uint64_t PhotosLegibilityGradient.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FB8, &qword_1C12B6E90);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-1] - v4;
  v6 = v1[1];
  v11 = *v1;
  v12[0] = v6;
  *(v12 + 9) = *(v1 + 25);
  sub_1C10FBC74(&v11);
  sub_1C10FCD64();
  sub_1C1264CE0();
  sub_1C0FD1A5C(v5, &qword_1EBE93FB8, &qword_1C12B6E90);
  v7 = sub_1C12631E0();
  v8 = sub_1C1264470();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FD0, &qword_1C12B6EA8);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_1C10FBC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94018, &qword_1C12B70A8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FC8, &qword_1C12B6EA0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  if (*(a1 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C12A3440;
    *(v8 + 32) = sub_1C1265170();
    sub_1C1265160();
    v9 = sub_1C12651E0();

    *(v8 + 40) = v9;
    MEMORY[0x1C68EF140](v8);
    sub_1C1262F60();
    v10 = v15;
    *v4 = *&v14[8];
    *(v4 + 1) = v10;
    *(v4 + 4) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8, &qword_1C12B6EA0, MEMORY[0x1E6981880]);
    sub_1C10CABA8();
    return sub_1C1263C20();
  }

  else
  {
    *v7 = sub_1C12659A0();
    v7[1] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94020, &qword_1C12B70B0);
    sub_1C10FBF44(v7 + *(v13 + 44));
    sub_1C10D1A1C(v7, v4, &qword_1EBE93FC8, &qword_1C12B6EA0);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8, &qword_1C12B6EA0, MEMORY[0x1E6981880]);
    sub_1C10CABA8();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v7, &qword_1EBE93FC8, &qword_1C12B6EA0);
  }
}

uint64_t sub_1C10FBF44@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008, &unk_1C12B7090);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v10 = swift_allocObject();
  v22[0] = xmmword_1C12A3440;
  *(v10 + 16) = xmmword_1C12A3440;
  *(v10 + 32) = sub_1C1265170();
  sub_1C1265160();
  v11 = sub_1C12651E0();

  *(v10 + 40) = v11;
  MEMORY[0x1C68EF140](v10);
  sub_1C1262F60();
  v12 = *(v4 + 44);
  v13 = *MEMORY[0x1E6981DE8];
  v14 = sub_1C1265A90();
  (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
  v15 = v22[2];
  *v9 = v22[1];
  *(v9 + 1) = v15;
  *(v9 + 4) = v23;
  v16 = swift_allocObject();
  *(v16 + 16) = v22[0];
  *(v16 + 32) = sub_1C1265170();
  sub_1C1265160();
  v17 = sub_1C12651E0();

  *(v16 + 40) = v17;
  MEMORY[0x1C68EF140](v16);
  sub_1C1262F60();
  sub_1C10D1A1C(v9, v6, &qword_1EBE94008, &unk_1C12B7090);
  v18 = v24;
  sub_1C10D1A1C(v6, a2, &qword_1EBE94008, &unk_1C12B7090);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94028, &qword_1C12B70B8) + 48);
  *v19 = v18;
  v20 = v25;
  *(v19 + 24) = v26;
  *(v19 + 8) = v20;

  sub_1C0FD1A5C(v9, &qword_1EBE94008, &unk_1C12B7090);

  return sub_1C0FD1A5C(v6, &qword_1EBE94008, &unk_1C12B7090);
}

uint64_t sub_1C10FC208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F68, &unk_1C12B7CF0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v10 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
  __swift_allocate_value_buffer(v3, qword_1EBE93F58);
  v4 = __swift_project_value_buffer(v3, qword_1EBE93F58);
  *v2 = sub_1C12659A0();
  v2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94000, &qword_1C12B7088);
  sub_1C10FC334(v2 + *(v6 + 44));
  sub_1C10B9120();
  sub_1C1264CE0();
  sub_1C0FD1A5C(v2, &qword_1EBE92F68, &unk_1C12B7CF0);
  v7 = sub_1C12631E0();
  result = sub_1C1264470();
  v9 = v4 + *(v3 + 36);
  *v9 = v7;
  *(v9 + 8) = result;
  return result;
}

uint64_t sub_1C10FC334@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008, &unk_1C12B7090);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v12 = swift_allocObject();
  v26 = xmmword_1C12A3440;
  *(v12 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  if (qword_1EBE8FCB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C12651E0();

  *(v12 + 32) = v13;
  *(v12 + 40) = sub_1C1265170();
  MEMORY[0x1C68EF140](v12);
  sub_1C1262F60();
  v27 = v1;
  v14 = *(v1 + 36);
  v15 = *MEMORY[0x1E6981DE8];
  v16 = sub_1C1265A90();
  v17 = *(*(v16 - 8) + 104);
  v17(&v11[v14], v15, v16);
  v18 = v31;
  *v11 = v30;
  *(v11 + 1) = v18;
  *(v11 + 4) = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  sub_1C1265160();
  if (qword_1EBE8FCB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C12651E0();

  *(v19 + 32) = v20;
  *(v19 + 40) = sub_1C1265170();
  if (qword_1EBE8FCC0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1C68EF140](v19);
  sub_1C1262F60();
  v17(&v8[*(v27 + 36)], v15, v16);
  v21 = v34;
  *v8 = v33;
  *(v8 + 1) = v21;
  *(v8 + 4) = v35;
  sub_1C10D1A1C(v11, v5, &qword_1EBE94008, &unk_1C12B7090);
  v22 = v28;
  sub_1C10D1A1C(v8, v28, &qword_1EBE94008, &unk_1C12B7090);
  v23 = v29;
  sub_1C10D1A1C(v5, v29, &qword_1EBE94008, &unk_1C12B7090);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94010, &qword_1C12B70A0);
  sub_1C10D1A1C(v22, v23 + *(v24 + 48), &qword_1EBE94008, &unk_1C12B7090);
  sub_1C0FD1A5C(v8, &qword_1EBE94008, &unk_1C12B7090);
  sub_1C0FD1A5C(v11, &qword_1EBE94008, &unk_1C12B7090);
  sub_1C0FD1A5C(v22, &qword_1EBE94008, &unk_1C12B7090);
  return sub_1C0FD1A5C(v5, &qword_1EBE94008, &unk_1C12B7090);
}

uint64_t static PhotosLegibilityGradient.blurAlternative.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
  v3 = __swift_project_value_buffer(v2, qword_1EBE93F58);
  return sub_1C10D1A1C(v3, a1, &qword_1EBE91CC0, &qword_1C12B6EB0);
}

double sub_1C10FC7B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F70 = v2;
  return result;
}

double sub_1C10FC834()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F78 = v2;
  return result;
}

double sub_1C10FC8B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F80 = v2;
  return result;
}

void sub_1C10FC934()
{
  __swift_allocate_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  v0 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  sub_1C10FC980(v0);
}

void sub_1C10FC980(uint64_t a2@<X8>)
{
  if (qword_1EDE7A4C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE7A4D0;
  sub_1C1265B80();
  v5 = v4;
  v7 = v6;
  if (qword_1EDE7A4B0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE7A4B8;
  if (qword_1EDE7A4E0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBE93FA0;
  if (qword_1EBE93FA0 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0x3FE0000000000000;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9;
  }
}

double static PhotosLegibilityGradient.strong.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDE812F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  result = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v4;
  return result;
}

void sub_1C10FCB00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1266450();

  qword_1EBE93FA0 = v1;
}

double sub_1C10FCB70()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4D0 = v2;
  return result;
}

double sub_1C10FCBEC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4B8 = v2;
  return result;
}

double sub_1C10FCC6C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4A0 = v2;
  return result;
}

double sub_1C10FCCE8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A488 = v2;
  return result;
}

unint64_t sub_1C10FCD64()
{
  result = qword_1EDE7B800;
  if (!qword_1EDE7B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FB8, &qword_1C12B6E90);
    sub_1C10FCDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B800);
  }

  return result;
}

unint64_t sub_1C10FCDE8()
{
  result = qword_1EDE7BBF0;
  if (!qword_1EDE7BBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FC0, &qword_1C12B6E98);
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8, &qword_1C12B6EA0, MEMORY[0x1E6981880]);
    sub_1C10CABA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBF0);
  }

  return result;
}

unint64_t sub_1C10FCEC0()
{
  result = qword_1EBE93FD8;
  if (!qword_1EBE93FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosLegibilityBlurAlternativeTextShadow(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C10FCFDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1C10FD018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosLegibilityGradient.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10FD14C()
{
  result = qword_1EBE93FE0;
  if (!qword_1EBE93FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FB0, &qword_1C12B6E88);
    sub_1C0FDB6D4(&qword_1EBE93FE8, &qword_1EBE93FA8, &qword_1C12B6E80, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FE0);
  }

  return result;
}

unint64_t sub_1C10FD204()
{
  result = qword_1EBE93FF0;
  if (!qword_1EBE93FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FF0);
  }

  return result;
}

unint64_t sub_1C10FD258()
{
  result = qword_1EDE771D0;
  if (!qword_1EDE771D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FD0, &qword_1C12B6EA8);
    sub_1C10FD310(&qword_1EDE7BE30, &qword_1EBE93FF8, &unk_1C12B7078, sub_1C10FCD64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771D0);
  }

  return result;
}

uint64_t sub_1C10FD310(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1C10FD37C();
    OUTLINED_FUNCTION_1_34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10FD37C()
{
  result = qword_1EDE7B8E0;
  if (!qword_1EDE7B8E0)
  {
    sub_1C1264360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8E0);
  }

  return result;
}

void sub_1C10FD400(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); v6 != v5; i += 2)
  {
    v8 = *i;
    v10[0] = *(i - 1);
    v10[1] = v8;

    v9 = (a1)(v10);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    ++v5;
  }
}

uint64_t sub_1C10FD4BC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void *sub_1C10FD53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C0FE4B60(*(a1 + 16), 0);
  sub_1C112FA6C();
  v4 = v3;
  sub_1C0FA812C(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1C10FD5CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030, &qword_1C12B7120);
  swift_initStackObject();
  v4 = sub_1C11090C0(a1, a2);
  v5 = v4[6];
  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038, &qword_1C12B7128);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = 0;

  return v7;
}

uint64_t sub_1C10FD6A8(uint64_t a1)
{
  result = sub_1C1109584(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C11095C4(result, v3, 0, a1);
  }
}

uint64_t sub_1C10FD70C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1265F50();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10FD754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  v6 = v5;
  if (v4)
  {
    sub_1C1109AF8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void PhotosSelection.firstIdentifier.getter(uint64_t a2@<X8>)
{
  sub_1C10FEB40();
  v4 = sub_1C10FD6A8(v3);

  if (v4)
  {
    v10 = MEMORY[0x1E69E5FE0];
    *&v9 = v4;
    sub_1C0FD09FC(&v9, a2);
  }

  else
  {
    PhotosSelection.orderedIdentifiers.getter();
    if (v5[2])
    {
      v7 = v5[4];
      v6 = v5[5];

      v8 = MEMORY[0x1E69E6158];
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v8 = 0;
      *(a2 + 16) = 0;
    }

    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 24) = v8;
  }
}

void PhotosSelection.set(item:)(uint64_t a1)
{
  sub_1C0FDB0A8(a1, v6);
  PhotosSelection.isItemSelected(_:)();
  v3 = v2;
  sub_1C0FD1A5C(v6, &qword_1EBE91420, &unk_1C12B70C0);
  if ((v3 & 1) == 0 || (PhotosSelection.selectedItemsSet.getter(v6), v4 = *(v6[1] + 16), , , v4 >= 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8, &unk_1C12A4560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A8B40;
    sub_1C0FDB0A8(a1, inited + 32);
    PhotosSelection.set(items:)(inited);
    swift_setDeallocating();
    sub_1C1102090();
  }
}

void PhotosSelection.selectionIdentifiers.getter(uint64_t a1)
{
  PhotosSelection.selectedItemsSet.getter(v19);
  v1 = v19[1];
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C1102370(0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030, &qword_1C12B7120);
  swift_initStackObject();
  v2 = OUTLINED_FUNCTION_40();
  v3 = sub_1C11090C0(v2, v1);
  v4 = v3[6];
  v5 = v3[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038, &qword_1C12B7128);
  inited = swift_initStackObject();
  inited[2] = v4;
  inited[3] = v5;
  inited[4] = 0;

  while (1)
  {
    v7 = sub_1C1109178();
    if (!v7)
    {
      break;
    }

    v8 = v7;
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item), *(v7 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24));
    v9 = OUTLINED_FUNCTION_26_8();
    v11 = v10(v9);
    v13 = v12;

    v15 = *(v18 + 16);
    v14 = *(v18 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = OUTLINED_FUNCTION_18_20(v14);
      sub_1C1102370(v17, v15 + 1, 1);
    }

    *(v18 + 16) = v15 + 1;
    v16 = v18 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  swift_setDeallocating();
  sub_1C11091C4();
  sub_1C10FE154(v18);
}

uint64_t sub_1C10FE0C0(uint64_t a1)
{
  v2 = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1C1102FF4(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_1C10FE154(uint64_t a1)
{
  v2 = 0;
  v7[2] = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    ++v2;
    v6 = *(i - 1);
    v5 = *i;

    sub_1C11030CC(v7, v6, v5);
  }

  __break(1u);
}

void sub_1C10FE214()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v2 = sub_1C1262DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = *(v1 + 16);
  v10 = sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC0]);
  v18[1] = MEMORY[0x1C68EFBB0](v9, v2, v10);
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v18[0] = v1;
    v16 = v1 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v5, v16, v2);
      sub_1C110320C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  else
  {
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10FE3C0(uint64_t a1)
{
  v8 = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1C0FF4B88(v4, v6);
      sub_1C11034D4(v7, v6);
      sub_1C0FD1A08(v7);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_40();
  }

  return v1;
}

void PhotosSelection.isItemSelected(_:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  sub_1C10D1A1C(v2, &v38, &qword_1EBE91420, &unk_1C12B70C0);
  if (!v39)
  {
    sub_1C0FD1A5C(&v38, &qword_1EBE91420, &unk_1C12B70C0);
LABEL_13:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  sub_1C0F9DDE4(&v38, v40);
  v3 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v4 = OUTLINED_FUNCTION_40();
  v6._countAndFlagsBits = v5(v4, v3);
  v7 = PhotosSelection.isIdentifierSelected(_:)(v6);

  v8 = v41;
  v9 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v10._countAndFlagsBits = (*(v9 + 16))(v8, v9);
  v11 = PhotosSelection.isPreselectedIdentifierSelected(_:)(v10);

  if (!v11)
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    goto LABEL_13;
  }

  sub_1C0FDB0A8(v40, &v38);
  v12 = type metadata accessor for PhotosConcreteSelectableItem();
  v13 = objc_allocWithZone(v12);
  sub_1C0FDB0A8(&v38, v13 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v37.receiver = v13;
  v37.super_class = v12;
  v14 = objc_msgSendSuper2(&v37, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  PhotosSelection.selectedItemsSet.getter(&v38);
  v15 = v38;
  v36[0] = v14;
  MEMORY[0x1EEE9AC00](v16);
  v31 = v15;
  v32 = v36;
  sub_1C11078D4(sub_1C11096F0, &v30, *(&v15 + 1));
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v33 = 0;
  v34 = v11;
  v35 = v7;
  swift_getKeyPath();
  *&v38 = v1;
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v19, v20, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_38_6();
  sub_1C1261F30();

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_38_6();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16(v1 + 16, &v38);
  sub_1C1107720(v14, v21);
  swift_endAccess();
  OUTLINED_FUNCTION_32_7();
  sub_1C1261F40();

  __swift_project_boxed_opaque_existential_1(v40, v41);
  OUTLINED_FUNCTION_41_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C1266950();
  if (swift_dynamicCast())
  {
    v23 = v38;
    swift_getKeyPath();
    *&v38 = v1;
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F30();

    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F50();

    OUTLINED_FUNCTION_16_16(v1 + 72, &v38);
    sub_1C1102FF4(v36, v23);
    swift_endAccess();
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F40();
  }

  swift_getKeyPath();
  *&v38 = v1;
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F30();

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8(v1 + 64, v36);
  *(v1 + 64) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F40();

  PhotosSelection.preselectedIdentifiers.modify();
  v26 = v24;
  if (!*v25)
  {
    v24(&v38, 0);
    goto LABEL_11;
  }

  v27 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v32 = v40;
  sub_1C11068D4(sub_1C1109714, &v31);
  v29 = *(*v27 + 16);
  if (v29 >= v28)
  {
    sub_1C1106628(v28, v29);
    v26(&v38, 0);
    goto LABEL_11;
  }

  __break(1u);
}

Swift::Void __swiftcall PhotosSelection.deselectEverything()()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v1, v2, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  v5 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8((v0 + 2), &v5);
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v3;

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F30();

  v4 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8((v0 + 9), &v4);
  v0[9] = MEMORY[0x1E69E7CD0];

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  sub_1C10FFF78();
}

double sub_1C10FEB40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 72, v11);

  return result;
}

double PhotosSelection.selectedItemsSet.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v5 = sub_1C1109B5C(v3, v4, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v1 + 16, v13);
  v14 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v14;

  return result;
}

void sub_1C10FEC78(void *a1@<X8>)
{
  PhotosSelection.selectedItemsSet.getter(v3);
  v2 = v3[1];
  *a1 = v3[0];
  a1[1] = v2;
}

double sub_1C10FECB4(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;

  return PhotosSelection.selectedItemsSet.setter(v3);
}

double PhotosSelection.selectedItemsSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_28_8(v1 + 16, v11);

  v5 = sub_1C110920C(v4, v3);

  if (v5)
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[2] = v1;
    v10[3] = v2;
    v10[4] = v3;
    OUTLINED_FUNCTION_48_3(v8, v9, v10);
  }

  return result;
}

BOOL sub_1C10FEDF8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v3 = sub_1C0FEACC4(a1, a2);
  }

  return (v3 & 1) == 0;
}

void sub_1C10FEE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_1C10FEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v3, v4, &protocol conformance descriptor for PhotosSelection);
  return sub_1C1261F20();
}

void PhotosSelection.selectedItemsSet.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_13_19(KeyPath);

  OUTLINED_FUNCTION_16_16(v0 + 16, v2);
  OUTLINED_FUNCTION_18_4();
}

uint64_t PhotosSelection.isSelectionBandActive.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 32, v11);
  return *(v0 + 32);
}

uint64_t sub_1C10FF0CC@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosSelection.isSelectionBandActive.getter();
  *a1 = result & 1;
  return result;
}

void PhotosSelection.isSelectionBandActive.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_28_8(v1 + 32, v8);
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_48_3(v5, v6, v7);
  }
}

uint64_t sub_1C10FF1C8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

void PhotosSelection.isSelectionBandActive.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_13_19(KeyPath);

  OUTLINED_FUNCTION_16_16(v0 + 32, v2);
  OUTLINED_FUNCTION_18_4();
}

double PhotosSelection.preselectedIdentifiers.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 40, v11);

  return result;
}

double PhotosSelection.preselectedIdentifiers.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8(v1 + 40, v9);
  if (sub_1C10FEDF8(*(v1 + 40), a1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_48_3(v5, v6, v7);
  }

  else
  {
    *(v1 + 40) = a1;
  }

  return result;
}

void PhotosSelection.preselectedIdentifiers.modify()
{
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_27_8();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_23_8(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_45();
  v7 = sub_1C1109B5C(v5, v6, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_11_19(v7);

  *v2 = v0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_13_19(KeyPath);

  OUTLINED_FUNCTION_16_16(v0 + 40, v2);
  OUTLINED_FUNCTION_18_4();
}

void sub_1C10FF580(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v3);
}

uint64_t PhotosSelection.delegate.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2, &protocol conformance descriptor for PhotosSelection);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 48, v11);
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C10FF69C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSelection.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10FF6C8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return PhotosSelection.delegate.setter(v3, v2);
}

uint64_t PhotosSelection.delegate.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C10FEEB8(KeyPath, sub_1C1109774, &v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C10FF788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a3;
  return swift_unknownObjectWeakAssign();
}

void PhotosSelection.delegate.modify()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[5] = v0;
  swift_getKeyPath();
  v3[6] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  *v3 = v0;
  OUTLINED_FUNCTION_0_45();
  v3[7] = sub_1C1109B5C(v4, v5, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  *v3 = v0;
  swift_getKeyPath();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16(v0 + 48, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v0 + 56);
  v3[3] = Strong;
  v3[4] = v7;
  OUTLINED_FUNCTION_18_4();
}

void sub_1C10FF908(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  free(v3);
}

double sub_1C10FF9C8()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  swift_beginAccess();

  return result;
}

double sub_1C10FFAAC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1C0FEACC4(*(v1 + 64), a1))
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v6[3] = a1;
    sub_1C10FEEB8(v5, sub_1C1109DBC, v6);
  }

  return result;
}

void sub_1C10FFB84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

double sub_1C10FFC18(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8(v1 + 72, v9);
  if (sub_1C1109BE4(*(v1 + 72), a1))
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_48_3(v6, v7, v8);
  }

  return result;
}

void sub_1C10FFCD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

uint64_t sub_1C10FFD40()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  return *(v0 + 80);
}

void sub_1C10FFDE0(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1C10FEEB8(v4, sub_1C1109BD4, v5);
  }
}

uint64_t PhotosSelection.__allocating_init(with:allowDeselectionOfPreselectedItems:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(a1, v2);
  return v4;
}

uint64_t PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(void *a1, char a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1C1106C2C(MEMORY[0x1E69E7CC0]);
  *(v2 + 24) = v6;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CD0];
  *(v2 + 64) = v5;
  *(v2 + 72) = v7;
  sub_1C1261F60();
  if (a1)
  {
    sub_1C10FE154(a1);
    a1 = sub_1C10FD53C(v8);
  }

  *(v2 + 40) = a1;
  *(v2 + 80) = a2 & 1;
  return v2;
}

uint64_t sub_1C10FFF78()
{
  swift_getKeyPath();
  sub_1C1109B5C(&qword_1EDE7E7A8, type metadata accessor for PhotosSelection, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1C1261F40();

  result = PhotosSelection.delegate.getter();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C11000E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      sub_1C1102FF4(&v5, v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1C1100148(uint64_t a1)
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
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1C0FF4B88(*(a1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_1C11034D4(v12, v10);
    sub_1C0FD1A08(v12);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1C110024C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1C0FF4B88(v2, v4);
      sub_1C11034D4(v5, v4);
      sub_1C0FD1A08(v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C11002E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = *v3++;
        result = sub_1C1106100(v4);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void PhotosSelection.toggle(item:clearPreviousSelection:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C0FDB0A8(v4, v33);
  PhotosSelection.isItemSelected(_:)();
  v7 = v6;
  sub_1C0FD1A5C(v33, &qword_1EBE91420, &unk_1C12B70C0);
  if (v7 & 1) == 0 || (sub_1C10FFD40())
  {
    sub_1C0FDB0A8(v5, v33);
    v8 = type metadata accessor for PhotosConcreteSelectableItem();
    v9 = objc_allocWithZone(v8);
    sub_1C0FDB0A8(v33, v9 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
    v32.receiver = v9;
    v32.super_class = v8;
    v10 = objc_msgSendSuper2(&v32, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    if (v7)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v11, v12, &protocol conformance descriptor for PhotosSelection);
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F30();

      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16(v1 + 16, v33);
      v14 = sub_1C1101FB4(v13, v10);
      swift_endAccess();
    }

    else
    {
      if (v3)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_25_6();
        OUTLINED_FUNCTION_0_45();
        sub_1C1109B5C(v15, v16, &protocol conformance descriptor for PhotosSelection);
        OUTLINED_FUNCTION_2_38();
        sub_1C1261F30();

        OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_2_38();
        sub_1C1261F50();

        OUTLINED_FUNCTION_28_8(v1 + 64, &v30);
        v17 = MEMORY[0x1E69E7CC0];
        *(v1 + 64) = MEMORY[0x1E69E7CC0];

        v18 = OUTLINED_FUNCTION_36_5();
        OUTLINED_FUNCTION_35_4(v18);

        PhotosSelection.preselectedIdentifiers.modify();
        v21 = v20;
        if (*v19)
        {
          *v19 = v17;
        }

        v21(v33, 0);
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v22, v23, &protocol conformance descriptor for PhotosSelection);
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F30();

      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_2_38();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16(v1 + 16, v33);
      sub_1C1107720(v10, v24);
      swift_endAccess();
    }

    v25 = OUTLINED_FUNCTION_36_5();
    OUTLINED_FUNCTION_35_4(v25);

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3();
    MEMORY[0x1EEE9AC00](v26);
    sub_1C1266950();
    if (swift_dynamicCast())
    {
      v27 = v33[0];
      swift_getKeyPath();
      v33[0] = v1;
      OUTLINED_FUNCTION_0_45();
      sub_1C1109B5C(v28, v29, &protocol conformance descriptor for PhotosSelection);
      OUTLINED_FUNCTION_7_24();
      sub_1C1261F30();

      v33[0] = v1;
      swift_getKeyPath();
      OUTLINED_FUNCTION_7_24();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16(v1 + 72, v33);
      if (v7)
      {
        sub_1C1106100(v27);
      }

      else
      {
        sub_1C1102FF4(&v31, v27);
      }

      swift_endAccess();
      v33[0] = v1;
      swift_getKeyPath();
      sub_1C1261F40();
    }

    sub_1C10FFF78();
  }

  OUTLINED_FUNCTION_22_0();
}

Swift::Bool __swiftcall PhotosSelection.isIdentifierSelected(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  PhotosSelection.orderedIdentifiers.getter();
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_1C0FA25C8(sub_1C1109794, v5, v3);

  return object & 1;
}

Swift::Bool __swiftcall PhotosSelection.isPreselectedIdentifierSelected(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  PhotosSelection.preselectedIdentifiers.getter();
  if (v3)
  {
    v4 = v3;
    v8[0] = countAndFlagsBits;
    v8[1] = object;
    MEMORY[0x1EEE9AC00](v3);
    v7[2] = v8;
    v5 = sub_1C0FA25C8(sub_1C1109E90, v7, v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1C1100BD8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  if (v2 == (*(v5 + 16))(v4, v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1266D50();
  }

  return v8 & 1;
}

double PhotosSelection.orderedIdentifiers.getter()
{
  v1 = v0;
  sub_1C10FF9C8();
  v3 = *(v2 + 16);

  if (!v3)
  {
    PhotosSelection.selectedItemsSet.getter(&v20);
    v4 = *(v21 + 16);

    if (v4)
    {
      PhotosSelection.selectedItemsSet.getter(&v20);
      sub_1C10FD5CC(v20, v21);
      while (1)
      {
        sub_1C1266BD0();
        v5 = v20;
        if (!v20)
        {
          break;
        }

        __swift_project_boxed_opaque_existential_1(&v20[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], *&v20[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24]);
        v6 = OUTLINED_FUNCTION_26_8();
        v8 = v7(v6);
        v10 = v9;
        swift_getKeyPath();
        v20 = v1;
        OUTLINED_FUNCTION_0_45();
        sub_1C1109B5C(&qword_1EDE7E7A8, v11, &protocol conformance descriptor for PhotosSelection);
        OUTLINED_FUNCTION_41_4();
        sub_1C1261F30();

        v20 = v1;
        swift_getKeyPath();
        OUTLINED_FUNCTION_41_4();
        sub_1C1261F50();

        OUTLINED_FUNCTION_16_16(v1 + 64, &v20);
        v12 = *(v1 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 64) = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_8_12();
          sub_1C0FA26D0();
          v12 = v17;
          *(v1 + 64) = v17;
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_18_20(v14);
          sub_1C0FA26D0();
          v12 = v18;
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 16 * v15;
        *(v16 + 32) = v8;
        *(v16 + 40) = v10;
        *(v1 + 64) = v12;
        swift_endAccess();
        v20 = v1;
        swift_getKeyPath();
        sub_1C1261F40();
      }
    }
  }

  return sub_1C10FF9C8();
}

void PhotosSelection.constrainToType(of:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  PhotosSelection.selectedItemsSet.getter(v27);
  v26[2] = v2;
  sub_1C1101318(sub_1C11097B4, v26, v27[0], v27[1]);
  v4 = v3;
  swift_getKeyPath();
  v27[0] = v0;
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v5, v6, &protocol conformance descriptor for PhotosSelection);
  sub_1C1261F30();

  v27[0] = v0;
  swift_getKeyPath();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16(v0 + 16, v27);
  sub_1C1107FD0(v4, *(v0 + 16), *(v0 + 24));
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  swift_endAccess();
  v27[0] = v0;
  swift_getKeyPath();
  sub_1C1261F40();

  v9 = 0;
  v25 = sub_1C0FF7688();
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v25 == v9)
    {

      swift_getKeyPath();
      v27[0] = v0;
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F30();

      v27[0] = v0;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F50();

      OUTLINED_FUNCTION_16_16(v0 + 72, v27);
      sub_1C11002E4(v24);
      swift_endAccess();

      v27[0] = v0;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_11();
      sub_1C1261F40();

      sub_1C10FFF78();
      OUTLINED_FUNCTION_22_0();
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C68F02D0](v9, v4);
    }

    else
    {
      if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v10 = *(v4 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], *&v10[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24]);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_3();
    MEMORY[0x1EEE9AC00](v13);
    sub_1C1266950();

    OUTLINED_FUNCTION_41_4();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27[0] = 0;
    }

    v14 = v27[0];
    ++v9;
    if (v27[0])
    {
      v15 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_8_12();
        sub_1C0FE417C(v18, v19, v20, v24);
        v15 = v21;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 >= v16 >> 1)
      {
        v22 = OUTLINED_FUNCTION_18_20(v16);
        sub_1C0FE417C(v22, v17 + 1, 1, v15);
        v15 = v23;
      }

      *(v15 + 16) = v17 + 1;
      v24 = v15;
      *(v15 + 8 * v17 + 32) = v14;
      v9 = v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

BOOL sub_1C1101278(void *a1, void *a2)
{
  sub_1C0FDB0A8(*a1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return DynamicType != swift_getDynamicType();
}

void sub_1C1101318(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[15] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030, &qword_1C12B7120);
  swift_initStackObject();
  v8 = sub_1C11090C0(a3, a4);
  v9 = v8[6];
  v10 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038, &qword_1C12B7128);
  inited = swift_initStackObject();
  inited[2] = v9;
  inited[3] = v10;
  inited[4] = 0;

  while (1)
  {
    v12 = sub_1C1109178();
    if (!v12)
    {
      swift_setDeallocating();
      sub_1C11091C4();
      return;
    }

    v13 = v12;
    v15[0] = v12;
    v14 = a1(v15);
    if (v4)
    {
      break;
    }

    if (v14)
    {
      sub_1C1266A10();
      sub_1C1266A60();
      sub_1C1266A70();
      sub_1C1266A30();
    }

    else
    {
    }
  }

  swift_setDeallocating();
  sub_1C11091C4();
}

void PhotosSelection.selectedItemsWithType<A>(of:)()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = v2;
  v11[3] = v0;
  v11[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v6 = *(*(v1 - 8) + 16);
  v6(boxed_opaque_existential_1, v3, v1);
  PhotosSelection.isItemSelected(_:)();
  v8 = v7;
  sub_1C0FD1A5C(v11, &qword_1EBE91420, &unk_1C12B70C0);
  if (v8)
  {
    PhotosSelection.selectedItemsSet.getter(v11);
    MEMORY[0x1EEE9AC00](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94040, &qword_1C12B71D0);
    sub_1C0FDB6D4(&qword_1EBE94048, &qword_1EBE94040, &qword_1C12B71D0, &protocol conformance descriptor for PhotosOrderedSet<A>);
    sub_1C1265F80();
  }

  else
  {
    sub_1C1102024(v1, v1);
    swift_allocObject();
    sub_1C12660D0();
    v6(v10, v3, v1);
    sub_1C12661A0();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1101674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C0FDB0A8(*a1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0, &unk_1C12A8C60);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t PhotosSelection.currentSelectionCount.getter()
{
  sub_1C10FF9C8();
  v1 = *(v0 + 16);

  PhotosSelection.preselectedIdentifiers.getter();
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = v1 + v3;
  if (__OFADD__(v1, v3))
  {
    __break(1u);
  }

  return result;
}

char *PhotosSelection.deinit()
{

  sub_1C0FF4BE4(v0 + 48);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosSelection___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSelection.__deallocating_deinit()
{
  PhotosSelection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1101838()
{
  type metadata accessor for PhotosSelection(0);
  v0 = swift_allocObject();
  result = PhotosSelection.init(with:allowDeselectionOfPreselectedItems:)(0, 1);
  qword_1EDE82780 = v0;
  return result;
}

double sub_1C1101880@<D0>(void *a1@<X8>)
{
  if (qword_1EDE82778 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE82780;

  return result;
}

double sub_1C11018EC()
{
  qword_1EDE792F8 = 0;
  result = 0.0;
  xmmword_1EDE792D8 = 0u;
  unk_1EDE792E8 = 0u;
  return result;
}

uint64_t sub_1C1101904@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F710 != -1)
  {
    swift_once();
  }

  return sub_1C10D1A1C(&xmmword_1EDE792D8, a1, &qword_1EBE94050, &qword_1C12B71D8);
}

uint64_t EnvironmentValues.photosSelection.getter()
{
  sub_1C11097F0();
  sub_1C12637F0();
  return v1;
}

uint64_t EnvironmentValues.photosSelection.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11097F0();
  sub_1C12637F0();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1101A48(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_51_3((a1 + 1), &type metadata for PhotosSelectionKey);
  }

  else
  {
    OUTLINED_FUNCTION_51_3((a1 + 1), &type metadata for PhotosSelectionKey);
  }
}

uint64_t (*EnvironmentValues.photosSelectionIgnored.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1109844();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C1101B74;
}

uint64_t sub_1C1101BA0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

uint64_t (*EnvironmentValues.photosSelectModeEnabled.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1109898();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C1101CB8;
}

uint64_t EnvironmentValues.photosSelectableLayoutItemStore.getter()
{
  sub_1C11098EC();

  return sub_1C12637F0();
}

uint64_t EnvironmentValues.photosSelectableLayoutItemStore.setter(uint64_t a1)
{
  sub_1C10D1A1C(a1, v3, &qword_1EBE94050, &qword_1C12B71D8);
  sub_1C11098EC();
  sub_1C1263800();
  return sub_1C0FD1A5C(a1, &qword_1EBE94050, &qword_1C12B71D8);
}

void (*EnvironmentValues.photosSelectableLayoutItemStore.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1C11098EC();
  sub_1C12637F0();
  return sub_1C1101E70;
}

void sub_1C1101E70(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_45_5();
    sub_1C10D1A1C(v2 + 40, v2 + 80, &qword_1EBE94050, &qword_1C12B71D8);
    OUTLINED_FUNCTION_51_3(v2 + 80, &type metadata for PhotosSelectableLayoutItemStoreKey);
    sub_1C0FD1A5C(v2 + 40, &qword_1EBE94050, &qword_1C12B71D8);
  }

  else
  {
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_51_3(v2 + 40, &type metadata for PhotosSelectableLayoutItemStoreKey);
  }

  sub_1C0FD1A5C(v2, &qword_1EBE94050, &qword_1C12B71D8);

  free(v2);
}

double View.photosSelectionIgnored(ignored:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1C1264A30();

  return result;
}

uint64_t sub_1C1101FB4(__n128 a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v12 = a2;
  v11[2] = v4;
  v11[3] = v3;
  v11[4] = &v12;
  v5 = sub_1C11078D4(sub_1C1109EAC, v11, v3);
  v7 = 0;
  if ((v8 & 1) == 0)
  {
    sub_1C1108898(v5, v6);
    return v9;
  }

  return v7;
}

uint64_t sub_1C1102024(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8]();
  }
}

uint64_t sub_1C1102090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0, &unk_1C12A8C60);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t type metadata accessor for PhotosSelection(uint64_t a1)
{
  result = qword_1EDE7E798;
  if (!qword_1EDE7E798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C110213C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C110215C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C11021B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C11021DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

char *sub_1C1102200(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_35(a3, result);
  }

  return result;
}

void sub_1C110223C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_3(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_8_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_8_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1C110230C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C12A3E50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_1C1102370(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C11024B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1102390(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C11025B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11023B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C11026F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C11023D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C11027F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11023F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1102410(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102430(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102B70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102450(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102470(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102D84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1102490(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1102E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C11024B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90800, &unk_1C12A45B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C11025B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94078, &unk_1C12B74B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93558, &qword_1C12B3CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C11026F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94098, &qword_1C12B7518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C11027F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F8, &unk_1C12B74D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93568, &unk_1C12B3D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90798, &qword_1C12A4538);
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

void *sub_1C1102A38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A0, &unk_1C12A4540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A8, &qword_1C12BC710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94058, &qword_1C12B7478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1C1102C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90868, &qword_1C12B7480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1102D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94068, &qword_1C12B7498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C1102E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90860, &unk_1C12A4750);
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

uint64_t sub_1C1102F9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1C1266BB0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

BOOL sub_1C1102FF4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1C1266E80();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      sub_1C11044E8(a2, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v13;
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      break;
    }

    v7 = v9 + 1;
  }

  a2 = *(*(v6 + 48) + 8 * v9);
LABEL_7:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1C11030CC(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  sub_1C1266E90();
  sub_1C1265EF0();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v11 = v10 & v4;
    v12 = (v5 << (v10 & v4)) & *(v9 + 56 + (((v10 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v9 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1C1266D50() & 1) != 0)
    {

      v15 = (*(v9 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v10 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1C11045EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1C110320C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1C1262DD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC0]);
  v27 = a2;
  v9 = sub_1C1265D20();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1C1104754(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_1C1109B5C(&qword_1EDE7BFD0, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC8]);
    v15 = sub_1C1265DE0();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1C11034D4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  sub_1C12668B0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v9 = v8 & v3;
    v10 = (v4 << (v8 & v3)) & *(v7 + 56 + (((v8 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C0FF4B88(a2, v17);
      v16 = *v5;
      sub_1C11049E0(v17, v9, isUniquelyReferenced_nonNull_native);
      *v5 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    sub_1C0FF4B88(*(v7 + 48) + 40 * v9, v17);
    v11 = MEMORY[0x1C68F0200](v17, a2);
    sub_1C0FD1A08(v17);
    if (v11)
    {
      break;
    }

    v8 = v9 + 1;
  }

  sub_1C0FD1A08(a2);
  sub_1C0FF4B88(*(v7 + 48) + 40 * v9, a1);
  return v10 == 0;
}

BOOL sub_1C1103608(uint64_t a1, __int128 *a2)
{
  v5 = v2;
  v7 = a2[1];
  v41 = *a2;
  v42 = v7;
  v43 = *(a2 + 8);
  v8 = *v2;
  v37 = v41;
  v38 = v7;
  v39 = *(&v7 + 1);
  v40 = v43;
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)(&v34);
  sub_1C1266EE0();
  OUTLINED_FUNCTION_12_14();
  while (1)
  {
    v10 = v9 & v3;
    v11 = (v4 << (v9 & v3)) & *(v8 + 56 + (((v9 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v41;
      v35 = v42;
      v36 = v43;
      v33 = *v5;
      sub_1C1109A9C(&v34, &v37);
      sub_1C1104B40(&v34, v10, isUniquelyReferenced_nonNull_native);
      *v5 = v33;
      v20 = v42;
      v21 = BYTE1(v42);
      v22 = WORD1(v42);
      v23 = *(&v42 + 1);
      v24 = v43;
      *a1 = v41;
      *(a1 + 16) = v20;
      *(a1 + 17) = v21;
      *(a1 + 18) = v22;
      *(a1 + 24) = v23;
      *(a1 + 32) = v24;
      return v11 == 0;
    }

    *&v34 = OUTLINED_FUNCTION_20_16(*(v8 + 48) + 40 * v10);
    *(&v34 + 1) = v12;
    LOBYTE(v35) = v13;
    BYTE1(v35) = v14;
    WORD1(v35) = v15;
    *(&v35 + 1) = v16;
    v36 = v17;
    sub_1C1109A94(v34, v12);
    v18 = static PhotosPrefetchable.Image.== infix(_:_:)(&v34, &v41);
    sub_1C100DC0C(v34, *(&v34 + 1));
    if (v18)
    {
      break;
    }

    v9 = v10 + 1;
  }

  sub_1C100DC0C(v41, *(&v41 + 1));
  v25 = OUTLINED_FUNCTION_20_16(*(v8 + 48) + 40 * v10);
  *a1 = v25;
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  *(a1 + 17) = v28;
  *(a1 + 18) = v29;
  *(a1 + 24) = v30;
  *(a1 + 32) = v31;
  sub_1C1109A94(v25, v26);
  return v11 == 0;
}

void sub_1C11037F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090, &qword_1C12B7510);
  v4 = sub_1C1266900();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v26 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1C110230C(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1C1266E80();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C1103A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080, &unk_1C12B74C0);
  v4 = sub_1C1266900();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C110230C(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C1266E90();
    sub_1C1265EF0();
    v19 = sub_1C1266EE0();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C1103C78(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C1262DD0();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088, &qword_1C12B74E0);
  v6 = sub_1C1266900();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v35 = v3 + 32;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1C110230C(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC0]);
    v20 = sub_1C1265D20();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C1103FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060, &unk_1C12B7488);
  v4 = sub_1C1266900();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C110230C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v28 = *v16;
    v29 = *(v16 + 16);
    v30 = *(v16 + 32);
    v17 = sub_1C12668B0();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v5 + 48) + 40 * v21;
    *v26 = v28;
    *(v26 + 16) = v29;
    *(v26 + 32) = v30;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C110422C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070, &unk_1C12B74A0);
  v4 = sub_1C1266900();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v34 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      sub_1C110230C(0, (v33 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 17);
    v21 = *(v16 + 18);
    v22 = *(v16 + 24);
    LODWORD(v16) = *(v16 + 32);
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v37 = v21;
    v38 = v20;
    v43 = v20;
    v44 = v21;
    v36 = v22;
    v45 = v22;
    v35 = v16;
    v46 = v16;
    sub_1C1266E90();
    PhotosPrefetchable.Image.hash(into:)(v39);
    v23 = sub_1C1266EE0();
    v24 = -1 << *(v5 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v5 + 48) + 40 * v27;
    *v32 = v17;
    *(v32 + 8) = v18;
    *(v32 + 16) = v19;
    *(v32 + 17) = v38;
    *(v32 + 18) = v37;
    *(v32 + 24) = v36;
    *(v32 + 32) = v35;
    ++*(v5 + 16);
    v3 = v34;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v12 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C11044E8(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C11037F8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C1105504(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_1C1266E80();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1C1104D40();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1C11045EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C1103A1C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C11056F0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1C1266E90();
      sub_1C1265EF0();
      v16 = sub_1C1266EE0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1C1266D50() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1C1104E80();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1C1104754(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C1262DD0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C1103C78(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C1105924(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC0]);
      v14 = sub_1C1265D20();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C1109B5C(&qword_1EDE7BFD0, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC8]);
        v16 = sub_1C1265DE0();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1C1104FD8();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_1C11049E0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C1103FD0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1C1105C3C(v7 + 1);
LABEL_10:
      v15 = *v3;
      v16 = sub_1C12668B0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1C0FF4B88(*(v15 + 48) + 40 * a2, v19);
        v18 = MEMORY[0x1C68F0200](v19, result);
        sub_1C0FD1A08(v19);
        if (v18)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_1C110520C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(result + 16);
  *v10 = *result;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(result + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }
}

void sub_1C1104B40(__int128 *result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result[1];
  v41 = *result;
  v42 = v6;
  v43 = *(result + 8);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C110422C(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1C1105E64(v7 + 1);
LABEL_10:
      v19 = *v3;
      v37 = v41;
      v38 = v42;
      v39 = *(&v42 + 1);
      v40 = v43;
      sub_1C1266E90();
      PhotosPrefetchable.Image.hash(into:)(&v30);
      v20 = sub_1C1266EE0();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = *(v19 + 48) + 40 * a2;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 18);
        v28 = *(v22 + 24);
        LODWORD(v22) = *(v22 + 32);
        v30 = v23;
        v31 = v24;
        v32 = v25;
        v33 = v26;
        v34 = v27;
        v35 = v28;
        v36 = v22;
        sub_1C1109A94(v23, v24);
        v29 = static PhotosPrefetchable.Image.== infix(_:_:)(&v30, &v41);
        sub_1C100DC0C(v30, v31);
        if (v29)
        {
          goto LABEL_15;
        }

        v20 = a2 + 1;
      }
    }

    sub_1C1105380();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = v42;
  v12 = BYTE1(v42);
  v13 = WORD1(v42);
  v14 = *(&v42 + 1);
  v15 = v43;
  *v10 = v41;
  *(v10 + 16) = v11;
  *(v10 + 17) = v12;
  *(v10 + 18) = v13;
  *(v10 + 24) = v14;
  *(v10 + 32) = v15;
  v16 = *(v9 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    sub_1C1266D90();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v18;
  }
}

void sub_1C1104D40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090, &qword_1C12B7510);
  v2 = *v0;
  v3 = sub_1C12668F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1104E80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080, &unk_1C12B74C0);
  v2 = *v0;
  v3 = sub_1C12668F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1104FD8()
{
  v1 = v0;
  v2 = sub_1C1262DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088, &qword_1C12B74E0);
  v6 = *v0;
  v7 = sub_1C12668F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }
}

void sub_1C110520C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060, &unk_1C12B7488);
  v2 = *v0;
  v3 = sub_1C12668F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        sub_1C0FF4B88(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1105380()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070, &unk_1C12B74A0);
  v2 = *v0;
  v3 = sub_1C12668F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        v24 = *(v18 + 24);
        LODWORD(v18) = *(v18 + 32);
        v25 = *(v4 + 48) + 8 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 17) = v22;
        *(v25 + 18) = v23;
        *(v25 + 24) = v24;
        *(v25 + 32) = v18;
        sub_1C1109A94(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1105504(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94090, &qword_1C12B7510);
  v4 = sub_1C1266900();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1C1266E80();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

void sub_1C11056F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94080, &unk_1C12B74C0);
  v4 = sub_1C1266900();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1C1266E90();

        sub_1C1265EF0();
        v18 = sub_1C1266EE0();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C1105924(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C1262DD0();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94088, &qword_1C12B74E0);
  v7 = sub_1C1266900();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8], MEMORY[0x1E697BFC0]);
        v20 = sub_1C1265D20();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1C1105C3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94060, &unk_1C12B7488);
  v4 = sub_1C1266900();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        sub_1C0FF4B88(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v27);
        v15 = sub_1C12668B0();
        v16 = -1 << *(v5 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v24 = *(v5 + 48) + 40 * v19;
        v25 = v27[0];
        v26 = v27[1];
        *(v24 + 32) = v28;
        *v24 = v25;
        *(v24 + 16) = v26;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C1105E64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94070, &unk_1C12B74A0);
  v4 = sub_1C1266900();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 17);
        v21 = *(v16 + 18);
        v22 = *(v16 + 24);
        LODWORD(v16) = *(v16 + 32);
        v39 = v17;
        v40 = v18;
        v41 = v19;
        v36 = v21;
        v37 = v20;
        v42 = v20;
        v43 = v21;
        v35 = v22;
        v44 = v22;
        v34 = v16;
        v45 = v16;
        sub_1C1266E90();
        sub_1C1109A94(v17, v18);
        PhotosPrefetchable.Image.hash(into:)(v38);
        v23 = sub_1C1266EE0();
        v24 = -1 << *(v5 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v5 + 48) + 40 * v27;
        *v32 = v17;
        *(v32 + 8) = v18;
        *(v32 + 16) = v19;
        *(v32 + 17) = v37;
        *(v32 + 18) = v36;
        *(v32 + 24) = v35;
        *(v32 + 32) = v34;
        ++*(v5 + 16);
        v3 = v33;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_1C1106100(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C1266E80();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1104D40();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1C11062F8(v7);
  *v2 = v12;
  return v8;
}

uint64_t sub_1C11061D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C1266E90();
  OUTLINED_FUNCTION_15_7();
  sub_1C1265EF0();
  v6 = sub_1C1266EE0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1C1266D50() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1104E80();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1C1106470(v8);
  *v2 = v15;
  return v13;
}

void sub_1C11062F8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1266890();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1C1266E80() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

void sub_1C1106470(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1266890();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C1266E90();

        sub_1C1265EF0();
        v10 = sub_1C1266EE0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

uint64_t sub_1C1106628(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B21C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1C1106718()
{
  OUTLINED_FUNCTION_19_4();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_37_4();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B234(v4 - v8, 1);
  v10 = *v1;
  v11 = *v1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_15:
    *v1 = v10;
    OUTLINED_FUNCTION_18_4();
    return;
  }

  v12 = *(v10 + 16);
  v13 = v12 - v0;
  if (__OFSUB__(v12, v0))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 40 * v0);
  if (v7 != v0 || v14 + 40 * v13 <= v11 + 40 * v7)
  {
    memmove((v11 + 40 * v7), v14, 40 * v13);
    v12 = *(v10 + 16);
  }

  v6 = __OFADD__(v12, v9);
  v16 = v12 - v8;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_1C1106810(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_37_4();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v1 - v3;
  if (__OFSUB__(v1, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v1;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C116B24C(v4 - v8, 1);
  v10 = *v2;
  if (!v9)
  {
LABEL_15:
    *v2 = v10;
    return;
  }

  v11 = *(v10 + 16);
  v12 = v11 - v1;
  if (__OFSUB__(v11, v1))
  {
    goto LABEL_21;
  }

  v13 = (v10 + 32 + 16 * v1);
  v14 = (v10 + 32 + 16 * v7);
  if (v7 != v1 || &v13[16 * v12] <= v14)
  {
    memmove(v14, v13, 16 * v12);
    v11 = *(v10 + 16);
  }

  v6 = __OFADD__(v11, v9);
  v16 = v11 + v9;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_1C11068D4(uint64_t (*a1)(void *, __n128), uint64_t a2)
{
  v4 = a2;
  v6 = *v2;
  sub_1C10FD400(a1, a2, *v2);
  if (!v3)
  {
    v29 = v7;
    if ((v8 & 1) == 0)
    {
      v27 = a1;
      v25 = v2;
      v9 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
LABEL_24:
        __break(1u);
      }

      else
      {
        for (i = 16 * v29; ; i += 16)
        {
          v11 = *(v6 + 16);
          if (v9 == v11)
          {
            break;
          }

          if (v9 >= v11)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v12 = v6 + i;
          v13 = *(v6 + i + 56);
          v28[0] = *(v6 + i + 48);
          v28[1] = v13;

          v14 = v4;
          v15 = v27(v28);

          if ((v15 & 1) == 0)
          {
            v16 = v29;
            if (v9 != v29)
            {
              if ((v29 & 0x8000000000000000) != 0)
              {
                goto LABEL_20;
              }

              v17 = *(v6 + 16);
              if (v29 >= v17)
              {
                goto LABEL_21;
              }

              if (v9 >= v17)
              {
                goto LABEL_22;
              }

              v18 = (v6 + 32 + 16 * v29);
              v19 = v18[1];
              v26 = *v18;
              v20 = *(v12 + 48);
              v21 = *(v12 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C12604E4();
                v6 = v24;
              }

              v22 = v6 + 16 * v29;
              *(v22 + 32) = v20;
              *(v22 + 40) = v21;

              if (v9 >= *(v6 + 16))
              {
                goto LABEL_23;
              }

              v23 = v6 + i;
              *(v23 + 48) = v26;
              *(v23 + 56) = v19;

              *v25 = v6;
              v16 = v29;
            }

            v29 = v16 + 1;
          }

          v4 = v14;
          ++v9;
        }
      }
    }
  }
}

uint64_t sub_1C1106A94(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v6 = *v2;
  result = sub_1C10FD4BC(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 40 * result + 72; ; i += 40)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1C0FDB0A8(v6 + i, v17);
      v12 = (a1)(v17);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v17);
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          result = sub_1C0FDB0A8(v6 + 32 + 40 * v4, v17);
          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          sub_1C0FDB0A8(v6 + i, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C126050C();
            v6 = v15;
          }

          v14 = v6 + 40 * v4;
          __swift_destroy_boxed_opaque_existential_0Tm((v14 + 32));
          result = sub_1C0F9DDE4(v16, v14 + 32);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_0Tm((v6 + i));
          result = sub_1C0F9DDE4(v17, v6 + i);
          *v2 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C1106C2C(unint64_t a1)
{
  v5 = sub_1C0FD233C();
  v6 = sub_1C1106F28(&v32, a1, 0, 1, v5);
  v7 = sub_1C0FF7688();
  v8 = v32;
  if (v32 == v7)
  {
    sub_1C0FBA048(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_1C1102F9C(0, a1);
  sub_1C1102F9C(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for PhotosConcreteSelectableItem();

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      sub_1C1266970();
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = sub_1C1266BC0();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_1C1102F9C(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_1C112F790(v12, v13, i, v14);
  }

  type metadata accessor for PhotosConcreteSelectableItem();

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    sub_1C1266970();
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = sub_1C1266BC0();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_1C1107094(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_1C1106F28(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1C0FF7688();
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x1C68EBEE0](v10);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x1C68EBEF0]();
    sub_1C1107D90(&v18, a2, (v16 + 16), v16 + 32);
    *a1 = v18;
  }

  else
  {
    if (sub_1C0FF7688() >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v15 = sub_1C11093E0(a2, sub_1C1109D40);
      }

      else
      {
        v15 = sub_1C11075BC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v15 = sub_1C0FF7688();
    }

    v16 = 0;
    *a1 = v15;
  }

  return v16;
}

void sub_1C1107034(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {

    return;
  }

  __break(1u);
}

void sub_1C1107094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = a4 >> 1;
  v33 = a4 >> 1;
LABEL_2:
  while (a3 != v8)
  {
    if (a3 >= v8)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v9 = *(a2 + 8 * a3++);
    v11 = *v5;
    v10 = v5[1];
    v12 = (v10 + 32);
    v13 = *(v10 + 16);
    if (!*v5)
    {
      v17 = a2;
      v18 = v9;
      while (v13)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v19 = *v12++;
        v20 = v19;
        v21 = sub_1C12666B0();

        --v13;
        if (v21)
        {

          a2 = v17;
          v8 = v33;
          goto LABEL_2;
        }
      }

      a2 = v17;
      v8 = v33;
      goto LABEL_13;
    }

    v14 = v9;

    sub_1C1107C74(v14, v12, v13, (v11 + 16), v11 + 32);
    v16 = v15;

    if (v16)
    {
LABEL_13:
      v22 = v9;
      sub_1C1266A10();
      sub_1C1266A60();
      sub_1C1266A70();
      sub_1C1266A30();
      v23 = v5[1];
      v24 = *(v23 + 16);
      if (v11)
      {
        swift_beginAccess();
        if (MEMORY[0x1C68EBEB0](*(v11 + 16) & 0x3FLL) >= v24)
        {
          isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
          v31 = *v5;
          if ((isUniquelyReferenced_native & 1) == 0)
          {
            if (!v31)
            {
              goto LABEL_35;
            }

            v32 = sub_1C1262590();

            *v5 = v32;
            v31 = v32;
          }

          if (!v31)
          {
            goto LABEL_34;
          }

          sub_1C1262520();
          goto LABEL_32;
        }

        v25 = *(v11 + 24) & 0x3FLL;
        if (v24 <= 0xF && v25 == 0)
        {

          *v5 = 0;
        }

        else
        {
LABEL_23:
          v27 = MEMORY[0x1C68EBEE0](v24);
          if (v25 <= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v25;
          }

          v29 = sub_1C1107A2C(v23, v28, 0, v25);

          *v5 = v29;
        }
      }

      else
      {
        if (v24 > 0xF)
        {
          v25 = 0;
          goto LABEL_23;
        }

LABEL_32:
      }
    }

    else
    {
    }
  }
}

void sub_1C1107308(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C0FF7688();
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1;
  v33 = v4;
  v34 = a1 + 32;
LABEL_2:
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x1C68F02D0](v5, v32);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_38;
      }

      v8 = *(v34 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v12 = *v2;
    v11 = v2[1];
    v13 = (v11 + 32);
    v14 = *(v11 + 16);
    if (*v2)
    {

      sub_1C1107C74(v9, v13, v14, (v12 + 16), v12 + 32);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v7;
      v18 = v6;
      while (v14)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v19 = *v13++;
        v20 = v19;
        v21 = sub_1C12666B0();

        --v14;
        if (v21)
        {

          v6 = v18;
          v7 = v17;
          v4 = v33;
          goto LABEL_2;
        }
      }

      v6 = v18;
      v7 = v17;
      v4 = v33;
    }

    v9 = v9;
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    sub_1C1266A30();
    v22 = v2[1];
    v23 = *(v22 + 16);
    if (v12)
    {
      swift_beginAccess();
      if (MEMORY[0x1C68EBEB0](*(v12 + 16) & 0x3FLL) >= v23)
      {
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v30 = *v2;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v30)
          {
            goto LABEL_40;
          }

          v31 = sub_1C1262590();

          *v2 = v31;
          v30 = v31;
        }

        if (!v30)
        {
          goto LABEL_39;
        }

        sub_1C1262520();
LABEL_34:
      }

      else
      {
        v24 = *(v12 + 24) & 0x3FLL;
        if (v23 > 0xF || v24 != 0)
        {
          goto LABEL_25;
        }

        *v2 = 0;
      }
    }

    else
    {
      if (v23 <= 0xF)
      {
        goto LABEL_34;
      }

      v24 = 0;
LABEL_25:
      v26 = MEMORY[0x1C68EBEE0](v23);
      if (v24 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_1C1107A2C(v22, v27, 0, v24);

      *v2 = v28;
    }
  }
}

uint64_t sub_1C11075BC(uint64_t a1, uint64_t a2)
{
  v7 = sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
  result = sub_1C1266A50();
  v5 = 0;
  while (1)
  {
    if (a2 == v5)
    {
      goto LABEL_8;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * v5);
    if (sub_1C11076A4(v6, v7))
    {

      a2 = v5;
LABEL_8:

      return a2;
    }

    ++v5;
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    result = sub_1C1266A30();
  }

  __break(1u);
  return result;
}

BOOL sub_1C11076A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    type metadata accessor for PhotosConcreteSelectableItem();
    v6 = *v3++;
    v7 = v6;
    v8 = sub_1C12666B0();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1C1107720(void *a1, __n128 a2)
{
  v5 = *v2;
  v4 = v2[1];
  v11 = a1;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = &v11;
  sub_1C11078D4(sub_1C1109EAC, v10, v4);
  v8 = v7;
  if (v7)
  {
    sub_1C11077B4(a1, v6);
  }

  return v8 & 1;
}

void sub_1C11077B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  sub_1C1266A10();
  sub_1C1266A60();
  sub_1C1266A70();
  sub_1C1266A30();
  v6 = *v2;
  v7 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1C68EBEB0](*(v6 + 16) & 0x3FLL) < v7)
    {
      v8 = *(v6 + 24) & 0x3FLL;
      if (v7 <= 0xF && v8 == 0)
      {

        *v3 = 0;
        return;
      }

      goto LABEL_11;
    }

    sub_1C1107924();
    if (*v3)
    {
      sub_1C110797C((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v7 > 0xF)
  {
    v8 = 0;
LABEL_11:
    v10 = MEMORY[0x1C68EBEE0](v7);
    sub_1C11079E4(v10, v8);
  }
}

void *sub_1C11078D4(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_1C1107924()
{
  if (*v0 && (swift_isUniquelyReferenced_native() & 1) == 0)
  {
    if (*v0)
    {
      v1 = sub_1C1262590();

      *v0 = v1;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C11079E4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_1C1107A2C(v2[1], a2, 0, v3);

  *v2 = v4;
}

uint64_t sub_1C1107A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1C68EBEE0](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x1C68EBEF0]();
    sub_1C1107AA4(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_1C1107AE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v9 + 8 * v6);
        result = sub_1C12666A0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1C1262500();

        if (v8)
        {
          while (1)
          {
            sub_1C1262560();
          }
        }

        result = sub_1C1262550();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1107BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    type metadata accessor for PhotosConcreteSelectableItem();
    v6 = *(a2 + 8 * i);
    v7 = sub_1C12666B0();

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C1107C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_1C12666A0();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C1262530();
    v8 = v12;
    if ((v13 & 1) == 0)
    {
      do
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v9 = *(a2 + 8 * v8);
        v10 = sub_1C12666B0();

        if (v10)
        {
          break;
        }

        sub_1C1262560();
        v8 = sub_1C1262540();
      }

      while ((v11 & 1) == 0);
    }

    return v8;
  }

  return result;
}

uint64_t sub_1C1107D90(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v5 = sub_1C110944C(a2, sub_1C1109DA0);
  }

  else
  {
    v5 = sub_1C1107E34((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v6;
  return v5 & 1;
}

unint64_t sub_1C1107E10(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1107E34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *(v5 + 8 * v6);
    result = sub_1C12666A0();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v16 = v6 + 1;
    sub_1C1262500();

    while (1)
    {
      v8 = sub_1C1262540();
      if (v9)
      {
        break;
      }

      v10 = *(v5 + 8 * v8);
      v11 = *(v5 + 8 * v6);
      type metadata accessor for PhotosConcreteSelectableItem();
      v12 = v10;
      v13 = v11;
      v14 = sub_1C12666B0();

      if (v14)
      {
        return 0;
      }

      sub_1C1262560();
    }

    result = sub_1C1262550();
    ++v6;
    if (v16 != v15)
    {
      continue;
    }

    return 1;
  }
}

void sub_1C1107FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = 0;
    v10 = 0;
    MEMORY[0x1EEE9AC00]((v3 + 63) >> 6);
    sub_1C12625C0();
    v4 = 0;
  }

  else
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62) || (v5 = sub_1C1266BB0()) == 0 || (v6 = v5, v4 = sub_1C0FE5EE8(), sub_1C116E150(v4 + 32, v6, MEMORY[0x1E69E7CC0]), v8 = v7, , v8 == v6))
    {

      return;
    }

    __break(1u);
  }

  __break(1u);

  sub_1C1109E48(v9, v10);
  __break(1u);
}

void sub_1C1108184(int8x8_t **a1, int8x8_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1C12625F0();
  v9 = sub_1C0FF7688();
  v10 = 0;
  v29 = a4 & 0xC000000000000001;
  v23 = a4;
  v24 = a3;
  v27 = a4 + 32;
  v28 = a4 & 0xFFFFFFFFFFFFFF8;
  v11 = a3 + 32;
  v25 = v8;
  while (1)
  {
    if (v10 == v9)
    {
      v20 = *a1;
      v21 = a1[1];
      v22 = sub_1C0FD233C();

      sub_1C11083DC(v20, v21, v25, 0, v22, a2, v24);
      return;
    }

    if (v29)
    {
      v12 = MEMORY[0x1C68F02D0](v10, v23);
    }

    else
    {
      if (v10 >= *(v28 + 16))
      {
        goto LABEL_21;
      }

      v12 = *(v27 + 8 * v10);
    }

    v4 = v12;
    if (__OFADD__(v10++, 1))
    {
      break;
    }

    if (a2)
    {

      v14 = sub_1C1107C74(v4, v11, v8, &a2[2], &a2[4]);
      v16 = v15;

      if ((v16 & 1) == 0 && (v14 & 0x8000000000000000) == 0)
      {
LABEL_10:
        if (sub_1C12625D0())
        {
          if (v25 == 1)
          {
            goto LABEL_22;
          }

          --v25;
        }
      }
    }

    else
    {
      for (i = 0; v8 != i; ++i)
      {
        type metadata accessor for PhotosConcreteSelectableItem();
        v18 = *(v11 + 8 * i);
        v19 = sub_1C12666B0();

        if (v19)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
}

double sub_1C1108380(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v8, a1);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1C1109E48(v6, v7);
  }

  return result;
}

void sub_1C11083DC(int8x8_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x8_t *a6, uint64_t a7)
{
  if (a4)
  {
    if (a1 && a2)
    {
      a3 = 0;
      v11 = 8 * a2;
      v12 = a1;
      while (1)
      {
        v13 = vcnt_s8(*v12);
        v13.i16[0] = vaddlv_u8(v13);
        v14 = __OFADD__(a3, v13.u32[0]);
        a3 += v13.u32[0];
        if (v14)
        {
          break;
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_11:
    sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
    sub_1C110875C(a5, 0);

    return;
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 != *(a7 + 16))
  {
    v16 = a3 + a5;
    if (!__OFADD__(a3, a5))
    {
      v26 = sub_1C0FBA048(MEMORY[0x1E69E7CC0]);
      sub_1C110875C(v16, 0);
      v17 = 0;
LABEL_20:
      while (1)
      {
        for (i = v17; ; i = 0)
        {
          v19 = sub_1C12625E0();
          if (v20)
          {

            return;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (v19 >= *(a7 + 16))
          {
            goto LABEL_47;
          }

          v21 = *(a7 + 32 + 8 * v19);
          sub_1C1266A10();
          sub_1C1266A60();
          sub_1C1266A70();
          sub_1C1266A30();
          v22 = *(v26 + 16);
          if (i)
          {
            break;
          }

          if (v22 > 0xF)
          {
            v17 = 0;
LABEL_32:
            v23 = MEMORY[0x1C68EBEE0](v22);
            if (v17 <= v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = v17;
            }

            v17 = sub_1C1107A2C(v26, v24, 0, v17);
LABEL_36:

            goto LABEL_20;
          }
        }

        swift_beginAccess();
        if (MEMORY[0x1C68EBEB0](*(i + 16) & 0x3FLL) < v22)
        {
          v17 = *(i + 24) & 0x3FLL;
          if (v22 > 0xF || v17)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          if (!v17)
          {
            goto LABEL_54;
          }

          v25 = sub_1C1262590();

          v17 = v25;
        }

        if (!v17)
        {
          goto LABEL_53;
        }

        sub_1C12666A0();
        if (__OFSUB__(1 << *(v17 + 16), 1))
        {
          goto LABEL_52;
        }

        if (sub_1C1262500())
        {
          while (1)
          {
            sub_1C1262560();
          }
        }

        sub_1C1262550();
      }
    }

    goto LABEL_49;
  }

  if (a6)
  {
    swift_beginAccess();
    v15 = MEMORY[0x1C68EBEB0](*&a6[2] & 0x3FLL);
  }

  else
  {
    v15 = 15;
  }

  if (!__OFSUB__(v15, a3))
  {
    if (v15 - a3 >= a5)
    {
      return;
    }

    if (!__OFADD__(a3, a5))
    {
      sub_1C110875C(a3 + a5, 0);
      return;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1C110875C(uint64_t a1, char a2)
{
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  sub_1C1266A50();
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1C68EBEE0](a1);
  v9 = v8;
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
LABEL_18:
    sub_1C11079E4(v11, v10);
    return;
  }

  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = MEMORY[0x1C68EBEE0](*(v3[1] + 16));
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    goto LABEL_18;
  }

  sub_1C1107924();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  swift_beginAccess();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }
}

void sub_1C1108898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_1C1108A3C(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x1C68EBEC0]())
  {
LABEL_12:
    sub_1C1108A3C(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x1C68EBEE0](v12);
      sub_1C11079E4(v13, v11);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_1C1107924();
  v9 = *v3;
  if (*v3)
  {

    sub_1C1108AC0(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_1C1108C98(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_1C1108A3C(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C1108A3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1C116E8FC(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *(v3 + 16) = v6;
    sub_1C1266A30();
    return v9;
  }

  return result;
}

void sub_1C1108AC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = sub_1C1262500();
  sub_1C1262560();
  if (v19)
  {
    v7 = sub_1C1262510();
    v8 = a1;
    while (1)
    {
      v9 = sub_1C1262540();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(a4 + 8);
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_24;
      }

      v12 = *(v11 + 8 * v9 + 32);
      v13 = sub_1C12666A0();

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      v15 = (v14 - 1) & v13;
      if (v8 >= v7)
      {
        if (v15 >= v7 && v8 >= v15)
        {
LABEL_18:
          sub_1C1262540();
          v8 = a1;
          sub_1C1262520();
        }
      }

      else if (v15 >= v7 || v8 >= v15)
      {
        goto LABEL_18;
      }

      sub_1C1262560();
    }
  }

  sub_1C1262520();
}

void sub_1C1108C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= a1)
    {
      v14 = a2;
      v15 = __OFSUB__(v9, a2);
      v16 = v9 - a2;
      if (v15)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v16 >= MEMORY[0x1C68EBEB0](*a4 & 0x3F) / 3)
      {
        sub_1C1262500();
        v28 = sub_1C1262540();
        if ((v29 & 1) == 0 && v28 >= v14)
        {
          if (__OFSUB__(v28, v5))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_1C1262550();
        }

        sub_1C1262560();
        return;
      }

      sub_1C1107034(v14, a3);
      v18 = v17;
      v20 = v19;
      v22 = v21 >> 1;
      while (v20 != v22)
      {
        if (v20 >= v22)
        {
          goto LABEL_51;
        }

        v23 = *(v18 + 8 * v20);
        sub_1C12666A0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_1C1262500())
        {
          while (1)
          {
            v24 = sub_1C1262540();
            if ((v25 & 1) == 0 && v24 == v14)
            {
              break;
            }

            sub_1C1262560();
          }
        }

        if (__OFSUB__(v14, v5))
        {
          goto LABEL_53;
        }

        sub_1C1262550();

        v15 = __OFADD__(v14++, 1);
        if (v15)
        {
          goto LABEL_54;
        }

        ++v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x1C68EBEB0](*a4 & 0x3F) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v11 = *(a3 + 32 + 8 * i);
          sub_1C12666A0();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_1C1262500())
          {
            while (1)
            {
              v12 = sub_1C1262540();
              if ((v13 & 1) == 0 && v12 == i)
              {
                break;
              }

              sub_1C1262560();
            }
          }

          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_1C1262550();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_1C1262500();
      v26 = sub_1C1262540();
      if ((v27 & 1) == 0 && v26 < a1)
      {
        if (__OFADD__(v26, v5))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_1C1262550();
      }

      sub_1C1262560();
LABEL_40:
      v30 = a4[1];
      if (__OFSUB__(v30 >> 6, v5))
      {
        goto LABEL_59;
      }

      v31 = 1 << *a4;
      v15 = __OFSUB__(v31, 1);
      v32 = v31 - 1;
      if (v15)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v33 = (v32 & (((v30 >> 6) - v5) >> 63)) + (v30 >> 6) - v5;
      if (v33 < v32)
      {
        v32 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v33 - v32) << 6);
    }
  }
}

void *sub_1C11090C0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940A0, &unk_1C12B7520);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_1C0FDB6D4(&qword_1EBE940A8, &qword_1EBE940A0, &unk_1C12B7520, MEMORY[0x1E69E7C68]);
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v7;
  v2[5] = v5;
  return v2;
}

unint64_t sub_1C1109178()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_1C1107E10(*(v0 + 32), v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v2 + 1;
  }

  return result;
}

uint64_t sub_1C11091C4()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C110920C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      type metadata accessor for PhotosConcreteSelectableItem();
      do
      {
        v3 += 8;
        v4 += 8;
        v5 = sub_1C12666B0();
        if ((v5 & 1) == 0)
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
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C110929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_8_27();
    v7 = MEMORY[0x1C68F02D0](v9);
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1109308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_27();
    v5 = MEMORY[0x1C68F02D0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1109374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_28(a1, a2, a3);
  sub_1C0FF768C();
  if (v4)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_27();
    v5 = MEMORY[0x1C68F02D0](v7);
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_17_3();
}

void *sub_1C11093E0(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128))
{
  v4 = sub_1C11094C8(a1);
  v5 = v4[2];

  result = (a2)(&v7, v4 + 4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1C110944C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128))
{
  v4 = sub_1C11094C8(a1);
  v5 = v4[2];

  (a2)(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_1C11094C8(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1C112F86C(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1C11095C4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C1109640(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1C1107C74(v8, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = sub_1C1107BE8(*a4, a1, a2);
    v12 = v15;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

unint64_t sub_1C11097F0()
{
  result = qword_1EDE82768;
  if (!qword_1EDE82768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82768);
  }

  return result;
}

unint64_t sub_1C1109844()
{
  result = qword_1EDE811A0[0];
  if (!qword_1EDE811A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE811A0);
  }

  return result;
}

unint64_t sub_1C1109898()
{
  result = qword_1EDE80DB8[0];
  if (!qword_1EDE80DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80DB8);
  }

  return result;
}

unint64_t sub_1C11098EC()
{
  result = qword_1EDE7F708;
  if (!qword_1EDE7F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F708);
  }

  return result;
}

uint64_t sub_1C1109948(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C1109AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1109B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1109BE4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    result = sub_1C1266E80();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1109D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C11075BC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C1109D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1C1107E34(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
    *(a5 + 8) = v8;
  }

  return result;
}

void sub_1C1109DD8(int8x8_t **a1@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C1108184(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = v7;
    a5[1] = v8;
  }
}

double sub_1C1109E48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C1261F30();
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_1C1261F40();
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v1 - 160) = v0;

  return swift_getKeyPath();
}

id OUTLINED_FUNCTION_34_6(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, objc_super a10)
{
  a10.receiver = v11;
  a10.super_class = v10;

  return objc_msgSendSuper2(&a10, (v12 + 2936), a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_36_5()
{
  *(v1 - 120) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1, uint64_t a2)
{

  return sub_1C1263800();
}

uint64_t DeterminateCircularProgressStyleView.init(strokeColor:lineWidth:minimumFractionDisplayed:isPaused:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void *DeterminateCircularProgressStyleView.makeBody(configuration:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = COERCE_DOUBLE(sub_1C1264350());
  v7 = *&v4;
  if ((v8 & 1) == 0)
  {
    v7 = *&v4;
    if (v4 < v6)
    {
      v7 = *&v6;
    }
  }

  v9 = sub_1C12659A0();
  v11 = v10;
  v12.n128_u64[0] = v7;
  sub_1C110A198(v3, v5, __src, v12);
  memcpy(__dst, __src, 0xC1uLL);
  memcpy(v21, __src, 0xC1uLL);
  sub_1C10D1A1C(__dst, &v19, &qword_1EBE940B0, &qword_1C12B7530);
  sub_1C0FD1A5C(v21, &qword_1EBE940B0, &qword_1C12B7530);
  memcpy(__src, __dst, 0xC1uLL);
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940B8, &qword_1C12B7568) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940C0, &qword_1C12B7570) + 28);
  v16 = *MEMORY[0x1E697E7D0];
  sub_1C1263150();
  OUTLINED_FUNCTION_3();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = KeyPath;
  *a1 = v9;
  a1[1] = v11;
  return memcpy(a1 + 2, __src, 0xC1uLL);
}

uint64_t sub_1C110A198@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>, __n128 a6@<Q2>)
{
  v6 = a6.n128_u64[0];
  sub_1C1262B10();
  v9 = v59;
  v10 = HIDWORD(v59);
  v28 = DWORD2(v59);
  v11 = v60;
  v12 = v61;
  v27 = sub_1C1265150();
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v14 = [objc_opt_self() systemGray5Color];
    a1 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  else
  {
  }

  sub_1C1262B10();
  v15 = sub_1C12659A0();
  v17 = v16;
  sub_1C1265B90();
  v19 = v18;
  v21 = v20;
  v22 = sub_1C1265A10();
  v23 = sub_1C1265A10();
  v40[0] = v59;
  v24 = a2 & 1;
  v40[1] = v60;
  *&v41 = v61;
  *(&v41 + 1) = KeyPath;
  v42 = v27;
  *&__src[0] = 0;
  *&v36[48] = v27;
  *v36 = v59;
  *&v36[16] = v60;
  *&v36[32] = v41;
  *(&__src[0] + 1) = v6;
  __src[1] = v37;
  __src[2] = v38;
  *&__src[3] = v39;
  *(&__src[3] + 1) = a1;
  LOWORD(__src[4]) = 256;
  *(&__src[4] + 1) = v15;
  *&__src[5] = v17;
  *(&__src[5] + 1) = 0x4012D97C7F3321D2;
  *&__src[6] = v19;
  *(&__src[6] + 1) = v21;
  *&__src[7] = v22;
  *(&__src[7] + 1) = v6;
  *&__src[8] = v23;
  BYTE8(__src[8]) = v24;
  memcpy(&v36[56], __src, 0x89uLL);
  memcpy(a3, v36, 0xC1uLL);
  v44[0] = 0;
  v44[1] = v6;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  v48 = a1;
  v49 = 256;
  v50 = v15;
  v51 = v17;
  v52 = 0x4012D97C7F3321D2;
  v53 = v19;
  v54 = v21;
  v55 = v22;
  v56 = v6;
  v57 = v23;
  v58 = v24;
  sub_1C10D1A1C(v40, &v29, &qword_1EBE940E8, &qword_1C12B7630);
  sub_1C10D1A1C(__src, &v29, &qword_1EBE940F0, &qword_1C12B7638);
  sub_1C0FD1A5C(v44, &qword_1EBE940F0, &qword_1C12B7638);
  v29 = v9;
  v30 = v28;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = KeyPath;
  v35 = v27;
  return sub_1C0FD1A5C(&v29, &qword_1EBE940E8, &qword_1C12B7630);
}

double static ProgressViewStyle<>.determinateCircularProgressStyleView(strokeColor:lineWidth:minimumFractionDisplayed:isPaused:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;

  return result;
}

unint64_t sub_1C110A4B4()
{
  result = qword_1EBE940C8;
  if (!qword_1EBE940C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE940B8, &qword_1C12B7568);
    sub_1C0FDB6D4(&qword_1EBE940D0, &qword_1EBE940D8, &qword_1C12B75F8, MEMORY[0x1E6981880]);
    sub_1C0FDB6D4(&qword_1EBE940E0, &qword_1EBE940C0, &qword_1C12B7570, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE940C8);
  }

  return result;
}

__n128 PhotosOverlayPreviewControl.init(bottomInset:fractionFloating:viewportSize:safeAreaInsets:onTap:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  sub_1C1265410();
  *(a9 + 144) = v27;
  *(a9 + 152) = v28;
  *(a9 + 160) = v29;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a11;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  v23 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v23;
  result = *(a12 + 32);
  *(a9 + 112) = result;
  *(a9 + 128) = a13;
  *(a9 + 136) = a14;
  return result;
}

uint64_t PhotosOverlayPreviewControl.body.getter@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v30 = sub_1C1265170();
  sub_1C0FDB76C();
  v3 = sub_1C1265270();
  v4 = sub_1C12659A0();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE940F8, &qword_1C12B7648) + 36);
  sub_1C110A85C(__dst, v7);
  v8 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94100, &qword_1C12B7650) + 36)];
  *v8 = v4;
  v8[1] = v6;
  *a1 = v3;
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_0_46(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94108, &qword_1C12B7658) + 36));
  *v17 = sub_1C0FA84D0;
  v17[1] = 0;
  v17[2] = sub_1C110B404;
  v17[3] = v3;
  sub_1C110B40C(__dst, &v30);
  v18 = sub_1C12631E0();
  LOBYTE(v4) = sub_1C1264470();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94110, &qword_1C12B7660) + 36);
  *v19 = v18;
  v19[8] = v4;
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_46(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94118, &qword_1C12B7668) + 36));
  *v28 = sub_1C110B444;
  v28[1] = 0;
  v28[2] = sub_1C110B504;
  v28[3] = v18;
  return sub_1C110B40C(__dst, &v30);
}

uint64_t sub_1C110A85C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1C1263CE0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1262A60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94160, &qword_1C12B77D0);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v21 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94168, &qword_1C12B77D8);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94170, &qword_1C12B77E0);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - v13;
  *v14 = sub_1C12638E0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94178, &qword_1C12B77E8);
  sub_1C110ADA8(a1, &v14[*(v15 + 44)]);
  sub_1C1263F10();
  sub_1C1262A30();
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0xA8uLL);
  sub_1C110B40C(a1, v27);
  sub_1C110BB80(&qword_1EDE77670, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1C110BB80(&qword_1EDE77678, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  sub_1C12656C0();

  (*(v5 + 8))(v7, v4);
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0xA8uLL);
  sub_1C110B40C(a1, v27);
  sub_1C0FDB6D4(&qword_1EDE76FD0, &qword_1EBE94160, &qword_1C12B77D0, MEMORY[0x1E697E8D0]);
  v18 = v23;
  sub_1C12656B0();

  (*(v8 + 8))(v10, v18);
  sub_1C1262A90();
  sub_1C0FDB6D4(&qword_1EBE94180, &qword_1EBE94170, &qword_1C12B77E0, MEMORY[0x1E69817F8]);
  sub_1C0FDB6D4(&qword_1EDE774F8, &qword_1EBE94168, &qword_1C12B77D8, MEMORY[0x1E697E238]);
  v19 = v24;
  sub_1C1264F30();
  (*(v25 + 8))(v12, v19);
  return sub_1C0F9E21C(v14, &qword_1EBE94170, &qword_1C12B77E0);
}