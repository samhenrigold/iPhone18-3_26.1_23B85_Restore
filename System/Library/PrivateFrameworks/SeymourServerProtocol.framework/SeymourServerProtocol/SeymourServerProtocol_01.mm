uint64_t sub_265BA0A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_265BA0D30(uint64_t a1)
{
  sub_265B98804(319);
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

SeymourServerProtocol::RecordField_optional __swiftcall RecordField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_265BA60D8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecordField.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574707972636E65;
  }
}

uint64_t sub_265BA0EC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000265BA94D0;
  if (v2 == 1)
  {
    v5 = 0x8000000265BA94D0;
  }

  else
  {
    v3 = 0x696669746E656469;
    v5 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6574707972636E65;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE00736574794264;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6574707972636E65;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00736574794264;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265BA60E8();
  }

  return v11 & 1;
}

unint64_t sub_265BA0FD0()
{
  result = qword_280037B70;
  if (!qword_280037B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037B70);
  }

  return result;
}

uint64_t sub_265BA1024()
{
  sub_265BA6168();
  sub_265BA6058();

  return sub_265BA6188();
}

uint64_t sub_265BA10DC(uint64_t a1)
{
  sub_265BA6058();
}

uint64_t sub_265BA1180(uint64_t a1)
{
  sub_265BA6168();
  sub_265BA6058();

  return sub_265BA6188();
}

void sub_265BA1240(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736574794264;
  v4 = 0x8000000265BA94D0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574707972636E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for RecordField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordField(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.markers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ScoreEstimationProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreEstimationProtobuf(0) + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreEstimationProtobuf(uint64_t a1)
{
  result = qword_280037BB0;
  if (!qword_280037BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreEstimationProtobuf(0) + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreEstimationProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  type metadata accessor for ScoreEstimationProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA16C0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037B78);
  __swift_project_value_buffer(v0, qword_280037B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "markers";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "sampleCount";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreEstimationProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037580 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037B78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreEstimationProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA5E38();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_265BA5E88();
          break;
        case 2:
          type metadata accessor for ScoreEstimationMarkerProtobuf(0);
          sub_265BA21EC(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);
          sub_265BA5EC8();
          break;
        case 1:
          sub_265BA5E78();
          break;
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_265BA5F68(), !v4))
  {
    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for ScoreEstimationMarkerProtobuf(0);
      sub_265BA21EC(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf, &protocol conformance descriptor for ScoreEstimationMarkerProtobuf);
      result = sub_265BA5FB8();
      if (v4)
      {
        return result;
      }

      if (!*(v3 + 16))
      {
        goto LABEL_9;
      }
    }

    else if (!*(v3 + 16))
    {
LABEL_9:
      type metadata accessor for ScoreEstimationProtobuf(0);
      return sub_265BA5DC8();
    }

    result = sub_265BA5F78();
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t ScoreEstimationProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreEstimationProtobuf(0);
  sub_265BA21EC(&qword_280037B90, type metadata accessor for ScoreEstimationProtobuf, &protocol conformance descriptor for ScoreEstimationProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA1C58@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA1CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA21EC(&qword_280037BC8, type metadata accessor for ScoreEstimationProtobuf, &protocol conformance descriptor for ScoreEstimationProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA1D50@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037580 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037B78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265BA1DF8(uint64_t a1)
{
  v2 = sub_265BA21EC(&qword_280037BA0, type metadata accessor for ScoreEstimationProtobuf, &protocol conformance descriptor for ScoreEstimationProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA1E64(uint64_t a1, uint64_t a2)
{
  sub_265BA21EC(&qword_280037BA0, type metadata accessor for ScoreEstimationProtobuf, &protocol conformance descriptor for ScoreEstimationProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol23ScoreEstimationProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_265B8BBB0(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ScoreEstimationProtobuf(0);
  sub_265BA5DE8();
  sub_265BA21EC(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

void sub_265BA20F8(uint64_t a1)
{
  sub_265BA2194(319);
  if (v1 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265BA2194(uint64_t a1)
{
  if (!qword_280037BC0)
  {
    type metadata accessor for ScoreEstimationMarkerProtobuf(255);
    v1 = sub_265BA6068();
    if (!v2)
    {
      atomic_store(v1, &qword_280037BC0);
    }
  }
}

uint64_t sub_265BA21EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ServerError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BD0, &qword_265BA90B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v96 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v96 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v96 - v16;
  v103 = sub_265BA5D88();
  v102 = *(v103 - 8);
  v18 = MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v96 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v96 - v26;
  result = MEMORY[0x28223BE20](v25);
  v30 = &v96 - v29;
  if (*(a1 + 8) == 1)
  {
    v31 = 10;
    v32 = 0;
    v33 = 0;
    switch(*a1)
    {
      case 1:
        v33 = 0;
        v32 = 1;
        goto LABEL_77;
      case 2:
        v32 = *(a1 + 16);

        v31 = 5;
        goto LABEL_77;
      case 3:
        v33 = 0;
        v32 = 2;
        goto LABEL_77;
      case 4:
        v32 = *(a1 + 40);

        v31 = 6;
        goto LABEL_77;
      case 5:
        v32 = *(a1 + 56);

        v31 = 7;
        goto LABEL_77;
      case 6:
        v32 = *(a1 + 56);

        v31 = 8;
        goto LABEL_77;
      case 7:
        goto LABEL_77;
      case 8:
        v32 = *(a1 + 56);

        v31 = 9;
        goto LABEL_77;
      case 9:
        v68 = *(a1 + 32);
        v69 = *(v68 + 2);
        v97 = a1;
        if (v69)
        {
          v70 = 0;
          v71 = (v102 + 48);
          v101 = (v102 + 32);
          v72 = v68 + 40;
          v73 = MEMORY[0x277D84F90];
          v100 = v68;
          v98 = v69;
          do
          {
            if (v70 >= *(v68 + 2))
            {
              goto LABEL_80;
            }

            sub_265BA5D68();
            v74 = v103;
            if ((*v71)(v15, 1, v103) == 1)
            {
              result = sub_265BA2FD0(v15);
            }

            else
            {
              v75 = *v101;
              (*v101)(v27, v15, v74);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_265BA454C(0, v73[2] + 1, 1, v73);
              }

              v77 = v73[2];
              v76 = v73[3];
              if (v77 >= v76 >> 1)
              {
                v73 = sub_265BA454C((v76 > 1), v77 + 1, 1, v73);
              }

              v73[2] = v77 + 1;
              result = v75(v73 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v77, v27, v103);
              v68 = v100;
              v69 = v98;
            }

            ++v70;
            v72 += 16;
          }

          while (v69 != v70);
        }

        else
        {
          v73 = MEMORY[0x277D84F90];
        }

        v90 = sub_265BA4850(v73);

        v32 = v90;
        v33 = 0;
        v31 = 1;
        goto LABEL_76;
      case 0xALL:
        v78 = *(a1 + 32);
        v101 = *(v78 + 16);
        v97 = a1;
        if (v101)
        {
          v79 = 0;
          v80 = (v102 + 48);
          v100 = (v102 + 32);
          v81 = v78 + 40;
          v82 = MEMORY[0x277D84F90];
          v83 = v103;
          v98 = v78;
          do
          {
            if (v79 >= *(v78 + 16))
            {
              goto LABEL_82;
            }

            sub_265BA5D68();
            if ((*v80)(v12, 1, v83) == 1)
            {
              result = sub_265BA2FD0(v12);
            }

            else
            {
              v84 = *v100;
              (*v100)(v24, v12, v83);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_265BA454C(0, v82[2] + 1, 1, v82);
              }

              v86 = v82[2];
              v85 = v82[3];
              if (v86 >= v85 >> 1)
              {
                v82 = sub_265BA454C((v85 > 1), v86 + 1, 1, v82);
              }

              v82[2] = v86 + 1;
              v87 = v82 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v86;
              v83 = v103;
              result = v84(v87, v24, v103);
              v78 = v98;
            }

            ++v79;
            v81 += 16;
          }

          while (v101 != v79);
        }

        else
        {
          v82 = MEMORY[0x277D84F90];
        }

        v92 = sub_265BA4850(v82);

        v32 = v92;
        v33 = 0;
        v31 = 2;
        goto LABEL_76;
      case 0xBLL:
        v47 = *(a1 + 32);
        v48 = *(v47 + 16);
        v97 = a1;
        if (!v48)
        {
          v52 = MEMORY[0x277D84F90];
LABEL_67:
          v88 = sub_265BA4850(v52);

          v32 = v88;
          v33 = 0;
          v31 = 3;
          goto LABEL_76;
        }

        v49 = 0;
        v50 = (v102 + 48);
        v101 = (v102 + 32);
        v51 = v47 + 40;
        v52 = MEMORY[0x277D84F90];
        v53 = v103;
        v98 = v48;
        while (v49 < *(v47 + 16))
        {

          sub_265BA5D68();
          if ((*v50)(v9, 1, v53) == 1)
          {
            result = sub_265BA2FD0(v9);
          }

          else
          {
            v54 = *v101;
            (*v101)(v100, v9, v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_265BA454C(0, v52[2] + 1, 1, v52);
            }

            v56 = v52[2];
            v55 = v52[3];
            if (v56 >= v55 >> 1)
            {
              v52 = sub_265BA454C((v55 > 1), v56 + 1, 1, v52);
            }

            v52[2] = v56 + 1;
            v57 = v52 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v56;
            v53 = v103;
            result = v54(v57, v100, v103);
            v48 = v98;
          }

          ++v49;
          v51 += 16;
          if (v48 == v49)
          {
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        break;
      case 0xCLL:
        v58 = *(a1 + 32);
        v59 = *(v58 + 16);
        v97 = a1;
        if (v59)
        {
          v60 = 0;
          v61 = (v102 + 48);
          v100 = (v102 + 32);
          v62 = v58 + 40;
          v63 = MEMORY[0x277D84F90];
          v98 = v58;
          do
          {
            if (v60 >= *(v58 + 16))
            {
              goto LABEL_79;
            }

            sub_265BA5D68();
            v64 = v103;
            if ((*v61)(v6, 1, v103) == 1)
            {
              result = sub_265BA2FD0(v6);
            }

            else
            {
              v65 = *v100;
              (*v100)(v101, v6, v64);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v63 = sub_265BA454C(0, v63[2] + 1, 1, v63);
              }

              v67 = v63[2];
              v66 = v63[3];
              if (v67 >= v66 >> 1)
              {
                v63 = sub_265BA454C((v66 > 1), v67 + 1, 1, v63);
              }

              v63[2] = v67 + 1;
              result = v65(v63 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v67, v101, v103);
              v58 = v98;
            }

            ++v60;
            v62 += 16;
          }

          while (v59 != v60);
        }

        else
        {
          v63 = MEMORY[0x277D84F90];
        }

        v89 = sub_265BA4850(v63);

        v32 = v89;
        v33 = 0;
        v31 = 4;
        goto LABEL_76;
      default:
        v34 = *(a1 + 32);
        v101 = *(v34 + 16);
        v97 = a1;
        if (v101)
        {
          v35 = 0;
          v36 = (v102 + 48);
          v100 = (v102 + 32);
          v37 = v34 + 40;
          v38 = MEMORY[0x277D84F90];
          v39 = v103;
          v40 = v34;
          v98 = v34;
          do
          {
            if (v35 >= *(v40 + 16))
            {
              goto LABEL_81;
            }

            sub_265BA5D68();
            if ((*v36)(v17, 1, v39) == 1)
            {
              result = sub_265BA2FD0(v17);
            }

            else
            {
              v43 = *v100;
              (*v100)(v30, v17, v39);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_265BA454C(0, v38[2] + 1, 1, v38);
              }

              v45 = v38[2];
              v44 = v38[3];
              if (v45 >= v44 >> 1)
              {
                v38 = sub_265BA454C((v44 > 1), v45 + 1, 1, v38);
              }

              v38[2] = v45 + 1;
              v46 = v38 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v45;
              v39 = v103;
              result = v43(v46, v30, v103);
              v40 = v98;
            }

            ++v35;
            v37 += 16;
          }

          while (v101 != v35);
        }

        else
        {
          v38 = MEMORY[0x277D84F90];
        }

        v91 = sub_265BA4850(v38);

        v32 = v91;
        v33 = 0;
        v31 = 0;
LABEL_76:
        a1 = v97;
LABEL_77:
        v93 = v33;
        v94 = v31;
        result = sub_265BA2F74(a1);
        v95 = v99;
        *v99 = v32;
        v95[1] = v93;
        *(v95 + 16) = v94;
        return result;
    }
  }

  else
  {
    v41 = sub_265BA5CB8();
    sub_265BA4AAC(&qword_280037BD8, MEMORY[0x277D50940], MEMORY[0x277D50948]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D50908], v41);
    swift_willThrow();
    return sub_265BA2F74(a1);
  }

  return result;
}

uint64_t sub_265BA2F74(uint64_t a1)
{
  v2 = type metadata accessor for ServerErrorProtobuf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265BA2FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BD0, &qword_265BA90B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServerError.protobuf()()
{
  type metadata accessor for ServerErrorProtobuf(0);
  sub_265BA4AAC(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);
  return sub_265BA5F18();
}

uint64_t sub_265BA30F0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = result;
  if (a4 <= 4u)
  {
    if (a4 <= 1u)
    {
      if (!a4)
      {
        *result = 0;
LABEL_22:
        *(result + 8) = 1;
        v11 = sub_265BA32E0(a2);

        v5[4] = v11;
        return result;
      }

      v7 = 9;
    }

    else if (a4 == 2)
    {
      v7 = 10;
    }

    else if (a4 == 3)
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }

    *result = v7;
    goto LABEL_22;
  }

  if (a4 <= 7u)
  {
    if (a4 == 5)
    {
      *result = 2;
      *(result + 8) = 1;

      v5[2] = a2;
      v5[3] = a3;
    }

    else if (a4 == 6)
    {
      *result = 4;
      *(result + 8) = 1;

      v5[5] = a2;
      v5[6] = a3;
    }

    else
    {
      *result = 5;
      *(result + 8) = 1;

      v5[7] = a2;
      v5[8] = a3;
    }

    return result;
  }

  if (a4 == 8)
  {
    v8 = 6;
    goto LABEL_18;
  }

  if (a4 == 9)
  {
    v8 = 8;
LABEL_18:
    *result = v8;
    *(result + 8) = 1;

    v5[7] = a2;
    v5[8] = a3;
    return result;
  }

  if (a2 | a3)
  {
    if (!(a2 ^ 1 | a3))
    {
      *result = 1;
      *(result + 8) = 1;
      return result;
    }

    v13 = 3;
  }

  else
  {
    v13 = 7;
  }

  *result = v13;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_265BA32E0(uint64_t a1)
{
  v35 = sub_265BA5D88();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_265BA4724(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_265BA6098();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_265BA5D78();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_265BA4724((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_265BA4A9C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_265BA4A9C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_265BA3600()
{
  type metadata accessor for ServerErrorProtobuf(0);
  sub_265BA4AAC(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf, &protocol conformance descriptor for ServerErrorProtobuf);
  return sub_265BA5F18();
}

uint64_t sub_265BA3718(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_265BA5D88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v33 = a2;
  v11 = sub_265BA6028();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_265BA4AAC(&qword_280037928, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
      v21 = sub_265BA6048();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_265BA3D54(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_265BA39F8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_265BA5D88();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  result = sub_265BA60B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
      result = sub_265BA6028();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_265BA3D54(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_265BA5D88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_265BA39F8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_265BA3FF8();
      goto LABEL_12;
    }

    sub_265BA4230(v10 + 1);
  }

  v12 = *v3;
  sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v13 = sub_265BA6028();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_265BA4AAC(&qword_280037928, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
      v21 = sub_265BA6048();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_265BA60F8();
  __break(1u);
  return result;
}

void *sub_265BA3FF8()
{
  v1 = v0;
  v2 = sub_265BA5D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  v6 = *v0;
  v7 = sub_265BA60A8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
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
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_265BA4230(uint64_t a1)
{
  v2 = v1;
  v33 = sub_265BA5D88();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE8, &qword_265BA9198);
  v7 = sub_265BA60B8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
      result = sub_265BA6028();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_265BA454C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BF0, &unk_265BA91A0);
  v10 = *(sub_265BA5D88() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_265BA5D88() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_265BA4724(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265BA4744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265BA4744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037BE0, &qword_265BA9190);
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

uint64_t sub_265BA4850(uint64_t a1)
{
  v2 = sub_265BA5D88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_265BA4AAC(&qword_280037920, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  result = MEMORY[0x26676C630](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_265BA3718(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_265BA4A9C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_265BA4AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ExecuteTasksRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExecuteTasksRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExecuteTasksResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExecuteTasksResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExecuteTasksResponseProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExecuteTasksResponseProtobuf.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for ExecuteTasksResponseProtobuf(0);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265BA4DE4()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037BF8);
  __swift_project_value_buffer(v0, qword_280037BF8);
  return sub_265BA5FF8();
}

uint64_t ExecuteTasksRequestProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_265BA5E38();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static ExecuteTasksRequestProtobuf.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA4FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5178(&unk_280037C90, type metadata accessor for ExecuteTasksRequestProtobuf, &protocol conformance descriptor for ExecuteTasksRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA5070(uint64_t a1)
{
  v2 = sub_265BA5178(&qword_280037C40, type metadata accessor for ExecuteTasksRequestProtobuf, &protocol conformance descriptor for ExecuteTasksRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA50DC(uint64_t a1, uint64_t a2)
{
  sub_265BA5178(&qword_280037C40, type metadata accessor for ExecuteTasksRequestProtobuf, &protocol conformance descriptor for ExecuteTasksRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA5178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265BA51C0(uint64_t a1, uint64_t a2)
{
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA5264()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037C10);
  __swift_project_value_buffer(v0, qword_280037C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265BA6410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "executedTasksCount";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_265BA5FD8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_265BA5FE8();
}

uint64_t ExecuteTasksResponseProtobuf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5E78();
    }
  }

  return result;
}

uint64_t ExecuteTasksResponseProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_265BA5F68(), !v4))
  {
    type metadata accessor for ExecuteTasksResponseProtobuf(0);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static ExecuteTasksResponseProtobuf.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for ExecuteTasksResponseProtobuf(0);
  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA55DC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_265BA6168();
  a1(0);
  sub_265BA5178(a2, a3, a4);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265BA56D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5178(&qword_280037C88, type metadata accessor for ExecuteTasksResponseProtobuf, &protocol conformance descriptor for ExecuteTasksResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265BA5774(uint64_t a1)
{
  v2 = sub_265BA5178(&qword_280037C58, type metadata accessor for ExecuteTasksResponseProtobuf, &protocol conformance descriptor for ExecuteTasksResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265BA57E0(uint64_t a1, uint64_t a2)
{
  sub_265BA5178(&qword_280037C58, type metadata accessor for ExecuteTasksResponseProtobuf, &protocol conformance descriptor for ExecuteTasksResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265BA5A9C(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_265BA5DE8();
  sub_265BA5178(&qword_2800375A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265BA5B68(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265BA5BFC(uint64_t a1)
{
  result = sub_265BA5DE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}