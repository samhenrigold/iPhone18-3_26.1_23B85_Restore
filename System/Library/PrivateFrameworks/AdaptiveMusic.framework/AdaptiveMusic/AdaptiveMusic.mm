unint64_t sub_23E791C44()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000020;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E791CF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E793F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E791D34(uint64_t a1)
{
  v2 = sub_23E792730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791D70(uint64_t a1)
{
  v2 = sub_23E792730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791DB8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23E791DF4(uint64_t a1)
{
  v2 = sub_23E792928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791E30(uint64_t a1)
{
  v2 = sub_23E792928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791E6C(uint64_t a1)
{
  v2 = sub_23E7927D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791EA8(uint64_t a1)
{
  v2 = sub_23E7927D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791EE4(uint64_t a1)
{
  v2 = sub_23E79282C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791F20(uint64_t a1)
{
  v2 = sub_23E79282C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791F5C(uint64_t a1)
{
  v2 = sub_23E792880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E791F98(uint64_t a1)
{
  v2 = sub_23E792880();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E791FD4(uint64_t a1)
{
  v2 = sub_23E7928D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E792010(uint64_t a1)
{
  v2 = sub_23E7928D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E79204C(uint64_t a1)
{
  v2 = sub_23E792784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E792088(uint64_t a1)
{
  v2 = sub_23E792784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdaptiveMusicError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB60, &qword_23E7E0860);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB68, &qword_23E7E0868);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB70, &qword_23E7E0870);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB78, &qword_23E7E0878);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB80, &qword_23E7E0880);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB88, &qword_23E7E0888);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FB90, &qword_23E7E0890);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E792730();
  sub_23E7DDA08();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_23E79282C();
      v21 = v33;
      v22 = v42;
      sub_23E7DD878();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_23E7927D8();
      v21 = v36;
      v22 = v42;
      sub_23E7DD878();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_23E792784();
      v21 = v39;
      v22 = v42;
      sub_23E7DD878();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_23E7928D4();
      v21 = v27;
      v22 = v42;
      sub_23E7DD878();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_23E792880();
      v21 = v30;
      v22 = v42;
      sub_23E7DD878();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_23E792928();
  v22 = v42;
  sub_23E7DD878();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23E792730()
{
  result = qword_27E34FB98;
  if (!qword_27E34FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FB98);
  }

  return result;
}

unint64_t sub_23E792784()
{
  result = qword_27E34FBA0;
  if (!qword_27E34FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBA0);
  }

  return result;
}

unint64_t sub_23E7927D8()
{
  result = qword_27E34FBA8;
  if (!qword_27E34FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBA8);
  }

  return result;
}

unint64_t sub_23E79282C()
{
  result = qword_27E34FBB0;
  if (!qword_27E34FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBB0);
  }

  return result;
}

unint64_t sub_23E792880()
{
  result = qword_27E34FBB8;
  if (!qword_27E34FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBB8);
  }

  return result;
}

unint64_t sub_23E7928D4()
{
  result = qword_27E34FBC0;
  if (!qword_27E34FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBC0);
  }

  return result;
}

unint64_t sub_23E792928()
{
  result = qword_27E34FBC8;
  if (!qword_27E34FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FBC8);
  }

  return result;
}

uint64_t AdaptiveMusicError.hashValue.getter()
{
  v1 = *v0;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v1);
  return sub_23E7DD9C8();
}

uint64_t AdaptiveMusicError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBD0, &qword_23E7E0898);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBD8, &qword_23E7E08A0);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBE0, &qword_23E7E08A8);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBE8, &qword_23E7E08B0);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBF0, &qword_23E7E08B8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FBF8, &qword_23E7E08C0);
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC00, &qword_23E7E08C8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_23E792730();
  v24 = v62;
  sub_23E7DD9E8();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_23E7DD858();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_23E7DD768();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC08, &qword_23E7E08D0);
      *v35 = &type metadata for AdaptiveMusicError;
      sub_23E7DD808();
      sub_23E7DD758();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_23E79282C();
          sub_23E7DD7F8();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_23E7927D8();
            v38 = v57;
            sub_23E7DD7F8();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_23E792784();
            v41 = v58;
            sub_23E7DD7F8();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_23E7928D4();
            v31 = v25;
            sub_23E7DD7F8();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_23E792880();
            sub_23E7DD7F8();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_23E792928();
          sub_23E7DD7F8();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_23E793234()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E793268()
{
  v1 = *v0;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7932B0(uint64_t a1)
{
  v2 = *v1;
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](v2);
  return sub_23E7DD9C8();
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

unint64_t sub_23E793344()
{
  result = qword_27E34FC10;
  if (!qword_27E34FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManifestResources.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManifestResources.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E7935DC()
{
  result = qword_27E34FC20;
  if (!qword_27E34FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC20);
  }

  return result;
}

unint64_t sub_23E793634()
{
  result = qword_27E34FC28;
  if (!qword_27E34FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC28);
  }

  return result;
}

unint64_t sub_23E79368C()
{
  result = qword_27E34FC30;
  if (!qword_27E34FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC30);
  }

  return result;
}

unint64_t sub_23E7936E4()
{
  result = qword_27E34FC38;
  if (!qword_27E34FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC38);
  }

  return result;
}

unint64_t sub_23E79373C()
{
  result = qword_27E34FC40;
  if (!qword_27E34FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC40);
  }

  return result;
}

unint64_t sub_23E793794()
{
  result = qword_27E34FC48;
  if (!qword_27E34FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC48);
  }

  return result;
}

unint64_t sub_23E7937EC()
{
  result = qword_27E34FC50;
  if (!qword_27E34FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC50);
  }

  return result;
}

unint64_t sub_23E793844()
{
  result = qword_27E34FC58;
  if (!qword_27E34FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC58);
  }

  return result;
}

unint64_t sub_23E79389C()
{
  result = qword_27E34FC60;
  if (!qword_27E34FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC60);
  }

  return result;
}

unint64_t sub_23E7938F4()
{
  result = qword_27E34FC68;
  if (!qword_27E34FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC68);
  }

  return result;
}

unint64_t sub_23E79394C()
{
  result = qword_27E34FC70;
  if (!qword_27E34FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC70);
  }

  return result;
}

unint64_t sub_23E7939A4()
{
  result = qword_27E34FC78;
  if (!qword_27E34FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC78);
  }

  return result;
}

unint64_t sub_23E7939FC()
{
  result = qword_27E34FC80;
  if (!qword_27E34FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC80);
  }

  return result;
}

unint64_t sub_23E793A54()
{
  result = qword_27E34FC88;
  if (!qword_27E34FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC88);
  }

  return result;
}

unint64_t sub_23E793AAC()
{
  result = qword_27E34FC90;
  if (!qword_27E34FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FC90);
  }

  return result;
}

uint64_t sub_23E793B20(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23E793B8C(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23E793BF8(void *a1, uint64_t a2)
{
  v4 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23E793CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23E793D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23E7DD9A8();
  sub_23E7DD2C8();
  return sub_23E7DD9C8();
}

void *sub_23E793D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23E793DB8(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB8, type metadata accessor for ICError, &unk_23E7E124C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23E793E24(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB8, type metadata accessor for ICError, &unk_23E7E124C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23E793E90(uint64_t a1)
{
  v2 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23E793EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E794290(&qword_27E34FCB0, type metadata accessor for ICError, &unk_23E7E110C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23E793F80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023E7DE440 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE460 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023E7DE480 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023E7DE4A0 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023E7DE4C0 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023E7DE4F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23E794190(uint64_t a1, int a2)
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

uint64_t sub_23E7941B0(uint64_t result, int a2, int a3)
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

uint64_t sub_23E794290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23E7942EC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_23E7944A4()
{
  result = qword_27E34FCE0;
  if (!qword_27E34FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FCE0);
  }

  return result;
}

AdaptiveMusic::Mood::ID_optional __swiftcall Mood.ID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Mood.ID.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7270;
  v3 = 0x7065656C73;
  v4 = 0x6E6965626C6C6577;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6C696863;
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

uint64_t sub_23E7946BC()
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7947A0(uint64_t a1)
{
  sub_23E7DD398();
}

uint64_t sub_23E794870(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E79495C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746976;
  v4 = 0x69746375646F7270;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C73;
  v7 = 0xE900000000000067;
  v8 = 0x6E6965626C6C6577;
  if (v2 != 3)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6C696863;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t Mood.name.getter()
{
  v1 = *(v0 + 8);
  sub_23E7DC9D8();
  return v1;
}

uint64_t Mood.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Mood.defaultPlaylist.getter@<X0>(__int128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      *&v12[11] = *(v4 + 43);
      v11[1] = v6;
      *v12 = v7;
      v11[0] = v5;
      if (v12[26])
      {
        break;
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v8 = v4[1];
    *a1 = *v4;
    a1[1] = v8;
    a1[2] = v4[2];
    *(a1 + 43) = *(v4 + 43);
    return sub_23E794BD8(v11, &v10);
  }

  else
  {
LABEL_5:
    *(a1 + 43) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_23E794C34()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E794C80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E795AF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E794CB4(uint64_t a1)
{
  v2 = sub_23E794F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E794CF0(uint64_t a1)
{
  v2 = sub_23E794F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Mood.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD00, &qword_23E7E12F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[1] = *(v1 + 2);
  v12[2] = v9;
  v12[0] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E794F7C();
  sub_23E7DDA08();
  v16 = v8;
  v15 = 0;
  sub_23E794FD0();
  sub_23E7DD8B8();
  if (!v2)
  {
    v11 = v12[0];
    v14 = 1;
    sub_23E7DD898();
    v12[3] = v11;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD18, qword_23E7E5670);
    sub_23E7953AC(&qword_27E34FD20, sub_23E79506C, MEMORY[0x277D83948]);
    sub_23E7DD8B8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23E794F7C()
{
  result = qword_27E34FD08;
  if (!qword_27E34FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD08);
  }

  return result;
}

unint64_t sub_23E794FD0()
{
  result = qword_27E34FD10;
  if (!qword_27E34FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD10);
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

unint64_t sub_23E79506C()
{
  result = qword_27E34FD28;
  if (!qword_27E34FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD28);
  }

  return result;
}

uint64_t Mood.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD30, &qword_23E7E12F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E794F7C();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_23E795358();
  sub_23E7DD848();
  v9 = v20;
  v18 = 1;
  v10 = sub_23E7DD828();
  v12 = v11;
  v16[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FD18, qword_23E7E5670);
  v17 = 2;
  sub_23E7953AC(&qword_27E34FD40, sub_23E795424, MEMORY[0x277D83978]);
  sub_23E7DD848();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v9;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  sub_23E7DC9D8();
  sub_23E7DC9D8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23E795358()
{
  result = qword_27E34FD38;
  if (!qword_27E34FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD38);
  }

  return result;
}

uint64_t sub_23E7953AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FD18, qword_23E7E5670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E795424()
{
  result = qword_27E34FD48;
  if (!qword_27E34FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD48);
  }

  return result;
}

uint64_t sub_23E795500(uint64_t a1)
{
  v2 = sub_23E79618C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_23E795550(uint64_t a1)
{
  v2 = sub_23E7960E8();

  return MEMORY[0x28210C300](a1, v2);
}

AdaptiveMusic::Mood::ContentType_optional __swiftcall Mood.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Mood.ContentType.rawValue.getter()
{
  v1 = 0x646564616F6C7075;
  if (*v0 != 1)
  {
    v1 = 0x7262694C72657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73754D656C707061;
  }
}

uint64_t sub_23E79567C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646564616F6C7075;
  v4 = 0xED00006F69647541;
  if (v2 != 1)
  {
    v3 = 0x7262694C72657375;
    v4 = 0xEB00000000797261;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x73754D656C707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006369;
  }

  v7 = 0x646564616F6C7075;
  v8 = 0xED00006F69647541;
  if (*a2 != 1)
  {
    v7 = 0x7262694C72657375;
    v8 = 0xEB00000000797261;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x73754D656C707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006369;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

uint64_t sub_23E7957A8()
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E795864(uint64_t a1)
{
  sub_23E7DD398();
}

uint64_t sub_23E79590C(uint64_t a1)
{
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E795A80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006369;
  v4 = 0xED00006F69647541;
  v5 = 0x646564616F6C7075;
  if (v2 != 1)
  {
    v5 = 0x7262694C72657375;
    v4 = 0xEB00000000797261;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73754D656C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23E795AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t _s13AdaptiveMusic4MoodV2IDO26caseDisplayRepresentationsSDyAE10AppIntents0F14RepresentationVGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDE8, &qword_23E7E18E8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF0, &qword_23E7E18F0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E7E12E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_23E7DC968();
  v4[v1] = 1;
  sub_23E7DC968();
  v4[2 * v1] = 2;
  sub_23E7DC968();
  v4[3 * v1] = 3;
  sub_23E7DC968();
  v4[4 * v1] = 4;
  sub_23E7DC968();
  v5 = sub_23E7ACAD4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_23E795E20()
{
  result = qword_27E34FD50;
  if (!qword_27E34FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD50);
  }

  return result;
}

unint64_t sub_23E795E74()
{
  result = qword_27E34FD58;
  if (!qword_27E34FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD58);
  }

  return result;
}

unint64_t sub_23E795ECC()
{
  result = qword_27E34FD60;
  if (!qword_27E34FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD60);
  }

  return result;
}

unint64_t sub_23E795F24()
{
  result = qword_27E34FD68;
  if (!qword_27E34FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD68);
  }

  return result;
}

unint64_t sub_23E795F7C()
{
  result = qword_27E34FD70;
  if (!qword_27E34FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD70);
  }

  return result;
}

unint64_t sub_23E795FE0()
{
  result = qword_27E34FD78;
  if (!qword_27E34FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD78);
  }

  return result;
}

unint64_t sub_23E796038()
{
  result = qword_27E34FD80;
  if (!qword_27E34FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD80);
  }

  return result;
}

unint64_t sub_23E796090()
{
  result = qword_27E34FD88;
  if (!qword_27E34FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD88);
  }

  return result;
}

unint64_t sub_23E7960E8()
{
  result = qword_27E34FD90;
  if (!qword_27E34FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD90);
  }

  return result;
}

unint64_t sub_23E79618C()
{
  result = qword_27E34FD98;
  if (!qword_27E34FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FD98);
  }

  return result;
}

unint64_t sub_23E7961E4()
{
  result = qword_27E34FDA0;
  if (!qword_27E34FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDA0);
  }

  return result;
}

unint64_t sub_23E79623C()
{
  result = qword_27E34FDA8;
  if (!qword_27E34FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDA8);
  }

  return result;
}

unint64_t sub_23E796298()
{
  result = qword_27E34FDB0;
  if (!qword_27E34FDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FDB8, &qword_23E7E1630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDB0);
  }

  return result;
}

unint64_t sub_23E796300()
{
  result = qword_27E34FDC0;
  if (!qword_27E34FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDC0);
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

uint64_t sub_23E796360(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E7963A8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Mood.ID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Mood.ID(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23E79655C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23E7965F0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E7966B4()
{
  result = qword_27E34FDC8;
  if (!qword_27E34FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDC8);
  }

  return result;
}

unint64_t sub_23E79670C()
{
  result = qword_27E34FDD0;
  if (!qword_27E34FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDD0);
  }

  return result;
}

unint64_t sub_23E796764()
{
  result = qword_27E34FDD8;
  if (!qword_27E34FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDD8);
  }

  return result;
}

unint64_t sub_23E7967B8()
{
  result = qword_27E34FDE0;
  if (!qword_27E34FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FDE0);
  }

  return result;
}

uint64_t sub_23E796820(uint64_t a1)
{
  *(v1 + 120) = a1;
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_23E7968C4;

  return sub_23E7B92D8();
}

uint64_t sub_23E7968C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_23E7969C4, 0, 0);
}

uint64_t sub_23E7969C4()
{
  v1 = sub_23E7DD318();
  v2 = sub_23E7DD318();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_23E796AE8;
  v5 = v0[17];
  v6 = v0[18];

  return sub_23E7C9100((v0 + 2), v3, v5, v6);
}

uint64_t sub_23E796AE8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v2;
  v3[1] = sub_23E796C30;
  v4 = *(v1 + 120);

  return sub_23E796E4C(v4);
}

uint64_t sub_23E796C30()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_23E796DC8;
  }

  else
  {
    v2 = sub_23E796D44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E796D44()
{
  *(v0 + 88) = *(v0 + 24);
  sub_23E799510(v0 + 88);
  *(v0 + 104) = *(v0 + 40);
  sub_23E799510(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E796DC8()
{
  *(v0 + 56) = *(v0 + 24);
  sub_23E799510(v0 + 56);
  *(v0 + 72) = *(v0 + 40);
  sub_23E799510(v0 + 72);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E796E4C(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_23E7DCAD8();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  v3 = swift_task_alloc();
  v1[24] = v3;
  v4 = sub_23E7DCCF8();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_23E796FDC;

  return sub_23E7C83E8(v3);
}

uint64_t sub_23E796FDC()
{

  return MEMORY[0x2822009F8](sub_23E7970D8, 0, 0);
}

uint64_t sub_23E7970D8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23E7996FC(v3, &qword_27E34FE88, &qword_23E7E1D10);
    sub_23E799564();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    type metadata accessor for NetworkRunner();
    inited = swift_initStackObject();
    v0[29] = inited;
    *(inited + 24) = 0;
    v8 = [objc_opt_self() defaultSessionConfiguration];
    v9 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

    *(inited + 16) = v9;
    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_23E7972BC;
    v11 = v0[27];

    return sub_23E7C95E4(v11);
  }
}

uint64_t sub_23E7972BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = v3;

  if (v3)
  {
    v7 = sub_23E797630;
  }

  else
  {
    v8 = v6[29];
    swift_setDeallocating();

    v7 = sub_23E797400;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E797400()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  sub_23E7DCB18();
  swift_allocObject();
  sub_23E7995B8(v3, v1);
  sub_23E7DCB08();
  (*(v5 + 104))(v4, *MEMORY[0x277CC86D0], v6);
  sub_23E7DCAE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE98, &qword_23E7E1AA0);
  sub_23E79960C();
  sub_23E7DCAF8();
  *(v0 + 272) = v2;
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (v2)
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);

    sub_23E799670(v8, v7);
    sub_23E799670(v8, v7);
    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {

    sub_23E799670(v8, v7);
    v14 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v14;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_23E7976EC;

    return sub_23E7988F4();
  }
}

uint64_t sub_23E797630()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  swift_setDeallocating();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E7976EC(char a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_23E7977EC, 0, 0);
}

uint64_t sub_23E7977EC()
{
  v9 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  v8[0] = (*(v0 + 288) & 1) == 0;
  sub_23E7BFC30(v8, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  if (v1)
  {
    (*(v5 + 8))(*(v0 + 216), *(v0 + 200));
  }

  else
  {
    (*(v5 + 8))();
  }

  sub_23E799670(v3, v4);
  sub_23E7996FC(v0 + 16, &qword_27E34FE98, &qword_23E7E1AA0);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_23E797940()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x73754D656C707061;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_23E7979E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23E799354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23E797A14(uint64_t a1)
{
  v2 = sub_23E797D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E797A50(uint64_t a1)
{
  v2 = sub_23E797D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Manifest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF8, &qword_23E7E1900);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E797D48();
  sub_23E7DDA08();
  LOBYTE(v12) = 0;
  sub_23E7DD898();
  if (!v2)
  {
    v9 = type metadata accessor for Manifest(0);
    LOBYTE(v12) = 1;
    sub_23E7DCCF8();
    sub_23E798324(&qword_27E34FE08, MEMORY[0x277CC9268]);
    sub_23E7DD8B8();
    LOBYTE(v12) = *(v3 + v9[6]);
    v13 = 2;
    sub_23E797DE8();
    sub_23E7DD8B8();
    v12 = *(v3 + v9[7]);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE18, &qword_23E7E1908);
    sub_23E7983BC(&qword_27E34FE20, sub_23E797E3C, MEMORY[0x277D83948]);
    sub_23E7DD8B8();
    v12 = *(v3 + v9[8]);
    v13 = 4;
    sub_23E7DD8B8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23E797D48()
{
  result = qword_27E34FE00;
  if (!qword_27E34FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE00);
  }

  return result;
}

uint64_t type metadata accessor for Manifest(uint64_t a1)
{
  result = qword_27E34FE58;
  if (!qword_27E34FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23E797DE8()
{
  result = qword_27E34FE10;
  if (!qword_27E34FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE10);
  }

  return result;
}

unint64_t sub_23E797E3C()
{
  result = qword_27E34FE28;
  if (!qword_27E34FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE28);
  }

  return result;
}

uint64_t Manifest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_23E7DCCF8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE30, &qword_23E7E1910);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = v15 - v6;
  v8 = type metadata accessor for Manifest(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E797D48();
  v19 = v7;
  v11 = v21;
  sub_23E7DD9E8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  LOBYTE(v22) = 0;
  *v10 = sub_23E7DD828();
  v10[1] = v13;
  v21 = v13;
  LOBYTE(v22) = 1;
  sub_23E798324(&qword_27E34FE38, MEMORY[0x277CC9280]);
  sub_23E7DD848();
  (*(v17 + 32))(v10 + v8[5], v5, v3);
  v23 = 2;
  sub_23E798368();
  v15[2] = 0;
  sub_23E7DD848();
  *(v10 + v8[6]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE18, &qword_23E7E1908);
  v23 = 3;
  v15[1] = sub_23E7983BC(&qword_27E34FE48, sub_23E798434, MEMORY[0x277D83978]);
  sub_23E7DD848();
  *(v10 + v8[7]) = v22;
  v23 = 4;
  sub_23E7DD848();
  (*(v12 + 8))(v19, v20);
  *(v10 + v8[8]) = v22;
  sub_23E798488(v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23E7984EC(v10);
}

uint64_t sub_23E798324(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23E7DCCF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E798368()
{
  result = qword_27E34FE40;
  if (!qword_27E34FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE40);
  }

  return result;
}

uint64_t sub_23E7983BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FE18, &qword_23E7E1908);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E798434()
{
  result = qword_27E34FE50;
  if (!qword_27E34FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE50);
  }

  return result;
}

uint64_t sub_23E798488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Manifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7984EC(uint64_t a1)
{
  v2 = type metadata accessor for Manifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E79858C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E7DCCF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E79864C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E7DCCF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7986F0(uint64_t a1)
{
  sub_23E7DCCF8();
  if (v1 <= 0x3F)
  {
    sub_23E79878C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E79878C()
{
  if (!qword_27E34FE68)
  {
    v0 = sub_23E7DD4F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E34FE68);
    }
  }
}

unint64_t sub_23E7987F0()
{
  result = qword_27E34FE70;
  if (!qword_27E34FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE70);
  }

  return result;
}

unint64_t sub_23E798848()
{
  result = qword_27E34FE78;
  if (!qword_27E34FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE78);
  }

  return result;
}

unint64_t sub_23E7988A0()
{
  result = qword_27E34FE80;
  if (!qword_27E34FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE80);
  }

  return result;
}

uint64_t sub_23E7988F4()
{
  v1 = sub_23E7DCF48();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_23E7DCF88();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E798A18, 0, 0);
}

uint64_t sub_23E798A18()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
LABEL_7:
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_23E798E18;
    v9 = v0[7];

    return MEMORY[0x282124400](v9);
  }

  v3 = sub_23E7DD328();
  v5 = v4;

  if (v3 == 0xD00000000000002FLL && 0x800000023E7DE590 == v5)
  {
  }

  else
  {
    v7 = sub_23E7DD8E8();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  (*(v0[3] + 104))(v0[4], *MEMORY[0x277D2AE30], v0[2]);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_23E798C00;
  v11 = v0[8];
  v12 = v0[4];

  return MEMORY[0x28218A460](v11, v12);
}

uint64_t sub_23E798C00()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_23E798FD4;
  }

  else
  {
    v5 = sub_23E798D70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E798D70()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_23E7DCF68();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_23E798E18()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_23E799194;
  }

  else
  {
    v2 = sub_23E798F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E798F2C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_23E7DCF68();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_23E798FD4()
{
  v1 = *(v0 + 80);
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to check subscription status: %@.", v6, 0xCu);
    sub_23E7996FC(v7, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_23E799194()
{
  v1 = *(v0 + 96);
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to check subscription status: %@.", v6, 0xCu);
    sub_23E7996FC(v7, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_23E799354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E7DE530 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE550 == a2 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEF73646F6F4D6369 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023E7DE570 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_23E799564()
{
  result = qword_27E34FE90;
  if (!qword_27E34FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FE90);
  }

  return result;
}

void sub_23E7995B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }

    sub_23E7DC9E8();
  }

  sub_23E7DC9E8();
}

unint64_t sub_23E79960C()
{
  result = qword_27E34FEA0;
  if (!qword_27E34FEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FE98, &qword_23E7E1AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FEA0);
  }

  return result;
}

uint64_t sub_23E799670(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E7996FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptiveMusicAppIntentsPackage(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AdaptiveMusicAppIntentsPackage(_WORD *result, int a2, int a3)
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

void sub_23E799848(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23E799C0C(319);
    if (v2 <= 0x3F)
    {
      sub_23E799CD8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E7998E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23E799A2C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23E799C0C(uint64_t a1)
{
  if (!qword_27E34FF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34FF38, qword_23E7E1B50);
    sub_23E799C84();
    v1 = sub_23E7DD2B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E34FF30);
    }
  }
}

unint64_t sub_23E799C84()
{
  result = qword_27E34FF40;
  if (!qword_27E34FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34FF40);
  }

  return result;
}

void sub_23E799CD8(uint64_t a1)
{
  if (!qword_27E34FF48)
  {
    sub_23E799D30();
    v1 = sub_23E7DD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27E34FF48);
    }
  }
}

unint64_t sub_23E799D30()
{
  result = qword_27E34FF50;
  if (!qword_27E34FF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E34FF50);
  }

  return result;
}

uint64_t sub_23E799D80@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_23E7DCDD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF60, &unk_23E7E1B70);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v28 = v1;
  sub_23E7DCE18();
  v15 = sub_23E7DCDF8();
  v16 = *(v15 - 8);
  v27 = *(v16 + 48);
  v17 = v27(v11, 1, v15);
  v26 = v3;
  if (v17 == 1)
  {
    sub_23E7996FC(v11, &qword_27E34FF60, &unk_23E7E1B70);
    v18 = sub_23E7DCCF8();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D2A938], v2);
    sub_23E7DCDE8();
    (*(v3 + 8))(v5, v2);
    (*(v16 + 8))(v11, v15);
    v19 = sub_23E7DCCF8();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v14, 1, v19) != 1)
    {
      v25 = v29;
      (*(v20 + 32))(v29, v14, v19);
      return (*(v20 + 56))(v25, 0, 1, v19);
    }
  }

  sub_23E7DCE18();
  if (v27(v9, 1, v15) == 1)
  {
    sub_23E7996FC(v9, &qword_27E34FF60, &unk_23E7E1B70);
    v21 = sub_23E7DCCF8();
    (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  }

  else
  {
    v22 = v26;
    (*(v26 + 104))(v5, *MEMORY[0x277D2A940], v2);
    sub_23E7DCDE8();
    (*(v22 + 8))(v5, v2);
    (*(v16 + 8))(v9, v15);
  }

  v23 = sub_23E7DCCF8();
  result = (*(*(v23 - 8) + 48))(v14, 1, v23);
  if (result != 1)
  {
    return sub_23E7996FC(v14, &qword_27E34FE88, &qword_23E7E1D10);
  }

  return result;
}

unint64_t sub_23E79A22C()
{
  result = sub_23E7DCE48();
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = v1 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_23E7DD778();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_62;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_62;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_62;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_62;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_63;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_62;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_62;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_62;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v3) = 0;
LABEL_63:
          v28 = v3;
          v24 = v3;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_23E79A5A8(result, v1, 10);
  v24 = v25;
LABEL_64:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_23E79A534(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF58, &qword_23E7E1B68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_23E79A5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_23E7DC9D8();
  result = sub_23E7DD418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23E79AB34(result, v5);
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
      result = sub_23E7DD778();
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

uint64_t sub_23E79AB34(uint64_t a1, unint64_t a2)
{
  v2 = sub_23E7DD428();
  v6 = sub_23E79ABB4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_23E79ABB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23E7DD668();
    if (!v9 || (v10 = v9, v11 = sub_23E79A534(v9, 0), v12 = sub_23E79AD0C(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_23E7DC9D8(), , v12 == v10))
    {
      v13 = sub_23E7DD388();

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
      return sub_23E7DD388();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23E7DD778();
LABEL_4:

  return sub_23E7DD388();
}

unint64_t sub_23E79AD0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_23E79AF2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23E7DD3F8();
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
          result = sub_23E7DD778();
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

    result = sub_23E79AF2C(v12, a6, a7);
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

    result = sub_23E7DD3D8();
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

unint64_t sub_23E79AF2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23E7DD408();
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
    v5 = MEMORY[0x23EF12E40](15, a1 >> 16);
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

uint64_t sub_23E79AFDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_23E7DD208();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350000, &qword_23E7E1DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1B80;
  *(inited + 32) = 0;
  v10 = sub_23E7DCE28();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350008, &qword_23E7E1DD0);
  *(inited + 64) = v13;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 72) = 1;
  v14 = sub_23E7DCE08();
  *(inited + 104) = v13;
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 112) = 3;
  v16 = sub_23E79A22C();
  LOBYTE(v12) = v17;
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350010, &qword_23E7E1DD8);
  *(inited + 120) = v16;
  *(inited + 128) = v12 & 1;
  v18 = sub_23E7ACEBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350018, &qword_23E7E1DE0);
  swift_arrayDestroy();
  v24 = v18;
  sub_23E7DCE38();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23E7996FC(v4, &qword_27E34FFD0, &qword_23E7E1D98);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v23[3] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(v6 + 16))(boxed_opaque_existential_0, v8, v5);
    sub_23E79BD88(v23, 2);
    (*(v6 + 8))(v8, v5);
    v18 = v24;
  }

  v20 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) + 36));
  sub_23E7DC9D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v20;
  sub_23E7A59C4(v18, sub_23E7A3BC4, 0, isUniquelyReferenced_nonNull_native, v23);

  return v23[0];
}

uint64_t sub_23E79B314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v109 = *(v2 - 8);
  v108 = *(v109 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = &v101 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = &v101 - v5;
  v6 = sub_23E7ADB64(MEMORY[0x277D84F90]);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v106 = *MEMORY[0x277D27CC8];
  v105 = *MEMORY[0x277D27CD0];
  v113 = *MEMORY[0x277CD56E8];
  v112 = *MEMORY[0x277CD58B8];
  sub_23E7DC9D8();
  v12 = 0;
  v114 = a1;
  while (v10)
  {
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v12 << 6);
    v15 = *(*(a1 + 48) + v14);
    sub_23E7A6134(*(a1 + 56) + 32 * v14, &v122);
    v121[0] = v15;
    sub_23E7A6710(v121, &v117, &qword_27E34FFC0, &unk_23E7E1D60);
    v16 = v117;
    sub_23E7A6190((&v117 + 8), v119);
    if (v16 <= 1)
    {
      if (v16)
      {
        v49 = sub_23E7DD328();
        v51 = v50;
        v52 = v120;
        v53 = __swift_project_boxed_opaque_existential_1(v119, v120);
        v118 = v52;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v117);
        (*(*(v52 - 8) + 16))(boxed_opaque_existential_0, v53, v52);
        sub_23E7A6190(&v117, v116);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v6;
        v24 = sub_23E7A352C(v49, v51);
        v57 = v6[2];
        v58 = (v56 & 1) == 0;
        v28 = __OFADD__(v57, v58);
        v59 = v57 + v58;
        if (v28)
        {
          goto LABEL_63;
        }

        v60 = v56;
        if (v6[3] < v59)
        {
          sub_23E7A3F30(v59, isUniquelyReferenced_nonNull_native);
          v24 = sub_23E7A352C(v49, v51);
          if ((v60 & 1) != (v61 & 1))
          {
            goto LABEL_73;
          }

          goto LABEL_35;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_35:
          a1 = v114;
          if (v60)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v70 = v24;
          sub_23E7A4364();
          v24 = v70;
          a1 = v114;
          if (v60)
          {
LABEL_36:
            v65 = v24;
LABEL_37:

            v6 = v115;
            v66 = (v115[7] + 32 * v65);
            __swift_destroy_boxed_opaque_existential_1(v66);
            sub_23E7A6190(v116, v66);
LABEL_4:
            sub_23E7996FC(v121, &qword_27E34FFC0, &unk_23E7E1D60);
            goto LABEL_5;
          }
        }

        v6 = v115;
        v115[(v24 >> 6) + 8] |= 1 << v24;
        v71 = (v6[6] + 16 * v24);
        *v71 = v49;
        v71[1] = v51;
        sub_23E7A6190(v116, (v6[7] + 32 * v24));
        sub_23E7996FC(v121, &qword_27E34FFC0, &unk_23E7E1D60);
        v72 = v6[2];
        v28 = __OFADD__(v72, 1);
        v64 = v72 + 1;
        if (v28)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }

      v17 = sub_23E7DD328();
      v19 = v18;
      v20 = v120;
      v21 = __swift_project_boxed_opaque_existential_1(v119, v120);
      v118 = v20;
      v22 = __swift_allocate_boxed_opaque_existential_0(&v117);
      (*(*(v20 - 8) + 16))(v22, v21, v20);
      sub_23E7A6190(&v117, v116);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v6;
      v24 = sub_23E7A352C(v17, v19);
      v26 = v6[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_64;
      }

      v30 = v25;
      if (v6[3] < v29)
      {
        sub_23E7A3F30(v29, v23);
        v24 = sub_23E7A352C(v17, v19);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_73;
        }

        goto LABEL_30;
      }

      if (v23)
      {
LABEL_30:
        a1 = v114;
        if (v30)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v69 = v24;
        sub_23E7A4364();
        v24 = v69;
        a1 = v114;
        if (v30)
        {
          goto LABEL_36;
        }
      }

      v6 = v115;
      v115[(v24 >> 6) + 8] |= 1 << v24;
      v62 = (v6[6] + 16 * v24);
      *v62 = v17;
      v62[1] = v19;
      sub_23E7A6190(v116, (v6[7] + 32 * v24));
      sub_23E7996FC(v121, &qword_27E34FFC0, &unk_23E7E1D60);
      v63 = v6[2];
      v28 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v28)
      {
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v16 == 2)
    {
      goto LABEL_4;
    }

    sub_23E7A6134(v119, &v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (!v106)
    {
      goto LABEL_71;
    }

    v32 = *&v116[0];
    v33 = sub_23E7DD328();
    v35 = v34;
    v36 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v103 = v32;
    v37 = [v36 initWithLongLong_];
    v102 = sub_23E7A68E0(0, &qword_27E34FFC8, 0x277CCABB0);
    v118 = v102;
    *&v117 = v37;
    sub_23E7A6190(&v117, v116);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v6;
    v104 = v33;
    v39 = v35;
    v41 = sub_23E7A352C(v33, v35);
    v42 = v6[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_65;
    }

    v45 = v40;
    if (v6[3] >= v44)
    {
      v48 = v105;
      if (v38)
      {
        if (v40)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_23E7A4364();
        if (v45)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      sub_23E7A3F30(v44, v38);
      v46 = sub_23E7A352C(v104, v39);
      v48 = v105;
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_73;
      }

      v41 = v46;
      if (v45)
      {
LABEL_40:

        v67 = v115;
        v68 = (v115[7] + 32 * v41);
        __swift_destroy_boxed_opaque_existential_1(v68);
        sub_23E7A6190(v116, v68);
        goto LABEL_50;
      }
    }

    v67 = v115;
    v115[(v41 >> 6) + 8] |= 1 << v41;
    v73 = (v67[6] + 16 * v41);
    *v73 = v104;
    v73[1] = v39;
    sub_23E7A6190(v116, (v67[7] + 32 * v41));
    v74 = v67[2];
    v28 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v28)
    {
      goto LABEL_69;
    }

    v67[2] = v75;
LABEL_50:
    if (!v48)
    {
      goto LABEL_72;
    }

    v76 = sub_23E7DD328();
    v78 = v77;
    v79 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v80 = [v79 initWithLongLong_];
    v118 = v102;
    *&v117 = v80;
    sub_23E7A6190(&v117, v116);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v67;
    v82 = sub_23E7A352C(v76, v78);
    v84 = v67[2];
    v85 = (v83 & 1) == 0;
    v28 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v28)
    {
      goto LABEL_68;
    }

    v87 = v83;
    if (v67[3] >= v86)
    {
      if ((v81 & 1) == 0)
      {
        v89 = v82;
        sub_23E7A4364();
        v82 = v89;
        a1 = v114;
        if (v87)
        {
LABEL_57:
          v65 = v82;
          goto LABEL_37;
        }

        goto LABEL_59;
      }
    }

    else
    {
      sub_23E7A3F30(v86, v81);
      v82 = sub_23E7A352C(v76, v78);
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_73;
      }
    }

    a1 = v114;
    if (v87)
    {
      goto LABEL_57;
    }

LABEL_59:
    v6 = v115;
    v115[(v82 >> 6) + 8] |= 1 << v82;
    v90 = (v6[6] + 16 * v82);
    *v90 = v76;
    v90[1] = v78;
    sub_23E7A6190(v116, (v6[7] + 32 * v82));
    sub_23E7996FC(v121, &qword_27E34FFC0, &unk_23E7E1D60);
    v91 = v6[2];
    v28 = __OFADD__(v91, 1);
    v64 = v91 + 1;
    if (v28)
    {
      goto LABEL_70;
    }

LABEL_60:
    v6[2] = v64;
LABEL_5:
    v10 &= v10 - 1;
    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v92 = sub_23E7DD558();
      v93 = v110;
      (*(*(v92 - 8) + 56))(v110, 1, 1, v92);
      v94 = v111;
      sub_23E7A6710(v107, v111, &qword_27E34FF90, &qword_23E7E1CC0);
      sub_23E7DD538();
      sub_23E7DC9D8();
      v95 = sub_23E7DD528();
      v96 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v97 = (v108 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      v99 = MEMORY[0x277D85700];
      *(v98 + 16) = v95;
      *(v98 + 24) = v99;
      sub_23E7A6054(v94, v98 + v96);
      *(v98 + v97) = v6;
      *(v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
      sub_23E79CE30(0, 0, v93, &unk_23E7E1D78, v98);
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_23E7DD938();
  __break(1u);
  return result;
}

_OWORD *sub_23E79BD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_23E7A6190(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_23E7A4718(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_23E7996FC(a1, &qword_27E350020, &qword_23E7E1DE8);
    v7 = sub_23E7A35A4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_23E7A41E8();
        v11 = v13;
      }

      sub_23E7A6190((*(v11 + 56) + 32 * v9), v14);
      sub_23E7A4508(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_23E7996FC(v14, &qword_27E350020, &qword_23E7E1DE8);
  }

  return result;
}

uint64_t sub_23E79BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  v6[25] = swift_task_alloc();
  v7 = sub_23E7DD208();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  sub_23E7DD538();
  v6[29] = sub_23E7DD528();
  v9 = sub_23E7DD518();
  v6[30] = v9;
  v6[31] = v8;

  return MEMORY[0x2822009F8](sub_23E79BFBC, v9, v8);
}

uint64_t sub_23E79BFBC()
{
  v1 = v0[22];
  v2 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) + 40));
  v0[32] = v2;
  if (v2)
  {
    v3 = sub_23E7DD298();
    [v2 setNowPlayingInfo_];
  }

  if (!*(v0[24] + 16) || (v4 = sub_23E7A35A4(2), (v5 & 1) == 0))
  {
    v10 = v0[26];
    v11 = v0[27];
    v12 = v0[25];

    (*(v11 + 56))(v12, 1, 1, v10);
    goto LABEL_8;
  }

  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[25];
  sub_23E7A6134(*(v0[24] + 56) + 32 * v4, (v0 + 18));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
  v9 = swift_dynamicCast();
  (*(v7 + 56))(v8, v9 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {

LABEL_8:
    sub_23E7996FC(v0[25], &qword_27E34FFD0, &qword_23E7E1D98);

    v13 = v0[1];

    return v13();
  }

  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_23E79C22C;
  v16 = v0[28];

  return sub_23E79C698(v16, 600.0, 600.0);
}

uint64_t sub_23E79C22C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_23E79C354, v4, v3);
}

uint64_t sub_23E79C354()
{
  v21 = v0;
  v1 = v0[34];

  if (v1)
  {
    v2 = v0[34];
    v3 = v0[23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD8, &qword_23E7E1DA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E7E1B90;
    *(inited + 32) = sub_23E7DD328();
    *(inited + 40) = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = objc_allocWithZone(MEMORY[0x277CD5DE8]);
    v0[16] = sub_23E7A65A0;
    v0[17] = v6;
    v0[12] = MEMORY[0x277D85DD0];
    v0[13] = 1107296256;
    v0[14] = sub_23E7A309C;
    v0[15] = &block_descriptor_39;
    v8 = _Block_copy(v0 + 12);
    sub_23E7DC9D8();
    v9 = v2;
    v10 = [v7 initWithBoundsSize:v8 requestHandler:{600.0, 600.0}];
    _Block_release(v8);

    *(inited + 72) = sub_23E7A68E0(0, &qword_27E34FFE0, 0x277CD5DE8);
    *(inited + 48) = v10;
    v11 = sub_23E7ADB64(inited);
    swift_setDeallocating();
    sub_23E7996FC(inited + 32, &qword_27E34FFE8, &qword_23E7E1DB0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v3;
    sub_23E7A5CD0(v11, sub_23E7A3BE8, 0, isUniquelyReferenced_nonNull_native, &v20);

    v13 = v0[32];
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[26];
    if (v13)
    {
      v17 = sub_23E7DD298();

      [v13 setNowPlayingInfo_];

      (*(v15 + 8))(v14, v16);
    }

    else
    {
      (*(v15 + 8))(v0[28], v0[26]);
    }
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_23E79C698(uint64_t a1, double a2, double a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  v4 = sub_23E7DD1C8();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_23E7DD1F8();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_23E7DCCF8();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E79C84C, 0, 0);
}

uint64_t sub_23E79C84C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v2 + 32);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v2 + 32) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x28211ED00](a1, a2);
  }

  v5 = *(v2 + 104);
  v16 = *(v2 + 96);
  v7 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8 = *(v2 + 72);
  v15 = *(v2 + 64);
  v10 = *(v2 + 48);
  v9 = *(v2 + 56);
  v11 = *(v2 + 40);
  sub_23E7DD1E8();
  (*(v10 + 104))(v9, *MEMORY[0x277D2B208], v11);
  sub_23E7DD1D8();
  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v7, v15);
  if ((*(v5 + 48))(v6, 1, v16) != 1)
  {
    (*(*(v2 + 104) + 32))(*(v2 + 112), *(v2 + 88), *(v2 + 96));
    *(v2 + 120) = [objc_opt_self() sharedSession];
    v14 = swift_task_alloc();
    *(v2 + 128) = v14;
    *v14 = v2;
    v14[1] = sub_23E79CB1C;
    a1 = *(v2 + 112);
    a2 = 0;

    return MEMORY[0x28211ED00](a1, a2);
  }

  sub_23E7996FC(*(v2 + 88), &qword_27E34FE88, &qword_23E7E1D10);

  v12 = *(v2 + 8);

  return v12(0);
}

uint64_t sub_23E79CB1C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 120);
  *(*v4 + 136) = v3;

  if (v3)
  {
    v10 = sub_23E79CD80;
  }

  else
  {

    *(v8 + 144) = a2;
    *(v8 + 152) = a1;
    v10 = sub_23E79CC78;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_23E79CC78()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = sub_23E7DCD08();
  v8 = [v6 initWithData_];

  sub_23E799670(v2, v1);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_23E79CD80()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_23E79CE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23E7A6710(a3, v25 - v10, &qword_27E34FFB8, &qword_23E7E1D58);
  v12 = sub_23E7DD558();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_23E7DC9E8();
  if (v14 == 1)
  {
    sub_23E7996FC(v11, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23E7DD518();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E7DD378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_23E7DC9E8();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23E79D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23E7A6710(a3, v25 - v10, &qword_27E34FFB8, &qword_23E7E1D58);
  v12 = sub_23E7DD558();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_23E7DC9E8();
  if (v14 == 1)
  {
    sub_23E7996FC(v11, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23E7DD518();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E7DD378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_23E7DC9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_23E79D444()
{
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_23E79D4EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_23E79D5A4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
    sub_23E7DCD98();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
  v5 = v4;
  v6 = a1;
  v7 = sub_23E7DD628();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void sub_23E79D730(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v3 = *(v1 + 72);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
}

void sub_23E79D7EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v4 = *(v3 + 72);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  *a2 = v5;
}

uint64_t sub_23E79D8A8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCD98();
}

void sub_23E79D978(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 48) currentItem];
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
    sub_23E7DCDA8();

    v5 = *(v1 + 64);
    if (v5)
    {
      v6 = v5;
      sub_23E79DB0C(v4, a1);
    }

    else
    {

      v9 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
      (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    }
  }

  else
  {
    v7 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
  }
}

uint64_t sub_23E79DB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v50 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v5 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v51 = &v50 - v10;
  MEMORY[0x28223BE20](v9);
  v52 = &v50 - v11;
  v12 = *(v2 + qword_27E350DE8);
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_16:
    v32 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_23E7A6710(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v8, &qword_27E34FF90, &qword_23E7E1CC0);
    v15 = *&v8[*(v55 + 40)];
    if (v15)
    {
      sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
      v16 = v15;
      v17 = v54;
      v18 = sub_23E7DD628();

      if (v18)
      {
        break;
      }
    }

    ++v14;
    sub_23E7996FC(v8, &qword_27E34FF90, &qword_23E7E1CC0);
    if (v13 == v14)
    {
      goto LABEL_16;
    }
  }

  v19 = v51;
  sub_23E7A6054(v8, v51);
  v5 = v52;
  sub_23E7A6054(v19, v52);
  v20 = sub_23E79AFDC();
  if (!*(v20 + 16) || (v21 = sub_23E7A35A4(0), (v22 & 1) == 0))
  {
LABEL_17:

    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
LABEL_18:
    v34 = v53;
    v35 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  }

  sub_23E7A6134(*(v20 + 56) + 32 * v21, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
  if (!swift_dynamicCast())
  {
    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
LABEL_20:

    goto LABEL_18;
  }

  v23 = v57;
  if (!*(v20 + 16) || (v24 = v56, v25 = sub_23E7A35A4(1), (v26 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_23E7A6134(*(v20 + 56) + 32 * v25, &v58);
  if (!swift_dynamicCast())
  {
LABEL_23:
    sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);

    goto LABEL_20;
  }

  v54 = v56;
  v55 = v24;
  v51 = v57;
  if (*(v20 + 16) && (v27 = sub_23E7A35A4(2), (v28 & 1) != 0))
  {
    sub_23E7A6134(*(v20 + 56) + 32 * v27, &v58);

    v29 = sub_23E7DD208();
    v30 = v50;
    v31 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v30, v31 ^ 1u, 1, v29);
  }

  else
  {

    v36 = sub_23E7DD208();
    (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  }

  [v17 currentTime];
  sub_23E7DD618();
  if ((v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [v17 currentTime];
    sub_23E7DD618();
  }

  [v17 duration];
  sub_23E7DD618();
  if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    [v17 duration];
    sub_23E7DD618();
  }

  v39 = sub_23E7DDA48();
  v41 = v40;
  v42 = sub_23E7DDA48();
  v44 = v43;
  sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
  v45 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v46 = v53;
  v47 = v50;
  sub_23E7A6710(v50, v53 + *(v45 + 32), &qword_27E34FFD0, &qword_23E7E1D98);
  v48 = v54;
  *v46 = v55;
  v46[1] = v23;
  v49 = v51;
  v46[2] = v48;
  v46[3] = v49;
  v46[4] = v39;
  v46[5] = v41;
  v46[6] = v42;
  v46[7] = v44;
  (*(*(v45 - 8) + 56))(v46, 0, 1, v45);
  return sub_23E7996FC(v47, &qword_27E34FFD0, &qword_23E7E1D98);
}

uint64_t (*sub_23E79E174())(unsigned __int8 *a1)
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for AudioSessionManager()) init];
  *(v0 + 32) = &unk_285111878;
  *(v0 + 40) = 1;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350088, &qword_23E7E5900);
  v2 = swift_allocObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 0;
  *(v0 + 72) = v2;
  sub_23E7DCDB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E7E1BA0;
  v4 = *(v0 + 48);
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277CD5FF8]);
  sub_23E7A68E0(0, &qword_27E350090, 0x277CE6598);
  v6 = v4;
  v7 = sub_23E7DD488();

  v8 = [v5 initWithPlayers_];

  *(v1 + 3) = v8;
  [v8 setAutomaticallyPublishesNowPlayingInfo_];
  v9 = *(v1 + 6);
  v10 = type metadata accessor for QueuePlayerObserver();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation] = 0;
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation] = 0;
  v12 = &v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = &v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange];
  *v13 = nullsub_1;
  v13[1] = 0;
  *&v11[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_player] = v9;
  v28.receiver = v11;
  v28.super_class = v10;
  v14 = v9;
  v15 = objc_msgSendSuper2(&v28, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = v15;
  v17 = sub_23E7DCCC8();

  v18 = *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation];
  *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_rateObservation] = v17;

  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = sub_23E7DCCC8();

  v20 = *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation];
  *&v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_itemObservation] = v19;

  *(v1 + 7) = v16;
  v21 = &v16[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  *v21 = sub_23E7A6A0C;
  v21[1] = v1;
  v22 = v16;
  sub_23E7DC9E8();

  v23 = (*(v1 + 7) + OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange);
  *v23 = sub_23E7A6A14;
  v23[1] = v1;
  sub_23E7DC9E8();

  v24 = *(v1 + 2);
  swift_allocObject();
  swift_weakInit();
  v25 = *&v24[OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler];
  v26 = v24;
  sub_23E7DC9E8();
  os_unfair_lock_lock((v25 + 32));
  sub_23E7A6A5C((v25 + 16));
  os_unfair_lock_unlock((v25 + 32));

  return v1;
}

uint64_t sub_23E79E5E4(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v4 = sub_23E7DCE88();
  __swift_project_value_buffer(v4, qword_27E35A110);
  v5 = sub_23E7DCE68();
  v6 = sub_23E7DD5E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    v9 = 0xE400000000000000;
    *v7 = 136315138;
    v10 = 1701602409;
    v11 = 0xE600000000000000;
    v12 = 0x646573756170;
    if (v3 != 2)
    {
      v12 = 0x676E6979616C70;
      v11 = 0xE700000000000000;
    }

    if (v3)
    {
      v10 = 0x676E6964616F6CLL;
      v9 = 0xE700000000000000;
    }

    if (v3 <= 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v3 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_23E7D2CA4(v13, v14, &v20);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_23E790000, v5, v6, "QueuePlayer playback changed to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23EF13B60](v8, -1, -1);
    MEMORY[0x23EF13B60](v7, -1, -1);
  }

  swift_getKeyPath();
  v20 = a2;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v16 = a2[9];
  os_unfair_lock_lock((v16 + 20));
  v17 = *(v16 + 16);
  os_unfair_lock_unlock((v16 + 20));
  result = sub_23E7A70AC(v17, v3);
  if ((result & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v20 = a2;
    sub_23E7DCD98();
  }

  return result;
}

void sub_23E79E8AC(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    swift_getKeyPath();
    sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
    sub_23E7DCDA8();

    v18 = *(a3 + 72);
    os_unfair_lock_lock((v18 + 20));
    v19 = *(v18 + 16);
    os_unfair_lock_unlock((v18 + 20));
    if (v19 <= 1 && v19)
    {
    }

    else
    {
      v20 = sub_23E7DD8E8();

      if ((v20 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v21 = sub_23E7DCE88();
    __swift_project_value_buffer(v21, qword_27E35A110);
    v22 = sub_23E7DCE68();
    v23 = sub_23E7DD5C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23E790000, v22, v23, "QueuePlayer ignoring item update to nil while loading", v24, 2u);
      MEMORY[0x23EF13B60](v24, -1, -1);
    }

    return;
  }

LABEL_2:
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v6 = *(a3 + 72);
  os_unfair_lock_lock(v6 + 5);
  os_unfair_lock_unlock(v6 + 5);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23E7DCD98();

  if (!a2)
  {
    swift_getKeyPath();
    sub_23E7DCDA8();

    v8 = *(a3 + 64);
    if (v8)
    {
      v9 = v8;
      v10 = sub_23E79ED34();
      if (v10 >> 62)
      {
        v25 = v10;
        v11 = sub_23E7DD798();
        v10 = v25;
        if (v11)
        {
LABEL_6:
          v12 = __OFSUB__(v11, 1);
          v13 = v11 - 1;
          if (v12)
          {
            __break(1u);
          }

          else if ((v10 & 0xC000000000000001) == 0)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v14 = *(v10 + 8 * v13 + 32);
              goto LABEL_11;
            }

            __break(1u);
            return;
          }

          v14 = MEMORY[0x23EF131A0](v13);
LABEL_11:
          v15 = v14;

          if (a1)
          {
            sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
            v16 = a1;
            v17 = sub_23E7DD628();

            if (v17)
            {
              goto LABEL_29;
            }
          }

          else
          {
          }

          goto LABEL_28;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_6;
        }
      }

      if (!a1)
      {
LABEL_29:
        v26 = sub_23E79ED34();
        sub_23E79EEE4(v26);

        return;
      }

LABEL_28:
    }
  }
}

uint64_t sub_23E79ED34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = 0;
  v7 = *(v0 + qword_27E350DE8);
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  while (1)
  {
    if (v8 == v6)
    {
      return v11;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    sub_23E7A6710(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6++, v5, &qword_27E34FF90, &qword_23E7E1CC0);
    v9 = *&v5[*(v1 + 40)];
    v10 = v9;
    result = sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
    if (v9)
    {
      MEMORY[0x23EF12ED0](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23E7DD4B8();
      }

      result = sub_23E7DD4D8();
      v11 = v12;
    }
  }

  __break(1u);
  return result;
}

id sub_23E79EEE4(unint64_t a1)
{
  v3 = [v1 items];
  sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
  v4 = sub_23E7DD498();

  if (v4 >> 62)
  {
    v5 = sub_23E7DD798();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    result = [v1 removeAllItems];
  }

  if (a1 >> 62)
  {
    result = sub_23E7DD798();
    v7 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EF131A0](i, a1);
    }

    else
    {
      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    [v1 insertItem:v9 afterItem:0];
  }

LABEL_15:
  v11 = [v1 currentItem];
  if (v11)
  {
    v12 = v11;
    [v11 currentTime];
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 8);
    v15 = *(MEMORY[0x277CC08F0] + 12);
    v16 = *(MEMORY[0x277CC08F0] + 16);
    if (sub_23E7DD5F8())
    {
      v17 = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;
      [v1 seekToTime_];
    }
  }

  return [v1 play];
}

void sub_23E79F0D4(uint64_t a1, char a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-1] - v7;
  if (a1)
  {
    if (a1 == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        [*(Strong + 48) pause];
LABEL_5:
      }
    }
  }

  else if (a2)
  {
    v10 = sub_23E7DD558();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a3;
    sub_23E7DC9E8();
    sub_23E79F778(0, 0, v8, &unk_23E7E1F10, v11);
  }

  else
  {
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = v12;
      [*(v12 + 48) removeAllItems];
      [*(v13 + 48) pause];
      v14 = [objc_opt_self() sharedInstance];
      v20[0] = 0;
      v15 = [v14 setActive:0 withOptions:0 error:v20];

      if (v15)
      {
        v16 = v20[0];
        goto LABEL_5;
      }

      v17 = v20[0];
      v18 = sub_23E7DCC78();

      swift_willThrow();
    }
  }
}

uint64_t sub_23E79F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23E79F35C, 0, 0);
}

uint64_t sub_23E79F35C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_23E79F450;

    return sub_23E79F5FC();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23E79F450()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_23E79F598;
  }

  else
  {

    v2 = sub_23E79F56C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E79F598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E79F61C()
{
  v1 = *(v0[3] + 48);
  v2 = [v1 currentItem];
  if (v2 && (v3 = v2, v4 = [v2 status], v3, v4 == 2) && (v5 = v0[3], swift_getKeyPath(), v0[2] = v5, sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50), sub_23E7DCDA8(), , (v6 = *(v5 + 64)) != 0))
  {
    v7 = v6;
    v8 = sub_23E79ED34();
    sub_23E79EEE4(v8);
  }

  else
  {
    [v1 play];
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E79F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23E7A6710(a3, v22 - v9, &qword_27E34FFB8, &qword_23E7E1D58);
  v11 = sub_23E7DD558();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_23E7DC9E8();
  if (v13 == 1)
  {
    sub_23E7996FC(v10, &qword_27E34FFB8, &qword_23E7E1D58);
  }

  else
  {
    sub_23E7DD548();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23E7DD518();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23E7DD378() + 32;
      sub_23E7DC9E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350098, &qword_23E7E1F18);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E7996FC(a3, &qword_27E34FFB8, &qword_23E7E1D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350098, &qword_23E7E1F18);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_23E79FA34()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  [v1 removeAllItems];
  [v1 pause];
  v2 = [objc_opt_self() sharedInstance];
  v8[0] = 0;
  v3 = [v2 setActive:0 withOptions:0 error:v8];

  v4 = v8[0];
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    v7 = sub_23E7DCC78();

    swift_willThrow();
  }
}

uint64_t sub_23E79FB68(_OWORD *a1, uint64_t a2)
{
  *(v3 + 528) = v2;
  *(v3 + 520) = a2;
  v5 = sub_23E7DCCF8();
  *(v3 + 536) = v5;
  *(v3 + 544) = *(v5 - 8);
  *(v3 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  *(v3 + 560) = swift_task_alloc();
  *(v3 + 568) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  *(v3 + 576) = v6;
  *(v3 + 584) = *(v6 - 8);
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  v7 = sub_23E7DCE58();
  *(v3 + 608) = v7;
  *(v3 + 616) = *(v7 - 8);
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  v8 = a1[1];
  *(v3 + 272) = *a1;
  *(v3 + 288) = v8;
  *(v3 + 304) = a1[2];
  *(v3 + 315) = *(a1 + 43);

  return MEMORY[0x2822009F8](sub_23E79FDA0, 0, 0);
}

uint64_t sub_23E79FDA0()
{
  if (*(v0 + 329) && *(v0 + 329) == 1)
  {
  }

  else
  {
    v1 = sub_23E7DD8E8();

    if ((v1 & 1) == 0)
    {
      return sub_23E7DD788();
    }
  }

  sub_23E7A16EC();
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = *MEMORY[0x277CB8030];
  *(v0 + 480) = 0;
  v5 = [v3 setCategory:v4 error:v0 + 480];

  v6 = *(v0 + 480);
  if (v5)
  {
    v7 = v6;
    v8 = [v2 sharedInstance];
    *(v0 + 640) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 331;
    *(v0 + 24) = sub_23E7A0150;
    v9 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA8, &qword_23E7E1D18);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_23E7A2FD0;
    *(v0 + 168) = &block_descriptor_10;
    *(v0 + 176) = v9;
    [v8 activateWithOptions:0 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v10 = v6;
    sub_23E7DCC78();

    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_23E7A0150()
{
  v1 = *(*v0 + 48);
  *(*v0 + 648) = v1;
  if (v1)
  {
    v2 = sub_23E7A07BC;
  }

  else
  {
    v2 = sub_23E7A028C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7A028C()
{
  v1 = *(v0 + 528);

  v2 = *(v1 + 24);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 395;
  *(v0 + 88) = sub_23E7A03E8;
  v3 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF88, &qword_23E7E1CB8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_23E7A1B60;
  *(v0 + 232) = &block_descriptor_13;
  *(v0 + 240) = v3;
  [v2 becomeActiveIfPossibleWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23E7A03E8()
{

  return MEMORY[0x2822009F8](sub_23E7A04F4, 0, 0);
}

uint64_t sub_23E7A04F4()
{
  v12 = v0;
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 528);
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  *(v0 + 656) = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  *(v0 + 488) = v1;
  *(v0 + 664) = sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCD98();

  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v3 = sub_23E7DCE88();
  *(v0 + 672) = __swift_project_value_buffer(v3, qword_27E35A110);
  sub_23E794BD8(v0 + 272, v0 + 336);
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5E8();
  sub_23E7A4C68(v0 + 272);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23E7D2CA4(*(v0 + 288), *(v0 + 296), v11);
    _os_log_impl(&dword_23E790000, v4, v5, "QueuePlayer playing playlist %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF13B60](v7, -1, -1);
    MEMORY[0x23EF13B60](v6, -1, -1);
  }

  v8 = *(v0 + 288);
  *(v0 + 400) = *(v0 + 272);
  *(v0 + 416) = v8;
  *(v0 + 432) = *(v0 + 304);
  *(v0 + 443) = *(v0 + 315);
  v9 = swift_task_alloc();
  *(v0 + 680) = v9;
  *v9 = v0;
  v9[1] = sub_23E7A08BC;

  return sub_23E7BA450(v0 + 400);
}

uint64_t sub_23E7A07BC(uint64_t a1)
{
  v2 = *(v1 + 640);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23E7A08BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_23E7A0CE4;
  }

  else
  {
    v4 = sub_23E7A0A00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7A0A00()
{
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  *(v0 + 704) = v2;
  if (v2)
  {
    v3 = *(v0 + 616);
    *(v0 + 712) = sub_23E7DD538();
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = *(v3 + 64);
    *(v0 + 332) = v5;
    *(v0 + 720) = *(v3 + 56);
    *(v0 + 728) = v4;
    *(v0 + 736) = *MEMORY[0x277CEFE38];
    *(v0 + 752) = MEMORY[0x277D84F90];
    *(v0 + 744) = 0;
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 608);
    *(v0 + 760) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v4(v6, v1 + ((v5 + 32) & ~v5), v8);
    v4(v7, v6, v8);
    sub_23E7DC9D8();
    *(v0 + 768) = sub_23E7DD528();
    v10 = sub_23E7DD518();

    return MEMORY[0x2822009F8](sub_23E7A1114, v10, v9);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    sub_23E7A48AC();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
    v12 = objc_allocWithZone(v11);
    *&v12[qword_27E350DE8] = v18;
    *(v0 + 464) = v12;
    *(v0 + 472) = v11;
    v13 = objc_msgSendSuper2((v0 + 464), sel_init);
    v14 = v13;
    sub_23E79D5A4(v13);
    v15 = sub_23E79ED34();
    sub_23E79EEE4(v15);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_23E7A0CE4()
{
  v1 = *(v0 + 696);
  type metadata accessor for Code(0);
  *(v0 + 496) = -7007;
  v2 = v1;
  sub_23E7A600C(&qword_27E34FCD0, type metadata accessor for Code, &unk_23E7E10D4);
  v3 = sub_23E7DCBA8();

  if (v3)
  {
    v4 = *(v0 + 528);

    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    *(v0 + 512) = v4;
    sub_23E7DCD98();

    v6 = sub_23E7DCE68();
    v7 = sub_23E7DD5D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23E790000, v6, v7, "QueuePlayer got privacy acknowledgement error", v8, 2u);
      MEMORY[0x23EF13B60](v8, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 696);
    v11 = v10;
    v12 = sub_23E7DCE68();
    v13 = sub_23E7DD5D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 696);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_23E790000, v12, v13, "QueuePlayer failed to fetch playback items %@", v15, 0xCu);
      sub_23E7996FC(v16, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v16, -1, -1);
      MEMORY[0x23EF13B60](v15, -1, -1);
    }

    v19 = *(v0 + 696);
    v20 = *(v0 + 528);

    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v0 + 504) = v20;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23E7A1114()
{
  v1 = v0[91];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[74];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[68];
  v30 = v0[67];
  v9 = v0[65];

  v1(v4, v2, v3);
  *(v4 + *(v5 + 36)) = v9;
  sub_23E799D80(v6);
  sub_23E7A6710(v6, v7, &qword_27E34FE88, &qword_23E7E1D10);
  if ((*(v8 + 48))(v7, 1, v30) == 1)
  {
    sub_23E7996FC(v0[71], &qword_27E34FE88, &qword_23E7E1D10);
    v10 = 0;
  }

  else
  {
    v11 = v0[92];
    (*(v0[68] + 32))(v0[69], v0[70], v0[67]);
    v12 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v13 = sub_23E7DCCD8();
    v10 = [v12 initWithURL_];

    if (!v11)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v14, v15, v16);
    }

    v17 = v0[71];
    v18 = v0[69];
    v19 = v0[68];
    v20 = v0[67];
    [v10 setMediaKind_];
    (*(v19 + 8))(v18, v20);
    sub_23E7996FC(v17, &qword_27E34FE88, &qword_23E7E1D10);
  }

  v21 = v0[79];
  v22 = v0[78];
  v23 = v0[77];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  *(v26 + *(v0[72] + 40)) = v10;
  v27 = sub_23E79AFDC();
  sub_23E79B314(v27);

  v28 = *(v23 + 8);
  v28(v22, v24);
  sub_23E7A6054(v26, v25);
  v28(v21, v24);
  v14 = sub_23E7A13A4;
  v15 = 0;
  v16 = 0;

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23E7A13A4()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 752);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23E7D28D8(0, v2[2] + 1, 1, *(v0 + 752));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_23E7D28D8((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 704);
  v6 = *(v0 + 600);
  v7 = *(v0 + 584);
  v8 = *(v0 + 744) + 1;
  v2[2] = v4 + 1;
  sub_23E7A6054(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
  if (v8 == v5)
  {

    sub_23E7A48AC();
    v9 = v2;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFA0, &qword_23E7E1CF8);
    v11 = objc_allocWithZone(v10);
    *&v11[qword_27E350DE8] = v9;
    *(v0 + 464) = v11;
    *(v0 + 472) = v10;
    v12 = objc_msgSendSuper2((v0 + 464), sel_init);
    v13 = v12;
    sub_23E79D5A4(v12);
    v14 = sub_23E79ED34();
    sub_23E79EEE4(v14);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 744) + 1;
    *(v0 + 752) = v2;
    *(v0 + 744) = v17;
    v18 = *(v0 + 728);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 608);
    v22 = *(v0 + 688) + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + *(v0 + 720) * v17;
    *(v0 + 760) = (*(v0 + 616) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v19, v22, v21);
    v18(v20, v19, v21);
    sub_23E7DC9D8();
    *(v0 + 768) = sub_23E7DD528();
    v24 = sub_23E7DD518();

    return MEMORY[0x2822009F8](sub_23E7A1114, v24, v23);
  }
}

uint64_t sub_23E7A16EC()
{
  v1 = [*(v0 + 24) remoteCommandCenter];
  v2 = [v1 playCommand];
  v22 = sub_23E7A65C8;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_44;
  v3 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v4 = [v2 addTargetWithHandler_];
  _Block_release(v3);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v5 = [v1 pauseCommand];
  v22 = sub_23E7A65F0;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_47;
  v6 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v7 = [v5 addTargetWithHandler_];
  _Block_release(v6);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v8 = [v1 nextTrackCommand];
  v22 = sub_23E7A6618;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_50;
  v9 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v10 = [v8 addTargetWithHandler_];
  _Block_release(v9);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v11 = [v1 previousTrackCommand];
  v22 = sub_23E7A6640;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_53;
  v12 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v13 = [v11 addTargetWithHandler_];
  _Block_release(v12);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v14 = [v1 changePlaybackPositionCommand];
  v22 = sub_23E7A6648;
  v23 = v0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23E7A29BC;
  v21 = &block_descriptor_56;
  v15 = _Block_copy(&v18);
  sub_23E7DC9E8();

  v16 = [v14 addTargetWithHandler_];
  _Block_release(v15);

  sub_23E7DD6A8();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v18);
}

uint64_t sub_23E7A1B60(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

id sub_23E7A1BBC()
{
  v2 = v1;
  v3 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v25 - v4;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  v30[0] = v0;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v7 = v0[8];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_23E79ED34();

  if (v9 >> 62)
  {
    result = sub_23E7DD798();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v9 + 32); ; i = MEMORY[0x23EF131A0](0, v9))
  {
    v12 = i;

LABEL_11:
    v27 = v3[6];
    v13 = [v27 currentItem];
    v14 = v13;
    if (!v12)
    {
      if (!v13)
      {
LABEL_16:
        v16 = *(MEMORY[0x277CC08F0] + 16);
        v30[0] = *MEMORY[0x277CC08F0];
        v30[1] = *(MEMORY[0x277CC08F0] + 8);
        v30[2] = v16;
        return [v27 seekToTime_];
      }

      goto LABEL_18;
    }

    if (!v13)
    {
      v14 = v12;
LABEL_18:

      goto LABEL_19;
    }

    sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
    v15 = sub_23E7DD628();

    if (v15)
    {
      goto LABEL_16;
    }

LABEL_19:
    v28 = [v27 currentItem];
    if (!v28)
    {
      goto LABEL_31;
    }

    swift_getKeyPath();
    v30[0] = v3;
    v9 = v6 + v3;
    sub_23E7DCDA8();

    v17 = v3[8];
    if (!v17)
    {
      goto LABEL_30;
    }

    v25 = v2;
    v18 = *&v17[qword_27E350DE8];
    v2 = *(v18 + 16);
    v26 = v17;
    if (!v2)
    {
      break;
    }

    v19 = 0;
    v3 = &qword_23E7E1CC0;
    while (v19 < *(v18 + 16))
    {
      sub_23E7A6710(v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19, v5, &qword_27E34FF90, &qword_23E7E1CC0);
      v20 = *&v5[*(v31 + 40)];
      if (v20)
      {
        sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
        v6 = v20;
        v21 = v28;
        v9 = sub_23E7DD628();

        sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
        if (v9)
        {
          v22 = v26;
          v23 = sub_23E7A2D7C(v19 - 1);

          sub_23E79EEE4(v23);
        }
      }

      else
      {
        sub_23E7996FC(v5, &qword_27E34FF90, &qword_23E7E1CC0);
      }

      if (v2 == ++v19)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

LABEL_29:

LABEL_30:
LABEL_31:
  sub_23E799564();
  swift_allocError();
  *v24 = 3;
  return swift_willThrow();
}

id *sub_23E7A2000()
{

  v1 = OBJC_IVAR____TtC13AdaptiveMusic11QueuePlayer___observationRegistrar;
  v2 = sub_23E7DCDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_23E7A2098()
{
  sub_23E7A2000();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QueuePlayer(uint64_t a1)
{
  result = qword_27E34FF70;
  if (!qword_27E34FF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7A2144(uint64_t a1)
{
  result = sub_23E7DCDC8();
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

void sub_23E7A2224(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v4 = *(v3 + 72);
  os_unfair_lock_lock((v4 + 20));
  *a1 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
}

uint64_t sub_23E7A2304(_OWORD *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A23AC;

  return sub_23E79FB68(a1, a2);
}

uint64_t sub_23E7A23AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23E7A24B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7A6BDC;

  return sub_23E79F5FC();
}

uint64_t sub_23E7A2568()
{
  [*(*(v0 + 16) + 48) advanceToNextItem];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A25D8()
{
  sub_23E7A1BBC();
  v1 = *(v0 + 8);

  return v1();
}

id sub_23E7A2654()
{
  v1 = *(*v0 + 48);
  v2 = *(MEMORY[0x277CC08F0] + 16);
  v4[0] = *MEMORY[0x277CC08F0];
  v4[1] = *(MEMORY[0x277CC08F0] + 8);
  v4[2] = v2;
  return [v1 seekToTime_];
}

uint64_t sub_23E7A26CC(double a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = *v1;
  return MEMORY[0x2822009F8](sub_23E7A26F4, 0, 0);
}

uint64_t sub_23E7A26F4()
{
  v1 = v0 + 2;
  v2 = *(v0[19] + 48);
  v3 = sub_23E7DD608();
  v5 = v4;
  v7 = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E7A2840;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF88, &qword_23E7E1CB8);
  v0[20] = v3;
  v10 = v0 + 20;
  *(v10 - 3) = v9;
  *(v10 - 10) = MEMORY[0x277D85DD0];
  *(v10 - 9) = 1107296256;
  *(v10 - 8) = sub_23E7A1B60;
  *(v10 - 7) = &block_descriptor;
  *(v10 - 6) = v8;
  v10[1] = v5;
  v10[2] = v7;
  [v2 seekToTime:v10 completionHandler:?];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23E7A2840()
{

  return MEMORY[0x2822009F8](sub_23E7A2920, 0, 0);
}

uint64_t sub_23E7A2938(uint64_t a1)
{
  result = sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E7A29BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_23E7DC9E8();
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_23E7A2A14(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v17 - v4);
  v6 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 48);
  v11 = [v10 currentItem];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  swift_getKeyPath();
  v17[0] = a2;
  sub_23E7A600C(&qword_27E34FF80, type metadata accessor for QueuePlayer, &unk_23E7E1C50);
  sub_23E7DCDA8();

  v13 = *(a2 + 64);
  if (!v13)
  {

LABEL_7:
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_8;
  }

  v14 = v13;
  sub_23E79DB0C(v12, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_8:
    sub_23E7996FC(v5, &qword_27E350038, &qword_23E7E1E00);
LABEL_9:
    sub_23E7A1BBC();
    return 0;
  }

  sub_23E7A6650(v5, v9);
  if ((sub_23E7DDA18() & 1) == 0)
  {
    sub_23E7A66B4(v9);
    goto LABEL_9;
  }

  v15 = *(MEMORY[0x277CC08F0] + 16);
  v17[0] = *MEMORY[0x277CC08F0];
  v17[1] = *(MEMORY[0x277CC08F0] + 8);
  v17[2] = v15;
  [v10 seekToTime_];
  sub_23E7A66B4(v9);
  return 0;
}

uint64_t sub_23E7A2CCC(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return 200;
  }

  v5 = v4;
  v6 = *(a2 + 48);
  v7 = a1;
  [v5 positionTime];
  v12 = sub_23E7DD608();
  v13 = v8;
  v14 = v9;
  v15 = v10;
  [v6 seekToTime_];

  return 0;
}

uint64_t sub_23E7A2D7C(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = sub_23E79ED34();
    v4 = v3;
    v5 = v3 >> 62;
    if (v3 >> 62)
    {
      v6 = sub_23E7DD798();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v6;
    }

    if (v6 < 0)
    {
      v7 = a1;
    }

    if (a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v6 < v8)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5)
    {
      if (v4 < 0)
      {
        v1 = v4;
      }

      else
      {
        v1 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_23E7DD798() < v8)
      {
        goto LABEL_46;
      }

      v9 = sub_23E7DD798();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 < v8)
      {
        goto LABEL_46;
      }
    }

    if (v9 < v6)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v6 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((v4 & 0xC000000000000001) == 0 || v8 == v6)
    {
      sub_23E7DC9D8();
    }

    else
    {
      if (v8 >= v6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
      sub_23E7DC9D8();
      v11 = v8;
      do
      {
        v12 = v11 + 1;
        sub_23E7DD738();
        v11 = v12;
      }

      while (v6 != v12);
    }

    if (v5)
    {
      v1 = sub_23E7DD7A8();
      v5 = v13;
      v8 = v14;
      v6 = v15;

      if (v6)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v1 = v4 & 0xFFFFFFFFFFFFFF8;
      v5 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
      v6 = (2 * v6) | 1;
      if (v6)
      {
LABEL_36:
        sub_23E7DD918();
        swift_unknownObjectRetain_n();
        v17 = swift_dynamicCastClass();
        if (!v17)
        {
          swift_unknownObjectRelease();
          v17 = MEMORY[0x277D84F90];
        }

        v18 = *(v17 + 16);

        if (!__OFSUB__(v6 >> 1, v8))
        {
          if (v18 == (v6 >> 1) - v8)
          {
            v10 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (!v10)
            {
              swift_unknownObjectRelease();
              v10 = MEMORY[0x277D84F90];
            }

            goto LABEL_42;
          }

          goto LABEL_51;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        swift_unknownObjectRelease_n();
      }
    }

    sub_23E7A4B1C(v1, v5, v8, v6);
    v10 = v16;
LABEL_42:
    swift_unknownObjectRelease();
    return v10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23E7A2FD0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id sub_23E7A309C(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = sub_23E7DC9E8();
  v7 = v5(v6, a2, a3);

  return v7;
}

void sub_23E7A3108(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23E79D5A4(v1);
}

uint64_t sub_23E7A3138(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23E7A6BEC;

  return v6(a1);
}

uint64_t sub_23E7A3230(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23E7A3328;

  return v6(a1);
}

uint64_t sub_23E7A3328()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23E7A3420(uint64_t a1)
{
  v1 = a1;
  sub_23E7DD9A8();
  sub_23E7DD398();

  v2 = sub_23E7DD9C8();

  return sub_23E7A36C4(v1, v2);
}

unint64_t sub_23E7A352C(uint64_t a1, uint64_t a2)
{
  sub_23E7DD9A8();
  sub_23E7DD398();
  v4 = sub_23E7DD9C8();

  return sub_23E7A38AC(a1, a2, v4);
}

unint64_t sub_23E7A35A4(uint64_t a1)
{
  v1 = a1;
  sub_23E7DD9A8();
  sub_23E7DD398();

  v2 = sub_23E7DD9C8();

  return sub_23E7A3964(v1, v2);
}

unint64_t sub_23E7A3680(uint64_t a1)
{
  v2 = sub_23E7DD6C8();

  return sub_23E7A3AFC(a1, v2);
}

unint64_t sub_23E7A36C4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000067;
    v6 = 0xE500000000000000;
    v7 = a1;
    while (1)
    {
      v8 = *(*(v19 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v9 = 0x6C6C696863;
        }

        else
        {
          v9 = 0x69746375646F7270;
        }

        if (*(*(v19 + 48) + v4))
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xEC00000079746976;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x7065656C73;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6E6965626C6C6577;
        }

        else
        {
          v9 = 0x6D6F74737563;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000067;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      if (v7 == 3)
      {
        v11 = 0x6E6965626C6C6577;
      }

      else
      {
        v11 = 0x6D6F74737563;
      }

      if (v7 != 3)
      {
        v5 = 0xE600000000000000;
      }

      if (v7 == 2)
      {
        v11 = 0x7065656C73;
        v5 = 0xE500000000000000;
      }

      if (v7)
      {
        v12 = 0x6C6C696863;
      }

      else
      {
        v12 = 0x69746375646F7270;
      }

      if (!v7)
      {
        v6 = 0xEC00000079746976;
      }

      v13 = v7 <= 1 ? v12 : v11;
      v14 = v7 <= 1 ? v6 : v5;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = sub_23E7DD8E8();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000067;
        v6 = 0xE500000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23E7A38AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23E7DD8E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E7A3964(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x6B726F77747261 : 0x44496D616461;
      v8 = v6 == 2 ? 0xE700000000000000 : 0xE600000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x747369747261 : 0x656C746974;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE500000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6B726F77747261 : 0x44496D616461;
      v14 = v5 == 2 ? 0xE700000000000000 : 0xE600000000000000;
      v15 = v5 ? 0x747369747261 : 0x656C746974;
      v16 = v5 ? 0xE600000000000000 : 0xE500000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_23E7DD8E8();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23E7A3AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23E7A6778(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF13130](v9, a1);
      sub_23E7A67D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23E7A3BE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_23E7A6134((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return sub_23E7DC9D8();
}

uint64_t sub_23E7A3C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
  result = sub_23E7DD7C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_23E7A6190(v24, v30);
      }

      else
      {
        sub_23E7A6134(v24, v30);
      }

      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_23E7A6190(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23E7A3F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
  v33 = v4;
  result = sub_23E7DD7C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23E7A6190(v24, v34);
      }

      else
      {
        sub_23E7A6134(v24, v34);
        sub_23E7DC9D8();
      }

      sub_23E7DD9A8();
      sub_23E7DD398();
      result = sub_23E7DD9C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23E7A6190(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_23E7A41E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
  v2 = *v0;
  v3 = sub_23E7DD7B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + v17);
        sub_23E7A6134(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_23E7A6190(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_23E7A4364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
  v2 = *v0;
  v3 = sub_23E7DD7B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23E7A6134(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23E7A6190(v25, (*(v4 + 56) + v22));
        result = sub_23E7DC9D8();
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_23E7A4508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E7DD6B8() + 1) & ~v5;
    do
    {
      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23E7A4718(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23E7A35A4(a2);
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
      sub_23E7A41E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_23E7A3C34(v14, a3 & 1);
    v9 = sub_23E7A35A4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_23E7DD938();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_23E7A6190(a1, v20);
  }

  else
  {

    return sub_23E7A4844(v9, a2, a1, v19);
  }
}

_OWORD *sub_23E7A4844(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_23E7A6190(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_23E7A48AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  v23 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v26 = &v20 - v6;
  v22 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v21 = v8 - 2;
    while (1)
    {
      v27 = 0;
      result = MEMORY[0x23EF13B80](&v27, 8);
      v12 = (v27 * v8) >> 64;
      if (v8 > v27 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v27 * v8)
        {
          do
          {
            v27 = 0;
            result = MEMORY[0x23EF13B80](&v27, 8);
          }

          while (v13 > v27 * v8);
          v12 = (v27 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = *(v7 + 16);
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = v7;
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v17 = v7 + v25;
        v18 = *(v23 + 72);
        v24 = v18 * v10;
        result = sub_23E7A6710(v17 + v18 * v10, v26, &qword_27E34FF90, &qword_23E7E1CC0);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_23E7A6710(v17 + v18 * v14, v4, &qword_27E34FF90, &qword_23E7E1CC0);
        result = swift_isUniquelyReferenced_nonNull_native();
        v7 = v16;
        if ((result & 1) == 0)
        {
          result = sub_23E7A59B0(v16);
          v7 = result;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_21;
        }

        v19 = v7 + v25;
        result = sub_23E7A60C4(v4, v7 + v25 + v24);
        if (v14 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        result = sub_23E7A60C4(v26, v19 + v18 * v14);
        v9 = v21;
        *v22 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_23E7A4B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_23E7A68E0(0, &qword_27E34FF50, 0x277CE65B0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF98, &qword_23E7E1CF0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_23E7A4C10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void *sub_23E7A4CBC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350058, &qword_23E7E1E20);
  v10 = *(type metadata accessor for Manifest(0) - 8);
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
  v15 = *(type metadata accessor for Manifest(0) - 8);
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

char *sub_23E7A4E94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350070, &qword_23E7E1E50);
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

void *sub_23E7A4FA0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB0, &qword_23E7E1D50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
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

void *sub_23E7A5190(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350078, &qword_23E7E1E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350080, qword_23E7E1E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A52D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350040, &qword_23E7E1E08);
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

char *sub_23E7A53E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350050, &qword_23E7E1E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A54F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350068, &unk_23E7E57C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}