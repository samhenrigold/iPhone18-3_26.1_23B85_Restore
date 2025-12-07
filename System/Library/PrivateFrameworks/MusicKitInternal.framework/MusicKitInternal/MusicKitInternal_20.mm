uint64_t sub_1D5037FD8()
{
  OUTLINED_FUNCTION_19_1();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t sub_1D5038028()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD546B8);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_3_47();
  sub_1D5038614(v3, v4, &protocol conformance descriptor for TVSeason);
  return sub_1D560D988();
}

uint64_t sub_1D50380D4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53C60);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD546B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD546B8);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D50381B8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5038210()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5038268(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5038308(uint64_t a1)
{
  result = sub_1D5038614(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D503840C()
{
  result = qword_1EDD52858;
  if (!qword_1EDD52858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECBC0, &qword_1D562BF20);
    sub_1D5038614(&unk_1EDD58A70, type metadata accessor for VideoOffer, &unk_1D5657C3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52858);
  }

  return result;
}

unint64_t sub_1D50384C0()
{
  result = qword_1EDD52778;
  if (!qword_1EDD52778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52778);
  }

  return result;
}

unint64_t sub_1D503853C()
{
  result = qword_1EDD52828;
  if (!qword_1EDD52828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3D0, &unk_1D56223F0);
    sub_1D50385C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52828);
  }

  return result;
}

unint64_t sub_1D50385C0()
{
  result = qword_1EDD55DE8[0];
  if (!qword_1EDD55DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55DE8);
  }

  return result;
}

uint64_t sub_1D5038614(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_31_21(unint64_t *a1)
{

  return sub_1D5038614(a1, v1, &protocol conformance descriptor for TVSeason);
}

uint64_t OUTLINED_FUNCTION_37_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1, uint64_t a2)
{

  return sub_1D560EC28();
}

uint64_t MusicLibraryMapping.Section<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_1D56162D8();
  MusicLibraryMapping.Section<>.hash(into:)(v6, a1, a2);
  return sub_1D5616328();
}

uint64_t sub_1D5038850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.Section<>.hash(into:)(v6, a2, v4);
  return sub_1D5616328();
}

uint64_t sub_1D5038908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5038968(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D50389D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D5038B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D5038D6C()
{
  result = qword_1EC7EE710;
  if (!qword_1EC7EE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE710);
  }

  return result;
}

unint64_t sub_1D5038DC4()
{
  result = qword_1EC7EE718;
  if (!qword_1EC7EE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE718);
  }

  return result;
}

unint64_t sub_1D5038ED0()
{
  result = qword_1EC7EE720;
  if (!qword_1EC7EE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE720);
  }

  return result;
}

unint64_t sub_1D5038F40()
{
  result = qword_1EC7EE728;
  if (!qword_1EC7EE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE728);
  }

  return result;
}

MusicKitInternal::VideoCapabilities sub_1D5038FD8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = VideoCapabilities.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D5039018@<X0>(uint64_t *a1@<X8>)
{
  result = VideoCapabilities.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CoverArtworkRecipe.ExpressionID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t MusicSiriRepresentation.init(for:kind:catalogResourceType:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v19 = *a2;
  sub_1D50391CC();
  v21 = v20;
  v23 = v22;
  sub_1D4E50004(a3, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  (*(v24 + 8))(a1);
  *a9 = v21;
  *(a9 + 8) = v23;
  *(a9 + 16) = v19;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v25 = type metadata accessor for MusicSiriRepresentation(0);
  sub_1D4F39A1C(a8, a9 + v25[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F39A1C(a10, a9 + v25[9], &qword_1EC7EC478, &unk_1D56299D0);
  return sub_1D4F39A1C(a11, a9 + v25[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
}

void sub_1D50391CC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v142 = v2;
  v4 = v3;
  v151 = v5;
  LODWORD(v144) = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v149 = v8;
  OUTLINED_FUNCTION_70_0();
  v150 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v148 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v147 = v11;
  OUTLINED_FUNCTION_70_0();
  v137 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v130 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v124 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v132 = v18;
  OUTLINED_FUNCTION_70_0();
  v141 = sub_1D560BB98();
  OUTLINED_FUNCTION_4();
  v138 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v136 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v135 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v124 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v139 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v124 - v33;
  v143 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v140 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  v131 = &v124 - v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v42 = v41;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v124 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v124 - v50;
  sub_1D560BC78();
  OUTLINED_FUNCTION_4();
  v145 = v53;
  v146 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  v56 = v55 - v54;
  v57 = *v4;
  sub_1D560BC68();
  sub_1D560BC38();
  OUTLINED_FUNCTION_40_17();
  v58 = MusicSiriRepresentation.Kind.rawValue.getter();
  MEMORY[0x1DA6E1A10](v58);
  v59 = MEMORY[0x1E69E7CC0];
  v155 = MEMORY[0x1E69E7CC0];
  if (v144 != 2 && (v1 & 1) != 0)
  {
    v60 = sub_1D503B08C(v151, 1);
    sub_1D4EF30FC(v60);
    v59 = v155;
  }

  if (!*(v59 + 16))
  {
    v61 = sub_1D503B08C(v151, 0);
    sub_1D4EF30FC(v61);
    if (!*(v155 + 16) && (v1 == 2 || (v1 & 1) == 0))
    {
      v62 = sub_1D503B08C(v151, 1);
      sub_1D4EF30FC(v62);
    }
  }

  OUTLINED_FUNCTION_40_17();
  MusicSiriRepresentation.Kind.typeValue.getter(v51);
  v63 = sub_1D560D8F8();
  v64 = *(v42 + 8);
  v64(v51, v40);
  if (!dynamic_cast_existential_1_conditional(v63, v63, MEMORY[0x1E6974E00]))
  {
    OUTLINED_FUNCTION_40_17();
    MusicSiriRepresentation.Kind.typeValue.getter(v49);
    sub_1D560D8F8();
    v64(v49, v40);
    sub_1D5614828();
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_46;
    }

    v67 = v132;
    sub_1D560D5E8();
    OUTLINED_FUNCTION_57(v67, 1, v40);
    if (v75)
    {
      sub_1D4E50004(v67, &qword_1EC7F6DF0, &qword_1D561D1E0);
      OUTLINED_FUNCTION_40_17();
      MusicSiriRepresentation.Kind.typeValue.getter(v46);
      v83 = sub_1D560D8F8();
      v84 = v46;
    }

    else
    {
      v83 = sub_1D560D8F8();
      v84 = v67;
    }

    v64(v84, v40);
    v85 = v139;
    sub_1D4F39AB0(v142, v139, &qword_1EC7EA358, &unk_1D561DF50);
    v86 = dynamic_cast_existential_1_conditional(v83, v83, MEMORY[0x1E6974E00]);
    v87 = v137;
    v88 = v138;
    v89 = v143;
    v90 = v134;
    if (v86)
    {
      v91 = sub_1D560D088();
      sub_1D4EC980C(v91);

      sub_1D4E50004(v85, &qword_1EC7EA358, &unk_1D561DF50);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v92, v93, v94, v95);
    }

    v96 = v133;
    sub_1D4F39AB0(v85, v133, &qword_1EC7EA358, &unk_1D561DF50);
    OUTLINED_FUNCTION_57(v96, 1, v89);
    if (v75)
    {
      sub_1D4E50004(v96, &qword_1EC7EA358, &unk_1D561DF50);
      if (qword_1EC7E90D8 != -1)
      {
        OUTLINED_FUNCTION_27_22(&qword_1EC7E90D8);
      }

      v97 = sub_1D560C758();
      __swift_project_value_buffer(v97, qword_1EC87C330);
      v98 = v130;
      v99 = *(v130 + 16);
      v99(v90, v151, v87);
      v100 = sub_1D560C738();
      v101 = sub_1D56156C8();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v142 = v102;
        v144 = swift_slowAlloc();
        v153 = v144;
        *v102 = 136315138;
        v99(v127, v90, v87);
        v103 = sub_1D5614DB8();
        v105 = v104;
        (*(v98 + 8))(v90, v87);
        v106 = sub_1D4E6835C(v103, v105, &v153);

        v107 = v142;
        *(v142 + 1) = v106;
        _os_log_impl(&dword_1D4E3F000, v100, v101, "Unable to fetch underlying resource type for playlist entry %s. Defaulting to Song.", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v144);
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {

        (*(v98 + 8))(v90, v87);
      }

      v111 = v136;
      v112 = v129;
      sub_1D560FFA8();
      sub_1D5610058();
      (*(v140 + 8))(v112, v143);
      v110 = v135;
      OUTLINED_FUNCTION_34_20();
      OUTLINED_FUNCTION_8_1();
      sub_1D560BB28();

      v85 = v139;
    }

    else
    {
      v108 = v140;
      v109 = v128;
      (*(v140 + 32))(v128, v96, v89);
      sub_1D5610058();
      v110 = v135;
      OUTLINED_FUNCTION_34_20();
      sub_1D560BB28();

      (*(v108 + 8))(v109, v89);
      v111 = v136;
    }

    (*(v88 + 16))(v111, v110, v141);
    v81 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_36_16();
      v81 = v120;
    }

    v113 = *(v81 + 16);
    if (v113 >= *(v81 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_36();
      v81 = v121;
    }

    v114 = v110;
    v115 = v141;
    (*(v88 + 8))(v114, v141);
    sub_1D4E50004(v85, &qword_1EC7EA358, &unk_1D561DF50);
    *(v81 + 16) = v113 + 1;
    (*(v88 + 32))(v81 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v113, v111, v115);
    goto LABEL_45;
  }

  v65 = *(sub_1D560D088() + 16);

  if (v65 < 2)
  {
    goto LABEL_46;
  }

  sub_1D4F39AB0(v142, v34, &qword_1EC7EA358, &unk_1D561DF50);
  v66 = v143;
  OUTLINED_FUNCTION_57(v34, 1, v143);
  if (v75)
  {
    sub_1D4E50004(v34, &qword_1EC7EA358, &unk_1D561DF50);
    goto LABEL_46;
  }

  v68 = v140;
  v69 = v131;
  (*(v140 + 32))(v131, v34, v66);
  v152 = v57;
  v153 = MusicSiriRepresentation.Kind.rawValue.getter();
  v154 = v70;

  MEMORY[0x1DA6EAC70](115, 0xE100000000000000);

  v72 = v153;
  v71 = v154;
  v73 = sub_1D5610058();
  v75 = v72 == v73 && v71 == v74;
  if (v75)
  {

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_61();
  v76 = sub_1D5616168();

  if (v76)
  {
LABEL_37:
    (*(v68 + 8))(v69, v66);
    goto LABEL_46;
  }

  sub_1D5610058();
  v77 = v125;
  OUTLINED_FUNCTION_34_20();
  sub_1D560BB28();

  v78 = v138;
  v79 = v126;
  v80 = v141;
  (*(v138 + 16))(v126, v77, v141);
  v81 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_36_16();
    v81 = v122;
  }

  v82 = *(v81 + 16);
  if (v82 >= *(v81 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_36();
    v81 = v123;
  }

  (*(v78 + 8))(v77, v80);
  (*(v68 + 8))(v69, v143);
  *(v81 + 16) = v82 + 1;
  (*(v78 + 32))(v81 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v82, v79, v80);
LABEL_45:
  v155 = v81;
LABEL_46:
  if (*(v155 + 16))
  {

    sub_1D560BBD8();
  }

  v116 = v149;
  sub_1D560BC08();
  v117 = v150;
  OUTLINED_FUNCTION_57(v116, 1, v150);
  if (v75)
  {
    sub_1D4E50004(v116, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000059, 0x80000001D5682100);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }

  else
  {

    (*(v148 + 32))(v147, v116, v117);
    sub_1D560BF08();
    v118 = OUTLINED_FUNCTION_99();
    v119(v118);
    (*(v145 + 8))(v56, v146);
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_46();
  }
}

uint64_t type metadata accessor for MusicSiriRepresentation(uint64_t a1)
{
  result = qword_1EDD5F4B0;
  if (!qword_1EDD5F4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriRepresentation.Kind.typeValue.getter@<X0>(uint64_t a2@<X8>)
{
  switch(*v2)
  {
    case 1:

      return sub_1D560D938();
    case 2:
      if (qword_1EDD53C80 != -1)
      {
        OUTLINED_FUNCTION_23_26(&qword_1EDD53C80);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53C88;
      goto LABEL_53;
    case 3:

      return sub_1D560D948();
    case 4:
      if (qword_1EDD53D70 != -1)
      {
        OUTLINED_FUNCTION_24_25(&qword_1EDD53D70);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53D78;
      goto LABEL_53;
    case 5:

      return sub_1D560D918();
    case 6:
      if (qword_1EDD53D48 != -1)
      {
        OUTLINED_FUNCTION_20_10(&qword_1EDD53D48);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53D50;
      goto LABEL_53;
    case 7:

      return sub_1D560D878();
    case 8:

      return sub_1D560D968();
    case 9:

      return sub_1D560D898();
    case 0xA:

      return sub_1D560D998();
    case 0xB:

      return sub_1D560D888();
    case 0xC:

      return sub_1D560D8E8();
    case 0xD:

      return sub_1D560D958();
    case 0xE:
      if (qword_1EDD53C38 != -1)
      {
        OUTLINED_FUNCTION_25_7(&qword_1EDD53C38);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53C40;
      goto LABEL_53;
    case 0xF:
      if (qword_1EDD53C58 != -1)
      {
        OUTLINED_FUNCTION_22_24(&qword_1EDD53C58);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53C60;
      goto LABEL_53;
    case 0x10:
      if (qword_1EC7E95E8 != -1)
      {
        OUTLINED_FUNCTION_26_25(&qword_1EC7E95E8);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EC7F5D98;
      goto LABEL_53;
    case 0x11:
      if (qword_1EC7E8F18 != -1)
      {
        OUTLINED_FUNCTION_21_25(&qword_1EC7E8F18);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EC7F08A0;
      goto LABEL_53;
    case 0x12:
      if (qword_1EDD53CE8 != -1)
      {
        OUTLINED_FUNCTION_19_29(&qword_1EDD53CE8);
      }

      v5 = sub_1D560D9A8();
      v6 = v5;
      v7 = qword_1EDD53CF0;
LABEL_53:
      v8 = __swift_project_value_buffer(v5, v7);
      v9 = *(*(v6 - 8) + 16);

      result = v9(a2, v8, v6);
      break;
    default:

      result = sub_1D560D908();
      break;
  }

  return result;
}

void sub_1D503A560()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v65 = v2;
  v3 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v64 = v7;
  OUTLINED_FUNCTION_23();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(v5 + 16);
  v12(&v63 - v13, v1, v3);
  sub_1D560D908();
  OUTLINED_FUNCTION_16_29();
  sub_1D503DD74(v14, v15, MEMORY[0x1E6974F90]);
  v16 = OUTLINED_FUNCTION_4_37();
  v17 = *(v5 + 8);
  v17(v11, v3);
  if (v16)
  {
    v18 = 0;
LABEL_21:
    v26 = OUTLINED_FUNCTION_61();
    (v17)(v26);
    v27 = OUTLINED_FUNCTION_99();
    (v17)(v27);
    goto LABEL_22;
  }

  sub_1D560D938();
  OUTLINED_FUNCTION_4_37();
  v19 = OUTLINED_FUNCTION_7_37();
  v20 = (v17)(v19);
  if (qword_1EDD53C80 != -1)
  {
    v20 = OUTLINED_FUNCTION_23_26(&qword_1EDD53C80);
  }

  if (OUTLINED_FUNCTION_5_38(v20, qword_1EDD53C88))
  {
    v18 = 2;
    goto LABEL_21;
  }

  sub_1D560D948();
  OUTLINED_FUNCTION_4_37();
  v21 = OUTLINED_FUNCTION_7_37();
  v22 = (v17)(v21);
  if (v16)
  {
    v18 = 3;
    goto LABEL_21;
  }

  if (qword_1EDD53D70 != -1)
  {
    v22 = OUTLINED_FUNCTION_24_25(&qword_1EDD53D70);
  }

  if (OUTLINED_FUNCTION_5_38(v22, qword_1EDD53D78))
  {
    v18 = 4;
    goto LABEL_21;
  }

  sub_1D560D918();
  OUTLINED_FUNCTION_4_37();
  v23 = OUTLINED_FUNCTION_7_37();
  v24 = (v17)(v23);
  if (v16)
  {
    v18 = 5;
    goto LABEL_21;
  }

  if (qword_1EDD53D48 != -1)
  {
    v24 = OUTLINED_FUNCTION_20_10(&qword_1EDD53D48);
  }

  if (OUTLINED_FUNCTION_5_38(v24, qword_1EDD53D50))
  {
    v18 = 6;
    goto LABEL_21;
  }

  sub_1D560D878();
  OUTLINED_FUNCTION_4_37();
  v25 = OUTLINED_FUNCTION_7_37();
  (v17)(v25);
  if (v16)
  {
    v18 = 7;
    goto LABEL_21;
  }

  sub_1D560D968();
  OUTLINED_FUNCTION_4_37();
  v28 = OUTLINED_FUNCTION_7_37();
  (v17)(v28);
  sub_1D560D898();
  OUTLINED_FUNCTION_4_37();
  v29 = OUTLINED_FUNCTION_7_37();
  (v17)(v29);
  sub_1D560D998();
  OUTLINED_FUNCTION_4_37();
  v30 = OUTLINED_FUNCTION_7_37();
  (v17)(v30);
  sub_1D560D888();
  OUTLINED_FUNCTION_4_37();
  v31 = OUTLINED_FUNCTION_7_37();
  (v17)(v31);
  sub_1D560D8E8();
  OUTLINED_FUNCTION_4_37();
  v32 = OUTLINED_FUNCTION_7_37();
  (v17)(v32);
  sub_1D560D958();
  OUTLINED_FUNCTION_4_37();
  v33 = OUTLINED_FUNCTION_7_37();
  v34 = (v17)(v33);
  if (qword_1EDD53C38 != -1)
  {
    v34 = OUTLINED_FUNCTION_25_7(&qword_1EDD53C38);
  }

  v35 = OUTLINED_FUNCTION_5_38(v34, qword_1EDD53C40);
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_61();
    (v17)(v36);
    v37 = OUTLINED_FUNCTION_99();
    (v17)(v37);
    v18 = 14;
  }

  else
  {
    if (qword_1EDD53C58 != -1)
    {
      v35 = OUTLINED_FUNCTION_22_24(&qword_1EDD53C58);
    }

    v38 = OUTLINED_FUNCTION_5_38(v35, qword_1EDD53C60);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_61();
      (v17)(v39);
      v40 = OUTLINED_FUNCTION_99();
      (v17)(v40);
      v18 = 15;
    }

    else
    {
      if (qword_1EC7E95E8 != -1)
      {
        v38 = OUTLINED_FUNCTION_26_25(&qword_1EC7E95E8);
      }

      v41 = OUTLINED_FUNCTION_5_38(v38, qword_1EC7F5D98);
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_61();
        (v17)(v42);
        v43 = OUTLINED_FUNCTION_99();
        (v17)(v43);
        v18 = 16;
      }

      else
      {
        if (qword_1EC7E8F18 != -1)
        {
          v41 = OUTLINED_FUNCTION_21_25(&qword_1EC7E8F18);
        }

        v44 = OUTLINED_FUNCTION_5_38(v41, qword_1EC7F08A0);
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_61();
          (v17)(v45);
          v46 = OUTLINED_FUNCTION_99();
          (v17)(v46);
          v18 = 17;
        }

        else
        {
          if (qword_1EDD53CE8 != -1)
          {
            v44 = OUTLINED_FUNCTION_19_29(&qword_1EDD53CE8);
          }

          v47 = OUTLINED_FUNCTION_5_38(v44, qword_1EDD53CF0);
          v48 = OUTLINED_FUNCTION_99();
          (v17)(v48);
          if (v47)
          {
            v49 = OUTLINED_FUNCTION_61();
            (v17)(v49);
            v18 = 18;
          }

          else
          {
            if (qword_1EC7E90D8 != -1)
            {
              OUTLINED_FUNCTION_27_22(&qword_1EC7E90D8);
            }

            v50 = sub_1D560C758();
            __swift_project_value_buffer(v50, qword_1EC87C330);
            v12(v64, v1, v3);
            v51 = sub_1D560C738();
            v52 = sub_1D56156C8();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v66 = v63;
              *v53 = 136446210;
              OUTLINED_FUNCTION_16_29();
              sub_1D503DD74(v54, v55, MEMORY[0x1E6974F98]);
              v56 = v64;
              sub_1D56160F8();
              v17(v56, v3);
              v57 = OUTLINED_FUNCTION_74_0();
              v60 = sub_1D4E6835C(v57, v58, v59);

              *(v53 + 4) = v60;
              _os_log_impl(&dword_1D4E3F000, v51, v52, "Unable to initialize MusicSiriRepresentation.Kind from MusicItemTypeValue %{public}s.", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v63);
              OUTLINED_FUNCTION_122();
              OUTLINED_FUNCTION_122();

              v61 = v1;
            }

            else
            {

              v62 = OUTLINED_FUNCTION_61();
              (v17)(v62);
              v61 = v64;
            }

            v17(v61, v3);
            v18 = 19;
          }
        }
      }
    }
  }

LABEL_22:
  *v65 = v18;
  OUTLINED_FUNCTION_46();
}

MusicKitInternal::MusicSiriRepresentation::Kind_optional __swiftcall MusicSiriRepresentation.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5616208();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MusicSiriRepresentation.Kind.rawValue.getter()
{
  result = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      return 0x747369747261;
    case 2:
      return 0x7265736F706D6F63;
    case 3:
      return 0x726F7461727563;
    case 4:
      return 0x6169726F74696465;
    case 5:
      v3 = 1919837543;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 6:
      v3 = 1769369453;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 7:
      return 0x69762D636973756DLL;
    case 8:
    case 9:
      return 0x7473696C79616C70;
    case 0xA:
      return 0x68732D6F69646172;
    case 0xB:
      return 0x6C2D64726F636572;
    case 0xC:
      return 1735290739;
    case 0xD:
      return 0x6E6F6974617473;
    case 0xE:
      v2 = 0x6970652D7674;
      goto LABEL_10;
    case 0xF:
      v2 = 0x6165732D7674;
LABEL_10:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 0x10:
      result = 0x776F68732D7674;
      break;
    case 0x11:
    case 0x12:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D503AF80@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSiriRepresentation.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D503B08C(uint64_t a1, int a2)
{
  LODWORD(v108) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v93 - v4;
  v6 = sub_1D560D4C8();
  v104 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D560BB98();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v93 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v93 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = &v93 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v98 = &v93 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v93 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v93 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v99 = &v93 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v93 - v32;
  v34 = sub_1D560F148();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v108)
  {
    sub_1D560D5C8();
    v38 = a1;
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1D4E50004(v5, &unk_1EC7EBF20, &unk_1D561F530);
      v39 = MEMORY[0x1E69E7CC0];
      v41 = v106;
      v40 = v107;
    }

    else
    {
      v43 = v104;
      v42 = v105;
      (*(v104 + 32))(v105, v5, v6);
      v44 = sub_1D560D4B8();
      v46 = v45;

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      v41 = v106;
      if (v47)
      {
        v108 = v6;
        sub_1D560D4B8();
        v48 = v99;
        sub_1D560BB28();

        v94 = *(v41 + 16);
        v94(v23, v48, v107);
        sub_1D4EFFE00();
        v39 = v49;
        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        v96 = v38;
        if (v51 >= v50 >> 1)
        {
          sub_1D4EFFE00();
          v39 = v90;
        }

        *(v39 + 16) = v51 + 1;
        v52 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v53 = *(v41 + 72);
        v54 = v23;
        v40 = v107;
        v95 = *(v41 + 32);
        v95(v39 + v52 + v53 * v51, v54, v107);
        v55 = v105;
        v56 = sub_1D560D488();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          v93 = v52;
          sub_1D560D488();
          v60 = v97;
          sub_1D560BB28();

          v61 = v98;
          v94(v98, v60, v40);
          v62 = *(v39 + 16);
          if (v62 >= *(v39 + 24) >> 1)
          {
            sub_1D4EFFE00();
            v39 = v92;
          }

          v63 = v106;
          v64 = *(v106 + 8);
          v65 = v60;
          v66 = v107;
          v64(v65, v107);
          v64(v99, v66);
          v40 = v66;
          (*(v104 + 8))(v105, v108);
          *(v39 + 16) = v62 + 1;
          v95(v39 + v93 + v62 * v53, v61, v66);
          v41 = v63;
        }

        else
        {
          (*(v41 + 8))(v99, v40);
          (*(v104 + 8))(v55, v108);
        }
      }

      else
      {
        (*(v43 + 8))(v42, v6);
        v39 = MEMORY[0x1E69E7CC0];
        v40 = v107;
      }
    }

    v75 = sub_1D560D808();
    if (v76)
    {
      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v75 & 0xFFFFFFFFFFFFLL;
      }

      if (v77)
      {
        v78 = v100;
        sub_1D560BB28();

        (*(v41 + 16))(v101, v78, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4EFFE00();
          v39 = v86;
        }

        v79 = *(v39 + 16);
        if (v79 >= *(v39 + 24) >> 1)
        {
          sub_1D4EFFE00();
          v39 = v87;
        }

        (*(v41 + 8))(v100, v40);
        *(v39 + 16) = v79 + 1;
        (*(v41 + 32))(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v79, v101, v40);
      }

      else
      {
      }
    }

    v80 = sub_1D560D768();
    if (v81)
    {
      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
        v83 = v102;
        sub_1D560BB28();

        (*(v41 + 16))(v103, v83, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4EFFE00();
          v39 = v88;
        }

        v84 = *(v39 + 16);
        if (v84 >= *(v39 + 24) >> 1)
        {
          sub_1D4EFFE00();
          v39 = v89;
        }

        (*(v41 + 8))(v102, v40);
        *(v39 + 16) = v84 + 1;
        (*(v41 + 32))(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v84, v103, v40);
      }

      else
      {
      }
    }

    return v39;
  }

  sub_1D560D7A8();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1D4E50004(v33, &unk_1EC7F1970, &qword_1D561F4A0);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v35 + 32))(v37, v33, v34);
  v67 = sub_1D560F138();
  v69 = v68;

  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {
    (*(v35 + 8))(v37, v34);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D560F138();
  sub_1D560BB28();

  v71 = v107;
  (*(v106 + 16))(v28, v30, v107);
  sub_1D4EFFE00();
  v39 = v72;
  v73 = *(v72 + 16);
  if (v73 >= *(v72 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v39 = v91;
  }

  v74 = v106;
  (*(v106 + 8))(v30, v71);
  (*(v35 + 8))(v37, v34);
  *(v39 + 16) = v73 + 1;
  (*(v74 + 32))(v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v73, v28, v71);
  return v39;
}

void static MusicSiriRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v87 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v88 = v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v91 = v13;
  OUTLINED_FUNCTION_70_0();
  v95 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v93 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v89 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v92 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v94 = v22;
  OUTLINED_FUNCTION_70_0();
  v23 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v96 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v83 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v83 - v35;
  v37 = *v3 == *v1 && *(v3 + 8) == *(v1 + 8);
  if (v37 || (sub_1D5616168()) && (sub_1D4F3CE30(*(v3 + 16), *(v1 + 16)))
  {
    v38 = *(v3 + 24) == *(v1 + 24) && *(v3 + 32) == *(v1 + 32);
    if (v38 || (sub_1D5616168() & 1) != 0)
    {
      v39 = *(v3 + 48);
      v40 = *(v1 + 48);
      if (v39)
      {
        if (!v40)
        {
          goto LABEL_42;
        }

        v41 = *(v3 + 40) == *(v1 + 40) && v39 == v40;
        if (!v41 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v40)
      {
        goto LABEL_42;
      }

      v84 = v6;
      v85 = v4;
      v86 = type metadata accessor for MusicSiriRepresentation(0);
      v42 = *(v86 + 32);
      v43 = *(v33 + 48);
      sub_1D4F39AB0(v3 + v42, v36, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4F39AB0(v1 + v42, &v36[v43], &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_10(v36);
      if (v37)
      {
        OUTLINED_FUNCTION_10(&v36[v43]);
        if (v37)
        {
          sub_1D4E50004(v36, &qword_1EC7E9CA0, &unk_1D561A0C0);
LABEL_31:
          v52 = *(v86 + 36);
          v53 = *(v20 + 48);
          v36 = v94;
          sub_1D4F39AB0(v3 + v52, v94, &qword_1EC7EC478, &unk_1D56299D0);
          sub_1D4F39AB0(v1 + v52, &v36[v53], &qword_1EC7EC478, &unk_1D56299D0);
          v54 = v95;
          OUTLINED_FUNCTION_57(v36, 1, v95);
          if (v37)
          {
            OUTLINED_FUNCTION_57(&v36[v53], 1, v54);
            if (v37)
            {
              sub_1D4E50004(v36, &qword_1EC7EC478, &unk_1D56299D0);
LABEL_44:
              v64 = *(v90 + 48);
              v65 = v91;
              OUTLINED_FUNCTION_8_1();
              sub_1D4F39AB0(v66, v67, v68, v69);
              OUTLINED_FUNCTION_8_1();
              sub_1D4F39AB0(v70, v71, v72, v73);
              v74 = v85;
              OUTLINED_FUNCTION_57(v65, 1, v85);
              if (v37)
              {
                OUTLINED_FUNCTION_10(v65 + v64);
                if (v37)
                {
                  sub_1D4E50004(v65, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  goto LABEL_42;
                }
              }

              else
              {
                v75 = v88;
                sub_1D4F39AB0(v65, v88, &unk_1EC7E9CA8, &unk_1D561D1D0);
                OUTLINED_FUNCTION_10(v65 + v64);
                if (!v76)
                {
                  v77 = v84;
                  v78 = v87;
                  (*(v84 + 32))(v87, v65 + v64, v74);
                  OUTLINED_FUNCTION_3_48();
                  sub_1D503DD74(v79, v80, MEMORY[0x1E6968FC8]);
                  sub_1D5614D18();
                  v81 = *(v77 + 8);
                  v81(v78, v74);
                  v82 = OUTLINED_FUNCTION_99();
                  (v81)(v82);
                  sub_1D4E50004(v65, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  goto LABEL_42;
                }

                (*(v84 + 8))(v75, v74);
              }

              v45 = &qword_1EC7E9FB0;
              v46 = &qword_1D562C590;
              v57 = v65;
              goto LABEL_41;
            }
          }

          else
          {
            v55 = v92;
            sub_1D4F39AB0(v36, v92, &qword_1EC7EC478, &unk_1D56299D0);
            OUTLINED_FUNCTION_57(&v36[v53], 1, v54);
            if (!v56)
            {
              v58 = v93;
              (*(v93 + 32))(v89, &v36[v53], v54);
              OUTLINED_FUNCTION_1_56();
              sub_1D503DD74(v59, v60, MEMORY[0x1E6975D78]);
              v61 = sub_1D5614D18();
              v62 = *(v58 + 8);
              v63 = OUTLINED_FUNCTION_61();
              v62(v63);
              (v62)(v55, v54);
              sub_1D4E50004(v36, &qword_1EC7EC478, &unk_1D56299D0);
              if ((v61 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_44;
            }

            (*(v93 + 8))(v55, v54);
          }

          v45 = &qword_1EC7EE730;
          v46 = &unk_1D562C598;
LABEL_40:
          v57 = v36;
LABEL_41:
          sub_1D4E50004(v57, v45, v46);
          goto LABEL_42;
        }
      }

      else
      {
        sub_1D4F39AB0(v36, v32, &qword_1EC7E9CA0, &unk_1D561A0C0);
        OUTLINED_FUNCTION_10(&v36[v43]);
        if (!v44)
        {
          v47 = v96;
          (*(v96 + 32))(v28, &v36[v43], v23);
          OUTLINED_FUNCTION_2_41();
          sub_1D503DD74(v48, v49, MEMORY[0x1E6976F80]);
          v50 = sub_1D5614D18();
          v51 = *(v47 + 8);
          v51(v28, v23);
          v51(v32, v23);
          sub_1D4E50004(v36, &qword_1EC7E9CA0, &unk_1D561A0C0);
          if ((v50 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_31;
        }

        (*(v96 + 8))(v32, v23);
      }

      v45 = &qword_1EC7E9FB8;
      v46 = &unk_1D561B9C0;
      goto LABEL_40;
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D503C3D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E726F68747561 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 7107189 && a2 == 0xE300000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1D5616168();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D503C60C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x614E726F68747561;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0x52746E65746E6F63;
      break;
    case 6:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D503C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D503C3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D503C6F8(uint64_t a1)
{
  v2 = sub_1D503D5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D503C734(uint64_t a1)
{
  v2 = sub_1D503D5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSiriRepresentation.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE740, &qword_1D562C5A8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  v9 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1D503D5D8();
  sub_1D56163D8();
  v18[15] = 0;
  OUTLINED_FUNCTION_22_14();
  sub_1D5616088();
  if (!v2)
  {
    v18[14] = *(v1 + 16);
    v18[13] = 1;
    sub_1D503D62C();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    v18[12] = 2;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616088();
    v18[11] = 3;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616028();
    type metadata accessor for MusicSiriRepresentation(0);
    v18[10] = 4;
    sub_1D56140F8();
    OUTLINED_FUNCTION_2_41();
    sub_1D503DD74(v11, v12, MEMORY[0x1E6976F70]);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    v18[9] = 5;
    sub_1D56106B8();
    OUTLINED_FUNCTION_1_56();
    sub_1D503DD74(v13, v14, MEMORY[0x1E6975D68]);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
    v18[8] = 6;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_3_48();
    sub_1D503DD74(v15, v16, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616068();
  }

  return (*(v5 + 8))(v8, v3);
}

void MusicSiriRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v47 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v44 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v46 = v7;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v42 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  sub_1D5614E28();
  v48 = *(v0 + 16);
  MusicSiriRepresentation.Kind.rawValue.getter();
  sub_1D5614E28();

  sub_1D5614E28();
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v26 = type metadata accessor for MusicSiriRepresentation(0);
  sub_1D4F39AB0(v0 + v26[8], v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v25, 1, v15);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v17 + 32))(v21, v25, v15);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_41();
    sub_1D503DD74(v28, v29, MEMORY[0x1E6976F78]);
    sub_1D5614CB8();
    (*(v17 + 8))(v21, v15);
  }

  sub_1D4F39AB0(v0 + v26[9], v14, &qword_1EC7EC478, &unk_1D56299D0);
  v30 = v45;
  OUTLINED_FUNCTION_57(v14, 1, v45);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v32 = v41;
    v31 = v42;
    (*(v42 + 32))(v41, v14, v30);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_56();
    sub_1D503DD74(v33, v34, MEMORY[0x1E6975D70]);
    sub_1D5614CB8();
    (*(v31 + 8))(v32, v30);
  }

  v35 = v46;
  sub_1D4F39AB0(v1 + v26[10], v46, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v36 = v47;
  OUTLINED_FUNCTION_57(v35, 1, v47);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v38 = v43;
    v37 = v44;
    (*(v44 + 32))(v43, v35, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_48();
    sub_1D503DD74(v39, v40, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v37 + 8))(v38, v36);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSiriRepresentation.hashValue.getter()
{
  sub_1D56162D8();
  MusicSiriRepresentation.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSiriRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE758, &qword_1D562C5B0);
  OUTLINED_FUNCTION_4();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v45 = type metadata accessor for MusicSiriRepresentation(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v22 = v21;
  v23 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D503D5D8();
  v24 = v46;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v46 = v14;
  v41 = v10;
  v25 = v42;
  v55 = 0;
  *v22 = sub_1D5615F98();
  *(v22 + 8) = v26;
  v53 = 1;
  sub_1D503D680();
  sub_1D5615FD8();
  *(v22 + 16) = v54;
  v52 = 2;
  *(v22 + 24) = sub_1D5615F98();
  *(v22 + 32) = v27;
  v51 = 3;
  *(v22 + 40) = sub_1D5615F38();
  *(v22 + 48) = v28;
  sub_1D56140F8();
  v50 = 4;
  OUTLINED_FUNCTION_2_41();
  sub_1D503DD74(v29, v30, MEMORY[0x1E6976F88]);
  v31 = v46;
  sub_1D5615F78();
  v32 = v22;
  sub_1D4F39A1C(v31, v22 + *(v45 + 32), &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D56106B8();
  v49 = 5;
  OUTLINED_FUNCTION_1_56();
  sub_1D503DD74(v33, v34, MEMORY[0x1E6975D80]);
  v35 = v41;
  sub_1D5615F78();
  v36 = v45;
  sub_1D4F39A1C(v35, v32 + *(v45 + 36), &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D560C0A8();
  v48 = 6;
  OUTLINED_FUNCTION_3_48();
  sub_1D503DD74(v37, v38, MEMORY[0x1E6968FD0]);
  sub_1D5615F78();
  (*(v43 + 8))(v19, v44);
  sub_1D4F39A1C(v6, v32 + *(v36 + 40), &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D503D6D4(v32, v25);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1D503D738(v32);
}

uint64_t sub_1D503D574(uint64_t a1)
{
  sub_1D56162D8();
  MusicSiriRepresentation.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503D5B0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSiriRepresentation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D503D5D8()
{
  result = qword_1EC7EE748;
  if (!qword_1EC7EE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE748);
  }

  return result;
}

unint64_t sub_1D503D62C()
{
  result = qword_1EC7EE750;
  if (!qword_1EC7EE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE750);
  }

  return result;
}

unint64_t sub_1D503D680()
{
  result = qword_1EC7EE760;
  if (!qword_1EC7EE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE760);
  }

  return result;
}

uint64_t sub_1D503D6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D503D738(uint64_t a1)
{
  v2 = type metadata accessor for MusicSiriRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D503D798()
{
  result = qword_1EC7EE768;
  if (!qword_1EC7EE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE770, &qword_1D562C5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE768);
  }

  return result;
}

unint64_t sub_1D503D800()
{
  result = qword_1EC7EE778;
  if (!qword_1EC7EE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE778);
  }

  return result;
}

void sub_1D503D8D0(uint64_t a1)
{
  sub_1D4F18AF4();
  if (v1 <= 0x3F)
  {
    sub_1D503D9F8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68]);
    if (v2 <= 0x3F)
    {
      sub_1D503D9F8(319, &qword_1EDD5F220, MEMORY[0x1E6975D60]);
      if (v3 <= 0x3F)
      {
        sub_1D503D9F8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D503D9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MusicSiriRepresentation.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D503DC1C()
{
  result = qword_1EC7EE788;
  if (!qword_1EC7EE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE788);
  }

  return result;
}

unint64_t sub_1D503DC74()
{
  result = qword_1EC7EE790;
  if (!qword_1EC7EE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE790);
  }

  return result;
}

unint64_t sub_1D503DCCC()
{
  result = qword_1EC7EE798;
  if (!qword_1EC7EE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE798);
  }

  return result;
}

unint64_t sub_1D503DD20()
{
  result = qword_1EC7EE7A0;
  if (!qword_1EC7EE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7A0);
  }

  return result;
}

uint64_t sub_1D503DD74(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{

  return swift_once();
}

_BYTE *storeEnumTagSinglePayload for MusicLibraryMapping(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D503DEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicSuggestedPivotEntry.id.getter()
{
  MusicSuggestedPivotContainer.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_1D503DFE4(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7A8, &qword_1D562C9D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1D51FBFF8();
  v5 = sub_1D5611808();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D503E548(v4);
    return 0;
  }

  else
  {
    v6 = a1();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

uint64_t sub_1D503E128(void (*a1)(uint64_t), void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v3 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for MusicSuggestedPivotContainer(0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  sub_1D503DEA4(v36, v25 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = (*(v11 + 32))(v15, v26, v9);
      a2(v28);
      return (*(v11 + 8))(v15, v9);
    }

    else
    {
      v31 = (*(v32 + 32))(v8, v26, v3);
      a3(v31);
      return (*(v32 + 8))(v8, v3);
    }
  }

  else
  {
    v30 = (*(v18 + 32))(v22, v26, v16);
    a1(v30);
    return (*(v18 + 8))(v22, v16);
  }
}

uint64_t MusicSuggestedPivotEntry.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503E448(uint64_t a1)
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D503E484@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D503E4AC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1D525C410(a1, &unk_1F50A19B0);
  if (v4)
  {
    return 0;
  }

  v6 = v3 < sub_1D525C410(v2, &unk_1F50A19B0);
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1D503E548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7A8, &qword_1D562C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D503E5B4()
{
  result = qword_1EC7EE7B0;
  if (!qword_1EC7EE7B0)
  {
    type metadata accessor for MusicSuggestedPivotEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7B0);
  }

  return result;
}

uint64_t type metadata accessor for MusicSuggestedPivotEntry(uint64_t a1)
{
  result = qword_1EC7EE7B8;
  if (!qword_1EC7EE7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D503E680(uint64_t a1)
{
  result = type metadata accessor for MusicSuggestedPivotContainer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotEntry.UserInteraction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D503E7C8()
{
  result = qword_1EC7EE7C8;
  if (!qword_1EC7EE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7C8);
  }

  return result;
}

unint64_t sub_1D503E820()
{
  result = qword_1EC7EE7D0;
  if (!qword_1EC7EE7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE7D8, qword_1D562CB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE7D0);
  }

  return result;
}

uint64_t _s9ParsedURLVMa(uint64_t a1)
{
  result = qword_1EC7EE7E0;
  if (!qword_1EC7EE7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D503E8FC(uint64_t a1)
{
  sub_1D560C0A8();
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD53A08, MEMORY[0x1E6975528]);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D503EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D560BB98();
  v5 = *(v4 - 8);
  v108 = v4;
  v109 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE7F8, &qword_1D562CC48);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13();
  v105 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_13();
  v103 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v99 - v14;
  v15 = _s9ParsedURLVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D560C0A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v110 = v19;
  v21(v18, a1);
  v111 = a1;
  v22 = sub_1D560BF18();
  sub_1D54F62DC(0, *(v22 + 16), v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v30 = v28 >> 1;
  if (v26 != v28 >> 1)
  {
    if (v26 >= v30)
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v31 = (v24 + 16 * v26);
    v32 = *v31 == 47 && v31[1] == 0xE100000000000000;
    if (v32 || (result = sub_1D5616168(), (result & 1) != 0))
    {
      OUTLINED_FUNCTION_4_38();
      v22 = sub_1D4FE35EC();
      v24 = v33;
      v26 = v34;
      v28 = v35;
      result = swift_unknownObjectRelease();
      v30 = v28 >> 1;
    }
  }

  if (v26 == v30)
  {
    v36 = OUTLINED_FUNCTION_0_57();
    (v22)(v36);
    swift_unknownObjectRelease();
LABEL_21:
    (v22)(v18, v28);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }

  if (v26 >= v30)
  {
    goto LABEL_63;
  }

  v106 = v18;
  v107 = v15;
  v37 = (v24 + 16 * v26);
  v22 = *v37;
  v38 = v37[1];
  OUTLINED_FUNCTION_4_38();
  v39 = sub_1D4FE35EC();
  OUTLINED_FUNCTION_6_40();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRelease();
  result = sub_1D554F8D0(v22);
  v40 = v18 >> 1;
  if (result == 14)
  {
    if (v28 == v18 >> 1)
    {
      v41 = OUTLINED_FUNCTION_0_57();
      (v22)(v41);
      swift_unknownObjectRelease();

LABEL_20:
      v18 = v106;
      v15 = v107;
      goto LABEL_21;
    }

    v101 = a2;
    if (v28 >= v40)
    {
      goto LABEL_66;
    }

    v100 = *(v24 + 16 * v28);
    v48 = OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_6_40();

    swift_unknownObjectRelease();
    result = sub_1D554F8D0(v100);
    if (result == 14)
    {
      v49 = OUTLINED_FUNCTION_0_57();
      (v22)(v49);
      swift_unknownObjectRelease();

      a2 = v101;
      goto LABEL_20;
    }

    v51 = v106;
    v50 = v107;
    v52 = &v106[v107[8]];
    *v52 = v22;
    v52[1] = v38;
    v51[v50[5]] = result;
    v40 = v18 >> 1;
    if (v28 == v18 >> 1)
    {
      v46 = 0;
      v47 = 0;
      goto LABEL_28;
    }

    a2 = v101;
  }

  else
  {
    v42 = result;

    v44 = v106;
    v43 = v107;
    v45 = &v106[v107[8]];
    *v45 = 0;
    *(v45 + 1) = 0;
    v44[v43[5]] = v42;
    if (v28 == v18 >> 1)
    {
      v101 = a2;
      v46 = 0;
      v47 = 0;
      v48 = v39;
      goto LABEL_28;
    }
  }

  v101 = a2;
  if (v28 >= v40)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v53 = (v24 + 16 * v28);
  v46 = *v53;
  v47 = v53[1];
  v48 = OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_6_40();

  result = swift_unknownObjectRelease();
  v40 = v18 >> 1;
LABEL_28:
  if (v28 == v40)
  {
    if (v47)
    {
      v54 = 0;
      v100 = v48;
      v56 = v106;
      v55 = v107;
      goto LABEL_35;
    }

    goto LABEL_49;
  }

  if (v28 < v40)
  {
    v57 = (v24 + 16 * v28);
    v54 = *v57;
    v58 = v57[1];
    OUTLINED_FUNCTION_4_38();
    v59 = sub_1D4FE35EC();

    swift_unknownObjectRelease();
    if (v47)
    {
      v100 = v59;
      v56 = v106;
      v55 = v107;
      if (v58)
      {
        v60 = v46;
        v46 = v54;
LABEL_36:
        v61 = v103;
        v62 = (v56 + v55[9]);
        *v62 = v60;
        v62[1] = v47;
        v63 = (v56 + v55[6]);
        *v63 = v46;
        v63[1] = v58;
        v64 = v104;
        v65 = v105;
        sub_1D560BBF8();
        sub_1D4E69910(v64, v61, &qword_1EC7ECE78, &qword_1D5623540);
        v66 = sub_1D560BC78();
        if (__swift_getEnumTagSinglePayload(v61, 1, v66) == 1)
        {
          sub_1D4E50004(v61, &qword_1EC7ECE78, &qword_1D5623540);
          v67 = v101;
LABEL_48:
          v77 = v102;
          v72 = v108;
          __swift_storeEnumTagSinglePayload(v102, 1, 1, v108);
LABEL_54:
          sub_1D4E69910(v77, v65, &qword_1EC7EE7F8, &qword_1D562CC48);
          if (__swift_getEnumTagSinglePayload(v65, 1, v72) == 1)
          {
            swift_unknownObjectRelease();
            v83 = OUTLINED_FUNCTION_2_42();
            v84(v83);
            sub_1D4E50004(v77, &qword_1EC7EE7F8, &qword_1D562CC48);
            sub_1D4E50004(v64, &qword_1EC7ECE78, &qword_1D5623540);
            v85 = v65;
            v86 = &qword_1EC7EE7F8;
            v87 = &qword_1D562CC48;
          }

          else
          {
            sub_1D560BB48();
            v89 = v88;
            (*(v109 + 8))(v65, v72);
            if (v89)
            {
              v90 = sub_1D560EED8();
              v92 = v91;
              swift_unknownObjectRelease();
              v93 = OUTLINED_FUNCTION_2_42();
              v94(v93);
              sub_1D4E50004(v77, &qword_1EC7EE7F8, &qword_1D562CC48);
              sub_1D4E50004(v64, &qword_1EC7ECE78, &qword_1D5623540);
              v95 = (v56 + v55[7]);
              *v95 = v90;
              v95[1] = v92;
LABEL_60:
              sub_1D503F7B4(v56, v67);
              __swift_storeEnumTagSinglePayload(v67, 0, 1, v55);
              return sub_1D503F818(v56);
            }

            swift_unknownObjectRelease();
            v96 = OUTLINED_FUNCTION_2_42();
            v97(v96);
            sub_1D4E50004(v77, &qword_1EC7EE7F8, &qword_1D562CC48);
            v86 = &qword_1EC7ECE78;
            v87 = &qword_1D5623540;
            v85 = v64;
          }

          sub_1D4E50004(v85, v86, v87);
          v98 = (v56 + v55[7]);
          *v98 = 0;
          v98[1] = 0;
          goto LABEL_60;
        }

        v68 = sub_1D560BBC8();
        result = (*(*(v66 - 8) + 8))(v61, v66);
        v67 = v101;
        if (!v68)
        {
          goto LABEL_48;
        }

        v69 = v101;
        v70 = 0;
        v71 = *(v68 + 16);
        v72 = v108;
        v73 = (v109 + 8);
        while (1)
        {
          if (v71 == v70)
          {

            v77 = v102;
            v81 = v102;
            v82 = 1;
            goto LABEL_53;
          }

          if (v70 >= *(v68 + 16))
          {
            break;
          }

          (*(v109 + 16))(v112, v68 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v70, v72);
          if (sub_1D560BB38() == 105 && v74 == 0xE100000000000000)
          {

LABEL_52:

            v72 = v108;
            v77 = v102;
            (*(v109 + 32))(v102, v112, v108);
            v81 = v77;
            v82 = 0;
LABEL_53:
            __swift_storeEnumTagSinglePayload(v81, v82, 1, v72);
            v67 = v69;
            v56 = v106;
            v55 = v107;
            v64 = v104;
            v65 = v105;
            goto LABEL_54;
          }

          v76 = sub_1D5616168();

          if (v76)
          {
            goto LABEL_52;
          }

          v72 = v108;
          result = (*v73)(v112, v108);
          ++v70;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_35:
      v58 = v47;
      v60 = v54;
      v47 = 0;
      goto LABEL_36;
    }

LABEL_49:
    v78 = v106;
    v15 = v107;

    swift_unknownObjectRelease();
    v79 = *(v20 + 8);
    v80 = v110;
    v79(v111, v110);
    v79(v78, v80);

    a2 = v101;
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

BOOL sub_1D503F3B8(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560BFB8() & 1) == 0)
  {
    return 0;
  }

  v4 = _s9ParsedURLVMa(0);
  v5 = *(v4 + 20);
  v6 = *(a2 + v5);
  v7 = sub_1D555941C(*(a1 + v5));
  v9 = v8;
  v11 = v7 == sub_1D555941C(v6) && v9 == v10;
  if (v11)
  {
  }

  else
  {
    v12 = sub_1D5616168();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v14 == *v16 && v15 == v16[1];
  if (!v17 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_57();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v19);
    v23 = v11 && v21 == v22;
    if (!v23 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_57();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v25);
    v29 = v11 && v27 == v28;
    if (!v29 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_57();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v31);
    v35 = v11 && v33 == v34;
    return v35 || (sub_1D5616168() & 1) != 0;
  }

  return !v30;
}

uint64_t sub_1D503F538(uint64_t a1)
{
  sub_1D560C0A8();
  sub_1D503F76C(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  v2 = _s9ParsedURLVMa(0);
  sub_1D555941C(*(v1 + v2[5]));
  sub_1D5614E28();

  sub_1D5614E28();
  if (*(v1 + v2[7] + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + v2[8] + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (!*(v1 + v2[9] + 8))
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t sub_1D503F6E4()
{
  sub_1D56162D8();
  sub_1D503F538(v1);
  return sub_1D5616328();
}

uint64_t sub_1D503F730(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D503F538(v2);
  return sub_1D5616328();
}

uint64_t sub_1D503F76C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D503F7B4(uint64_t a1, uint64_t a2)
{
  v4 = _s9ParsedURLVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D503F818(uint64_t a1)
{
  v2 = _s9ParsedURLVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCreditsSection.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MusicCreditsSection(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicCreditsSection(uint64_t a1)
{
  result = qword_1EC7EE898;
  if (!qword_1EC7EE898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCreditsSection.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicCreditsSection.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCreditsSection(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1D503FAE4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v3, type metadata accessor for MusicCreditsSection, v4);
  sub_1D560EC28();
  if (v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MusicCreditsSection.creditArtists.getter()
{
  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58(&qword_1EC7E8C30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v0, type metadata accessor for MusicCreditsSection, v1);

  return sub_1D560EC28();
}

uint64_t static MusicCreditsSection.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicCreditsSection(0);

  return sub_1D5611A78();
}

uint64_t MusicCreditsSection.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for MusicCreditsSection(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_5_39();
  sub_1D50416C4(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicCreditsSection.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for MusicCreditsSection(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_5_39();
  sub_1D50416C4(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503FE3C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D50416C4(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D503FEE0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCreditsSection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCreditsSection.subscript.getter(uint64_t a1)
{
  return sub_1D503FF48();
}

{
  return sub_1D503FF48();
}

uint64_t sub_1D503FF48()
{
  OUTLINED_FUNCTION_2_43();
  sub_1D50416C4(v1, v0, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_7_39(&qword_1EC7EE848);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t MusicCreditsSection.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_2_43();
  sub_1D50416C4(v2, v1, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_7_39(&qword_1EC7EE848);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5040138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  v11 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D504026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  v13 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D50403B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  v13 = sub_1D50416C4(&qword_1EC7EE8A8, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5040538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  swift_getKeyPath();
  v6 = sub_1D560D178();

  *a5 = v6;
  return result;
}

uint64_t sub_1D50405C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8B0, &qword_1D562CF58);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D50416C4(&qword_1EC7EE8B8, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
  v0 = sub_1D560D0F8();

  qword_1EC7EE800 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.creditArtists.getter()
{
  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58(&qword_1EC7E8C30);
  }
}

uint64_t sub_1D50406F4(uint64_t a1, uint64_t a2)
{
  sub_1D50416C4(&qword_1EC7EE850, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);

  return sub_1D5610C58();
}

uint64_t MusicCreditsSection.init(from:)(void *a1)
{
  type metadata accessor for MusicCreditsSection(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_3_49();
  sub_1D50416C4(v3, v4, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_4_39();
  sub_1D50416C4(v5, v1, MEMORY[0x1E6974D60]);
  OUTLINED_FUNCTION_6_41(&qword_1EC7EE870);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCreditsSection.encode(to:)(uint64_t a1)
{
  type metadata accessor for MusicCreditsSection(0);
  OUTLINED_FUNCTION_3_49();
  sub_1D50416C4(v2, v3, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_4_39();
  sub_1D50416C4(v4, v1, MEMORY[0x1E6974D60]);
  OUTLINED_FUNCTION_6_41(&qword_1EC7EE870);
  return sub_1D5612688();
}

uint64_t MusicCreditsSection.description.getter()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5682160);
  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](0x656C746974202C22, 0xEB0000000022203ALL);
  v1 = MusicCreditsSection.title.getter();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x3A646E696B202C22, 0xEA00000000002220);
  v2 = MusicCreditsSection.kind.getter();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0;
}

unint64_t MusicCreditsSection.debugDescription.getter()
{
  v0 = type metadata accessor for CreditArtist(0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE878, &qword_1D562CC58);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE880, &qword_1D562CC60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE858, &qword_1D562CC50);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v32 - v16;
  v45 = 0xD000000000000014;
  v46 = 0x80000001D5682180;
  strcpy(v42, "\n  id: ");
  BYTE1(v42[1]) = 0;
  WORD1(v42[1]) = 0;
  HIDWORD(v42[1]) = -402653184;
  v17 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v17);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  strcpy(v42, ",\n  title: ");
  BYTE5(v42[1]) = 0;
  HIWORD(v42[1]) = -5120;
  v18 = MusicCreditsSection.title.getter();
  MEMORY[0x1DA6EAC70](v18);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  strcpy(v42, ",\n  kind: .");
  BYTE5(v42[1]) = 0;
  HIWORD(v42[1]) = -5120;
  v19 = MusicCreditsSection.kind.getter();
  MEMORY[0x1DA6EAC70](v19);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_10_39();

  if (qword_1EC7E8C30 != -1)
  {
    OUTLINED_FUNCTION_1_58(&qword_1EC7E8C30);
  }

  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  OUTLINED_FUNCTION_0_58();
  sub_1D50416C4(v20, type metadata accessor for MusicCreditsSection, v21);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D4E50004(v11, &qword_1EC7EE880, &qword_1D562CC60);
  }

  else
  {
    v22 = v35;
    (*(v14 + 32))(v35, v11, v12);
    v43 = 0;
    v44 = 0xE000000000000000;
    v33 = v14;
    (*(v14 + 16))(v8, v22, v12);
    v23 = *(v34 + 36);
    sub_1D50410B0();
    sub_1D5615608();
    while (1)
    {
      sub_1D5615648();
      if (*&v8[v23] == v42[0])
      {
        break;
      }

      v24 = sub_1D5615688();
      sub_1D5041114(v25, v5);
      v24(v42, 0);
      sub_1D5615658();
      sub_1D5041178(v5, v3);
      v26 = v43 & 0xFFFFFFFFFFFFLL;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v44) & 0xF;
      }

      if (v26)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v42[0] = 10;
      v42[1] = 0xE100000000000000;
      v27 = CreditArtist.debugDescription.getter();
      MEMORY[0x1DA6EAC70](v27);

      MEMORY[0x1DA6EAC70](v42[0], v42[1]);

      sub_1D50411DC(v3);
    }

    sub_1D4E50004(v8, &qword_1EC7EE878, &qword_1D562CC58);
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_1D5615B68();

    strcpy(v42, ",\n  artists: [");
    HIBYTE(v42[1]) = -18;
    v40 = v43;
    v41 = v44;
    v38 = 10;
    v39 = 0xE100000000000000;
    v36 = 0x202020200ALL;
    v37 = 0xE500000000000000;
    sub_1D4F53278();
    v28 = sub_1D5615968();
    v30 = v29;

    MEMORY[0x1DA6EAC70](v28, v30);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    MEMORY[0x1DA6EAC70](v42[0], v42[1]);

    (*(v33 + 8))(v35, v12);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v45;
}

unint64_t sub_1D50410B0()
{
  result = qword_1EC7EE888;
  if (!qword_1EC7EE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE858, &qword_1D562CC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE888);
  }

  return result;
}

uint64_t sub_1D5041114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtist(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5041178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtist(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50411DC(uint64_t a1)
{
  v2 = type metadata accessor for CreditArtist(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5041240()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7EE808 = v3;
  return result;
}

uint64_t sub_1D504134C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6975228], v0);
  qword_1EC7EE810 = v3;
  return result;
}

uint64_t sub_1D5041460()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE818);
  __swift_project_value_buffer(v0, qword_1EC7EE818);
  type metadata accessor for MusicCreditsSection(0);
  sub_1D50416C4(&qword_1EC7EE848, type metadata accessor for MusicCreditsSection, &protocol conformance descriptor for MusicCreditsSection);
  return sub_1D560D988();
}

uint64_t sub_1D5041520()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE830);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE830);
  if (qword_1EC7E8C48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EE818);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D50416C4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of MusicDonatableIntentRequest.containersToDonateForPlayback.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4FBE984;

  return v7(a1, a2);
}

void RecentlyAddedMusicItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v53 = v3;
  v52[3] = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v52[4] = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v52[1] = type metadata accessor for TVSeason(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v52[2] = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v52[6] = v10;
  v52[7] = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v52[5] = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v52[9] = v13;
  v52[10] = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v52[8] = v14;
  OUTLINED_FUNCTION_70_0();
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v52[14] = v16;
  v52[15] = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v52[13] = v17;
  v18 = OUTLINED_FUNCTION_70_0();
  v52[11] = type metadata accessor for MusicMovie(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v52[12] = v20;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v52 - v26);
  v52[17] = type metadata accessor for RecentlyAddedMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v52[16] = v29;
  v30 = v2[3];
  v54 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_1D5610CF8();
  sub_1D560FFB8();
  sub_1D4E5E440(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
  v31 = OUTLINED_FUNCTION_19_30();
  v34 = *(v23 + 8);
  v32 = v23 + 8;
  v33 = v34;
  v35 = OUTLINED_FUNCTION_159_0();
  v34(v35);
  if (v31 & 1) != 0 || (sub_1D560FEA8(), v31 = OUTLINED_FUNCTION_19_30(), v36 = OUTLINED_FUNCTION_159_0(), v33(v36), (v31))
  {
    v37 = OUTLINED_FUNCTION_90_2();
    v33(v37);
    OUTLINED_FUNCTION_35_20();
    sub_1D5613978();
    v38 = OUTLINED_FUNCTION_47_20();
    v39(v38);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1D5041F24(v31, v53, type metadata accessor for RecentlyAddedMusicItem);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FE28();
  OUTLINED_FUNCTION_19_30();
  v40 = OUTLINED_FUNCTION_20_38();
  v33(v40);
  if (v0)
  {
    v41 = OUTLINED_FUNCTION_90_2();
    v33(v41);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_26_26();
    v31 = v32;
    sub_1D560D708();
    v42 = OUTLINED_FUNCTION_25_29();
    v43(v42);
    OUTLINED_FUNCTION_41_2();
    OUTLINED_FUNCTION_40_1();
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_2_44();
    OUTLINED_FUNCTION_56_11(v44, v45, v46);
    goto LABEL_4;
  }

  sub_1D560FE38();
  OUTLINED_FUNCTION_19_30();
  v47 = OUTLINED_FUNCTION_20_38();
  v33(v47);
  sub_1D5610038();
  OUTLINED_FUNCTION_19_30();
  v48 = OUTLINED_FUNCTION_20_38();
  v33(v48);
  sub_1D560FF58();
  OUTLINED_FUNCTION_19_30();
  v49 = OUTLINED_FUNCTION_20_38();
  v33(v49);
  sub_1D5610068();
  OUTLINED_FUNCTION_19_30();
  v50 = OUTLINED_FUNCTION_20_38();
  v33(v50);
  sub_1D560FF38();
  OUTLINED_FUNCTION_19_30();
  v51 = OUTLINED_FUNCTION_20_38();
  v33(v51);
  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D5041F24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t RecentlyAddedMusicItem.id.getter()
{
  RecentlyAddedMusicItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t RecentlyAddedMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecentlyAddedMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_98();
  sub_1D504221C(v6, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      a1[3] = type metadata accessor for MusicMovie(0);
      OUTLINED_FUNCTION_8_38();
      a1[4] = sub_1D4E5E440(v17, v18, &protocol conformance descriptor for MusicMovie);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v14 = type metadata accessor for MusicMovie;
      goto LABEL_9;
    case 2u:
      v8 = sub_1D560EEA8();
      v9 = v8;
      v10 = MEMORY[0x1E69754B0];
      goto LABEL_6;
    case 3u:
      v8 = sub_1D5614898();
      v9 = v8;
      v10 = MEMORY[0x1E69773A0];
      goto LABEL_6;
    case 4u:
      a1[3] = type metadata accessor for TVSeason(0);
      OUTLINED_FUNCTION_9_37();
      a1[4] = sub_1D4E5E440(v11, v12, &protocol conformance descriptor for TVSeason);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v14 = type metadata accessor for TVSeason;
      goto LABEL_9;
    case 5u:
      a1[3] = type metadata accessor for UploadedVideo(0);
      OUTLINED_FUNCTION_7_40();
      a1[4] = sub_1D4E5E440(v19, v20, &protocol conformance descriptor for UploadedVideo);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      v14 = type metadata accessor for UploadedVideo;
LABEL_9:
      result = sub_1D5041F24(v5, boxed_opaque_existential_0, v14);
      break;
    default:
      v8 = sub_1D5613AF8();
      v9 = v8;
      v10 = MEMORY[0x1E6976CF0];
LABEL_6:
      a1[3] = v8;
      a1[4] = v10;
      v15 = __swift_allocate_boxed_opaque_existential_0(a1);
      result = (*(*(v9 - 8) + 32))(v15, v5, v9);
      break;
  }

  return result;
}

uint64_t sub_1D504221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyAddedMusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void RecentlyAddedMusicItem.propertyProvider.getter()
{
  OUTLINED_FUNCTION_47();
  v45 = v3;
  v43 = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v44 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v41 = type metadata accessor for TVSeason(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v42 = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v10 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_14_3();
  v13 = type metadata accessor for MusicMovie(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v15 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D504221C(v1, v21 - v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v22, v0, v33);
      v34 = *(v13 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v35 + 16))(v45, v0 + v34);
      OUTLINED_FUNCTION_3_50();
      v37 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v28(v2, v22, v10);
      sub_1D560EDC8();
      (*(v0 + 8))(v2, v10);
      break;
    case 3u:
      v29 = OUTLINED_FUNCTION_63_9();
      v30(v29, v22, v0);
      sub_1D5614598();
      v31 = OUTLINED_FUNCTION_59_2();
      v32(v31);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v23 = v42;
      sub_1D5041F24(v22, v42, v24);
      v25 = *(v41 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v26 + 16))(v45, v42 + v25);
      v27 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v23 = v44;
      sub_1D5041F24(v22, v44, v38);
      v39 = *(v43 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14();
      (*(v40 + 16))(v45, v44 + v39);
      v27 = type metadata accessor for UploadedVideo;
LABEL_8:
      v36 = v27;
      v37 = v23;
LABEL_9:
      sub_1D5042E08(v37, v36);
      break;
    default:
      (*(v17 + 32))(v1, v22, v15);
      sub_1D5613968();
      (*(v17 + 8))(v1, v15);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void static RecentlyAddedMusicItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v91 = v2;
  v92 = v3;
  v79[2] = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v84 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v79[1] = type metadata accessor for TVSeason(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v83 = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v89 = v10;
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v82 = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v87 = v13;
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v80 = v14;
  v15 = OUTLINED_FUNCTION_70_0();
  v79[0] = type metadata accessor for MusicMovie(v15);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v81 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v85 = v19;
  v86 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_14_3();
  type metadata accessor for RecentlyAddedMusicItem(v20);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v24 = (v22 - v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (v79 - v27);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_64_11();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v79 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (v79 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v37 = (v79 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8E8, &qword_1D562D020);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v79 - v41;
  v43 = *(v40 + 56);
  sub_1D504221C(v91, v79 - v41);
  sub_1D504221C(v92, &v42[v43]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D504221C(v42, v35);
      if (OUTLINED_FUNCTION_55_12() != 1)
      {
        OUTLINED_FUNCTION_3_50();
        v68 = v35;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_2_44();
      v60 = v81;
      sub_1D5041F24(&v42[v43], v81, v61);
      v62 = *v35 == *v60 && v35[1] == v60[1];
      if (v62 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_29_24();
      sub_1D5042E08(v60, v63);
      v48 = v35;
      goto LABEL_44;
    case 2u:
      sub_1D504221C(v42, v32);
      if (OUTLINED_FUNCTION_55_12() == 2)
      {
        v49 = v87;
        OUTLINED_FUNCTION_48_10();
        v50 = v80;
        v51 = v88;
        v52(v80);
        sub_1D560EE28();
        v53 = *(v49 + 8);
        v53(v50, v51);
        v54 = v32;
        v55 = v51;
        goto LABEL_16;
      }

      (*(v87 + 8))(v32, v88);
      goto LABEL_38;
    case 3u:
      sub_1D504221C(v42, v0);
      if (OUTLINED_FUNCTION_55_12() != 3)
      {
        v69 = OUTLINED_FUNCTION_66_0();
        v71(v69, v70);
        goto LABEL_38;
      }

      v57 = v89;
      v56 = v90;
      OUTLINED_FUNCTION_48_10();
      v58 = v82;
      v59(v82);
      _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
      v53 = *(v57 + 8);
      v53(v58, v56);
      v54 = v0;
      v55 = v56;
LABEL_16:
      v53(v54, v55);
      goto LABEL_40;
    case 4u:
      sub_1D504221C(v42, v28);
      if (OUTLINED_FUNCTION_55_12() != 4)
      {
        OUTLINED_FUNCTION_32_20();
        v68 = v28;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_1_59();
      v44 = v83;
      sub_1D5041F24(&v42[v43], v83, v45);
      v46 = *v28 == *v44 && v28[1] == v44[1];
      if (v46 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_33_23();
      sub_1D5042E08(v44, v47);
      v48 = v28;
      goto LABEL_44;
    case 5u:
      sub_1D504221C(v42, v24);
      if (OUTLINED_FUNCTION_55_12() != 5)
      {
        OUTLINED_FUNCTION_16_30();
        v68 = v24;
LABEL_37:
        sub_1D5042E08(v68, v67);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_0_59();
      v64 = v84;
      sub_1D5041F24(&v42[v43], v84, v65);
      v66 = *v24 == *v64 && v24[1] == v64[1];
      if (v66 || (sub_1D5616168() & 1) != 0)
      {
        sub_1D5611A78();
      }

      OUTLINED_FUNCTION_28_26();
      sub_1D5042E08(v64, v77);
      v48 = v24;
LABEL_44:
      sub_1D5042E08(v48, v37);
      OUTLINED_FUNCTION_10_40();
      sub_1D5042E08(v42, v78);
      break;
    default:
      sub_1D504221C(v42, v37);
      if (OUTLINED_FUNCTION_55_12())
      {
        (*(v85 + 8))(v37, v86);
LABEL_38:
        sub_1D4E50004(v42, &qword_1EC7EE8E8, &qword_1D562D020);
      }

      else
      {
        v72 = v85;
        OUTLINED_FUNCTION_48_10();
        v73 = v86;
        v74(v1);
        OUTLINED_FUNCTION_42_3();
        sub_1D5613A68();
        v75 = *(v72 + 8);
        v75(v1, v73);
        v75(v37, v73);
LABEL_40:
        OUTLINED_FUNCTION_10_40();
        sub_1D5042E08(v42, v76);
      }

      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5042E08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5042E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4D636973756DLL && a2 == 0xEA00000000006569;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F736165537674 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D5043060(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x766F4D636973756DLL;
      break;
    case 2:
      result = 0x646956636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x6E6F736165537674;
      break;
    case 5:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5043128(uint64_t a1)
{
  v2 = sub_1D50441E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043164(uint64_t a1)
{
  v2 = sub_1D50441E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50431B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D504320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5042E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5043234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5043058();
  *a1 = result;
  return result;
}

uint64_t sub_1D504325C(uint64_t a1)
{
  v2 = sub_1D5043FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043298(uint64_t a1)
{
  v2 = sub_1D5043FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50432D4(uint64_t a1)
{
  v2 = sub_1D504418C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043310(uint64_t a1)
{
  v2 = sub_1D504418C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D504334C(uint64_t a1)
{
  v2 = sub_1D5044138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043388(uint64_t a1)
{
  v2 = sub_1D5044138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50433C4(uint64_t a1)
{
  v2 = sub_1D50440E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043400(uint64_t a1)
{
  v2 = sub_1D50440E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D504343C(uint64_t a1)
{
  v2 = sub_1D5044090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5043478(uint64_t a1)
{
  v2 = sub_1D5044090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50434B4(uint64_t a1)
{
  v2 = sub_1D504403C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50434F0(uint64_t a1)
{
  v2 = sub_1D504403C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecentlyAddedMusicItem.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8F0, &qword_1D562D028);
  OUTLINED_FUNCTION_4();
  v117 = v3;
  v118 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v116 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v114 = type metadata accessor for UploadedVideo(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v115 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE8F8, &qword_1D562D030);
  OUTLINED_FUNCTION_4();
  v112 = v10;
  v113 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v111 = v12;
  v13 = OUTLINED_FUNCTION_70_0();
  v109 = type metadata accessor for TVSeason(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v110 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE900, &qword_1D562D038);
  OUTLINED_FUNCTION_4();
  v107 = v17;
  v108 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v104 = v19;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v105 = v21;
  v106 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v103 = v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE908, &qword_1D562D040);
  OUTLINED_FUNCTION_4();
  v101 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v98 = v25;
  OUTLINED_FUNCTION_70_0();
  v100 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v99 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v97 = v28;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE910, &qword_1D562D048);
  OUTLINED_FUNCTION_4();
  v95 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v94 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v92 = type metadata accessor for MusicMovie(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v93 = v34;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE918, &qword_1D562D050);
  OUTLINED_FUNCTION_4();
  v90 = v35;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v89 - v37;
  v39 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v89 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  type metadata accessor for RecentlyAddedMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE920, &qword_1D562D058);
  OUTLINED_FUNCTION_4();
  v120 = v50;
  v121 = v49;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v89 - v52;
  v54 = *(a1 + 32);
  v55 = OUTLINED_FUNCTION_42_3();
  __swift_project_boxed_opaque_existential_1(v55, v56);
  sub_1D5043FE8();
  v119 = v53;
  sub_1D56163D8();
  sub_1D504221C(v122, v48);
  OUTLINED_FUNCTION_210();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = v93;
      sub_1D5041F24(v48, v93, type metadata accessor for MusicMovie);
      v124 = 1;
      sub_1D504418C();
      v78 = v94;
      OUTLINED_FUNCTION_54_10(&type metadata for RecentlyAddedMusicItem.MusicMovieCodingKeys, &v124);
      OUTLINED_FUNCTION_8_38();
      sub_1D4E5E440(v79, v80, &protocol conformance descriptor for MusicMovie);
      v81 = v96;
      sub_1D56160C8();
      (*(v95 + 8))(v78, v81);
      v66 = type metadata accessor for MusicMovie;
      goto LABEL_8;
    case 2u:
      v67 = v99;
      v68 = v97;
      v69 = v100;
      (*(v99 + 32))(v97, v48, v100);
      v125 = 2;
      sub_1D5044138();
      OUTLINED_FUNCTION_22_25(&type metadata for RecentlyAddedMusicItem.MusicVideoCodingKeys, &v125);
      OUTLINED_FUNCTION_18_31();
      sub_1D4E5E440(v70, v71, MEMORY[0x1E69754F0]);
      OUTLINED_FUNCTION_67_11(v68, v72);
      goto LABEL_6;
    case 3u:
      v67 = v105;
      v69 = v106;
      v68 = v103;
      (*(v105 + 32))(v103, v48, v106);
      v126 = 3;
      sub_1D50440E4();
      OUTLINED_FUNCTION_22_25(&type metadata for RecentlyAddedMusicItem.PlaylistCodingKeys, &v126);
      OUTLINED_FUNCTION_17_30();
      sub_1D4E5E440(v73, v74, MEMORY[0x1E69773E8]);
      OUTLINED_FUNCTION_67_11(v68, v75);
LABEL_6:
      v76 = OUTLINED_FUNCTION_59_2();
      v77(v76);
      (*(v67 + 8))(v68, v69);
      return (*(v120 + 8))(v53, v54);
    case 4u:
      v61 = v110;
      sub_1D5041F24(v48, v110, type metadata accessor for TVSeason);
      v127 = 4;
      sub_1D5044090();
      v62 = v111;
      OUTLINED_FUNCTION_54_10(&type metadata for RecentlyAddedMusicItem.TvSeasonCodingKeys, &v127);
      OUTLINED_FUNCTION_9_37();
      sub_1D4E5E440(v63, v64, &protocol conformance descriptor for TVSeason);
      v65 = v113;
      sub_1D56160C8();
      (*(v112 + 8))(v62, v65);
      v66 = type metadata accessor for TVSeason;
LABEL_8:
      sub_1D5042E08(v61, v66);
      return (*(v120 + 8))(v38, v39);
    case 5u:
      v83 = v115;
      sub_1D5041F24(v48, v115, type metadata accessor for UploadedVideo);
      v128 = 5;
      sub_1D504403C();
      v84 = v116;
      OUTLINED_FUNCTION_22_25(&type metadata for RecentlyAddedMusicItem.UploadedVideoCodingKeys, &v128);
      OUTLINED_FUNCTION_7_40();
      sub_1D4E5E440(v85, v86, &protocol conformance descriptor for UploadedVideo);
      v87 = v118;
      sub_1D56160C8();
      (*(v117 + 8))(v84, v87);
      OUTLINED_FUNCTION_16_30();
      sub_1D5042E08(v83, v88);
      return (*(v120 + 8))(v53, v54);
    default:
      v57 = v89;
      (*(v89 + 32))(v44, v48, v39);
      v123 = 0;
      sub_1D50441E0();
      OUTLINED_FUNCTION_22_25(&type metadata for RecentlyAddedMusicItem.AlbumCodingKeys, &v123);
      OUTLINED_FUNCTION_13_32();
      sub_1D4E5E440(v58, v59, MEMORY[0x1E6976D30]);
      v60 = v91;
      sub_1D56160C8();
      (*(v90 + 8))(v38, v60);
      (*(v57 + 8))(v44, v39);
      return (*(v120 + 8))(v53, v54);
  }
}

unint64_t sub_1D5043FE8()
{
  result = qword_1EC7EE928;
  if (!qword_1EC7EE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE928);
  }

  return result;
}

unint64_t sub_1D504403C()
{
  result = qword_1EC7EE930;
  if (!qword_1EC7EE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE930);
  }

  return result;
}

unint64_t sub_1D5044090()
{
  result = qword_1EC7EE940;
  if (!qword_1EC7EE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE940);
  }

  return result;
}

unint64_t sub_1D50440E4()
{
  result = qword_1EC7EE950;
  if (!qword_1EC7EE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE950);
  }

  return result;
}

unint64_t sub_1D5044138()
{
  result = qword_1EC7EE960;
  if (!qword_1EC7EE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE960);
  }

  return result;
}

unint64_t sub_1D504418C()
{
  result = qword_1EC7EE970;
  if (!qword_1EC7EE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE970);
  }

  return result;
}

unint64_t sub_1D50441E0()
{
  result = qword_1EC7EE980;
  if (!qword_1EC7EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE980);
  }

  return result;
}

void RecentlyAddedMusicItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v50 = v1;
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v49 = v4;
  v5 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TVSeason(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v48 = v7;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v9 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_14_3();
  type metadata accessor for MusicMovie(v11);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v13 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  type metadata accessor for RecentlyAddedMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1D504221C(v50, v22 - v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v23, v0, v40);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v41, v42, MEMORY[0x1E6976328]);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_3_50();
      v44 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v31(v2, v23, v9);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_18_31();
      sub_1D4E5E440(v32, v33, MEMORY[0x1E69754F8]);
      sub_1D5614CB8();
      (*(v0 + 8))(v2, v9);
      break;
    case 3u:
      v34 = OUTLINED_FUNCTION_63_9();
      v35(v34, v23, v0);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_17_30();
      sub_1D4E5E440(v36, v37, MEMORY[0x1E69773F0]);
      sub_1D5614CB8();
      v38 = OUTLINED_FUNCTION_59_2();
      v39(v38);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v26 = v48;
      sub_1D5041F24(v23, v48, v27);
      MEMORY[0x1DA6EC0D0](4);
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v28, v29, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v30 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v26 = v49;
      sub_1D5041F24(v23, v49, v45);
      MEMORY[0x1DA6EC0D0](5);
      sub_1D5614E28();
      sub_1D5611AB8();
      OUTLINED_FUNCTION_14_32();
      sub_1D4E5E440(v46, v47, MEMORY[0x1E6976328]);
      OUTLINED_FUNCTION_98();
      sub_1D5614CB8();
      v30 = type metadata accessor for UploadedVideo;
LABEL_8:
      v43 = v30;
      v44 = v26;
LABEL_9:
      sub_1D5042E08(v44, v43);
      break;
    default:
      (*(v15 + 32))(v19, v23, v13);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_13_32();
      sub_1D4E5E440(v24, v25, MEMORY[0x1E6976D38]);
      sub_1D5614CB8();
      (*(v15 + 8))(v19, v13);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t RecentlyAddedMusicItem.hashValue.getter()
{
  sub_1D56162D8();
  RecentlyAddedMusicItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t RecentlyAddedMusicItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE990, &qword_1D562D060);
  OUTLINED_FUNCTION_4();
  v133 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v141 = v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE998, &qword_1D562D068);
  OUTLINED_FUNCTION_4();
  v132 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v137 = v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9A0, &qword_1D562D070);
  OUTLINED_FUNCTION_4();
  v131 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v136 = v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9A8, &qword_1D562D078);
  OUTLINED_FUNCTION_4();
  v130 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v140 = v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9B0, &qword_1D562D080);
  OUTLINED_FUNCTION_4();
  v129 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v135 = v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9B8, &qword_1D562D088);
  OUTLINED_FUNCTION_4();
  v128 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v134 = v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE9C0, &qword_1D562D090);
  OUTLINED_FUNCTION_4();
  v139 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v113 - v24;
  v142 = type metadata accessor for RecentlyAddedMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v121 = v27 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v120 = &v113 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v113 - v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_64_11();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v113 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v113 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v113 - v42;
  v44 = a1[3];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5043FE8();
  v45 = v145;
  sub_1D5616398();
  if (v45)
  {
    goto LABEL_10;
  }

  v118 = v38;
  v116 = v2;
  v117 = v34;
  v119 = v41;
  v46 = v140;
  v145 = v43;
  v47 = v143;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v50 == v51 >> 1)
  {
    v52 = v25;
    v53 = v139;
LABEL_9:
    OUTLINED_FUNCTION_65_0();
    v64 = sub_1D5615C18();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v66 = v46;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v52, v47);
LABEL_10:
    v67 = v144;
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v115 = 0;
  if (v50 < (v51 >> 1))
  {
    v114 = *(v49 + v50);
    sub_1D4FE35EC();
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    v58 = v145;
    if (v55 == v57 >> 1)
    {
      v59 = v138;
      switch(v114)
      {
        case 1:
          v147 = 1;
          sub_1D504418C();
          v72 = v143;
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.MusicMovieCodingKeys, &v147, v143);
          v79 = type metadata accessor for MusicMovie(0);
          OUTLINED_FUNCTION_8_38();
          sub_1D4E5E440(v80, v81, &protocol conformance descriptor for MusicMovie);
          OUTLINED_FUNCTION_57_6(v79);
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_66_0();
          v105(v104, v72);
          v106 = OUTLINED_FUNCTION_12_5();
          v107(v106);
          v108 = v118;
          swift_storeEnumTagMultiPayload();
          v103 = v108;
          v102 = v144;
          break;
        case 2:
          v148 = 2;
          sub_1D5044138();
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.MusicVideoCodingKeys, &v148, v143);
          sub_1D560EEA8();
          OUTLINED_FUNCTION_18_31();
          sub_1D4E5E440(v73, v74, MEMORY[0x1E6975500]);
          v75 = v116;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v89 = OUTLINED_FUNCTION_42_3();
          v90(v89);
          v91 = OUTLINED_FUNCTION_12_5();
          v92(v91);
          swift_storeEnumTagMultiPayload();
          v103 = v75;
          goto LABEL_18;
        case 3:
          v149 = 3;
          sub_1D50440E4();
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.PlaylistCodingKeys, &v149, v143);
          OUTLINED_FUNCTION_65_0();
          sub_1D5614898();
          OUTLINED_FUNCTION_17_30();
          sub_1D4E5E440(v76, v77, MEMORY[0x1E6977400]);
          v78 = v117;
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_62_15();
          v94(v93);
          v95 = OUTLINED_FUNCTION_12_5();
          v96(v95);
          OUTLINED_FUNCTION_90_2();
          swift_storeEnumTagMultiPayload();
          v103 = v78;
          v102 = v144;
          v58 = v145;
          break;
        case 4:
          v150 = 4;
          sub_1D5044090();
          v68 = v143;
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.TvSeasonCodingKeys, &v150, v143);
          v69 = OUTLINED_FUNCTION_65_0();
          type metadata accessor for TVSeason(v69);
          OUTLINED_FUNCTION_9_37();
          sub_1D4E5E440(v70, v71, &protocol conformance descriptor for TVSeason);
          OUTLINED_FUNCTION_58_9();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v85 = OUTLINED_FUNCTION_42_3();
          v86(v85);
          v87 = OUTLINED_FUNCTION_12_5();
          v88(v87);
          OUTLINED_FUNCTION_210();
          goto LABEL_17;
        case 5:
          v151 = 5;
          sub_1D504403C();
          v68 = v143;
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.UploadedVideoCodingKeys, &v151, v143);
          v82 = OUTLINED_FUNCTION_65_0();
          type metadata accessor for UploadedVideo(v82);
          OUTLINED_FUNCTION_7_40();
          sub_1D4E5E440(v83, v84, &protocol conformance descriptor for UploadedVideo);
          OUTLINED_FUNCTION_58_9();
          sub_1D5615FD8();
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v109 = OUTLINED_FUNCTION_42_3();
          v110(v109);
          v111 = OUTLINED_FUNCTION_12_5();
          v112(v111);
          OUTLINED_FUNCTION_210();
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v103 = v68;
LABEL_18:
          v102 = v144;
          v59 = v138;
          break;
        default:
          v146 = 0;
          sub_1D50441E0();
          v60 = v143;
          OUTLINED_FUNCTION_36_17(&type metadata for RecentlyAddedMusicItem.AlbumCodingKeys, &v146, v143);
          v61 = sub_1D5613AF8();
          OUTLINED_FUNCTION_13_32();
          sub_1D4E5E440(v62, v63, MEMORY[0x1E6976D48]);
          OUTLINED_FUNCTION_57_6(v61);
          OUTLINED_FUNCTION_41_3();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_66_0();
          v98(v97, v60);
          v99 = OUTLINED_FUNCTION_12_5();
          v100(v99);
          v101 = v119;
          swift_storeEnumTagMultiPayload();
          v102 = v144;
          v103 = v101;
          break;
      }

      sub_1D5041F24(v103, v58, type metadata accessor for RecentlyAddedMusicItem);
      sub_1D5041F24(v58, v59, type metadata accessor for RecentlyAddedMusicItem);
      v67 = v102;
      return __swift_destroy_boxed_opaque_existential_1(v67);
    }

    v52 = v25;
    v53 = v139;
    v47 = v143;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D50454B8(uint64_t a1)
{
  sub_1D56162D8();
  RecentlyAddedMusicItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50454F4@<X0>(uint64_t *a1@<X8>)
{
  result = RecentlyAddedMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void RecentlyAddedMusicItem.cloudEndpointKind.getter()
{
  OUTLINED_FUNCTION_47();
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v43 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TVSeason(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v42 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v40 = v11;
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v12 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_18_3();
  type metadata accessor for MusicMovie(v14);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v16 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      v33 = OUTLINED_FUNCTION_98();
      sub_1D5041F24(v33, v34, v35);
      sub_1D4E5E440(&qword_1EC7EE9D8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_1D4E5E440(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_1D5610C58();
      OUTLINED_FUNCTION_3_50();
      v37 = v0;
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_50_11();
      v28(v3, v2, v12);
      sub_1D5610C58();
      v29 = OUTLINED_FUNCTION_159_0();
      v30(v29);
      break;
    case 3u:
      (*(v40 + 32))(v4, v2, v41);
      sub_1D5610C58();
      v31 = OUTLINED_FUNCTION_59_2();
      v32(v31);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v24 = v2;
      v25 = v42;
      sub_1D5041F24(v24, v42, v26);
      sub_1D4E5E440(&qword_1EC7EE9D0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_1D4E5E440(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_1D5610C58();
      v27 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v38 = v2;
      v25 = v43;
      sub_1D5041F24(v38, v43, v39);
      sub_1D4E5E440(&qword_1EC7EE9C8, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_1D4E5E440(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_1D5610C58();
      v27 = type metadata accessor for UploadedVideo;
LABEL_8:
      v36 = v27;
      v37 = v25;
LABEL_9:
      sub_1D5042E08(v37, v36);
      break;
    default:
      v22 = OUTLINED_FUNCTION_51_14();
      v23(v22);
      sub_1D5610C58();
      (*(v18 + 8))(v1, v16);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void RecentlyAddedMusicItem.supportsFilteredByEquivalencies.getter()
{
  OUTLINED_FUNCTION_47();
  type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v47 = v4;
  v5 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TVSeason(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v46 = v7;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v44 = v9;
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v43 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v20 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      v33 = OUTLINED_FUNCTION_98();
      sub_1D5041F24(v33, v34, v35);
      OUTLINED_FUNCTION_8_38();
      sub_1D4E5E440(v36, v37, &protocol conformance descriptor for MusicMovie);
      sub_1D5610C78();
      OUTLINED_FUNCTION_3_50();
      v39 = v0;
      goto LABEL_9;
    case 2u:
      (*(v43 + 32))(v18, v2, v13);
      sub_1D560EE48();
      (*(v43 + 8))(v18, v13);
      break;
    case 3u:
      (*(v44 + 32))(v12, v2, v45);
      sub_1D5610C78();
      (*(v44 + 8))(v12, v45);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      v28 = v46;
      sub_1D5041F24(v2, v46, v29);
      OUTLINED_FUNCTION_9_37();
      sub_1D4E5E440(v30, v31, &protocol conformance descriptor for TVSeason);
      sub_1D5610C78();
      v32 = type metadata accessor for TVSeason;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      v28 = v47;
      sub_1D5041F24(v2, v47, v40);
      OUTLINED_FUNCTION_7_40();
      sub_1D4E5E440(v41, v42, &protocol conformance descriptor for UploadedVideo);
      sub_1D5610C78();
      v32 = type metadata accessor for UploadedVideo;
LABEL_8:
      v38 = v32;
      v39 = v28;
LABEL_9:
      sub_1D5042E08(v39, v38);
      break;
    default:
      v26 = OUTLINED_FUNCTION_51_14();
      v27(v26);
      sub_1D5613A88();
      (*(v22 + 8))(v1, v20);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void RecentlyAddedMusicItem.itemToPin.getter()
{
  OUTLINED_FUNCTION_47();
  v35 = v0;
  v4 = v3;
  v5 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v14 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_15_3();
  type metadata accessor for RecentlyAddedMusicItem(v18);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  sub_1D504221C(v35, v21 - v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
    case 5u:
      sub_1D4E50004(v4, &qword_1EC7EC500, &unk_1D5621030);
      OUTLINED_FUNCTION_10_40();
      sub_1D5042E08(v22, v23);
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0;
      goto LABEL_7;
    case 2u:
      v29 = *(v33 + 32);
      v30 = OUTLINED_FUNCTION_159_0();
      v29(v30);
      *(&v37 + 1) = v11;
      v38 = &protocol witness table for MusicVideo;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
      (v29)(boxed_opaque_existential_0, v1, v11);
      goto LABEL_6;
    case 3u:
      v27 = *(v34 + 32);
      v27(v10, v22, v5);
      *(&v37 + 1) = v5;
      v38 = &protocol witness table for Playlist;
      v28 = __swift_allocate_boxed_opaque_existential_0(&v36);
      v27(v28, v10, v5);
      goto LABEL_6;
    default:
      v24 = *(v16 + 32);
      v25 = OUTLINED_FUNCTION_210();
      v24(v25);
      *(&v37 + 1) = v14;
      v38 = &protocol witness table for Album;
      v26 = __swift_allocate_boxed_opaque_existential_0(&v36);
      (v24)(v26, v2, v14);
LABEL_6:
      sub_1D4E50004(v4, &qword_1EC7EC500, &unk_1D5621030);
      v32 = v37;
      *v4 = v36;
      *(v4 + 16) = v32;
      *(v4 + 32) = v38;
LABEL_7:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void RecentlyAddedMusicItem.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v40 = v3;
  v4 = type metadata accessor for UploadedVideo(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v39 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for TVSeason(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v37 = v14;
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v15 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v36 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_15_3();
  v19 = type metadata accessor for MusicMovie(v18);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_18(v26);
  OUTLINED_FUNCTION_98();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_44();
      sub_1D5041F24(v0, v23, v34);
      MusicMovie.siriRepresentation.getter(v40);
      OUTLINED_FUNCTION_3_50();
      v33 = v23;
      goto LABEL_8;
    case 2u:
      (*(v36 + 32))(v2, v0, v15);
      MusicVideo.siriRepresentation.getter(v40);
      (*(v36 + 8))(v2, v15);
      break;
    case 3u:
      (*(v37 + 32))(v1, v0, v38);
      Playlist.siriRepresentation.getter();
      (*(v37 + 8))(v1, v38);
      break;
    case 4u:
      OUTLINED_FUNCTION_1_59();
      sub_1D5041F24(v0, v12, v31);
      TVSeason.siriRepresentation.getter(v40);
      OUTLINED_FUNCTION_32_20();
      v33 = v12;
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_0_59();
      sub_1D5041F24(v0, v39, v35);
      UploadedVideo.siriRepresentation.getter(v40);
      OUTLINED_FUNCTION_16_30();
      v33 = v39;
LABEL_8:
      sub_1D5042E08(v33, v32);
      break;
    default:
      v27 = OUTLINED_FUNCTION_51_14();
      v28(v27);
      Album.siriRepresentation.getter();
      v29 = OUTLINED_FUNCTION_42_3();
      v30(v29);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D504654C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7EE8C0 = v4;
  return result;
}

uint64_t sub_1D50466B0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD5CD58);
  __swift_project_value_buffer(v0, qword_1EDD5CD58);
  type metadata accessor for RecentlyAddedMusicItem(0);
  sub_1D4E5E440(&qword_1EDD5CD30, type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  return sub_1D560D988();
}

uint64_t sub_1D5046770()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EE8C8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE8C8);
  if (qword_1EDD5CD50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDD5CD58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D504685C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D562D010;
  v5 = v4 + v3;
  sub_1D560D908();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5 + v2, v6, v0);
  sub_1D560D878();
  sub_1D560D968();
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C60);
  v7(v5 + 4 * v2, v8, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 5 * v2, v9, v0);
  qword_1EC7EE8E0 = v4;
  return result;
}

uint64_t sub_1D5046AD4(uint64_t a1)
{
  result = sub_1D4E5E440(&qword_1EC7EE9E0, type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentlyAddedMusicItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5046D10(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D5046DC0()
{
  result = qword_1EC7EE9E8;
  if (!qword_1EC7EE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9E8);
  }

  return result;
}

unint64_t sub_1D5046E18()
{
  result = qword_1EC7EE9F0;
  if (!qword_1EC7EE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9F0);
  }

  return result;
}

unint64_t sub_1D5046E70()
{
  result = qword_1EC7EE9F8;
  if (!qword_1EC7EE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE9F8);
  }

  return result;
}

unint64_t sub_1D5046EC8()
{
  result = qword_1EC7EEA00;
  if (!qword_1EC7EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA00);
  }

  return result;
}

unint64_t sub_1D5046F20()
{
  result = qword_1EC7EEA08;
  if (!qword_1EC7EEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA08);
  }

  return result;
}

unint64_t sub_1D5046F78()
{
  result = qword_1EC7EEA10;
  if (!qword_1EC7EEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA10);
  }

  return result;
}

unint64_t sub_1D5046FD0()
{
  result = qword_1EC7EEA18;
  if (!qword_1EC7EEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA18);
  }

  return result;
}

unint64_t sub_1D5047028()
{
  result = qword_1EC7EEA20;
  if (!qword_1EC7EEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA20);
  }

  return result;
}

unint64_t sub_1D5047080()
{
  result = qword_1EC7EEA28;
  if (!qword_1EC7EEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA28);
  }

  return result;
}

unint64_t sub_1D50470D8()
{
  result = qword_1EC7EEA30;
  if (!qword_1EC7EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA30);
  }

  return result;
}

unint64_t sub_1D5047130()
{
  result = qword_1EC7EEA38;
  if (!qword_1EC7EEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA38);
  }

  return result;
}

unint64_t sub_1D5047188()
{
  result = qword_1EC7EEA40;
  if (!qword_1EC7EEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA40);
  }

  return result;
}

unint64_t sub_1D50471E0()
{
  result = qword_1EC7EEA48;
  if (!qword_1EC7EEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA48);
  }

  return result;
}

unint64_t sub_1D5047238()
{
  result = qword_1EC7EEA50;
  if (!qword_1EC7EEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA50);
  }

  return result;
}

unint64_t sub_1D5047290()
{
  result = qword_1EC7EEA58;
  if (!qword_1EC7EEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA58);
  }

  return result;
}

unint64_t sub_1D50472E8()
{
  result = qword_1EC7EEA60;
  if (!qword_1EC7EEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA60);
  }

  return result;
}

unint64_t sub_1D5047340()
{
  result = qword_1EC7EEA68;
  if (!qword_1EC7EEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA68);
  }

  return result;
}

unint64_t sub_1D5047398()
{
  result = qword_1EC7EEA70;
  if (!qword_1EC7EEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA70);
  }

  return result;
}

unint64_t sub_1D50473F0()
{
  result = qword_1EC7EEA78;
  if (!qword_1EC7EEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA78);
  }

  return result;
}

unint64_t sub_1D5047448()
{
  result = qword_1EC7EEA80;
  if (!qword_1EC7EEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA80);
  }

  return result;
}

unint64_t sub_1D50474A0()
{
  result = qword_1EC7EEA88;
  if (!qword_1EC7EEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentlyAddedMusicItem.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50475D4()
{
  result = qword_1EC7EEA90;
  if (!qword_1EC7EEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA90);
  }

  return result;
}

unint64_t sub_1D504762C()
{
  result = qword_1EC7EEA98;
  if (!qword_1EC7EEA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EEAA0, qword_1D562DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEA98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67_11(uint64_t a1, uint64_t a2)
{

  return sub_1D56160C8();
}

uint64_t sub_1D5047780@<X0>(uint64_t *a3@<X8>)
{
  sub_1D560E678();
  result = MusicLibrarySectionedRequest.library.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D50477CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1D560E678();
  return MusicLibrarySectionedRequest.library.setter();
}

uint64_t (*MusicLibrarySectionedRequest.library.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvg_0();
  return sub_1D5047878;
}

uint64_t sub_1D5047878(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }

  _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
}

uint64_t (*MusicLibrarySectionedRequest.wantsDetailedLibraryResponse.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE013wantsDetailedC8ResponseSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047930;
}

uint64_t (*MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D504799C;
}

uint64_t (*MusicLibrarySectionedRequest.includeNonLibraryAddedContent.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE010includeNonC12AddedContentSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047A08;
}

uint64_t (*MusicLibrarySectionedRequest.excludeNonPinnedItems.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE21excludeNonPinnedItemsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047A74;
}

uint64_t (*MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25excludeNonPinnedPlaylistsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047AE0;
}

uint64_t sub_1D5047B08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>, uint64_t a5@<X0>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v11 = OUTLINED_FUNCTION_59_11(a5, a1, a2, a3, a6, a7, a8, a9, v13, v14);
  result = a3(v11);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D5047B58(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = OUTLINED_FUNCTION_59_11(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  return a5(v9, v10);
}

uint64_t (*MusicLibrarySectionedRequest.deferIdentifierResolution.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25deferIdentifierResolutionSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5047BEC;
}

void MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v21 = v1;
  v2 = v1;
  v23 = *(*(*v3 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v4 = *(v23 + 16);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v22 = v8;
  v9 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35_21();
  v11 = *(v6 + 16);
  v11(v0, v2, v4);
  v12 = OUTLINED_FUNCTION_41_18();
  v13(v12);

  sub_1D560F178();

  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v14);
  sub_1D56151F8();
  v15 = OUTLINED_FUNCTION_20_11();
  v9(v15);
  v16 = sub_1D560E588();
  v18 = v17;
  sub_1D4EFF488();
  v19 = *(*v18 + 16);
  sub_1D4EFF6F0();
  v11(v22, v21, v4);
  sub_1D504A434(v19, v22, v18, v4, *(v23 + 24));
  v20 = OUTLINED_FUNCTION_20_11();
  v16(v20);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39();
  v4 = (v3 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_38(*(v2 + 24));
  v8 = OUTLINED_FUNCTION_39_15();
  v4(v8);
  v9 = OUTLINED_FUNCTION_41_18();
  v10(v9);

  OUTLINED_FUNCTION_63_10(v11);

  OUTLINED_FUNCTION_54_11();
  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v12);
  OUTLINED_FUNCTION_64_12();
  v13 = OUTLINED_FUNCTION_23_27();
  v6(v13);
  v14 = OUTLINED_FUNCTION_50_12();
  v4(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (OUTLINED_FUNCTION_44_14(v15))
  {
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_49_11();
    sub_1D560E588();
    OUTLINED_FUNCTION_24_4();
    sub_1D4EFF488();
    OUTLINED_FUNCTION_19_31(*v0);
    sub_1D4EFF6F0();
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_3_51(v17, v21);
    v19(v18);
    OUTLINED_FUNCTION_15_7();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v20 = OUTLINED_FUNCTION_24_26();
    v4(v20);

    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {

    OUTLINED_FUNCTION_12_2();
    sub_1D4E7661C(v22, &qword_1EC7EEC40, &unk_1D561C070);
  }

  OUTLINED_FUNCTION_46();
}

{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39();
  v4 = v3 + *MEMORY[0x1E69E77B0];
  v5 = *(v4 + 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v7 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_38(*(v2 + 24));
  v9 = OUTLINED_FUNCTION_31_22();
  (v4)(v9);
  v10 = OUTLINED_FUNCTION_41_18();
  v11(v10);

  OUTLINED_FUNCTION_63_10(v12);

  OUTLINED_FUNCTION_40_19();
  sub_1D560E568();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v13);
  OUTLINED_FUNCTION_64_12();
  v14 = OUTLINED_FUNCTION_23_27();
  v7(v14);
  v15 = OUTLINED_FUNCTION_140_3();
  (v4)(v15);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v5 + 16)) == 1)
  {

    v16 = OUTLINED_FUNCTION_55_13();
    v17(v16);
    OUTLINED_FUNCTION_12_2();
LABEL_8:
    sub_1D4E7661C(v25, &qword_1EC7EEC40, &unk_1D561C070);
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_45_14(v18) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  if (!v25[3])
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_49_11();
  sub_1D560E588();
  OUTLINED_FUNCTION_24_4();
  sub_1D4EFF488();
  OUTLINED_FUNCTION_19_31(*v0);
  sub_1D4EFF6F0();
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = OUTLINED_FUNCTION_3_51(v20, v24);
  v22(v21);
  OUTLINED_FUNCTION_15_7();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v23 = OUTLINED_FUNCTION_24_26();
  (v2)(v23);

  __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_9:
  OUTLINED_FUNCTION_46();
}

void sub_1D5048448()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 24));
  OUTLINED_FUNCTION_35_21();
  *v3 = v2;
  v5 = OUTLINED_FUNCTION_21_26();
  v6(v5);

  OUTLINED_FUNCTION_61_15(v7);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = OUTLINED_FUNCTION_20_11();
  v0(v9);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_13();
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_56_12();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_0();
  (*(v8 + 16))(v3, v1, v5);
  v9 = OUTLINED_FUNCTION_48_11();
  v10(v9);
  OUTLINED_FUNCTION_62_16(KeyPath);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v11 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v11);
  OUTLINED_FUNCTION_36_0();
  v12 = OUTLINED_FUNCTION_20_11();
  v0(v12);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterItems(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_56_12();
  KeyPath = swift_getKeyPath();
  *v3 = v1;
  v6 = OUTLINED_FUNCTION_48_11();
  v7(v6);

  OUTLINED_FUNCTION_62_16(KeyPath);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = OUTLINED_FUNCTION_20_11();
  v0(v9);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.includeItems<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 24));
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))(v4, v2, v3);
  v7 = OUTLINED_FUNCTION_21_26();
  v8(v7);

  OUTLINED_FUNCTION_61_15(v9);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E568();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v10 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v10);
  OUTLINED_FUNCTION_36_0();
  v11 = OUTLINED_FUNCTION_20_11();
  v0(v11);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39();
  v4 = (v3 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v6 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_38(*(v2 + 16));
  v8 = OUTLINED_FUNCTION_39_15();
  v4(v8);
  v9 = OUTLINED_FUNCTION_41_18();
  v10(v9);

  OUTLINED_FUNCTION_63_10(v11);

  OUTLINED_FUNCTION_54_11();
  sub_1D560E578();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v12);
  OUTLINED_FUNCTION_64_12();
  v13 = OUTLINED_FUNCTION_23_27();
  v6(v13);
  v14 = OUTLINED_FUNCTION_50_12();
  v4(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (OUTLINED_FUNCTION_44_14(v15))
  {
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_49_11();
    sub_1D560E588();
    OUTLINED_FUNCTION_24_4();
    sub_1D4EFF488();
    OUTLINED_FUNCTION_19_31(*v0);
    sub_1D4EFF6F0();
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_3_51(v17, v21);
    v19(v18);
    OUTLINED_FUNCTION_15_7();
    __swift_destroy_boxed_opaque_existential_1(v22);
    v20 = OUTLINED_FUNCTION_24_26();
    v4(v20);

    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {

    OUTLINED_FUNCTION_12_2();
    sub_1D4E7661C(v22, &qword_1EC7EEC40, &unk_1D561C070);
  }

  OUTLINED_FUNCTION_46();
}

{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_8_39();
  v4 = v3 + *MEMORY[0x1E69E77B0];
  v5 = *(v4 + 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v7 = OUTLINED_FUNCTION_34_21();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_38(*(v2 + 16));
  v9 = OUTLINED_FUNCTION_31_22();
  (v4)(v9);
  v10 = OUTLINED_FUNCTION_41_18();
  v11(v10);

  OUTLINED_FUNCTION_63_10(v12);

  OUTLINED_FUNCTION_40_19();
  sub_1D560E578();
  OUTLINED_FUNCTION_47_21();
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_46_12(v13);
  OUTLINED_FUNCTION_64_12();
  v14 = OUTLINED_FUNCTION_23_27();
  v7(v14);
  v15 = OUTLINED_FUNCTION_140_3();
  (v4)(v15);
  if (__swift_getEnumTagSinglePayload(v2, 1, *(v5 + 16)) == 1)
  {

    v16 = OUTLINED_FUNCTION_55_13();
    v17(v16);
    OUTLINED_FUNCTION_12_2();
LABEL_8:
    sub_1D4E7661C(v25, &qword_1EC7EEC40, &unk_1D561C070);
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_45_14(v18) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  if (!v25[3])
  {
LABEL_7:

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_26();
  OUTLINED_FUNCTION_49_11();
  sub_1D560E588();
  OUTLINED_FUNCTION_24_4();
  sub_1D4EFF488();
  OUTLINED_FUNCTION_19_31(*v0);
  sub_1D4EFF6F0();
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = OUTLINED_FUNCTION_3_51(v20, v24);
  v22(v21);
  OUTLINED_FUNCTION_15_7();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v23 = OUTLINED_FUNCTION_24_26();
  (v2)(v23);

  __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_9:
  OUTLINED_FUNCTION_46();
}

void sub_1D5048F34()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 16));
  OUTLINED_FUNCTION_35_21();
  *v3 = v2;
  v5 = OUTLINED_FUNCTION_21_26();
  v6(v5);

  OUTLINED_FUNCTION_61_15(v7);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = OUTLINED_FUNCTION_20_11();
  v0(v9);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v18[0] = v0;
  v2 = v1;
  v4 = (*v3 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4[1] + 16);
  v6 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = *v4;
  v18[2] = *(v2 + 16);
  v18[3] = v12;
  v18[4] = v5;
  v18[5] = MEMORY[0x1E6976CF0];
  OUTLINED_FUNCTION_35_21();
  v13 = *(v5 + 16);
  sub_1D504A3C8(v13, v13);
  v14 = *(v13 - 8);
  swift_allocObject();
  sub_1D5615198();
  (*(v14 + 16))(v15, v18[0], v13);
  sub_1D56152D8();
  sub_1D560D9F8();
  (*(v8 + 104))(v11, *MEMORY[0x1E69750A0], v6);

  sub_1D560F178();

  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v16 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v16);
  OUTLINED_FUNCTION_36_0();
  v17 = OUTLINED_FUNCTION_20_11();
  ((v8 + 104))(v17);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_53_13();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_42_17();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_0();
  (*(v8 + 16))(v3, v1, v5);
  v9 = OUTLINED_FUNCTION_48_11();
  v10(v9);
  OUTLINED_FUNCTION_62_16(KeyPath);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v11 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v11);
  OUTLINED_FUNCTION_36_0();
  v12 = OUTLINED_FUNCTION_20_11();
  v0(v12);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.filterSections(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_52_12();
  OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_10_41(*(v2 + 8));
  OUTLINED_FUNCTION_42_17();
  KeyPath = swift_getKeyPath();
  *v3 = v1;
  v6 = OUTLINED_FUNCTION_48_11();
  v7(v6);

  OUTLINED_FUNCTION_62_16(KeyPath);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v8 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = OUTLINED_FUNCTION_20_11();
  v0(v9);

  OUTLINED_FUNCTION_46();
}

void MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_4_40();
  OUTLINED_FUNCTION_33_24();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_6_42(*(v1 + 16));
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))(v4, v2, v3);
  v7 = OUTLINED_FUNCTION_21_26();
  v8(v7);

  OUTLINED_FUNCTION_61_15(v9);

  OUTLINED_FUNCTION_7_41();
  sub_1D560E578();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v10 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v10);
  OUTLINED_FUNCTION_36_0();
  v11 = OUTLINED_FUNCTION_20_11();
  v0(v11);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50496A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t))
{
  sub_1D560DE18();

  sub_1D560DE28();

  a5(v9, a3);
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v7 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v7);
  sub_1D56151F8();
  a5(v9, 0);
}

uint64_t sub_1D5049798()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t MusicLibrarySectionedRequest.containersToDonateForPlayback.getter(uint64_t a1, double a2, int64x2_t a3)
{
  *(v4 + 328) = a1;
  *(v4 + 336) = v3;
  v6 = *(a1 + 16);
  *(v4 + 344) = v6;
  a3.i64[0] = v6;
  v10 = *(a1 + 32);
  v11 = vzip1q_s64(a3, *(a1 + 24));
  *(v4 + 256) = v11;
  *(v4 + 272) = v10;
  *(v4 + 352) = sub_1D560DDA8();
  v7 = sub_1D56158D8();
  *(v4 + 360) = v7;
  *(v4 + 368) = *(v7 - 8);
  *(v4 + 376) = OUTLINED_FUNCTION_127();
  *(v4 + 384) = OUTLINED_FUNCTION_127();
  *(v4 + 288) = v11;
  *(v4 + 304) = v10;
  v8 = sub_1D560E768();
  *(v4 + 392) = v8;
  *(v4 + 400) = *(v8 - 8);
  *(v4 + 408) = OUTLINED_FUNCTION_127();
  *(v4 + 416) = *(a1 - 8);
  *(v4 + 424) = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D5049A40, 0, 0);
}

uint64_t sub_1D5049A40()
{
  v1 = sub_1D560E598();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D4E628D4(v3, v0 + 16);
      sub_1D4E48324((v0 + 16), v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_1D4E48324((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F01348(0);
            v4 = v7;
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            sub_1D4F01348(v5 > 1);
            v4 = v8;
          }

          *(v4 + 16) = v6 + 1;
          sub_1D4E48324((v0 + 56), v4 + 40 * v6 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_1D4E7661C(v0 + 96, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_12:
      v3 += 40;
      if (!--v2)
      {

        goto LABEL_15;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v9 = *(v0 + 424);
  if (*(v4 + 16))
  {

    v10 = OUTLINED_FUNCTION_51_15();

    return v11(v10);
  }

  else
  {
    v13 = *(v0 + 416);
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);

    (*(v13 + 16))(v9, v14, v15);
    _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
    v16 = swift_task_alloc();
    *(v0 + 432) = v16;
    *v16 = v0;
    v16[1] = sub_1D5049D20;
    v17 = *(v0 + 408);
    v18 = *(v0 + 328);

    return MEMORY[0x1EEDCEF40](v17, v18);
  }
}

uint64_t sub_1D5049D20()
{
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 440) = v0;

  if (v0)
  {
    v5 = sub_1D504A190;
  }

  else
  {
    v5 = sub_1D5049E2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5049E2C()
{
  sub_1D560E758();
  v4 = sub_1D5615208();

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  v5 = *(v1 + 376);
  v0 = *(v1 + 352);
  v2 = sub_1D560E758();
  *(v1 + 320) = v2;
  sub_1D56152D8();
  swift_getWitnessTable();
  sub_1D5615668();

  if (__swift_getEnumTagSinglePayload(v5, 1, v0) == 1)
  {
    (*(*(v1 + 368) + 8))(*(v1 + 376), *(v1 + 360));
  }

  else
  {
    v6 = *(v1 + 376);
    v2 = *(v1 + 344);
    v0 = *(v1 + 352);
    _s8MusicKit0A14LibrarySectionV0aB8InternalE4itemxvg_0();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v6, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
    if (swift_dynamicCast())
    {
      if (*(v1 + 240))
      {
        OUTLINED_FUNCTION_58_10();
        sub_1D4E48324((v1 + 216), v1 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0E8, &unk_1D561DE90);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1D561C050;
        sub_1D4E48324((v1 + 176), v8 + 32);
        (*(v3 + 8))(v0, v2);
        v9 = OUTLINED_FUNCTION_140_3();
        v10(v9);
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

  *(v1 + 248) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 216) = 0u;
LABEL_8:
  sub_1D4E7661C(v1 + 216, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_9:
  if (qword_1EDD544B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AF0);
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "Skipping donation for MusicLibrarySectionedRequest because the response has more than one section.", v0, 2u);
    MEMORY[0x1DA6ED200](v0, -1, -1);
  }

  OUTLINED_FUNCTION_58_10();

  (*(v3 + 8))(v0, v2);
  v14 = OUTLINED_FUNCTION_140_3();
  v15(v14);
LABEL_14:

  v16 = OUTLINED_FUNCTION_51_15();

  return v17(v16);
}

uint64_t sub_1D504A190()
{
  (*(v0[52] + 8))(v0[53], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D504A23C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D504A2D0;

  return MusicLibrarySectionedRequest.containersToDonateForPlayback.getter(a1, v4, v5);
}

uint64_t sub_1D504A2D0(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_1D504A3C8(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  }

  else
  {

    return sub_1D5616108();
  }
}

uint64_t sub_1D504A434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_0(&v10);
  OUTLINED_FUNCTION_24_0();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_1D4E48324(&v10, v8 + 40 * a1 + 32);
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

uint64_t OUTLINED_FUNCTION_33_24()
{

  return sub_1D560DDF8();
}

uint64_t OUTLINED_FUNCTION_34_21()
{

  return sub_1D560DDF8();
}

__n128 OUTLINED_FUNCTION_42_17()
{
  *(v2 - 160) = v1;
  result = *(v0 + 24);
  *(v2 - 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_12@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1D4E6C078(v2);
}

void OUTLINED_FUNCTION_47_21()
{

  JUMPOUT(0x1DA6EAF30);
}

uint64_t OUTLINED_FUNCTION_61_15(uint64_t a1)
{

  return sub_1D560F178();
}

uint64_t OUTLINED_FUNCTION_62_16(uint64_t a1)
{

  return sub_1D560F178();
}

_BYTE *storeEnumTagSinglePayload for CloudVideoCapability(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D504A720()
{
  result = qword_1EC7EEAB0;
  if (!qword_1EC7EEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAB0);
  }

  return result;
}

uint64_t sub_1D504A774()
{
  v2 = *v0;
  if ((*v0 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v1 = 1;
  sub_1D4F00CFC();
  v3 = v4;
  v5 = *(v4 + 16);
  v0 = (v5 + 1);
  if (v5 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_60();
    v3 = v9;
  }

  *(v3 + 16) = v0;
  *(v3 + v5 + 32) = 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v10;
    }

    OUTLINED_FUNCTION_2_45();
    if (v6)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v11;
    }

    *(v3 + 16) = v0;
    *(v3 + v1 + 32) = 2;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v12;
    }

    OUTLINED_FUNCTION_2_45();
    if (v6)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v13;
    }

    *(v3 + 16) = v0;
    *(v3 + v1 + 32) = 3;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        return v3;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_60();
    v3 = v14;
  }

  OUTLINED_FUNCTION_2_45();
  if (v6)
  {
    OUTLINED_FUNCTION_0_60();
    v3 = v15;
  }

  *(v3 + 16) = v0;
  *(v3 + v1 + 32) = 4;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_60();
      v3 = v16;
    }

    v7 = *(v3 + 16);
    if (v7 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_60();
      v3 = v17;
    }

    *(v3 + 16) = v7 + 1;
    *(v3 + v7 + 32) = 0;
  }

  return v3;
}

unint64_t sub_1D504A914(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D504A960(char a1)
{
  result = 17459;
  switch(a1)
  {
    case 1:
      result = 19252;
      break;
    case 2:
      result = 5391432;
      break;
    case 3:
      result = 0x6D744179626C6F64;
      break;
    case 4:
      result = 0x73695679626C6F64;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D504A9E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D504A914(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D504AA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D504A960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D504AB28()
{
  result = qword_1EC7EEAB8;
  if (!qword_1EC7EEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAB8);
  }

  return result;
}

unint64_t sub_1D504AB8C()
{
  result = qword_1EC7EEAC0;
  if (!qword_1EC7EEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEAC0);
  }

  return result;
}

uint64_t sub_1D504ABE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void GenericMusicItem.propertyProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v162 = v26;
  v163 = v20;
  v160[1] = type metadata accessor for UnknownMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v161 = v28;
  v29 = OUTLINED_FUNCTION_70_0();
  v159 = type metadata accessor for UploadedVideo(v29);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v160[0] = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v157 = type metadata accessor for UploadedAudio(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v158 = v34;
  v35 = OUTLINED_FUNCTION_70_0();
  v155 = type metadata accessor for TVShow(v35);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v156 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v153 = type metadata accessor for TVSeason(v38);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v154 = v40;
  v41 = OUTLINED_FUNCTION_70_0();
  v151[1] = type metadata accessor for TVEpisode(v41);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v152 = v43;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v151[0] = v44;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v150 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v46 = OUTLINED_FUNCTION_70_0();
  v47 = type metadata accessor for SocialProfile(v46);
  v48 = OUTLINED_FUNCTION_20(v47, &a18);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v149 = v49;
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D560F8B8();
  v51 = OUTLINED_FUNCTION_12_0(v50, &a17);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v52);
  v53 = sub_1D5614B68();
  v54 = OUTLINED_FUNCTION_12_0(v53, &a14);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v56 = OUTLINED_FUNCTION_48(v55);
  v57 = type metadata accessor for Playlist.Folder(v56);
  v58 = OUTLINED_FUNCTION_20(v57, &a10);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v59);
  v60 = sub_1D5614898();
  v61 = OUTLINED_FUNCTION_12_0(v60, &a9);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D560EEA8();
  v64 = OUTLINED_FUNCTION_12_0(v63, &v162);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  v66 = OUTLINED_FUNCTION_48(v65);
  v67 = type metadata accessor for MusicMovie(v66);
  v68 = OUTLINED_FUNCTION_20(v67, &v159);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5613C48();
  v71 = OUTLINED_FUNCTION_12_0(v70, &v158);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  v73 = OUTLINED_FUNCTION_48(v72);
  v74 = type metadata accessor for EditorialItem(v73);
  v75 = OUTLINED_FUNCTION_20(v74, &v154);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D56141F8();
  v78 = OUTLINED_FUNCTION_12_0(v77, &v153);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  v80 = OUTLINED_FUNCTION_48(v79);
  type metadata accessor for CreditArtist(v80);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  v83 = OUTLINED_FUNCTION_48(v82);
  v84 = type metadata accessor for Composer(v83);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v86 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v148 = v87;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v89 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v91 = v90;
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_23_7();
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  sub_1D4F26680(v163, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_52_8();
      v119(v23, v22, v86);
      sub_1D5613E18();
      (*(v148 + 8))(v23, v86);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v22, v21, v106);
      v107 = *(v84 + 20);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_3_36();
      (*(v108 + 16))(v162, v21 + v107);
      OUTLINED_FUNCTION_13_33();
      v110 = v21;
      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_123_3(v22, v151, v113);
      sub_1D5611AB8();
      OUTLINED_FUNCTION_3_36();
      v114 = OUTLINED_FUNCTION_84_5();
      v115(v114);
      v99 = type metadata accessor for CreditArtist;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v103();
      sub_1D5614158();
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v22, &v155, v126);
      OUTLINED_FUNCTION_130_5();
      OUTLINED_FUNCTION_3_36();
      v127 = OUTLINED_FUNCTION_84_5();
      v128(v127);
      v99 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v134();
      sub_1D5613B98();
      goto LABEL_24;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v22, v160, v116);
      OUTLINED_FUNCTION_130_5();
      OUTLINED_FUNCTION_3_36();
      v117 = OUTLINED_FUNCTION_84_5();
      v118(v117);
      v99 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v141();
      sub_1D560EDC8();
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v105();
      sub_1D5614598();
      goto LABEL_24;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v22, &a11, v138);
      OUTLINED_FUNCTION_130_5();
      OUTLINED_FUNCTION_3_36();
      v139 = OUTLINED_FUNCTION_84_5();
      v140(v139);
      v99 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v102();
      sub_1D5614AC8();
      goto LABEL_24;
    case 0xCu:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_41_19();
      OUTLINED_FUNCTION_56_1();
      v104();
      sub_1D560F828();
      goto LABEL_24;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v20 = v149;
      sub_1D50572C4(v22, v149, v131);
      OUTLINED_FUNCTION_130_5();
      OUTLINED_FUNCTION_3_36();
      v132 = OUTLINED_FUNCTION_84_5();
      v133(v132);
      v99 = type metadata accessor for SocialProfile;
      goto LABEL_26;
    case 0xEu:
      v100 = OUTLINED_FUNCTION_45_15();
      v101(v100, v22, v150);
      sub_1D56136D8();
      goto LABEL_24;
    case 0xFu:
      v111 = OUTLINED_FUNCTION_45_15();
      v112(v111, v22, v151[0]);
      sub_1D5614278();
LABEL_24:
      v142 = OUTLINED_FUNCTION_159();
      v143(v142);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v20 = v152;
      sub_1D50572C4(v22, v152, v96);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v97 = OUTLINED_FUNCTION_84_5();
      v98(v97);
      v99 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v20 = v154;
      sub_1D50572C4(v22, v154, v120);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v121 = OUTLINED_FUNCTION_84_5();
      v122(v121);
      v99 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v20 = v156;
      sub_1D50572C4(v22, v156, v135);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v136 = OUTLINED_FUNCTION_84_5();
      v137(v136);
      v99 = type metadata accessor for TVShow;
      goto LABEL_26;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_162_3(v22, v144, v145);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v146 = OUTLINED_FUNCTION_84_5();
      v147(v146);
      v99 = type metadata accessor for UploadedAudio;
      goto LABEL_26;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v20 = v160[0];
      sub_1D50572C4(v22, v160[0], v123);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v124 = OUTLINED_FUNCTION_84_5();
      v125(v124);
      v99 = type metadata accessor for UploadedVideo;
      goto LABEL_26;
    case 0x15u:
      v20 = v161;
      sub_1D4FD2984(v161);
      OUTLINED_FUNCTION_138_5();
      OUTLINED_FUNCTION_3_36();
      v129 = OUTLINED_FUNCTION_84_5();
      v130(v129);
      v99 = type metadata accessor for UnknownMusicItem;
LABEL_26:
      v109 = v99;
      v110 = v20;
LABEL_27:
      sub_1D504CF98(v110, v109);
      break;
    default:
      v94 = OUTLINED_FUNCTION_46_13();
      v95(v94);
      sub_1D5613968();
      (*(v91 + 8))(v20, v89);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t GenericMusicItem.id.getter(uint64_t a1)
{
  GenericMusicItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_128();
  sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_71();
}

uint64_t GenericMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_98();
  sub_1D4F26680(v6, v7);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = sub_1D5613EF8();
      v9 = MEMORY[0x1E6976EF8];
      goto LABEL_23;
    case 2u:
      a1[3] = type metadata accessor for Composer(0);
      OUTLINED_FUNCTION_100_4();
      v17 = sub_1D50573F4(v15, v16, &protocol conformance descriptor for Composer);
      v13 = OUTLINED_FUNCTION_104_0(v17);
      v14 = type metadata accessor for Composer;
      goto LABEL_25;
    case 3u:
      a1[3] = type metadata accessor for CreditArtist(0);
      OUTLINED_FUNCTION_99_6();
      v20 = sub_1D50573F4(v18, v19, &protocol conformance descriptor for CreditArtist);
      v13 = OUTLINED_FUNCTION_104_0(v20);
      v14 = type metadata accessor for CreditArtist;
      goto LABEL_25;
    case 4u:
      v8 = sub_1D56141F8();
      v9 = MEMORY[0x1E6977018];
      goto LABEL_23;
    case 5u:
      a1[3] = type metadata accessor for EditorialItem(0);
      OUTLINED_FUNCTION_95_6();
      v32 = sub_1D50573F4(v30, v31, &protocol conformance descriptor for EditorialItem);
      v13 = OUTLINED_FUNCTION_104_0(v32);
      v14 = type metadata accessor for EditorialItem;
      goto LABEL_25;
    case 6u:
      v8 = sub_1D5613C48();
      v9 = MEMORY[0x1E6976DA0];
      goto LABEL_23;
    case 7u:
      a1[3] = type metadata accessor for MusicMovie(0);
      OUTLINED_FUNCTION_98_5();
      v23 = sub_1D50573F4(v21, v22, &protocol conformance descriptor for MusicMovie);
      v13 = OUTLINED_FUNCTION_104_0(v23);
      v14 = type metadata accessor for MusicMovie;
      goto LABEL_25;
    case 8u:
      v8 = sub_1D560EEA8();
      v9 = MEMORY[0x1E69754B0];
      goto LABEL_23;
    case 9u:
      v8 = sub_1D5614898();
      v9 = MEMORY[0x1E69773A0];
      goto LABEL_23;
    case 0xAu:
      a1[3] = type metadata accessor for Playlist.Folder(0);
      OUTLINED_FUNCTION_92_5();
      v44 = sub_1D50573F4(v42, v43, &protocol conformance descriptor for Playlist.Folder);
      v13 = OUTLINED_FUNCTION_104_0(v44);
      v14 = type metadata accessor for Playlist.Folder;
      goto LABEL_25;
    case 0xBu:
      v8 = sub_1D5614B68();
      v9 = MEMORY[0x1E6977520];
      goto LABEL_23;
    case 0xCu:
      v8 = sub_1D560F8B8();
      v9 = MEMORY[0x1E6975870];
      goto LABEL_23;
    case 0xDu:
      a1[3] = type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_94_6();
      v38 = sub_1D50573F4(v36, v37, &protocol conformance descriptor for SocialProfile);
      v13 = OUTLINED_FUNCTION_104_0(v38);
      v14 = type metadata accessor for SocialProfile;
      goto LABEL_25;
    case 0xEu:
      v8 = sub_1D5613838();
      v9 = MEMORY[0x1E6976BB0];
      goto LABEL_23;
    case 0xFu:
      v8 = sub_1D5614408();
      v9 = MEMORY[0x1E6977150];
      goto LABEL_23;
    case 0x10u:
      a1[3] = type metadata accessor for TVEpisode(0);
      OUTLINED_FUNCTION_101_2();
      v12 = sub_1D50573F4(v10, v11, &protocol conformance descriptor for TVEpisode);
      v13 = OUTLINED_FUNCTION_104_0(v12);
      v14 = type metadata accessor for TVEpisode;
      goto LABEL_25;
    case 0x11u:
      a1[3] = type metadata accessor for TVSeason(0);
      OUTLINED_FUNCTION_97_7();
      v26 = sub_1D50573F4(v24, v25, &protocol conformance descriptor for TVSeason);
      v13 = OUTLINED_FUNCTION_104_0(v26);
      v14 = type metadata accessor for TVSeason;
      goto LABEL_25;
    case 0x12u:
      a1[3] = type metadata accessor for TVShow(0);
      OUTLINED_FUNCTION_93_7();
      v41 = sub_1D50573F4(v39, v40, &protocol conformance descriptor for TVShow);
      v13 = OUTLINED_FUNCTION_104_0(v41);
      v14 = type metadata accessor for TVShow;
      goto LABEL_25;
    case 0x13u:
      a1[3] = type metadata accessor for UploadedAudio(0);
      OUTLINED_FUNCTION_91_7();
      v48 = sub_1D50573F4(v46, v47, &protocol conformance descriptor for UploadedAudio);
      v13 = OUTLINED_FUNCTION_104_0(v48);
      v14 = type metadata accessor for UploadedAudio;
      goto LABEL_25;
    case 0x14u:
      a1[3] = type metadata accessor for UploadedVideo(0);
      OUTLINED_FUNCTION_96_6();
      v29 = sub_1D50573F4(v27, v28, &protocol conformance descriptor for UploadedVideo);
      v13 = OUTLINED_FUNCTION_104_0(v29);
      v14 = type metadata accessor for UploadedVideo;
LABEL_25:
      result = sub_1D50572C4(v5, v13, v14);
      break;
    case 0x15u:
      a1[3] = type metadata accessor for UnknownMusicItem(0);
      v33 = sub_1D50573F4(&qword_1EC7ED340, type metadata accessor for UnknownMusicItem, &unk_1D5624E74);
      OUTLINED_FUNCTION_104_0(v33);
      OUTLINED_FUNCTION_98();
      result = sub_1D4FD2984(v34);
      break;
    default:
      v8 = sub_1D5613AF8();
      v9 = MEMORY[0x1E6976CF0];
LABEL_23:
      a1[3] = v8;
      a1[4] = v9;
      __swift_allocate_boxed_opaque_existential_0(a1);
      OUTLINED_FUNCTION_24_0();
      result = (*(v45 + 32))();
      break;
  }

  return result;
}

void GenericMusicItem.artwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v166 = v26;
  v27 = type metadata accessor for UploadedVideo(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v165 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for UploadedAudio(v30);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v164 = v33;
  v34 = OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for TVShow(v34);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v163 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v39 = type metadata accessor for TVSeason(v38);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v162 = v41;
  v42 = OUTLINED_FUNCTION_70_0();
  v43 = type metadata accessor for TVEpisode(v42);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v161 = v45;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v48 = OUTLINED_FUNCTION_70_0();
  v49 = type metadata accessor for SocialProfile(v48);
  v50 = OUTLINED_FUNCTION_22(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v160 = v51;
  OUTLINED_FUNCTION_70_0();
  sub_1D560F8B8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v55 = OUTLINED_FUNCTION_48(v54);
  v56 = type metadata accessor for Playlist.Folder(v55);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v159 = v58;
  OUTLINED_FUNCTION_70_0();
  v59 = sub_1D5614898();
  v60 = OUTLINED_FUNCTION_12_0(v59, &a17);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D560EEA8();
  v63 = OUTLINED_FUNCTION_12_0(v62, &a13);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  v65 = OUTLINED_FUNCTION_48(v64);
  v66 = type metadata accessor for MusicMovie(v65);
  v67 = OUTLINED_FUNCTION_22(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v68);
  v69 = sub_1D5613C48();
  v70 = OUTLINED_FUNCTION_12_0(v69, &a10);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v72 = OUTLINED_FUNCTION_48(v71);
  v73 = type metadata accessor for EditorialItem(v72);
  v74 = OUTLINED_FUNCTION_22(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v75 = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v77 = OUTLINED_FUNCTION_115();
  v78 = type metadata accessor for CreditArtist(v77);
  v79 = OUTLINED_FUNCTION_22(v78);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v80);
  v81 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v83 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v85 = v84;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_7();
  v87 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  v91 = v90 - v89;
  sub_1D4F26680(v20, v90 - v89);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_2();
      v124(v22, v91, v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC7D0, &qword_1D562DEE0);
      swift_allocObject();
      sub_1D560DE48();
      sub_1D5613EE8();
      (*(v87 + 8))(v22, v81);

      break;
    case 2u:
      v111 = sub_1D56140F8();
      __swift_storeEnumTagSinglePayload(v166, 1, 1, v111);
      OUTLINED_FUNCTION_19_32();
      v113 = v91;
      goto LABEL_44;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_154_4(v91, v116, &v167);
      if (qword_1EC7E9058 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
      OUTLINED_FUNCTION_86_7();
      v119 = sub_1D50573F4(v117, type metadata accessor for CreditArtist, v118);
      OUTLINED_FUNCTION_32_21(v119);
      v98 = type metadata accessor for CreditArtist;
      goto LABEL_43;
    case 4u:
      OUTLINED_FUNCTION_35_0();
      v104 = OUTLINED_FUNCTION_98();
      v105(v104);
      sub_1D56141E8();
      (*(v83 + 8))(v21, v75);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      sub_1D50572C4(v91, v23, v133);
      sub_1D4F5C79C();
      v112 = type metadata accessor for EditorialItem;
      v113 = v23;
      goto LABEL_44;
    case 6u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v141(v139, v140);
      _s8MusicKit5GenreV0aB8InternalE7artworkAA7ArtworkVSgvg_0();
      goto LABEL_39;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_154_4(v91, v120, &a15);
      if (qword_1EDD541B8 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_85_1();
      v123 = sub_1D50573F4(v121, type metadata accessor for MusicMovie, v122);
      OUTLINED_FUNCTION_32_21(v123);
      v98 = type metadata accessor for MusicMovie;
      goto LABEL_43;
    case 8u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v152(v150, v151);
      sub_1D560EE78();
      goto LABEL_39;
    case 9u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v110(v108, v109);
      sub_1D5614848();
      goto LABEL_39;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      v87 = v159;
      sub_1D50572C4(v91, v159, v146);
      if (qword_1EC7E8D00 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      OUTLINED_FUNCTION_81_9();
      v149 = sub_1D50573F4(v147, type metadata accessor for Playlist.Folder, v148);
      OUTLINED_FUNCTION_32_21(v149);
      v98 = type metadata accessor for Playlist.Folder;
      goto LABEL_43;
    case 0xBu:
      OUTLINED_FUNCTION_33_1();
      v102 = OUTLINED_FUNCTION_51_16();
      v103(v102);
      sub_1D5614B48();
      goto LABEL_39;
    case 0xCu:
      OUTLINED_FUNCTION_33_1();
      v106 = OUTLINED_FUNCTION_159();
      v107(v106);
      sub_1D560F8A8();
      goto LABEL_39;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v87 = v160;
      sub_1D50572C4(v91, v160, v135);
      if (qword_1EDD53F90 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      v138 = sub_1D50573F4(v136, type metadata accessor for SocialProfile, v137);
      OUTLINED_FUNCTION_32_21(v138);
      v98 = type metadata accessor for SocialProfile;
      goto LABEL_43;
    case 0xEu:
      OUTLINED_FUNCTION_45_15();
      OUTLINED_FUNCTION_158_2();
      v101(v99, v100);
      sub_1D56137F8();
      goto LABEL_39;
    case 0xFu:
      OUTLINED_FUNCTION_33_1();
      v114 = OUTLINED_FUNCTION_159();
      v115(v114);
      sub_1D56143B8();
LABEL_39:
      v153 = OUTLINED_FUNCTION_159();
      v154(v153);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v87 = v161;
      sub_1D50572C4(v91, v161, v94);
      if (qword_1EC7E9170 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_88_0();
      v97 = sub_1D50573F4(v95, type metadata accessor for TVEpisode, v96);
      OUTLINED_FUNCTION_32_21(v97);
      v98 = type metadata accessor for TVEpisode;
      goto LABEL_43;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      v87 = v162;
      sub_1D50572C4(v91, v162, v125);
      if (qword_1EC7E8B58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_83_7();
      v128 = sub_1D50573F4(v126, type metadata accessor for TVSeason, v127);
      OUTLINED_FUNCTION_32_21(v128);
      v98 = type metadata accessor for TVSeason;
      goto LABEL_43;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v87 = v163;
      sub_1D50572C4(v91, v163, v142);
      if (qword_1EC7E9538 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      OUTLINED_FUNCTION_82_7();
      v145 = sub_1D50573F4(v143, type metadata accessor for TVShow, v144);
      OUTLINED_FUNCTION_32_21(v145);
      v98 = type metadata accessor for TVShow;
      goto LABEL_43;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v87 = v164;
      sub_1D50572C4(v91, v164, v155);
      if (qword_1EC7E8E40 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      v158 = sub_1D50573F4(v156, type metadata accessor for UploadedAudio, v157);
      OUTLINED_FUNCTION_32_21(v158);
      v98 = type metadata accessor for UploadedAudio;
      goto LABEL_43;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v87 = v165;
      sub_1D50572C4(v91, v165, v129);
      if (qword_1EDD53E58 != -1)
      {
        swift_once();
      }

      sub_1D56140F8();
      sub_1D50573F4(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      v132 = sub_1D50573F4(v130, type metadata accessor for UploadedVideo, v131);
      OUTLINED_FUNCTION_32_21(v132);
      v98 = type metadata accessor for UploadedVideo;
LABEL_43:
      v112 = v98;
      v113 = v87;
LABEL_44:
      sub_1D504CF98(v113, v112);
      break;
    case 0x15u:
      sub_1D504CF98(v91, type metadata accessor for GenericMusicItem);
      v134 = sub_1D56140F8();
      __swift_storeEnumTagSinglePayload(v166, 1, 1, v134);
      break;
    default:
      v92 = OUTLINED_FUNCTION_159();
      v93(v92);
      sub_1D5613AE8();
      (*(v85 + 8))(v20, v83);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D504CF98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

void GenericMusicItem.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v25;
  a20 = v26;
  v27 = type metadata accessor for UploadedVideo(0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v162 = v29;
  v30 = OUTLINED_FUNCTION_70_0();
  v31 = type metadata accessor for UploadedAudio(v30);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v161 = v33;
  v34 = OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for TVShow(v34);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v160 = v37;
  v38 = OUTLINED_FUNCTION_70_0();
  v39 = type metadata accessor for TVSeason(v38);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v41 = OUTLINED_FUNCTION_70_0();
  v42 = type metadata accessor for TVEpisode(v41);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v159 = v44;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v157 = v46;
  v158 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v155 = v47;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v154 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v153 = v50;
  v51 = OUTLINED_FUNCTION_70_0();
  v52 = type metadata accessor for SocialProfile(v51);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  v156 = v54;
  OUTLINED_FUNCTION_70_0();
  sub_1D560F8B8();
  OUTLINED_FUNCTION_4();
  v151 = v56;
  v152 = v55;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v150 = v57;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v148 = v59;
  v149 = v58;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  v147 = v60;
  v61 = OUTLINED_FUNCTION_70_0();
  v62 = type metadata accessor for Playlist.Folder(v61);
  v63 = OUTLINED_FUNCTION_22(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v64);
  v65 = sub_1D5614898();
  v66 = OUTLINED_FUNCTION_12_0(v65, &a17);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v67);
  v68 = sub_1D560EEA8();
  v69 = OUTLINED_FUNCTION_12_0(v68, &a14);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  v71 = OUTLINED_FUNCTION_48(v70);
  v72 = type metadata accessor for MusicMovie(v71);
  v73 = OUTLINED_FUNCTION_22(v72);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v74);
  v75 = sub_1D5613C48();
  v76 = OUTLINED_FUNCTION_12_0(v75, &a10);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  v78 = OUTLINED_FUNCTION_48(v77);
  v79 = type metadata accessor for EditorialItem(v78);
  v80 = OUTLINED_FUNCTION_22(v79);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v81);
  v82 = sub_1D56141F8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v163);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  v84 = OUTLINED_FUNCTION_15_3();
  v85 = type metadata accessor for CreditArtist(v84);
  v86 = OUTLINED_FUNCTION_22(v85);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5();
  v87 = OUTLINED_FUNCTION_115();
  v88 = type metadata accessor for Composer(v87);
  v89 = OUTLINED_FUNCTION_22(v88);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v90 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v92 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v94 = v93;
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_23_7();
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  v99 = v98 - v97;
  sub_1D4F26680(v20, v98 - v97);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_30_19();
      v122(v22, v99, v90);
      sub_1D5613ED8();
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v22, v90);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_42();
      sub_1D50572C4(v99, v23, v113);
      Composer.name.getter();
      OUTLINED_FUNCTION_87_6();
      OUTLINED_FUNCTION_13_33();
      v115 = v23;
      goto LABEL_34;
    case 3u:
      OUTLINED_FUNCTION_9_39();
      v118 = OUTLINED_FUNCTION_128();
      sub_1D50572C4(v118, v119, v120);
      CreditArtist.name.getter();
      OUTLINED_FUNCTION_87_6();
      OUTLINED_FUNCTION_14_33();
      v115 = v21;
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_56_1();
      v108();
      sub_1D56141D8();
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v24, v99);
      break;
    case 5u:
      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v99, &v164, v132);
      EditorialItem.name.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for EditorialItem;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v138();
      sub_1D5613C28();
      goto LABEL_28;
    case 7u:
      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v99, &a11, v121);
      MusicMovie.title.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for MusicMovie;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v141();
      sub_1D560EE68();
      goto LABEL_28;
    case 9u:
      OUTLINED_FUNCTION_30_19();
      OUTLINED_FUNCTION_51_16();
      OUTLINED_FUNCTION_56_1();
      v112();
      sub_1D56146D8();
      goto LABEL_28;
    case 0xAu:
      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v99, &a18, v140);
      Playlist.Folder.name.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for Playlist.Folder;
      goto LABEL_26;
    case 0xBu:
      v20 = v147;
      v21 = v148;
      v105 = OUTLINED_FUNCTION_45_15();
      v106 = v99;
      v99 = v149;
      v107(v105, v106, v149);
      sub_1D5614B38();
      goto LABEL_28;
    case 0xCu:
      v20 = v150;
      v21 = v151;
      v109 = OUTLINED_FUNCTION_45_15();
      v110 = v99;
      v99 = v152;
      v111(v109, v110, v152);
      sub_1D560F898();
      goto LABEL_28;
    case 0xDu:
      OUTLINED_FUNCTION_8_40();
      v125 = v156;
      sub_1D50572C4(v99, v156, v133);
      if (qword_1EDD53FA8 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_37_2();
      v136 = sub_1D50573F4(v134, type metadata accessor for SocialProfile, v135);
      OUTLINED_FUNCTION_127_4(v136, MEMORY[0x1E69E6158], v137, v136);
      OUTLINED_FUNCTION_147_3();
      v131 = type metadata accessor for SocialProfile;
      goto LABEL_33;
    case 0xEu:
      v20 = v153;
      v21 = v154;
      OUTLINED_FUNCTION_45_15();
      OUTLINED_FUNCTION_158_2();
      v104();
      sub_1D56137E8();
      goto LABEL_28;
    case 0xFu:
      v21 = v157;
      OUTLINED_FUNCTION_33_1();
      v20 = v155;
      v116 = OUTLINED_FUNCTION_159();
      v99 = v158;
      v117(v116);
      sub_1D5614388();
LABEL_28:
      OUTLINED_FUNCTION_87_6();
      (*(v21 + 8))(v20, v99);
      break;
    case 0x10u:
      OUTLINED_FUNCTION_6_43();
      v20 = v159;
      sub_1D50572C4(v99, v159, v102);
      TVEpisode.title.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for TVEpisode;
      goto LABEL_26;
    case 0x11u:
      OUTLINED_FUNCTION_4_41();
      OUTLINED_FUNCTION_162_3(v99, v123, v124);
      TVSeason.title.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for TVSeason;
      goto LABEL_26;
    case 0x12u:
      OUTLINED_FUNCTION_0_61();
      v20 = v160;
      sub_1D50572C4(v99, v160, v139);
      TVShow.name.getter();
      OUTLINED_FUNCTION_87_6();
      v103 = type metadata accessor for TVShow;
LABEL_26:
      v114 = v103;
      v115 = v20;
      goto LABEL_34;
    case 0x13u:
      OUTLINED_FUNCTION_7_42();
      v125 = v161;
      sub_1D50572C4(v99, v161, v142);
      if (qword_1EC7E8EC8 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_24_5();
      v145 = sub_1D50573F4(v143, type metadata accessor for UploadedAudio, v144);
      OUTLINED_FUNCTION_127_4(v145, MEMORY[0x1E69E6158], v146, v145);
      OUTLINED_FUNCTION_147_3();
      v131 = type metadata accessor for UploadedAudio;
      goto LABEL_33;
    case 0x14u:
      OUTLINED_FUNCTION_3_52();
      v125 = v162;
      sub_1D50572C4(v99, v162, v126);
      if (qword_1EDD53E78 != -1)
      {
        swift_once();
      }

      sub_1D50573F4(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_23_2();
      v129 = sub_1D50573F4(v127, type metadata accessor for UploadedVideo, v128);
      OUTLINED_FUNCTION_127_4(v129, MEMORY[0x1E69E6158], v130, v129);
      OUTLINED_FUNCTION_147_3();
      v131 = type metadata accessor for UploadedVideo;
LABEL_33:
      v114 = v131;
      v115 = v125;
LABEL_34:
      sub_1D504CF98(v115, v114);
      break;
    case 0x15u:
      sub_1D504CF98(v99, type metadata accessor for GenericMusicItem);
      break;
    default:
      v100 = OUTLINED_FUNCTION_159();
      v101(v100);
      sub_1D5613AB8();
      (*(v94 + 8))(v20, v92);
      break;
  }

  OUTLINED_FUNCTION_46();
}

void static GenericMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v303 = v23;
  v304 = v22;
  v24 = type metadata accessor for UploadedVideo(0);
  v25 = OUTLINED_FUNCTION_20(v24, &v281);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v27 = OUTLINED_FUNCTION_48(v26);
  v28 = type metadata accessor for UploadedAudio(v27);
  v29 = OUTLINED_FUNCTION_20(v28, &v280);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v31 = OUTLINED_FUNCTION_48(v30);
  v32 = type metadata accessor for TVShow(v31);
  v33 = OUTLINED_FUNCTION_20(v32, &v279);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v35 = OUTLINED_FUNCTION_48(v34);
  v36 = type metadata accessor for TVSeason(v35);
  v37 = OUTLINED_FUNCTION_20(v36, &v278);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  v39 = OUTLINED_FUNCTION_48(v38);
  v40 = type metadata accessor for TVEpisode(v39);
  v41 = OUTLINED_FUNCTION_20(v40, &v277);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v42);
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v299 = v44;
  v300 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v45);
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v297 = v47;
  v298 = v46;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v49 = OUTLINED_FUNCTION_48(v48);
  v50 = type metadata accessor for SocialProfile(v49);
  v51 = OUTLINED_FUNCTION_20(v50, &v276);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v52);
  sub_1D560F8B8();
  OUTLINED_FUNCTION_4();
  v295 = v54;
  v296 = v53;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v293 = v57;
  v294 = v56;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v59 = OUTLINED_FUNCTION_48(v58);
  v60 = type metadata accessor for Playlist.Folder(v59);
  v61 = OUTLINED_FUNCTION_20(v60, &v275);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v291 = v64;
  v292 = v63;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v289 = v67;
  v290 = v66;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  v69 = OUTLINED_FUNCTION_48(v68);
  v70 = type metadata accessor for MusicMovie(v69);
  v71 = OUTLINED_FUNCTION_20(v70, &v274);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v287 = v74;
  v288 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  v76 = OUTLINED_FUNCTION_48(v75);
  v77 = type metadata accessor for EditorialItem(v76);
  v78 = OUTLINED_FUNCTION_20(v77, &v273);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v285 = v81;
  v286 = v80;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5_0();
  v83 = OUTLINED_FUNCTION_48(v82);
  v84 = type metadata accessor for CreditArtist(v83);
  v85 = OUTLINED_FUNCTION_20(v84, &v272);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  v87 = OUTLINED_FUNCTION_48(v86);
  v88 = type metadata accessor for Composer(v87);
  v89 = OUTLINED_FUNCTION_20(v88, &v271);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v284 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v283 = v91;
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v93);
  sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v301 = v95;
  v302 = v94;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  v97 = OUTLINED_FUNCTION_48(v96);
  v98 = type metadata accessor for GenericMusicItem(v97);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v113 = MEMORY[0x1EEE9AC00](v112);
  v115 = &v267[-v114];
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v117 = MEMORY[0x1EEE9AC00](v116);
  v119 = &v267[-v118];
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v121 = MEMORY[0x1EEE9AC00](v120);
  v123 = &v267[-v122];
  v124 = MEMORY[0x1EEE9AC00](v121);
  v126 = &v267[-v125];
  v127 = MEMORY[0x1EEE9AC00](v124);
  v129 = &v267[-v128];
  v130 = MEMORY[0x1EEE9AC00](v127);
  v132 = &v267[-v131];
  MEMORY[0x1EEE9AC00](v130);
  v134 = &v267[-v133];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEAF0, &unk_1D562DEE8);
  v136 = OUTLINED_FUNCTION_22(v135);
  v137 = MEMORY[0x1EEE9AC00](v136);
  v139 = &v267[-v138];
  v140 = &v267[*(v137 + 56) - v138];
  sub_1D4F26680(v304, &v267[-v138]);
  v304 = v140;
  sub_1D4F26680(v303, v140);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F26680(v139, v132);
      OUTLINED_FUNCTION_184();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_60_1();
        v188 = OUTLINED_FUNCTION_52_13();
        v189 = v284;
        v190(v188);
        sub_1D5613EA8();
        v191 = *(v119 + 1);
        (v191)(v123, v189);
        v192 = OUTLINED_FUNCTION_24();
        v191(v192);
        goto LABEL_34;
      }

      (*(v283 + 8))(v132, v284);
      goto LABEL_148;
    case 2u:
      sub_1D4F26680(v139, v129);
      if (OUTLINED_FUNCTION_55_14() != 2)
      {
        OUTLINED_FUNCTION_13_33();
        v258 = v129;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_10_42();
      OUTLINED_FUNCTION_123_3(v132, &v282, v163);
      v164 = *v129 == *v126 && v129[1] == v126[1];
      if (v164 || (sub_1D5616168()) && (sub_1D5611A78())
      {
        OUTLINED_FUNCTION_80_5();
        sub_1D504CF98(v126, v165);
        v166 = v129;
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_80_5();
      sub_1D504CF98(v126, v263);
      v166 = v129;
      goto LABEL_159;
    case 3u:
      v173 = OUTLINED_FUNCTION_109();
      sub_1D4F26680(v173, v174);
      if (OUTLINED_FUNCTION_55_14() != 3)
      {
        OUTLINED_FUNCTION_14_33();
        v258 = v126;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_9_39();
      OUTLINED_FUNCTION_66_1();
      sub_1D50572C4(v175, v176, v177);
      v178 = *v126 == *v98 && v126[1] == v98[1];
      if (v178 || (sub_1D5616168()) && (sub_1D5611A78())
      {
        OUTLINED_FUNCTION_79_3();
        sub_1D504CF98(v98, v179);
        v166 = v126;
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_79_3();
      sub_1D504CF98(v98, v264);
      v166 = v126;
      goto LABEL_159;
    case 4u:
      sub_1D4F26680(v139, v123);
      if (OUTLINED_FUNCTION_55_14() == 4)
      {
        v148 = v286;
        OUTLINED_FUNCTION_81();
        v153 = OUTLINED_FUNCTION_40_20();
        v154(v153);
        OUTLINED_FUNCTION_45_3();
        sub_1D56141A8();
        goto LABEL_32;
      }

      v256 = v285;
      v255 = v286;
      goto LABEL_132;
    case 5u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v208, v209);
      if (OUTLINED_FUNCTION_55_14() != 5)
      {
        v254 = type metadata accessor for EditorialItem;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_2_46();
      OUTLINED_FUNCTION_123_3(v132, &v285, v210);
      OUTLINED_FUNCTION_158();
      v213 = v146 && v211 == v212;
      if (v213 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for EditorialItem;
        goto LABEL_122;
      }

      v262 = type metadata accessor for EditorialItem;
      goto LABEL_158;
    case 6u:
      sub_1D4F26680(v139, v119);
      if (OUTLINED_FUNCTION_55_14() == 6)
      {
        v228 = v287;
        v227 = v288;
        OUTLINED_FUNCTION_81();
        v229 = v268;
        v230(v268, v132, v227);
        sub_1D5613BF8();
        v231 = *(v228 + 8);
        v231(v229, v227);
        v231(v119, v227);
        goto LABEL_34;
      }

      (*(v287 + 8))(v119, v288);
      goto LABEL_148;
    case 7u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v180, v181);
      if (OUTLINED_FUNCTION_55_14() != 7)
      {
        v254 = type metadata accessor for MusicMovie;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_5_41();
      OUTLINED_FUNCTION_123_3(v132, &v287, v182);
      OUTLINED_FUNCTION_158();
      v185 = v146 && v183 == v184;
      if (v185 || (sub_1D5616168() & 1) != 0)
      {
        v186 = OUTLINED_FUNCTION_48_12();
        OUTLINED_FUNCTION_112_5();
        if (v186)
        {
          v187 = type metadata accessor for MusicMovie;
          goto LABEL_70;
        }
      }

      else
      {
        OUTLINED_FUNCTION_112_5();
      }

      v265 = type metadata accessor for MusicMovie;
      goto LABEL_167;
    case 8u:
      sub_1D4F26680(v139, v115);
      if (OUTLINED_FUNCTION_55_14() == 8)
      {
        v245 = v289;
        v244 = v290;
        v246 = v269;
        (*(v289 + 32))(v269, v132, v290);
        sub_1D560EE28();
        v247 = *(v245 + 8);
        v247(v246, v244);
        v247(v115, v244);
        OUTLINED_FUNCTION_19_32();
        v172 = v139;
        goto LABEL_35;
      }

      (*(v289 + 8))(v115, v290);
      goto LABEL_148;
    case 9u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v157, v158);
      if (OUTLINED_FUNCTION_55_14() == 9)
      {
        v160 = v291;
        v159 = v292;
        v161 = v270;
        (*(v291 + 32))(v270, v132, v292);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v162 = *(v160 + 8);
        v162(v161, v159);
        v162(v98, v159);
        goto LABEL_34;
      }

      (*(v291 + 8))(v98, v292);
      goto LABEL_148;
    case 0xAu:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v238, v239);
      if (OUTLINED_FUNCTION_55_14() != 10)
      {
        v254 = type metadata accessor for Playlist.Folder;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_11_39();
      OUTLINED_FUNCTION_123_3(v132, &v290, v240);
      OUTLINED_FUNCTION_158();
      v243 = v146 && v241 == v242;
      if (v243 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for Playlist.Folder;
        goto LABEL_122;
      }

      v262 = type metadata accessor for Playlist.Folder;
      goto LABEL_158;
    case 0xBu:
      OUTLINED_FUNCTION_161_4(v139, &v302);
      if (OUTLINED_FUNCTION_55_14() == 11)
      {
        v148 = v294;
        OUTLINED_FUNCTION_81();
        v151 = OUTLINED_FUNCTION_40_20();
        v152(v151);
        OUTLINED_FUNCTION_45_3();
        sub_1D5614B18();
        goto LABEL_32;
      }

      v256 = v293;
      v255 = v294;
      goto LABEL_132;
    case 0xCu:
      OUTLINED_FUNCTION_161_4(v139, &v303);
      if (OUTLINED_FUNCTION_55_14() == 12)
      {
        v148 = v296;
        OUTLINED_FUNCTION_81();
        v155 = OUTLINED_FUNCTION_40_20();
        v156(v155);
        OUTLINED_FUNCTION_45_3();
        sub_1D560F878();
        goto LABEL_32;
      }

      v256 = v295;
      v255 = v296;
      goto LABEL_132;
    case 0xDu:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v221, v222);
      if (OUTLINED_FUNCTION_55_14() != 13)
      {
        v254 = type metadata accessor for SocialProfile;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_8_40();
      OUTLINED_FUNCTION_123_3(v132, &v293, v223);
      OUTLINED_FUNCTION_158();
      v226 = v146 && v224 == v225;
      if (v226 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for SocialProfile;
        goto LABEL_122;
      }

      v262 = type metadata accessor for SocialProfile;
      goto LABEL_158;
    case 0xEu:
      OUTLINED_FUNCTION_161_4(v139, &v305);
      if (OUTLINED_FUNCTION_55_14() == 14)
      {
        v148 = v298;
        OUTLINED_FUNCTION_81();
        v149 = OUTLINED_FUNCTION_40_20();
        v150(v149);
        OUTLINED_FUNCTION_45_3();
        sub_1D56137A8();
        goto LABEL_32;
      }

      v256 = v297;
      v255 = v298;
      goto LABEL_132;
    case 0xFu:
      OUTLINED_FUNCTION_161_4(v139, &a9);
      if (OUTLINED_FUNCTION_55_14() == 15)
      {
        v148 = v300;
        OUTLINED_FUNCTION_81();
        v167 = OUTLINED_FUNCTION_40_20();
        v168(v167);
        OUTLINED_FUNCTION_45_3();
        sub_1D5614368();
LABEL_32:
        v169 = OUTLINED_FUNCTION_157_4();
        v132(v169);
        v170 = v123;
        goto LABEL_33;
      }

      v256 = v299;
      v255 = v300;
LABEL_132:
      (*(v256 + 8))(v123, v255);
      goto LABEL_148;
    case 0x10u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v141, v142);
      if (OUTLINED_FUNCTION_55_14() != 16)
      {
        v254 = type metadata accessor for TVEpisode;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_6_43();
      OUTLINED_FUNCTION_123_3(v132, &v295, v143);
      OUTLINED_FUNCTION_158();
      v146 = v146 && v144 == v145;
      if (v146 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for TVEpisode;
        goto LABEL_122;
      }

      v262 = type metadata accessor for TVEpisode;
      goto LABEL_158;
    case 0x11u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v193, v194);
      if (OUTLINED_FUNCTION_55_14() != 17)
      {
        v254 = type metadata accessor for TVSeason;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_4_41();
      OUTLINED_FUNCTION_123_3(v132, &v296, v195);
      OUTLINED_FUNCTION_158();
      v198 = v146 && v196 == v197;
      if (v198 || (sub_1D5616168() & 1) != 0)
      {
        v199 = OUTLINED_FUNCTION_48_12();
        OUTLINED_FUNCTION_111_5();
        if (v199)
        {
          v187 = type metadata accessor for TVSeason;
          goto LABEL_70;
        }
      }

      else
      {
        OUTLINED_FUNCTION_111_5();
      }

      v265 = type metadata accessor for TVSeason;
      goto LABEL_167;
    case 0x12u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v232, v233);
      if (OUTLINED_FUNCTION_55_14() != 18)
      {
        v254 = type metadata accessor for TVShow;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_123_3(v132, &v297, v234);
      OUTLINED_FUNCTION_158();
      v237 = v146 && v235 == v236;
      if (v237 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for TVShow;
        goto LABEL_122;
      }

      v262 = type metadata accessor for TVShow;
      goto LABEL_158;
    case 0x13u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v248, v249);
      if (OUTLINED_FUNCTION_55_14() != 19)
      {
        v254 = type metadata accessor for UploadedAudio;
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_123_3(v132, &v298, v250);
      OUTLINED_FUNCTION_158();
      v253 = v146 && v251 == v252;
      if (v253 || (sub_1D5616168()) && (OUTLINED_FUNCTION_48_12())
      {
        v147 = type metadata accessor for UploadedAudio;
LABEL_122:
        v132 = v147;
        sub_1D504CF98(v126, v147);
        v166 = v98;
LABEL_123:
        v207 = v132;
      }

      else
      {
        v262 = type metadata accessor for UploadedAudio;
LABEL_158:
        v132 = v262;
        sub_1D504CF98(v126, v262);
        v166 = v98;
LABEL_159:
        v207 = v132;
      }

      goto LABEL_168;
    case 0x14u:
      OUTLINED_FUNCTION_66_1();
      sub_1D4F26680(v200, v201);
      if (OUTLINED_FUNCTION_55_14() == 20)
      {
        OUTLINED_FUNCTION_3_52();
        OUTLINED_FUNCTION_123_3(v132, &v299, v202);
        OUTLINED_FUNCTION_158();
        v205 = v146 && v203 == v204;
        if (v205 || (sub_1D5616168() & 1) != 0)
        {
          v206 = OUTLINED_FUNCTION_48_12();
          OUTLINED_FUNCTION_110_6();
          if (v206)
          {
            v187 = type metadata accessor for UploadedVideo;
LABEL_70:
            v207 = v187;
            v166 = v98;
LABEL_168:
            sub_1D504CF98(v166, v207);
            goto LABEL_169;
          }
        }

        else
        {
          OUTLINED_FUNCTION_110_6();
        }

        v265 = type metadata accessor for UploadedVideo;
LABEL_167:
        v207 = v265;
        v166 = v98;
        goto LABEL_168;
      }

      v254 = type metadata accessor for UploadedVideo;
LABEL_146:
      v257 = v254;
      v258 = v98;
LABEL_147:
      sub_1D504CF98(v258, v257);
LABEL_148:
      sub_1D4E50004(v139, &qword_1EC7EEAF0, &unk_1D562DEE8);
LABEL_170:
      OUTLINED_FUNCTION_46();
      return;
    case 0x15u:
      v214 = v278;
      sub_1D4F26680(v139, v278);
      v216 = *v214;
      v215 = v214[1];
      v217 = v304;
      OUTLINED_FUNCTION_184();
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_148;
      }

      v218 = *v217;
      v219 = v217[1];
      if (v216 != v218 || v215 != v219)
      {
        OUTLINED_FUNCTION_98();
        sub_1D5616168();
      }

LABEL_169:
      OUTLINED_FUNCTION_19_32();
      sub_1D504CF98(v139, v266);
      goto LABEL_170;
    default:
      sub_1D4F26680(v139, v134);
      if (OUTLINED_FUNCTION_55_14())
      {
        (*(v301 + 8))(v134, v302);
        goto LABEL_148;
      }

      v148 = v302;
      OUTLINED_FUNCTION_81();
      v259 = OUTLINED_FUNCTION_40_20();
      v260(v259);
      sub_1D5613A68();
      v261 = OUTLINED_FUNCTION_157_4();
      v132(v261);
      v170 = v134;
LABEL_33:
      (v132)(v170, v148);
LABEL_34:
      OUTLINED_FUNCTION_19_32();
      v172 = v139;
LABEL_35:
      sub_1D504CF98(v172, v171);
      goto LABEL_170;
  }
}