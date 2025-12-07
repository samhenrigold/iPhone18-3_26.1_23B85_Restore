void sub_1E3FF3BD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v61 = v2;
  v65 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v68 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v56 = v6 - v5;
  v64 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v63 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v60 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v59 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v58 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v57 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v62 = v26;
  sub_1E32822E0(v27, v28, v29);

  v51 = sub_1E4202C44();
  v50 = v30;
  v49 = v31 & 1;
  v32 = v1;
  v33 = (*(*v1 + 96))();
  type metadata accessor for CanonicalInfoCard(0);
  v34 = v16;
  sub_1E3746E10(v16);
  sub_1E374709C(v11);
  v35 = MEMORY[0x1E6981148];
  v36 = MEMORY[0x1E6981138];
  v37 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v56);
  v38 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v33, v34, v11, v37, v56, v38 & 1, v35, v36, v62);

  v54 = *(v68 + 8);
  v54(v56, v65);
  v53 = *(v67 + 8);
  v53(v11, v64);
  v52 = *(v66 + 8);
  v52(v34, v63);
  sub_1E37434B8(v51, v50, v49);

  v55 = sub_1E4202C44();
  v40 = v39;
  LOBYTE(v33) = v41 & 1;
  v42 = (*(*v32 + 120))();
  sub_1E3746E10(v34);
  sub_1E374709C(v11);
  v43 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v56);
  v44 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v42, v34, v11, v43, v56, v44 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v57);

  v54(v56, v65);
  v53(v11, v64);
  v52(v34, v63);
  sub_1E37434B8(v55, v40, v33);

  v45 = *(v60 + 16);
  v45(v58, v62, v17);
  v45(v59, v57, v17);
  v45(v61, v58, v17);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0E0, &unk_1E42E4D40);
  v47 = v61 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  v45(v61 + *(v46 + 64), v59, v17);
  v48 = *(v60 + 8);
  v48(v57, v17);
  v48(v62, v17);
  v48(v59, v17);
  v48(v58, v17);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3FF427C(double a1, double a2, double a3)
{
  if (a1 < 1.0)
  {
    return (a2 - (floor(1.0 / a1) + -1.0) * a3) * a1;
  }

  if (a1 > 1.0)
  {
    return a1 * a2 + (a1 + -1.0) * a3;
  }

  return a2;
}

void sub_1E3FF4310(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CanonicalInfoCardLayout();
    if (v2 <= 0x3F)
    {
      sub_1E3FF4474(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3FF4474(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E3FF4474(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3FF4474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3FF44E8()
{
  result = qword_1ECF3DFF8;
  if (!qword_1ECF3DFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFF0, &unk_1E42E4B78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFD0, &qword_1E42E4B60);
    sub_1E32752B0(&qword_1ECF3DFE8, &qword_1ECF3DFD0, &qword_1E42E4B60, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFF8);
  }

  return result;
}

unint64_t sub_1E3FF45E4()
{
  result = qword_1ECF3E048;
  if (!qword_1ECF3E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E010, &qword_1E42E4C90);
    sub_1E3FF4670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E048);
  }

  return result;
}

unint64_t sub_1E3FF4670()
{
  result = qword_1ECF3E050;
  if (!qword_1ECF3E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E008, &qword_1E42E4C88);
    sub_1E3FF46FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E050);
  }

  return result;
}

unint64_t sub_1E3FF46FC()
{
  result = qword_1ECF3E058;
  if (!qword_1ECF3E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E040, &unk_1E42E4CC0);
    sub_1E3FF4788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E058);
  }

  return result;
}

unint64_t sub_1E3FF4788()
{
  result = qword_1ECF3E060;
  if (!qword_1ECF3E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E038, &qword_1E42E4CB8);
    sub_1E32752B0(&qword_1ECF3E068, &qword_1ECF3E000, &qword_1E42E4C80, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E060);
  }

  return result;
}

uint64_t sub_1E3FF4840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalInfoCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FF48A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalInfoCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3FF4908(uint64_t a1)
{
  v2 = type metadata accessor for CanonicalInfoCard(0);
  OUTLINED_FUNCTION_17_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0, &qword_1E429FA70);
  sub_1E42038F4();
  sub_1E3B1E260(a1);

  return result;
}

void sub_1E3FF49AC()
{
  v0 = type metadata accessor for CanonicalInfoCard(0);
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3FF3A40();
}

unint64_t sub_1E3FF4A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3E0D0;
  if (!qword_1ECF3E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E0D0);
  }

  return result;
}

char *sub_1E3FF4A98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0E8, &qword_1E42E4D50);
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

uint64_t type metadata accessor for OrdinalCardView(uint64_t a1)
{
  result = qword_1EE2A3E20;
  if (!qword_1EE2A3E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FF4BFC@<X0>(uint64_t a1@<X8>)
{
  v288 = a1;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v286 = v7;
  v287 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v285 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E108, &qword_1E42E4D78);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v256 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v290 = v14;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E110, &qword_1E42E4D80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v291 = v16;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E118, &qword_1E42E4D88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v281 = v18;
  v19 = type metadata accessor for StackedTextViews(0);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v267 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v266 = v23;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v253 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v255 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v262 = &v253 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v254 = v32;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E120, &qword_1E42E4D90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v259 = v34;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v257 = v36;
  v258 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v39 = (v38 - v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E128, &qword_1E42E4D98);
  v41 = OUTLINED_FUNCTION_17_2(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_5();
  v273 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25_3();
  v271 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v46 = OUTLINED_FUNCTION_17_2(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_5();
  v270 = v47;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v253 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25_3();
  v294 = v52;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E130, &qword_1E42E4DA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v295 = v54;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E138, &qword_1E42E4DA8);
  OUTLINED_FUNCTION_0_10();
  v275 = v55;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  v272 = v57;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E140, &qword_1E42E4DB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  v278 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E148, &qword_1E42E4DB8);
  OUTLINED_FUNCTION_0_10();
  v282 = v61;
  v283 = v60;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  v280 = v63;
  v64 = v1;
  v65 = *v1;
  v293 = (*(**v1 + 488))();
  if ((*(*v65 + 392))())
  {
    type metadata accessor for OrdinalCellLayout();
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      OUTLINED_FUNCTION_99();
      v68 = *(v67 + 176);

      v68(v300, v69);
      v2 = v300[0];
      v70 = v300[1];
      v71 = v300[2];
      v72 = v300[3];

      if ((v301 & 1) == 0)
      {
        v73.n128_u64[0] = v2;
        v74.n128_u64[0] = v70;
        v75.n128_u64[0] = v71;
        v76.n128_u64[0] = v72;
        v77 = j_nullsub_1(v73, v74, v75, v76);
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
    v66 = 0;
  }

  v77 = OUTLINED_FUNCTION_5_8();
LABEL_8:
  v265 = v77;
  v81 = v78;
  v82 = v79;
  v83 = v80;
  LOBYTE(v304) = 2;
  (*(*v65 + 776))(__dst, &v304, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (__dst[3])
  {
    v84 = swift_dynamicCast();
    v85 = v293;
    if (v84)
    {
      if (!v293)
      {
        goto LABEL_15;
      }

LABEL_13:

      v87 = sub_1E373E010(23, v85, v86);

      v89 = sub_1E373E010(15, v85, v88);

      v91 = sub_1E373E010(222, v85, v90);

      goto LABEL_16;
    }

    if (v293)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E329505C(__dst);
    v85 = v293;
    if (v293)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v91 = 0;
  v89 = 0;
  v87 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0, &qword_1E42AFDB0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1E4297BD0;
  *(v92 + 32) = v87;
  *(v92 + 40) = v89;
  v292 = v92;
  *(v92 + 48) = v91;
  v263 = v89;
  v261 = v91;
  if (v66)
  {
    v93 = *(*v66 + 1824);

    v95 = v93(v94);
  }

  else
  {
    v96 = objc_allocWithZone(VUIMediaTagsViewLayout);

    v95 = [v96 initWithType_];
  }

  v264 = v87;
  v97 = sub_1E4201D54();
  v99 = v295;
  *v295 = v97;
  v99[1] = 0;
  *(v99 + 16) = 0;
  if (v85)
  {
    v100 = sub_1E373E010(39, v85, v98);
  }

  else
  {
    v100 = 0;
  }

  memcpy(__dst, v64 + 1, 0x5BuLL);
  if (v66)
  {
    OUTLINED_FUNCTION_99();
    v102 = (*(v101 + 1800))();
    if (v100)
    {
LABEL_24:
      type metadata accessor for ImageViewModel();
      v103 = swift_dynamicCastClass();
      if (v103)
      {
        v104 = v103;

        v105 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v104, __dst, v102, v105 & 1, 0, 0, v50);

        v106 = 0;
      }

      else
      {
        v106 = 1;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v102 = 0;
    if (v100)
    {
      goto LABEL_24;
    }
  }

  v106 = 1;
LABEL_30:

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  __swift_storeEnumTagSinglePayload(v50, v106, 1, v107);
  sub_1E329E454(v50, v294, &qword_1ECF29938, &unk_1E429C3F0);
  type metadata accessor for OrdinalCardView(0);
  sub_1E3746E10(v39);
  v108 = sub_1E3B0352C();
  (*(v257 + 8))(v39, v258);
  v269 = v66;
  v289 = v95;
  if (v108)
  {
    v109 = sub_1E4201D54();
    v111 = v259;
    *v259 = v109;
    v111[1] = 0;
    *(v111 + 16) = 0;
    if (v85)
    {
      v112 = sub_1E373E010(17, v85, v110);
    }

    else
    {
      v112 = 0;
    }

    if (!v66 || (OUTLINED_FUNCTION_99(), v120 = (*(v119 + 1728))(), (*(*v120 + 152))(&v304), (v308 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v123.n128_u64[0] = v306;
      v124.n128_u64[0] = v307;
      v121.n128_u64[0] = v304;
      v122.n128_u64[0] = v305;
      j_nullsub_1(v121, v122, v123, v124);
    }

    OUTLINED_FUNCTION_14_169();
    if (v112 && *v112 == _TtC8VideosUI13TextViewModel)
    {

      OUTLINED_FUNCTION_18();
      v132 = v253;
      sub_1E3F23370();
      v133 = sub_1E4202734();

      v134 = v260;
      v135 = v132 + *(v260 + 36);
      *v135 = v133;
      *(v135 + 8) = v3;
      *(v135 + 16) = v4;
      *(v135 + 24) = v5;
      *(v135 + 32) = v2;
      *(v135 + 40) = 0;
      v136 = v254;
      sub_1E329E454(v132, v254, &qword_1ECF28CC0, &qword_1E4298440);
      v137 = v136;
      v138 = 0;
      v139 = v134;
    }

    else
    {
      v136 = v254;
      v137 = v254;
      v138 = 1;
      v139 = v260;
    }

    __swift_storeEnumTagSinglePayload(v137, v138, 1, v139);

    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1A0, &qword_1E42E4DF0);
    v141 = v259;
    v142 = v259 + *(v140 + 44);

    v143 = v95;
    sub_1E403E274(v144);
    j__OUTLINED_FUNCTION_18();
    v145 = v266;
    OUTLINED_FUNCTION_31_14();
    sub_1E403E278(v146, v147, v148, v149);
    sub_1E3294EE4(v136, v262, &qword_1ECF2F9A8, &qword_1E42AF320);
    v150 = v267;
    sub_1E38F84AC(v145, v267);
    OUTLINED_FUNCTION_82();
    sub_1E3294EE4(v151, v152, v153, &qword_1E42AF320);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1A8, qword_1E42E4DF8);
    sub_1E38F84AC(v150, &v142[*(v154 + 48)]);
    sub_1E38F8510(v145);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v155, v156, v157);
    sub_1E38F8510(v150);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v158, v159, v160);
    OUTLINED_FUNCTION_17_144(v141);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v161, v162, v163, v164);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v165, v166, v167, v168);
    OUTLINED_FUNCTION_10_160();
  }

  else
  {
    v113 = sub_1E4201B64();
    v114 = v291;
    *v291 = v113;
    v114[1] = 0;
    *(v114 + 16) = 0;
    v115 = sub_1E4201D44();
    v117 = v290;
    *v290 = v115;
    v117[1] = 0;
    *(v117 + 16) = 1;
    if (v85)
    {
      v118 = sub_1E373E010(17, v85, v116);
    }

    else
    {
      v118 = 0;
    }

    v125 = v255;
    if (!v66 || (OUTLINED_FUNCTION_99(), v127 = (*(v126 + 1728))(), (*(*v127 + 152))(v302), (v303 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v130.n128_u64[0] = v302[2];
      v131.n128_u64[0] = v302[3];
      v128.n128_u64[0] = v302[0];
      v129.n128_u64[0] = v302[1];
      j_nullsub_1(v128, v129, v130, v131);
    }

    OUTLINED_FUNCTION_14_169();
    if (v118 && *v118 == _TtC8VideosUI13TextViewModel)
    {

      OUTLINED_FUNCTION_18();
      v169 = v253;
      sub_1E3F23370();
      v170 = sub_1E4202734();

      v171 = v260;
      v172 = v169 + *(v260 + 36);
      *v172 = v170;
      *(v172 + 8) = v3;
      *(v172 + 16) = v4;
      *(v172 + 24) = v5;
      *(v172 + 32) = v2;
      *(v172 + 40) = 0;
      sub_1E329E454(v169, v125, &qword_1ECF28CC0, &qword_1E4298440);
      v173 = v125;
      v174 = 0;
      v175 = v171;
    }

    else
    {
      v173 = v125;
      v174 = 1;
      v175 = v260;
    }

    __swift_storeEnumTagSinglePayload(v173, v174, 1, v175);

    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E150, &qword_1E42E4DC0);
    v260 = v291 + *(v176 + 44);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E158, &qword_1E42E4DC8);
    v178 = v290 + *(v177 + 44);
    sub_1E4203DA4();
    sub_1E4200D94();
    v179 = v306;
    v258 = v308;
    v259 = v304;
    v257 = v309;
    LOBYTE(v296) = 1;
    v299 = v305;
    v298 = v307;
    v180 = v125;
    v181 = v125;
    v182 = v262;
    sub_1E3294EE4(v180, v262, &qword_1ECF2F9A8, &qword_1E42AF320);
    v183 = v296;
    v184 = v299;
    v185 = v298;
    OUTLINED_FUNCTION_31_14();
    sub_1E3294EE4(v186, v187, v188, &qword_1E42AF320);
    v189 = &v178[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E160, &qword_1E42E4DD0) + 48)];
    *v189 = 0;
    v189[8] = v183;
    v190 = v258;
    *(v189 + 2) = v259;
    v189[24] = v184;
    *(v189 + 4) = v179;
    v189[40] = v185;
    v191 = v257;
    *(v189 + 6) = v190;
    *(v189 + 7) = v191;
    sub_1E325F6F0(v181, &qword_1ECF2F9A8, &qword_1E42AF320);
    sub_1E325F6F0(v182, &qword_1ECF2F9A8, &qword_1E42AF320);

    v192 = v289;
    sub_1E403E274(v193);
    j__OUTLINED_FUNCTION_18();
    v194 = v266;
    OUTLINED_FUNCTION_31_14();
    sub_1E403E278(v195, v196, v197, v198);
    v136 = v256;
    sub_1E3294EE4(v290, v256, &qword_1ECF3E108, &qword_1E42E4D78);
    v199 = v267;
    sub_1E38F84AC(v194, v267);
    v200 = v260;
    sub_1E3294EE4(v136, v260, &qword_1ECF3E108, &qword_1E42E4D78);
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E168, &qword_1E42E4DD8);
    sub_1E38F84AC(v199, v200 + *(v201 + 48));
    sub_1E38F8510(v194);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v202, v203, v204);
    sub_1E38F8510(v199);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v205, v206, v207);
    OUTLINED_FUNCTION_17_144(v291);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v208, v209, v210, v211);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v212, v213, v214, v215);
    OUTLINED_FUNCTION_10_160();
  }

  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v216, v217, v218);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E180, &qword_1E42E4DE0);
  v220 = v295 + *(v219 + 44);
  v221 = v270;
  sub_1E3294EE4(v294, v270, &qword_1ECF29938, &unk_1E429C3F0);
  v222 = v273;
  sub_1E3294EE4(v136, v273, &qword_1ECF3E128, &qword_1E42E4D98);
  sub_1E3294EE4(v221, v220, &qword_1ECF29938, &unk_1E429C3F0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E188, &qword_1E42E4DE8);
  sub_1E3294EE4(v222, v220 + *(v223 + 48), &qword_1ECF3E128, &qword_1E42E4D98);
  sub_1E325F6F0(v136, &qword_1ECF3E128, &qword_1E42E4D98);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v224, v225, v226);
  sub_1E325F6F0(v222, &qword_1ECF3E128, &qword_1E42E4D98);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v227, v228, v229);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_14();
  v234 = sub_1E32752B0(v230, v231, v232, v233);
  v235 = v269;

  v236 = v276;
  v237 = j__OUTLINED_FUNCTION_18();
  v238 = j__OUTLINED_FUNCTION_18();
  v239 = OUTLINED_FUNCTION_51_1();
  v240 = v237 & 1;
  v241 = v272;
  sub_1E383F6D4(v235, v240, v238 & 1, 1, v239 & 1, v236, v234);

  OUTLINED_FUNCTION_31_14();
  sub_1E325F6F0(v242, v243, v244);
  LOBYTE(v234) = sub_1E4202734();
  v245 = v278;
  (*(v275 + 32))(v278, v241, v277);
  v246 = v279;
  v247 = v245 + *(v279 + 36);
  *v247 = v234;
  *(v247 + 8) = v265;
  *(v247 + 16) = v81;
  *(v247 + 24) = v82;
  *(v247 + 32) = v83;
  *(v247 + 40) = 0;
  v248 = v285;
  sub_1E4202474();
  v249 = sub_1E3FF6064();
  v250 = v280;
  sub_1E4203224();
  (*(v286 + 8))(v248, v287);
  sub_1E325F6F0(v245, &qword_1ECF3E140, &qword_1E42E4DB0);
  v296 = v246;
  v297 = v249;
  swift_getOpaqueTypeConformance2();
  v251 = v283;
  sub_1E4203374();

  return (*(v282 + 8))(v250, v251);
}

unint64_t sub_1E3FF6064()
{
  result = qword_1ECF3E198;
  if (!qword_1ECF3E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E140, &qword_1E42E4DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E130, &qword_1E42E4DA0);
    sub_1E32752B0(&qword_1ECF3E190, &qword_1ECF3E130, &qword_1E42E4DA0, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E198);
  }

  return result;
}

void sub_1E3FF61A4(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E38D5D68(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3FF6248()
{
  result = qword_1ECF3E1B0;
  if (!qword_1ECF3E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E1B8, qword_1E42E4E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E140, &qword_1E42E4DB0);
    sub_1E3FF6064();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E1B0);
  }

  return result;
}

double sub_1E3FF6348(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout, v5);
  *(v1 + v3) = a1;

  return result;
}

double sub_1E3FF63F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

void sub_1E3FF6430(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews], v17);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v4)
  {
    if (v6)
    {

      v7 = sub_1E3FF7C44(v4, v6);

      if (v7)
      {
        goto LABEL_23;
      }
    }

    v8 = sub_1E32AE9B0(v4);
    for (i = 0; v8 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v4 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      [v10 removeFromSuperview];
    }

    v6 = *&v1[v5];
  }

  if (!v6)
  {
LABEL_23:
    [v1 vui_setNeedsLayout];

    return;
  }

  v12 = sub_1E32AE9B0(v6);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      goto LABEL_23;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](j, v6);
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = *(v6 + 8 * j + 32);
    }

    v15 = v14;
    if (__OFADD__(j, 1))
    {
      break;
    }

    v16 = [v1 vuiContentView];
    [v16 addSubview_];

    [v15 vui_setNeedsLayout];
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void (*sub_1E3FF663C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v3);

  return sub_1E3FF66AC;
}

void sub_1E3FF66AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3FF6430(v4);
  }

  else
  {
    sub_1E3FF6430(v3);
  }

  free(v2);
}

void *sub_1E3FF6710(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3FF6758())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3FF67C8;
}

void *sub_1E3FF67E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3FF6828(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0(&v2[*a2], &v9);
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  swift_beginAccess();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

void (*sub_1E3FF68BC())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3FF692C;
}

void sub_1E3FF6944(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

char *sub_1E3FF69C4()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = [objc_opt_self() isTV];
  v3 = 60.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_bottomPadding) = v3;
  v20 = v0;
  v21 = type metadata accessor for CanonicalFooterViewCell();
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  type metadata accessor for SeparatorView();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = v7;
  v10 = [v8 init];
  v11 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_3_0(&v9[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView], v19);
  v12 = *&v9[v11];
  *&v9[v11] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E4297BE0;
  *(v13 + 32) = sub_1E3F65410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v14 = sub_1E42062A4();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1E3FF6C40;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_153;
  v16 = _Block_copy(aBlock);

  [v9 vui:v14 registerForTraitChanges:v16 withHandler:?];
  _Block_release(v16);

  return v9;
}

void sub_1E3FF6C40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
    *v1 = 0;
    *(v1 + 1) = 0;
    v1[16] = 1;
  }
}

void sub_1E3FF6CBC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = [objc_opt_self() isTV];
  v3 = 60.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_bottomPadding) = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3FF6DB8(char a1, double a2)
{
  v3 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v5 = &v2[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
    if ((v2[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize + 16] & 1) != 0 || *v5 != a2)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A258E4(a2);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = a2 - sub_1E3952BE0(v28, v30, v32, v34);
      v36 = sub_1E3FF7A44();
      sub_1E3FF7A8C();
      v37 = sub_1E3952BD8(v29, v31, v33);
      if (sub_1E3FF7AF8())
      {
        VUIRoundValue();
        v39 = v38;
        OUTLINED_FUNCTION_24_1();
        v41 = (*(v40 + 176))();
        if (v41)
        {
          v42 = v41;
          [v2 vuiBounds];
          Width = CGRectGetWidth(v150);
          v44 = sub_1E3A2579C(Width);
          if (sub_1E3A2511C(v44))
          {
            v45 = v35;
          }

          else
          {
            v45 = v39;
          }

          [v42 vui:v45 sizeThatFits:0.0];
          v47 = v46;

          v37 = v37 + v47;
        }

        OUTLINED_FUNCTION_24_1();
        v49 = (*(v48 + 152))();
        if (v49)
        {
          v50 = v49;
          v149 = v5;
          v51 = sub_1E32AE9B0(v49);
          v52 = 0;
          v53 = 0.0;
          while (v51 != v52)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x1E6911E60](v52, v50);
            }

            else
            {
              if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_124;
              }

              v54 = *(v50 + 8 * v52 + 32);
            }

            v55 = v54;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_123;
            }

            [v54 vui:v39 sizeThatFits:0.0];
            if (v53 <= v56)
            {
              v53 = v56;
            }

            if (3 * (v52 / 3) + 2 == v52)
            {

              v37 = v37 + v36 + v53;
              v53 = 0.0;
            }

            else
            {
              if (v50 >> 62)
              {
                v57 = sub_1E4207384();
              }

              else
              {
                v57 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (__OFSUB__(v57, 1))
              {
                goto LABEL_125;
              }

              if (v52 == v57 - 1)
              {
                v37 = v36 + v37;
              }
            }

            ++v52;
          }

          v5 = v149;
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        v77 = (*(v76 + 152))();
        if (v77)
        {
          v78 = v77;
          v79 = sub_1E32AE9B0(v77);
          for (i = 0; v79 != i; ++i)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = MEMORY[0x1E6911E60](i, v78);
            }

            else
            {
              if (i >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v81 = *(v78 + 8 * i + 32);
            }

            v82 = v81;
            if (__OFADD__(i, 1))
            {
              goto LABEL_121;
            }

            [v81 vui:v35 sizeThatFits:0.0];
            v84 = v83;

            v37 = v37 + v36 + v84;
          }
        }

        OUTLINED_FUNCTION_24_1();
        v86 = (*(v85 + 176))();
        if (v86)
        {
          v87 = v86;
          [v86 vui:v35 sizeThatFits:0.0];
        }
      }

      VUIRoundValue();
      *v5 = a2;
      *(v5 + 1) = v88;
      v5[16] = 0;
    }

    return;
  }

  v6 = [v2 vuiIsRTL];
  [v2 vuiBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v12);
  v16 = v15;
  v18 = v17;
  v21 = sub_1E3952BE0(v15, v17, v19, v20);
  v148 = sub_1E3FF7A44();
  sub_1E3FF7A8C();
  v144 = v22;
  v23 = [objc_opt_self() isTV];
  OUTLINED_FUNCTION_24_1();
  v25 = *(v24 + 200);
  v26 = v25();
  if (v26)
  {
    v27 = v26;
    v146 = (*((*v3 & *v26) + 0x70))();
  }

  else
  {
    v146 = 1.0;
  }

  v58 = v12 - v21;
  if (sub_1E3FF7AF8())
  {
    rect = v14;
    VUIRoundValue();
    v60 = v59;
    OUTLINED_FUNCTION_24_1();
    v62 = *(v61 + 176);
    v63 = v62();
    if (v63)
    {
      v64 = v63;
      v151.origin.x = v8;
      v151.origin.y = v10;
      v151.size.width = v12;
      v151.size.height = rect;
      v65 = CGRectGetWidth(v151);
      v66 = sub_1E3A2579C(v65);
      if (sub_1E3A2511C(v66))
      {
        v67 = v12 - v21;
      }

      else
      {
        v67 = v60;
      }

      [v64 vui:v67 sizeThatFits:0.0];
      v69 = v68;
      v142 = v70;

      if (v23)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 0.0;
      v142 = 0.0;
      if (v23)
      {
        goto LABEL_75;
      }
    }

    v89 = 0.0;
    v90 = v18;
    v143 = v69;
    v91 = v142;
    if (v6)
    {
      OUTLINED_FUNCTION_1_275();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v69 = v92;
    }

    v138 = v91;
    v139 = v69;
    v140 = v89;
    v93 = v90;
    v94 = v62();
    if (v94)
    {
      v95 = v94;
      [v94 setFrame_];
    }

    v152.origin.y = 0.0;
    v152.origin.x = v18;
    v152.size.height = v142;
    v152.size.width = v143;
    v16 = v16 + CGRectGetMaxY(v152);
    if (v6)
    {
      OUTLINED_FUNCTION_6_205();
      OUTLINED_FUNCTION_1_275();
      v96 = VUIRectWithFlippedOriginRelativeToBoundingRect();
      v141 = v97;
      v99 = v98;
      v58 = v100;
      v146 = v101;
    }

    else
    {
      v141 = v18;
      v99 = v16;
    }

    v110 = (v25)(v96);
    if (v110)
    {
      v111 = v110;
      [v110 setFrame_];
    }

LABEL_75:
    OUTLINED_FUNCTION_24_1();
    v113 = (*(v112 + 152))();
    if (v113)
    {
      v114 = v113;
      v138 = *&v62;
      LODWORD(v139) = v23;
      v115 = sub_1E32AE9B0(v113);
      v116 = 0;
LABEL_77:
      v117 = v18;
      v118 = 0.0;
      while (1)
      {
        if (v115 == v116)
        {

          v23 = LODWORD(v139);
          *&v62 = v138;
          goto LABEL_91;
        }

        if ((v114 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x1E6911E60](v116, v114);
        }

        else
        {
          if (v116 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_119;
          }

          v119 = *(v114 + 8 * v116 + 32);
        }

        v120 = v119;
        v121 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          break;
        }

        [v119 vui:v60 sizeThatFits:0.0];
        if (v118 <= v122)
        {
          v118 = v122;
        }

        v154.origin.x = v117;
        v154.origin.y = v16;
        v154.size.width = v60;
        v154.size.height = v118;
        v155 = CGRectIntegral(v154);
        if (v6)
        {
          VUIRectWithFlippedOriginRelativeToBoundingRect();
        }

        [v120 setFrame_];

        v123 = v116 % 3;
        v117 = v144 + v60 + v117;
        ++v116;
        if (v123 == 2)
        {
          v16 = v16 + v148 + v118;
          v116 = v121;
          goto LABEL_77;
        }
      }

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
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
    }

    else
    {
LABEL_91:
      v124 = v62();
      if (v124)
      {
        v125 = v124;
        if (v23)
        {
          if (v6)
          {
            VUIRectWithFlippedOriginRelativeToBoundingRect();
          }

          else
          {
            v126 = v18;
          }

          [v125 setFrame_];
        }
      }
    }

    return;
  }

  OUTLINED_FUNCTION_24_1();
  v72 = (*(v71 + 176))();
  if (v72)
  {
    v73 = v72;
    if ((v23 & 1) == 0)
    {
      [v72 vui:v12 - v21 sizeThatFits:0.0];
      v102 = OUTLINED_FUNCTION_5_223();
      if (v6)
      {
        OUTLINED_FUNCTION_5_223();
        OUTLINED_FUNCTION_1_275();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      [v73 setFrame_];
      v153.origin.x = OUTLINED_FUNCTION_5_223();
      v16 = v16 + CGRectGetMaxY(v153);
      if (v6)
      {
        OUTLINED_FUNCTION_6_205();
        OUTLINED_FUNCTION_1_275();
        v103 = VUIRectWithFlippedOriginRelativeToBoundingRect();
        v145 = v104;
        v146 = v105;
        v107 = v106;
        v109 = v108;
      }

      else
      {
        v145 = v18;
        v107 = v16;
        v109 = v12 - v21;
      }

      v127 = (v25)(v103);
      if (v127)
      {
        v128 = v127;
        [v127 setFrame_];
      }

      v75 = &selRef_vui_disableLocalAsset;
      goto LABEL_99;
    }
  }

  v74 = v25();
  if (!v74)
  {
    v75 = &selRef_vui_disableLocalAsset;
    goto LABEL_100;
  }

  v73 = v74;
  [v74 setFrame_];
  v75 = &selRef_vui_disableLocalAsset;
LABEL_99:

LABEL_100:
  OUTLINED_FUNCTION_24_1();
  v130 = (*(v129 + 152))();
  if (v130)
  {
    v131 = v130;
    v132 = sub_1E32AE9B0(v130);
    for (j = 0; v132 != j; ++j)
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1E6911E60](j, v131);
      }

      else
      {
        if (j >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v134 = *(v131 + 8 * j + 32);
      }

      v135 = v134;
      if (__OFADD__(j, 1))
      {
        goto LABEL_118;
      }

      [v134 v75[132]];
      v137 = v136;
      v156.origin.x = OUTLINED_FUNCTION_6_205();
      v156.size.height = v137;
      v157 = CGRectIntegral(v156);
      if (v6)
      {
        OUTLINED_FUNCTION_1_275();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      [v135 setFrame_];

      v16 = v16 + v148 + v137;
    }
  }
}

id sub_1E3FF7910()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanonicalFooterViewCell();
  result = objc_msgSendSuper2(&v3, sel_vui_prepareForReuse);
  v2 = &v0[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  return result;
}

id sub_1E3FF79A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalFooterViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E3FF7A44()
{
  v0 = [objc_opt_self() isTV];
  result = 0.0;
  if ((v0 & 1) == 0)
  {
    v2 = sub_1E3FF7AF8();
    result = 16.0;
    if (v2)
    {
      return 20.0;
    }
  }

  return result;
}

void sub_1E3FF7A8C()
{
  if (([objc_opt_self() isTV] & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    [v0 vuiBounds];
    Width = CGRectGetWidth(v2);
    sub_1E3A25950(Width);
  }
}

uint64_t sub_1E3FF7AF8()
{
  v1 = [v0 vuiTraitCollection];
  v2 = [v1 isAXEnabled];

  if (v2)
  {
    return 0;
  }

  v4 = objc_opt_self();
  if ([v4 isMac])
  {
    return 1;
  }

  type metadata accessor for LayoutGrid();
  [v0 vuiBounds];
  Width = CGRectGetWidth(v13);
  v6 = sub_1E3A2579C(Width);
  if (sub_1E373F630(v6, 6, v7))
  {
    return 1;
  }

  v10 = sub_1E373F630(v6, 2, v8);
  if (v10)
  {
    v10 = [v4 isPad];
    if (v10)
    {
      return 0;
    }
  }

  sub_1E37F99D4(v10, v11, v12);
  if (sub_1E4205E84())
  {
    return 0;
  }

  v3 = 1;
  if (sub_1E4205E84())
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1E3FF7C44(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for CanonicalFooterSectionView();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x1E6911E60](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_1E4206F64();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FF7E04(uint64_t (*a1)(void))
{
  sub_1E4205004();
  v2 = sub_1E4204FF4();
  v3 = a1();

  return v3;
}

void sub_1E3FF7EF0()
{
  v0 = [objc_opt_self() sharedPreferences];
  type metadata accessor for SportsSpoilersManager();
  v1 = swift_allocObject();
  v2 = v0;
  v3 = sub_1E3FF85D0(v2, v1);

  qword_1EE2AAD78 = v3;
}

uint64_t *sub_1E3FF7F7C()
{
  if (qword_1EE29B2D0 != -1)
  {
    OUTLINED_FUNCTION_0_316(&qword_1EE29B2D0);
  }

  return &qword_1EE2AAD78;
}

uint64_t sub_1E3FF7FBC(void *a1, void *a2, uint64_t (*a3)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = a3(v13, v20, v5, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

double sub_1E3FF8174()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568, &unk_1E42A0980);
  sub_1E3FF882C();
  sub_1E4200844();

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

BOOL sub_1E3FF8268(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  if ((*(v6 + 8))(v5, v6))
  {
    return 1;
  }

  v8 = v2[12];

  v9 = sub_1E3862230(a1, a2, v8);

  return v9;
}

uint64_t sub_1E3FF8308()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t sub_1E3FF8340()
{
  sub_1E3FF8308();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E3FF8374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v29 - v24;
  (*(v18 + 32))(&v29 - v24, v23);
  (*(v11 + 32))(v16, a2, a5);
  type metadata accessor for SportsSpoilersManager();
  v26 = swift_allocObject();
  (*(v18 + 16))(v21, v25, a4);
  (*(v11 + 16))(v13, v16, a5);
  v27 = sub_1E3FF8694(v21, v13, v26, a4, a5, a6, v30);
  (*(v11 + 8))(v16, a5);
  (*(v18 + 8))(v25, a4);
  return v27;
}

uint64_t sub_1E3FF85D0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for SportsKitActivitiesProvider;
  v8[4] = &off_1F5D919E8;
  v7[3] = sub_1E3FF8890();
  v7[4] = &off_1F5D919B8;
  v7[0] = a1;
  *(a2 + 104) = MEMORY[0x1E69E7CD0];
  sub_1E327F454(v8, a2 + 16);
  sub_1E327F454(v7, a2 + 56);
  sub_1E4205004();
  v4 = sub_1E4204FF4();
  v5 = sub_1E4204F74();

  *(a2 + 96) = v5;
  sub_1E3FF8174();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a2;
}

uint64_t sub_1E3FF8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a4;
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17[3] = a5;
  v17[4] = a7;
  v15 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(v15, a2, a5);
  *(a3 + 104) = MEMORY[0x1E69E7CD0];
  sub_1E327F454(v18, a3 + 16);
  sub_1E327F454(v17, a3 + 56);
  *(a3 + 96) = (*(a6 + 8))(a4, a6);
  sub_1E3FF8174();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return a3;
}

uint64_t sub_1E3FF87F0()
{

  *(v0 + 96) = sub_1E32772D8(v1);
}

unint64_t sub_1E3FF882C()
{
  result = qword_1EE28A1D8;
  if (!qword_1EE28A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B568, &unk_1E42A0980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A1D8);
  }

  return result;
}

unint64_t sub_1E3FF8890()
{
  result = qword_1EE23AFC0;
  if (!qword_1EE23AFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AFC0);
  }

  return result;
}

void sub_1E3FF8928()
{
  if (!sub_1E41C8EFC())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = v1;
  (*(v0 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v2)
  {
    return;
  }

  if (!sub_1E32AE9B0(v2))
  {
LABEL_16:

    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  type metadata accessor for CollectionViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
LABEL_14:

    return;
  }

  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1040);

  v6(v7);
  OUTLINED_FUNCTION_14_15();
  if (!sub_1E32AE9B0(v4))
  {

    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = *(v4 + 32);

    goto LABEL_12;
  }

LABEL_21:
  OUTLINED_FUNCTION_41_1();
  v9 = v13;
LABEL_12:

  v10 = *(*v9 + 872);

  v12 = v10(v11);

  if (v12)
  {
    sub_1E32AE9B0(v12);
    OUTLINED_FUNCTION_31_4();

    goto LABEL_14;
  }
}

double sub_1E3FF8B3C(uint64_t a1)
{
  v1 = sub_1E41C85FC();
  [v1 contentSize];
  v3 = v2;

  return v3;
}

uint64_t sub_1E3FF8D64(uint64_t *a1, void (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_33_9(*a1);
  OUTLINED_FUNCTION_5_0(v3, v4);
  v5 = OUTLINED_FUNCTION_67_0();
  a2(v5);
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1E3FF8E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a3);
  swift_beginAccess();
  v8 = *v4;
  v9 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return a4(v8, v9);
}

id sub_1E3FF8EBC(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

uint64_t sub_1E3FF8F14()
{
  if (!sub_1E41C8EFC())
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  v2 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 776))(&v3, &v2, &unk_1F5D5E578, &off_1F5D5CBF8);

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1E325F748(&v3, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1E3FF8FEC()
{
  if (!sub_1E41C8EFC())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_26_0();
  v3 = v2;
  (*(v1 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v3)
  {
    goto LABEL_16;
  }

  if (!sub_1E32AE9B0(v3))
  {

    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v4)
    {
      __break(1u);
LABEL_23:
      MEMORY[0x1E6911E60](0, v0);
LABEL_13:

      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 872);

      v12 = v10(v11);

      if (v12)
      {

        return v12;
      }

LABEL_16:

      return MEMORY[0x1E69E7CC0];
    }
  }

  type metadata accessor for CollectionViewModel();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_16;
  }

  v6 = *(*v5 + 1040);

  v0 = v6(v7);

  if (!v0)
  {
    goto LABEL_16;
  }

  result = sub_1E32AE9B0(v0);
  if (!result)
  {

    goto LABEL_16;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FF92C0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1E3FF9320()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v54 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E8, &qword_1E42E4F98);
  OUTLINED_FUNCTION_0_10();
  v55 = v7;
  v56 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E1F0, &unk_1E42E4FA0);
  OUTLINED_FUNCTION_0_10();
  v59 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v49 = v24;
  v50 = v25;
  OUTLINED_FUNCTION_5_7();
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v29 = &v46 - v28;
  v63.receiver = v1;
  v63.super_class = ObjectType;
  objc_msgSendSuper2(&v63, sel_vui_viewDidLoad, v27);
  v30 = sub_1E41C85FC();
  [v30 vui:2 setOverrideUserInterfaceStyle:?];

  v31 = sub_1E41C85FC();
  v32 = [v31 layer];

  [v32 setMasksToBounds_];
  v33 = objc_opt_self();
  v51 = @"VUIMultiviewPlayerDidStopNotification";
  v34 = [v33 defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v35 = sub_1E4206A04();
  v62[0] = v35;
  sub_1E42069A4();
  OUTLINED_FUNCTION_37_76();
  sub_1E3FFE2D8(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v48 = sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v16, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_23_9(v36);
  v47 = MEMORY[0x1E695BE98];
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  v37 = v49;
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  (*(v50 + 8))(v29, v37);
  v38 = OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables;
  OUTLINED_FUNCTION_11_3(&v1[OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables], v62);
  sub_1E42004C4();
  swift_endAccess();

  v62[0] = *&v1[OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject];

  v39 = sub_1E4206A04();
  v61 = v39;
  OUTLINED_FUNCTION_37_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  sub_1E32752B0(&qword_1ECF2A2A0, &qword_1ECF3E1E0, &unk_1E42D6EC0, MEMORY[0x1E695BF88]);
  v40 = v52;
  sub_1E42007D4();
  sub_1E325F748(v16, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v41 = v54;
  sub_1E42069B4();
  v42 = sub_1E4206A04();
  v62[0] = v42;
  sub_1E32752B0(&qword_1ECF3E200, &qword_1ECF3E1E8, &qword_1E42E4F98, v47);
  v43 = v53;
  v44 = v55;
  sub_1E4200804();

  (*(v58 + 8))(v41, v60);
  (*(v56 + 8))(v40, v44);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1ECF3E208, &unk_1ECF3E1F0, &unk_1E42E4FA0, MEMORY[0x1E695BE68]);
  v45 = v57;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v59 + 8))(v43, v45);
  OUTLINED_FUNCTION_11_3(&v1[v38], v62);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FF9A68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_5_0(v1 + 16, &v36);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v17 = Strong;
  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E3797E30(0xD000000000000033, 0x80000001E428D5E0, v18);
    v22 = v21;

    if (v22)
    {
      if (TVAppFeature.isEnabled.getter(12, v23, v24))
      {
        v25 = sub_1E4206474();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v25);
        sub_1E4206434();

        v26 = sub_1E4206424();
        v27 = swift_allocObject();
        v28 = MEMORY[0x1E69E85E0];
        v27[2] = v26;
        v27[3] = v28;
        v27[4] = v15;
        v27[5] = v14;
        v27[6] = v20;
        v27[7] = v22;
        v27[8] = MEMORY[0x1E69E7CC8];
        sub_1E376FE58(0, 0, v6, &unk_1E42E5038, v27);
      }

      else
      {
        v33 = [objc_opt_self() defaultCenter];
        v34 = sub_1E3744600(MEMORY[0x1E69E7CC8]);
        sub_1E3FFDD68(v15, v14, v20, v22, 0, v34, v33);
      }
    }

    else
    {
      v29 = sub_1E324FBDC();
      (*(v9 + 16))(v13, v29, v7);
      v30 = sub_1E41FFC94();
      v31 = sub_1E42067E4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1E323F000, v30, v31, "MultiViewPlayerHUDTemplateController:: won't deliver notification without title.", v32, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      (*(v9 + 8))(v13, v7);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E3FF9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1E41FFCB4();
  v8[2] = v14;
  v8[3] = *(v14 - 8);
  v8[4] = swift_task_alloc();
  v8[5] = sub_1E4206434();
  v8[6] = sub_1E4206424();
  type metadata accessor for LocalNotificationService();
  v15 = swift_task_alloc();
  v8[7] = v15;
  *v15 = v8;
  v15[1] = sub_1E3FF9ECC;

  return static LocalNotificationService.deliverNotification(identifier:title:body:options:)(a4, a5, a6, a7, 0, 0, a8);
}

uint64_t sub_1E3FF9ECC()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 64) = v0;

  v6 = sub_1E42063B4();
  if (v0)
  {
    v7 = sub_1E3FFA07C;
  }

  else
  {
    v7 = sub_1E3FFA01C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FFA01C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FFA07C()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = sub_1E324FBDC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1E323F000, v7, v8, "MultiViewPlayerHUDTemplateController:: failed to deliver notification: %@", v11, 0xCu);
    sub_1E325F748(v12, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  OUTLINED_FUNCTION_54();

  return v15();
}

void sub_1E3FFA260(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  v3 = sub_1E41C85FC();
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

id sub_1E3FFA344(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = objc_allocWithZone(v2);
  v5 = OUTLINED_FUNCTION_38();
  return sub_1E3FFA384(v5, v3);
}

id sub_1E3FFA384(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationTimeout) = 0x4014000000000000;
  v4 = OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  swift_allocObject();
  *(v2 + v4) = sub_1E4200544();
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v5 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables) = v5;
  v6 = (v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  v7 = (v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  *v8 = 0;
  v8[1] = 0;
  swift_unknownObjectWeakInit();

  sub_1E378C3B0(v9, a2 & 1);
  v11 = v10;
  sub_1E3FFA4B4();

  return v11;
}

void sub_1E3FFA4B4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  if (!sub_1E41C8EFC())
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_26_0();
  v4 = (*(v3 + 464))();
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (!sub_1E32AE9B0(v4))
  {

LABEL_17:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v6)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), v8 = *(v7 + 1040), v9 = , v1 = v8(v9), , !v1))
  {

LABEL_21:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if (!sub_1E32AE9B0(v1))
  {

    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v10 = MEMORY[0x1E6911E60](0, v1);
LABEL_13:

    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 872);

    v14 = v12(v13);

    MEMORY[0x1EEE9AC00](v15);
    v22[2] = v2;
    v16 = *(*v10 + 1064);

    v17 = v16(sub_1E3FFE000, v22);
    v18 = v12(v17);

    if (v14)
    {
      if (v18)
      {

        sub_1E38BBA04(v19, v18);

        swift_bridgeObjectRelease_n();
LABEL_29:
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v1 + 32);

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1E3FFA800()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationTimeout) = 0x4014000000000000;
  v1 = OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  swift_allocObject();
  *(v0 + v1) = sub_1E4200544();
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables) = v2;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FFA950(void *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vuiScrollViewDidScroll_, a1);
  result = sub_1E3FF8F14();
  if (result)
  {
    [a1 contentOffset];
    return [a1 setContentOffset_];
  }

  return result;
}

void sub_1E3FFAA2C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v58 - v8;
  v10 = sub_1E41C8EFC();
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  OUTLINED_FUNCTION_26_0();
  v14 = v13;
  (*(v12 + 464))();
  OUTLINED_FUNCTION_38();

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_25;
  }

  if (!sub_1E32AE9B0(v14))
  {

    goto LABEL_25;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_34_0();
  if (v16)
  {
    v1 = *(v14 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_51:
  v52 = OUTLINED_FUNCTION_35(v16);
  v15 = sub_1E3B1DC54(v52, v14, 1, v15);
LABEL_11:
  *(v15 + 2) = v14;
  sub_1E329504C(&v60, &v15[32 * v11 + 32]);
  while (2)
  {
    v21 = *(*v0 + 576);
    v3 = *v0 + 576;

    v23 = v21(v22);
    if (v23)
    {
      OUTLINED_FUNCTION_26_0();
      v26 = v25;
      (*(v24 + 200))();
      OUTLINED_FUNCTION_31_4();

      if (v26)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        *&v60 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = OUTLINED_FUNCTION_27();
          v15 = sub_1E3B1DC54(v53, v54, v55, v15);
        }

        v28 = *(v15 + 2);
        v27 = *(v15 + 3);
        if (v28 >= v27 >> 1)
        {
          v56 = OUTLINED_FUNCTION_35(v27);
          v15 = sub_1E3B1DC54(v56, v28 + 1, 1, v15);
        }

        *(v15 + 2) = v28 + 1;
        v23 = sub_1E329504C(&v60, &v15[32 * v28 + 32]);
      }
    }

    v29 = v21(v23);

    if (v29)
    {
      OUTLINED_FUNCTION_8();
      (*(v30 + 224))();

      v31 = sub_1E4204724();
      if (__swift_getEnumTagSinglePayload(v9, 1, v31))
      {
        sub_1E325F748(v9, &qword_1ECF2B7B0, &qword_1E429EC30);
      }

      else
      {
        v32 = sub_1E4204714();
        sub_1E325F748(v9, &qword_1ECF2B7B0, &qword_1E429EC30);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        *&v60 = v32;
        v33 = sub_1E3B1DC54(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v57 = OUTLINED_FUNCTION_35(v34);
          v33 = sub_1E3B1DC54(v57, v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        sub_1E329504C(&v60, &v33[32 * v35 + 32]);
        v62 = v33;
      }
    }

    v58[0] = v1;
    v58[1] = v15;
    v36 = sub_1E3FF8FEC();
    v37 = sub_1E32AE9B0(v36);
    v38 = 0;
    v9 = (v36 & 0xC000000000000001);
    v59 = MEMORY[0x1E69E7CC0];
    v15 = &qword_1E429EC30;
    while (1)
    {
      if (v37 == v38)
      {

        v50 = sub_1E3FFB0A8(v59);

        sub_1E3FFB1BC(v50);

        goto LABEL_25;
      }

      if (v9)
      {
        v40 = MEMORY[0x1E6911E60](v38, v36);
        v39 = v40;
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v3 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if ((*(*v39 + 576))(v40))
      {
        OUTLINED_FUNCTION_26_0();
        (*(v41 + 224))();

        v42 = sub_1E4204724();
        if (__swift_getEnumTagSinglePayload(v6, 1, v42))
        {

          sub_1E325F748(v6, &qword_1ECF2B7B0, &qword_1E429EC30);
          goto LABEL_39;
        }

        sub_1E4204714();
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(v6, &qword_1ECF2B7B0, &qword_1E429EC30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = OUTLINED_FUNCTION_27();
          v59 = sub_1E39239C8(v46, v47, v48, v49);
        }

        v44 = v59[2];
        v43 = v59[3];
        if (v44 >= v43 >> 1)
        {
          v59 = sub_1E39239C8((v43 > 1), v44 + 1, 1, v59);
        }

        v45 = v59;
        v59[2] = v44 + 1;
        v45[v44 + 4] = v6;
        v38 = v3;
      }

      else
      {

LABEL_39:
        ++v38;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_41_1();
    v1 = v51;
LABEL_7:

    type metadata accessor for CollectionViewModel();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v0 = v17;
      v62 = v15;
      if (!(*(*v3 + 576))())
      {
        continue;
      }

      OUTLINED_FUNCTION_26_0();
      v20 = v19;
      (*(v18 + 200))();
      OUTLINED_FUNCTION_31_4();

      if (!v20)
      {
        continue;
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *&v60 = v20;
      v15 = sub_1E3B1DC54(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = *(v15 + 2);
      v16 = *(v15 + 3);
      v14 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_11;
    }

    break;
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FFB0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E37EBF70(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E37EBF70((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1E329504C(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E3FFB1BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3FFD248(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E3FFB280()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v89 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v90 = v14;
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = *(v2 + 24);
  v19 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  v92 = *(v2 + 16);
  *v19 = v92;
  v19[1] = v18;

  if (!v18 || (sub_1E378CB90(v4, 2, v20) & 1) == 0 && (sub_1E378CB90(v4, 1, v21) & 1) == 0 || (sub_1E3FF8F14() & 1) == 0)
  {
    j__OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_25_2();

    sub_1E378D8AC(v33, v34, v35, v36);
    return;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  sub_1E3FFAA2C();
  v23 = v22;
  v24 = sub_1E3FFBD3C(v2);
  if (!v24)
  {

    if (!sub_1E41C8EFC())
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_26_0();
    v39 = (*(v38 + 464))();

    if (!v39)
    {
      goto LABEL_60;
    }

    if (sub_1E32AE9B0(v39))
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
LABEL_63:
        OUTLINED_FUNCTION_41_1();
        v41 = v82;
      }

      else
      {
        OUTLINED_FUNCTION_34_0();
        if (!v40)
        {
          __break(1u);
          goto LABEL_65;
        }

        v41 = *(v39 + 32);
      }

      type metadata accessor for CollectionViewModel();
      if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), (v43 = (*(v42 + 1040))()) == 0))
      {
LABEL_59:

        goto LABEL_60;
      }

      v44 = v43;
      if (sub_1E32AE9B0(v43))
      {
        v90 = v41;
        if ((v44 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v45)
          {
            __break(1u);
            return;
          }

          v91 = *(v44 + 32);

          goto LABEL_24;
        }

LABEL_65:
        OUTLINED_FUNCTION_41_1();
        v91 = v83;
LABEL_24:

        v46 = sub_1E324FBDC();
        v47 = *(v89 + 2);
        v86 = v46;
        v87 = v89 + 16;
        v85 = v47;
        (v47)(v12);
        v48 = sub_1E41FFC94();
        v49 = sub_1E42067F4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1E323F000, v48, v49, "MultiViewPlayerHUDTemplateController:: cannot add game because the playable is missing", v50, 2u);
          OUTLINED_FUNCTION_36_70();
        }

        v88 = *(v89 + 1);
        v89 += 8;
        v88(v12, v5);
        (*(*v91 + 1032))(sub_1E3FFDEA8, v2);
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        sub_1E404B22C();
        v51 = objc_opt_self();
        v52 = [v51 sharedInstance];
        v53 = sub_1E4205ED4();
        v54 = [v52 multiviewContainsMediaItemWithIdentifier_];

        if (v54)
        {
          v85(v9, v86, v5);

          v55 = sub_1E41FFC94();
          v56 = sub_1E42067F4();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v93[0] = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_1E3270FC8(v92, v18, v93);
            _os_log_impl(&dword_1E323F000, v55, v56, "MultiViewPlayerHUDTemplateController:: remove %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v58);
            OUTLINED_FUNCTION_36_70();
            OUTLINED_FUNCTION_21_0();
          }

          v88(v9, v5);
          v59 = [v51 sharedInstance];
          v60 = sub_1E4205ED4();
          [v59 removeFromMultiviewWithIdentifier:v60 animated:1];
        }

        goto LABEL_59;
      }
    }

LABEL_52:

    goto LABEL_60;
  }

  v88 = v24;
  v89 = [v24 tvpPlaylist];
  v25 = objc_opt_self();
  v26 = [v25 sharedInstance];
  v27 = OUTLINED_FUNCTION_31_85();
  v28 = [v23 multiviewContainsMediaItemWithIdentifier_];

  if (v28)
  {
    OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_detailDelegate, v93);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = OUTLINED_FUNCTION_31_85();
      v30 = sub_1E42062A4();

      v31 = sub_1E42062A4();

      OUTLINED_FUNCTION_38_70(v32, sel_multiPlayerDetailsViewControllerDidDeselectLockupWithIdentifier_impressionsData_locationData_);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v66 = [v25 sharedInstance];
    v65 = v89;
    [v66 removePlaylistFromMultiview:v89 animated:1];

    v18 = 0;
  }

  else
  {
    v61 = sub_1E3FF8EBC(&selRef_multiviewPlayerCount);
    if (v61 >= sub_1E3FF8EBC(&selRef_maxMultiviewPlayerCount))
    {

      v18 = 0;
      v65 = v89;
    }

    else
    {
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_detailDelegate, &v94);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = OUTLINED_FUNCTION_31_85();
        v62 = sub_1E42062A4();

        v63 = sub_1E42062A4();

        OUTLINED_FUNCTION_38_70(v64, sel_multiPlayerDetailsViewControllerDidSelectLockupWithIdentifier_impressionsData_locationData_);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v67 = [v25 sharedInstance];
      OUTLINED_FUNCTION_4_0();
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_23_9(v68);
      v93[4] = sub_1E3FFDEB4;
      v93[5] = v18;
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 1107296256;
      v93[2] = sub_1E37EB82C;
      v93[3] = &block_descriptor_154;
      v69 = _Block_copy(v93);

      v18 = 1;
      v65 = v89;
      [v67 addPlaylistToMultiview:v89 animated:1 completion:v69];
      _Block_release(v69);
    }
  }

  v70 = sub_1E3FF8FEC();
  v12 = sub_1E32AE9B0(v70);
  v71 = 0;
  v5 = v70 & 0xC000000000000001;
  v9 = (v70 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v12 == v71)
    {

      goto LABEL_52;
    }

    if (v5)
    {
      break;
    }

    if (v71 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (*(v70 + 8 * v71 + 32) == v2)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (__OFADD__(v71++, 1))
    {
      goto LABEL_62;
    }
  }

  v73 = MEMORY[0x1E6911E60](v71, v70);
  swift_unknownObjectRelease();
  v74 = v73 == v2;
  v65 = v89;
  if (!v74)
  {
    goto LABEL_43;
  }

LABEL_48:

  v75 = sub_1E41C85FC();
  MEMORY[0x1E6909190](v71, 0);
  v76 = sub_1E41FE7E4();
  (*(v90 + 8))(v17, v91);
  v77 = [v75 cellForItemAtIndexPath_];

  if (!v77)
  {

    goto LABEL_54;
  }

  type metadata accessor for CardCollectionViewCell();
  v78 = swift_dynamicCastClass();
  v79 = v88;
  if (v78)
  {
    v80 = v78;
    v81 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v78) + 0xE0))(v18);
    (*((*v81 & *v80) + 0xB0))(v18);

LABEL_54:
    goto LABEL_60;
  }

LABEL_60:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3FFBD3C(uint64_t a1)
{
  LOBYTE(v14) = 1;
  OUTLINED_FUNCTION_26_0();
  v2 += 97;
  v3 = *v2;
  (*v2)(v15, &v14, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v16)
  {
    goto LABEL_8;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_21_12(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = v14;
  LOBYTE(v14) = 2;
  v6 = v3(v15, &v14, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v16)
  {

LABEL_8:
    sub_1E325F748(v15, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_12(v6) & 1) == 0)
  {

    return 0;
  }

  v7 = v14;
  sub_1E3744600(v5);
  OUTLINED_FUNCTION_38();

  v8 = sub_1E3744600(v7);

  v9 = objc_allocWithZone(VUIVideosPlayable);
  result = sub_1E37448C4(a1, v8);
  if (result)
  {
    v11 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4298880;
    *(v12 + 32) = v11;
    v13 = objc_allocWithZone(VUIMediaInfo);
    return sub_1E376538C(8, v12, MEMORY[0x1E69E7CC0], 0);
  }

  return result;
}

void sub_1E3FFBF10(void *a1, uint64_t a2)
{
  type metadata accessor for CardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    if (*(a2 + 24))
    {
      v3 = a1;
      v4 = [objc_opt_self() sharedInstance];
      v5 = sub_1E4205ED4();
      v6 = [v4 multiviewContainsMediaItemWithIdentifier_];

      OUTLINED_FUNCTION_15_161();
      (*(v7 + 176))(v6);
      if ((v6 & 1) == 0)
      {
        sub_1E3FF8EBC(&selRef_multiviewPlayerCount);
        sub_1E3FF8EBC(&selRef_maxMultiviewPlayerCount);
      }

      OUTLINED_FUNCTION_19_144();
      (*(v8 + 200))();
      OUTLINED_FUNCTION_19_144();
      (*(v9 + 168))();
    }

    else
    {
      OUTLINED_FUNCTION_15_161();
      v11 = *(v10 + 176);
      v12 = a1;
      v11(0);
    }

    OUTLINED_FUNCTION_19_144();
    (*(v13 + 224))(v14 & 1);
  }
}

uint64_t sub_1E3FFC0F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1E3ED6E94();
  type metadata accessor for Accessibility();
  sub_1E42074B4();

  sub_1E41FE844();
  v8 = sub_1E4207944();
  MEMORY[0x1E69109E0](v8);

  sub_1E40A7DC8();
  v10 = v9;
  v12 = v11;

  sub_1E3839D34(v10, v12, a2);
  sub_1E3FFBF10(a2, a4);
  v13 = (v5 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {

    v15(v16);
    v17 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v17, v18);
    v19 = *v13;
    v20 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    return sub_1E34AF594(v19, v20);
  }

  return result;
}

id sub_1E3FFC24C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E378CF54(a1, a2, a3);
  v5 = v4;
  if (v4)
  {
    sub_1E3FFBF10(v4, a3);
  }

  return v5;
}

void sub_1E3FFC288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if ((a2 & 1) == 0)
  {
    sub_1E3FFA4B4();
    if (!sub_1E41C8EFC())
    {
      return;
    }

    v21 = sub_1E3FF8FEC();
    v22 = sub_1E32AE9B0(v21);

    if (v22)
    {
      sub_1E405123C();
      v23 = sub_1E41C85FC();
      MEMORY[0x1E6909190](0, 0);
      v24 = sub_1E41FE7E4();
      (*(v7 + 8))(v11, v5);
      [v23 scrollToItemAtIndexPath:v24 atScrollPosition:8 animated:0];

      [v3 setNeedsFocusUpdate];
      [v3 updateFocusIfNeeded];

      return;
    }

    goto LABEL_14;
  }

  if (!sub_1E41C8EFC())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v14 = v13;
  (*(v12 + 464))();
  OUTLINED_FUNCTION_38();

  if (!v14)
  {
    return;
  }

  if (sub_1E32AE9B0(v14))
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v15)
      {
        __break(1u);
        return;
      }
    }

    type metadata accessor for CollectionViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_4_0();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_23_9(v18);
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v17;
      v20 = *(*v17 + 1504);

      v20(1, 0, 1, sub_1E3FFDF20, v19);
    }

LABEL_14:

    return;
  }
}

void sub_1E3FFC5B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_5_0(v3 + 16, &v42);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v36 = Strong;
  v12 = sub_1E41C85FC();
  v13 = [v12 indexPathsForVisibleItems];

  v14 = sub_1E42062B4();
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_21:

    v34 = sub_1E41C85FC();
    [v34 setNeedsFocusUpdate];

    v35 = sub_1E41C85FC();
    [v35 updateFocusIfNeeded];

LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v6 + 16;
  v17 = *(v6 + 16);
  v18 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v37 = *(v16 + 56);
  v38 = v17;
  v19 = (v16 - 8);
  while (1)
  {
    v20 = v38(v10, v18, v4);
    if (!v1)
    {
      goto LABEL_18;
    }

    v21 = (*(*v1 + 1040))(v20);
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = v21;
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if (!(v21 >> 62))
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_17;
    }

    if (sub_1E4207384())
    {
      break;
    }

LABEL_17:

LABEL_18:
    (*v19)(v10, v4);
    v18 += v37;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v24 = v33;
    goto LABEL_11;
  }

  if (*(v23 + 16))
  {
    v24 = *(v22 + 32);

LABEL_11:

    v26 = (*(*v24 + 872))(v25);

    if (v26)
    {
      v27 = sub_1E41FE844();
      v41[1] = v26;
      v39 = v27;
      v40 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v28);
      sub_1E38D2054(&v39, v41);

      v29 = v41[0];
      if (v41[0])
      {
        v30 = sub_1E41C85FC();
        v31 = sub_1E41FE7E4();
        v32 = [v30 cellForItemAtIndexPath_];

        if (v32)
        {
          sub_1E3FFBF10(v32, v29);
        }

        else
        {
        }
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1E3FFC9A4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (!sub_1E41C8EFC())
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26_0();
  v9 = v8;
  (*(v7 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!sub_1E32AE9B0(v9))
  {

LABEL_11:
    v12 = 0;
    while (1)
    {
      v13 = sub_1E41C85FC();
      v14 = [v13 indexPathsForVisibleItems];

      v15 = sub_1E42062B4();
      v16 = *(v15 + 16);
      if (!v16)
      {

        OUTLINED_FUNCTION_25_2();

        return;
      }

      v17 = *(v2 + 16);
      v2 += 16;
      v35 = v2;
      v18 = v15 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
      v36 = *(v2 + 56);
      v37 = v17;
      v19 = (v2 - 8);
      while (1)
      {
        v20 = v37(v6, v18, v0);
        if (!v12)
        {
          goto LABEL_29;
        }

        v21 = (*(*v12 + 1040))(v20);
        if (!v21)
        {
          goto LABEL_29;
        }

        v22 = v21;
        v23 = v21 & 0xFFFFFFFFFFFFFF8;
        if (!(v21 >> 62))
        {
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_28;
        }

        if (sub_1E4207384())
        {
          break;
        }

LABEL_28:

LABEL_29:
        (*v19)(v6, v0);
        v18 += v36;
        if (!--v16)
        {

          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_41_1();
        v24 = v33;
        goto LABEL_21;
      }

      if (*(v23 + 16))
      {
        v24 = *(v22 + 32);

LABEL_21:

        v26 = (*(*v24 + 872))(v25);

        if (v26)
        {
          v27 = sub_1E41FE844();
          v40[1] = v26;
          v38 = v27;
          v39 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v28);
          sub_1E38D2054(&v38, v40);

          v29 = v40[0];
          if (v40[0])
          {
            v30 = sub_1E41C85FC();
            v31 = sub_1E41FE7E4();
            v32 = [v30 cellForItemAtIndexPath_];

            if (v32)
            {
              sub_1E3FFBF10(v32, v29);
            }

            else
            {
            }

            v2 = v35;
          }
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_36:
      v11 = v2;
      OUTLINED_FUNCTION_41_1();
LABEL_7:

      type metadata accessor for CollectionViewModel();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {
      }

      v2 = v11;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_34_0();
  if (v10)
  {
    v11 = v2;

    goto LABEL_7;
  }

  __break(1u);
}

double sub_1E3FFCE28@<D0>(uint64_t a1@<X8>)
{
  sub_1E41CD384(v6);
  if (v6[3])
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v2 = sub_1E3FFBD3C(v5);
      if (v2)
      {
        v3 = v2;
        *(a1 + 24) = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);

        *a1 = v3;
        return result;
      }
    }
  }

  else
  {
    sub_1E325F748(v6, &unk_1ECF296E0, &unk_1E4298030);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1E3FFCF08(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  result = OUTLINED_FUNCTION_5_0(v5, v6);
  v8 = *v3;
  if (*v3)
  {

    v8(a3 & 1);
    v9 = OUTLINED_FUNCTION_67_0();
    return sub_1E34AF594(v9, v10);
  }

  return result;
}

void sub_1E3FFCF78(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1E3FFCF08(v9, v8, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_1E3FFCFF4()
{

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad), *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad + 8));
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract), *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract + 8));
  v1 = v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_detailDelegate;

  return sub_1E3DD28C4(v1);
}

void *sub_1E3FFD118(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E210, &qword_1E42E5020);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218, &qword_1E42E5028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3FFD248(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3B1DC54(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3FFD2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E210, &qword_1E42E5020);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218, &qword_1E42E5028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3FFD3E0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3FFE320(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E3FFD44C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3FFD44C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218, &qword_1E42E5028);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3FFD5C0(v7, v8, a1, v4);
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
    return sub_1E3FFD550(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3FFD550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
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

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
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

uint64_t sub_1E3FFD5C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v82 = result;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
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
          v14 += 2;
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

            v21 = 16 * v6;
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
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
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
            return result;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
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

      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        result = sub_1E37FFF70((v37 > 1), v38 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v39;
      v40 = v8 + 32;
      v41 = (v8 + 32 + 16 * v38);
      *v41 = v7;
      v41[1] = v9;
      v84 = *v82;
      if (!*v82)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = (v40 + 16 * (v39 - 1));
          v44 = (v8 + 16 * v39);
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = *(v8 + 32);
            v46 = *(v8 + 40);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
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

          v74 = (v40 + 16 * (v42 - 1));
          v75 = *v74;
          v76 = (v40 + 16 * v42);
          v77 = v76[1];
          result = sub_1E3FFDBC4((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v84);
          if (v5)
          {
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = *(v8 + 16);
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          result = memmove((v40 + 16 * v42), v76 + 2, 16 * (v79 - 1 - v42));
          *(v78 + 16) = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = v40 + 16 * v39;
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*v82)
  {
    goto LABEL_115;
  }

  sub_1E3FFDA98(&v86, *v82, a3);
}

uint64_t sub_1E3FFDA98(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
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
    sub_1E3FFDBC4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1E3FFDBC4(char *__src, char *__dst, char *a3, char *a4)
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
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 16;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 16;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 16;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_25:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v11 - 2) < *v16)
    {
      v14 = v5 + 16 == v6;
      v6 -= 16;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

void sub_1E3FFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1E4205ED4();
  v10 = sub_1E4205ED4();

  v11 = sub_1E4205C44();

  [a7 post:v9 title:v10 body:a5 options:v11];
}

void sub_1E3FFDE3C()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    sub_1E404B22C();
  }
}

void sub_1E3FFDEB4(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0(v1 + 16, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      sub_1E404B22C();
    }
  }
}

uint64_t type metadata accessor for MultiViewPlayerHUDTemplateController(uint64_t a1)
{
  result = qword_1EE290C80;
  if (!qword_1EE290C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FFE000(unint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E32AE9B0(a1);
  if (!v3)
  {
    v6 = v2;
LABEL_23:
    v24 = v6;

    sub_1E3FFD3E0(&v24);
    v21 = v24[2];
    if (v21)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v22 = 40;
      do
      {

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v22 += 16;
        --v21;
      }

      while (v21);

      v23 = v24;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = v23;
    sub_1E379738C(v2);
    return;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_31;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, a1);
    }

    else
    {
      v7 = *(a1 + 8 * v5 + 32);
    }

    if (*(v7 + 24))
    {
      v8 = [objc_opt_self() sharedInstance];
      v9 = sub_1E4205ED4();
      v10 = [v8 indexOfMediaItemInMultiviewWithIdentifier_];

      v11 = sub_1E41FDD54();
      if (v11 < 0 || v10 != v11)
      {
        break;
      }
    }

    MEMORY[0x1E6910BF0](v12);
    v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
    {
      OUTLINED_FUNCTION_35(v13);
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v25;
LABEL_20:
    if (v4 == ++v5)
    {
      goto LABEL_23;
    }
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_27();
      v6 = sub_1E3FFD118(v17, v18, v19, v6);
    }

    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v20 = OUTLINED_FUNCTION_35(v14);
      v6 = sub_1E3FFD118(v20, v15 + 1, 1, v6);
    }

    v6[2] = v15 + 1;
    v16 = &v6[2 * v15];
    v16[4] = v10;
    v16[5] = v7;
    goto LABEL_20;
  }

  __break(1u);
LABEL_31:
  __break(1u);

  __break(1u);
}

uint64_t sub_1E3FFE2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3FFE334()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E3286A7C;

  return sub_1E3FF9D7C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3FFE400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E220, &qword_1E42E5040);
  return sub_1E3FFE454(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1E3FFE454@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E298, &qword_1E42E5288);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 vui_nativeScale];
  v12 = v11;

  v13 = *(v6 + 16);
  v13(v9, a1, v4);
  v13(a2, v9, v4);
  *&a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E2A0, &unk_1E42E5290) + 48)] = 1.0 / v12;
  return (*(v6 + 8))(v9, v4);
}

double sub_1E3FFE5B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 vui_nativeScale];
  v4 = v3;

  return 1.0 / v4;
}

uint64_t sub_1E3FFE630@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = v2;
  v52[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E228, &qword_1E42E5048);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E230, &unk_1E42E5050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v57 = OUTLINED_FUNCTION_10_161();
  v58 = v2[4];
  v53 = *(v2 + 1);
  v54 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  v52[1] = a2;
  if (v55.n128_f64[0] != 0.0 || v55.n128_f64[1] != 0.0)
  {
    v53 = *(v2 + 1);
    v54 = v2[4];
    sub_1E42038F4();
    v17 = v55.n128_f64[0];
LABEL_7:
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v17);
    v22 = j_nullsub_1(v18, v19, v20, v21);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    *v3 = sub_1E4201D44();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v29 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E238, &qword_1E42E5060) + 44);
    v30 = [objc_opt_self() mainScreen];
    [v30 vui_nativeScale];
    v32 = v31;

    sub_1E4202734();
    v33 = OUTLINED_FUNCTION_11_177();
    a2(v33, v52[0], v6);
    a2(v29, v9, v6);
    v34 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E240, &qword_1E42E5068) + 48);
    *v34 = 1.0 / v32;
    *(v34 + 8) = v30;
    *(v34 + 16) = v22;
    *(v34 + 24) = v24;
    *(v34 + 32) = v26;
    *(v34 + 40) = v28;
    v35 = OUTLINED_FUNCTION_9_178(v34);
    v36(v35);
    v55 = v57;
    v56 = v58;
    sub_1E4203914();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_33_4();
    sub_1E32752B0(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_224(v43, v44, v41, v42, v41 & 1);

    OUTLINED_FUNCTION_33_4();
    return sub_1E325F6F0(v45, v46, v47);
  }

  v11 = *v2;
  if (*v4)
  {
    v12 = *(*v11 + 184);

    v14 = v12(v13);
    v16 = v15;

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *&v14;
    }

    goto LABEL_7;
  }

  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_276();
  v51 = sub_1E3FFF1E4(v49, v50, &unk_1E42BD340);
  result = OUTLINED_FUNCTION_6_46(v51);
  __break(1u);
  return result;
}

uint64_t sub_1E3FFE9DC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = v2;
  v47[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E250, &qword_1E42E5070);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E258, &qword_1E42E5078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v52 = OUTLINED_FUNCTION_10_161();
  v53 = v2[4];
  v48 = *(v2 + 1);
  v49 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  v47[1] = a2;
  if (v50.n128_f64[0] != 0.0 || v50.n128_f64[1] != 0.0)
  {
    v48 = *(v2 + 1);
    v49 = v2[4];
    sub_1E42038F4();
    v17 = v50.n128_f64[0];
LABEL_7:
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v17);
    j_nullsub_1(v18, v19, v20, v21);
    v23 = v22;
    *v3 = sub_1E4201D44();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v24 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E260, &qword_1E42E5080) + 44);
    v25 = [objc_opt_self() mainScreen];
    [v25 vui_nativeScale];
    v27 = v26;

    sub_1E4202734();
    v28 = OUTLINED_FUNCTION_11_177();
    a2(v28, v47[0], v6);
    a2(v24, v9, v6);
    v29 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E268, &qword_1E42E5088) + 48);
    *v29 = 1.0 / v27;
    *(v29 + 8) = v25;
    *(v29 + 16) = 0;
    *(v29 + 24) = v23;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0;
    v30 = OUTLINED_FUNCTION_9_178(v29);
    v31(v30);
    v50 = v52;
    v51 = v53;
    sub_1E4203914();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_33_4();
    sub_1E32752B0(v32, v33, v34, v35);
    v36 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_224(v38, v39, v36, v37, v36 & 1);

    OUTLINED_FUNCTION_33_4();
    return sub_1E325F6F0(v40, v41, v42);
  }

  v11 = *v2;
  if (*v4)
  {
    v12 = *(*v11 + 184);

    v14 = v12(v13);
    v16 = v15;

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *&v14;
    }

    goto LABEL_7;
  }

  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_276();
  v46 = sub_1E3FFF1E4(v44, v45, &unk_1E42BD340);
  result = OUTLINED_FUNCTION_6_46(v46);
  __break(1u);
  return result;
}

__n128 sub_1E3FFED70@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_276();
  sub_1E3FFF1E4(v2, v3, &unk_1E42BD340);
  v4 = sub_1E4201754();
  v6 = v5;
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  result = v8;
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v6;
  a1[1] = v8;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t sub_1E3FFEE18@<X0>(uint64_t a3@<X8>)
{
  sub_1E4203B04();
  sub_1E4203DA4();
  sub_1E4200D94();
  v5 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E278, &qword_1E42E5090) + 36));
  *v5 = v10;
  v5[1] = v11;
  v5[2] = v12;
  v6 = *sub_1E3E60170();
  v7 = sub_1E38F08C4(v6);

  LOBYTE(v6) = sub_1E4202734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E280, &qword_1E42E5098);
  v9 = a3 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = v6;
  return result;
}

uint64_t sub_1E3FFEF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E15resizableWindow10windowSize9isEnabledQrAA7BindingVySo6CGSizeVG_SbtFQOyAA6VStackVyAA05TupleC0VyAA01_C16Modifier_ContentVyAD17InsettedSeparatorVG_AA08ModifiedP0VyAD06SimpleR0VAA14_PaddingLayoutVGtGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(a4, a2, a3, v7);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1E3FFF070()
{
  result = qword_1EE289530;
  if (!qword_1EE289530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E280, &qword_1E42E5098);
    sub_1E3FFF128();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289530);
  }

  return result;
}

unint64_t sub_1E3FFF128()
{
  result = qword_1EE289750;
  if (!qword_1EE289750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E278, &qword_1E42E5090);
    sub_1E3FFF1E4(&qword_1EE288408, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289750);
  }

  return result;
}

uint64_t sub_1E3FFF1E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3FFF26C()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();

  sub_1E3FFF318();

  return v1;
}

double sub_1E3FFF318()
{
  v1 = v0;
  v2 = (*v0 + 1704);
  v3 = *v2;
  v4 = (*v2)();
  (*(*v4 + 1792))(10);

  v6 = (v3)(v5);
  v7 = *sub_1E3E5FD88();
  v8 = *(*v6 + 680);
  v9 = v7;
  v8(v7);

  (v3)(v10);
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 1984))(1);

  v13 = (v3)(v12);
  LOBYTE(v45[0]) = 3;
  LOBYTE(v58[0]) = 2;
  LOBYTE(v56[0]) = 1;
  sub_1E3C3DE00();
  LOBYTE(v52[0]) = v54[0];
  sub_1E3C3DE00();
  LOBYTE(v48[0]) = v50[0];
  sub_1E3C3DE00();
  v61 = v46[0];
  sub_1E3C2FCB8(v45, v58, v52, v48, &v61, v56, &qword_1F5D549D8, __src);
  LODWORD(v45[0]) = __src[0];
  WORD2(v45[0]) = __src[1];
  v14 = OUTLINED_FUNCTION_18();
  (*(*v13 + 1600))(v45, 48, v14 & 1, &qword_1F5D549D8);

  v16 = *(*v1 + 1728);
  v16(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 1696))(15);

  v19 = (v16)(v18);
  v20 = *sub_1E3E5FDEC();
  v21 = *(*v19 + 680);
  v22 = v20;
  v21(v20);

  v16(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 1984))(1);

  v16(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2056))(0, 0);

  v28 = (v16)(v27);
  memset(v45, 0, 32);
  LOBYTE(v45[2]) = 1;
  sub_1E3952C88();
  v58[0] = v29;
  v58[1] = v30;
  v58[2] = v31;
  v58[3] = v32;
  v59 = 0;
  sub_1E3952C88();
  v56[0] = v33;
  v56[1] = v34;
  v56[2] = v35;
  v56[3] = v36;
  v57 = 0;
  sub_1E3952C88();
  v54[0] = v37;
  v54[1] = v38;
  v54[2] = v39;
  v54[3] = v40;
  v55 = 0;
  type metadata accessor for UIEdgeInsets();
  v42 = v41;
  sub_1E3C3DE00();
  v50[0] = v52[0];
  v50[1] = v52[1];
  v51 = v53;
  sub_1E3C3DE00();
  v46[0] = v48[0];
  v46[1] = v48[1];
  v47 = v49;
  sub_1E3C2FCB8(v45, v58, v56, v50, v46, v54, v42, __src);
  memcpy(v45, __src, 0xE9uLL);
  v43 = OUTLINED_FUNCTION_18();
  (*(*v28 + 1600))(v45, 0, v43 & 1, v42);

  return result;
}

double sub_1E3FFF91C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E3FFF964()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

double sub_1E3FFFA10()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3FFFA54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void sub_1E3FFFAE8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 subviews];
  sub_1E373C4DC();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      goto LABEL_47;
    }

    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      [v10 removeFromSuperview];
    }
  }

  OUTLINED_FUNCTION_6_206();
  v13 = (*(v12 + 200))(&v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E2C8, &qword_1E42E52F8);
  sub_1E4205D14();
  v13(&v70, 0);
  OUTLINED_FUNCTION_6_206();
  v15 = *(v14 + 120);

  v15(v16);
  OUTLINED_FUNCTION_6_206();
  v18 = *(v17 + 144);

  v18(v19);
  if (a2)
  {
    v20 = *(a2 + 120);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v21 = sub_1E3BD61D8();
    v20 = v21;
  }

  v22 = (*(*a1 + 464))(v21);
  if (!v22)
  {

    return;
  }

  v23 = v22;
  v24 = sub_1E32AE9B0(v22);
  v25 = 0;
  v26 = v23 & 0xC000000000000001;
  v69 = v23 & 0xFFFFFFFFFFFFFF8;
  v60 = *MEMORY[0x1E69DB758];
  v59 = xmmword_1E4297BE0;
  v64 = v20;
  v67 = v24;
  v68 = v23;
  v65 = a2;
  v66 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v24 == v25)
    {

      return;
    }

    if (v26)
    {
      v27 = MEMORY[0x1E6911E60](v25, v23);
    }

    else
    {
      if (v25 >= *(v69 + 16))
      {
        goto LABEL_46;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (a2 && *v27 == _TtC8VideosUI13TextViewModel)
    {
      v28 = *(a2 + 104);
      v29 = off_1EE2836C0[0];

      (v29)(&v70);
      if (*(&v71 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1E329505C(&v70);
      }

      v30 = sub_1E38893DC(v27, 0, v28);
      if (v30)
      {
        v31 = v30;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v31;
        }

        v34 = [v32 vuiAttributedText];

        v35 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
        [v35 setLineBreakMode_];
        if (v34)
        {
          type metadata accessor for LanguageAwareString();
          v36 = v34;
          v37 = v35;
          v38 = sub_1E3D36A44();
          v39 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v36, v35, v38 & 1);
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            v41 = v40;
            OUTLINED_FUNCTION_21();
            v43 = *(v42 + 232);
            v44 = v31;
            v45 = v43();
            [v41 setVuiAttributedText_];

            v39 = v44;
            v20 = v64;
          }
        }

        if (UIAccessibilityButtonShapesEnabled())
        {
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v47 = v46;
            v48 = v31;
            v49 = [v47 vuiAttributedText];
            if (v49)
            {
              v50 = v49;
              v61 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
              inited = swift_initStackObject();
              v63 = v48;
              *(inited + 16) = v59;
              *(inited + 64) = MEMORY[0x1E69E6530];
              *(inited + 32) = v60;
              *(inited + 40) = 1;
              type metadata accessor for Key(0);
              v62 = v50;
              sub_1E3B9794C(&qword_1EE23B100, &unk_1E429A0E0);
              v52 = v60;
              sub_1E4205CB4();
              v20 = v64;
              v53 = sub_1E4205C44();

              v54 = v61;
              [v54 addAttributes:v53 range:{0, objc_msgSend(v54, sel_length)}];

              [v47 setVuiAttributedText_];
              v48 = v63;
            }
          }
        }

        sub_1E4000254(v31, v27);

        a2 = v65;
      }

      v24 = v67;
      v23 = v68;
      v26 = v66;
    }

    type metadata accessor for ImageViewModel();
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      v56 = v55;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v74 = 0;
      v75 = 1;
      v76 = 0;

      v57 = sub_1E3DF9F2C(v56, 0, &v70, v20);
      if (v57)
      {
        v58 = v57;
        sub_1E4000254(v57, v27);
      }
    }

    ++v25;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_1E4000254(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (v8)
  {
    v9 = (*(*v8 + 576))();
  }

  else
  {
    v9 = 0;
  }

  (*(*a2 + 584))(v9);
  [v3 addSubview_];
  v10 = *((*v6 & *v3) + 0xC8);

  v11 = v10(v15);
  sub_1E40011A4(a2, a1);
  v11(v15, 0);
  v15[3] = type metadata accessor for AttributionTextViewUIKit();
  v15[0] = v3;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v12 = v3;
  v13 = sub_1E3814AF0(v15, sel_handleSelected_);
  v14 = (*(*a2 + 544))([a1 addGestureRecognizer_]);
}

void sub_1E4000460(void *a1)
{
  v5 = [a1 view];
  if (v5)
  {
    OUTLINED_FUNCTION_21();
    v2 = (*(v1 + 184))();
    v3 = sub_1E3E2F1CC(v5, v2);

    if (v3)
    {
      OUTLINED_FUNCTION_25();
      v4();
    }

    else
    {
    }
  }
}

id sub_1E40005E0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_layout) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_viewModel) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels) = MEMORY[0x1E69E7CC8];
  v7 = type metadata accessor for AttributionTextViewUIKit();
  v3 = OUTLINED_FUNCTION_5_8();
  return objc_msgSendSuper2(v4, v5, v3, v1, v7);
}

void sub_1E400067C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels) = MEMORY[0x1E69E7CC8];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E4000730(CGFloat a1)
{
  sub_1E4000780(a1);
  OUTLINED_FUNCTION_21();
  (*(v1 + 160))();
  return v2;
}

void sub_1E4000780(CGFloat a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 112);
  v67 = 0.0;
  v5 = 0.0;
  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v6 + 152))(v69);

    if (v70)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = *&v69[1];
    }
  }

  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 152))(v71);

    v8 = v71[0];
    if (v72)
    {
      v8 = 0.0;
    }

    v67 = v8;
  }

  v59 = 0.0;
  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v9 + 176))(v73);
    v10 = *v73;
    v11 = *&v73[1];
    v12 = *&v73[2];
    v13 = *&v73[3];

    v59 = 0.0;
    if ((v74 & 1) == 0)
    {
      v59 = sub_1E3952BE0(v10, v11, v12, v13);
    }
  }

  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v14 + 152))(v75);
  }

  v15 = v4();
  v64 = 12.0;
  v65 = 12.0;
  if (v15)
  {
    OUTLINED_FUNCTION_4_240(v15);

    OUTLINED_FUNCTION_47_0();
    (*(v16 + 200))();

    v64 = OUTLINED_FUNCTION_8_189();
  }

  v17 = v4();
  if (v17)
  {
    OUTLINED_FUNCTION_4_240(v17);

    OUTLINED_FUNCTION_47_0();
    (*(v18 + 304))();

    v65 = OUTLINED_FUNCTION_8_189();
  }

  v19 = v4();
  v62 = 4.0;
  v63 = 4.0;
  if (v19)
  {
    OUTLINED_FUNCTION_4_240(v19);

    OUTLINED_FUNCTION_47_0();
    (*(v20 + 152))(v76);

    v21 = *&v76[1];
    if (v77)
    {
      v21 = 4.0;
    }

    v62 = v21;
  }

  v22 = v4();
  if (v22)
  {
    OUTLINED_FUNCTION_4_240(v22);

    OUTLINED_FUNCTION_47_0();
    (*(v23 + 152))(v78);

    v24 = *&v78[3];
    if (v79)
    {
      v24 = 4.0;
    }

    v63 = v24;
  }

  v25 = v4();
  if (v25)
  {
    OUTLINED_FUNCTION_4_240(v25);

    OUTLINED_FUNCTION_47_0();
    (*(v26 + 152))(v80);

    if (v81)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v80[0];
    }
  }

  else
  {
    v27 = 0.0;
  }

  v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v29 = OUTLINED_FUNCTION_5_8();
  v28(v29);
  nullsub_1();
  v60 = v31;
  v61 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v1 subviews];
  sub_1E373C4DC();
  v37 = sub_1E42062B4();

  v66 = sub_1E32AE9B0(v37);
  v38 = 0;
  v39 = 0;
  v40 = v67 + v27;
  while (v66 != v38)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1E6911E60](v38, v37);
    }

    else
    {
      if (v38 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v41 = *(v37 + 8 * v38 + 32);
    }

    v42 = v41;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    [v41 vui:0.0 sizeThatFits:0.0];
    width = v43;
    height = v45;
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      x = v62 + v5;
    }

    else
    {
      x = v5;
    }

    if (v47)
    {
      y = v40;
    }

    else
    {
      y = v67;
    }

    if (v47)
    {
      width = v64;
      height = v65;
      v5 = v63 + v62 + v5;
    }

    v83.origin.x = OUTLINED_FUNCTION_2_239();
    if (CGRectGetWidth(v83) > a1)
    {
      v84.origin.x = OUTLINED_FUNCTION_2_239();
      v91.origin.y = v60;
      v91.origin.x = v61;
      v91.size.width = v33;
      v91.size.height = v35;
      v85 = CGRectIntersection(v84, v91);
      x = v85.origin.x;
      y = v85.origin.y;
      width = v85.size.width;
      height = v85.size.height;
    }

    v50 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
    v86.origin.x = v50();
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    v87 = CGRectUnion(v86, v92);
    v51 = (v28)(v87.origin, *&v87.origin.y, v87.size, *&v87.size.height);
    v88.origin.x = (v50)(v51);
    if (CGRectGetWidth(v88) > a1)
    {
      v89.origin.x = v50();
      v93.origin.y = v60;
      v93.origin.x = v61;
      v93.size.width = v33;
      v93.size.height = v35;
      v90 = CGRectIntersection(v89, v93);
      (v28)(v90.origin, *&v90.origin.y, v90.size, *&v90.size.height);
LABEL_50:
      v52 = OUTLINED_FUNCTION_5_8();
      [v42 v53];

      v39 = 1;
      goto LABEL_52;
    }

    if (v39)
    {
      goto LABEL_50;
    }

    v54 = OUTLINED_FUNCTION_2_239();
    [v55 v56];
    [v42 frame];
    v58 = v57;

    v39 = 0;
    v5 = v5 + v59 + v58;
LABEL_52:
    ++v38;
  }
}

void sub_1E4000EC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AttributionTextViewUIKit();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v1 bounds];
  sub_1E4000780(v2);
}

id sub_1E4000FA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AttributionTextViewUIKit();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1E4001030(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 && (type metadata accessor for AttributionTextViewLayout(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;

    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AttributionTextViewLayout();

    v6 = sub_1E3C82468(v7);
    if (!a2)
    {
LABEL_8:
      v9 = [objc_allocWithZone(type metadata accessor for AttributionTextViewUIKit()) init];
      goto LABEL_9;
    }
  }

  type metadata accessor for AttributionTextViewUIKit();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = a2;
LABEL_9:
  OUTLINED_FUNCTION_21();
  v12 = *(v11 + 208);

  v12(a1, v6);

  v13 = v9;
  [v13 vui:1 isAccessibilityElement:?];
  type metadata accessor for Accessibility();
  sub_1E40A91FC(v9, 6, a1);

  return v13;
}

void sub_1E40011A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_1E4207384();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_1E373C6D0(v7, v8 + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1E400123C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return;
  }

  __break(1u);
}

void sub_1E400123C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E373C68C(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28858, &unk_1E4297B90);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E373C68C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_1E373C4DC();
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1E38CF6BC(v9, a2, a1, v13);

    v14 = a2;
  }
}

uint64_t sub_1E4001368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v7, a2);
  v14 = *(v5 + 8);
  v14(v7, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

uint64_t sub_1E40014FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4001578(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 104, a3);
  *(v3 + 104) = a1;
  return result;
}

uint64_t sub_1E40015D4(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 112, a3);
  *(v3 + 112) = a1;
  return result;
}

uint64_t sub_1E4001658(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 128, a3);
  *(v3 + 128) = a1;
  return result;
}

uint64_t sub_1E400168C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = sub_1E3D21824();
    v1 = *v2;
    *(v0 + 152) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E40016F0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = sub_1E3D21A0C();
    v1 = *v2;
    *(v0 + 160) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E4001788()
{
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E40017D4();

  return v1;
}

double sub_1E40017D4()
{
  sub_1E4001968();
  sub_1E4001ACC();
  OUTLINED_FUNCTION_8();
  (*(v0 + 1808))(1.0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1832))(6.0);
  OUTLINED_FUNCTION_36();
  (*(v2 + 1760))(17.0);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1784))(10.0);
  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1848))();
  sub_1E3C37CBC(v5, 17);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1896))();
  sub_1E3C37CBC(v7, 39);

  return result;
}

double sub_1E4001968()
{
  OUTLINED_FUNCTION_8();
  v0 += 231;
  v1 = *v0;
  v2 = (*v0)();
  (*(*v2 + 1984))(1);

  v4 = (v1)(v3);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  v9 = *(v1)(v8);
  (*(v9 + 1696))(19);

  return result;
}

double sub_1E4001ACC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 += 234;
  v3 = *v2;
  v4 = (*v2)();
  [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:7.0];
  (*(*v4 + 2144))(v5, 0);

  (v3)(v6);
  OUTLINED_FUNCTION_7_215();
  (*(*v1 + 312))(v7, 0);

  (v3)(v8);
  OUTLINED_FUNCTION_7_215();
  OUTLINED_FUNCTION_8();
  (*(v9 + 208))();

  v11 = (v3)(v10);
  v12 = *sub_1E3E5FD88();
  v13 = *(*v11 + 680);
  v14 = v12;
  v13(v12);

  return result;
}

double sub_1E4001CA4()
{

  return result;
}

uint64_t sub_1E4001CE4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E4001D2C()
{
  v0 = sub_1E4001CE4();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

uint64_t sub_1E4001DCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  v14[0] = 0xD000000000000019;
  v14[1] = 0x80000001E428D7C0;
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel) = a1;

  v10 = a1;
  v11 = sub_1E39C0300();
  if (v11)
  {
    swift_retain_n();
    sub_1E400203C();
    sub_1E40022D8();
    v14[0] = sub_1E40A0988();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8, &unk_1E42B5DF0);
    sub_1E4002618();
    v12 = sub_1E4200844();

    *(v11 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable) = v12;

    sub_1E4002B48(v10);
    sub_1E39BD568();
  }

  else
  {
  }

  return v11;
}

double sub_1E400203C()
{
  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel);
  if ([v4 downloadState] > 5)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_207();
  if (((1 << v5) & 0x36) == 0)
  {
    if (!v5)
    {
      v1 = 0;
      v0 = 0x80000001E428D8A0;
      v2 = 0xD00000000000001ALL;
      goto LABEL_4;
    }

LABEL_16:
    v19 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
    OUTLINED_FUNCTION_3_0(v3 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel, v20);
    *(v3 + v19) = 0;

    return result;
  }

  OUTLINED_FUNCTION_0_317();
LABEL_4:
  v6 = objc_opt_self();
  if ([v6 shouldShowExpiredImageWithDownloadState:objc_msgSend(v4 isExpired:sel_downloadState) isExpiringSoon:objc_msgSend(v4 hasFailed:{sel_isExpired), objc_msgSend(v4, sel_isExpiringSoon), OUTLINED_FUNCTION_8_190()}])
  {

    if (OUTLINED_FUNCTION_8_190())
    {
      v0 = 0x80000001E428D8A0;
      v2 = 0xD00000000000001ALL;
    }

    else
    {
      OUTLINED_FUNCTION_0_317();
      OUTLINED_FUNCTION_6_207();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (!v10)
  {
    v11 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v13;

  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v14;
  *(inited + 120) = v12;
  *(inited + 96) = v2;
  *(inited + 104) = v0;
  v15 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v16 = sub_1E3F5321C(39, v15, v3);
  v17 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_3_0(v3 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel, v23);
  *(v3 + v17) = v16;

  v22 = 14;
  v21 = MEMORY[0x1E69E6370];
  v20[0] = v1;
  sub_1E39C0CE4(&v22, v20);
  sub_1E329505C(v20);
  return result;
}

void sub_1E40022D8()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_225();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel);
  [v2 downloadState];
  v3 = objc_opt_self();
  if ([v3 shouldShowExpiredImageWithDownloadState:objc_msgSend(v2 isExpired:sel_downloadState) isExpiringSoon:objc_msgSend(v2 hasFailed:{sel_isExpired), objc_msgSend(v2, sel_isExpiringSoon), OUTLINED_FUNCTION_8_190()}])
  {

    if (OUTLINED_FUNCTION_8_190())
    {
      [v2 downloadState];
    }

    else
    {
      OUTLINED_FUNCTION_5_225();
    }
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E4205ED4();

    v7 = [v5 localizedStringForKey_];

    if (v7)
    {
      v8 = sub_1E4205F14();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    type metadata accessor for TextViewModel();
    v13[3] = MEMORY[0x1E69E6158];
    v13[0] = v8;
    v13[1] = v10;

    v11 = sub_1E3C27638(23, v13, v1, 0, 0);
    v12 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
    OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel, v13);
    *(v1 + v12) = v11;
  }

  else
  {
    __break(1u);
  }
}

double sub_1E4002564()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v2);
  if (swift_weakLoadStrong())
  {
    sub_1E400203C();
    sub_1E40022D8();
    type metadata accessor for DownloadMenuItemViewModel(0);
    sub_1E4002CD0(&qword_1ECF2F560, type metadata accessor for DownloadMenuItemViewModel, &unk_1E42E5480);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

unint64_t sub_1E4002618()
{
  result = qword_1EE28A1C0;
  if (!qword_1EE28A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEB8, &unk_1E42B5DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A1C0);
  }

  return result;
}

double sub_1E400267C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return result;
}

uint64_t sub_1E400272C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable))
  {

    sub_1E42004E4();
  }

  v1 = ViewModel.deinit();
  v2 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v1 + v2);

  return v1;
}

uint64_t sub_1E4002808()
{
  v0 = sub_1E400272C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E400285C(__objc2_class **a1)
{
  if (*a1 != _TtC8VideosUI25DownloadMenuItemViewModel)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
  OUTLINED_FUNCTION_5_0(a1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel, v18);
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel, v17);
  v7 = *(v2 + v6);
  if (!v5)
  {
    if (!v7)
    {

      goto LABEL_8;
    }

LABEL_14:
    v13 = 0;
    return v13 & 1;
  }

  v16[0] = v5;
  if (!v7)
  {
    goto LABEL_14;
  }

  v15[0] = v7;
  type metadata accessor for TextViewModel();
  sub_1E4002CD0(&qword_1EE283758, type metadata accessor for TextViewModel, &protocol conformance descriptor for ViewModel);

  v8 = sub_1E4205E84();

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_5_0(a1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel, v16);
  v10 = *(a1 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel, v15);
  v12 = *(v2 + v11);
  if (!v10)
  {

    if (!v12)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_13;
  }

  if (!v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  type metadata accessor for ImageViewModel();
  sub_1E4002CD0(&qword_1EE282FC0, type metadata accessor for ImageViewModel, &protocol conformance descriptor for ViewModel);

  v13 = sub_1E4205E84();

  return v13 & 1;
}

uint64_t sub_1E4002B48(void *a1)
{
  v1 = [a1 accessibilityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for DownloadMenuItemViewModel(uint64_t a1)
{
  result = qword_1EE296580;
  if (!qword_1EE296580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4002C00(uint64_t a1)
{
  sub_1E38C734C(319, &qword_1EE289FC0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E4002CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double (*sub_1E4002D18(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3ACA7D0();
  return sub_1E3DFE5C4;
}

uint64_t (*sub_1E4002D60(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3BD9EEC();
  return sub_1E4002DA8;
}

double sub_1E4002DA8(void *a1)
{
  *(a1[1] + 112) = *a1;

  return result;
}

uint64_t sub_1E4002DEC()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = vdupq_n_s64(0x3FD51EB851EB851FuLL);
  v1 = sub_1E3C2F9A0();

  sub_1E4002EF8();
  sub_1E4002E44();

  return v1;
}

double sub_1E4002E44()
{
  v1 = (*(*v0 + 1720))();
  sub_1E3C37CBC(v1, 119);

  v3 = (*(*v0 + 1744))(v2);
  sub_1E3C37CBC(v3, 118);

  return result;
}

double sub_1E4002EF8()
{
  v17[0] = sub_1E3952C10(10.0, 10.0);
  v17[1] = v1;
  v17[2] = v2;
  v17[3] = v3;
  LOBYTE(v17[4]) = 0;
  v32[0] = sub_1E3952C10(30.0, 30.0);
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v33 = 0;
  v30[0] = sub_1E3952C10(80.0, 80.0);
  v30[1] = v7;
  v30[2] = v8;
  v30[3] = v9;
  v31 = 0;
  v28[0] = sub_1E3952C10(30.0, 0.0);
  v28[1] = v10;
  v28[2] = v11;
  v28[3] = v12;
  v29 = 0;
  type metadata accessor for UIEdgeInsets();
  v14 = v13;
  sub_1E3C2FC98();
  v23[0] = v25;
  v23[1] = v26;
  v24 = v27;
  sub_1E3C3DE00();
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  sub_1E3C2FCB8(v17, v23, v32, v30, v28, v18, v14, __src);
  memcpy(v17, __src, 0xE9uLL);
  v15 = OUTLINED_FUNCTION_18();
  (*(*v0 + 1600))(v17, 1, v15 & 1, v14);
  sub_1E4003058();
  return sub_1E40032CC();
}

double sub_1E4003058()
{
  v1 = (*v0 + 1720);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 800))(1);

  v5 = *(v2)(v4);
  (*(v5 + 488))(2);

  v7 = *(v2)(v6);
  (*(v7 + 992))(21, 0);

  v9 = (v2)(v8);
  v13[0] = 0x4039000000000000;
  LOBYTE(v13[1]) = 0;
  v28 = 0x4054000000000000;
  v29 = 0;
  v26 = 0x4039000000000000;
  v27 = 0;
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v22 = v24;
  v23 = v25;
  sub_1E3C3DE00();
  v18 = v20;
  v19 = v21;
  sub_1E3C3DE00();
  v14 = v16;
  v15 = v17;
  sub_1E3C2FCB8(v13, &v22, &v18, &v28, &v26, &v14, v10, __src);
  memcpy(v13, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  (*(*v9 + 1600))(v13, 10, v11 & 1, v10);

  return result;
}

double sub_1E40032CC()
{
  v1 = (*(*v0 + 1744))();
  (*(*v1 + 488))(2);

  return result;
}

uint64_t sub_1E400335C()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

id sub_1E40033B0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_1E4003434()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E40034C0(char a1, double a2, double a3)
{
  v4 = v3;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = a2 != 0.0;
  if (a3 != 0.0)
  {
    v8 = 1;
  }

  if (v8 && (a1 & 1) != 0)
  {
    v9 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
    swift_beginAccess();
    v10 = *&v4[v9];
    if (v10)
    {
      v11 = *(*v10 + 392);

      v13 = v11(v12);

      if (v13)
      {
        v10 = (*(*v13 + 432))(v14);
        v16 = v15;

LABEL_10:
        v17 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
        swift_beginAccess();
        sub_1E400363C(v10, v16 & 1, a2, v18, *&v4[v17]);
        return;
      }

      v10 = 0;
    }

    v16 = 1;
    goto LABEL_10;
  }
}

double sub_1E400363C(uint64_t a1, char a2, double a3, double a4, double a5)
{
  type metadata accessor for MediaShowcaseCollectionLayout();
  if (sub_1E3FC7038(a3, a5))
  {
    sub_1E418A524();
  }

  else
  {
    sub_1E3A286D4();
    v9 = sub_1E41DA6E8();
    if (v9)
    {
      v10 = v9;
      [v9 vui_bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v20.origin.x = v12;
      v20.origin.y = v14;
      v20.size.width = v16;
      v20.size.height = v18;
      CGRectGetHeight(v20);
    }

    sub_1E3FC6C00();
    sub_1E3FC6BC0();
    if ((a2 & 1) == 0 && *&a1 > 0.0)
    {
      VUIFloorValue();
    }
  }

  return a3;
}

double sub_1E40037C8(uint64_t a1)
{
  if (!a1)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v2) = 0;
  (*(*a1 + 776))(&v3, &v2, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1E329505C(&v3);
    return *sub_1E3FC6B78();
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  return *sub_1E3FC6B78();
}

uint64_t sub_1E40038E4()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1696);

  v3 = v2();
  (*(*v3 + 208))(0x4034000000000000, 0);

  v5 = *(v2)(v4);
  (*(v5 + 312))(0x4034000000000000, 0);

  v7 = (v2)(v6);
  sub_1E3C37CBC(v7, 23);

  return v1;
}

id sub_1E4003ABC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseCollectionReusableView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return [v0 vui:0 layoutSubviews:v1 computationOnly:v2];
}

id sub_1E4003B88()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for BaseCollectionReusableView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E4003BF8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseCollectionReusableView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4003C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E4003CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth, a2);
  return [v3 setLineWidth_];
}

double sub_1E4003D14(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

id sub_1E4003D48(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  v4 = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth, v7);
  *(v1 + v3) = a1;
  return sub_1E4003CB8(v4, v5);
}

uint64_t sub_1E4003D94(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E4003DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor, a2);
  v5 = [*(v2 + v4) CGColor];
  [v3 setStrokeColor_];
}

id sub_1E4003E74(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1E4003EB8(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor, v8);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1E4003DF8(v6, v7);
}

uint64_t sub_1E4003F18(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E4003F7C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *sub_1E4003FC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E4004010(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E4004070(uint64_t a1, char a2, uint64_t *a3, SEL *a4)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E40040BC(a3, a4);
  }
}

void sub_1E40040BC(uint64_t *a1, SEL *a2)
{
  v5 = sub_1E40044CC();
  v6 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + v6, v7);
  v8 = *(v2 + v6);
  [v5 *a2];
}

void *sub_1E4004128(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E4004178(void *a1, uint64_t *a2, SEL *a3)
{
  v7 = *a2;
  OUTLINED_FUNCTION_3_0(v3 + *a2, v10);
  v8 = *(v3 + v7);
  *(v3 + v7) = a1;
  v9 = a1;

  sub_1E40040BC(a2, a3);
}

uint64_t sub_1E40041EC(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void *sub_1E400424C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E4004288(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  OUTLINED_FUNCTION_3_0(&v2[OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView], &v16);
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  v7 = a1;
  swift_beginAccess();
  v8 = *&v2[v6];
  if (v8)
  {
    v9 = v8;
    [v2 bounds];
    [v9 setFrame_];
    [v9 setClipsToBounds_];
    [v2 vui:v9 addSubview:v5 oldView:?];
    [v2 vui:v9 sendSubviewToBack:?];
    v10 = [v9 vuiLayer];
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_5_226();
      v13 = v12;
      OUTLINED_FUNCTION_5_226();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      [v11 setCornerRadius_];
    }
  }
}

void (*sub_1E40043D8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E4004460;
}

void sub_1E4004460(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E4004288(v3);
  }

  else
  {
    sub_1E4004288(*(*a1 + 24));
  }

  free(v2);
}

id sub_1E40044CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E40045FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  OUTLINED_FUNCTION_0_8();
  v20 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor) = 0;
  v21 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView) = 0;
  v22 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle;
  *(v12 + v22) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_duration) = a11;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth) = a12;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor) = a1;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_image) = a2;
  OUTLINED_FUNCTION_3_0(v12 + v20, v37);
  v23 = *(v12 + v20);
  *(v12 + v20) = a3;
  v24 = a1;
  v25 = a2;
  v26 = a3;

  OUTLINED_FUNCTION_3_0(v12 + v21, v36);
  v27 = *(v12 + v21);
  *(v12 + v21) = a4;
  v28 = a4;

  v29 = (v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_action);
  *v29 = a5;
  v29[1] = a6;
  type metadata accessor for CountDownProgressView();

  v30 = OUTLINED_FUNCTION_2_0();
  v33 = objc_msgSendSuper2(v31, v32, v30);
  sub_1E40048F8();
  sub_1E4004B8C();

  return v33;
}

uint64_t sub_1E40047EC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView) = 0;
  v6 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle;
  v7 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];

  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 0;

  type metadata accessor for CountDownProgressView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E40048F8()
{
  v1 = v0;
  Mutable = CGPathCreateMutable();
  [v0 frame];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  CGAffineTransformTranslate(&v19, &v20, 0.0, v3);
  CGAffineTransformRotate(&v20, &v19, -1.57079633);
  [v0 frame];
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  sub_1E4206894();
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  [v7 setPath_];
  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  [v7 setFillColor_];
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  v12 = [v11 CGColor];

  [v7 setStrokeColor_];
  (*((*v10 & *v1) + 0xA8))();
  [v7 setLineWidth_];
  OUTLINED_FUNCTION_5_226();
  OUTLINED_FUNCTION_5_226();
  v14 = (v13 - v6) * 0.5;
  OUTLINED_FUNCTION_5_226();
  [v7 setPosition_];
  v16 = [v1 vuiLayer];
  [v16 addSublayer_];

  v17 = [v1 vuiLayer];
  if (v17)
  {
    v18 = v17;
    [v17 setMasksToBounds_];
  }
}

id sub_1E4004B8C()
{
  v1 = sub_1E40044CC();
  [v1 setVuiContentMode_];

  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  [v0 bounds];
  [v3 setFrame_];

  [v0 vui:*(v0 + v2) addSubview:0 oldView:?];
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v6 = *(v0 + v2);
  v7 = v5();
  [v6 setVuiTintColor_];

  v8 = *((*v4 & *v0) + 0xF0);
  v9 = *(v0 + v2);
  v10 = v8();
  [v9 _setPreferredSymbolConfiguration_];

  v11 = *(v0 + v2);
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_image);

  return [v11 setImage_];
}

void sub_1E4004D04()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 1;
    sub_1E4004E84();
    v2 = sub_1E4004EC8(0x6E45656B6F727473, 0xE900000000000064);
    v3 = sub_1E41FE954();
    [v2 setFromValue_];

    v4 = sub_1E41FE954();
    [v2 setToValue_];

    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_duration);
    v6 = v2;
    [v6 setDuration_];
    [v6 setRemovedOnCompletion_];
    [v6 setFillMode_];
    [v6 setDelegate_];

    [*(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle) addAnimation:v6 forKey:0];
  }
}

unint64_t sub_1E4004E84()
{
  result = qword_1EE23B2C0;
  if (!qword_1EE23B2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B2C0);
  }

  return result;
}

id sub_1E4004EC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1E4205ED4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

id sub_1E4004F38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  [v1 removeAllAnimations];

  return [v1 setStrokeEnd_];
}

id sub_1E4004F90(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    v7 = sub_1E40044CC();
    [v3 bounds];
    [v7 setFrame_];
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CountDownProgressView();
  return objc_msgSendSuper2(&v9, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
}

id sub_1E40050C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountDownProgressView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40051A4(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) == 1 && (a2 & 1) != 0)
  {
    a1 = (*(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_action))(a1);
  }

  *(v2 + v3) = 0;
  return a1;
}

id sub_1E4005268(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = (*(*a1 + 552))();
  if (!v10)
  {
    v75 = 0u;
    v76 = 0u;
    goto LABEL_7;
  }

  v74[3] = &unk_1F5D7BE68;
  v74[4] = &off_1F5D7BC48;
  LOBYTE(v74[0]) = 6;
  sub_1E3F9F164(v74, v10, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v74);
  if (!*(&v76 + 1))
  {
LABEL_7:
    sub_1E325F748(&v75, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1E3744600(v74[0]);
  v12 = objc_allocWithZone(VUIContentMetadata);
  v13 = sub_1E37AD294(v11);
  if (a3)
  {

    v14 = a3;
    goto LABEL_12;
  }

  result = [objc_allocWithZone(VUIMediaTagsView) initWithFrame:a2 layout:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    v14 = result;

LABEL_12:
    v72 = v13;
    v16 = a3;
    if (a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = sub_1E4205CB4();
    }

    v18 = *(*a1 + 488);

    v20 = v18(v19);
    if (v20)
    {
      v22 = sub_1E373E010(61, v20, v21);

      if (v22)
      {
        v23 = v14;
        v24 = sub_1E40057DC(v14, v22);

        if (v24)
        {
          v25 = sub_1E4205F14();
          v70 = v26;
          v71 = v25;
          v27 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
          OUTLINED_FUNCTION_4_241(v27, v28, v29, v30, v31, v32);
          v33 = v24;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_3_243();
          sub_1E32A87C0(v34, v71, v70, v35);

          v17 = v73;
        }

        else
        {
        }
      }
    }

    v36 = v18(v20);
    if (v36)
    {
      v38 = sub_1E373E010(40, v36, v37);
    }

    else
    {
      v38 = 0;
    }

    v39 = v14;
    v40 = sub_1E4005F14(v14, a2, v38);
    if (v40)
    {
      v43 = v40;
      if ((TVAppFeature.isEnabled.getter(10, v41, v42) & 1) == 0)
      {

        if (a5)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      v44 = sub_1E4205F14();
      v46 = v45;
      v47 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_4_241(v47, v48, v49, v50, v51, v52);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_243();
      sub_1E32A87C0(v53, v44, v46, v54);

      v17 = v73;
    }

    if (a5)
    {
LABEL_27:
      if (v72)
      {
        v55 = a5;
        v56 = v72;
      }

      else
      {
        v58 = objc_allocWithZone(VUIContentMetadata);
        v59 = a5;
        v56 = [v58 init];
      }

      v60 = v72;
      sub_1E3744600(v17);

      v61 = sub_1E4205C44();

      [a5 parseDictionaryForContentMetadata:v56 additionalMetadata:v61];

      v62 = [a5 tagsViewDictionary];
      v63 = sub_1E4205C64();

      sub_1E3821F04(v63, v39);
LABEL_36:

      return v14;
    }

LABEL_30:
    if (v72)
    {
      v57 = v72;
    }

    else
    {
      v57 = [objc_allocWithZone(VUIContentMetadata) init];
    }

    v64 = v72;
    v65 = sub_1E3744600(v17);

    v66 = objc_allocWithZone(VUIMediaTagsViewHelper);
    v67 = sub_1E4006AD0(v57, v65);
    v68 = [v67 tagsViewDictionary];
    v69 = sub_1E4205C64();

    sub_1E3821F04(v69, v39);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40057DC(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = *(*a2 + 464);
  v7 = a1;
  v8 = v6();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  result = sub_1E32AE9B0(v8);
  v42 = v5;
  v43 = v7;
  v45 = v9;
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_0_318();
    v12 = 0;
    v46 = v9 & 0xC000000000000001;
    v13 = 2;
    v44 = v11;
    do
    {
      if (v46)
      {
        v14 = MEMORY[0x1E6911E60](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        sub_1E3F86AA4(v88);
        v56 = v88[1];
        v57 = v88[2];
        v58 = v88[3];
        v59 = v88[0];
        v50 = v88[5];
        v51 = v88[4];
        v49 = v89;
        v15 = v90 | ((v91 | (v92 << 16)) << 32);
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v16 = v96;
        v52 = v97;
        __src[0] = v60;
        __src[1] = v4;
        __src[2] = v63;
        __src[3] = v62;
        __src[4] = v65;
        __src[5] = v66;
        LOBYTE(__src[6]) = v2;
        HIBYTE(__src[6]) = BYTE6(v5);
        *(&__src[6] + 5) = WORD2(v5);
        *(&__src[6] + 1) = v5;
        __src[7] = v64;
        __src[8] = v6;
        __src[9] = v3;
        v84 = v13;
        v85 = v69;
        sub_1E325F748(__src, &qword_1ECF299E0, &qword_1E429C6D0);
        sub_1E3DF9E68(v98);
        v4 = v98[0];
        v17 = v98[1];
        v18 = v98[2];
        v19 = v99 | ((v100 | (v101 << 16)) << 32);
        v20 = v102;
        v47 = v103;
        v48 = v104;
        v61 = v105;
        v21 = v106;
        v22 = sub_1E3FA6210();
        v24 = *v22;
        v23 = v22[1];
        LOBYTE(v82[0]) = 0;
        if (v16 == 2)
        {
          v70 = v4;
          v71 = v17;
          v72 = v18;
          v73 = v24;
          v74 = v23;
          LOBYTE(v75) = v82[0];
          *(&v75 + 1) = v19;
          HIBYTE(v75) = BYTE6(v19);
          *(&v75 + 5) = WORD2(v19);
          v76 = v20;
          v77 = v47;
          v78 = v48;
          v79 = v61;
          LOWORD(v80) = v21;
          v25 = sub_1E37CCDFC(&v70);
          v13 = 2;
          v2 = v49;
          v65 = v51;
          v66 = v50;
          v69 = v52;
          v67 = v15;
          v6 = v54;
          v3 = v55;
          v4 = v56;
          v63 = v57;
          v64 = v53;
          v62 = v58;
        }

        else
        {
          v62 = v18;
          v63 = v17;
          v65 = v24;
          v66 = v23;
          v67 = v19;
          v69 = v21;
          v2 = v82[0];
          v70 = v56;
          v71 = v57;
          v72 = v58;
          v73 = v51;
          v74 = v50;
          LOBYTE(v75) = v49;
          *(&v75 + 1) = v15;
          HIBYTE(v75) = BYTE6(v15);
          *(&v75 + 5) = WORD2(v15);
          v76 = v53;
          v77 = v54;
          v78 = v55;
          v79 = v16;
          LOWORD(v80) = v52;
          v25 = sub_1E325F748(&v70, &unk_1ECF31AB0, qword_1E42CD4C0);
          v64 = v20;
          v6 = v47;
          v3 = v48;
          v13 = v61;
        }

        v11 = v44;
        if ((*(*v14 + 392))(v25))
        {
          type metadata accessor for ImageLayout();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            v28 = sub_1E3FA614C();
            sub_1E4006864(v27, v43, 0, 0, 1, *v28, *v28);
          }

          v9 = v45;

          v5 = v67;
        }

        else
        {
          v5 = v67;
          v9 = v45;
        }

        v60 = v59;
      }

      else
      {
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_318();
    v13 = 2;
  }

  v68 = v5;
  v30 = v13;
  result = sub_1E4006B60(v43);
  if (result)
  {
    v31 = result;

    v70 = sub_1E4205F14();
    v71 = v32;
    sub_1E4207414();
    sub_1E375D7E8(v31, &v86, __src);

    sub_1E375D84C(__src);
    if (v87)
    {
      sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
      if (swift_dynamicCast())
      {
        v33 = v70;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v86, &unk_1ECF296E0, &unk_1E4298030);
      v33 = 0;
    }

    __src[0] = v60;
    __src[1] = v4;
    __src[2] = v63;
    __src[3] = v62;
    __src[4] = v65;
    __src[5] = v66;
    LOBYTE(__src[6]) = v2;
    *(&__src[6] + 1) = v68;
    HIBYTE(__src[6]) = BYTE6(v68);
    *(&__src[6] + 5) = WORD2(v68);
    __src[7] = v64;
    __src[8] = v6;
    __src[9] = v3;
    v84 = v13;
    v85 = v69;
    if (v13 == 2)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v82[1] = 0;
      v82[2] = 0;
    }

    else
    {
      v34 = swift_allocObject();
      memcpy((v34 + 16), __src, 0x50uLL);
      *(v34 + 96) = v13;
      *(v34 + 104) = v69;
      v36 = &off_1F5D8FAD0;
      v35 = &type metadata for ButtonViewContext;
    }

    v82[0] = v34;
    v82[3] = v35;
    v82[4] = v36;
    type metadata accessor for UIFactory();
    sub_1E4006BCC(__src, &v70);
    v37 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
    v29 = sub_1E393D92C(v42, v33, v82, 0, v37);

    sub_1E325F748(v82, &qword_1ECF296C0, &unk_1E429BBE0);
    if (v29 && (v38 = [v29 imageView]) != 0)
    {
      v39 = v38;
      if (sub_1E39C408C())
      {
        OUTLINED_FUNCTION_8();
        v41 = (*(v40 + 392))();
        if (v41)
        {
          type metadata accessor for ImageLayout();
          v41 = swift_dynamicCastClass();
          if (!v41)
          {
          }
        }
      }

      else
      {
        v41 = 0;
      }

      sub_1E40065F8(v39, v41);
    }

    else
    {
    }

    v70 = v60;
    v71 = v4;
    v72 = v63;
    v73 = v62;
    v74 = v65;
    v75 = v66;
    LOBYTE(v76) = v2;
    *(&v76 + 1) = v68;
    HIBYTE(v76) = BYTE6(v68);
    *(&v76 + 5) = WORD2(v68);
    v77 = v64;
    v78 = v6;
    v79 = v3;
    v80 = v30;
    v81 = v69;
    sub_1E325F748(&v70, &qword_1ECF299E0, &qword_1E429C6D0);
    return v29;
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_1E4005F14(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  type metadata accessor for ImageViewModel();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;

  v7 = a1;
  result = sub_1E4006B60(v7);
  if (result)
  {
    v9 = result;
    *&v58 = sub_1E4205F14();
    *(&v58 + 1) = v10;
    sub_1E4207414();
    sub_1E375D7E8(v9, &v58, __dst);

    sub_1E375D84C(__dst);
    if (v60)
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      if (swift_dynamicCast())
      {
        v11 = *&__src[0];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v58, &unk_1ECF296E0, &unk_1E4298030);
      v11 = 0;
    }

    v13 = [a2 useImageViewForEntitlementCue];
    v14 = *(*v6 + 392);

    v16 = (v14)(v15);
    if (v13)
    {
      if (v16)
      {
        type metadata accessor for ImageLayout();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = v17;
          if (a2)
          {
            [a2 entitlementCueImageSize];
            v20 = v19;
            v22 = v21;
            v23 = [a2 entitlementCueImageBorderColor];
            [a2 entitlementCueImageBorderWidth];
            v25 = v24;
          }

          else
          {
            v50 = sub_1E3FA61C0();
            v25 = 0;
            v23 = 0;
            v20 = *v50;
            v22 = *v50;
          }

          sub_1E4006864(v18, v7, v23, v25, a2 == 0, v20, v22);
        }

        else
        {
        }
      }

      sub_1E3DF9E68(&v58);
      v51 = *sub_1E3FA6210();
      *&__src[1] = v59;
      __src[0] = v58;
      *(&__src[1] + 8) = v51;
      BYTE8(__src[2]) = 0;
      *(&__src[4] + 2) = *&v63[9];
      *(&__src[3] + 9) = *v63;
      *(&__src[2] + 9) = v62;
      memcpy(__dst, __src, 0x52uLL);
      v12 = sub_1E3DF9F2C(v6, v11, __dst, 0);
      sub_1E37CCDFC(__src);
      if (v12 && (objc_opt_self(), (v52 = swift_dynamicCastObjCClass()) != 0))
      {
        v53 = v52;
        v54 = v12;
        v55 = v14();

        if (v55)
        {
          type metadata accessor for ImageLayout();
          v56 = swift_dynamicCastClass();
          if (!v56)
          {
          }
        }

        else
        {
          v56 = 0;
        }

        sub_1E40065F8(v53, v56);
      }

      else
      {
      }
    }

    else
    {
      if (v16)
      {
        type metadata accessor for ImageLayout();
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;
          [a2 entitlementCueImageSize];
          v29 = v28;
          v31 = v30;
          v32 = v11;
          v33 = v7;
          v34 = *(*v27 + 208);

          v34(v31, 0);
          v7 = v33;
          v11 = v32;
          (*(*v27 + 312))(v29, 0);
          [a2 entitlementCueImageShouldScaleToSize];
          OUTLINED_FUNCTION_36();
          (*(v35 + 1712))();
          sub_1E37695C0([a2 entitlementCueImageMaxContentSizeCategory]);
          OUTLINED_FUNCTION_36();
          (*(v36 + 2096))();
          OUTLINED_FUNCTION_36();
          v38.n128_f64[0] = COERCE_DOUBLE((*(v37 + 304))()) * 0.5;
          if (v39)
          {
            v38.n128_f64[0] = 0.0;
          }

          __dst[0] = j__OUTLINED_FUNCTION_7_78(v38);
          __dst[1] = v40;
          __dst[2] = v41;
          __dst[3] = v42;
          LOBYTE(__dst[4]) = 0;
          (*(*v27 + 560))(__dst);

          v43 = [a2 entitlementCueImageBorderColor];
          OUTLINED_FUNCTION_36();
          (*(v44 + 1832))();
          [a2 entitlementCueImageBorderWidth];
          *&v58 = j__OUTLINED_FUNCTION_7_78(v45);
          *(&v58 + 1) = v46;
          v59 = v47;
          v60 = v48;
          v61 = 0;
          (*(*v27 + 1856))(&v58);
        }
      }

      if (v11 && (type metadata accessor for EntitlementHostingView(0), (v49 = swift_dynamicCastClass()) != 0))
      {
        v12 = v49;

        sub_1E4171260();
      }

      else
      {
        type metadata accessor for EntitlementHostingView(0);
        v12 = sub_1E4171188();
      }
    }

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1E40065F8(void *a1, uint64_t a2)
{
  [a1 setClearsBackgroundColorOnImageLoad_];
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 552);
    v6 = swift_retain_n();
    v5(v17, v6);
    v7 = *&v17[1];
    if (v18)
    {
      v7 = 0.0;
    }

    [a1 setCornerRadius_];
    OUTLINED_FUNCTION_36();
    v9 = (*(v8 + 1824))();
    [a1 setBorderColor_];

    OUTLINED_FUNCTION_36();
    (*(v10 + 1848))(v19);
    v11 = *&v19[1];
    if (v20)
    {
      v11 = 0.0;
    }

    [a1 setBorderWidth_];
    OUTLINED_FUNCTION_36();
    v13 = (*(v12 + 1704))();
    if (v13 == 2 || (v13 & 1) != 0)
    {
      [a1 setVuiContentMode_];
      v14 = 0;
    }

    else
    {
      [a1 setVuiContentMode_];
      v14 = *MEMORY[0x1E69DF868];
    }

    [a1 setOverrideLocalImageViewSizingMode_];
    OUTLINED_FUNCTION_36();
    v16 = (*(v15 + 744))();

    [a1 setVuiBackgroundColor_];
  }
}

uint64_t sub_1E4006864(uint64_t a1, void *a2, void *a3, unint64_t a4, char a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v15 = [a2 vuiTraitCollection];
  [v14 scaleContentSizeValue:v15 forTraitCollection:a6];

  OUTLINED_FUNCTION_8();
  (*(v16 + 208))();
  v17 = objc_opt_self();
  v18 = [a2 vuiTraitCollection];
  [v17 scaleContentSizeValue:v18 forTraitCollection:a7];
  v20 = v19;

  (*(*a1 + 312))(v20, 0);
  v21 = objc_opt_self();
  v22 = [a2 vuiTraitCollection];
  [v21 scaleContentSizeValue:v22 forTraitCollection:a7 * 0.5];
  v24 = v23;

  v25.n128_u64[0] = v24;
  v40[0] = j__OUTLINED_FUNCTION_7_78(v25);
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v41 = 0;
  result = (*(*a1 + 560))(v40);
  if (a3)
  {
    OUTLINED_FUNCTION_8();
    v32 = *(v31 + 1832);
    v33 = a3;
    result = v32(a3);
  }

  if ((a5 & 1) == 0)
  {
    v30.n128_u64[0] = a4;
    v38[0] = j__OUTLINED_FUNCTION_7_78(v30);
    v38[1] = v34;
    v38[2] = v35;
    v38[3] = v36;
    v39 = 0;
    OUTLINED_FUNCTION_8();
    return (*(v37 + 1856))(v38);
  }

  return result;
}

id sub_1E4006AD0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1E4205C44();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithContentMetadata:a1 additionalMetadata:v4];

  return v5;
}

uint64_t sub_1E4006B60(void *a1)
{
  v1 = [a1 viewsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E4006BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299E0, &qword_1E429C6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(VideosUI::DocumentLoadingConfiguration *__return_ptr retstr, Swift::Bool loadImmediately, Swift::String_optional labelTextOverride, Swift::Bool withZoomTransition, Swift::Bool prefersLargeTitle, Swift::String_optional navigationTitle, Swift::Bool isComingFromExtras, Swift::Bool isComingFromRoot, Swift::Bool isRootViewController)
{
  retstr->loadImmediately = loadImmediately;
  retstr->labelTextOverride = labelTextOverride;
  retstr->withZoomTransition = withZoomTransition;
  retstr->navigationTitle = navigationTitle;
  retstr->isComingFromExtras = isComingFromExtras;
  retstr->isComingFromRoot = isComingFromRoot;
  retstr->isRootViewController = isRootViewController;
  retstr->prefersLargeTitle = prefersLargeTitle;
}

void __swiftcall DocumentLoadingConfiguration.init(documentDataSource:)(VideosUI::DocumentLoadingConfiguration *__return_ptr retstr, VUIDocumentDataSource *documentDataSource)
{
  v22 = [(VUIDocumentDataSource *)documentDataSource shouldLoadPageImmediately];
  v4 = OUTLINED_FUNCTION_116_14();
  v5 = sub_1E3827728(v4, &selRef_loadingViewText);
  v20 = v6;
  v21 = v5;
  v7 = [(VUIDocumentDataSource *)documentDataSource shouldUseZoomTransition];
  v8 = OUTLINED_FUNCTION_116_14();
  v9 = [v8 prefersLargeTitle];

  v10 = OUTLINED_FUNCTION_116_14();
  v11 = sub_1E3827728(v10, &selRef_navigationTitle);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_116_14();
  v15 = [v14 isComingFromExtras];

  v16 = OUTLINED_FUNCTION_116_14();
  v17 = [v16 isComingFromRoot];

  v18 = OUTLINED_FUNCTION_116_14();
  v19 = [v18 isRootViewController];

  retstr->loadImmediately = v22;
  retstr->labelTextOverride.value._countAndFlagsBits = v21;
  retstr->labelTextOverride.value._object = v20;
  retstr->withZoomTransition = v7;
  retstr->navigationTitle.value._countAndFlagsBits = v11;
  retstr->navigationTitle.value._object = v13;
  retstr->isComingFromExtras = v15;
  retstr->isComingFromRoot = v17;
  retstr->isRootViewController = v19;
  retstr->prefersLargeTitle = v9;
}

uint64_t DocumentViewController.viewWillAppearAfterTabSwitch.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t DocumentViewController.viewWillAppearAfterTabSwitch.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E4006E9C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 BOOLForKey_];

  byte_1EE2AAD18 = v2;
}

char *sub_1E4006F2C()
{
  if (_MergedGlobals_265 != -1)
  {
    OUTLINED_FUNCTION_10_162(&_MergedGlobals_265);
  }

  return &byte_1EE2AAD18;
}

uint64_t DocumentViewController.reportImpressionsInViewWillDisappear.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t DocumentViewController.reportImpressionsInViewWillDisappear.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void *DocumentViewController.templateViewController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void DocumentViewController.templateViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E40070C0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v177 = v7 - v6;
  v8 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v178 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v179 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v160 - v21;
  OUTLINED_FUNCTION_26_3();
  v24 = *((*MEMORY[0x1E69E7D40] & v23) + 0x1E0);
  v180 = v0;
  if (v24())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_48_4();
    v25(v22);
    v26 = v180;
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    v29 = v12;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v31 = OUTLINED_FUNCTION_160();
      v185[0] = OUTLINED_FUNCTION_100();
      *v30 = 136315394;
      v32 = DocumentViewController.logPrefix.getter();
      sub_1E3270FC8(v32, v33, v185);
      v176 = v29;
      OUTLINED_FUNCTION_6_19();

      *(v30 + 4) = v29;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v26;
      *v31 = v180;
      v34 = v26;
      OUTLINED_FUNCTION_126_9();
      _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
      sub_1E325F748(v31, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_65_0();

      (*(v14 + 8))(v22, v176);
    }

    else
    {

      (*(v14 + 8))(v22, v12);
    }

    goto LABEL_65;
  }

  v173 = v4;
  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_21();
  v41 = (*(v40 + 752))();
  if (!v41)
  {
    goto LABEL_65;
  }

  v42 = v41;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v43 = *(v42 + 56);

  if (!v43)
  {
    goto LABEL_65;
  }

  v165 = v2;
  v172 = v1;
  OUTLINED_FUNCTION_21();
  v45 = *(v44 + 1168);

  v47 = v45(v46);

  if (v47)
  {
    OUTLINED_FUNCTION_47_0();
    v49 = *(v48 + 208);

    v49(10, 0, 1);
  }

  v50 = sub_1E4206BA4();
  v51 = VUISignpostLogObject(v50);
  v52 = v172;
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v53 = *(v10 + 8);
  v169 = v8;
  v168 = v10 + 8;
  v167 = v53;
  v53(v52, v8);
  OUTLINED_FUNCTION_26_3();
  v55 = (*((*MEMORY[0x1E69E7D40] & v54) + 0x470))(v43);
  v56 = v55;
  v57 = v12;
  if (!v55)
  {
    v58 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v56 = sub_1E3D9DBC0(v43);

    v55 = 0;
  }

  v166 = v55;
  if (v47)
  {
    OUTLINED_FUNCTION_47_0();
    v60 = *(v59 + 208);
    v62 = v61;

    v60(11, 0, 1);
  }

  else
  {
    v63 = v55;
  }

  v171 = v47;
  v176 = v12;
  v170 = v14;
  if (v56)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v56, ObjectType, &protocol descriptor for PagePerformanceProvider))
    {
      v66 = v65;
      if (v47)
      {
        v67 = &off_1F5D79C00;
      }

      else
      {
        v67 = 0;
      }

      v68 = swift_getObjectType();
      v69 = v43;
      v70 = *(v66 + 16);

      v71 = v56;
      v72 = v68;
      v57 = v176;
      v70(v171, v67, v72, v66);
      v14 = v170;
      v43 = v69;
    }

    type metadata accessor for SearchTemplateController();
    if (swift_dynamicCastClass())
    {
      if (*&v180[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
      {
        OUTLINED_FUNCTION_8();
        v74 = (*(v73 + 112))(v56);
        v57 = v176;
      }

      else
      {
        v76 = v56;
        v74 = 0;
        v75 = 0;
      }

      v185[0] = 1;
      v185[1] = v74;
      v185[2] = v75;
      memset(&v185[3], 0, 24);
      v186 = 0x1000000;
      OUTLINED_FUNCTION_12_5();
      (*(v77 + 760))(v185);
    }
  }

  OUTLINED_FUNCTION_21();
  v175 = *(v78 + 432);
  v174 = v78 + 432;
  v79 = v175();
  v80 = v179;
  if (v79)
  {
    v81 = v79;
    v82 = swift_getObjectType();
    v83 = dynamic_cast_existential_1_conditional(v81, v82, &protocol descriptor for TemplateUpdateReporter);

    if (v83)
    {
      OUTLINED_FUNCTION_38_49();
      v85 = v84();
      if (v85)
      {
        v86 = v85;
        v87 = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v86, v87, &protocol descriptor for TemplateUpdateReporter))
        {
          v89 = v88;
          v90 = swift_getObjectType();
          (*(v89 + 16))(0, 0, v90, v89);
        }
      }
    }
  }

  if (v56)
  {
    v91 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v56, v91, &protocol descriptor for TemplateUpdateReporter))
    {
      v92 = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v56, v92, &protocol descriptor for TemplateUpdateReporter))
      {
        v94 = v93;
        v95 = swift_getObjectType();
        v96 = v43;
        v97 = *(v94 + 16);
        v98 = v180;
        v99 = v180;
        v100 = v56;
        v97(v98, &off_1F5D91D48, v95, v94);
        v43 = v96;
        v14 = v170;

        v57 = v176;
      }
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v163 = v101;
  v164 = v102;
  v162 = v103;
  v103(v80);
  v104 = v180;
  v105 = v14;
  v106 = v56;
  v107 = sub_1E41FFC94();
  v108 = sub_1E4206814();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_100();
    v160 = OUTLINED_FUNCTION_160();
    v161 = swift_slowAlloc();
    v184[0] = v161;
    *v109 = 136315650;
    v110 = DocumentViewController.logPrefix.getter();
    sub_1E3270FC8(v110, v111, v184);
    OUTLINED_FUNCTION_6_19();

    *(v109 + 4) = v57;
    *(v109 + 12) = 2080;
    if (v56)
    {
      v112 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v113 = v106;
    }

    else
    {
      v113 = 0;
      v112 = 0;
      v181[1] = 0;
      v181[2] = 0;
    }

    v181[0] = v113;
    v182 = v112;
    v116 = v106;
    v117 = sub_1E3294FA4(v181);
    sub_1E3270FC8(v117, v118, v184);
    OUTLINED_FUNCTION_6_19();

    *(v109 + 14) = v57;
    *(v109 + 22) = 2112;
    *(v109 + 24) = v104;
    v119 = v160;
    *v160 = v180;
    v120 = v104;
    _os_log_impl(&dword_1E323F000, v107, v108, "%s Loading Template %s for %@", v109, 0x20u);
    sub_1E325F748(v119, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_46_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_65_0();

    v114 = *(v170 + 8);
    v115 = v80;
    v57 = v176;
  }

  else
  {

    v114 = *(v105 + 8);
    v115 = v80;
  }

  v179 = v114;
  v114(v115, v57);
  v121 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  (*(v122 + 1144))(v56);
  v123 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_3_0(&v104[OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController], v184);
  v124 = *&v104[v123];
  *&v104[v123] = v56;
  v125 = v106;

  v104[OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning] = 1;
  OUTLINED_FUNCTION_38_49();
  v127 = v126();
  if (v127)
  {
    v128 = v127;
    v161 = v125;
    v129 = v178;
    v162(v178, v163, v57);
    v130 = v104;
    v131 = v128;
    v132 = sub_1E41FFC94();
    v133 = sub_1E4206814();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = OUTLINED_FUNCTION_49_0();
      v163 = OUTLINED_FUNCTION_160();
      v164 = OUTLINED_FUNCTION_100();
      v181[0] = v164;
      *v134 = 136315394;
      v135 = DocumentViewController.logPrefix.getter();
      sub_1E3270FC8(v135, v136, v181);
      OUTLINED_FUNCTION_6_19();

      *(v134 + 4) = v57;
      *(v134 + 12) = 2112;
      *(v134 + 14) = v131;
      v137 = v163;
      *v163 = v128;
      v138 = v131;
      _os_log_impl(&dword_1E323F000, v132, v133, "%s Configure template [%@]", v134, 0x16u);
      sub_1E325F748(v137, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v164);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_51_2();

      v139 = v178;
      v140 = v176;
    }

    else
    {

      v139 = v129;
      v140 = v57;
    }

    v179(v139, v140);
    v141 = v177;
    sub_1E41FE5C4();
    sub_1E400CEDC();

    (*(v173 + 8))(v141, v165);
    v121 = MEMORY[0x1E69E7D40];
    v125 = v161;
  }

  OUTLINED_FUNCTION_38_49();
  v143 = v142();
  (*((*v121 & *v104) + 0x488))();

  v144 = sub_1E4206B94();
  v145 = VUISignpostLogObject(v144);
  v146 = v172;
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v167(v146, v169);
  v147 = MEMORY[0x1E69DDA98];
  if (!*MEMORY[0x1E69DDA98])
  {
    __break(1u);
    goto LABEL_67;
  }

  if (![*MEMORY[0x1E69DDA98] shouldRecordExtendedLaunchTime])
  {
    goto LABEL_53;
  }

  if (!*v147)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v148 = *v147;
  sub_1E3827728(v148, &selRef__launchTestName);
  if (v149)
  {
    v150 = sub_1E4205ED4();
  }

  else
  {
    v150 = 0;
  }

  v151 = [v148 isRunningTest_];

  if ((v151 & 1) == 0)
  {
LABEL_53:
    if (_MergedGlobals_265 != -1)
    {
      OUTLINED_FUNCTION_10_162(&_MergedGlobals_265);
    }

    if (byte_1EE2AAD18 != 1)
    {
      goto LABEL_61;
    }
  }

  if (!*v147)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v152 = *v147;
  sub_1E3827728(v152, &selRef__launchTestName);
  if (v153)
  {
    v154 = sub_1E4205ED4();
  }

  else
  {
    v154 = 0;
  }

  [v152 finishedTest_];

LABEL_61:
  sub_1E4010284();
  v182 = &unk_1F5D5CF88;
  v183 = &off_1F5D5C718;
  LOBYTE(v181[0]) = 4;
  v155 = j__OUTLINED_FUNCTION_18();
  v156 = sub_1E39C29F0(v181, v155 & 1);
  __swift_destroy_boxed_opaque_existential_1(v181);
  if ((v156 & 1) == 0)
  {
LABEL_64:
    type metadata accessor for DocumentViewController(0);
    sub_1E40131E4(*(v43 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType));

LABEL_65:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v157 = [v104 vuiView];
  if (v157)
  {
    v158 = v157;
    v159 = [objc_opt_self() clearColor];
    [v158 setVuiBackgroundColor_];

    goto LABEL_64;
  }

LABEL_69:
  __break(1u);
}

uint64_t DocumentViewController.deferLoadingTemplateController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void DocumentViewController.deferLoadingTemplateController.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController, &v8);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if ((*(v1 + v5) & 1) == 0 && v4)
  {
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 432))();
    if (v7)
    {
    }

    else
    {
      sub_1E40070C0();
    }
  }
}

void (*DocumentViewController.deferLoadingTemplateController.modify())(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E4008218;
}

void sub_1E4008218(uint64_t a1)
{
  v1 = *a1;
  DocumentViewController.deferLoadingTemplateController.setter(*(*a1 + 32));

  free(v1);
}

uint64_t DocumentViewController.alwaysShowTemplateWithAnimation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t DocumentViewController.alwaysShowTemplateWithAnimation.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t DocumentViewController.isShowingLoadingView.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  return (*(v1 + 216))() & 1;
}

uint64_t variable initialization expression of DocumentViewController.pendingDeeplinkURL()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void *DocumentViewController.bubbletipOverlayController.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void DocumentViewController.bubbletipOverlayController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController, &v9);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  v6 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(v1 + v5);
  if (!v7)
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 removeObserver:v1 name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
    goto LABEL_5;
  }

  if (v7 != v4)
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 addObserver:v1 selector:sel_playbackUIChanged_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
LABEL_5:
  }
}

void (*DocumentViewController.bubbletipOverlayController.modify())(uint64_t a1, char a2)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E4008598;
}

void sub_1E4008598(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    DocumentViewController.bubbletipOverlayController.setter(v3);
  }

  else
  {
    DocumentViewController.bubbletipOverlayController.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t DocumentViewController.documentDelegate.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t DocumentViewController.documentDelegate.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v2);
  *(v1 + 8) = v0;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DocumentViewController.documentDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_11_3(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return sub_1E3900F50;
}

uint64_t DocumentViewController.ignoreDidMoveToNilParent.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t DocumentViewController.ignoreDidMoveToNilParent.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t DocumentViewController.rebaseIdentifier.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t DocumentViewController.rebaseIdentifier.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v3);
  *v1 = v2;
  v1[1] = v0;
}

void sub_1E40088D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v116 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v115 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v117 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v113 - v17;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v122 = v19;
  v123 = v20;
  v121 = v21;
  v21(v18);
  v22 = v0;
  v23 = sub_1E41FFC94();
  sub_1E4206814();

  v24 = OUTLINED_FUNCTION_148_9();
  v125 = v4;
  v118 = v8;
  if (v24)
  {
    OUTLINED_FUNCTION_6_21();
    v126 = OUTLINED_FUNCTION_16_15();
    *v8 = 136315138;
    v25 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v25, v26);
    OUTLINED_FUNCTION_94_1();

    *(v8 + 4) = v4;
    v4 = v125;
    OUTLINED_FUNCTION_54_50();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_51_2();
  }

  v120 = *(v4 + 8);
  v120(v18, v2);
  v119 = v22;
  v32 = sub_1E40166A8([v22 vuiNavigationItem], &selRef_rightBarButtonItems);
  v124 = v2;
  if (!v32)
  {
    v37 = 0;
LABEL_20:
    if (![objc_opt_self() isPad])
    {
      goto LABEL_45;
    }

    v39 = [objc_opt_self() sharedInstance];
    v40 = [v39 accountConfig];

    v8 = [v40 showAccountSettingOnSidebar];
    OUTLINED_FUNCTION_26_3();
    if (((*((*MEMORY[0x1E69E7D40] & v41) + 0x290))() & 1) != 0 || !v8)
    {
      v42 = v119;
      v114 = [v119 vuiIsNavigationRoot] ^ 1;
    }

    else
    {
      v114 = 1;
      v42 = v119;
    }

    OUTLINED_FUNCTION_31_86();
    v43();
    v44 = v42;
    v45 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_148_9())
    {
      OUTLINED_FUNCTION_42_9();
      v46 = OUTLINED_FUNCTION_16_15();
      v126 = v46;
      *v8 = 136315394;
      v47 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_58_0(v47, v48);
      OUTLINED_FUNCTION_12_1();

      *(v8 + 4) = v2;
      v2 = v124;
      *(v8 + 6) = 1024;
      *(v8 + 14) = v114;
      OUTLINED_FUNCTION_54_50();
      _os_log_impl(v49, v50, v51, v52, v53, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v120(v1, v2);
    if ((sub_1E39DFFC8() & 1) != 0 && v37)
    {
      OUTLINED_FUNCTION_31_86();
      v54();
      v55 = v44;
      v56 = v37;
      v57 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_148_9())
      {
        OUTLINED_FUNCTION_42_9();
        v58 = OUTLINED_FUNCTION_16_15();
        OUTLINED_FUNCTION_133_11(v58);
        *v8 = 136315394;
        v59 = v55;
        v60 = DocumentViewController.logPrefix.getter();
        OUTLINED_FUNCTION_58_0(v60, v61);
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_103_14();
        OUTLINED_FUNCTION_54_50();
        _os_log_impl(v62, v63, v64, v65, v66, 0x12u);
        OUTLINED_FUNCTION_154_6();
        v2 = v124;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();

        v67 = OUTLINED_FUNCTION_33_83();
        v68(v67);
      }

      else
      {

        v87 = OUTLINED_FUNCTION_33_83();
        v88(v87);
        v59 = v114;
      }

      [v56 setHidden_];

      goto LABEL_45;
    }

    v69 = [v44 vuiNavigationItem];
    v70 = [v69 _largeTitleAccessoryView];

    v2 = v124;
    if (v70)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_22_53();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        OUTLINED_FUNCTION_31_86();
        v73();
        v74 = v44;
        v75 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_148_9())
        {
          OUTLINED_FUNCTION_42_9();
          v76 = OUTLINED_FUNCTION_16_15();
          OUTLINED_FUNCTION_133_11(v76);
          *v8 = 136315394;
          v77 = v74;
          v78 = DocumentViewController.logPrefix.getter();
          OUTLINED_FUNCTION_58_0(v78, v79);
          OUTLINED_FUNCTION_34_3();
          OUTLINED_FUNCTION_103_14();
          OUTLINED_FUNCTION_54_50();
          _os_log_impl(v80, v81, v82, v83, v84, 0x12u);
          OUTLINED_FUNCTION_154_6();
          v2 = v124;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_51_2();

          v85 = OUTLINED_FUNCTION_33_83();
          v86(v85);
        }

        else
        {

          v101 = OUTLINED_FUNCTION_33_83();
          v102(v101);
          v77 = v114;
        }

        if (sub_1E39DFFC8())
        {

          goto LABEL_50;
        }

        [v72 hideAndDisable_];

LABEL_45:
        if (sub_1E39DFFC8())
        {
          if (!v37)
          {
LABEL_51:
            OUTLINED_FUNCTION_25_2();
            return;
          }

          v103 = v118;
          OUTLINED_FUNCTION_31_86();
          v104();
          v105 = v119;
          v106 = sub_1E41FFC94();
          v107 = sub_1E4206814();

          if (os_log_type_enabled(v106, v107))
          {
            OUTLINED_FUNCTION_6_21();
            v108 = OUTLINED_FUNCTION_16_15();
            OUTLINED_FUNCTION_133_11(v108);
            *v8 = 136315138;
            v109 = DocumentViewController.logPrefix.getter();
            OUTLINED_FUNCTION_58_0(v109, v110);
            OUTLINED_FUNCTION_6_19();

            *(v8 + 4) = v105;
            OUTLINED_FUNCTION_139_11(&dword_1E323F000, v111, v112, "%s handleAccountSettingsButton: update accountSettingItem prefersNoPlatter=true");
            OUTLINED_FUNCTION_154_6();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_51_2();
          }

          v120(v103, v2);
          [v37 _setPrefersNoPlatter_];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_31_86();
    v89();
    v90 = v44;
    v91 = sub_1E41FFC94();
    v92 = sub_1E4206814();

    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_6_21();
      v93 = OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_133_11(v93);
      *v8 = 136315138;
      v94 = DocumentViewController.logPrefix.getter();
      v96 = OUTLINED_FUNCTION_58_0(v94, v95);

      *(v8 + 4) = v96;
      OUTLINED_FUNCTION_139_11(&dword_1E323F000, v97, v98, "%s handleAccountSettingsButton: no account setting item found, ignore");
      OUTLINED_FUNCTION_154_6();
      v2 = v124;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v99 = OUTLINED_FUNCTION_33_83();
    v100(v99);
    goto LABEL_45;
  }

  v33 = v32;
  v34 = sub_1E32AE9B0(v32);
  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {

      v37 = 0;
      goto LABEL_19;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1E6911E60](i, v33);
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    v37 = v36;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v38 = [v36 customView];
    if (v38)
    {
      v8 = v38;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_14;
      }

LABEL_19:
      v2 = v124;
      goto LABEL_20;
    }

    v8 = v37;
LABEL_14:
  }

  __break(1u);
LABEL_53:
  __break(1u);
}