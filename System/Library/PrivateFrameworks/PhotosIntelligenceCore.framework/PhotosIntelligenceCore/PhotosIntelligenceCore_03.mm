void sub_25E625ED8(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_59_0();
  v6 = *(v5 + 104);
  v133 = v7;
  v138[0] = v7;
  v138[1] = v8;
  v127 = v8;
  v130 = v9;
  v138[2] = v9;
  v138[3] = v6;
  v128 = v6;
  v10 = type metadata accessor for RoundRobinElector.ItemAndClusterState(255, v138);
  OUTLINED_FUNCTION_13_3();
  v11 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v126 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v116 - v18;
  OUTLINED_FUNCTION_3_8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_33_0();
  v129 = a1;
  ProgressReporter.start()();
  v131 = v29;
  if (v29)
  {
    goto LABEL_2;
  }

  v132 = v25;
  v119 = v16;
  v122 = v11;
  sub_25E620F70(v27, v28);
  v32 = sub_25E635A60();

  v139 = *(v3 + 56);
  if (v32 >= v139)
  {
    goto LABEL_2;
  }

  v34 = v21;
  v35 = (v21 + 32);
  v36 = (v34 + 8);
  v121 = v126 + 1;
  *&v33 = 136315138;
  v120 = v33;
  while (1)
  {
LABEL_5:
    OUTLINED_FUNCTION_20_1();
    swift_beginAccess();
    v37 = v133;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = type metadata accessor for SummaryItemRequirementEvaluationCollection(0, v37, AssociatedConformanceWitness, v39);
    SummaryItemRequirementEvaluationCollection.removeOptionalRequirementEvaluation()(v40);
    v41 = swift_endAccess();
    if (!v136)
    {
      v70 = 0;
      *&v43 = 136315394;
      v116 = v43;
      v71 = v133;
      while (1)
      {
        v125 = v70;
        v72 = *(&unk_28704A618 + v70 + 32);
        v73 = sub_25E620E6C(v41, v42);
        v126 = &v116;
        MEMORY[0x28223BE20](v73);
        v74 = v127;
        *(&v116 - 6) = v71;
        *(&v116 - 5) = v74;
        v75 = v128;
        *(&v116 - 4) = v130;
        *(&v116 - 3) = v75;
        LODWORD(v124) = v72;
        *(&v116 - 16) = v72;
        swift_getAssociatedConformanceWitness();
        v76 = v131;
        v77 = sub_25E635BA0();
        if (sub_25E635B90() < 1)
        {
          v131 = v76;

          v71 = v133;
          v86 = v125;
        }

        else
        {
          OUTLINED_FUNCTION_51_1();
          ProgressReporter.report(progress:)(v78);
          v131 = v79;
          if (v79)
          {

            goto LABEL_2;
          }

          if (qword_27FCF8C18 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          v80 = sub_25E635710();
          __swift_project_value_buffer(v80, qword_27FCFD930);

          v81 = sub_25E6356F0();
          v82 = sub_25E635CF0();

          LODWORD(v126) = v82;
          if (os_log_type_enabled(v81, v82))
          {
            v123 = v81;
            OUTLINED_FUNCTION_19_1();
            v83 = swift_slowAlloc();
            OUTLINED_FUNCTION_22_1();
            *&v120 = swift_slowAlloc();
            v138[0] = v120;
            *v83 = v116;
            if (v124)
            {
              if (v124 == 1)
              {
                v84 = 0x697469726F697270;
              }

              else
              {
                v84 = 0x6B61657262656974;
              }

              if (v124 == 1)
              {
                v85 = 0xEB0000000064657ALL;
              }

              else
              {
                v85 = 0xEA00000000007265;
              }
            }

            else
            {
              v85 = 0xE800000000000000;
              v84 = 0x6465726975716572;
            }

            sub_25E6011D4(v84, v85, v138);
            OUTLINED_FUNCTION_29_0();
            v117 = &v116;
            *(v83 + 4) = v77;
            *(v83 + 12) = 2080;
            v124 = v83;
            v118 = v77;
            *&v135 = v77;
            MEMORY[0x28223BE20](v87);
            OUTLINED_FUNCTION_34_1();
            v88 = v127;
            *(v89 - 32) = v133;
            *(v89 - 24) = v88;
            v90 = v128;
            *(v89 - 16) = v130;
            *(v89 - 8) = v90;
            v91 = sub_25E635BE0();
            OUTLINED_FUNCTION_8_5();
            swift_getWitnessTable();
            v92 = OUTLINED_FUNCTION_39_1();
            v93 = v131;
            v96 = sub_25E5FB6F4(v92, v85, v91, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v94, MEMORY[0x277D84AC0], v95);
            v131 = v93;
            *&v135 = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E60EF1C();
            v97 = sub_25E6357A0();
            v99 = v98;

            v100 = sub_25E6011D4(v97, v99, v138);

            *(v124 + 14) = v100;
            OUTLINED_FUNCTION_58_0();
            v101 = v123;
            _os_log_impl(&dword_25E5F0000, v123, v102, "Removing remaining features-to-represent of handling type '%s' and re-electing items from the waiting room. Removing:\n%s", v103, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_20_1();
          swift_beginAccess();
          sub_25E635BE0();
          sub_25E635BD0();
          swift_endAccess();

          v138[0] = 0;
          v71 = v133;
          v106 = v122;
          v107 = v119;
          while (1)
          {
            sub_25E620F70(v104, v105);
            sub_25E635A60();
            OUTLINED_FUNCTION_29_0();
            if (v3 >= v139)
            {
              break;
            }

            sub_25E6258A0(v138, v109, v110, v111);
            if (__swift_getEnumTagSinglePayload(v107, 1, v10) == 1)
            {
              OUTLINED_FUNCTION_17();
              v108 = v115(v107, v106);
              break;
            }

            v112 = v132;
            (*v35)(v132, v107, v10);
            sub_25E624B70(v112, *(v112 + *(v10 + 52)), v113, v114);
            v104 = (*v36)(v112, v10);
          }

          sub_25E620F70(v108, v109);
          sub_25E635A60();
          OUTLINED_FUNCTION_29_0();
          v86 = v125;
          if (v3 >= v139)
          {
LABEL_45:
            OUTLINED_FUNCTION_51_1();
            ProgressReporter.complete()();
            return;
          }
        }

        v70 = (&v86->isa + 1);
        if (v70 == 3)
        {
          goto LABEL_45;
        }
      }
    }

    sub_25E5F20F4(&v135, v138);
    OUTLINED_FUNCTION_51_1();
    ProgressReporter.report(progress:)(v44);
    v131 = v45;
    if (v45)
    {
      break;
    }

    if (qword_27FCF8C18 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v46 = sub_25E635710();
    v47 = __swift_project_value_buffer(v46, qword_27FCFD930);
    sub_25E605AF0(v138, &v135);
    v48 = sub_25E6356F0();
    sub_25E635CF0();
    v49 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_7_1();
      v51 = swift_slowAlloc();
      v124 = v51;
      OUTLINED_FUNCTION_6_1();
      v126 = swift_slowAlloc();
      v134 = v126;
      *v51 = v120;
      v125 = v48;
      v52 = v137;
      __swift_project_boxed_opaque_existential_1(&v135, v136);
      LODWORD(v123) = v47;
      v53 = OUTLINED_FUNCTION_18_3();
      v55 = v54(v53, v52);
      v57 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(&v135);
      v58 = sub_25E6011D4(v55, v57, &v134);

      *(v124 + 1) = v58;
      OUTLINED_FUNCTION_58_0();
      v59 = v125;
      _os_log_impl(&dword_25E5F0000, v125, v60, "Removing requirement evaluation: %s and re-electing items from the waiting room", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v135);
    }

    OUTLINED_FUNCTION_60_0();
    *&v135 = 0;
    while (1)
    {
      sub_25E620F70(v62, v63);
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 >= v139)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v138);
        goto LABEL_5;
      }

      sub_25E6258A0(&v135, v64, v65, v66);
      if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
      {
        break;
      }

      (*v35)(v2, v19, v10);
      sub_25E624B70(v2, *(v2 + *(v10 + 52)), v67, v68);
      v62 = (*v36)(v2, v10);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v138);
    OUTLINED_FUNCTION_17();
    v69(v19, v122);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v138);
LABEL_2:
  sub_25E635710();
  OUTLINED_FUNCTION_0_2();
  (*(v30 + 8))(v129);
  v31 = type metadata accessor for ProgressReporter(0);
  OUTLINED_FUNCTION_9_4(v31);
}

uint64_t sub_25E626A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(&v10, a4, AssociatedConformanceWitness);
  return sub_25E610928(v10, a2) & 1;
}

uint64_t sub_25E626B28@<X0>(uint64_t a1@<X2>, uint64_t *a4@<X8>)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 48))(a1, AssociatedConformanceWitness);
  *a4 = result;
  a4[1] = v8;
  return result;
}

void *RoundRobinElector.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return v0;
}

uint64_t RoundRobinElector.__deallocating_deinit()
{
  RoundRobinElector.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_25E626C54(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25E626D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25E626DC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_25E626E00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25E62715C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E6271E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25E627324(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

double OUTLINED_FUNCTION_9_4(uint64_t a1)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1, __n128 a2)
{

  return sub_25E635B90();
}

double OUTLINED_FUNCTION_29_0()
{

  return result;
}

__n128 OUTLINED_FUNCTION_30_1(_DWORD *a1)
{
  result = *(v1 - 336);
  *a1 = result.n128_u32[0];
  return result;
}

double OUTLINED_FUNCTION_47_1()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_65_0()
{

  return result;
}

Swift::String __swiftcall PersonalEvent.localizedText()()
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  switch(*v0)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      break;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      break;
    case 3:
      v2 = "electedItems";
      v1 = 0xD000000000000020;
      break;
    default:
      break;
  }

  type metadata accessor for LocalizedString();
  v3 = static LocalizedString.localizedString(forKey:)(v1, v2 | 0x8000000000000000);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t PersonalEvent.localizedSynonyms()()
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  switch(*v0)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      break;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      break;
    case 3:
      v2 = "electedItems";
      v1 = 0xD000000000000020;
      break;
    default:
      break;
  }

  v7 = v1;
  v8 = v2 | 0x8000000000000000;

  v3 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v3, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v7, v8);
  v5 = v4;

  return v5;
}

void static PersonalEvent.from(localizedText:)(_BYTE *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  v6 = 0;
  v33 = v3;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v7 = byte_28704A640[v6++ + 32];
    v8 = 0xD00000000000001ELL;
    v9 = "PNPersonalEventBirthdayText";
    switch(v7)
    {
      case 1:
        v8 = 0xD00000000000001BLL;
        v9 = "PNPersonalEventWeddingText";
        break;
      case 2:
        v8 = 0xD00000000000001ALL;
        v9 = "ersonalEventText";
        break;
      case 3:
        v8 = 0xD000000000000020;
        v9 = "electedItems";
        break;
      default:
        break;
    }

    static LocalizedString.localizedString(forKey:)(v8, v9 | 0x8000000000000000);

    v10 = sub_25E635830();
    v12 = v11;

    if (v10 == v3 && v12 == v5)
    {
      break;
    }

    v14 = sub_25E636070();

    if (v14)
    {
      goto LABEL_27;
    }

    v15 = 0xD00000000000001ELL;
    v16 = "PNPersonalEventBirthdayText";
    v34 = v7;
    switch(v7)
    {
      case 1:
        v15 = 0xD00000000000001BLL;
        v16 = "PNPersonalEventWeddingText";
        break;
      case 2:
        v15 = 0xD00000000000001ALL;
        v16 = "ersonalEventText";
        break;
      case 3:
        v15 = 0xD000000000000020;
        v16 = "electedItems";
        break;
      default:
        break;
    }

    v35 = v15;
    v37 = v16 | 0x8000000000000000;

    v17 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v17, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v35, v37);
    v19 = v18;

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v5;
      v36 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v20, 0);
      v22 = v36;
      v23 = v19 + 40;
      do
      {
        v24 = sub_25E635830();
        v26 = v25;
        v28 = *(v36 + 16);
        v27 = *(v36 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_25E5F3468(v27 > 1, v28 + 1, 1);
        }

        *(v36 + 16) = v28 + 1;
        v29 = v36 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v23 += 16;
        --v20;
      }

      while (v20);

      v5 = v21;
      v3 = v33;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v30 = sub_25E5F68AC(v22);
    v31 = sub_25E5F6F28(v3, v5, v30);

    LOBYTE(v7) = v34;
    if (v31)
    {
      goto LABEL_27;
    }

    if (v6 == 4)
    {
      LOBYTE(v7) = 4;
      goto LABEL_27;
    }
  }

LABEL_27:

  *a3 = v7;
}

uint64_t static PersonalEvent.localizedMeaningLabel(for:)(_BYTE *a1)
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  v3 = 0;
  switch(*a1)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      goto LABEL_4;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      goto LABEL_4;
    case 3:
      return v3;
    default:
LABEL_4:
      type metadata accessor for LocalizedString();
      v3 = static LocalizedString.localizedString(forKey:)(v1, v2 | 0x8000000000000000);

      return v3;
  }
}

uint64_t static PersonalEvent.localizedMeaningLabelSynonyms(for:)(_BYTE *a1)
{
  v1 = 0xD00000000000001ELL;
  v2 = "PNPersonalEventBirthdayText";
  switch(*a1)
  {
    case 1:
      v2 = "PNPersonalEventWeddingText";
      v1 = 0xD00000000000001BLL;
      goto LABEL_4;
    case 2:
      v2 = "ersonalEventText";
      v1 = 0xD00000000000001ALL;
      goto LABEL_4;
    case 3:
      return MEMORY[0x277D84F90];
    default:
LABEL_4:
      v7 = v1;
      v8 = v2 | 0x8000000000000000;

      v3 = OUTLINED_FUNCTION_0_0();
      MEMORY[0x25F8B9540](v3, 0xE800000000000000);

      type metadata accessor for LocalizedString();
      static LocalizedString.localizedSynonyms(forKey:)(v7, v8);
      v5 = v4;

      return v5;
  }
}

PhotosIntelligenceCore::PersonalEvent_optional __swiftcall PersonalEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalEvent.rawValue.getter()
{
  result = 0x73726576696E6E61;
  switch(*v0)
  {
    case 1:
      result = 0x7961646874726962;
      break;
    case 2:
      result = 0x676E6964646577;
      break;
    case 3:
      result = 0x6C616E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E628044@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E628154()
{
  result = qword_27FCF9768;
  if (!qword_27FCF9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9770, &qword_25E63D188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9768);
  }

  return result;
}

unint64_t sub_25E6281BC()
{
  result = qword_27FCF9778;
  if (!qword_27FCF9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E6282EC()
{
  result = qword_27FCF9780;
  if (!qword_27FCF9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9780);
  }

  return result;
}

Swift::String __swiftcall CommonEvent.localizedText()()
{
  OUTLINED_FUNCTION_1_8();
  v3 = "PNCommonEventDinnerText";
  if (v1 != 1)
  {
    ++v0;
    v3 = "PNPersonalEventAnniversaryText";
  }

  if (v1)
  {
    v4 = v0;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = "PNCommonEventLunchText";
  }

  type metadata accessor for LocalizedString();
  v6 = static LocalizedString.localizedString(forKey:)(v4, v5 | 0x8000000000000000);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t CommonEvent.localizedSynonyms()()
{
  OUTLINED_FUNCTION_1_8();
  v3 = "PNCommonEventDinnerText";
  if (v1 != 1)
  {
    ++v0;
    v3 = "PNPersonalEventAnniversaryText";
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v0 = v2;
    v4 = "PNCommonEventLunchText";
  }

  v9 = v0;
  v10 = v4 | 0x8000000000000000;

  v5 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v5, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v9, v10);
  v7 = v6;

  return v7;
}

void static CommonEvent.from(localizedText:)(_BYTE *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  v6 = 0;
  type metadata accessor for LocalizedString();
  v36 = v3;
  v37 = v5;
  while (1)
  {
    v7 = byte_28704A6E8[v6++ + 32];
    if (v7 == 1)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0xD000000000000017;
    }

    v9 = "PNCommonEventDinnerText";
    if (v7 != 1)
    {
      v9 = "PNPersonalEventAnniversaryText";
    }

    v10 = v7 ? v8 : 0xD00000000000001ALL;
    v11 = v7 ? v9 : "PNCommonEventLunchText";
    static LocalizedString.localizedString(forKey:)(v10, v11 | 0x8000000000000000);

    v12 = sub_25E635830();
    v14 = v13;

    if (v12 == v3 && v14 == v5)
    {
      break;
    }

    v16 = sub_25E636070();

    if (v16)
    {
      goto LABEL_39;
    }

    v17 = 0xD00000000000001ALL;
    if (v7 == 1)
    {
      v18 = 0xD000000000000016;
    }

    else
    {
      v18 = 0xD000000000000017;
    }

    v19 = "PNCommonEventDinnerText";
    if (v7 != 1)
    {
      v19 = "PNPersonalEventAnniversaryText";
    }

    if (v7)
    {
      v17 = v18;
    }

    v20 = "PNCommonEventLunchText";
    if (v7)
    {
      v20 = v19;
    }

    v38 = v17;
    v40 = v20 | 0x8000000000000000;

    v21 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v21, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v38, v40);
    v23 = v22;

    v24 = *(v23 + 16);
    if (v24)
    {
      v39 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v24, 0);
      v25 = v39;
      v26 = v23 + 40;
      do
      {
        v27 = sub_25E635830();
        v29 = v28;
        v31 = *(v39 + 16);
        v30 = *(v39 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_25E5F3468(v30 > 1, v31 + 1, 1);
        }

        *(v39 + 16) = v31 + 1;
        v32 = v39 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v26 += 16;
        --v24;
      }

      while (v24);

      v3 = v36;
      v5 = v37;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v33 = sub_25E5F68AC(v25);
    v34 = sub_25E5F6F28(v3, v5, v33);

    if (v34)
    {
      goto LABEL_39;
    }

    if (v6 == 3)
    {
      LOBYTE(v7) = 3;
      goto LABEL_39;
    }
  }

LABEL_39:

  *a3 = v7;
}

PhotosIntelligenceCore::CommonEvent_optional __swiftcall CommonEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonEvent.rawValue.getter()
{
  v1 = 0x68636E756CLL;
  if (*v0 != 1)
  {
    v1 = 0x72656E6E6964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361666B61657262;
  }
}

uint64_t sub_25E62881C@<X0>(uint64_t *a1@<X8>)
{
  result = CommonEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E62892C()
{
  result = qword_27FCF9788;
  if (!qword_27FCF9788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9790, &qword_25E63D2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9788);
  }

  return result;
}

unint64_t sub_25E628994()
{
  result = qword_27FCF9798;
  if (!qword_27FCF9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9798);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E628AC4()
{
  result = qword_27FCF97A0;
  if (!qword_27FCF97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97A0);
  }

  return result;
}

Swift::String __swiftcall PublicEvent.localizedText()()
{
  OUTLINED_FUNCTION_2_10();
  if (!v6)
  {
    v3 = v5;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v0;
  }

  if (v1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v2;
  }

  type metadata accessor for LocalizedString();
  v9 = static LocalizedString.localizedString(forKey:)(v7, v8 | 0x8000000000000000);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t PublicEvent.localizedSynonyms()()
{
  OUTLINED_FUNCTION_2_10();
  if (!v6)
  {
    v3 = v5;
  }

  if (v1)
  {
    v0 = v4;
    v7 = v3;
  }

  else
  {
    v7 = v2;
  }

  v12 = v0;
  v13 = v7 | 0x8000000000000000;

  v8 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v8, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(v12, v13);
  v10 = v9;

  return v10;
}

void static PublicEvent.from(localizedText:)(_BYTE *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  v6 = 0;
  type metadata accessor for LocalizedString();
  v34 = v3;
  v35 = v5;
  while (1)
  {
    v7 = byte_28704A778[v6++ + 32];
    OUTLINED_FUNCTION_0_10();
    v9 = "PNPublicEventSportEventText";
    if (!v15)
    {
      v9 = "PNCommonEventBreakfastText";
    }

    v10 = v7 ? v8 : 0xD000000000000018;
    v11 = v7 ? v9 : "PNPublicEventHolidayEventText";
    static LocalizedString.localizedString(forKey:)(v10, v11 | 0x8000000000000000);

    v12 = sub_25E635830();
    v14 = v13;

    v15 = v12 == v3 && v14 == v5;
    if (v15)
    {
      break;
    }

    v16 = sub_25E636070();

    if (v16)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_0_10();
    v18 = "PNPublicEventSportEventText";
    if (!v15)
    {
      v18 = "PNCommonEventBreakfastText";
    }

    if (!v7)
    {
      v17 = 0xD000000000000018;
      v18 = "PNPublicEventHolidayEventText";
    }

    v36 = v17;
    v38 = v18 | 0x8000000000000000;

    v19 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v19, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(v36, v38);
    v21 = v20;

    v22 = *(v21 + 16);
    if (v22)
    {
      v37 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v22, 0);
      v23 = v37;
      v24 = v21 + 40;
      do
      {
        v25 = sub_25E635830();
        v27 = v26;
        v29 = *(v37 + 16);
        v28 = *(v37 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_25E5F3468(v28 > 1, v29 + 1, 1);
        }

        *(v37 + 16) = v29 + 1;
        v30 = v37 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v24 += 16;
        --v22;
      }

      while (v22);

      v3 = v34;
      v5 = v35;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v31 = sub_25E5F68AC(v23);
    v32 = sub_25E5F6F28(v3, v5, v31);

    if (v32)
    {
      goto LABEL_31;
    }

    if (v6 == 3)
    {
      LOBYTE(v7) = 3;
      goto LABEL_31;
    }
  }

LABEL_31:

  *a3 = v7;
}

PhotosIntelligenceCore::PublicEvent_optional __swiftcall PublicEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PublicEvent.rawValue.getter()
{
  v1 = 0x20796164696C6F68;
  if (*v0 != 1)
  {
    v1 = 0x76652074726F7073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747265636E6F63;
  }
}

uint64_t sub_25E629018@<X0>(uint64_t *a1@<X8>)
{
  result = PublicEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E629128()
{
  result = qword_27FCF97A8;
  if (!qword_27FCF97A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF97B0, &qword_25E63D458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97A8);
  }

  return result;
}

unint64_t sub_25E629190()
{
  result = qword_27FCF97B8;
  if (!qword_27FCF97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PublicEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E6292C0()
{
  result = qword_27FCF97C0;
  if (!qword_27FCF97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF97C0);
  }

  return result;
}

void static AnalyticUtilities.roundToSignificantFigures(_:significantFigures:logger:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_25E635710();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 0.0 || a1 < 1)
  {
    return;
  }

  v13 = ceil(log10(fabs(a3)));
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFSUB__(a1, v13))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v14 = __exp10((a1 - v13));
  v15 = round(v14 * a3) / v14;
  sub_25E6295D4(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_25E629644(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = sub_25E6356F0();
    v17 = sub_25E635CD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218496;
      *(v18 + 4) = a3;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v15;
      *(v18 + 22) = 2048;
      *(v18 + 24) = a1;
      _os_log_impl(&dword_25E5F0000, v16, v17, "Rounded %f to %f with %ld significant figures", v18, 0x20u);
      MEMORY[0x25F8BA800](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_25E6295D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E629644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF97C8, &unk_25E63D540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E62B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromPNErrorCode(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_279A28028[a1 + 1];
  }
}

__CFString *CLSTaxonomyBasedModelStringFromConfidenceThresholdType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_279A28078[a1];
  }
}

uint64_t SimilarityModelVersionFromSceneAnalysisVersion(unint64_t a1)
{
  v1 = 80;
  v2 = 33;
  if (a1 < 0x21)
  {
    v2 = 0;
  }

  if (a1 <= 0x4F)
  {
    v1 = v2;
  }

  if (a1 <= 0x53)
  {
    return v1;
  }

  else
  {
    return 84;
  }
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}