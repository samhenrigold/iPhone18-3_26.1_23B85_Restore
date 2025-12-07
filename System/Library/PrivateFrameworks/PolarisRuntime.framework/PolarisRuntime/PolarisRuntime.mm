uint64_t static PolarisDSLBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = sub_25ECD27D0();
  }

  return v1;
}

uint64_t sub_25ECC1EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25ECD2860();
  sub_25ECD2860();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25ECD2770();
}

uint64_t static PolarisDSLBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_25ECC2094(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  v5 = sub_25ECD27A0();
  (*(v4 + 16))(v6, a1, a2);
  sub_25ECD2860();
  return v5;
}

uint64_t sub_25ECC2094(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A380, &qword_25ECD2FB8);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_25ECC2118(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_25ECC2168(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
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

uint64_t sub_25ECC221C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25ECC223C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25ECC229C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25ECC22BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void sub_25ECC230C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t Graph.onSubmit.getter()
{
  v1 = *(v0 + 16);
  sub_25ECC623C(v1, *(v0 + 24));
  return v1;
}

uint64_t Graph.onTeardown.getter()
{
  v1 = *(v0 + 32);
  sub_25ECC623C(v1, *(v0 + 40));
  return v1;
}

uint64_t Graph.TriggerGroup.GroupType.hashValue.getter()
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC252C()
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC2598(uint64_t a1)
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AE0();
}

uint64_t Graph.TriggerGroup.init(_:_:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>, uint64_t a4@<X0>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a4);
  v9 = sub_25ECD27D0();
  v16 = v9;
  v10 = a1();
  if (sub_25ECD2810())
  {
    v11 = 0;
    while (1)
    {
      v12 = sub_25ECD27F0();
      sub_25ECD27B0();
      if (v12)
      {
        (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, a2);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25ECD2920();
        if (v8 != 8)
        {
          __break(1u);
          return result;
        }

        v15 = result;
        (*(v7 + 16))(&v15 - 2, &v15, a2);
        swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v9 = v16;
          goto LABEL_13;
        }
      }

      sub_25ECD2860();
      sub_25ECD2820();
      ++v11;
      if (v13 == sub_25ECD2810())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a3 = v9;
  return result;
}

uint64_t Graph.GraphTrigger.triggerIDs()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25ECC5078(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25ECC5078((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Graph.graphTrigger.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

double _s14PolarisRuntime5GraphV3key12triggerGroup5tasks8onSubmit0H8TeardownAcA3KeyOys6UInt32VG_AC07TriggerF0Vy_AC08ResourceM0VGSayAA4TaskVGyAA0C6ConfigVzcSgAXtAC5ErrorOYKcfC@<D0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v17 = *a1;
  v18 = *a2;
  *(&v42 + 1) = MEMORY[0x277D84FA0];
  *&v43 = MEMORY[0x277D84FA0];
  *(&v43 + 1) = MEMORY[0x277D84FA0];
  *&v44 = MEMORY[0x277D84F90];
  *(&v44 + 1) = MEMORY[0x277D84F90];
  LODWORD(v39) = v17;
  *&v40 = a4;
  *(&v40 + 1) = a5;
  *&v41 = a6;
  *(&v41 + 1) = a7;
  sub_25ECC623C(a4, a5);
  sub_25ECC623C(a6, a7);

  *&v42 = v18;
  *(&v39 + 1) = a3;
  sub_25ECC2AE0();
  v45[2] = v41;
  v45[3] = v42;
  v45[4] = v43;
  v45[5] = v44;
  v45[0] = v39;
  v45[1] = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v33 = v39;
  v34 = v40;
  sub_25ECC607C(v45, &v25);
  sub_25ECC376C(&v31);
  if (v9)
  {
    v24[2] = v35;
    v24[3] = v36;
    v24[4] = v37;
    v24[5] = v38;
    v24[0] = v33;
    v24[1] = v34;
    sub_25ECC60B4(v24);
    sub_25ECC61D8(a6, a7);
    sub_25ECC61D8(a4, a5);
    v19 = v32;
    *a8 = v31;
    *(a8 + 16) = v19;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v25 = v39;
    v26 = v40;
    sub_25ECC60B4(&v25);
  }

  else
  {
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    v25 = v33;
    v26 = v34;
    sub_25ECC60B4(&v25);
    sub_25ECC61D8(a6, a7);
    sub_25ECC61D8(a4, a5);
    v21 = v42;
    a9[2] = v41;
    a9[3] = v21;
    v22 = v44;
    a9[4] = v43;
    a9[5] = v22;
    result = *&v39;
    v23 = v40;
    *a9 = v39;
    a9[1] = v23;
  }

  return result;
}

void sub_25ECC2AE0()
{
  v1 = *(v0 + 8);
  v132 = v1;
  v127 = *(v1 + 16);
  if (v127)
  {
    v2 = 0;
    v3 = (v1 + 80);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        return;
      }

      v5 = *(v3 - 3);
      v6 = *(v5 + 16);
      v7 = *(v4 + 2);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_133;
      }

      v9 = *(v3 - 1);
      v10 = *v3;

      sub_25ECC623C(v9, v10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v12 = *(v4 + 3) >> 1, v12 >= v8))
      {
        if (!*(v5 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v13 = v7 + v6;
        }

        else
        {
          v13 = v7;
        }

        v4 = sub_25ECC4A1C(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        v12 = *(v4 + 3) >> 1;
        if (!*(v5 + 16))
        {
LABEL_3:

          if (v6)
          {
            goto LABEL_134;
          }

          goto LABEL_4;
        }
      }

      v14 = *(v4 + 2);
      if (v12 - v14 < v6)
      {
        goto LABEL_144;
      }

      memcpy(&v4[16 * v14 + 32], (v5 + 32), 16 * v6);

      if (v6)
      {
        v15 = *(v4 + 2);
        v16 = __OFADD__(v15, v6);
        v17 = v15 + v6;
        if (v16)
        {
          goto LABEL_146;
        }

        *(v4 + 2) = v17;
      }

LABEL_4:
      ++v2;

      sub_25ECC61D8(v9, v10);
      v3 += 7;
      v1 = v132;
      if (v127 == v2)
      {
        goto LABEL_20;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_20:

  v125 = v4;
  v126[10] = v4;
  v128 = *(v1 + 16);
  if (v128)
  {
    v18 = 0;
    v19 = (v1 + 80);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= *(v1 + 16))
      {
        goto LABEL_136;
      }

      v21 = *(v19 - 2);
      v22 = *(v21 + 16);
      v23 = *(v20 + 2);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_137;
      }

      v25 = *(v19 - 1);
      v26 = *v19;

      sub_25ECC623C(v25, v26);

      v27 = swift_isUniquelyReferenced_nonNull_native();
      if (v27 && (v28 = *(v20 + 3) >> 1, v28 >= v24))
      {
        if (!*(v21 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v23 <= v24)
        {
          v29 = v23 + v22;
        }

        else
        {
          v29 = v23;
        }

        v20 = sub_25ECC4910(v27, v29, 1, v20);
        v28 = *(v20 + 3) >> 1;
        if (!*(v21 + 16))
        {
LABEL_22:

          if (v22)
          {
            goto LABEL_138;
          }

          goto LABEL_23;
        }
      }

      if (v28 - *(v20 + 2) < v22)
      {
        goto LABEL_145;
      }

      swift_arrayInitWithCopy();

      if (v22)
      {
        v30 = *(v20 + 2);
        v16 = __OFADD__(v30, v22);
        v31 = v30 + v22;
        if (v16)
        {
          goto LABEL_147;
        }

        *(v20 + 2) = v31;
      }

LABEL_23:
      ++v18;

      sub_25ECC61D8(v25, v26);
      v19 += 7;
      v1 = v132;
      if (v128 == v18)
      {
        goto LABEL_39;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_39:

  v126[11] = v20;
  v32 = *(v20 + 2);
  v33 = MEMORY[0x277D84F90];
  v133 = v20;
  if (v32)
  {
    v135 = MEMORY[0x277D84F90];
    sub_25ECC50D8(0, v32, 0);
    v33 = v135;
    v34 = (v20 + 40);
    do
    {
      v35 = *v34;
      ObjectType = swift_getObjectType();
      v37 = *(v35 + 16);
      swift_unknownObjectRetain();
      v37(&v134, ObjectType, v35);
      swift_unknownObjectRelease();
      v38 = v134;
      v135 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_25ECC50D8((v39 > 1), v40 + 1, 1);
        v33 = v135;
      }

      *(v33 + 16) = v40 + 1;
      *(v33 + 4 * v40 + 32) = v38;
      v34 += 2;
      --v32;
    }

    while (v32);
  }

  v41 = sub_25ECC6624(v33);

  v42 = *(v125 + 2);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = 0;
    v129 = *(v125 + 2);
    v45 = v41 + 56;
    while (v44 < *(v125 + 2))
    {
      v49 = &v125[16 * v44 + 32];
      v50 = *v49;
      v51 = *(v49 + 1);
      if (*(v41 + 16) && (v52 = MEMORY[0x25F8CCB10](*(v41 + 40), v50, 4), v53 = -1 << *(v41 + 32), v54 = v52 & ~v53, ((*(v45 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
      {
        v55 = ~v53;
        while (*(*(v41 + 48) + 4 * v54) != v50)
        {
          v54 = (v54 + 1) & v55;
          if (((*(v45 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
LABEL_56:
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v43;
        if ((v56 & 1) == 0)
        {
          sub_25ECC50B8(0, *(v43 + 16) + 1, 1);
          v42 = v129;
          v43 = v135;
        }

        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_25ECC50B8((v46 > 1), v47 + 1, 1);
          v42 = v129;
          v43 = v135;
        }

        *(v43 + 16) = v47 + 1;
        v48 = v43 + 16 * v47;
        *(v48 + 32) = v50;
        *(v48 + 40) = v51;
      }

      if (++v44 == v42)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_135;
  }

LABEL_58:
  v57 = *(v43 + 16);
  if (v57)
  {
    v135 = MEMORY[0x277D84F90];
    sub_25ECC5078(0, v57, 0);
    v58 = v135;
    v59 = *(v135 + 16);
    v60 = 32;
    do
    {
      v61 = *(v43 + v60);
      v135 = v58;
      v62 = *(v58 + 24);
      if (v59 >= v62 >> 1)
      {
        sub_25ECC5078((v62 > 1), v59 + 1, 1);
        v58 = v135;
      }

      *(v58 + 16) = v59 + 1;
      *(v58 + 4 * v59 + 32) = v61;
      v60 += 16;
      ++v59;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v63 = sub_25ECC6698(v58);

  v126[7] = v63;
  v64 = v133;
  if (!v126[6])
  {
    goto LABEL_148;
  }

  v135 = v126[6];

  v65 = Graph.GraphTrigger.triggerIDs()();

  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = 0;
    v68 = v65 + 32;
    v69 = v41 + 56;
    v70 = MEMORY[0x277D84F90];
    while (v67 < *(v65 + 16))
    {
      v73 = *(v68 + 4 * v67);
      if (*(v41 + 16) && (v74 = MEMORY[0x25F8CCB10](*(v41 + 40), *(v68 + 4 * v67), 4), v75 = -1 << *(v41 + 32), v76 = v74 & ~v75, ((*(v69 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) != 0))
      {
        v77 = ~v75;
        while (*(*(v41 + 48) + 4 * v76) != v73)
        {
          v76 = (v76 + 1) & v77;
          if (((*(v69 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
LABEL_78:
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v70;
        if ((v78 & 1) == 0)
        {
          sub_25ECC5078(0, *(v70 + 16) + 1, 1);
          v70 = v135;
        }

        v72 = *(v70 + 16);
        v71 = *(v70 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_25ECC5078((v71 > 1), v72 + 1, 1);
          v70 = v135;
        }

        *(v70 + 16) = v72 + 1;
        *(v70 + 4 * v72 + 32) = v73;
      }

      if (++v67 == v66)
      {

        v64 = v133;
        v79 = *(v70 + 16);
        if (v79)
        {
          goto LABEL_83;
        }

        goto LABEL_85;
      }
    }

    goto LABEL_139;
  }

  v70 = MEMORY[0x277D84F90];
  v79 = *(MEMORY[0x277D84F90] + 16);
  if (v79)
  {
LABEL_83:
    v80 = (v70 + 32);
    do
    {
      v81 = *v80++;
      sub_25ECCCC68(&v135, v81);
      --v79;
    }

    while (v79);
  }

LABEL_85:

  v82 = *(v64 + 2);
  if (v82)
  {
    v83 = v64 + 32;
    v84 = MEMORY[0x277D84F90];
    v85 = 0;
    while (v85 < *(v133 + 2))
    {
      v130 = *&v83[16 * v85];
      v86 = v85 + 1;
      v87 = swift_getObjectType();
      v88 = *(*(&v130 + 1) + 24);
      swift_unknownObjectRetain();
      v88(&v134, v87, *(&v130 + 1));
      if (v134)
      {
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v84;
        if ((v89 & 1) == 0)
        {
          sub_25ECC5098(0, v84[2] + 1, 1);
          v84 = v135;
        }

        v90 = v130;
        v92 = v84[2];
        v91 = v84[3];
        if (v92 >= v91 >> 1)
        {
          sub_25ECC5098((v91 > 1), v92 + 1, 1);
          v90 = v130;
          v84 = v135;
        }

        v84[2] = v92 + 1;
        *&v84[2 * v92 + 4] = v90;
        if (v82 - 1 == v85)
        {
          goto LABEL_98;
        }

        ++v85;
      }

      else
      {
        swift_unknownObjectRelease();
        ++v85;
        if (v82 == v86)
        {
          goto LABEL_98;
        }
      }
    }

    goto LABEL_140;
  }

  v84 = MEMORY[0x277D84F90];
LABEL_98:
  v93 = v84[2];
  if (v93)
  {
    v94 = 0;
    v95 = v84 + 5;
    v96 = MEMORY[0x277D84F90];
    while (v94 < v84[2])
    {
      v97 = *v95;
      v98 = swift_getObjectType();
      v99 = *(v97 + 16);
      swift_unknownObjectRetain();
      v99(&v135, v98, v97);
      swift_unknownObjectRelease();
      v100 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_25ECC480C(0, *(v96 + 2) + 1, 1, v96);
      }

      v102 = *(v96 + 2);
      v101 = *(v96 + 3);
      if (v102 >= v101 >> 1)
      {
        v96 = sub_25ECC480C((v101 > 1), v102 + 1, 1, v96);
      }

      ++v94;
      *(v96 + 2) = v102 + 1;
      *&v96[4 * v102 + 32] = v100;
      v95 += 2;
      if (v93 == v94)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_141;
  }

  v96 = MEMORY[0x277D84F90];
LABEL_108:

  v103 = sub_25ECC6698(v96);

  v126[8] = v103;
  v104 = *(v133 + 2);
  if (v104)
  {
    v105 = MEMORY[0x277D84F90];
    v106 = 0;
    while (v106 < *(v133 + 2))
    {
      v131 = *&v133[16 * v106 + 32];
      v107 = v106 + 1;
      v108 = swift_getObjectType();
      v109 = *(*(&v131 + 1) + 24);
      swift_unknownObjectRetain();
      v109(&v134, v108, *(&v131 + 1));
      if (v134)
      {
        swift_unknownObjectRelease();
        ++v106;
        if (v104 == v107)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v105;
        if ((v110 & 1) == 0)
        {
          sub_25ECC5098(0, v105[2] + 1, 1);
          v105 = v135;
        }

        v111 = v131;
        v113 = v105[2];
        v112 = v105[3];
        if (v113 >= v112 >> 1)
        {
          sub_25ECC5098((v112 > 1), v113 + 1, 1);
          v111 = v131;
          v105 = v135;
        }

        v105[2] = v113 + 1;
        *&v105[2 * v113 + 4] = v111;
        if (v104 - 1 == v106)
        {
          goto LABEL_121;
        }

        ++v106;
      }
    }

    goto LABEL_142;
  }

  v105 = MEMORY[0x277D84F90];
LABEL_121:
  v114 = v105[2];
  if (v114)
  {
    v115 = 0;
    v116 = v105 + 5;
    v117 = MEMORY[0x277D84F90];
    while (v115 < v105[2])
    {
      v118 = *v116;
      v119 = swift_getObjectType();
      v120 = *(v118 + 16);
      swift_unknownObjectRetain();
      v120(&v135, v119, v118);
      swift_unknownObjectRelease();
      v121 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_25ECC480C(0, *(v117 + 2) + 1, 1, v117);
      }

      v123 = *(v117 + 2);
      v122 = *(v117 + 3);
      if (v123 >= v122 >> 1)
      {
        v117 = sub_25ECC480C((v122 > 1), v123 + 1, 1, v117);
      }

      ++v115;
      *(v117 + 2) = v123 + 1;
      *&v117[4 * v123 + 32] = v121;
      v116 += 2;
      if (v114 == v115)
      {
        goto LABEL_131;
      }
    }

    goto LABEL_143;
  }

  v117 = MEMORY[0x277D84F90];
LABEL_131:

  v124 = sub_25ECC6698(v117);

  v126[9] = v124;
}

uint64_t sub_25ECC376C(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 8);
  v72 = *(v3 + 16);
  if (!v72)
  {
    v11 = 0x800000025ECD5E60;
    v12 = 0xD000000000000010;
    goto LABEL_9;
  }

  v68 = a1;

  v5 = sub_25ECC6720(v4);

  v6 = sub_25ECC50F8(v5, &qword_27FD3A4F0, &qword_25ECD33F8);
  v7 = v2;

  if (v6[2])
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_25ECD2910();

    v82 = 0xD00000000000001BLL;
    v83 = 0x800000025ECD5DE0;
    v8 = v6[2];
    if (v8)
    {
      v9 = sub_25ECCC7C0(v6[2], 0);
      v10 = sub_25ECCECD0();

      a1 = sub_25ECC69D8(v79);
      if (v10 != v8)
      {
        __break(1u);
LABEL_7:
        v11 = 0x800000025ECD5DC0;
        v12 = 0xD000000000000018;
LABEL_9:
        *a1 = v12;
        *(a1 + 8) = v11;
        *(a1 + 16) = 1;
        v79 = v12;
        v80 = v11;
        LOBYTE(v81) = 1;
LABEL_36:
        sub_25ECC61E8();
        return swift_willThrowTypedImpl();
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v79 = v9;
    sub_25ECC5278(&v79);
    if (v2)
    {
      goto LABEL_56;
    }

    v46 = v79;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
    v48 = MEMORY[0x25F8CC810](v46, v47);
    v50 = v49;

    MEMORY[0x25F8CC7D0](v48, v50);

    v51 = v82;
    v52 = v83;
    *v68 = v82;
    *(v68 + 8) = v52;
    *(v68 + 16) = 1;
    v79 = v51;
    v80 = v52;
    LOBYTE(v81) = 1;
    goto LABEL_36;
  }

  v13 = 0;
  v71 = v3 + 32;
  v69 = v3;
  while (1)
  {
    if (v13 >= *(v3 + 16))
    {
      goto LABEL_52;
    }

    v76 = v7;
    v73 = v13;
    v14 = (v71 + 56 * v13);
    v70 = *v14;
    v15 = *(v14 + 3);
    v16 = *(v14 + 5);
    v2 = *(v14 + 6);
    v17 = MEMORY[0x277D84F98];
    v78 = v15;
    v79 = MEMORY[0x277D84F98];
    v84 = *(v15 + 16);
    v74 = v16;
    v75 = v2;
    if (v84)
    {

      sub_25ECC623C(v16, v2);
      v18 = v17;
      v19 = 0;
      v20 = (v15 + 40);
      while (v19 < *(v15 + 16))
      {
        v22 = *(v20 - 2);
        v23 = *v20;
        v25 = sub_25ECCDC00(v22);
        v26 = *(v18 + 2);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_50;
        }

        v29 = v24;
        if (*(v18 + 3) < v28)
        {
          sub_25ECD065C(v28, 1);
          v18 = v79;
          v30 = sub_25ECCDC00(v22);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_55;
          }

          v25 = v30;
        }

        if (v29)
        {
          v32 = *(v18 + 7);
          v33 = *(v32 + 8 * v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + 8 * v25) = v33;
          v77 = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = sub_25ECC4A1C(0, *(v33 + 2) + 1, 1, v33);
            *(v32 + 8 * v25) = v33;
          }

          v36 = *(v33 + 2);
          v35 = *(v33 + 3);
          if (v36 >= v35 >> 1)
          {
            v33 = sub_25ECC4A1C((v35 > 1), v36 + 1, 1, v33);
            *(v77 + 8 * v25) = v33;
          }

          *(v33 + 2) = v36 + 1;
          v21 = &v33[16 * v36];
          *(v21 + 8) = v22;
          *(v21 + 5) = v23;
          v15 = v78;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B8, &unk_25ECD4010);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_25ECD2FD0;
          *(v37 + 32) = v22;
          *(v37 + 40) = v23;
          *&v18[8 * (v25 >> 6) + 64] |= 1 << v25;
          *(*(v18 + 6) + 4 * v25) = v22;
          *(*(v18 + 7) + 8 * v25) = v37;
          v38 = *(v18 + 2);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_51;
          }

          *(v18 + 2) = v40;
        }

        v19 = (v19 + 1);
        v20 += 2;
        if (v84 == v19)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_25ECC623C(v16, v2);
    v18 = v17;
LABEL_29:
    v2 = v76;
    v41 = sub_25ECC50F8(v18, &qword_27FD3A4E8, &qword_25ECD33F0);

    if (v41[2])
    {
      v80 = 0xE000000000000000;
      sub_25ECD2910();

      v82 = 0xD000000000000024;
      v83 = 0x800000025ECD5E00;
      v79 = v70;
      v53 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v53);

      MEMORY[0x25F8CC7D0](8250, 0xE200000000000000);
      v84 = v41;
      v54 = v41[2];
      if (v54)
      {
        v55 = sub_25ECCC7C0(v41[2], 0);
        v56 = sub_25ECCECD0();
        v2 = v79;

        sub_25ECC69D8(v79);
        if (v56 == v54)
        {
          goto LABEL_44;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v55 = MEMORY[0x277D84F90];
LABEL_44:
      v79 = v55;
      v2 = v76;
      sub_25ECC5278(&v79);
      if (v76)
      {
        goto LABEL_56;
      }

LABEL_48:

      v61 = v79;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
      v63 = MEMORY[0x25F8CC810](v61, v62);
      v65 = v64;

      MEMORY[0x25F8CC7D0](v63, v65);

      v66 = v82;
      v67 = v83;
      *v68 = v82;
      *(v68 + 8) = v67;
      *(v68 + 16) = 1;
      v79 = v66;
      v80 = v67;
      LOBYTE(v81) = 1;
      sub_25ECC61E8();
      swift_willThrowTypedImpl();

      return sub_25ECC61D8(v74, v75);
    }

    v43 = sub_25ECC69E0(v42);

    v44 = sub_25ECC50F8(v43, &qword_27FD3A4E0, &qword_25ECD40C0);
    v7 = v76;

    if (v44[2])
    {
      break;
    }

    v13 = v73 + 1;

    result = sub_25ECC61D8(v74, v75);
    v3 = v69;
    if (v73 + 1 == v72)
    {
      return result;
    }
  }

  v80 = 0xE000000000000000;
  sub_25ECD2910();

  v82 = 0xD000000000000025;
  v83 = 0x800000025ECD5E30;
  v79 = v70;
  v57 = sub_25ECD29F0();
  MEMORY[0x25F8CC7D0](v57);

  MEMORY[0x25F8CC7D0](8250, 0xE200000000000000);
  v58 = v44[2];
  if (!v58)
  {
    v59 = MEMORY[0x277D84F90];
LABEL_47:
    v79 = v59;
    v2 = v76;
    sub_25ECC5278(&v79);
    if (v76)
    {
      goto LABEL_56;
    }

    goto LABEL_48;
  }

  v59 = sub_25ECCC7C0(v44[2], 0);
  v60 = sub_25ECCECD0();
  v2 = v79;

  sub_25ECC69D8(v79);
  if (v60 == v58)
  {
    goto LABEL_47;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
  sub_25ECD2A30();
  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}

uint64_t _s14PolarisRuntime5GraphV3key_8onSubmit0E8TeardownAcA3KeyOys6UInt32VG_SayAA0C9Component_pGyXEyAA0C6ConfigVzcSgAPtAC5ErrorOYKcfC@<X0>(int *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = *a1;
  *(&v66 + 1) = MEMORY[0x277D84FA0];
  *&v67 = MEMORY[0x277D84FA0];
  *(&v67 + 1) = MEMORY[0x277D84FA0];
  *&v68 = MEMORY[0x277D84F90];
  *(&v68 + 1) = MEMORY[0x277D84F90];
  LODWORD(v63) = v14;
  *(&v64 + 1) = a4;
  *&v65 = a5;
  *(&v65 + 1) = a6;
  *&v66 = 0;
  *(&v63 + 1) = MEMORY[0x277D84F90];
  *&v64 = a3;
  sub_25ECC623C(a3, a4);
  v15 = sub_25ECC623C(v10, v9);
  result = a2(v15);
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v35 = v10;
    v36 = v9;
    v37 = v12;
    v38 = a7;
    v39 = v11;
    v19 = 0;
    v20 = result + 32;
    v21 = &unk_27FD3A388;
    v22 = &type metadata for Task;
    v69 = result;
    while (v19 < *(v17 + 16))
    {
      sub_25ECC60E4(v20, &v51);
      sub_25ECC60E4(&v51, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, &qword_25ECD2FE0);
      if (swift_dynamicCast())
      {
        v25 = *(&v59 + 1);
        v26 = v18;
        v27 = v22;
        v28 = v21;
        v29 = v60;

        v30 = v29;
        v21 = v28;
        v22 = v27;
        v18 = v26;
        v17 = v69;
        sub_25ECC61D8(v25, v30);
        if (!v66)
        {

          *v38 = 0xD000000000000032;
          *(v38 + 8) = 0x800000025ECD5D80;
          *(v38 + 16) = 1;
          *&v43 = 0xD000000000000032;
          *(&v43 + 1) = 0x800000025ECD5D80;
          LOBYTE(v44) = 1;
          sub_25ECC61E8();
          swift_willThrowTypedImpl();
          sub_25ECC61D8(v35, v36);
          sub_25ECC61D8(v37, v39);
          v59 = v65;
          v60 = v66;
          v61 = v67;
          v62 = v68;
          v57 = v63;
          v58 = v64;
          sub_25ECC60B4(&v57);
          return __swift_destroy_boxed_opaque_existential_1(&v51);
        }
      }

      ++v19;
      v23 = *(&v52 + 1);
      v24 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      (*(v24 + 8))(&v63, v23, v24);
      result = __swift_destroy_boxed_opaque_existential_1(&v51);
      v20 += 40;
      if (v18 == v19)
      {

        a7 = v38;
        v11 = v39;
        v9 = v36;
        v12 = v37;
        v10 = v35;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    sub_25ECC2AE0();
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v57 = v63;
    v58 = v64;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    sub_25ECC607C(&v57, &v43);
    sub_25ECC376C(&v49);
    if (v41)
    {
      sub_25ECC61D8(v10, v9);
      sub_25ECC61D8(v12, v11);
      v42[2] = v53;
      v42[3] = v54;
      v42[4] = v55;
      v42[5] = v56;
      v42[0] = v51;
      v42[1] = v52;
      sub_25ECC60B4(v42);
      v45 = v65;
      v46 = v66;
      v47 = v67;
      v48 = v68;
      v43 = v63;
      v44 = v64;
      result = sub_25ECC60B4(&v43);
      v31 = v50;
      *a7 = v49;
      *(a7 + 16) = v31;
    }

    else
    {
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v43 = v51;
      v44 = v52;
      sub_25ECC60B4(&v43);
      sub_25ECC61D8(v10, v9);
      result = sub_25ECC61D8(v12, v11);
      v32 = v66;
      a8[2] = v65;
      a8[3] = v32;
      v33 = v68;
      a8[4] = v67;
      a8[5] = v33;
      v34 = v64;
      *a8 = v63;
      a8[1] = v34;
    }
  }

  return result;
}

uint64_t Graph.hashValue.getter()
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC4484()
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC4518(uint64_t a1)
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t Task.apply(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v14 = *(v1 + 1);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(a1 + 8);

  sub_25ECC623C(v7, v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25ECC4C24(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_25ECC4C24((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 56 * v12;
  *(v13 + 32) = v3;
  *(v13 + 40) = v14;
  *(v13 + 48) = v4;
  *(v13 + 56) = v5;
  *(v13 + 64) = v6;
  *(v13 + 72) = v7;
  *(v13 + 80) = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_25ECC4680(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v14 = *(v1 + 1);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(a1 + 8);

  sub_25ECC623C(v7, v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25ECC4C24(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_25ECC4C24((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 56 * v12;
  *(v13 + 32) = v3;
  *(v13 + 40) = v14;
  *(v13 + 48) = v4;
  *(v13 + 56) = v5;
  *(v13 + 64) = v6;
  *(v13 + 72) = v7;
  *(v13 + 80) = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t Graph.TriggerGroup<>.apply(_:)(uint64_t a1)
{
  v3 = *v1;

  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_25ECC47C8(uint64_t a1)
{
  v3 = *v1;

  *(a1 + 48) = v3;
  return result;
}

char *sub_25ECC480C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4F8, &unk_25ECD3400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25ECC4910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B0, &qword_25ECD33D0);
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

char *sub_25ECC4A1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B8, &unk_25ECD4010);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25ECC4B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4A0, &qword_25ECD33C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25ECC4C24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D0, &qword_25ECD33E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25ECC4D4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4C8, &qword_25ECD33E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_25ECC4E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4C0, &qword_25ECD33D8);
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

char *sub_25ECC4F74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4A8, &qword_25ECD33C8);
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

char *sub_25ECC5078(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25ECCC850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ECC5098(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25ECCC954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ECC50B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25ECCCA60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ECC50D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25ECCCB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t *sub_25ECC50F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_25ECC5AEC(v10, v8, v6, a2, a3);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_25ECC5BE4(v12, v8, v6, a2, a3);
  result = MEMORY[0x25F8CCEE0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_25ECC5278(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25ECCE880(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25ECD29E0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
      v7 = sub_25ECD27E0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25ECC53BC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25ECC53BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_25ECCE3CC(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_25ECC58F8((*a3 + 4 * *v79), (*a3 + 4 * *v81), (*a3 + 4 * v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 4 * v8);
      v12 = *(*a3 + 4 * v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + 4 * v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + 4 * v18);
            *(v21 + 4 * v18) = *(v21 + 4 * v17);
            *(v21 + 4 * v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25ECC4B20(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_25ECC4B20((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_25ECC58F8((*a3 + 4 * v74), (*a3 + 4 * *&v9[16 * v35 + 32]), (*a3 + 4 * v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25ECCE3CC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_25ECCE340(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v8 - 4;
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + 4 * v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v8;
      v23 += 4;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_25ECC58F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

unint64_t *sub_25ECC5AEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v15 = v14 | (v9 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v15) + 16) >= 2uLL)
    {
      *(result + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        return sub_25ECC5C74(result, a2, v8, a3, a4, a5);
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_25ECC5C74(result, a2, v8, a3, a4, a5);
    }

    v17 = *(a3 + 64 + 8 * v9);
    ++v16;
    if (v17)
    {
      v12 = (v17 - 1) & v17;
      v15 = __clz(__rbit64(v17)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_25ECC5BE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_25ECC5AEC(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_25ECC5C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_25ECD29D0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v30 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(*(v6 + 48) + 4 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    sub_25ECD2AA0();
    MEMORY[0x25F8CCB30](0);
    sub_25ECD2AC0();
    result = sub_25ECD2AE0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v11 + 48) + 4 * v24) = v19;
    *(*(v11 + 56) + 8 * v24) = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v30;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s14PolarisRuntime5GraphV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_25ECC6CE0(*a2, a2[1]);
    sub_25ECC6CE0(v3, v2);
    sub_25ECC6CE8(v3, v2);
    sub_25ECC6CE8(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_25ECD2A10();
    sub_25ECC6CE0(v5, v4);
    sub_25ECC6CE0(v3, v2);
    sub_25ECC6CE8(v3, v2);
    sub_25ECC6CE8(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_25ECC6CE0(v6, v7);
  sub_25ECC6CE0(v3, v2);
  sub_25ECC6CE8(v3, v2);
  sub_25ECC6CE8(v3, v2);
  return 1;
}

uint64_t sub_25ECC60E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25ECC61D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25ECC61E8()
{
  result = qword_27FD3A390;
  if (!qword_27FD3A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A390);
  }

  return result;
}

uint64_t sub_25ECC623C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25ECC626C()
{
  result = qword_27FD3A398[0];
  if (!qword_27FD3A398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD3A398);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime11GraphConfigVIegl_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25ECC62F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25ECC633C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25ECC63C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_25ECC640C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for Graph.ResourceTrigger(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Graph.ResourceTrigger(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_25ECC64E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25ECC6574(uint64_t *a1, int a2)
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

uint64_t sub_25ECC65C0(uint64_t result, int a2, int a3)
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

uint64_t sub_25ECC6624(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8CC8F0](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25ECCCD6C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25ECC6698(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
  v4 = sub_25ECC6C34();
  result = MEMORY[0x25F8CC8F0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      sub_25ECCCC68(&v8, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void *sub_25ECC6720(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 80);
  while (1)
  {
    v5 = v2;
    v6 = *(v3 - 4);
    v42 = v3;
    v43 = *(v3 - 5);
    v7 = *(v3 - 3);
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    v44 = *(v3 - 12);
    v46 = sub_25ECCDC00(v44);
    v12 = v1[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v11;
    v40 = v5;
    v38 = v1;
    v16 = v1[3];

    v39 = v8;

    v41 = v10;
    sub_25ECC623C(v9, v10);
    v17 = v7;
    v18 = v6;
    if (v16 >= v14)
    {
      v23 = v40;
      v19 = v44;
      v1 = v38;
      v24 = v39;
      v22 = v46;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_25ECD0670(v14, 1);
      v1 = v48;
      v19 = v44;
      v20 = sub_25ECCDC00(v44);
      if ((v15 & 1) != (v21 & 1))
      {
        goto LABEL_19;
      }

      v22 = v20;
      v23 = v40;
      v24 = v39;
      if (v15)
      {
LABEL_12:
        v45 = v18;
        v29 = v17;
        v30 = v1[7];
        v31 = *(v30 + 8 * v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v30 + 8 * v22) = v31;
        v47 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_25ECC4C24(0, *(v31 + 2) + 1, 1, v31);
          *(v30 + 8 * v22) = v31;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        v35 = v41;
        if (v34 >= v33 >> 1)
        {
          v36 = sub_25ECC4C24((v33 > 1), v34 + 1, 1, v31);
          v35 = v41;
          v31 = v36;
          *(v30 + 8 * v47) = v36;
        }

        *(v31 + 2) = v34 + 1;
        v4 = &v31[56 * v34];
        *(v4 + 8) = v19;
        *(v4 + 5) = v43;
        *(v4 + 6) = v45;
        *(v4 + 7) = v29;
        *(v4 + 8) = v24;
        *(v4 + 9) = v9;
        *(v4 + 10) = v35;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D0, &qword_25ECD33E8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25ECD2FD0;
    *(v25 + 32) = v19;
    *(v25 + 40) = v43;
    *(v25 + 48) = v18;
    *(v25 + 56) = v17;
    *(v25 + 64) = v24;
    *(v25 + 72) = v9;
    *(v25 + 80) = v41;
    v1[(v22 >> 6) + 8] |= 1 << v22;
    *(v1[6] + 4 * v22) = v19;
    *(v1[7] + 8 * v22) = v25;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_18;
    }

    v1[2] = v28;
LABEL_4:
    v3 = v42 + 7;
    v2 = v23 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
  result = sub_25ECD2A30();
  __break(1u);
  return result;
}

void *sub_25ECC69E0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v25 = *i;
    ObjectType = swift_getObjectType();
    v5 = *(*(&v25 + 1) + 16);
    swift_unknownObjectRetain_n();
    v5(&v26, ObjectType, *(&v25 + 1));
    swift_unknownObjectRelease();
    v6 = v26;
    v8 = sub_25ECCDC00(v26);
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_25ECD0648(v11, 1);
      v1 = v27;
      v13 = sub_25ECCDC00(v6);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

      v8 = v13;
    }

    if (v12)
    {
      v15 = v1[7];
      v16 = *(v15 + 8 * v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v8) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_25ECC4910(0, *(v16 + 2) + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_25ECC4910((v18 > 1), v19 + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      *(v16 + 2) = v19 + 1;
      *&v16[16 * v19 + 32] = v25;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B0, &qword_25ECD33D0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_25ECD2FD0;
      *(v20 + 32) = v25;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      *(v1[6] + 4 * v8) = v6;
      *(v1[7] + 8 * v8) = v20;
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v1[2] = v23;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
  result = sub_25ECD2A30();
  __break(1u);
  return result;
}

unint64_t sub_25ECC6C34()
{
  result = qword_27FD3A500;
  if (!qword_27FD3A500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD3A4D8, &qword_25ECD4020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A500);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_DWORD *RemoteGraph.init(key:externalInputResources:sharedOutputResources:localOutputResources:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t RemoteGraph.hashValue.getter()
{
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

unint64_t sub_25ECC6DE4()
{
  result = qword_27FD3A508[0];
  if (!qword_27FD3A508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD3A508);
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

uint64_t sub_25ECC6E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25ECC6E8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t Key.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
}

uint64_t Key.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  (*(v2 + 32))(v5, v7, v1);
  v9 = sub_25ECD29F0();
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t static Key.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Key(255, a3, a4, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v12 = &v18 - v11;
  v13 = *(v10 + 56);
  v14 = *(*(v8 - 8) + 16);
  v14(&v18 - v11, a1, v8);
  v14(&v12[v13], a2, v8);
  v15 = sub_25ECD2740();
  v16 = *(*(a3 - 8) + 8);
  v16(&v12[v13], a3);
  v16(v12, a3);
  return v15 & 1;
}

uint64_t Key.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v2, a2);
  MEMORY[0x25F8CCB30](0);
  v7 = *(a2 + 16);
  sub_25ECD2730();
  return (*(*(v7 - 8) + 8))(v5, v7);
}

uint64_t Key.hashValue.getter(uint64_t a1)
{
  sub_25ECD2AA0();
  Key.hash(into:)(v3, a1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC7520(uint64_t a1, uint64_t a2)
{
  sub_25ECD2AA0();
  Key.hash(into:)(v4, a2);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC759C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void ResourceSample.publishedTime.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ResourceSample.publishedTime.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

id ResourceSample.sample.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_25ECC7724(v2, v3, v4);
}

id sub_25ECC7724(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void ResourceSample.sample.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_25ECC7778(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
}

void sub_25ECC7778(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

void ResourceSample.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
}

__n128 ResourceSample.init(sample:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  a2->n128_u64[0] = 0;
  a2->n128_u8[8] = 1;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u8[0] = v2;
  return result;
}

uint64_t ResourceSample.flatMemory()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t ResourceSample.readFlatMemory<A>(as:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    v5 = sub_25ECD2950();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = 0;
    v6 = a2;
  }

  return MEMORY[0x2821FCBD0](v5, a2, v3, v4, v6);
}

void *ResourceSample.writeFlatMemory<A>(_:)(void *__src, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v3 = *(*(a2 - 8) + 64);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memcpy(*(v2 + 16), __src, v3);
    }
  }

  return __src;
}

unint64_t Resource.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 40 * result;
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v7 = *(v4 + 56);
      *a2 = *(v4 + 32);
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      v8 = *(v4 + 64);
      *(a2 + 32) = v8;
      return sub_25ECC7724(v6, v7, v8);
    }
  }

  __break(1u);
  return result;
}

void *sub_25ECC7910@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 40 * v3;
      v6 = *(v5 + 40);
      v7 = *(v5 + 48);
      v8 = *(v5 + 56);
      *a3 = *(v5 + 32);
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      *(a3 + 24) = v8;
      v9 = *(v5 + 64);
      *(a3 + 32) = v9;
      return sub_25ECC7724(v7, v8, v9);
    }
  }

  __break(1u);
  return result;
}

void sub_25ECC795C(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *(a2 + 8);
  sub_25ECC7724(v7, v8, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = sub_25ECC852C(v10);
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 2))
  {
    v11 = &v10[40 * v4];
    v12 = *(v11 + 6);
    v13 = *(v11 + 7);
    *(v11 + 4) = v5;
    v11[40] = v6;
    *(v11 + 6) = v7;
    *(v11 + 7) = v8;
    v14 = v11[64];
    v11[64] = v9;
    sub_25ECC7778(v12, v13, v14);
    *(a2 + 8) = v10;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*Resource.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_25ECC7A94(v4, a2);
  return sub_25ECC88A8;
}

uint64_t sub_25ECC7A94(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25ECC852C(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_25ECC7B28;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25ECC7B34(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25ECC8540(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    return sub_25ECC889C;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Resource.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(v2 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = sub_25ECC852C(v9);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v9 + 2) > a2)
  {
    v10 = &v9[40 * a2];
    v11 = *(v10 + 6);
    v12 = *(v10 + 7);
    *(v10 + 4) = v4;
    v10[40] = v5;
    *(v10 + 6) = v6;
    *(v10 + 7) = v7;
    v13 = v10[64];
    v10[64] = v8;
    sub_25ECC7778(v11, v12, v13);
    *(v2 + 8) = v9;
    return;
  }

LABEL_7:
  __break(1u);
}

PolarisRuntime::Resource __swiftcall Resource.init(count:)(Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    if (count)
    {
      v4 = sub_25ECD27E0();
      *(v4 + 16) = count;
      v5 = (v4 + 64);
      v6 = count;
      do
      {
        v7 = *(v5 - 2);
        v8 = *(v5 - 1);
        *(v5 - 4) = 0;
        *(v5 - 24) = 1;
        *(v5 - 2) = 0;
        *(v5 - 1) = 0;
        v9 = *v5;
        *v5 = 2;
        v5 += 40;
        sub_25ECC7778(v7, v8, v9);
        --v6;
      }

      while (v6);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    *(v4 + 16) = count;
    *v3 = count;
    v3[1] = v4;
  }

  result.samples._rawValue = v10;
  result.count = count;
  return result;
}

unint64_t ResourceArray.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 8);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 16 * result;
      v5 = *(v4 + 40);
      *a2 = *(v4 + 32);
      a2[1] = v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25ECC7D68@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 8);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 16 * v3;
      v6 = *(v5 + 40);
      *a3 = *(v5 + 32);
      a3[1] = v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25ECC7D98(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a2 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25ECC8540(v7);
  v7 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v7 + 16))
  {
    v9 = v7 + 16 * v4;
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;

    *(a2 + 8) = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*ResourceArray.subscript.modify(uint64_t ***a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_25ECC7B34(v4, a2);
  return sub_25ECC7EA0;
}

void sub_25ECC7EA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ResourceArray.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25ECC8540(v6);
  v6 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a2)
  {
    v8 = v6 + 16 * a2;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;

    *(v2 + 8) = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

PolarisRuntime::ResourceArray __swiftcall ResourceArray.init(count:)(Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = count;
    v3 = v1;
    v4 = MEMORY[0x277D84F90];
    if (count)
    {
      v5 = sub_25ECD27E0();
      *(v5 + 16) = v2;
      v6 = (v5 + 40);
      v7 = v2;
      do
      {
        *(v4 + 16) = 0;
        *(v6 - 1) = 0;
        *v6 = v4;

        v6 += 2;
        --v7;
      }

      while (v7);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    *(v5 + 16) = v2;
    *v3 = v2;
    v3[1] = v5;
  }

  result.resources._rawValue = v8;
  result.count = count;
  return result;
}

PolarisRuntime::ResourceArray __swiftcall ResourceArray.init(resources:)(Swift::OpaquePointer resources)
{
  v1->_rawValue = *(resources._rawValue + 16);
  v1[1]._rawValue = resources._rawValue;
  result.count = resources._rawValue;
  return result;
}

uint64_t ResourceArray.resources.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void ResourceArray.description.getter()
{
  v2 = *v0;
  v1 = v0[1];

  sub_25ECD2910();

  v25 = v2;
  v3 = sub_25ECD29F0();
  MEMORY[0x25F8CC7D0](v3);

  MEMORY[0x25F8CC7D0](670249, 0xE300000000000000);
  v31 = 0xD000000000000015;
  v32 = 0x800000025ECD5EF0;
  v29 = 0;
  v30 = 0;
  v28 = v1;
  sub_25ECC84D4(&v25);
  v4 = v27;
  if (v27)
  {
    while (1)
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_25ECD2910();

      v25 = 0x72756F7365522020;
      v26 = 0xEB00000000206563;
      v5 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v5);

      MEMORY[0x25F8CC7D0](0x3A746E756F632820, 0xE900000000000020);
      v6 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v6);

      MEMORY[0x25F8CC7D0](670249, 0xE300000000000000);
      MEMORY[0x25F8CC7D0](v25, v26);

      v24 = *(v4 + 16);
      if (v24)
      {
        break;
      }

LABEL_3:

      sub_25ECC84D4(&v25);
      v4 = v27;
      if (!v27)
      {
        goto LABEL_21;
      }
    }

    v7 = 0;
    v8 = (v4 + 64);
    while (v7 < *(v4 + 16))
    {
      v13 = v4;
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v16 = *v8;
      v17 = v16 == 2;
      v18 = *(v8 - 1) == 0;
      if (v17 && v18)
      {
        v19 = 0x64696C61766E49;
      }

      else
      {
        v19 = 0x64696C6156;
      }

      if (v17 && v18)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v25 = 0;
      v26 = 0xE000000000000000;
      sub_25ECC7724(v14, v15, v16);
      sub_25ECD2910();

      v25 = 0xD000000000000013;
      v26 = 0x800000025ECD5F10;
      v21 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v21);

      MEMORY[0x25F8CC7D0](8250, 0xE200000000000000);
      MEMORY[0x25F8CC7D0](v19, v20);

      MEMORY[0x25F8CC7D0](v25, v26);

      if (!v16)
      {
        v25 = 0x203A61746144202CLL;
        v26 = 0xE800000000000000;
        if (!v14 || (v22 = v15 - v14, v15 == v14))
        {
          v9 = MEMORY[0x277D84F90];
        }

        else
        {
          if (v22 <= 0)
          {
            goto LABEL_23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A590, &qword_25ECD35D0);
          v9 = swift_allocObject();
          v23 = _swift_stdlib_malloc_size(v9);
          v9[2] = v22;
          v9[3] = 2 * v23 - 64;
          memmove(v9 + 4, v14, v15 - v14);
        }

        sub_25ECC7724(v14, v15, 0);
        v10 = MEMORY[0x25F8CC810](v9, MEMORY[0x277D84B78]);
        v12 = v11;

        MEMORY[0x25F8CC7D0](v10, v12);

        MEMORY[0x25F8CC7D0](v25, v26);
      }

      ++v7;
      MEMORY[0x25F8CC7D0](10, 0xE100000000000000);
      sub_25ECC7778(v14, v15, v16);
      v8 += 40;
      v4 = v13;
      if (v24 == v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:
  }
}

void sub_25ECC84D4(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v1[1] = v2 + 1;
    v7 = v1[2];
    if (!__OFADD__(v7, 1))
    {
      v1[2] = v7 + 1;
      *a1 = v7;
      a1[1] = v6;
      a1[2] = v5;

      return;
    }
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for Timestamp(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Timestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime14ResourceSampleV0D0O(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25ECC860C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ECC8654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25ECC86AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ECC86F4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25ECC8738(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25ECC8780(uint64_t a1, int a2)
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

uint64_t sub_25ECC87CC(uint64_t result, int a2, int a3)
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

uint64_t sub_25ECC882C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25ECD29A0();
  }

  return sub_25ECD2940();
}

_DWORD *Input.init(key:capacity:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Input.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return MEMORY[0x25F8CCB30](v1);
}

uint64_t Input.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC89A0()
{
  v1 = *(v0 + 8);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC8A0C()
{
  v1 = *(v0 + 8);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return MEMORY[0x25F8CCB30](v1);
}

uint64_t sub_25ECC8A58(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  MEMORY[0x25F8CCB30](v2);
  return sub_25ECD2AE0();
}

uint64_t Output.init(resourceStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Output.hash(into:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(&v4, ObjectType, v1);
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AC0();
}

uint64_t Output.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_25ECD2AA0();
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(&v4, ObjectType, v1);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC8BF0()
{
  v1 = *(v0 + 8);
  sub_25ECD2AA0();
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(&v4, ObjectType, v1);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC8C78()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(&v4, ObjectType, v1);
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AC0();
}

uint64_t sub_25ECC8CEC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25ECD2AA0();
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(&v5, ObjectType, v2);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

uint64_t ResourceScope.hashValue.getter()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t _s14PolarisRuntime12TaskInstanceV13TriggerReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC8E8C(uint64_t a1)
{
  v2 = *v1;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](v2);
  return sub_25ECD2AE0();
}

uint64_t ObjectStream.__allocating_init(key:scope:)(uint64_t *a1, char *a2)
{
  v4 = swift_allocObject();
  ObjectStream.init(key:scope:)(a1, a2);
  return v4;
}

uint64_t *ObjectStream.init(key:scope:)(uint64_t *result, char *a2)
{
  v3 = *v2;
  v4 = *a2;
  *(v2 + 4) = *result;
  *(v2 + 20) = v4;
  v5 = *(*(*(v3 + 80) - 8) + 64);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v5))
  {
    *(v2 + 6) = v5;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t FlatBytesStream.__allocating_init(key:scope:entrySize:)(_DWORD *a1, char *a2, int a3)
{
  result = swift_allocObject();
  v7 = *a2;
  *(result + 16) = *a1;
  *(result + 20) = v7;
  *(result + 24) = a3;
  return result;
}

uint64_t FlatBytesStream.init(key:scope:entrySize:)(_DWORD *a1, char *a2, int a3)
{
  v4 = *a2;
  *(v3 + 16) = *a1;
  *(v3 + 20) = v4;
  *(v3 + 24) = a3;
  return v3;
}

BOOL _s14PolarisRuntime6OutputV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(&v7 + 4, ObjectType, v2);
  LODWORD(v2) = HIDWORD(v7);
  v5 = swift_getObjectType();
  (*(v3 + 16))(&v7, v5, v3);
  return v2 == v7;
}

unint64_t sub_25ECC9118()
{
  result = qword_27FD3A598;
  if (!qword_27FD3A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A598);
  }

  return result;
}

unint64_t sub_25ECC9170()
{
  result = qword_27FD3A5A0;
  if (!qword_27FD3A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A5A0);
  }

  return result;
}

unint64_t sub_25ECC91C8()
{
  result = qword_27FD3A5A8[0];
  if (!qword_27FD3A5A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD3A5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Input(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Input(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25ECC9274(uint64_t *a1, int a2)
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

uint64_t sub_25ECC92BC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ResourceScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResourceScope(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Task.workload.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Task.onSubmit.getter()
{
  v1 = *(v0 + 40);
  sub_25ECC6CF8(v1, *(v0 + 48));
  return v1;
}

void *Task.init<A>(key:workload:inputs:outputs:onSubmit:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a2;
  result = swift_allocObject();
  result[2] = a7;
  result[3] = a8;
  result[4] = sub_25ECC9788;
  result[5] = v17;
  *(a9 + 8) = sub_25ECC97CC;
  *(a9 + 16) = result;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  return result;
}

uint64_t sub_25ECC96FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v10 = *a2;
  v11 = v6;
  v7 = *(a5 + 8);
  v8 = *(v7 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v8(&v11, &v10, a4, v7);
}

uint64_t sub_25ECC9794()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t Task.init<A>(key:workload:_:onSubmit:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = a5;
  v11 = a4;
  v15 = *a1;
  sub_25ECC6CF8(a4, a5);
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a2;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = sub_25ECC9788;
  v17[5] = v16;
  v30 = v15;
  v31 = sub_25ECC97CC;
  v32 = v17;
  v18 = MEMORY[0x277D84F90];
  v33.i64[0] = MEMORY[0x277D84F90];
  v33.i64[1] = MEMORY[0x277D84F90];
  v34 = v11;
  v35 = v10;
  v19 = a3();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      sub_25ECC60E4(v21, v27);
      v22 = v28;
      v23 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v23 + 8))(&v30, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v21 += 40;
      --v20;
    }

    while (v20);

    result = sub_25ECC6CF4(v11, v10);
    v15 = v30;
    v25 = v31;
    v17 = v32;
    v26 = v33;
    v11 = v34;
    v10 = v35;
  }

  else
  {

    result = sub_25ECC6CF4(v11, v10);
    v26 = vdupq_n_s64(v18);
    v25 = sub_25ECC97CC;
  }

  *a8 = v15;
  *(a8 + 8) = v25;
  *(a8 + 16) = v17;
  *(a8 + 24) = v26;
  *(a8 + 40) = v11;
  *(a8 + 48) = v10;
  return result;
}

uint64_t sub_25ECC99B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3;
    v3 += 4;
    v5 = v6;
    v7 = *v4;
    v4 += 4;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25ECC9A14(uint64_t a1, uint64_t a2)
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

  v3 = (a2 + 40);
  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v10 = *v3;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7((&v11 + 4), ObjectType, v5);
    LODWORD(v5) = HIDWORD(v11);
    v8 = swift_getObjectType();
    (*(v10 + 16))(&v11, v8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = v5 == v11;
    if (v5 != v11)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t Task.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  sub_25ECCA118(a1, v3);

  return sub_25ECCA04C(a1, v4);
}

uint64_t Task.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  sub_25ECCA118(v4, v1);
  sub_25ECCA04C(v4, v2);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC9C2C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  sub_25ECCA118(v4, v1);
  sub_25ECCA04C(v4, v2);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECC9CA4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  sub_25ECCA118(a1, v3);

  return sub_25ECCA04C(a1, v4);
}

uint64_t sub_25ECC9D14(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  sub_25ECCA118(v5, v2);
  sub_25ECCA04C(v5, v3);
  return sub_25ECD2AE0();
}

char *Input.apply(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25ECC4A1C(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_25ECC4A1C((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 8) = v3;
  *(v9 + 5) = v4;
  *(a1 + 24) = v5;
  return result;
}

char *sub_25ECC9E38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25ECC4A1C(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_25ECC4A1C((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 8) = v3;
  *(v9 + 5) = v4;
  *(a1 + 24) = v5;
  return result;
}

__n128 Output.apply(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 32);
  v8 = v3;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25ECC4910(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_25ECC4910((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  result = v8;
  *&v4[16 * v6 + 32] = v8;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_25ECC9F98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 32);
  v8 = v3;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25ECC4910(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_25ECC4910((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  result = v8;
  *&v4[16 * v6 + 32] = v8;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_25ECCA04C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8CCB30](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      swift_unknownObjectRetain();
      v8(&v9, ObjectType, v6);
      MEMORY[0x25F8CCB30](0);
      sub_25ECD2AC0();
      result = swift_unknownObjectRelease();
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25ECCA118(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8CCB30](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      MEMORY[0x25F8CCB30](0);
      sub_25ECD2AC0();
      result = MEMORY[0x25F8CCB30](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s14PolarisRuntime4TaskV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 32);
  v3 = *(a1 + 32);
  if ((sub_25ECC99B8(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  return sub_25ECC9A14(v3, v2);
}

unint64_t sub_25ECCA1F0()
{
  result = qword_27FD3A630;
  if (!qword_27FD3A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime10TaskConfigVIegl_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25ECCA278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25ECCA2C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *TaskInstance.init(triggerReason:startTime:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

void TaskInstance.startTime.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t TaskConfig.userData.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

unint64_t sub_25ECCA448()
{
  result = qword_27FD3A638;
  if (!qword_27FD3A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A638);
  }

  return result;
}

unint64_t sub_25ECCA4A0()
{
  result = qword_27FD3A640;
  if (!qword_27FD3A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A640);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime10TaskResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25ECCA50C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25ECCA560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25ECCA5BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TaskInstance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskInstance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25ECCA6C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_25ECCA720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t TaskIndex.hashValue.getter()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB50](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECCA88C()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB50](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECCA900(uint64_t a1)
{
  v2 = *v1;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB50](v2);
  return sub_25ECD2AE0();
}

unint64_t sub_25ECCA948()
{
  result = qword_27FD3A648;
  if (!qword_27FD3A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A648);
  }

  return result;
}

uint64_t ThreadSafeArray.__allocating_init()()
{
  v0 = swift_allocObject();
  ThreadSafeArray.init()();
  return v0;
}

void *ThreadSafeArray.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 16) = sub_25ECD27D0();
  type metadata accessor for PolarisMutex();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v1 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  *(v0 + 24) = v1;
  return v0;
}

Swift::Int __swiftcall ThreadSafeArray.count()()
{
  v1 = *(v0 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v1 + 16));
  swift_endAccess();

  swift_beginAccess();

  v2 = sub_25ECD2810();

  sub_25ECCB54C(v0);
  return v2;
}

uint64_t ThreadSafeArray.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = *(v2 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v8 + 16));
  swift_endAccess();

  (*(v5 + 16))(v7, a1, v4);
  swift_beginAccess();
  sub_25ECD2860();
  sub_25ECD2820();
  swift_endAccess();
  return sub_25ECCB54C(v2);
}

uint64_t ThreadSafeArray.remove(at:)@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(v3 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v6 + 16));
  swift_endAccess();

  swift_beginAccess();
  v7 = *(v5 + 80);
  sub_25ECD2860();
  swift_getWitnessTable();
  sub_25ECD2880();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD3A650, qword_25ECD3DD8);
  if (sub_25ECD28B0())
  {
    swift_beginAccess();
    sub_25ECD2830();
    swift_endAccess();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  (*(*(v7 - 8) + 56))(a2, v8, 1, v7);
  return sub_25ECCB54C(v3);
}

uint64_t ThreadSafeArray.removeFirst()()
{
  v1 = *(v0 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v1 + 16));
  swift_endAccess();

  swift_beginAccess();
  sub_25ECD2860();
  swift_getWitnessTable();
  sub_25ECD2890();
  swift_endAccess();
  return sub_25ECCB54C(v0);
}

BOOL ThreadSafeArray.removeAll(where:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v5 + 16));
  swift_endAccess();

  swift_beginAccess();

  v6 = sub_25ECD2810();

  swift_beginAccess();
  if (a1)
  {
    sub_25ECC623C(a1, a2);
    sub_25ECD2860();

    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_25ECD28A0();
    swift_endAccess();
    sub_25ECC61D8(a1, a2);
    sub_25ECC61D8(a1, a2);
  }

  else
  {
    sub_25ECD2860();
    sub_25ECD2850();
    swift_endAccess();
  }

  v7 = sub_25ECD2810();

  sub_25ECCB54C(v2);
  return v7 != v6;
}

uint64_t ThreadSafeArray.makeIterator()()
{
  v1 = *(v0 + 24);
  swift_beginAccess();

  pthread_mutex_lock((v1 + 16));
  swift_endAccess();

  swift_beginAccess();
  v2 = *(v0 + 16);

  sub_25ECCB54C(v0);
  return v2;
}

uint64_t ThreadSafeArray.lockedForEach(_:)(void (*a1)(uint64_t, char *), uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v22 - v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_25ECD28C0();
  v8 = *(v27 - 8);
  v9 = MEMORY[0x28223BE20](v27);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - v11);
  v13 = v2[3];
  swift_beginAccess();

  pthread_mutex_lock((v13 + 16));
  swift_endAccess();

  swift_beginAccess();
  v22 = v2;
  v23 = v3;
  v29[1] = v2[2];
  v14 = sub_25ECD2860();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8CC7E0](v29, v14, WitnessTable);
  v28 = v29[0];
  sub_25ECD2990();
  sub_25ECD2960();
  sub_25ECD2980();
  v16 = (v4 + 32);
  for (i = (v4 + 8); ; (*i)(v6, v20))
  {
    v18 = v26;
    sub_25ECD2970();
    (*(v8 + 32))(v12, v18, v27);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v19 = *v12;
    v20 = v23;
    (*v16)(v6, v12 + *(TupleTypeMetadata2 + 48), v23);
    v24(v19, v6);
  }

  return sub_25ECCB54C(v22);
}

uint64_t sub_25ECCB54C(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_beginAccess();

  pthread_mutex_unlock((v1 + 16));
  swift_endAccess();
}

uint64_t ThreadSafeArray.deinit()
{

  return v0;
}

uint64_t ThreadSafeArray.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *TriggerEdge.__allocating_init(localReceiver:channel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TriggerEdge.init(localReceiver:channel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

Swift::Void __swiftcall TriggerEdge.trigger(senderId:frameId:)(Swift::UInt32 senderId, Swift::UInt64 frameId)
{
  v4 = *&senderId;
  if (v2[3])
  {
    v5 = v2[4];
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, frameId, ObjectType, v5);
  }

  if (v2[2])
  {
    sub_25ECCB7C4(v4, frameId);
  }
}

uint64_t sub_25ECCB7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[5];
  if (!*(v6 + 16))
  {
    goto LABEL_19;
  }

  v7 = sub_25ECCDC78(a1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 63;
  }

  v11 = v9 - (v10 & 0xFFFFFFFFFFFFFFC0);
  if (v11 >= 0)
  {
    v12 = 1 << v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[7] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 >= -63)
    {
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = sub_25ECC8818(v13);
  if (v9 < -63)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v10 >> 6 >= *(v13 + 2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  *&v13[8 * (v10 >> 6) + 32] |= v12;
  v3[7] = v13;
  v3[3] = a2;
  swift_beginAccess();
  sub_25ECCCD6C(&v18, a1);
  swift_endAccess();
  result = swift_beginAccess();
  v16 = v3[8];
  if (v16)
  {
    v17 = v3[9];
    result = TriggerReceiver.evaluateTriggerRule()();
    if (result)
    {

      v16(a2);
      return sub_25ECC61D8(v16, v17);
    }
  }

  return result;
}

uint64_t TriggerEdge.description.getter()
{
  strcpy(v6, "TriggerEdge - ");
  HIBYTE(v6[1]) = -18;
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v1 + 84))
    {

      MEMORY[0x25F8CC7D0](0xD000000000000018, 0x800000025ECD5FE0);
    }

    else
    {

      sub_25ECD2910();

      v2 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v2);

      MEMORY[0x25F8CC7D0](0xD000000000000012, 0x800000025ECD6000);
    }
  }

  else
  {
    MEMORY[0x25F8CC7D0](0xD000000000000010, 0x800000025ECD5FA0);
  }

  if (*(v0 + 24))
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x3A6C656E6E616843;
  }

  if (*(v0 + 24))
  {
    v4 = 0x800000025ECD5FC0;
  }

  else
  {
    v4 = 0xEC0000006C696E20;
  }

  MEMORY[0x25F8CC7D0](v3, v4);

  MEMORY[0x25F8CC7D0](8236, 0xE200000000000000);

  return v6[0];
}

uint64_t TriggerEdge.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t TriggerEdge.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t TriggerSender.__allocating_init(senderId:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t TriggerSender.init(senderId:)(int a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t TriggerSender.connectEdge(edge:)(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x25F8CC800](v2);
  if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25ECD27C0();
  }

  sub_25ECD2800();
  return swift_endAccess();
}

Swift::Void __swiftcall TriggerSender.send(frameId:)(Swift::UInt64 frameId)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = sub_25ECD29A0();
  if (v4)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    v5 = *(v1 + 16);

    v6 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F8CC9B0](v6, v3);
      if (v7[3])
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v7[2])
      {
        sub_25ECCB7C4(v5, frameId);
      }

      ++v6;

      if (v4 == v6)
      {

        return;
      }
    }

    v7 = *(v3 + 8 * v6 + 32);

    if (!v7[3])
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = v7[4];
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v5, frameId, ObjectType, v8);
    goto LABEL_9;
  }
}

uint64_t TriggerSender.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TriggerReceiverRule.hashValue.getter()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECCBEE4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25ECCEB94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25ECC623C(v4, v5);
}

uint64_t sub_25ECCBF78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25ECCEB5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_25ECC623C(v3, v4);
  return sub_25ECC61D8(v8, v9);
}

uint64_t TriggerReceiver.triggerCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_25ECC623C(v1, *(v0 + 72));
  return v1;
}

uint64_t TriggerReceiver.triggerCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_25ECC61D8(v5, v6);
}

uint64_t TriggerReceiver.__allocating_init(receiverId:rule:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = xmmword_25ECD3E20;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_25ECCE8A8(MEMORY[0x277D84F90]);
  *(v4 + 56) = v6;
  v8 = MEMORY[0x277D84FA0];
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  *(v4 + 80) = a1;
  *(v4 + 84) = BYTE4(a1) & 1;
  return v4;
}

uint64_t TriggerReceiver.init(receiverId:rule:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = v4;
  *(v2 + 24) = xmmword_25ECD3E20;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25ECCE8A8(MEMORY[0x277D84F90]);
  *(v2 + 56) = v5;
  v7 = MEMORY[0x277D84FA0];
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  *(v2 + 80) = a1;
  *(v2 + 84) = BYTE4(a1) & 1;
  return v2;
}

Swift::Bool __swiftcall TriggerReceiver.connectEdge(senderId:)(Swift::UInt32 senderId)
{
  v2 = v1;
  v3 = *&senderId;
  swift_beginAccess();
  if (*(v1[5] + 16))
  {
    sub_25ECCDC78(v3);
    if (v4)
    {
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25ECD2FD0;
      sub_25ECD2910();

      LODWORD(v17) = v3;
      v6 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v6);

      MEMORY[0x25F8CC7D0](0xD000000000000012, 0x800000025ECD6040);
      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 32) = 0xD000000000000018;
      *(v5 + 40) = 0x800000025ECD6020;
      sub_25ECD2A80();

      return 0;
    }
  }

  swift_endAccess();
  v8 = v1[4];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v1[5];
  v1[5] = 0x8000000000000000;
  v10 = &v17;
  sub_25ECCE44C(v8, v3, isUniquelyReferenced_nonNull_native);
  v2[5] = v17;
  swift_endAccess();
  v11 = v2[4];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2[4] = v13;
  v10 = v2[7];
  v3 = *(v10 + 2);
  if (v3 <= v13 / 64)
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v2[7] = v10;
    if (v14)
    {
LABEL_7:
      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_25ECC4F74((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      *&v10[8 * v16 + 32] = 0;
      v2[7] = v10;
      return 1;
    }

LABEL_12:
    v10 = sub_25ECC4F74(0, v3 + 1, 1, v10);
    v2[7] = v10;
    goto LABEL_7;
  }

  return 1;
}

Swift::Bool __swiftcall TriggerReceiver.evaluateTriggerRule()()
{
  v1 = *(v0 + 56);
  v2 = v1[2];
  if (*(v0 + 16))
  {
    v3 = 0;
    if (v2)
    {
      v4 = v1 + 4;
      while (1)
      {
        v5 = *v4++;
        v6 = vcnt_s8(v5);
        v6.i16[0] = vaddlv_u8(v6);
        v7 = __OFADD__(v3, v6.u32[0]);
        v3 += v6.u32[0];
        if (v7)
        {
          break;
        }

        if (!--*&v2)
        {
          return v3 == *(v0 + 32);
        }
      }

      __break(1u);
    }

    else
    {
      return v3 == *(v0 + 32);
    }
  }

  else
  {
    v9 = v1 + 4;
    do
    {
      v10 = (*&v2)-- != 0;
      result = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9++;
    }

    while (!v11);
  }

  return result;
}

Swift::Void __swiftcall TriggerReceiver.consumeTriggers()()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 2);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 56) = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_16:
      v1 = sub_25ECC8818(v1);
    }

    v4 = *(v1 + 2);
    v5 = v2 - 1;
    if (v4 < v2 - 1)
    {
      v5 = *(v1 + 2);
    }

    if (v5 >= 4)
    {
      v7 = v5 + 1;
      v8 = v7 & 3;
      if ((v7 & 3) == 0)
      {
        v8 = 4;
      }

      v6 = v7 - v8;
      v9 = v1 + 48;
      v10 = v6;
      do
      {
        *(v9 - 1) = 0uLL;
        *v9 = 0uLL;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
    }

    else
    {
      v6 = 0;
    }

    do
    {
      if (v6 >= v4)
      {
        __break(1u);
        goto LABEL_16;
      }

      *&v1[8 * v6++ + 32] = 0;
    }

    while (v2 != v6);
    *(v0 + 56) = v1;
  }

  swift_beginAccess();
  *(v0 + 48) = MEMORY[0x277D84FA0];
}

char *TriggerReceiver.getTriggeredSenders()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_25ECCC7D4(*(v1 + 16), 0, &qword_27FD3A6F0, &unk_25ECD3FF0);
  v4 = sub_25ECCE780(&v7, v3 + 8, v2, v1);
  v5 = v7;
  swift_bridgeObjectRetain_n();
  sub_25ECC69D8(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_25ECCDCC0(&v7);

  return v7;
}

void *TriggerReceiver.deinit()
{

  sub_25ECC61D8(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t TriggerReceiver.__deallocating_deinit()
{

  sub_25ECC61D8(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

void *sub_25ECCC7D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

char *sub_25ECCC850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4F8, &unk_25ECD3400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25ECCC954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B0, &qword_25ECD33D0);
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

char *sub_25ECCCA60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4B8, &unk_25ECD4010);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25ECCCB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6F0, &unk_25ECD3FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_25ECCCC68(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  v6 = sub_25ECD2AE0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25ECCD2D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25ECCCD6C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x25F8CCB10](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25ECCD43C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25ECCCE54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A708, &unk_25ECD4028);
  result = sub_25ECD2900();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_25ECD2AA0();
      MEMORY[0x25F8CCB30](0);
      sub_25ECD2AC0();
      result = sub_25ECD2AE0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25ECCD0B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A700, &unk_25ECD4000);
  result = sub_25ECD2900();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x25F8CCB10](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25ECCD2D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25ECCCE54(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25ECCD560();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25ECCD7E0(v5 + 1);
  }

  v8 = *v3;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  result = sub_25ECD2AE0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A4D8, &qword_25ECD4020);
  result = sub_25ECD2A20();
  __break(1u);
  return result;
}

uint64_t sub_25ECCD43C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25ECCD0B0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25ECCD6A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25ECCDA0C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x25F8CCB10](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25ECD2A20();
  __break(1u);
  return result;
}

void *sub_25ECCD560()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A708, &unk_25ECD4028);
  v2 = *v0;
  v3 = sub_25ECD28F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

  return result;
}

void *sub_25ECCD6A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A700, &unk_25ECD4000);
  v2 = *v0;
  v3 = sub_25ECD28F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

  return result;
}

uint64_t sub_25ECCD7E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A708, &unk_25ECD4028);
  result = sub_25ECD2900();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_25ECD2AA0();
      MEMORY[0x25F8CCB30](0);
      sub_25ECD2AC0();
      result = sub_25ECD2AE0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25ECCDA0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A700, &unk_25ECD4000);
  result = sub_25ECD2900();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x25F8CCB10](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_25ECCDC00(uint64_t a1)
{
  v1 = a1;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  v2 = sub_25ECD2AE0();

  return sub_25ECCE3E0(v1, v2);
}

unint64_t sub_25ECCDC78(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x25F8CCB10](*(v1 + 40), a1, 4);

  return sub_25ECCE3E0(v2, v3);
}

uint64_t sub_25ECCDCC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25ECCE894(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25ECD29E0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25ECD27E0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25ECCDDF4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25ECCDDF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25ECCE3CC(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25ECC58F8((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25ECC4B20(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25ECC4B20((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25ECC58F8((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25ECCE340(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25ECCE3CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_25ECCE3E0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_25ECCE44C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25ECCDC78(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_25ECD1034();
      result = v17;
      goto LABEL_8;
    }

    sub_25ECD0918(v14, a3 & 1);
    result = sub_25ECCDC78(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_25ECD2A30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_25ECD0FF0(result, a2, a1, v19);
  }

  return result;
}

unint64_t sub_25ECCE558(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25ECCDC78(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25ECD1180();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25ECD0B80(v14, a3 & 1);
    v9 = sub_25ECCDC78(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25ECD2A30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_25ECD0FF0(v9, a2, a1, v19);
  }
}

void *sub_25ECCE680(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_25ECCE780(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_25ECCE8A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6F8, &unk_25ECD40B0);
    v3 = sub_25ECD29D0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_25ECCDC78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_25ECCE98C()
{
  result = qword_27FD3A6E0;
  if (!qword_27FD3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A6E0);
  }

  return result;
}

uint64_t sub_25ECCEB24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECCEB5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_25ECCEBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6E8, &unk_25ECD3FE0);
  v3 = sub_25ECD29D0();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_25ECCDC78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_25ECCDC78(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}