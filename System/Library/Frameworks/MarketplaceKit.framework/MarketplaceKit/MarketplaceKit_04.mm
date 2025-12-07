unint64_t sub_1D964A854()
{
  result = qword_1ECB22A00;
  if (!qword_1ECB22A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A00);
  }

  return result;
}

uint64_t sub_1D964A8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D964A8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D964A954(uint64_t a1)
{
  v2 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D964A9D8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  sub_1D95E9634(319);
  if (v2 <= 0x3F)
  {
    sub_1D960D9D8(319, &qword_1EDCF6218, v1);
    if (v3 <= 0x3F)
    {
      sub_1D966E5B8();
      if (v4 <= 0x3F)
      {
        sub_1D960D9D8(319, &qword_1EDCF6660, MEMORY[0x1E6969080]);
        if (v5 <= 0x3F)
        {
          sub_1D960D9D8(319, &qword_1ECB22A20, MEMORY[0x1E69E6370]);
          if (v6 <= 0x3F)
          {
            sub_1D960D9D8(319, &qword_1ECB22A28, MEMORY[0x1E69E76D8]);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D964ACB8()
{
  result = qword_1ECB22A30;
  if (!qword_1ECB22A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A30);
  }

  return result;
}

unint64_t sub_1D964AD10()
{
  result = qword_1ECB22A38;
  if (!qword_1ECB22A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A38);
  }

  return result;
}

unint64_t sub_1D964AD68()
{
  result = qword_1ECB22A40;
  if (!qword_1ECB22A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A40);
  }

  return result;
}

uint64_t sub_1D964ADBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D657449707061 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEC00000044496E6FLL || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96819D0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF656D614E726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96819F0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7070416265577369 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6972747369447369 && a2 == 0xED0000726F747562 || (sub_1D966EFB8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D614E72656B7361 && a2 == 0xE900000000000065 || (sub_1D966EFB8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xEF676E6972745367 || (sub_1D966EFB8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF65707954726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681A10 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9681A30 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681A50 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_1D966EFB8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9680510 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9680C90 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681A70 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681A90 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D9681AB0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D9681AD0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7265727265666572 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 29;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

__n128 PerformPrivateActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t PerformPrivateActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 56) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1D964B7B4, 0, 0);
}

uint64_t sub_1D964B7B4()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1D964B8B4;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);

  return sub_1D95F1900(v4, v5, v2, v3, v6, sub_1D964C90C, 0);
}

uint64_t sub_1D964B8B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D964B9A8()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x63694C77656E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694C726961706572;
  }
}

uint64_t sub_1D964BA20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D964EB64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D964BA48(uint64_t a1)
{
  v2 = sub_1D964DD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964BA84(uint64_t a1)
{
  v2 = sub_1D964DD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D964BAC0(uint64_t a1)
{
  v2 = sub_1D964DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964BAFC(uint64_t a1)
{
  v2 = sub_1D964DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D964BB38(uint64_t a1)
{
  v2 = sub_1D964DDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964BB74(uint64_t a1)
{
  v2 = sub_1D964DDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D964BBB0(uint64_t a1)
{
  v2 = sub_1D964DE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964BBEC(uint64_t a1)
{
  v2 = sub_1D964DE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformPrivateActionRequest.Request.encode(to:)(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A48, &qword_1D967C5A8);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v23 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A50, &qword_1D967C5B0);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A58, &qword_1D967C5B8);
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A60, &unk_1D967C5C0);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *v1;
  v30 = v1[1];
  v31 = v12;
  v23 = v1[2];
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964DD18();
  sub_1D966F118();
  if (v13)
  {
    if (v13 == 1)
    {
      LOBYTE(v35) = 1;
      sub_1D964DDC0();
      v14 = v34;
      sub_1D966EED8();
      LOBYTE(v35) = 0;
      v15 = v28;
      v16 = v32;
      sub_1D966EF38();
      if (!v16)
      {
        LOBYTE(v35) = 1;
        sub_1D966EF48();
        LOBYTE(v35) = 2;
        sub_1D966EF78();
      }

      (*(v26 + 8))(v5, v15);
    }

    else
    {
      LOBYTE(v35) = 2;
      sub_1D964DD6C();
      v20 = v25;
      v14 = v34;
      sub_1D966EED8();
      v35 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
      sub_1D9618324(&qword_1ECB21810, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6300]);
      v21 = v29;
      sub_1D966EF68();
      (*(v27 + 8))(v20, v21);
    }

    return (*(v33 + 8))(v11, v14);
  }

  else
  {
    v17 = v24;
    LOBYTE(v35) = 0;
    sub_1D964DE14();
    v18 = v34;
    sub_1D966EED8();
    LOBYTE(v35) = 0;
    v19 = v32;
    sub_1D966EF38();
    if (!v19)
    {
      LOBYTE(v35) = 1;
      sub_1D966EF78();
    }

    (*(v17 + 8))(v8, v6);
    return (*(v33 + 8))(v11, v18);
  }
}

uint64_t PerformPrivateActionRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A88, &qword_1D967C5D0);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v44[-v5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A90, &qword_1D967C5D8);
  v50 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v44[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A98, &qword_1D967C5E0);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AA0, &qword_1D967C5E8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44[-v13];
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D964DD18();
  v16 = v53;
  sub_1D966F0F8();
  if (!v16)
  {
    v17 = v52;
    v53 = v12;
    v18 = sub_1D966EEB8();
    v19 = (2 * *(v18 + 16)) | 1;
    v55 = v18;
    v56 = v18 + 32;
    v57 = 0;
    v58 = v19;
    v20 = sub_1D9605E2C();
    if (v20 == 3 || v57 != v58 >> 1)
    {
      v27 = sub_1D966ED58();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v29 = &type metadata for PerformPrivateActionRequest.Request;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v53 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v59) = 1;
          sub_1D964DDC0();
          v21 = v7;
          sub_1D966EDE8();
          LOBYTE(v59) = 0;
          v22 = v46;
          v23 = sub_1D966EE58();
          v25 = v24;
          v52 = v23;
          LOBYTE(v59) = 1;
          v26 = sub_1D966EE68();
          LOBYTE(v59) = 2;
          v40 = sub_1D966EE98();
          (*(v50 + 8))(v21, v22);
          (*(v53 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v41 = v26 & 1 | (v40 << 32);
          v42 = v51;
          v43 = v52;
        }

        else
        {
          LOBYTE(v59) = 2;
          sub_1D964DD6C();
          sub_1D966EDE8();
          v42 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
          sub_1D9618324(&qword_1ECB21820, MEMORY[0x1E69E7708], MEMORY[0x1E69E6330]);
          v35 = v48;
          sub_1D966EE88();
          v36 = v53;
          (*(v49 + 8))(v17, v35);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v25 = 0;
          v41 = 0;
          v43 = v59;
        }
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_1D964DE14();
        v31 = v10;
        sub_1D966EDE8();
        v52 = v11;
        LOBYTE(v59) = 0;
        v32 = v8;
        v33 = sub_1D966EE58();
        v34 = v53;
        v38 = v37;
        v43 = v33;
        LOBYTE(v59) = 1;
        v39 = sub_1D966EE98();
        (*(v47 + 8))(v31, v32);
        (*(v34 + 8))(v14, v52);
        swift_unknownObjectRelease();
        v41 = v39;
        v42 = v51;
        v25 = v38;
      }

      *v42 = v43;
      *(v42 + 8) = v25;
      *(v42 + 16) = v41;
      *(v42 + 24) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t PerformPrivateActionRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_1D964DE68(v2, v3, v4, v5);
}

void sub_1D964C90C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [a1 performPrivateActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t PerformPrivateActionRequest.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!*(v0 + 24))
  {
    sub_1D966ED28();

    v23 = 0xD000000000000020;
    MEMORY[0x1DA7338E0](v1, v2);
    MEMORY[0x1DA7338E0](10272, 0xE200000000000000);
LABEL_11:
    v6 = sub_1D966EFA8();
    MEMORY[0x1DA7338E0](v6);

    MEMORY[0x1DA7338E0](41, 0xE100000000000000);
    return v23;
  }

  if (*(v0 + 24) == 1)
  {
    v23 = 0;
    sub_1D966ED28();
    MEMORY[0x1DA7338E0](0xD00000000000001DLL, 0x80000001D9681B10);
    MEMORY[0x1DA7338E0](v1, v2);
    MEMORY[0x1DA7338E0](0xD000000000000013, 0x80000001D9681B30);
    if (v3)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1DA7338E0](v4, v5);

    MEMORY[0x1DA7338E0](0x737574617473202CLL, 0xEB0000000028203ALL);
    goto LABEL_11;
  }

  sub_1D966ED28();

  v23 = 0xD000000000000014;
  v7 = *(v1 + 16);
  if (v7)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D95FE0C4(0, v7, 0);
    v8 = v21;
    v9 = v1 + 32;
    do
    {
      v9 += 8;
      v10 = sub_1D966EFA8();
      v22 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_1D95FE0C4((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = v22;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
  sub_1D964DE88();
  v17 = sub_1D966E968();
  v19 = v18;

  MEMORY[0x1DA7338E0](v17, v19);

  return v23;
}

uint64_t sub_1D964CD18(uint64_t a1)
{
  v2 = sub_1D964DEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964CD54(uint64_t a1)
{
  v2 = sub_1D964DEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformPrivateActionRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AA8, &qword_1D967C5F0);
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = &v11 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964DE68(v5, v6, v7, v8);
  sub_1D964DEEC();
  sub_1D966F118();
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  sub_1D964DF40();
  v9 = v11;
  sub_1D966EF68();
  sub_1D964DF94(v12, v13, v14, v15);
  return (*(v16 + 8))(v4, v9);
}

uint64_t PerformPrivateActionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AC0, &qword_1D967C5F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964DEEC();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D964DFB4();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D964D0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D964D170(uint64_t a1)
{
  v2 = sub_1D964E008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964D1AC(uint64_t a1)
{
  v2 = sub_1D964E008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D964D1E8(uint64_t a1)
{
  v2 = sub_1D964E05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964D224(uint64_t a1)
{
  v2 = sub_1D964E05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformPrivateActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AD0, &qword_1D967C600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AD8, &qword_1D967C608);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964E008();
  sub_1D966F118();
  sub_1D964E05C();
  sub_1D966EED8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t PerformPrivateActionResponse.Response.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t PerformPrivateActionResponse.Response.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AF0, &qword_1D967C610);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AF8, &qword_1D967C618);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964E008();
  sub_1D966F0F8();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1D966EEB8();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1D9605E30() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1D966ED58();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v16 = &type metadata for PerformPrivateActionResponse.Response;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1D964E05C();
  sub_1D966EDE8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D964D808(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AD0, &qword_1D967C600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22AD8, &qword_1D967C608);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964E008();
  sub_1D966F118();
  sub_1D964E05C();
  sub_1D966EED8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D964D9E8(uint64_t a1)
{
  v2 = sub_1D964E0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964DA24(uint64_t a1)
{
  v2 = sub_1D964E0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformPrivateActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22B00, &qword_1D967C620);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964E0B0();
  sub_1D966F118();
  sub_1D964E104();
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PerformPrivateActionResponse.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22B18, &qword_1D967C628);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964E0B0();
  sub_1D966F0F8();
  if (!v1)
  {
    sub_1D964E158();
    sub_1D966EE88();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D964DD18()
{
  result = qword_1ECB22A68;
  if (!qword_1ECB22A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A68);
  }

  return result;
}

unint64_t sub_1D964DD6C()
{
  result = qword_1ECB22A70;
  if (!qword_1ECB22A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A70);
  }

  return result;
}

unint64_t sub_1D964DDC0()
{
  result = qword_1ECB22A78;
  if (!qword_1ECB22A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A78);
  }

  return result;
}

unint64_t sub_1D964DE14()
{
  result = qword_1ECB22A80;
  if (!qword_1ECB22A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22A80);
  }

  return result;
}

uint64_t sub_1D964DE68(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return v4;
}

unint64_t sub_1D964DE88()
{
  result = qword_1ECB225E0;
  if (!qword_1ECB225E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21720, &qword_1D9673F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225E0);
  }

  return result;
}

unint64_t sub_1D964DEEC()
{
  result = qword_1ECB22AB0;
  if (!qword_1ECB22AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22AB0);
  }

  return result;
}

unint64_t sub_1D964DF40()
{
  result = qword_1ECB22AB8;
  if (!qword_1ECB22AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22AB8);
  }

  return result;
}

uint64_t sub_1D964DF94(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return v4;
}

unint64_t sub_1D964DFB4()
{
  result = qword_1ECB22AC8;
  if (!qword_1ECB22AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22AC8);
  }

  return result;
}

unint64_t sub_1D964E008()
{
  result = qword_1ECB22AE0;
  if (!qword_1ECB22AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22AE0);
  }

  return result;
}

unint64_t sub_1D964E05C()
{
  result = qword_1ECB22AE8;
  if (!qword_1ECB22AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22AE8);
  }

  return result;
}

unint64_t sub_1D964E0B0()
{
  result = qword_1ECB22B08;
  if (!qword_1ECB22B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B08);
  }

  return result;
}

unint64_t sub_1D964E104()
{
  result = qword_1ECB22B10;
  if (!qword_1ECB22B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B10);
  }

  return result;
}

unint64_t sub_1D964E158()
{
  result = qword_1ECB22B20;
  if (!qword_1ECB22B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B20);
  }

  return result;
}

unint64_t sub_1D964E1B0()
{
  result = qword_1ECB22B28;
  if (!qword_1ECB22B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B28);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D964E234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D964E27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D964E380()
{
  result = qword_1ECB22B30;
  if (!qword_1ECB22B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B30);
  }

  return result;
}

unint64_t sub_1D964E3D8()
{
  result = qword_1ECB22B38;
  if (!qword_1ECB22B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B38);
  }

  return result;
}

unint64_t sub_1D964E430()
{
  result = qword_1ECB22B40;
  if (!qword_1ECB22B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B40);
  }

  return result;
}

unint64_t sub_1D964E488()
{
  result = qword_1ECB22B48;
  if (!qword_1ECB22B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B48);
  }

  return result;
}

unint64_t sub_1D964E4E0()
{
  result = qword_1ECB22B50;
  if (!qword_1ECB22B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B50);
  }

  return result;
}

unint64_t sub_1D964E538()
{
  result = qword_1ECB22B58;
  if (!qword_1ECB22B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B58);
  }

  return result;
}

unint64_t sub_1D964E590()
{
  result = qword_1ECB22B60;
  if (!qword_1ECB22B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B60);
  }

  return result;
}

unint64_t sub_1D964E5E8()
{
  result = qword_1ECB22B68;
  if (!qword_1ECB22B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B68);
  }

  return result;
}

unint64_t sub_1D964E640()
{
  result = qword_1ECB22B70;
  if (!qword_1ECB22B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B70);
  }

  return result;
}

unint64_t sub_1D964E698()
{
  result = qword_1ECB22B78;
  if (!qword_1ECB22B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B78);
  }

  return result;
}

unint64_t sub_1D964E6F0()
{
  result = qword_1ECB22B80;
  if (!qword_1ECB22B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B80);
  }

  return result;
}

unint64_t sub_1D964E748()
{
  result = qword_1ECB22B88;
  if (!qword_1ECB22B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B88);
  }

  return result;
}

unint64_t sub_1D964E7A0()
{
  result = qword_1ECB22B90;
  if (!qword_1ECB22B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B90);
  }

  return result;
}

unint64_t sub_1D964E7F8()
{
  result = qword_1ECB22B98;
  if (!qword_1ECB22B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22B98);
  }

  return result;
}

unint64_t sub_1D964E850()
{
  result = qword_1ECB22BA0;
  if (!qword_1ECB22BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BA0);
  }

  return result;
}

unint64_t sub_1D964E8A8()
{
  result = qword_1ECB22BA8;
  if (!qword_1ECB22BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BA8);
  }

  return result;
}

unint64_t sub_1D964E900()
{
  result = qword_1ECB22BB0;
  if (!qword_1ECB22BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BB0);
  }

  return result;
}

unint64_t sub_1D964E958()
{
  result = qword_1ECB22BB8;
  if (!qword_1ECB22BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BB8);
  }

  return result;
}

unint64_t sub_1D964E9B0()
{
  result = qword_1ECB22BC0;
  if (!qword_1ECB22BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BC0);
  }

  return result;
}

unint64_t sub_1D964EA08()
{
  result = qword_1ECB22BC8;
  if (!qword_1ECB22BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BC8);
  }

  return result;
}

unint64_t sub_1D964EA60()
{
  result = qword_1ECB22BD0;
  if (!qword_1ECB22BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BD0);
  }

  return result;
}

unint64_t sub_1D964EAB8()
{
  result = qword_1ECB22BD8;
  if (!qword_1ECB22BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BD8);
  }

  return result;
}

unint64_t sub_1D964EB10()
{
  result = qword_1ECB22BE0;
  if (!qword_1ECB22BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22BE0);
  }

  return result;
}

uint64_t sub_1D964EB64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C726961706572 && a2 == 0xED000065736E6563;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9681B80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppLibrary.app(forAppleItemID:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = sub_1D9654BA8(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for AppLibrary.App(0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = swift_allocObject();
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0;
    v7 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
    v8 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
    sub_1D966E648();
    *(v6 + 16) = a1;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1D965A1BC(v11);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[0] = v6;
    sub_1D9654BEC(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E628();

    sub_1D9651734(v6);
  }

  return v6;
}

uint64_t AppLibrary.updateInstallState(forUpdated:)(uint64_t a1)
{
  swift_getKeyPath();
  v4 = a1;
  sub_1D9654BEC(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  if (*(a1 + 40))
  {
    swift_getKeyPath();
    v4 = v1;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E638();

    sub_1D965557C(&v4, a1);
  }

  else
  {
    swift_getKeyPath();
    v4 = v1;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E638();

    v4 = *(v1 + 32);

    sub_1D9655788(a1);
  }

  swift_getKeyPath();
  v4 = a1;
  sub_1D966E638();

  if (*(a1 + 96))
  {
    swift_getKeyPath();
    v4 = v1;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E638();

    sub_1D965557C(&v4, a1);
  }

  else
  {
    swift_getKeyPath();
    v4 = v1;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E638();

    v4 = *(v1 + 40);

    sub_1D9655788(a1);
  }
}

uint64_t sub_1D964F224()
{
  type metadata accessor for AppLibrary(0);
  v0 = swift_allocObject();
  result = sub_1D96501CC();
  qword_1ECB22BE8 = v0;
  return result;
}

uint64_t static AppLibrary.current.getter()
{
  if (qword_1ECB207A0 != -1)
  {
    swift_once();
  }
}

uint64_t AppLibrary.maximumAllowedAgeRating.getter()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  return *(v0 + 16);
}

uint64_t sub_1D964F360@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D964F430(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }

  return result;
}

uint64_t sub_1D964F534(uint64_t a1)
{

  v4 = sub_1D9656E58(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }
}

uint64_t sub_1D964F68C()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();
}

uint64_t sub_1D964F730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a2 = *(v3 + 32);
}

uint64_t (*AppLibrary.installedApps.modify(void *a1))()
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a1 = *(v1 + 32);

  return sub_1D964F8B0;
}

uint64_t sub_1D964F8B8(uint64_t a1)
{

  v4 = sub_1D9656E58(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }
}

uint64_t sub_1D964FA10()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();
}

uint64_t sub_1D964FAB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a2 = *(v3 + 40);
}

uint64_t (*AppLibrary.installingApps.modify(void *a1))(void *)
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a1 = *(v1 + 40);

  return sub_1D9658770;
}

uint64_t sub_1D964FC30()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  return *(v0 + 48);
}

uint64_t sub_1D964FCD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D964FD78(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }

  return result;
}

uint64_t sub_1D964FE88()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  return *(v0 + 49);
}

uint64_t sub_1D964FF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1D964FFD0(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }

  return result;
}

uint64_t AppLibrary.isLoading.getter()
{
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E638();

  if (*(v0 + 48))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1D966E638();

  return *(v0 + 49);
}

uint64_t sub_1D96501CC()
{
  v1 = v0;
  *(v0 + 16) = 2000;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = sub_1D9606E94(MEMORY[0x1E69E7CC0]);
  if (v2 >> 62)
  {
    if (sub_1D966EC88())
    {
      v7 = sub_1D965746C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }

    *(v1 + 32) = v7;
    if (sub_1D966EC88())
    {
      v3 = sub_1D965746C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
    *(v1 + 32) = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 40) = v3;
  *(v1 + 48) = 257;
  sub_1D966E648();
  sub_1D966E878();
  v4 = sub_1D966E868();

  sub_1D966E858();

  v5 = sub_1D966E868();

  sub_1D966E838();

  return v1;
}

uint64_t sub_1D9650320(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_1D966E938();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D966E908();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D966E8E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E8A8();
  v13 = sub_1D966E8C8();
  v14 = sub_1D966EB98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v6;
    v16 = v3;
    v17 = a1;
    v18 = v15;
    *v15 = 134217984;
    *(v15 + 4) = v17;
    _os_log_impl(&dword_1D95E0000, v13, v14, "AppLibrary received new maximum allowed age rating: %ld", v15, 0xCu);
    v19 = v18;
    a1 = v17;
    v3 = v16;
    v6 = v24;
    MEMORY[0x1DA734680](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_1D96186E0();
  v20 = sub_1D966EBD8();
  sub_1D966E8F8();
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a1;
  aBlock[4] = sub_1D9658488;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96509F4;
  aBlock[3] = &block_descriptor_72;
  v22 = _Block_copy(aBlock);

  sub_1D966E928();
  MEMORY[0x1DA733AE0](0, v5, v8, v22);
  _Block_release(v22);

  (*(v3 + 8))(v5, v27);
  (*(v6 + 8))(v8, v26);
}

uint64_t sub_1D9650688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D966E8E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966EAB8();
  v14[1] = sub_1D966EAA8();
  sub_1D966EA78();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 16) == a2)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
LABEL_5:
      *(a1 + 49) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14[0] = v14;
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = a1;
    v14[-1] = a2;
    v15 = a1;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();

    if ((*(a1 + 49) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = swift_getKeyPath();
  v14[0] = v14;
  MEMORY[0x1EEE9AC00](v9);
  v14[-2] = a1;
  LOBYTE(v14[-1]) = 0;
  v15 = a1;
  sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
  sub_1D966E628();

LABEL_8:
  sub_1D966E8A8();
  v10 = sub_1D966E8C8();
  v11 = sub_1D966EB98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D95E0000, v10, v11, "Finished updating maximum allowed age rating", v12, 2u);
    MEMORY[0x1DA734680](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D96509F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D9650A38(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_1D966E938();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D966E908();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D966E8E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E8A8();

  v13 = sub_1D966E8C8();
  v14 = sub_1D966EB98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1D95E0000, v13, v14, "Received %ld apps", v15, 0xCu);
    MEMORY[0x1DA734680](v15, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v12, v9);
  sub_1D96186E0();
  v16 = sub_1D966EBD8();
  sub_1D966E8F8();
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  aBlock[4] = sub_1D96583AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96509F4;
  aBlock[3] = &block_descriptor_11;
  v19 = _Block_copy(aBlock);

  sub_1D966E928();
  MEMORY[0x1DA733AE0](0, v5, v8, v19);
  _Block_release(v19);

  (*(v23 + 8))(v5, v24);
  (*(v6 + 8))(v8, v22);
}

void sub_1D9650DB0(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_1D966E8E8();
  i = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v79 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = v71 - v6;
  v7 = sub_1D966E818();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = v71 - v11;
  v73 = 0;
  sub_1D966EAB8();
  v13 = sub_1D966EAA8();
  sub_1D966EA78();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71[1] = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v83 = *(v8 + 16);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v81 = *(v8 + 72);
    v84 = MEMORY[0x1E69E7CD0];
    v16 = v82;
    v83(v12, v15, v7);
    while (1)
    {
      v20 = sub_1D966E788();
      v21 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v21;
      sub_1D9656B2C(v20, isUniquelyReferenced_nonNull_native);
      v84 = v86[0];
      v23 = sub_1D966E788();
      swift_beginAccess();
      v24 = *(v16 + 24);
      if (*(v24 + 16) && (v25 = sub_1D9654BA8(v23), (v26 & 1) != 0))
      {
        v18 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        swift_retain_n();
        sub_1D9658920(v12);
        v16 = v82;
      }

      else
      {
        swift_endAccess();
        v17 = v80;
        v83(v80, v12, v7);
        v18 = sub_1D965E424(v17);

        v16 = v82;
        sub_1D9651734(v19);
      }

      AppLibrary.updateInstallState(forUpdated:)(v18);

      (*(v8 + 8))(v12, v7);
      v15 += v81;
      if (!--v14)
      {
        break;
      }

      v83(v12, v15, v7);
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CD0];
    v16 = v82;
  }

  swift_beginAccess();
  v27 = *(v16 + 24);
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = v84;
  v75 = v84 + 56;
  v80 = (i + 8);
  v81 = v27;

  v34 = 0;
  *&v35 = 134217984;
  v74 = v35;
  v36 = v16;
  v37 = v73;
  v76 = v28;
  for (i = v32; v31; v32 = i)
  {
LABEL_23:
    while (1)
    {
      v50 = v37;
      v51 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v52 = *(*(v81 + 56) + ((v34 << 9) | (8 * v51)));
      if (*(v33 + 16))
      {
        v53 = *(v52 + 16);
        v54 = sub_1D966F068();
        v55 = -1 << *(v33 + 32);
        v56 = v54 & ~v55;
        if ((*(v75 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          break;
        }
      }

LABEL_28:

      sub_1D966E8A8();

      v58 = sub_1D966E8C8();
      v59 = sub_1D966EB88();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = v74;
        *(v60 + 4) = *(v52 + 16);

        _os_log_impl(&dword_1D95E0000, v58, v59, "Known app %llu is not installed", v60, 0xCu);
        MEMORY[0x1DA734680](v60, -1, -1);
      }

      else
      {
      }

      v37 = v50;
      (*v80)(v79, v78);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      v61 = *(v52 + 24);
      v62 = *(v52 + 40);
      v92 = *(v52 + 72);
      v63 = *(v52 + 56);
      v91[1] = v62;
      v91[2] = v63;
      v91[0] = v61;
      sub_1D95FEFC8(v91, v85, &qword_1ECB22C38, &qword_1D967D5D0);
      v64 = sub_1D9657180(v91, &v87);
      sub_1D95EA898(v91, &qword_1ECB22C38, &qword_1D967D5D0);
      if (v64)
      {
        KeyPath = swift_getKeyPath();
        v83 = v71;
        MEMORY[0x1EEE9AC00](KeyPath);
        v71[-2] = v52;
        v71[-1] = &v87;
        v85[0] = v52;
        sub_1D9654BEC(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
        sub_1D966E628();
      }

      else
      {
        v38 = *(v52 + 40);
        v39 = *(v52 + 48);
        v40 = v90;
        v41 = v89;
        v42 = v87;
        *(v52 + 40) = v88;
        v43 = *(v52 + 24);
        v44 = *(v52 + 32);
        v45 = *(v52 + 56);
        v46 = *(v52 + 64);
        v47 = *(v52 + 72);
        *(v52 + 24) = v42;
        *(v52 + 56) = v41;
        *(v52 + 72) = v40;
        sub_1D96583CC(v43, v44, v38, v39, v45, v46, v47);
      }

      memset(v86, 0, sizeof(v86));
      v48 = swift_getKeyPath();
      v83 = v71;
      MEMORY[0x1EEE9AC00](v48);
      v71[-2] = v52;
      v71[-1] = v86;
      v85[0] = v52;
      sub_1D9654BEC(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
      sub_1D966E628();

      v36 = v82;
      AppLibrary.updateInstallState(forUpdated:)(v52);

      v33 = v84;
      v28 = v76;
      v32 = i;
      if (!v31)
      {
        goto LABEL_19;
      }
    }

    v57 = ~v55;
    while (*(*(v33 + 48) + 8 * v56) != v53)
    {
      v56 = (v56 + 1) & v57;
      if (((*(v75 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v37 = v50;
  }

  while (1)
  {
LABEL_19:
    v49 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v49 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v49);
    ++v34;
    if (v31)
    {
      v34 = v49;
      goto LABEL_23;
    }
  }

  if (*(v36 + 48))
  {
    v66 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v66);
    v71[-2] = v36;
    LOBYTE(v71[-1]) = 0;
    v85[0] = v36;
    sub_1D9654BEC(&qword_1ECB22BF8, type metadata accessor for AppLibrary, &protocol conformance descriptor for AppLibrary);
    sub_1D966E628();
  }

  else
  {
    *(v36 + 48) = 0;
  }

  v67 = v72;
  sub_1D966E8A8();
  v68 = sub_1D966E8C8();
  v69 = sub_1D966EB98();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1D95E0000, v68, v69, "Finished updating catalog", v70, 2u);
    MEMORY[0x1DA734680](v70, -1, -1);
  }

  (*v80)(v67, v78);
}

uint64_t sub_1D9651734(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + 16);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_1D9656D0C(a1, v7, isUniquelyReferenced_nonNull_native);
  *(v1 + 24) = v14;
  swift_endAccess();
  sub_1D966EAC8();
  v9 = sub_1D966EAE8();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_1D966EAB8();

  v10 = sub_1D966EAA8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = v2;
  sub_1D9651F2C(0xD00000000000001DLL, 0x80000001D9681CA0, v6, &unk_1D967D5F0, v11);

  return sub_1D95EA898(v6, &qword_1ECB20AB8, &qword_1D967D5E0);
}

uint64_t sub_1D9651904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D966E6D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C48, &qword_1D967D608);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C50, &qword_1D967D610);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C58, &qword_1D967D618);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_1D966EAB8();
  v5[15] = sub_1D966EAA8();
  v10 = sub_1D966EA78();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D9651B04, v10, v9);
}

uint64_t sub_1D9651B04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1D965A37C();
  sub_1D966EB18();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1D966EAA8();
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1D9651C10;
  v6 = v0[11];
  v7 = v0[7];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1D9651C10()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D9651D54, v3, v2);
}

uint64_t sub_1D9651D54()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    v7 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    sub_1D965A638(v6);
    AppLibrary.updateInstallState(forUpdated:)(v7);
    (*(v3 + 8))(v6, v2);
    v8 = sub_1D966EAA8();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1D9651C10;
    v10 = v0[11];
    v11 = v0[7];
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v11, v8, v12, v10);
  }
}

uint64_t sub_1D9651F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D95FEFC8(a3, v25 - v10, &qword_1ECB20AB8, &qword_1D967D5E0);
  v12 = sub_1D966EAE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D95EA898(v11, &qword_1ECB20AB8, &qword_1D967D5E0);
  }

  else
  {
    sub_1D966EAD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D966EA78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D966E9C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

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

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D966E5B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.setter(uint64_t a1)
{
  v3 = sub_1D966E5B8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppLibrary.InstallationRequest.account.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));

  return v1;
}

uint64_t AppLibrary.InstallationRequest.account.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));

  return v1;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 28);

  return sub_1D95E58D4(a1, v3);
}

uint64_t AppLibrary.InstallationRequest.init(alternativeDistributionPackageURL:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v13 = v12[7];
  v14 = sub_1D966E5B8();
  v15 = *(v14 - 8);
  v19 = *(v15 + 56);
  v19(a6 + v13, 1, 1, v14);
  (*(v15 + 32))(a6, a1, v14);
  v16 = (a6 + v12[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + v12[6]);
  *v17 = a4;
  v17[1] = a5;
  sub_1D95EA898(a6 + v13, &qword_1ECB20848, &qword_1D9670000);

  return (v19)(a6 + v13, 1, 1, v14);
}

uint64_t AppLibrary.requestAppInstallation(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9652730, 0, 0);
}

uint64_t sub_1D9652730()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_1D966E5B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_1D95EA898(v1 + v9, &qword_1ECB20848, &qword_1D9670000);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1D96528E4;
  v14 = v0[8];

  return sub_1D9657700(v14);
}

uint64_t sub_1D96528E4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D9652A7C;
  }

  else
  {
    v2 = sub_1D96529F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D96529F8()
{
  sub_1D9657C14(*(v0 + 64), type metadata accessor for AppLibrary.InstallationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9652A7C()
{
  sub_1D9657C14(*(v0 + 64), type metadata accessor for AppLibrary.InstallationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppLibrary.requestAppInstallation(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D95EAF50;

  return sub_1D9657700(a1);
}

uint64_t AppLibrary.requestAppInstallationFromBrowser(for:referrer:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D966E5B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  type metadata accessor for LinkMetadata(0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C00, &qword_1D967D340);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for AppInstallRequest(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9652D34, 0, 0);
}

uint64_t sub_1D9652D34()
{
  v1 = v0[11];
  v13 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *(v0[5] + 16);
  v8(v4, v0[3], v6);
  v8(v5, v7, v6);
  sub_1D966C5B0(v4, v5, v3);
  sub_1D963AEAC(v3, v2);
  if ((*(v1 + 48))(v2, 1, v13) == 1)
  {
    sub_1D95EA898(v0[9], &qword_1ECB22C00, &qword_1D967D340);
    type metadata accessor for MarketplaceKitError(0);
    sub_1D9654BEC(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    sub_1D963C6A4(v0[9], v0[12]);
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1D9652FDC;
    v12 = v0[12];

    return sub_1D95F20E8(v12, sub_1D963B3C4, 0);
  }
}

uint64_t sub_1D9652FDC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D96531AC;
  }

  else
  {
    v2 = sub_1D96530F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D96530F0()
{
  sub_1D9657C14(*(v0 + 96), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D96531AC()
{
  sub_1D9657C14(*(v0 + 96), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppLibrary.requestAppUpdate(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D95EB350;

  return sub_1D9657C74(a1);
}

uint64_t AppLibrary.requestAppUpdate(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D96533A8, 0, 0);
}

uint64_t sub_1D96533A8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_1D966E5B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_1D95EA898(v1 + v9, &qword_1ECB20848, &qword_1D9670000);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1D965355C;
  v14 = v0[8];

  return sub_1D9657C74(v14);
}

uint64_t sub_1D965355C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D9658768;
  }

  else
  {
    v2 = sub_1D965873C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AppLibrary.didAuthenticate(account:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9653690, 0, 0);
}

uint64_t sub_1D9653690()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9653794;

  return (sub_1D95F234C)();
}

uint64_t sub_1D9653794()
{

  if (v0)
  {

    v1 = sub_1D9658774;
  }

  else
  {
    v1 = sub_1D96538AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D96538DC()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D96539D8;

  return sub_1D95F1B00(v0 + 16, 1, sub_1D962F240, 0);
}

uint64_t sub_1D96539D8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D9653C34;
  }

  else
  {
    v2 = sub_1D9653AEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9653AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError(0);
    sub_1D9654BEC(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D9653C34(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AppLibrary.signalAccountHasAuthenticated(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9653CC0, 0, 0);
}

uint64_t sub_1D9653CC0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9653DC4;

  return (sub_1D95F234C)();
}

uint64_t sub_1D9653DC4()
{

  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](sub_1D9658774, 0, 0);
}

uint64_t sub_1D9653EF8()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D9653FF4;

  return sub_1D95F1B00(v0 + 16, 0, sub_1D962F240, 0);
}

uint64_t sub_1D9653FF4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D9654218;
  }

  else
  {
    v2 = sub_1D9654108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9654108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 != 7)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError(0);
    sub_1D9654BEC(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v4, v5, v3);

    v1 = 0;
    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1, v2);
}

uint64_t sub_1D9654218()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t AppLibrary.setSearchTerritory(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for SetPublicDataRequest(0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9654310, 0, 0);
}

uint64_t sub_1D9654310()
{
  v1 = v0[3];
  v2 = v0[4];
  *v2 = v0[2];
  v2[1] = v1;
  type metadata accessor for SetPublicDataRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D9654438;
  v5 = v0[4];

  return sub_1D95F1E84(v5, sub_1D9633BCC, 0);
}

uint64_t sub_1D9654438()
{

  if (v0)
  {

    v1 = sub_1D9658740;
  }

  else
  {
    v1 = sub_1D9654550;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D9654550()
{
  sub_1D9657C14(*(v0 + 32), type metadata accessor for SetPublicDataRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D96545F0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D96546F4;

  return (sub_1D95F234C)();
}

uint64_t sub_1D96546F4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1D9654808;
  }

  else
  {
    v2 = sub_1D9628820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AppLibrary.UninstallError.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

char *AppLibrary.deinit()
{

  v1 = OBJC_IVAR____TtC14MarketplaceKit10AppLibrary___observationRegistrar;
  v2 = sub_1D966E658();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppLibrary.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14MarketplaceKit10AppLibrary___observationRegistrar;
  v2 = sub_1D966E658();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

double sub_1D9654A10@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9654BEC(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v10 = v3[9];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_1D9658438(v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D9654AD4(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_1D9658438(v7, v1, v2, v3, v4, v5, v6);
  sub_1D965A1BC(&v7);
}

unint64_t sub_1D9654B30(uint64_t a1, uint64_t a2)
{
  sub_1D966F078();
  sub_1D966E9D8();
  v4 = sub_1D966F0C8();

  return sub_1D9654C54(a1, a2, v4);
}

unint64_t sub_1D9654BA8(uint64_t a1)
{
  v2 = sub_1D966F068();

  return sub_1D9654D0C(a1, v2);
}

uint64_t sub_1D9654BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9654C54(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D966EFB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D9654D0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1D9654D78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C08, &unk_1D9672460);
  v2 = *v0;
  v3 = sub_1D966EDA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void *sub_1D9654EF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21310, &qword_1D9672440);
  v2 = *v0;
  v3 = sub_1D966EDA8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1D965504C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C08, &unk_1D9672460);
  v37 = v4;
  result = sub_1D966EDB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D966F078();
      sub_1D966E9D8();
      result = sub_1D966F0C8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D965530C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21310, &qword_1D9672440);
  result = sub_1D966EDB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1D966F068();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D965557C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D966EC98();

    if (v8)
    {

      type metadata accessor for AppLibrary.App(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1D966EC88();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1D9656724(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1D9656108(v17 + 1);
    }

    sub_1D9656924(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(a2 + 16));
  v10 = sub_1D966F0C8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1D96569C8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 16) != *(a2 + 16))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

unint64_t sub_1D9655788(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1D966ECC8();

    if (v5)
    {
      v6 = sub_1D9655954(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1D966F078();
  v8 = *(a1 + 16);
  MEMORY[0x1DA733FA0](v8);
  v9 = sub_1D966F0C8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (*(*(*(v3 + 48) + 8 * v11) + 16) != v8)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D9655A60();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_1D965657C(v11);
  result = v15;
  *v1 = v16;
  return result;
}

unint64_t sub_1D9655954(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = sub_1D966EC88();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1D9656724(v6, v5);
  v16 = v7;
  sub_1D966F078();
  v8 = *(a2 + 16);
  MEMORY[0x1DA733FA0](v8);
  v9 = sub_1D966F0C8();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 48);
    while (1)
    {
      v7 = *(v14 + 8 * v12);
      if (*(v7 + 16) == v8)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  result = sub_1D965657C(v12);
  if (v8 == *(v7 + 16))
  {
    *v3 = v16;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D9655A60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C30, "Ơ");
  v2 = *v0;
  v3 = sub_1D966ECD8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

void *sub_1D9655BB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C40, &qword_1D967D5D8);
  v2 = *v0;
  v3 = sub_1D966ECD8();
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

  return result;
}

uint64_t sub_1D9655CF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C30, "Ơ");
  result = sub_1D966ECE8();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1D966F078();
      MEMORY[0x1DA733FA0](*(v16 + 16));
      result = sub_1D966F0C8();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_1D9655F18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C40, &qword_1D967D5D8);
  result = sub_1D966ECE8();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1D966F068();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_1D9656108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C30, "Ơ");
  result = sub_1D966ECE8();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D966F078();
      MEMORY[0x1DA733FA0](*(v17 + 16));
      result = sub_1D966F0C8();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_1D9656358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C40, &qword_1D967D5D8);
  result = sub_1D966ECE8();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1D966F068();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

unint64_t sub_1D965657C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D966EC58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1D966F078();
        MEMORY[0x1DA733FA0](*(v10 + 16));
        v11 = sub_1D966F0C8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D9656724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C30, "Ơ");
    v2 = sub_1D966ECF8();
    v15 = v2;
    sub_1D966EC78();
    if (sub_1D966ECB8())
    {
      type metadata accessor for AppLibrary.App(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D9656108(v9 + 1);
        }

        v2 = v15;
        sub_1D966F078();
        MEMORY[0x1DA733FA0](*(v14 + 16));
        result = sub_1D966F0C8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D966ECB8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1D9656924(uint64_t a1, uint64_t a2)
{
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(a1 + 16));
  sub_1D966F0C8();
  result = sub_1D966EC68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D96569C8(uint64_t result, unint64_t a2, char a3)
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
    sub_1D9656108(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D9655A60();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D9655CF0(v5 + 1);
  }

  v8 = *v3;
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v4 + 16));
  result = sub_1D966F0C8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for AppLibrary.App(0);
    a2 = v11;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D966EFF8();
  __break(1u);
  return result;
}

uint64_t sub_1D9656B2C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = sub_1D966F068();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = 1;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v8);
      v12 = v11 != a1;
      if (v11 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

  else
  {
    v12 = 1;
    v10 = 1;
  }

LABEL_8:
  v13 = *(v5 + 16);
  v14 = v13 + v10;
  if (__OFADD__(v13, v10))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(v5 + 24);
  if (v15 >= v14 && (a2 & 1) != 0)
  {
    if (!v12)
    {
LABEL_27:
      v25 = *(*v2 + 48);
      result = *(v25 + 8 * v8);
      *(v25 + 8 * v8) = a1;
      return result;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_1D9656358(v14);
  }

  else
  {
    if (v15 >= v14)
    {
      sub_1D9655BB0();
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_1D9655F18(v14);
  }

  v16 = *v2;
  v17 = sub_1D966F068();
  v18 = -1 << *(v16 + 32);
  v8 = v17 & ~v18;
  if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_23:
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_24:
    v20 = *v2;
    *(*v2 + 8 * (v8 >> 6) + 56) |= 1 << v8;
    *(*(v20 + 48) + 8 * v8) = a1;
    v21 = *(v20 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      result = 0;
      *(v20 + 16) = v23;
      return result;
    }

    goto LABEL_29;
  }

  v19 = ~v18;
  while (*(*(v16 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v19;
    if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_30:
  result = sub_1D966EFF8();
  __break(1u);
  return result;
}

unint64_t sub_1D9656D0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D9654BA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D965530C(v14, a3 & 1);
      result = sub_1D9654BA8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1D966F008();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1D9654EF0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1D9656E58(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v3 = a1;
    }

    if (v2)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v3;

      return MEMORY[0x1EEE6A200](a1, a2);
    }

    goto LABEL_15;
  }

  if (v2)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v3 = a2;
    }

    a2 = a1;
LABEL_15:

    return sub_1D965707C(v3, a2);
  }

  if (a1 != a2)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v5 = 0;
    v6 = a1 + 56;
    v7 = 1 << *(a1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a2 + 56;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_31:
      v15 = a1;
      v16 = *(*(a1 + 48) + 8 * (v12 | (v5 << 6)));
      v17 = a2;
      sub_1D966F078();
      MEMORY[0x1DA733FA0](*(v16 + 16));
      v18 = sub_1D966F0C8();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }

      a2 = v17;
      v21 = ~v19;
      a1 = v15;
      while (*(*(*(v17 + 48) + 8 * v20) + 16) != *(v16 + 16))
      {
        v20 = (v20 + 1) & v21;
        if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        return 1;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_31;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6A200](a1, a2);
  }

  return 1;
}

uint64_t sub_1D965707C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1D966EC88();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1D966ECC8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9657180(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  v30 = v6;
  if (!v7)
  {
    v29 = a1[6];
    if (!v14)
    {
      sub_1D95FEFC8(a1, v33, &qword_1ECB22C38, &qword_1D967D5D0);
      sub_1D95FEFC8(a2, v33, &qword_1ECB22C38, &qword_1D967D5D0);
      sub_1D96583CC(v4, v5, 0, v30, v8, v9, v29);
      v19 = 0;
      return v19 & 1;
    }

    v23 = a2[3];
    v24 = a2[4];
    v25 = a2[5];
    v27 = a2[6];
    sub_1D95FEFC8(a1, v33, &qword_1ECB22C38, &qword_1D967D5D0);
    sub_1D95FEFC8(a2, v33, &qword_1ECB22C38, &qword_1D967D5D0);
    v20 = v9;
    v18 = v29;
    v21 = v30;
    goto LABEL_7;
  }

  v33[0] = *a1;
  v33[1] = v5;
  v33[2] = v7;
  v33[3] = v6;
  v33[4] = v8;
  v33[5] = v9;
  v33[6] = v10;
  v28 = v9;
  v18 = v10;
  if (!v14)
  {
    v23 = v13;
    v24 = v16;
    v25 = v15;
    v27 = v17;
    sub_1D95FEFC8(a1, v32, &qword_1ECB22C38, &qword_1D967D5D0);
    sub_1D95FEFC8(a2, v32, &qword_1ECB22C38, &qword_1D967D5D0);
    v20 = v28;
    v21 = v30;
    sub_1D9658438(v4, v5, v7, v30, v8, v28, v18);

LABEL_7:
    sub_1D96583CC(v4, v5, v7, v21, v8, v20, v18);
    sub_1D96583CC(v11, v12, v14, v23, v24, v25, v27);
    v19 = 1;
    return v19 & 1;
  }

  v32[0] = v11;
  v32[1] = v12;
  v32[2] = v14;
  v32[3] = v13;
  v32[4] = v16;
  v32[5] = v15;
  v32[6] = v17;
  v26 = _s14MarketplaceKit10AppLibraryC0C0C8MetadataV2eeoiySbAG_AGtFZ_0(v33, v32);
  sub_1D95FEFC8(a1, v31, &qword_1ECB22C38, &qword_1D967D5D0);
  sub_1D95FEFC8(a2, v31, &qword_1ECB22C38, &qword_1D967D5D0);
  sub_1D9658438(v4, v5, v7, v30, v8, v28, v18);

  sub_1D96583CC(v4, v5, v7, v30, v8, v28, v18);
  v19 = v26 ^ 1;
  return v19 & 1;
}

unint64_t sub_1D965746C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1D966EC88();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22C30, "Ơ");
      result = sub_1D966ED08();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_1D966EC88();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x1DA733C30](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_1D966F078();
      MEMORY[0x1DA733FA0](*(v9 + 16));
      result = sub_1D966F0C8();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v6 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        v16 = ~v10;
        while (*(*(v15 + 8 * v11) + 16) != *(v9 + 16))
        {
          v11 = (v11 + 1) & v16;
          v12 = v11 >> 6;
          v13 = *(v6 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if (((1 << v11) & v13) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v12) = v14 | v13;
        *(v15 + 8 * v11) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v24 = *(v20 + 8 * v19);
      sub_1D966F078();
      MEMORY[0x1DA733FA0](*(v24 + 16));
      result = sub_1D966F0C8();
      v25 = -1 << *(v3 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      v30 = *(v3 + 48);
      if (((1 << v26) & v28) != 0)
      {
        v31 = ~v25;
        while (*(*(v30 + 8 * v26) + 16) != *(v24 + 16))
        {
          v26 = (v26 + 1) & v31;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v27) = v29 | v28;
        *(v30 + 8 * v26) = v24;
        v22 = *(v3 + 16);
        v8 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v23;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D9657700(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppInstallRequest(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9657794, 0, 0);
}

uint64_t sub_1D9657794()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_1D966E5B8();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x1E696EFB8];
  v9 = sub_1D966E6B8();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_1D966E608();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_1D96579F8;
  v22 = v0[4];

  return sub_1D95F20E8(v22, sub_1D963B3C4, 0);
}

uint64_t sub_1D96579F8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D9657B90;
  }

  else
  {
    v2 = sub_1D9657B0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9657B0C()
{
  sub_1D9657C14(*(v0 + 32), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9657B90()
{
  sub_1D9657C14(*(v0 + 32), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9657C14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9657C74(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AppInstallRequest(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9657D08, 0, 0);
}

uint64_t sub_1D9657D08()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_1D966E5B8();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x1E696EFC0];
  v9 = sub_1D966E6B8();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_1D966E608();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_1D9657F6C;
  v22 = v0[4];

  return sub_1D95F20E8(v22, sub_1D963B3C4, 0);
}

uint64_t sub_1D9657F6C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D965876C;
  }

  else
  {
    v2 = sub_1D9658744;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1D9658084()
{
  result = qword_1ECB22C08;
  if (!qword_1ECB22C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22C08);
  }

  return result;
}

uint64_t sub_1D96580E0(uint64_t a1)
{
  result = sub_1D966E658();
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

void sub_1D96581DC(uint64_t a1)
{
  sub_1D966E5B8();
  if (v1 <= 0x3F)
  {
    sub_1D95E9634(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit10AppLibraryC12InstallErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D9658288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D96582E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1D9658330(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D96583CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

double sub_1D9658438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D9658490()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_1D96584CC()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1D9658508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D95EAF50;

  return sub_1D9651904(a1, v4, v5, v7, v6);
}

uint64_t sub_1D96585C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D95EB350;

  return sub_1D963F538(a1, v4);
}

uint64_t sub_1D9658680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D95EAF50;

  return sub_1D963F538(a1, v4);
}

uint64_t sub_1D96587B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1D966E5E8();
  v7 = v6;

  v3(v5, v7);
  sub_1D95EA55C(v5, v7);
}

uint64_t AppLibrary.App.installation.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v3 = v1[6];
  v8[0] = v1[5];
  v8[1] = v3;
  v5 = v1[8];
  v9 = v1[7];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D95FEFC8(v8, &v7, &qword_1ECB21DB8, &unk_1D9676870);
}

uint64_t AppLibrary.App.Metadata.init(appleVersionID:version:shortVersion:account:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1D9658920(uint64_t a1)
{
  v2 = v1;
  v182 = type metadata accessor for MarketplaceKitError(0);
  v178 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v164 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1D966E8E8();
  v5 = *(v184 - 8);
  v6 = MEMORY[0x1EEE9AC00](v184);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v179 = &v158 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v177 = &v158 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v176 = &v158 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v158 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v166 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v175 = (&v158 - v19);
  v185 = sub_1D966E808();
  v20 = *(v185 - 8);
  v21 = MEMORY[0x1EEE9AC00](v185);
  v168 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v172 = &v158 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v174 = &v158 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CA8, &unk_1D967D970);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v171 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v180 = &v158 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v158 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v173 = (&v158 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v158 - v36;
  v38 = *(v1 + 16);
  v39 = sub_1D966E788();
  v165 = v38;
  if (v38 == v39)
  {
    sub_1D966E7B8();
    v169 = *(v20 + 48);
    v170 = v20 + 48;
    v40 = v169(v37, 1, v185);
    v167 = a1;
    v163 = v20;
    if (v40 == 1)
    {
      sub_1D95EA898(v37, &qword_1ECB22CA8, &unk_1D967D970);
      swift_getKeyPath();
      *&v203[0] = v1;
      sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
      sub_1D966E638();

      v41 = *(v1 + 96);
      v204 = *(v1 + 80);
      v205 = v41;
      v42 = *(v1 + 128);
      v206 = *(v1 + 112);
      v207 = v42;
      v43 = *(&v42 + 1);
      v203[0] = *(v1 + 80);
      *(&v203[1] + 8) = *(v1 + 104);
      *(&v203[2] + 8) = *(v1 + 120);
      if (v205)
      {
        *&v203[1] = v205;
        *(&v203[3] + 1) = *(&v42 + 1);
        sub_1D95FEFC8(&v204, &v201, &qword_1ECB21DB8, &unk_1D9676870);
        v44 = v43;
        sub_1D95EA898(v203, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D965C314(1.0);
      }

      else
      {
        *&v203[1] = 0;
        *(&v203[3] + 1) = *(&v42 + 1);
        sub_1D95FEFC8(&v204, &v201, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D95EA898(v203, &qword_1ECB21DB8, &unk_1D9676870);
      }

      swift_getKeyPath();
      *&v201 = v1;
      sub_1D966E638();

      v50 = *(v1 + 96);
      v203[0] = *(v1 + 80);
      v203[1] = v50;
      v51 = *(v1 + 128);
      v203[2] = *(v1 + 112);
      v203[3] = v51;
      v52 = *(&v51 + 1);
      v49 = v163;
      v201 = *(v1 + 80);
      *(v202 + 8) = *(v1 + 104);
      *(&v202[1] + 8) = *(v1 + 120);
      if (*&v203[1])
      {
        *&v202[0] = *&v203[1];
        *(&v202[2] + 1) = *(&v51 + 1);
        sub_1D95FEFC8(v203, v198, &qword_1ECB21DB8, &unk_1D9676870);
        v53 = v52;
        sub_1D95EA898(&v201, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D965C628(0, 0);
      }

      else
      {
        *&v202[0] = 0;
        *(&v202[2] + 1) = *(&v51 + 1);
        sub_1D95FEFC8(v203, v198, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D95EA898(&v201, &qword_1ECB21DB8, &unk_1D9676870);
      }
    }

    else
    {
      v49 = v20;
      sub_1D95EA898(v37, &qword_1ECB22CA8, &unk_1D967D970);
    }

    v54 = v173;
    sub_1D966E7A8();
    sub_1D95FEFC8(v54, v33, &qword_1ECB22CA8, &unk_1D967D970);
    v55 = v169(v33, 1, v185);
    v183 = v5;
    if (v55 == 1)
    {
      sub_1D95EA898(v54, &qword_1ECB22CA8, &unk_1D967D970);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    else
    {
      (*(v49 + 32))(v174, v33, v185);
      sub_1D966EAB8();
      v162 = sub_1D966EAA8();
      sub_1D966EA78();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v63 = v172;
      v64 = v185;
      (*(v49 + 16))(v172, v174, v185);
      v161 = sub_1D966E7D8();
      v65 = sub_1D966E7F8();
      v159 = v66;
      v160 = v65;
      v59 = sub_1D966E7C8();
      v60 = v67;
      v61 = sub_1D966E7E8();
      v68 = v49;
      v62 = v69;
      v70 = *(v68 + 8);
      v70(v63, v64);
      v70(v174, v64);
      sub_1D95EA898(v173, &qword_1ECB22CA8, &unk_1D967D970);

      v58 = v159;
      v57 = v160;
      v56 = v161;
      v5 = v183;
    }

    *&v204 = v56;
    *(&v204 + 1) = v57;
    *&v205 = v58;
    *(&v205 + 1) = v59;
    *&v206 = v60;
    *(&v206 + 1) = v61;
    *&v207 = v62;
    sub_1D965A1BC(&v204);
    v71 = v180;
    sub_1D966E7B8();
    v72 = v171;
    sub_1D95FEFC8(v71, v171, &qword_1ECB22CA8, &unk_1D967D970);
    if (v169(v72, 1, v185) == 1)
    {
      sub_1D95EA898(v71, &qword_1ECB22CA8, &unk_1D967D970);
      memset(v203, 0, sizeof(v203));
    }

    else
    {
      v73 = v163;
      v74 = v168;
      (*(v163 + 32))(v168, v72, v185);
      sub_1D966EAB8();
      sub_1D966EAA8();
      sub_1D966EA78();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v75 = v172;
      v76 = v185;
      (*(v73 + 16))(v172, v74, v185);
      v174 = sub_1D966E7D8();
      v173 = sub_1D966E7F8();
      v171 = v77;
      v78 = sub_1D966E7C8();
      v169 = v79;
      v170 = v78;
      v80 = sub_1D966E7E8();
      v82 = v81;
      v83 = *(v73 + 8);
      v83(v75, v76);
      swift_getKeyPath();
      *&v204 = v2;
      sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
      sub_1D966E638();

      v84 = *(v2 + 96);
      v204 = *(v2 + 80);
      v205 = v84;
      v85 = *(v2 + 128);
      v206 = *(v2 + 112);
      v207 = v85;
      v86 = *(&v85 + 1);
      v201 = *(v2 + 80);
      *(v202 + 8) = *(v2 + 104);
      *(&v202[1] + 8) = *(v2 + 120);
      if (v205)
      {
        *&v202[0] = v205;
        *(&v202[2] + 1) = *(&v85 + 1);
        sub_1D95FEFC8(&v204, v198, &qword_1ECB21DB8, &unk_1D9676870);
        v87 = v86;
        v74 = v168;
        sub_1D95EA898(&v201, &qword_1ECB21DB8, &unk_1D9676870);
      }

      else
      {
        *&v202[0] = 0;
        *(&v202[2] + 1) = *(&v85 + 1);
        sub_1D95FEFC8(&v204, v198, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D95EA898(&v201, &qword_1ECB21DB8, &unk_1D9676870);
        v88 = sub_1D966E788();
        v89 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
        v87 = sub_1D965D1EC(v88);
      }

      v83(v74, v185);
      sub_1D95EA898(v180, &qword_1ECB22CA8, &unk_1D967D970);

      *&v203[0] = v174;
      *(&v203[0] + 1) = v173;
      *&v203[1] = v171;
      *(&v203[1] + 1) = v170;
      *&v203[2] = v169;
      *(&v203[2] + 1) = v80;
      *&v203[3] = v82;
      *(&v203[3] + 1) = v87;
      v5 = v183;
    }

    v204 = v203[0];
    v205 = v203[1];
    v206 = v203[2];
    v207 = v203[3];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v158 - 2) = v2;
    *(&v158 - 1) = &v204;
    v185 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
    *&v201 = v2;
    v91 = sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E628();
    sub_1D95EA898(v203, &qword_1ECB21DB8, &unk_1D9676870);

    v92 = sub_1D966E798();
    if (v93 >> 60 == 15)
    {
      v94 = 1;
    }

    else
    {
      v95 = v92;
      v96 = v93;
      sub_1D966E578();
      swift_allocObject();
      sub_1D966E568();
      sub_1D965ED14(&qword_1ECB21700, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
      sub_1D966E558();
      v94 = 0;
      sub_1D9621CEC(v95, v96);
    }

    v97 = v175;
    (*(v178 + 56))(v175, v94, 1, v182);
    v98 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v98);
    *(&v158 - 2) = v2;
    *(&v158 - 1) = v97;
    *&v201 = v2;
    sub_1D966E628();

    sub_1D95EA898(v97, &qword_1ECB21DA8, &qword_1D967D6C0);
    sub_1D966E8A8();
    swift_retain_n();
    v99 = sub_1D966E8C8();
    v100 = sub_1D966EB98();
    v101 = os_log_type_enabled(v99, v100);
    v180 = v91;
    if (v101)
    {
      v102 = swift_slowAlloc();
      *v102 = 134218496;
      *(v102 + 4) = v165;
      *(v102 + 12) = 1024;
      swift_getKeyPath();
      *&v201 = v2;
      sub_1D966E638();

      *(v102 + 14) = *(v2 + 40) != 0;

      *(v102 + 18) = 1024;
      swift_getKeyPath();
      *&v201 = v2;
      sub_1D966E638();

      *(v102 + 20) = *(v2 + 96) != 0;

      _os_log_impl(&dword_1D95E0000, v99, v100, "Updating app %llu: isInstalled: %{BOOL}d, isInstalling: %{BOOL}d", v102, 0x18u);
      MEMORY[0x1DA734680](v102, -1, -1);
    }

    else
    {
    }

    v103 = *(v5 + 8);
    v104 = v184;
    v103(v181, v184);
    v105 = v176;
    sub_1D966E8A8();

    v106 = sub_1D966E8C8();
    v107 = sub_1D966EB98();
    v108 = os_log_type_enabled(v106, v107);
    v181 = v103;
    v183 = v5 + 8;
    if (!v108)
    {

      v103(v105, v104);
      v127 = v177;
      goto LABEL_43;
    }

    LODWORD(v174) = v107;
    v175 = v106;
    v109 = swift_slowAlloc();
    v172 = v109;
    v173 = swift_slowAlloc();
    *&v201 = v173;
    *v109 = 134218242;
    swift_getKeyPath();
    *&v198[0] = v2;
    sub_1D966E638();

    v110 = *(v2 + 24);
    v111 = *(v2 + 32);
    v112 = *(v2 + 40);
    v113 = *(v2 + 48);
    v114 = *(v2 + 56);
    v115 = *(v2 + 64);
    v116 = *(v2 + 72);
    if (v112)
    {
      v117 = *(v2 + 24);
    }

    else
    {
      v117 = 0;
    }

    sub_1D9658438(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
    sub_1D96583CC(v110, v111, v112, v113, v114, v115, v116);
    v118 = v172;
    *(v172 + 4) = v117;
    v119 = v118;

    *(v119 + 6) = 2080;
    swift_getKeyPath();
    *&v198[0] = v2;
    sub_1D966E638();

    v121 = *(v2 + 24);
    v120 = *(v2 + 32);
    v122 = *(v2 + 40);
    v123 = *(v2 + 48);
    v125 = *(v2 + 56);
    v124 = *(v2 + 64);
    v126 = *(v2 + 72);
    if (v122)
    {
      sub_1D9658438(v121, v120, *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));

      sub_1D96583CC(v121, v120, v122, v123, v125, v124, v126);
      v127 = v177;
      if (v126)
      {
LABEL_42:
        v128 = sub_1D9606634(v124, v126, &v201);

        *(v119 + 14) = v128;
        v129 = v175;
        _os_log_impl(&dword_1D95E0000, v175, v174, "\t installedMetadata evid: %llu account: %s", v119, 0x16u);
        v130 = v173;
        __swift_destroy_boxed_opaque_existential_1(v173);
        MEMORY[0x1DA734680](v130, -1, -1);
        MEMORY[0x1DA734680](v119, -1, -1);

        v104 = v184;
        v103 = v181;
        (v181)(v176, v184);
LABEL_43:
        sub_1D966E8A8();
        swift_retain_n();
        v131 = v127;
        v132 = sub_1D966E8C8();
        v133 = sub_1D966EB98();
        if (!os_log_type_enabled(v132, v133))
        {

          v143 = v131;
          goto LABEL_54;
        }

        LODWORD(v176) = v133;
        v134 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v197 = v175;
        *v134 = 67109634;
        swift_getKeyPath();
        *&v201 = v2;
        sub_1D966E638();

        *(v134 + 4) = *(v2 + 96) != 0;

        *(v134 + 8) = 2048;
        swift_getKeyPath();
        *&v201 = v2;
        sub_1D966E638();

        v135 = *(v2 + 96);
        v201 = *(v2 + 80);
        v202[0] = v135;
        v136 = *(v2 + 128);
        v202[1] = *(v2 + 112);
        v202[2] = v136;
        v194 = *(v2 + 104);
        v195 = *(v2 + 120);
        v137 = *(v2 + 136);
        v192 = v201;
        if (v135)
        {
          v138 = v201;
        }

        else
        {
          v138 = 0;
        }

        v196 = v137;
        v193 = v135;
        sub_1D95FEFC8(&v201, v198, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D95EA898(&v192, &qword_1ECB21DB8, &unk_1D9676870);
        *(v134 + 10) = v138;

        *(v134 + 18) = 2080;
        swift_getKeyPath();
        *&v198[0] = v2;
        sub_1D966E638();

        v139 = *(v2 + 128);
        v199 = *(v2 + 112);
        v200 = v139;
        v140 = *(v2 + 96);
        v198[0] = *(v2 + 80);
        v198[1] = v140;
        v141 = *(&v199 + 1);
        v142 = v139;
        if (v140)
        {
          v187 = *(v2 + 80);
          v188 = v140;
          v189 = *(v2 + 104);
          v190 = *(&v199 + 1);
          v191 = v139;
          sub_1D95FEFC8(v198, v186, &qword_1ECB21DB8, &unk_1D9676870);

          sub_1D95EA898(&v187, &qword_1ECB21DB8, &unk_1D9676870);
          v103 = v181;
          if (v142)
          {
LABEL_53:
            v144 = sub_1D9606634(v141, v142, &v197);

            *(v134 + 20) = v144;
            _os_log_impl(&dword_1D95E0000, v132, v176, "\t installation: %{BOOL}d evid: %llu account: %s", v134, 0x1Cu);
            v145 = v175;
            __swift_destroy_boxed_opaque_existential_1(v175);
            MEMORY[0x1DA734680](v145, -1, -1);
            MEMORY[0x1DA734680](v134, -1, -1);

            v143 = v177;
            v104 = v184;
LABEL_54:
            v103(v143, v104);
            v146 = v179;
            sub_1D966E8A8();

            v147 = sub_1D966E8C8();
            v148 = sub_1D966EB98();

            if (os_log_type_enabled(v147, v148))
            {
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              *&v198[0] = v150;
              *v149 = 136315138;
              swift_getKeyPath();
              *&v201 = v2;
              sub_1D966E638();

              v151 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
              swift_beginAccess();
              v152 = v166;
              sub_1D95FEFC8(v2 + v151, v166, &qword_1ECB21DA8, &qword_1D967D6C0);
              if ((*(v178 + 48))(v152, 1, v182))
              {
                v153 = 0x296C696E28;
                sub_1D95EA898(v152, &qword_1ECB21DA8, &qword_1D967D6C0);
                v154 = 0xE500000000000000;
              }

              else
              {
                v155 = v164;
                sub_1D96409A0(v152, v164);
                sub_1D95EA898(v152, &qword_1ECB21DA8, &qword_1D967D6C0);
                v153 = MarketplaceKitError.description.getter();
                v154 = v156;
                sub_1D961053C(v155);
              }

              v157 = sub_1D9606634(v153, v154, v198);

              *(v149 + 4) = v157;
              _os_log_impl(&dword_1D95E0000, v147, v148, "\t installError:: %s", v149, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v150);
              MEMORY[0x1DA734680](v150, -1, -1);
              MEMORY[0x1DA734680](v149, -1, -1);

              return (v181)(v179, v184);
            }

            else
            {

              return (v103)(v146, v104);
            }
          }
        }

        else
        {
          v187 = *(v2 + 80);
          v188 = 0;
          v189 = *(v2 + 104);
          v190 = *(&v199 + 1);
          v191 = v139;
          sub_1D95FEFC8(v198, v186, &qword_1ECB21DB8, &unk_1D9676870);
          sub_1D95EA898(&v187, &qword_1ECB21DB8, &unk_1D9676870);
          v103 = v181;
        }

        v141 = 0x296C696E28;

        v142 = 0xE500000000000000;
        goto LABEL_53;
      }
    }

    else
    {
      sub_1D9658438(v121, v120, 0, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
      sub_1D96583CC(v121, v120, 0, v123, v125, v124, v126);
      v127 = v177;
    }

    v124 = 0x296C696E28;

    v126 = 0xE500000000000000;
    goto LABEL_42;
  }

  sub_1D966E8A8();
  v45 = sub_1D966E8C8();
  v46 = sub_1D966EBA8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D95E0000, v45, v46, "Trying to update app with mismatched app data", v47, 2u);
    MEMORY[0x1DA734680](v47, -1, -1);
  }

  return (*(v5 + 8))(v8, v184);
}

void sub_1D965A1BC(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = a1[2];
  v18 = *(a1 + 6);
  v3 = *(v1 + 5);
  v19[0] = *(v1 + 3);
  v19[1] = v3;
  v19[2] = *(v1 + 7);
  v20 = v1[9];
  sub_1D95FEFC8(v19, &v14, &qword_1ECB22C38, &qword_1D967D5D0);
  v4 = sub_1D9657180(v19, &v15);
  sub_1D95EA898(v19, &qword_1ECB22C38, &qword_1D967D5D0);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14 = v1;
    sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E628();
    sub_1D95EA898(&v15, &qword_1ECB22C38, &qword_1D967D5D0);
  }

  else
  {
    v6 = v1[3];
    v7 = v1[4];
    v8 = v16;
    *(v1 + 3) = v15;
    v9 = v1[5];
    v10 = v1[6];
    v11 = v1[7];
    v12 = v1[8];
    v13 = v1[9];
    *(v1 + 5) = v8;
    *(v1 + 7) = v17;
    v1[9] = v18;
    sub_1D96583CC(v6, v7, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1D965A37C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CB8, &qword_1D967D980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CC0, &qword_1D967D988);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = *(v1 + 16);
  sub_1D966E6D8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
  sub_1D966EAF8();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 16))(v10, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CC8, &qword_1D967D990);
  swift_allocObject();
  v14 = sub_1D966E778();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;

  sub_1D966EB08();
  sub_1D966E878();
  v16 = sub_1D966E868();
  sub_1D966E848();

  return (*(v7 + 8))(v12, v6);
}

void sub_1D965A638(uint64_t a1)
{
  v3 = sub_1D966E6D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v136 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v138 = &v132 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v141 = &v132 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v143 = &v132 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v149 = &v132 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v132 - v15;
  v17 = sub_1D966E8E8();
  v146 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v137 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v140 = &v132 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v135 = &v132 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v139 = &v132 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v134 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v132 - v28;
  sub_1D966E8A8();
  v144 = v4;
  v145 = a1;
  v30 = v3;
  v147 = v4[2];
  v148 = v4 + 2;
  v147(v16, a1, v3);
  v151 = v1;

  v31 = sub_1D966E8C8();
  v32 = sub_1D966EB98();
  v33 = os_log_type_enabled(v31, v32);
  v150 = v4;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v142 = v17;
    v35 = v34;
    v133 = swift_slowAlloc();
    *&v160 = v133;
    *v35 = 134218242;
    *(v35 + 4) = *(v151 + 16);

    *(v35 + 12) = 2082;
    sub_1D965ED14(&qword_1ECB22CB0, MEMORY[0x1E696F020], MEMORY[0x1E696F028]);
    v36 = v30;
    v37 = sub_1D966EFA8();
    v39 = v38;
    v40 = v150[1];
    v40(v16, v36);
    v41 = sub_1D9606634(v37, v39, &v160);

    *(v35 + 14) = v41;
    v42 = v40;
    _os_log_impl(&dword_1D95E0000, v31, v32, "[%llu] Got state %{public}s", v35, 0x16u);
    v43 = v133;
    __swift_destroy_boxed_opaque_existential_1(v133);
    v4 = v150;
    MEMORY[0x1DA734680](v43, -1, -1);
    v44 = v35;
    v17 = v142;
    MEMORY[0x1DA734680](v44, -1, -1);

    v45 = *(v146 + 8);
    v45(v29, v17);
    v46 = v36;
  }

  else
  {

    v42 = v4[1];
    v42(v16, v30);
    v45 = *(v146 + 8);
    v45(v29, v17);
    v46 = v30;
  }

  v47 = v149;
  v147(v149, v145, v46);
  v48 = v4[11];
  v49 = v48(v47, v46);
  if (v49 == *MEMORY[0x1E696F010])
  {
    v42(v47, v46);
LABEL_6:
    swift_getKeyPath();
    v50 = v151;
    *&v158 = v151;
    sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E638();

    v51 = v50[6];
    v160 = v50[5];
    v161 = v51;
    v52 = v50[8];
    v162 = v50[7];
    v163 = v52;
    v53 = *(&v52 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v52 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      v54 = v53;
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
      v55 = 1.0;
LABEL_8:
      sub_1D965C314(v55);
      sub_1D965C628(0, 0);

      return;
    }

    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    *v159 = 0;
    *&v159[40] = *(&v52 + 1);
    sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
    sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
    return;
  }

  if (v49 == *MEMORY[0x1E696EFF0])
  {
    v42(v47, v46);
    return;
  }

  v56 = *MEMORY[0x1E696EFE8];
  if (v49 == *MEMORY[0x1E696EFE8])
  {
    v57 = v17;
    v58 = v149;
    (v150[12])(v149, v46);
    v59 = *(*v58 + 16);
    swift_getKeyPath();
    v60 = v151;
    *&v158 = v151;
    sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E638();

    v61 = v60[6];
    v160 = v60[5];
    v161 = v61;
    v62 = v60[8];
    v162 = v60[7];
    v163 = v62;
    v63 = *(&v62 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v62 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      v64 = v63;
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
      sub_1D965C314(v59);
      sub_1D965C628(0, 0);
    }

    else
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = 0;
      *&v159[40] = *(&v62 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
      v78 = v139;
      sub_1D966E8A8();

      v79 = sub_1D966E8C8();
      v80 = sub_1D966EB88();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 134217984;
        *(v81 + 4) = *(v151 + 16);

        _os_log_impl(&dword_1D95E0000, v79, v80, "[%llu] Received AppState update before app catalog update for installation", v81, 0xCu);
        MEMORY[0x1DA734680](v81, -1, -1);
      }

      else
      {
      }

      v45(v78, v57);
    }

    return;
  }

  if (v49 == *MEMORY[0x1E696EFF8])
  {
    v139 = v42;
    v142 = v17;
    v65 = v149;
    v66 = v150[12];
    v150 += 12;
    v66(v149, v46);
    v149 = *v65;
    v67 = swift_projectBox();
    v145 = v46;
    v147(v143, v67, v46);
    swift_getKeyPath();
    v68 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
    v69 = v151;
    *&v158 = v151;
    v136 = sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    v137 = v68;
    sub_1D966E638();

    v70 = v69[6];
    v160 = v69[5];
    v161 = v70;
    v71 = v69[8];
    v162 = v69[7];
    v163 = v71;
    v72 = *(&v71 + 1);
    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    if (v161)
    {
      *v159 = v161;
      *&v159[40] = *(&v71 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      v73 = v72;
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
      sub_1D965C628(1, 0);
    }

    else
    {
      *v159 = 0;
      *&v159[40] = *(&v71 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
    }

    v82 = v141;
    v83 = v145;
    v84 = v147;
    v147(v141, v143, v145);
    if (v48(v82, v83) == v56)
    {
      v66(v82, v83);
      v85 = *(*v82 + 16);
      swift_getKeyPath();
      v86 = v151;
      *&v153 = v151;
      sub_1D966E638();

      v87 = v86[6];
      v158 = v86[5];
      *v159 = v87;
      v88 = v86[8];
      *&v159[16] = v86[7];
      *&v159[32] = v88;
      v89 = *(&v88 + 1);
      if (*v159)
      {
        v153 = *(v151 + 80);
        v154 = *v159;
        v155 = *(v151 + 104);
        v156 = *(v151 + 120);
        v157 = *(&v88 + 1);
        sub_1D95FEFC8(&v158, v152, &qword_1ECB21DB8, &unk_1D9676870);
        v90 = v89;
        sub_1D95EA898(&v153, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D965C314(v85);

        v91 = v143;
        v92 = v83;
      }

      else
      {
        v153 = *(v151 + 80);
        v154 = 0;
        v155 = *(v151 + 104);
        v156 = *(v151 + 120);
        v157 = *(&v88 + 1);
        sub_1D95FEFC8(&v158, v152, &qword_1ECB21DB8, &unk_1D9676870);
        sub_1D95EA898(&v153, &qword_1ECB21DB8, &unk_1D9676870);
        v123 = v135;
        sub_1D966E8A8();

        v124 = sub_1D966E8C8();
        v125 = sub_1D966EB88();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 134217984;
          *(v126 + 4) = *(v151 + 16);

          _os_log_impl(&dword_1D95E0000, v124, v125, "[%llu] Received AppState update before app catalog update for installation", v126, 0xCu);
          MEMORY[0x1DA734680](v126, -1, -1);
        }

        else
        {
        }

        v127 = v143;

        v45(v123, v142);
        v92 = v145;
        v91 = v127;
      }

      (v139)(v91, v92);
    }

    else
    {
      v93 = v140;
      sub_1D966E8A8();
      v94 = v138;
      v84(v138, v143, v83);

      v95 = sub_1D966E8C8();
      v96 = sub_1D966EBA8();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v158 = v150;
        *v97 = 134218242;
        *(v97 + 4) = *(v151 + 16);

        *(v97 + 12) = 2082;
        sub_1D965ED14(&qword_1ECB22CB0, MEMORY[0x1E696F020], MEMORY[0x1E696F028]);
        v98 = sub_1D966EFA8();
        v99 = v94;
        v100 = v98;
        v102 = v101;
        v103 = v139;
        (v139)(v99, v145);
        v104 = sub_1D9606634(v100, v102, &v158);

        *(v97 + 14) = v104;
        _os_log_impl(&dword_1D95E0000, v95, v96, "[%llu] Unhandled paused substate: %{public}s", v97, 0x16u);
        v105 = v150;
        __swift_destroy_boxed_opaque_existential_1(v150);
        MEMORY[0x1DA734680](v105, -1, -1);
        v106 = v97;
        v83 = v145;
        MEMORY[0x1DA734680](v106, -1, -1);

        v45(v140, v142);
        v103(v143, v83);
      }

      else
      {

        v107 = v139;
        (v139)(v94, v83);
        v45(v93, v142);
        v107(v143, v83);
        v103 = v107;
      }

      v103(v141, v83);
    }

    return;
  }

  if (v49 == *MEMORY[0x1E696F018] || v49 == *MEMORY[0x1E696F000])
  {
    goto LABEL_6;
  }

  v142 = v17;
  if (v49 == *MEMORY[0x1E696F008])
  {
    swift_getKeyPath();
    v74 = v151;
    *&v158 = v151;
    sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
    sub_1D966E638();

    v75 = v74[6];
    v160 = v74[5];
    v161 = v75;
    v76 = v74[8];
    v162 = v74[7];
    v163 = v76;
    v77 = *(&v76 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v76 + 1);
      sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
      v54 = v77;
      sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
      v55 = -1.0;
      goto LABEL_8;
    }

    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    *v159 = 0;
    *&v159[40] = *(&v76 + 1);
    sub_1D95FEFC8(&v160, &v153, &qword_1ECB21DB8, &unk_1D9676870);
    sub_1D95EA898(&v158, &qword_1ECB21DB8, &unk_1D9676870);
    v128 = v134;
    sub_1D966E8A8();

    v129 = sub_1D966E8C8();
    v130 = sub_1D966EB88();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 134217984;
      *(v131 + 4) = *(v151 + 16);

      _os_log_impl(&dword_1D95E0000, v129, v130, "[%llu] Received AppState update before app catalog update for installation", v131, 0xCu);
      MEMORY[0x1DA734680](v131, -1, -1);
    }

    else
    {
    }

    v45(v128, v142);
  }

  else
  {
    v108 = v42;
    v109 = v137;
    sub_1D966E8A8();
    v110 = v136;
    v147(v136, v145, v46);

    v111 = sub_1D966E8C8();
    v112 = sub_1D966EBA8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v145 = v46;
      v114 = v113;
      v115 = swift_slowAlloc();
      *&v160 = v115;
      *v114 = 134218242;
      *(v114 + 4) = *(v151 + 16);

      *(v114 + 12) = 2082;
      v116 = sub_1D966E6C8();
      v117 = v110;
      v119 = v118;
      v108(v117, v145);
      v120 = sub_1D9606634(v116, v119, &v160);

      *(v114 + 14) = v120;
      _os_log_impl(&dword_1D95E0000, v111, v112, "[%llu] Unknown state: %{public}s", v114, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x1DA734680](v115, -1, -1);
      v121 = v114;
      v46 = v145;
      MEMORY[0x1DA734680](v121, -1, -1);

      v122 = v137;
    }

    else
    {

      v108(v110, v46);
      v122 = v109;
    }

    v45(v122, v142);
    v108(v149, v46);
  }
}

BOOL AppLibrary.App.isInstalled.getter()
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  return *(v0 + 40) != 0;
}

BOOL AppLibrary.App.isInstalling.getter()
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  return *(v0 + 96) != 0;
}

uint64_t AppLibrary.App.Metadata.version.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppLibrary.App.Metadata.shortVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppLibrary.App.Metadata.account.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

double AppLibrary.App.installedMetadata.getter@<D0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return sub_1D9658438(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1D965BCD0(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a2 + 16);
  *(a1 + 3) = *a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  *(a1 + 5) = v4;
  *(a1 + 7) = *(a2 + 32);
  a1[9] = *(a2 + 48);
  sub_1D95FEFC8(a2, v10, &qword_1ECB22C38, &qword_1D967D5D0);
  sub_1D96583CC(v2, v3, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for AppLibrary.App(uint64_t a1)
{
  result = qword_1ECB22C78;
  if (!qword_1ECB22C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D965BDCC(void *a1, _OWORD *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a2[1];
  *(a1 + 5) = *a2;
  *(a1 + 6) = v10;
  v11 = a2[3];
  *(a1 + 7) = a2[2];
  *(a1 + 8) = v11;
  sub_1D95FEFC8(a2, &v12, &qword_1ECB21DB8, &unk_1D9676870);
  sub_1D965DF18(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t AppLibrary.App.installationError.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v3 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_1D95FEFC8(v5 + v3, a1, &qword_1ECB21DA8, &qword_1D967D6C0);
}

uint64_t sub_1D965BF54(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  sub_1D965ED7C(a2, a1 + v4);
  return swift_endAccess();
}

BOOL AppLibrary.App.isUpdating.getter()
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  if (!*(v0 + 40))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D966E638();

  return *(v0 + 96) != 0;
}

uint64_t sub_1D965C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v5 = sub_1D966E808();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966EAB8();
  v26 = sub_1D966EAA8();
  sub_1D966EA78();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, a1, v5);
  v25 = sub_1D966E7D8();
  v9 = sub_1D966E7F8();
  v23 = v10;
  v24 = v9;
  v11 = sub_1D966E7C8();
  v13 = v12;
  v14 = sub_1D966E7E8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = sub_1D966E788();
  v18 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
  v19 = sub_1D965D1EC(v17);

  v21 = v24;
  *a3 = v25;
  a3[1] = v21;
  a3[2] = v23;
  a3[3] = v11;
  a3[4] = v13;
  a3[5] = v14;
  a3[6] = v16;
  a3[7] = v19;
  return result;
}

void sub_1D965C28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1D966E878();
  v5 = sub_1D966E868();
  sub_1D966E828();
}

id sub_1D965C314(double a1)
{
  v2 = v1;
  v4 = sub_1D966E8E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = fmin(a1, 1.0) * 4.50359963e15;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = v12;
  if (a1 == -1.0 || [v2 completedUnitCount] <= v13)
  {
    result = [v2 setCompletedUnitCount_];
    if (a1 >= 0.6)
    {
      result = [v2 isPausable];
      if (result)
      {
        sub_1D966E8A8();
        v17 = v2;
        v18 = sub_1D966E8C8();
        v19 = sub_1D966EB88();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134217984;
          *(v20 + 4) = *(v17 + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id);

          _os_log_impl(&dword_1D95E0000, v18, v19, "[%llu] No longer pausable nor cancelable", v20, 0xCu);
          MEMORY[0x1DA734680](v20, -1, -1);
        }

        else
        {

          v18 = v17;
        }

        (*(v5 + 8))(v11, v4);
        [v17 setPausable:0];
        return [v17 setCancellable:0];
      }
    }
  }

  else
  {
    sub_1D966E8B8();
    v14 = sub_1D966E8C8();
    v15 = sub_1D966EBA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D95E0000, v14, v15, "Received progress update out of order", v16, 2u);
      MEMORY[0x1DA734680](v16, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_1D965C628(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v31 - v8;
  v9 = sub_1D966E8E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E8A8();
  v13 = sub_1D966E8C8();
  v14 = sub_1D966EB88();
  if (os_log_type_enabled(v13, v14))
  {
    v31 = v4;
    v33 = ObjectType;
    v15 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v35 = v4;
    *v15 = 136315394;
    v32 = v5;
    if (v5)
    {
      if (v5 == 1)
      {
        v16 = 0x646573756170;
      }

      else
      {
        v16 = 0x64656C65636E6163;
      }

      if (v5 == 1)
      {
        v5 = 0xE600000000000000;
      }

      else
      {
        v5 = 0xE800000000000000;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v16 = 0x676E696E6E7572;
    }

    v17 = sub_1D9606634(v16, v5, &v35);

    *(v15 + 4) = v17;
    *(v15 + 12) = 1024;
    v18 = v31;
    *(v15 + 14) = v31 & 1;
    _os_log_impl(&dword_1D95E0000, v13, v14, "setState %s, sendingToDaemon: %{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v19 = v4;
    LOBYTE(v4) = v18;
    MEMORY[0x1DA734680](v19, -1, -1);
    MEMORY[0x1DA734680](v15, -1, -1);

    (*(v10 + 8))(v12, v9);
    ObjectType = v33;
    LOBYTE(v5) = v32;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v20 = *&v3[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock];
  os_unfair_lock_lock((v20 + 32));
  if (!*(v20 + 16))
  {
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v20 + 16) != 1 || v5 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(v20 + 16) = v5;
  if (v4)
  {
    v22 = swift_allocObject();
    v23 = v5;
    *(v22 + 16) = v5;
    v24 = *&v3[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id];
    v25 = *(v20 + 24);
    if (v25)
    {
      sub_1D966EB38();
    }

    v26 = sub_1D966EAE8();
    v27 = v34;
    (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v25;
    v5[5] = v24;
    v5[6] = sub_1D965E328;
    v5[7] = v22;
    v5[8] = v3;

    v28 = v3;
    *(v20 + 24) = sub_1D9664FDC(0, 0, v27, &unk_1D967D960, v5);

    LOBYTE(v5) = v23;
  }

LABEL_25:
  if (v5)
  {
    if (v5 == 1)
    {
      v37 = v3;
      v29 = &selRef_pause;
      v30 = &v37;
    }

    else
    {
      v38.receiver = v3;
      v29 = &selRef_cancel;
      v30 = &v38;
    }
  }

  else
  {
    v36 = v3;
    v29 = &selRef_resume;
    v30 = &v36;
  }

  v30->super_class = ObjectType;
  objc_msgSendSuper2(v30, *v29);
LABEL_31:
  os_unfair_lock_unlock((v20 + 32));
}

uint64_t AppLibrary.App.presentAgeExceptionApproveInPersonSheet()()
{
  v1[2] = v0;
  sub_1D966EAB8();
  v1[3] = sub_1D966EAA8();
  v3 = sub_1D966EA78();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D965CB54, v3, v2);
}

uint64_t sub_1D965CB54()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D965CC54;

  return sub_1D95F26D4(v1, sub_1D965CE58, 0);
}

uint64_t sub_1D965CC54()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1D965CDF4;
  }

  else
  {
    v5 = sub_1D965CD90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D965CD90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D965CDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D965CE58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_43;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheet:v8 reply:v9];
  _Block_release(v9);
}

uint64_t *AppLibrary.App.deinit()
{
  sub_1D96583CC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_1D965DF18(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1D95EA898(v0 + OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError, &qword_1ECB21DA8, &qword_1D967D6C0);
  v1 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
  v2 = sub_1D966E658();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppLibrary.App.__deallocating_deinit()
{
  sub_1D96583CC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_1D965DF18(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1D95EA898(v0 + OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError, &qword_1ECB21DA8, &qword_1D967D6C0);
  v1 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
  v2 = sub_1D966E658();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AppLibrary.App.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v0 + 16));
  return sub_1D966F0C8();
}

uint64_t sub_1D965D114()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v1 + 16));
  return sub_1D966F0C8();
}

uint64_t sub_1D965D18C()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v1 + 16));
  return sub_1D966F0C8();
}

id sub_1D965D1EC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CD0, &qword_1D967D998);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithParent_userInfo_, 0, 0);
  [v6 setTotalUnitCount_];
  [v6 setPausable_];
  [v6 setCancellable_];
  sub_1D965C314(-1.0);

  return v6;
}

void sub_1D965D3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1D966E5D8();
  if (a6)
  {
    if (a6 == 1)
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D96587B0;
      v16 = &block_descriptor_40;
      v11 = _Block_copy(&v13);

      v12 = &selRef_pauseInstall_reply_;
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D96587B0;
      v16 = &block_descriptor_12;
      v11 = _Block_copy(&v13);

      v12 = &selRef_cancelInstall_reply_;
    }
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1D96587B0;
    v16 = &block_descriptor_37;
    v11 = _Block_copy(&v13);

    v12 = &selRef_resumeInstall_reply_;
  }

  [a1 *v12];
  _Block_release(v11);
}

uint64_t sub_1D965D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1D966E8E8();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D965D678, 0, 0);
}

uint64_t sub_1D965D678()
{
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_1D965D81C;

    return MEMORY[0x1EEE6DA40]();
  }

  else if (sub_1D966EB58())
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D965DA3C;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_1D95F26D4(v6, v4, v5);
  }
}

uint64_t sub_1D965D81C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D965D918, 0, 0);
}

uint64_t sub_1D965D918()
{
  if (sub_1D966EB58())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D965DA3C;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_1D95F26D4(v6, v4, v5);
  }
}

uint64_t sub_1D965DA3C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D965DBE4;
  }

  else
  {
    v2 = sub_1D965DB50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D965DB50()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock);
  os_unfair_lock_lock((v1 + 32));
  if ((sub_1D966EB58() & 1) == 0)
  {
    *(v1 + 24) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D965DBE4(uint64_t a1)
{
  v2 = v1[12];
  sub_1D966E8A8();
  v3 = v2;
  v4 = sub_1D966E8C8();
  v5 = sub_1D966EBB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D95E0000, v4, v5, "Error updating progress: %{public}@", v8, 0xCu);
    sub_1D95EA898(v9, &qword_1ECB20BA0, &qword_1D9670DD0);
    MEMORY[0x1DA734680](v9, -1, -1);
    MEMORY[0x1DA734680](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[8] + 8))(v1[9], v1[7]);
  v12 = *(v1[6] + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock);
  os_unfair_lock_lock((v12 + 32));
  if ((sub_1D966EB58() & 1) == 0)
  {
    *(v12 + 24) = 0;
  }

  os_unfair_lock_unlock((v12 + 32));

  v13 = v1[1];

  return v13();
}

id sub_1D965DDD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14MarketplaceKit10AppLibraryC0C0C8MetadataV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (sub_1D966EFB8()) && (v2 == v6 && v4 == v7 || (sub_1D966EFB8()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1D966EFB8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1D965DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }
}

void sub_1D965DFD4(uint64_t a1)
{
  sub_1D965E0DC(319);
  if (v1 <= 0x3F)
  {
    sub_1D966E658();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D965E0DC(uint64_t a1)
{
  if (!qword_1ECB22C88)
  {
    type metadata accessor for MarketplaceKitError(255);
    v1 = sub_1D966EC18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB22C88);
    }
  }
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

uint64_t sub_1D965E150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D965E198(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D965E1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D965E23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D965E2D4()
{
  result = qword_1ECB22CA0;
  if (!qword_1ECB22CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CA0);
  }

  return result;
}

uint64_t sub_1D965E330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D95EAF50;

  return sub_1D965D5B0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D965E424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v46 - v3;
  v4 = sub_1D966E808();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CA8, &unk_1D967D970);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  v57 = sub_1D966E788();
  v59 = a1;
  sub_1D966E7A8();
  sub_1D95FEFC8(v23, v21, &qword_1ECB22CA8, &unk_1D967D970);
  v24 = *(v5 + 48);
  v25 = v24(v21, 1, v4);
  v49 = v5;
  if (v25 == 1)
  {
    sub_1D95EA898(v23, &qword_1ECB22CA8, &unk_1D967D970);
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
  }

  else
  {
    v46 = v24;
    (*(v5 + 32))(v12, v21, v4);
    sub_1D966EAB8();
    sub_1D966EAA8();
    sub_1D966EA78();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v26 = v49;
    (*(v49 + 16))(v10, v12, v4);
    v56 = sub_1D966E7D8();
    v55 = sub_1D966E7F8();
    v54 = v27;
    v53 = sub_1D966E7C8();
    v52 = v28;
    v51 = sub_1D966E7E8();
    v50 = v29;
    v30 = *(v26 + 8);
    v30(v10, v4);
    v30(v12, v4);
    sub_1D95EA898(v23, &qword_1ECB22CA8, &unk_1D967D970);

    v24 = v46;
  }

  v31 = v59;
  sub_1D966E7B8();
  v32 = v48;
  sub_1D95FEFC8(v18, v48, &qword_1ECB22CA8, &unk_1D967D970);
  if (v24(v32, 1, v4) == 1)
  {
    sub_1D95EA898(v18, &qword_1ECB22CA8, &unk_1D967D970);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    v33 = v49;
    v34 = v47;
    (*(v49 + 32))(v47, v32, v4);
    sub_1D965C0B4(v34, v31, &v66);
    (*(v33 + 8))(v34, v4);
    sub_1D95EA898(v18, &qword_1ECB22CA8, &unk_1D967D970);
  }

  v70[0] = v66;
  v70[1] = v67;
  v70[2] = v68;
  v70[3] = v69;
  v35 = sub_1D966E798();
  v37 = v58;
  if (v36 >> 60 == 15)
  {
    v38 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    v39 = v35;
    v40 = v36;
    sub_1D966E578();
    swift_allocObject();
    sub_1D966E568();
    v38 = type metadata accessor for MarketplaceKitError(0);
    sub_1D965ED14(&qword_1ECB21700, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    sub_1D966E558();
    sub_1D9621CEC(v39, v40);

    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  type metadata accessor for AppLibrary.App(0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  *(v41 + 88) = 0u;
  *(v41 + 104) = 0u;
  *(v41 + 120) = 0u;
  *(v41 + 136) = 0;
  v42 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  type metadata accessor for MarketplaceKitError(0);
  (*(*(v38 - 8) + 56))(v41 + v42, 1, 1, v38);
  sub_1D966E648();
  *(v41 + 16) = v57;
  *&v60 = v56;
  *(&v60 + 1) = v55;
  v61 = v54;
  v62 = v53;
  v63 = v52;
  v64 = v51;
  v65 = v50;
  sub_1D965A1BC(&v60);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v46 - 2) = v41;
  *(&v46 - 1) = v70;
  *&v60 = v41;
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E628();
  sub_1D95EA898(v70, &qword_1ECB21DB8, &unk_1D9676870);

  v44 = sub_1D966E818();
  (*(*(v44 - 8) + 8))(v31, v44);
  sub_1D95EA898(v37, &qword_1ECB21DA8, &qword_1D967D6C0);
  return v41;
}

uint64_t sub_1D965ED14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D965ED5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D965ED7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.distributorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(distributorID:appleItemID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D965EE74, 0, 0);
}

uint64_t sub_1D965EE74()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D965EF70;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1D95F28D8(v4, v2, v3, sub_1D965F078, 0);
}

uint64_t sub_1D965EF70(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

void sub_1D965F078(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheetForDistributor:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D965F154()
{
  if (*v0)
  {
    return 0x657449656C707061;
  }

  else
  {
    return 0x7562697274736964;
  }
}

uint64_t sub_1D965F1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D965F28C(uint64_t a1)
{
  v2 = sub_1D965F6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D965F2C8(uint64_t a1)
{
  v2 = sub_1D965F6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CD8, &qword_1D967D9A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D965F6A4();
  sub_1D966F118();
  v11 = 0;
  v7 = v9[1];
  sub_1D966EF38();
  if (!v7)
  {
    v10 = 1;
    sub_1D966EF88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CE8, &qword_1D967D9B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D965F6A4();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1D966EE58();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1D966EEA8();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D965F6A4()
{
  result = qword_1ECB22CE0;
  if (!qword_1ECB22CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CE0);
  }

  return result;
}

unint64_t sub_1D965F71C()
{
  result = qword_1ECB22CF0;
  if (!qword_1ECB22CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CF0);
  }

  return result;
}

unint64_t sub_1D965F774()
{
  result = qword_1ECB22CF8;
  if (!qword_1ECB22CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CF8);
  }

  return result;
}

unint64_t sub_1D965F7CC()
{
  result = qword_1ECB22D00;
  if (!qword_1ECB22D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D00);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D965F84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LicenseResolutionRequest.run()()
{
  *(v1 + 32) = v0;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D965F940, 0, 0);
}

uint64_t sub_1D965F940()
{
  sub_1D9619050(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D965FA00;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_1D965FA00()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D965FB90;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v3 = sub_1D965FB20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D965FB20()
{
  sub_1D9611758(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D965FB90()
{
  sub_1D9611758(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for LicenseResolutionRequest(uint64_t a1)
{
  result = qword_1ECB22D08;
  if (!qword_1ECB22D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D965FC74(uint64_t a1)
{
  result = type metadata accessor for LicenseResolutionContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PollForUpdatesRequest.domain.getter()
{
  v1 = *v0;

  return v1;
}

MarketplaceKit::PollForUpdatesRequest __swiftcall PollForUpdatesRequest.init(domain:shouldStartUpdates:)(MarketplaceKit::PollForUpdatesRequest domain, Swift::Bool shouldStartUpdates)
{
  *v2 = domain.field1D968AC04;
  *(v2 + 16) = shouldStartUpdates;
  domain.field1D968AC10 = shouldStartUpdates;
  return domain;
}

uint64_t PollForUpdatesRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D965FD50, 0, 0);
}

uint64_t sub_1D965FD50()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9619CB0;
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D95F2CEC(v4, v3, v2, sub_1D965FE4C, 0);
}

void sub_1D965FE4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [a1 requestUpdatesPoll:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D965FF28()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1D965FF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681E00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9660044(uint64_t a1)
{
  v2 = sub_1D9660444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660080(uint64_t a1)
{
  v2 = sub_1D9660444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollForUpdatesRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D18, &qword_1D967DBA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660444();
  sub_1D966F118();
  v12 = 0;
  v7 = v9[1];
  sub_1D966EEE8();
  if (!v7)
  {
    v11 = 1;
    sub_1D966EF48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PollForUpdatesRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D28, &qword_1D967DBB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660444();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1D966EE08();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1D966EE68();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9660444()
{
  result = qword_1ECB22D20;
  if (!qword_1ECB22D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D20);
  }

  return result;
}

unint64_t sub_1D96604BC()
{
  result = qword_1ECB22D30;
  if (!qword_1ECB22D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D30);
  }

  return result;
}

unint64_t sub_1D9660514()
{
  result = qword_1ECB22D38;
  if (!qword_1ECB22D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D38);
  }

  return result;
}

unint64_t sub_1D966056C()
{
  result = qword_1ECB22D40;
  if (!qword_1ECB22D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D40);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SecureButtonActionRequest.Action.stringValue.getter()
{
  if (((*(v0 + 8) >> 60) & 3u) > 1)
  {
    return 0x6867696C66657250;
  }

  if (((*(v0 + 8) >> 60) & 3) != 0)
  {
    v1 = 0x68636E75614CLL;
  }

  else
  {
    v1 = 0x6574656C6544;
  }

  v4 = v1 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
  v3 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](v3);

  return v4;
}

uint64_t sub_1D96606A8()
{
  v1 = 0x6574656C6564;
  if (*v0)
  {
    v1 = 0x68636E75616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6867696C66657270;
  }
}

uint64_t sub_1D966072C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9664D30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9660754(uint64_t a1)
{
  v2 = sub_1D9660ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660790(uint64_t a1)
{
  v2 = sub_1D9660ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96607CC(uint64_t a1)
{
  v2 = sub_1D9661028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660808(uint64_t a1)
{
  v2 = sub_1D9661028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9660844(uint64_t a1)
{
  v2 = sub_1D9660FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660880(uint64_t a1)
{
  v2 = sub_1D9660FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96608BC(uint64_t a1)
{
  v2 = sub_1D9660F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96608F8(uint64_t a1)
{
  v2 = sub_1D9660F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9660934(uint64_t a1)
{
  v2 = sub_1D9660F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660970(uint64_t a1)
{
  v2 = sub_1D9660F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionRequest.Action.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D48, &qword_1D967DD60);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D50, &qword_1D967DD68);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D58, &qword_1D967DD70);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D60, &qword_1D967DD78);
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D68, &qword_1D967DD80);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = v2[1];
  v34 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660ED8();
  sub_1D966F118();
  v18 = (v17 >> 60) & 3;
  if (((v17 >> 60) & 3) > 1)
  {
    if (v18 == 2)
    {
      LOBYTE(v37) = 2;
      sub_1D9660F80();
      v21 = v28;
      v22 = v36;
      sub_1D966EED8();
      v37 = v34;
      v38 = v17 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1D9621C98();
      v23 = v30;
      sub_1D966EF68();
      v24 = v29;
    }

    else
    {
      LOBYTE(v37) = 3;
      sub_1D9660F2C();
      v21 = v31;
      v22 = v36;
      sub_1D966EED8();
      v37 = v34;
      v38 = v17 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1D9621C98();
      v23 = v33;
      sub_1D966EF68();
      v24 = v32;
    }

    (*(v24 + 8))(v21, v23);
  }

  else
  {
    if (!v18)
    {
      LOBYTE(v37) = 0;
      sub_1D9661028();
      v19 = v36;
      sub_1D966EED8();
      sub_1D966EF88();
      (*(v26 + 8))(v13, v11);
      return (*(v35 + 8))(v16, v19);
    }

    LOBYTE(v37) = 1;
    sub_1D9660FD4();
    v22 = v36;
    sub_1D966EED8();
    sub_1D966EF88();
    (*(v27 + 8))(v10, v8);
  }

  return (*(v35 + 8))(v16, v22);
}

unint64_t sub_1D9660ED8()
{
  result = qword_1ECB22D70;
  if (!qword_1ECB22D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D70);
  }

  return result;
}

unint64_t sub_1D9660F2C()
{
  result = qword_1ECB22D78;
  if (!qword_1ECB22D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D78);
  }

  return result;
}

unint64_t sub_1D9660F80()
{
  result = qword_1ECB22D80;
  if (!qword_1ECB22D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D80);
  }

  return result;
}

unint64_t sub_1D9660FD4()
{
  result = qword_1ECB22D88;
  if (!qword_1ECB22D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D88);
  }

  return result;
}

unint64_t sub_1D9661028()
{
  result = qword_1ECB22D90;
  if (!qword_1ECB22D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D90);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D98, &qword_1D967DD88);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DA0, &qword_1D967DD90);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DA8, &qword_1D967DD98);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DB0, &qword_1D967DDA0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DB8, &unk_1D967DDA8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9660ED8();
  v15 = v55;
  sub_1D966F0F8();
  if (!v15)
  {
    v16 = v9;
    v43 = v7;
    v44 = 0;
    v17 = v6;
    v18 = v51;
    v19 = v52;
    v55 = v11;
    v21 = v53;
    v20 = v54;
    v22 = sub_1D966EEB8();
    v23 = (2 * *(v22 + 16)) | 1;
    v58 = v22;
    v59 = v22 + 32;
    v60 = 0;
    v61 = v23;
    v24 = sub_1D96020C0();
    if (v24 == 4 || v60 != v61 >> 1)
    {
      v29 = sub_1D966ED58();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v31 = &type metadata for SecureButtonActionRequest.Action;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
    }

    else if (v24 > 1u)
    {
      if (v24 == 2)
      {
        LOBYTE(v56) = 2;
        sub_1D9660F80();
        v33 = v18;
        v34 = v44;
        sub_1D966EDE8();
        v35 = v55;
        if (!v34)
        {
          v36 = v20;
          sub_1D9621D48();
          v37 = v47;
          sub_1D966EE88();
          (*(v49 + 8))(v33, v37);
          (*(v35 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v56;
          v28 = v57 | 0x2000000000000000;
          v20 = v36;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v56) = 3;
        sub_1D9660F2C();
        v40 = v44;
        sub_1D966EDE8();
        v41 = v55;
        if (!v40)
        {
          sub_1D9621D48();
          sub_1D966EE88();
          (*(v50 + 8))(v19, v21);
          (*(v41 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v56;
          v28 = v57 | 0x3000000000000000;
          v20 = v54;
          goto LABEL_19;
        }
      }
    }

    else if (v24)
    {
      LOBYTE(v56) = 1;
      sub_1D9660FD4();
      v38 = v44;
      sub_1D966EDE8();
      if (!v38)
      {
        v39 = v46;
        v27 = sub_1D966EEA8();
        (*(v48 + 8))(v17, v39);
        (*(v55 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0x1000000000000000;
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_1D9661028();
      v25 = v44;
      sub_1D966EDE8();
      if (!v25)
      {
        v26 = v43;
        v27 = sub_1D966EEA8();
        (*(v45 + 8))(v16, v26);
        (*(v55 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
LABEL_19:
        *v20 = v27;
        v20[1] = v28;
        return __swift_destroy_boxed_opaque_existential_1(v62);
      }
    }

    (*(v55 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t SecureButtonActionRequest.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D96618D4(v2, v3);
}

uint64_t sub_1D96618D4(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_1D95EA68C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

__n128 SecureButtonActionRequest.init(action:authenticationMessage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t SecureButtonActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D966192C, 0, 0);
}

uint64_t sub_1D966192C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D964B8B4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D95F3108(v4, v5, v2, v3, sub_1D9661A28, 0);
}

void sub_1D9661A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [a1 handleSecureButtonActionRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D9661B04()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1D9661B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681E60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9661C20(uint64_t a1)
{
  v2 = sub_1D9663B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9661C5C(uint64_t a1)
{
  v2 = sub_1D9663B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionRequest.encode(to:)(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DC0, &qword_1D967DDC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v18[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96618D4(v7, v8);
  sub_1D9663B68();
  sub_1D966F118();
  v20 = v7;
  v21 = v8;
  v19 = 0;
  sub_1D9663BBC();
  v9 = v18[1];
  sub_1D966EF68();
  sub_1D9663C10(v20, v21);
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = objc_opt_self();
  v20 = 0;
  v12 = [v11 archivedDataWithRootObject:v18[0] requiringSecureCoding:1 error:&v20];
  v13 = v20;
  if (!v12)
  {
    v17 = v13;
    sub_1D966E598();

    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  v14 = sub_1D966E5E8();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  v19 = 1;
  sub_1D9621C98();
  sub_1D966EF68();
  (*(v4 + 8))(v6, v3);
  return sub_1D95EA55C(v14, v16);
}

void SecureButtonActionRequest.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DD8, &qword_1D967DDC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663B68();
  sub_1D966F0F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = 0;
    sub_1D9663C20();
    sub_1D966EE88();
    v10 = v20;
    v9 = v21;
    v22 = 1;
    sub_1D9621D48();
    sub_1D966EE88();
    v18 = v10;
    v19 = v9;
    v11 = v20;
    v12 = v21;
    sub_1D9663C74(0, &qword_1ECB22DE8, 0x1E696ACD0);
    sub_1D9663C74(0, &qword_1ECB22DF0, 0x1E698E390);
    v13 = sub_1D966EBC8();
    if (v13)
    {
      v14 = v13;
      (*(v6 + 8))(v8, v5);
      sub_1D95EA55C(v11, v12);
      v16 = v18;
      v15 = v19;
      *a2 = v18;
      a2[1] = v15;
      a2[2] = v14;
      sub_1D96618D4(v16, v15);
      v17 = v14;
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_1D9663C10(v16, v15);
    }

    else
    {
      __break(1u);
    }
  }
}