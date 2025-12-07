uint64_t sub_22FDF9508(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF95D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFA040(&qword_27DAE4AE8, type metadata accessor for MessageProto, &protocol conformance descriptor for MessageProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF9670(uint64_t a1)
{
  v2 = sub_22FDFA040(&qword_27DAE4A90, type metadata accessor for MessageProto, &protocol conformance descriptor for MessageProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF96DC(uint64_t a1, uint64_t a2)
{
  sub_22FDFA040(&qword_27DAE4A90, type metadata accessor for MessageProto, &protocol conformance descriptor for MessageProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF9780()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A30);
  __swift_project_value_buffer(v0, qword_27DAE4A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FE49F60;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "filename";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FE42CE4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22FE42CF4();
}

uint64_t FileHeaderProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B64();
    }
  }

  return result;
}

uint64_t FileHeaderProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_22FE42C94(), !v4))
  {
    type metadata accessor for FileHeaderProto(0);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t static FileHeaderProto.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22FE43CB4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FileHeaderProto(0);
  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF9B1C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDFA040(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF9BA4@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return sub_22FE42A44();
}

uint64_t sub_22FDF9C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFA040(&qword_27DAE4AE0, type metadata accessor for FileHeaderProto, &protocol conformance descriptor for FileHeaderProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF9CC0(uint64_t a1)
{
  v2 = sub_22FDFA040(&qword_27DAE4AA8, type metadata accessor for FileHeaderProto, &protocol conformance descriptor for FileHeaderProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF9D2C(uint64_t a1, uint64_t a2)
{
  sub_22FDFA040(&qword_27DAE4AA8, type metadata accessor for FileHeaderProto, &protocol conformance descriptor for FileHeaderProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF9DA8(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_22FE43CB4() & 1) == 0)
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace12MessageProtoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for MessageProto(0);
  v7 = *(v6 + 36);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(v6 + 40);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 4);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 4);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6;
  if (!sub_22FDF2C1C(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) || *(a1 + 8) != *(a2 + 32) || *(a1 + 9) != *(a2 + 36))
  {
    return 0;
  }

  v18 = *(v17 + 44);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDFA040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FDFA08C()
{
  result = qword_27DAE4A60;
  if (!qword_27DAE4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A60);
  }

  return result;
}

unint64_t sub_22FDFA0E4()
{
  result = qword_27DAE4A68;
  if (!qword_27DAE4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A68);
  }

  return result;
}

unint64_t sub_22FDFA13C()
{
  result = qword_27DAE4A70;
  if (!qword_27DAE4A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4A78, &qword_22FE4D428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A70);
  }

  return result;
}

unint64_t sub_22FDFA1A4()
{
  result = qword_27DAE4A80;
  if (!qword_27DAE4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoredPhotoLayoutImageLocationTypeProto(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StoredPhotoLayoutImageLocationTypeProto(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22FDFA488(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FDFA4A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_22FDFA4FC(uint64_t a1)
{
  sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    sub_22FDFA5DC(319, &qword_27DAE4948, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      sub_22FDFA5DC(319, &qword_27DAE4AC8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDFA5DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22FE43744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FDFA650(uint64_t a1)
{
  result = sub_22FE42A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ShuffleIDProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t ShuffleIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ShuffleIDProto.people.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ShuffleIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShuffleIDProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShuffleIDProto(uint64_t a1)
{
  result = qword_27DAE4B20;
  if (!qword_27DAE4B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShuffleIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShuffleIDProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShuffleIDProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  type metadata accessor for ShuffleIDProto(0);
  return sub_22FE42A44();
}

uint64_t sub_22FDFAA44()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4AF0);
  __swift_project_value_buffer(v0, qword_27DAE4AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FE49F90;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "people";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "pets";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nature";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "cityscape";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t static ShuffleIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A80 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ShuffleIDProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22FE42B04();
      }

      else if (result == 2)
      {
        sub_22FE42B24();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_22FE42AD4();
    }
  }

  return result;
}

uint64_t ShuffleIDProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
LABEL_8:
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v5 >> 32;
    goto LABEL_8;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(*(v3 + 16) + 16) || (result = sub_22FE42C74(), !v4))
  {
    if (*(v3 + 24) != 1 || (result = sub_22FE42C24(), !v4))
    {
      if (*(v3 + 25) != 1 || (result = sub_22FE42C24(), !v4))
      {
        if (*(v3 + 26) != 1 || (result = sub_22FE42C24(), !v4))
        {
          type metadata accessor for ShuffleIDProto(0);
          return sub_22FE42A34();
        }
      }
    }
  }

  return result;
}

uint64_t ShuffleIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for ShuffleIDProto(0);
  sub_22FDFB704(&qword_27DAE4B08, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDFB02C@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 26) = 0;
  return sub_22FE42A44();
}

uint64_t sub_22FDFB090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDFB104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDFB1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFB704(&qword_27DAE4B38, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDFB248@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A80 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDFB2F0(uint64_t a1)
{
  v2 = sub_22FDFB704(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDFB35C(uint64_t a1, uint64_t a2)
{
  sub_22FDFB704(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace14ShuffleIDProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (sub_22FDB6FC0(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 25) != *(a2 + 25) || *(a1 + 26) != *(a2 + 26))
  {
    return 0;
  }

  type metadata accessor for ShuffleIDProto(0);
  sub_22FE42A54();
  sub_22FDFB704(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

void sub_22FDFB614(uint64_t a1)
{
  sub_22FDFB6B4();
  if (v1 <= 0x3F)
  {
    sub_22FE42A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDFB6B4()
{
  if (!qword_27DAE4B30)
  {
    v0 = sub_22FE43354();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4B30);
    }
  }
}

uint64_t sub_22FDFB704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double StoredPhotoProto.creationDate.getter()
{
  v1 = v0 + *(type metadata accessor for StoredPhotoProto(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t StoredPhotoProto.title.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.accessibilityDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoProto.creationDate.setter(double a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t StoredPhotoProto.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoProto.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoLayoutProto.timePosition.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v2 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22FDFBB2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = *(v2 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_22FD764B4(v8 + v9, v7, &qword_27DAE4618, &unk_22FE4DA30);
  v10 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FDFDFC4(v7, a2, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  sub_22FE42A44();
  v12 = (a2 + *(v10 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FD93E6C(v7, &qword_27DAE4618, &unk_22FE4DA30);
  }

  return result;
}

uint64_t sub_22FDFBCD8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_22FD764B4(v8 + v9, v7, &qword_27DAE4610, &unk_22FE4BA50);
  v10 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FDFDFC4(v7, a2, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  *a2 = 0u;
  a2[1] = 0u;
  sub_22FE42A44();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FD93E6C(v7, &qword_27DAE4610, &unk_22FE4BA50);
  }

  return result;
}

double sub_22FDFBE74(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t StoredPhotoLayoutProto.userEdited.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v2 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22FDFBF4C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v12 = sub_22FE03B20(v11);

    *(v4 + v9) = v12;
    v11 = v12;
  }

  sub_22FDFDFC4(a1, v8, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v13 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = *a2;
  swift_beginAccess();
  sub_22FDE176C(v8, v11 + v14, &qword_27DAE4618, &unk_22FE4DA30);
  return swift_endAccess();
}

uint64_t sub_22FDFC0D8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v12 = sub_22FE03B20(v11);

    *(v4 + v9) = v12;
    v11 = v12;
  }

  sub_22FDFDFC4(a1, v8, type metadata accessor for StoredPhotoLayoutRectProto);
  v13 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = *a2;
  swift_beginAccess();
  sub_22FDE176C(v8, v11 + v14, &qword_27DAE4610, &unk_22FE4BA50);
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutProto.timePosition.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FE03B20(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  result = swift_beginAccess();
  *(v6 + v8) = a1;
  return result;
}

uint64_t sub_22FDFC328(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FE03B20(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a1;
  result = swift_beginAccess();
  *(v8 + v10) = a2;
  return result;
}

uint64_t StoredPhotoLayoutProto.userEdited.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FE03B20(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  result = swift_beginAccess();
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t StoredPhotoLayoutImageLocationProto.location.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoLayoutImageLocationProto.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t StoredPhotoLayoutImageLocationTypeProto.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22FDFC5AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22FDFC5D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FDFC5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04178();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t StoredPhotoProto.localIdentifier.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t StoredPhotoProto.localIdentifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t StoredPhotoProto.layouts.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_22FDFC7AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFC810(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FDFC914;
}

Swift::Void __swiftcall StoredPhotoProto.clearAccessibilityDescription()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*StoredPhotoProto.creationDate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_22FDFC9BC;
}

uint64_t sub_22FDFC9BC(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall StoredPhotoProto.clearCreationDate()()
{
  v1 = v0 + *(type metadata accessor for StoredPhotoProto(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22FDFCA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 48));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

Swift::Void __swiftcall StoredPhotoProto.clearTitle()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 48));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_22FDFCBA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCC08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 52));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

Swift::Void __swiftcall StoredPhotoProto.clearSubtitle()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 52));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t StoredPhotoProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StoredPhotoProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for StoredPhotoProto(0);
  result = sub_22FE42A44();
  v4 = (a1 + v2[10]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v2[11];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a1 + v2[12]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[13]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void StoredPhotoLayoutImageLocationProto.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StoredPhotoLayoutImageLocationProto.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_22FDFCF5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCFC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoLayoutImageLocationProto.location.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

void sub_22FDFD0C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall StoredPhotoLayoutImageLocationProto.clearLocation()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t StoredPhotoLayoutImageLocationProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoLayoutImageLocationProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StoredPhotoLayoutImageLocationProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  result = sub_22FE42A44();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void (*StoredPhotoLayoutProto.baseImage.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4618, &unk_22FE4DA30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_22FE42A44();
    v19 = (v14 + *(v9 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return sub_22FDFD59C;
}

BOOL sub_22FDFD5FC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22FD764B4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22FD93E6C(v11, a1, a2);
  return v15;
}

uint64_t sub_22FDFD744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE04068(a1, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v18 = sub_22FE03B20(v17);

    *(a2 + v15) = v18;
    v17 = v18;
  }

  sub_22FDFDFC4(v14, v10, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  (*(v12 + 56))(v10, 0, 1, v11);
  v19 = *a5;
  swift_beginAccess();
  sub_22FDE176C(v10, v17 + v19, &qword_27DAE4618, &unk_22FE4DA30);
  return swift_endAccess();
}

void (*StoredPhotoLayoutProto.maskImage.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4618, &unk_22FE4DA30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_22FE42A44();
    v19 = (v14 + *(v9 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return sub_22FDFDBAC;
}

uint64_t sub_22FDFDC0C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v16 = sub_22FE03B20(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_22FDE176C(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22FDFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE04068(a1, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v18 = sub_22FE03B20(v17);

    *(a2 + v15) = v18;
    v17 = v18;
  }

  sub_22FDFDFC4(v14, v10, type metadata accessor for StoredPhotoLayoutRectProto);
  (*(v12 + 56))(v10, 0, 1, v11);
  v19 = *a5;
  swift_beginAccess();
  sub_22FDE176C(v10, v17 + v19, &qword_27DAE4610, &unk_22FE4BA50);
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutRectProto.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  *a1 = 0u;
  a1[1] = 0u;
  return sub_22FE42A44();
}

uint64_t sub_22FDFDFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*StoredPhotoLayoutProto.originalCrop.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4610, &unk_22FE4BA50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_22FE42A44();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return sub_22FDFE2A4;
}

uint64_t sub_22FDFE334(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FE03B20(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  result = swift_beginAccess();
  *(v6 + v8) = v3;
  return result;
}

void (*StoredPhotoLayoutProto.timePosition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_22FDFE488;
}

void sub_22FDFE488(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v10 = sub_22FE03B20(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  *(v7 + v11) = v3;

  free(v2);
}

void (*StoredPhotoLayoutProto.timeRect.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4610, &unk_22FE4BA50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    sub_22FE42A44();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return sub_22FDFE7BC;
}

void sub_22FDFE7EC(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6, double a7)
{
  v9 = *a1;
  v10 = *(*a1 + 128);
  if (a2)
  {
    v11 = *(v9 + 72);
    sub_22FE04068(*(v9 + 120), *(v9 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v9 + 128);
      v15 = *(v9 + 72);
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v16 = sub_22FE03B20(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v18 = *(v9 + 112);
    v17 = *(v9 + 120);
    v19 = *(v9 + 96);
    v20 = *(v9 + 104);
    v22 = *(v9 + 80);
    v21 = *(v9 + 88);
    sub_22FDFDFC4(v18, v22, a3);
    (*(v20 + 56))(v22, 0, 1, v19);
    v23 = *a4;
    swift_beginAccess();
    sub_22FDE176C(v22, v13 + v23, a5, a6);
    swift_endAccess();
    sub_22FE040D0(v17, a3);
  }

  else
  {
    v24 = *(v9 + 72);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v24 + v10);
    if ((v25 & 1) == 0)
    {
      v27 = *(v9 + 128);
      v28 = *(v9 + 72);
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v29 = sub_22FE03B20(v26);

      *(v28 + v27) = v29;
      v26 = v29;
    }

    v18 = *(v9 + 112);
    v17 = *(v9 + 120);
    v30 = *(v9 + 96);
    v31 = *(v9 + 104);
    v22 = *(v9 + 80);
    v21 = *(v9 + 88);
    sub_22FDFDFC4(v17, v22, a3);
    (*(v31 + 56))(v22, 0, 1, v30);
    v32 = *a4;
    swift_beginAccess();
    sub_22FDE176C(v22, v26 + v32, a5, a6);
    swift_endAccess();
  }

  free(v17);
  free(v18);
  free(v21);
  free(v22);

  free(v9);
}

void (*StoredPhotoLayoutProto.backgroundZorder.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEB18;
}

uint64_t sub_22FDFEB24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v11 = sub_22FE03B20(v10);

    *(a2 + v8) = v11;
    v10 = v11;
  }

  v12 = *a5;
  result = swift_beginAccess();
  *(v10 + v12) = v7;
  return result;
}

void (*StoredPhotoLayoutProto.foregroundZorder.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEC80;
}

void sub_22FDFEC8C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v12 = sub_22FE03B20(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

void (*StoredPhotoLayoutProto.timeElementZorder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEE18;
}

void (*StoredPhotoLayoutProto.imageAotbrightness.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEECC;
}

uint64_t sub_22FDFEED8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FE03B20(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  result = swift_beginAccess();
  *(v6 + v8) = v3;
  return result;
}

void (*StoredPhotoLayoutProto.userEdited.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22FDFF02C;
}

void sub_22FDFF02C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v10 = sub_22FE03B20(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  *(v7 + v11) = v5;

  free(v2);
}

uint64_t StoredPhotoLayoutProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoredPhotoLayoutProto.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t StoredPhotoLayoutProto.init()@<X0>(uint64_t a2@<X8>)
{
  sub_22FE42A44();
  v3 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  if (qword_27DAE2AA8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DAE4BA0;
}

uint64_t StoredPhotoLayoutRectProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoLayoutRectProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22FDFF450()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B40);
  __swift_project_value_buffer(v0, qword_27DAE4B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49FA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "cache";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "other";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t sub_22FDFF6C0()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B58);
  __swift_project_value_buffer(v0, qword_27DAE4B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FE4A410;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "localIdentifier";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "date";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parallaxScale";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "preferredLayout";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "layouts";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accessibilityDescription";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "creationDate";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "title";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "subtitle";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_22FE42B84();
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 1)
          {
            sub_22FE42B04();
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }
        }

        sub_22FE42B44();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_4;
        }

        type metadata accessor for StoredPhotoLayoutProto(0);
        sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
        sub_22FE42BA4();
      }

      else if (result == 7)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FE42B34();
      }

      else if (result == 8 || result == 9)
      {
LABEL_4:
        type metadata accessor for StoredPhotoProto(0);
        sub_22FE42B54();
      }

LABEL_5:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3 + 16) || (result = sub_22FE42C84(), !v4))
  {
    if (!*(v3 + 24) || (result = sub_22FE42C84(), !v4))
    {
      if (!*(v3 + 32) || (result = sub_22FE42CA4(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for StoredPhotoLayoutProto(0), sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto), result = sub_22FE42CC4(), !v4))
        {
          result = sub_22FDFFE6C(v3, a1, a2, a3);
          if (!v4)
          {
            sub_22FDFFEE4(v3, a1, a2, a3);
            sub_22FDFFF5C(v3, a1, a2, a3);
            sub_22FDFFFD4(v3, a1, a2, a3);
            type metadata accessor for StoredPhotoProto(0);
            return sub_22FE42A34();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FDFFE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoredPhotoProto(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FDFFEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoredPhotoProto(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_22FE42C84();
  }

  return result;
}

uint64_t sub_22FDFFF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoredPhotoProto(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FDFFFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoredPhotoProto(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FE00098@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x277D84F90];
  result = sub_22FE42A44();
  v5 = a1[11];
  v6 = (a2 + a1[10]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[13];
  v9 = (a2 + a1[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22FE00164(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D28, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE00204(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE00270(uint64_t a1, uint64_t a2)
{
  sub_22FE04130(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE0030C()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B70);
  __swift_project_value_buffer(v0, qword_27DAE4B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoLayoutImageLocationProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FE04178();
        sub_22FE42AE4();
      }

      else if (result == 2)
      {
        type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
        sub_22FE42B54();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoLayoutImageLocationProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FE04178(), result = sub_22FE42C34(), !v4))
  {
    result = sub_22FE00694(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t sub_22FE00694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FE00758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  result = sub_22FE42A44();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22FE007EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D20, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE0088C(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE008F8(uint64_t a1, uint64_t a2)
{
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE00994()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B88);
  __swift_project_value_buffer(v0, qword_27DAE4B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22FE4DA20;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "baseImage";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "maskImage";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "originalCrop";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timePosition";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "timeRect";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "backgroundZorder";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "foregroundZorder";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timeElementZorder";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "imageAOTBrightness";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "userEdited";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t sub_22FE00D70()
{
  type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v2 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v5 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition) = 0;
  result = (v6)(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder) = 0;
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder) = 0;
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder) = 0;
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness) = 0;
  *(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited) = 0;
  qword_27DAE4BA0 = v0;
  return result;
}

uint64_t sub_22FE00EE4()
{
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop, &qword_27DAE4610, &unk_22FE4BA50);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, &qword_27DAE4610, &unk_22FE4BA50);

  return swift_deallocClassInstance();
}

uint64_t StoredPhotoLayoutProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v12 = sub_22FE03B20(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_22FE0107C(v10, a1, a2, a3);
}

uint64_t sub_22FE0107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FE42AB4();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
LABEL_5:
            sub_22FE014D4(v11, v12, v13, v14, v15);
            break;
          case 9:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
            goto LABEL_5;
          case 10:
            sub_22FE0155C(a2, a1, a3, a4);
            break;
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
        }

        sub_22FE01298(v21, v22, v23, v24, v25);
      }

      else
      {
        if (result == 3)
        {
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
          goto LABEL_26;
        }

        if (result != 4)
        {
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
LABEL_26:
          sub_22FE01370(v16, v17, v18, v19, v20);
          goto LABEL_6;
        }

        sub_22FE01448(a2, a1, a3, a4);
      }

LABEL_6:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t sub_22FE01298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42BB4();
  return swift_endAccess();
}

uint64_t sub_22FE01370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  sub_22FE42BB4();
  return swift_endAccess();
}

uint64_t sub_22FE01448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FE42B84();
  return swift_endAccess();
}

uint64_t sub_22FE014D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_22FE42B44();
  return swift_endAccess();
}

uint64_t sub_22FE0155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FE42AD4();
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for StoredPhotoLayoutProto(0);
  result = sub_22FE01654(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FE01654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FE018C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage, 1);
  if (!v4)
  {
    sub_22FE018C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 2);
    sub_22FE01AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop, 3);
    v10 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      sub_22FE42CA4();
    }

    sub_22FE01AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 5);
    v11 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      sub_22FE42C84();
    }

    v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    if (*(a1 + v12))
    {
      sub_22FE42C84();
    }

    v13 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
    swift_beginAccess();
    if (*(a1 + v13))
    {
      sub_22FE42C84();
    }

    v14 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      sub_22FE42C84();
    }

    v15 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
    result = swift_beginAccess();
    if (*(a1 + v15) == 1)
    {
      return sub_22FE42C24();
    }
  }

  return result;
}

uint64_t sub_22FE018C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_22FD764B4(a1 + v15, v10, &qword_27DAE4618, &unk_22FE4DA30);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22FD93E6C(v10, &qword_27DAE4618, &unk_22FE4DA30);
  }

  sub_22FDFDFC4(v10, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42CD4();
  return sub_22FE040D0(v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
}

uint64_t sub_22FE01AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_22FD764B4(a1 + v15, v10, &qword_27DAE4610, &unk_22FE4BA50);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22FD93E6C(v10, &qword_27DAE4610, &unk_22FE4BA50);
  }

  sub_22FDFDFC4(v10, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  sub_22FE42CD4();
  return sub_22FE040D0(v14, type metadata accessor for StoredPhotoLayoutRectProto);
}

uint64_t sub_22FE01D04(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v3 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = (&v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4D30, &qword_22FE4E270);
  MEMORY[0x28223BE20](v119);
  v112 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = (&v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v113 = &v111 - v11;
  MEMORY[0x28223BE20](v12);
  v115 = (&v111 - v13);
  MEMORY[0x28223BE20](v14);
  v124 = &v111 - v15;
  v127 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v16 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = (&v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4D38, &qword_22FE4E278);
  MEMORY[0x28223BE20](v18);
  v123 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v111 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v23 - 8);
  v120 = (&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v126 = &v111 - v26;
  MEMORY[0x28223BE20](v27);
  v125 = (&v111 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v111 - v30;
  v32 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  v128 = a1;
  sub_22FD764B4(a1 + v32, v31, &qword_27DAE4618, &unk_22FE4DA30);
  v33 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v34 = v129;
  swift_beginAccess();
  v122 = v18;
  v35 = *(v18 + 48);
  sub_22FD764B4(v31, v22, &qword_27DAE4618, &unk_22FE4DA30);
  v36 = v34 + v33;
  v37 = v127;
  sub_22FD764B4(v36, &v22[v35], &qword_27DAE4618, &unk_22FE4DA30);
  v38 = *(v16 + 48);
  if (v38(v22, 1, v37) == 1)
  {
    v39 = v128;

    sub_22FD93E6C(v31, &qword_27DAE4618, &unk_22FE4DA30);
    if (v38(&v22[v35], 1, v37) != 1)
    {
      goto LABEL_12;
    }

    sub_22FD93E6C(v22, &qword_27DAE4618, &unk_22FE4DA30);
  }

  else
  {
    v39 = v128;
    v40 = v125;
    sub_22FD764B4(v22, v125, &qword_27DAE4618, &unk_22FE4DA30);
    if (v38(&v22[v35], 1, v37) == 1)
    {

      sub_22FD93E6C(v31, &qword_27DAE4618, &unk_22FE4DA30);
      sub_22FE040D0(v40, type metadata accessor for StoredPhotoLayoutImageLocationProto);
      goto LABEL_12;
    }

    v41 = &v22[v35];
    v42 = v121;
    sub_22FDFDFC4(v41, v121, type metadata accessor for StoredPhotoLayoutImageLocationProto);

    v43 = _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(v40, v42);
    sub_22FE040D0(v42, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    sub_22FD93E6C(v31, &qword_27DAE4618, &unk_22FE4DA30);
    sub_22FE040D0(v40, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    sub_22FD93E6C(v22, &qword_27DAE4618, &unk_22FE4DA30);
    if ((v43 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v44 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  v45 = v126;
  sub_22FD764B4(v39 + v44, v126, &qword_27DAE4618, &unk_22FE4DA30);
  v46 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  v47 = v129;
  swift_beginAccess();
  v22 = v123;
  v48 = *(v122 + 48);
  sub_22FD764B4(v45, v123, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD764B4(v47 + v46, &v22[v48], &qword_27DAE4618, &unk_22FE4DA30);
  v49 = v127;
  if (v38(v22, 1, v127) == 1)
  {
    sub_22FD93E6C(v45, &qword_27DAE4618, &unk_22FE4DA30);
    v50 = v38(&v22[v48], 1, v49);
    v51 = v124;
    v52 = v128;
    if (v50 == 1)
    {
      sub_22FD93E6C(v22, &qword_27DAE4618, &unk_22FE4DA30);
      goto LABEL_17;
    }

LABEL_12:
    v55 = &qword_27DAE4D38;
    v56 = &qword_22FE4E278;
    v57 = v22;
LABEL_13:
    sub_22FD93E6C(v57, v55, v56);
    goto LABEL_14;
  }

  v53 = v120;
  sub_22FD764B4(v22, v120, &qword_27DAE4618, &unk_22FE4DA30);
  v54 = v38(&v22[v48], 1, v49);
  v51 = v124;
  if (v54 == 1)
  {
    sub_22FD93E6C(v126, &qword_27DAE4618, &unk_22FE4DA30);
    sub_22FE040D0(v53, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    goto LABEL_12;
  }

  v60 = v121;
  sub_22FDFDFC4(&v22[v48], v121, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v61 = _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(v53, v60);
  sub_22FE040D0(v60, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FD93E6C(v126, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FE040D0(v53, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FD93E6C(v22, &qword_27DAE4618, &unk_22FE4DA30);
  v52 = v128;
  if ((v61 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v62 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v52 + v62, v51, &qword_27DAE4610, &unk_22FE4BA50);
  v63 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v64 = v129;
  swift_beginAccess();
  v65 = *(v119 + 48);
  v66 = v116;
  sub_22FD764B4(v51, v116, &qword_27DAE4610, &unk_22FE4BA50);
  v67 = v66;
  sub_22FD764B4(v64 + v63, v66 + v65, &qword_27DAE4610, &unk_22FE4BA50);
  v68 = *(v117 + 48);
  v69 = v66;
  v70 = v118;
  if (v68(v69, 1, v118) == 1)
  {
    sub_22FD93E6C(v51, &qword_27DAE4610, &unk_22FE4BA50);
    if (v68(v67 + v65, 1, v70) == 1)
    {
      sub_22FD93E6C(v67, &qword_27DAE4610, &unk_22FE4BA50);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v71 = v115;
  sub_22FD764B4(v67, v115, &qword_27DAE4610, &unk_22FE4BA50);
  if (v68(v67 + v65, 1, v70) == 1)
  {
    sub_22FD93E6C(v124, &qword_27DAE4610, &unk_22FE4BA50);
    sub_22FE040D0(v71, type metadata accessor for StoredPhotoLayoutRectProto);
LABEL_22:
    v55 = &qword_27DAE4D30;
    v56 = &qword_22FE4E270;
    v57 = v67;
    goto LABEL_13;
  }

  v72 = v67 + v65;
  v73 = v114;
  sub_22FDFDFC4(v72, v114, type metadata accessor for StoredPhotoLayoutRectProto);
  v74 = _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(v71, v73);
  sub_22FE040D0(v73, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FD93E6C(v124, &qword_27DAE4610, &unk_22FE4BA50);
  sub_22FE040D0(v71, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FD93E6C(v67, &qword_27DAE4610, &unk_22FE4BA50);
  if ((v74 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v75 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  LODWORD(v75) = *(v52 + v75);
  v76 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  v77 = v129;
  swift_beginAccess();
  if (v75 != *(v77 + v76))
  {
    goto LABEL_14;
  }

  v78 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  v79 = v113;
  sub_22FD764B4(v52 + v78, v113, &qword_27DAE4610, &unk_22FE4BA50);
  v80 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  v81 = v129;
  swift_beginAccess();
  v82 = *(v119 + 48);
  v83 = v112;
  sub_22FD764B4(v79, v112, &qword_27DAE4610, &unk_22FE4BA50);
  v84 = v83;
  sub_22FD764B4(v81 + v80, v83 + v82, &qword_27DAE4610, &unk_22FE4BA50);
  if (v68(v83, 1, v70) != 1)
  {
    v87 = v83;
    v88 = v111;
    sub_22FD764B4(v87, v111, &qword_27DAE4610, &unk_22FE4BA50);
    if (v68(v84 + v82, 1, v70) != 1)
    {
      v89 = v114;
      sub_22FDFDFC4(v84 + v82, v114, type metadata accessor for StoredPhotoLayoutRectProto);
      v90 = v84;
      v91 = _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(v88, v89);
      sub_22FE040D0(v89, type metadata accessor for StoredPhotoLayoutRectProto);
      sub_22FD93E6C(v113, &qword_27DAE4610, &unk_22FE4BA50);
      sub_22FE040D0(v88, type metadata accessor for StoredPhotoLayoutRectProto);
      sub_22FD93E6C(v90, &qword_27DAE4610, &unk_22FE4BA50);
      v86 = v128;
      if ((v91 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

    sub_22FD93E6C(v113, &qword_27DAE4610, &unk_22FE4BA50);
    sub_22FE040D0(v88, type metadata accessor for StoredPhotoLayoutRectProto);
LABEL_30:
    sub_22FD93E6C(v84, &qword_27DAE4D30, &qword_22FE4E270);
    goto LABEL_14;
  }

  sub_22FD93E6C(v79, &qword_27DAE4610, &unk_22FE4BA50);
  v85 = v68(v83 + v82, 1, v70);
  v86 = v128;
  if (v85 != 1)
  {
    goto LABEL_30;
  }

  sub_22FD93E6C(v83, &qword_27DAE4610, &unk_22FE4BA50);
LABEL_32:
  v92 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v93 = *(v86 + v92);
  v94 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  v95 = v129;
  swift_beginAccess();
  if (v93 == *(v95 + v94))
  {
    v96 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    v97 = *(v86 + v96);
    v98 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    v99 = v129;
    swift_beginAccess();
    if (v97 == *(v99 + v98))
    {
      v100 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
      swift_beginAccess();
      v101 = *(v86 + v100);
      v102 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
      v103 = v129;
      swift_beginAccess();
      if (v101 == *(v103 + v102))
      {
        v104 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
        swift_beginAccess();
        v105 = *(v86 + v104);
        v106 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
        v107 = v129;
        swift_beginAccess();
        if (v105 == *(v107 + v106))
        {
          v108 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
          swift_beginAccess();
          LOBYTE(v108) = *(v86 + v108);

          v109 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
          v110 = v129;
          swift_beginAccess();
          LOBYTE(v109) = *(v110 + v109);

          v58 = v108 ^ v109 ^ 1;
          return v58 & 1;
        }
      }
    }
  }

LABEL_14:

  v58 = 0;
  return v58 & 1;
}

uint64_t sub_22FE02BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FE42A44();
  v4 = *(a1 + 20);
  if (qword_27DAE2AA8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DAE4BA0;
}

uint64_t sub_22FE02C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FE02CC8(uint64_t a1)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22FE02D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D18, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE02E20(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE02E8C(uint64_t a1, uint64_t a2)
{
  sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE02F28()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4BA8);
  __swift_project_value_buffer(v0, qword_27DAE4BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoLayoutRectProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_22FE42B44();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoLayoutRectProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_22FE42C84(), !v4))
  {
    if (!v3[1] || (result = sub_22FE42C84(), !v4))
    {
      if (!v3[2] || (result = sub_22FE42C84(), !v4))
      {
        if (!v3[3] || (result = sub_22FE42C84(), !v4))
        {
          type metadata accessor for StoredPhotoLayoutRectProto(0);
          return sub_22FE42A34();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FE03380(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FE04130(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FE03408@<X0>(_OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return sub_22FE42A44();
}

uint64_t sub_22FE0347C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D10, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE0351C(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE03588(uint64_t a1, uint64_t a2)
{
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for StoredPhotoLayoutRectProto(0);
  sub_22FE42A54();
  sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    sub_22FE42A54();
    sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FE43024() & 1;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s10PhotosFace22StoredPhotoLayoutProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22FE01D04(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FE42A54();
  sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace16StoredPhotoProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (sub_22FDB6D34(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StoredPhotoProto(0);
  v5 = v4[10];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22FE43CB4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[11];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[12];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v23 = v4;
      v24 = sub_22FE43CB4();
      v4 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = v4[13];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_22FE43CB4() & 1) == 0)
    {
      return 0;
    }

LABEL_33:
    sub_22FE42A54();
    sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FE43024() & 1;
  }

  if (!v29)
  {
    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_22FE03B20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v9 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  v10(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 1, 1, v9);
  v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v13 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v1 + v12, 1, 1, v13);
  v38 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition) = 0;
  v40 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  v14(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 1, 1, v13);
  v15 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder) = 0;
  v42 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder) = 0;
  v43 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder) = 0;
  v44 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness) = 0;
  v39 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited) = 0;
  v16 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(a1 + v16, v7, &qword_27DAE4618, &unk_22FE4DA30);
  swift_beginAccess();
  sub_22FDE176C(v7, v1 + v8, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(a1 + v17, v7, &qword_27DAE4618, &unk_22FE4DA30);
  swift_beginAccess();
  sub_22FDE176C(v7, v1 + v11, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  v19 = v41;
  sub_22FD764B4(a1 + v18, v41, &qword_27DAE4610, &unk_22FE4BA50);
  swift_beginAccess();
  sub_22FDE176C(v19, v1 + v12, &qword_27DAE4610, &unk_22FE4BA50);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  LODWORD(v20) = *(a1 + v20);
  v21 = v38;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  sub_22FD764B4(a1 + v22, v19, &qword_27DAE4610, &unk_22FE4BA50);
  v23 = v40;
  swift_beginAccess();
  sub_22FDE176C(v19, v1 + v23, &qword_27DAE4610, &unk_22FE4BA50);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v25 = *(a1 + v24);
  swift_beginAccess();
  *(v1 + v15) = v25;
  v26 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v42;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v43;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = v44;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v35);
  v36 = v39;
  swift_beginAccess();
  *(v1 + v36) = a1;
  return v1;
}

uint64_t sub_22FE04068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FE040D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FE04130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FE04178()
{
  result = qword_27DAE4C18;
  if (!qword_27DAE4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C18);
  }

  return result;
}

unint64_t sub_22FE041D0()
{
  result = qword_27DAE4C38;
  if (!qword_27DAE4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C38);
  }

  return result;
}

unint64_t sub_22FE04228()
{
  result = qword_27DAE4C40;
  if (!qword_27DAE4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C40);
  }

  return result;
}

unint64_t sub_22FE04280()
{
  result = qword_27DAE4C48;
  if (!qword_27DAE4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4C50, &qword_22FE4DB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C48);
  }

  return result;
}

unint64_t sub_22FE042E8()
{
  result = qword_27DAE4C58;
  if (!qword_27DAE4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C58);
  }

  return result;
}

double keypath_get_31Tm@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

void sub_22FE0485C(uint64_t a1)
{
  sub_22FE04D0C(319, &qword_27DAE4CB0, type metadata accessor for StoredPhotoLayoutProto, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FE42A54();
    if (v2 <= 0x3F)
    {
      sub_22FDFA5DC(319, &qword_28148AE78, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_22FDFA5DC(319, &qword_27DAE4CB8, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FE049B8(uint64_t a1)
{
  sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    sub_22FDFA5DC(319, &qword_28148AE78, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FE04A84(uint64_t a1)
{
  result = sub_22FE42A54();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoredPhotoLayoutProto._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE04B30(uint64_t a1)
{
  result = sub_22FE42A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FE04BB8(uint64_t a1)
{
  sub_22FE04D0C(319, &qword_27DAE4D00, type metadata accessor for StoredPhotoLayoutImageLocationProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22FE04D0C(319, &qword_27DAE4D08, type metadata accessor for StoredPhotoLayoutRectProto, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22FE04D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SyncedPhotosFaceProto.day.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncedPhotosFaceProto.checksum.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncedPhotosFaceProto.day.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t SyncedPhotosFaceProto.checksum.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t SyncFacesRequestProto.trackedFaces.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SyncFacesRequestProto.cachedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncFacesRequestProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncFacesRequestProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SyncFacesRequestProto.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for SyncFacesRequestProto(0);
  return sub_22FE42A44();
}

uint64_t SyncedPhotosFaceProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t SyncedPhotosFaceProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t (*SyncedPhotosFaceProto.day.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22FDFC9BC;
}

Swift::Void __swiftcall SyncedPhotosFaceProto.clearDay()()
{
  v1 = v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SyncedPhotosFaceProto.photos.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncedPhotosFaceProto.cached.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t (*SyncedPhotosFaceProto.checksum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22FE06D34;
}

Swift::Void __swiftcall SyncedPhotosFaceProto.clearChecksum()()
{
  v1 = v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SyncedPhotosFaceProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncedPhotosFaceProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SyncedPhotosFaceProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  v3 = type metadata accessor for SyncedPhotosFaceProto(0);
  result = sub_22FE42A44();
  v5 = a1 + *(v3 + 36);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + *(v3 + 40);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_22FE0558C()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4D40);
  __swift_project_value_buffer(v0, qword_27DAE4D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trackedFaces";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cachedIdentifiers";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t SyncFacesRequestProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t SyncFacesRequestProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22FE42C44(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_22FE42C44(), !v4))
    {
      type metadata accessor for SyncFacesRequestProto(0);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t static SyncFacesRequestProto.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FDB6714(*a1, *a2) & 1) == 0 || (sub_22FDB6714(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SyncFacesRequestProto(0);
  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FE059A8@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  return sub_22FE42A44();
}

uint64_t sub_22FE05A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE05BA8(&qword_27DAE4DD8, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE05AC0(uint64_t a1)
{
  v2 = sub_22FE05BA8(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE05B2C(uint64_t a1, uint64_t a2)
{
  sub_22FE05BA8(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE05BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FE05BF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FDB6714(*a1, *a2) & 1) == 0 || (sub_22FDB6714(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FE05CC4()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4D58);
  __swift_project_value_buffer(v0, qword_27DAE4D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FE4E280;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "day";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "photos";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cached";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "complete";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "checksum";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t SyncedPhotosFaceProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FE42AB4();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_22FE42AF4();
            break;
          case 5:
            sub_22FE42AD4();
            break;
          case 6:
            type metadata accessor for SyncedPhotosFaceProto(0);
            sub_22FE42B14();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_22FE42B04();
            break;
          case 2:
            type metadata accessor for StoredPhotoProto(0);
            sub_22FE05BA8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
            sub_22FE42BA4();
            break;
          case 3:
            type metadata accessor for SyncedPhotosFaceProto(0);
            sub_22FE42B94();
            break;
        }
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t SyncedPhotosFaceProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(*(v3 + 16) + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FE05BA8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto), result = sub_22FE42CC4(), !v4))
  {
    result = sub_22FE06308(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(*(v3 + 24) + 16))
      {
        sub_22FE42C44();
      }

      if (*(v3 + 32) == 1)
      {
        sub_22FE42C24();
      }

      sub_22FE06380(v3, a1, a2, a3);
      type metadata accessor for SyncedPhotosFaceProto(0);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t sub_22FE06308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_22FE42CB4();
  }

  return result;
}

uint64_t sub_22FE06380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_22FE42C64();
  }

  return result;
}

uint64_t sub_22FE06444(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FE43DB4();
  a1(0);
  sub_22FE05BA8(a2, a3, a4);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FE064CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
  result = sub_22FE42A44();
  v6 = *(a1 + 40);
  v7 = a2 + *(a1 + 36);
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_22FE06584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE05BA8(&qword_27DAE4DD0, type metadata accessor for SyncedPhotosFaceProto, &protocol conformance descriptor for SyncedPhotosFaceProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE06624(uint64_t a1)
{
  v2 = sub_22FE05BA8(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto, &protocol conformance descriptor for SyncedPhotosFaceProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE06690(uint64_t a1, uint64_t a2)
{
  sub_22FE05BA8(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto, &protocol conformance descriptor for SyncedPhotosFaceProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace06SyncedaB5ProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = *(v4 + 36);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_22FDB655C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_22FDB6714(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v11 = *(v4 + 40);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FE43024() & 1;
}

void sub_22FE06AC4(uint64_t a1)
{
  sub_22FE06CE4(319, &qword_27DAE4878, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FE42A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FE06B94(uint64_t a1)
{
  sub_22FDF438C(319);
  if (v1 <= 0x3F)
  {
    sub_22FE06CE4(319, &qword_27DAE4878, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22FE42A54();
      if (v3 <= 0x3F)
      {
        sub_22FE06CE4(319, &qword_27DAE4DC0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22FE06CE4(319, &qword_27DAE4DC8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FE06CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t UUID.init(serialized:version:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_22FD91780();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
      return sub_22FD917D4(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_24;
      }

      v9 = sub_22FE42654();
      if (!v9)
      {
        goto LABEL_29;
      }

      v10 = v9;
      v11 = sub_22FE42684();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_26;
      }

      v12 = a1 - v11 + v10;
      sub_22FE42674();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_23;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_22FE42654();
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = v16;
    v18 = sub_22FE42684();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      sub_22FE42674();
      if (!v19)
      {
        goto LABEL_28;
      }

LABEL_21:
      sub_22FE42894();
      return sub_22FD917D4(a1, a2);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22FE42674();
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_22FE42674();
  __break(1u);
  return result;
}

unint64_t UUID.serialized(version:)(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_22FE428A4();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  sub_22FE428A4();
  return sub_22FDB285C(&v10, 0x10uLL);
}

uint64_t FixedWidthInteger.init(serialized:version:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22FE43A54() & 7) != 0)
  {
    goto LABEL_52;
  }

  v12 = sub_22FE43A54();
  v13 = v12 + 7;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  v14 = a2 >> 62;
  v50 = a2 >> 62;
  v51 = a2;
  v49 = a1;
  v34[1] = v5;
  if ((a2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(a2);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v14 == 2)
  {
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    LODWORD(v15) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_54;
    }

    v15 = v15;
LABEL_13:
    v19 = v13 >> 3;
    if (v15 == v13 >> 3)
    {
      v20 = v12;
      sub_22FE43A84();
      if (v50)
      {
        v21 = v20;
        v22 = v49;
        if (v50 == 2)
        {
          v25 = *(v49 + 16);
        }

        else
        {
          v25 = v49;
        }
      }

      else
      {
        v25 = 0;
        v21 = v20;
        v22 = v49;
      }

      if (v21 < -7)
      {
        goto LABEL_53;
      }

      if ((v21 + 7) < 0xF)
      {
        return sub_22FD917D4(v22, v51);
      }

      v47 = BYTE6(v51);
      v48 = v22;
      v26 = (v9 + 8);
      v45 = v22 >> 8;
      v46 = v22 >> 32;
      v43 = v22 >> 24;
      v44 = v22 >> 16;
      v41 = v22 >> 40;
      v42 = HIDWORD(v22);
      v39 = HIBYTE(v22);
      v40 = HIWORD(v22);
      v37 = v51 >> 16;
      v38 = v51 >> 8;
      v35 = HIDWORD(v51);
      v36 = v51 >> 24;
      while (1)
      {
        if (!v19)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
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
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
        }

        v53 = 8;
        sub_22FE08978();
        sub_22FE437D4();
        if (v50 == 2)
        {
          break;
        }

        if (v50 == 1)
        {
          if (v25 < v48 || v25 >= v46)
          {
            goto LABEL_48;
          }

          v28 = sub_22FE42654();
          if (!v28)
          {
            goto LABEL_55;
          }

          v29 = v28;
          v30 = sub_22FE42684();
          v31 = v25 - v30;
          if (__OFSUB__(v25, v30))
          {
            goto LABEL_50;
          }

LABEL_26:
          v27 = *(v29 + v31);
          v22 = v49;
          goto LABEL_27;
        }

        if (v25 >= v47)
        {
          goto LABEL_46;
        }

        LOBYTE(v53) = v22;
        BYTE1(v53) = v45;
        BYTE2(v53) = v44;
        BYTE3(v53) = v43;
        BYTE4(v53) = v42;
        BYTE5(v53) = v41;
        BYTE6(v53) = v40;
        HIBYTE(v53) = v39;
        v54 = v51;
        v55 = v38;
        v56 = v37;
        v57 = v36;
        v58 = v35;
        v59 = BYTE5(v51);
        v27 = *(&v53 + v25);
LABEL_27:
        LOBYTE(v53) = v27;
        sub_22FE089CC();
        sub_22FE437E4();
        sub_22FE437C4();
        (*v26)(v11, a3);
        ++v25;
        if (!--v19)
        {
          return sub_22FD917D4(v22, v51);
        }
      }

      if (v25 < *(v22 + 16))
      {
        goto LABEL_47;
      }

      if (v25 >= *(v22 + 24))
      {
        goto LABEL_49;
      }

      v32 = sub_22FE42654();
      if (!v32)
      {
        goto LABEL_56;
      }

      v29 = v32;
      v33 = sub_22FE42684();
      v31 = v25 - v33;
      if (__OFSUB__(v25, v33))
      {
        goto LABEL_51;
      }

      goto LABEL_26;
    }

LABEL_20:
    sub_22FD91780();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return sub_22FD917D4(v49, a2);
  }

  if ((v12 + 7) > 0xE)
  {
    goto LABEL_20;
  }

  sub_22FE43A84();
  v22 = v49;
  return sub_22FD917D4(v22, v51);
}

uint64_t FixedWidthInteger.serialized(version:)(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43A64();
  sub_22FE07724(v5, sub_22FE0765C, 0, a2, MEMORY[0x277D84A98], MEMORY[0x277CC9318], MEMORY[0x277D84AC0], v6);
  (*(v3 + 8))(v5, a2);
  return v8[1];
}

char *sub_22FE0765C@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (result)
  {
    v4 = a2 - result;
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_22FE088C0(result, a2);
      v5 = (v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      v6 = sub_22FE42644();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
        result = swift_allocObject();
        *(result + 2) = 0;
        *(result + 3) = v4;
        v5 = (v6 | 0x8000000000000000);
      }

      else
      {
        result = (v4 << 32);
        v5 = (v6 | 0x4000000000000000);
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE07724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_22FE07870@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X5>, _BYTE *a4@<X8>)
{
  v8 = a3();
  result = sub_22FD917D4(a1, a2);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_22FE078D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v7 = sub_22FE09144(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22FE0792C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = sub_22FE09454(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22FE07988@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22FE0971C(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t String.init(serialized:version:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FE430A4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_22FE43094();
  result = sub_22FE43084();
  if (v6)
  {
    v7 = result;
    sub_22FD917D4(a1, a2);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.serialized(version:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  return sub_22FDBF4C0(a2, a3);
}

uint64_t sub_22FE07AE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22FE430A4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22FE43094();
  result = sub_22FE43084();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    result = sub_22FD917D4(a1, a2);
    *a3 = v9;
    a3[1] = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE07BA8()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_22FDBF4C0(v2, v1);
}

uint64_t Array<A>.init(serialized:version:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v18 - v12;
  v19 = *a3;
  v24 = a1;
  v25 = a2;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22FDB4380(a1, a2);
  v21 = a4;
  swift_getAssociatedConformanceWitness();
  sub_22FDF1538(AssociatedTypeWitness);
  v14 = v26;
  sub_22FE42BE4();
  if (v14)
  {
    sub_22FD917D4(a1, a2);
  }

  else
  {
    v15 = a1;
    LOBYTE(v22[0]) = v19;
    v16 = v20;
    *&v22[0] = (*(a5 + 32))(v13, v22, v21, a5);
    sub_22FE43354();
    swift_getWitnessTable();
    a1 = sub_22FE43364();
    sub_22FD917D4(v15, a2);
    (*(v16 + 8))(v13, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t Array<A>.serialized(version:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v15 - v12;
  v16 = *a1;
  (*(a4 + 40))(a2, &v16, a3, a4, v11);
  if (!v4)
  {
    swift_getAssociatedConformanceWitness();
    a3 = sub_22FE42BD4();
    (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return a3;
}

uint64_t Array<A>.init(serialized:version:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v28[0] = a1;
  v28[1] = a2;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE08A20();
  v15 = v11;
  v16 = sub_22FE42BE4();
  if (v5)
  {
    sub_22FD917D4(a1, a2);
  }

  else
  {
    v17 = *v13;
    v24[1] = v24;
    *&v25 = v17;
    MEMORY[0x28223BE20](v16);
    v18 = a5;
    v19 = v29;
    v24[-4] = v29;
    v24[-3] = v18;
    LOBYTE(v24[-2]) = v14;

    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4DF0, &qword_22FE4E5C8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v21 = sub_22FE08A9C();
    v22 = sub_22FDA5834(sub_22FE08A78, &v24[-6], v24[0], v19, v20, v21, MEMORY[0x277D84950], v28);

    *&v25 = v22;
    sub_22FE43354();
    swift_getWitnessTable();
    v15 = sub_22FE43364();
    sub_22FD917D4(a1, a2);
    sub_22FE08B00(v13);
  }

  return v15;
}

uint64_t sub_22FE08310(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  v10 = a1[1];
  v13 = a2;
  v11 = *(a4 + 8);
  sub_22FDB4380(v9, v10);
  result = v11(v9, v10, &v13, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t Array<A>.serialized(version:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a1;
  v22[2] = a2;
  v19 = a3;
  v20 = a4;
  v21 = v10;
  v12 = sub_22FE43354();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  v15 = sub_22FDA5834(sub_22FE08B5C, v18, v12, MEMORY[0x277CC9318], v13, WitnessTable, MEMORY[0x277D84950], v22);
  if (!v4)
  {
    MEMORY[0x28223BE20](v15);
    *&v18[-16] = v16;
    sub_22FE08A20();
    sub_22FE42C14();

    v9 = sub_22FE42BD4();
    sub_22FE08B00(v11);
  }

  return v9;
}

uint64_t sub_22FE085A4(uint64_t *a1, uint64_t a2)
{

  *a1 = a2;
  return result;
}

uint64_t Array<A>.gather(attachments:version:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22FE43354();
  swift_getWitnessTable();
  return sub_22FE43224();
}

uint64_t Array<A>.save(attachments:version:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22FE43354();
  swift_getWitnessTable();
  return sub_22FE43224();
}

uint64_t sub_22FE08724@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *(a5 - 8);
  v10 = *a3;
  result = Array<A>.init(serialized:version:)(a1, a2, &v10, *(a4 + 16), v8);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_22FE08854@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22FE0885C()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

unint64_t sub_22FE088A0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE088C0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_22FE08978()
{
  result = qword_27DAE4DE0;
  if (!qword_27DAE4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DE0);
  }

  return result;
}

unint64_t sub_22FE089CC()
{
  result = qword_27DAE4DE8;
  if (!qword_27DAE4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DE8);
  }

  return result;
}

unint64_t sub_22FE08A20()
{
  result = qword_27DAE4840;
  if (!qword_27DAE4840)
  {
    type metadata accessor for GenericListProto(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4840);
  }

  return result;
}

unint64_t sub_22FE08A9C()
{
  result = qword_27DAE4DF8;
  if (!qword_27DAE4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4DF0, &qword_22FE4E5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DF8);
  }

  return result;
}

uint64_t sub_22FE08B00(uint64_t a1)
{
  v2 = type metadata accessor for GenericListProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE08B5C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v10 = *(v2 + 32);
  result = (*(v7 + 16))(&v10, v6);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_22FE08BC8(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_22FE08C14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  return (*(v2 + 24))(v3, &v5, v1);
}

uint64_t sub_22FE08C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  return (*(v2 + 32))(v3, &v5, v1);
}

uint64_t sub_22FE08CBC(uint64_t result, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 1)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FD91780();
      swift_allocError();
      *v8 = 1;
      return swift_willThrow();
    }

    goto LABEL_33;
  }

  if (BYTE6(a2) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v2)
  {
    v7 = 0;
LABEL_23:
    if (v7 < BYTE6(a2))
    {
      v11 = result;
      v12 = a2;
      v13 = BYTE2(a2);
      v14 = BYTE3(a2);
      v15 = BYTE4(a2);
      v16 = BYTE5(a2);
      result = *(&v11 + v7);
      if ((result & 0x80) != 0)
      {
        goto LABEL_25;
      }

      return result;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  if (v2 != 2)
  {
    goto LABEL_22;
  }

  v7 = *(result + 16);
  while (1)
  {
    if (v2 != 1)
    {
      goto LABEL_26;
    }

    if (v7 < result || v7 >= result >> 32)
    {
      goto LABEL_36;
    }

    result = sub_22FE42654();
    if (!result)
    {
      break;
    }

    v9 = result;
    result = sub_22FE42684();
    v2 = v7 - result;
    if (!__OFSUB__(v7, result))
    {
      while (1)
      {
        result = *(v9 + v2);
        if ((result & 0x80) == 0)
        {
          return result;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        if (v7 < *(result + 16))
        {
          goto LABEL_35;
        }

        if (v7 >= *(result + 24))
        {
          goto LABEL_37;
        }

        result = sub_22FE42654();
        if (!result)
        {
          goto LABEL_40;
        }

        v9 = result;
        v10 = sub_22FE42684();
        v2 = v7 - v10;
        if (__OFSUB__(v7, v10))
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_22:
    v7 = result;
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22FE08F04(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 1)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FD91780();
      swift_allocError();
      *v8 = 1;
      return swift_willThrow();
    }

    goto LABEL_31;
  }

  if (BYTE6(a2) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v2)
  {
    v7 = 0;
LABEL_23:
    if (v7 < BYTE6(a2))
    {
      v12 = a1;
      v13 = a2;
      v14 = BYTE2(a2);
      v15 = BYTE3(a2);
      v16 = BYTE4(a2);
      v17 = BYTE5(a2);
      return *(&v12 + v7);
    }

    goto LABEL_32;
  }

  if (v2 != 2)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 16);
  while (1)
  {
    if (v2 != 1)
    {
      if (v7 >= *(a1 + 16))
      {
        if (v7 < *(a1 + 24))
        {
          result = sub_22FE42654();
          if (!result)
          {
            goto LABEL_38;
          }

          v10 = result;
          v11 = sub_22FE42684();
          v2 = v7 - v11;
          if (!__OFSUB__(v7, v11))
          {
            return *(v10 + v2);
          }

LABEL_36:
          __break(1u);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v7 < a1 || v7 >= a1 >> 32)
    {
      goto LABEL_34;
    }

    result = sub_22FE42654();
    if (!result)
    {
      break;
    }

    v10 = result;
    a1 = sub_22FE42684();
    v2 = v7 - a1;
    if (!__OFSUB__(v7, a1))
    {
      return *(v10 + v2);
    }

    __break(1u);
LABEL_22:
    v7 = a1;
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22FE09144(uint64_t a1, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_24:
      sub_22FD91780();
      swift_allocError();
      *v16 = 1;
      return swift_willThrow();
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v3)
  {
    goto LABEL_22;
  }

  if (BYTE6(a2) != 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
LABEL_8:
    v8 = a1;
    if (!v3)
    {
      if (v2 && v2 > 1uLL)
      {
        v14 = a1;
        v17 = BYTE1(a1);
        return v17 | (v14 << 8);
      }

      goto LABEL_41;
    }

    if (v3 == 2)
    {
      v9 = *(a1 + 16);
    }

    else
    {
      v9 = a1;
    }

    if (v3 != 1)
    {
      if (v9 >= *(a1 + 16))
      {
        if (v9 >= *(a1 + 24))
        {
          goto LABEL_44;
        }

        v18 = a1;
        result = sub_22FE42654();
        if (!result)
        {
          goto LABEL_47;
        }

        v19 = result;
        v20 = sub_22FE42684();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_45;
        }

        v21 = v9 + 1;
        if (v9 + 1 >= *(v18 + 16))
        {
          if (v21 < *(v18 + 24))
          {
            v14 = *(v19 + v9 - v20);
            result = sub_22FE42654();
            if (!result)
            {
              goto LABEL_47;
            }

            v15 = result;
            v22 = sub_22FE42684();
            v3 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
LABEL_37:
              v17 = *(v15 + v3);
              return v17 | (v14 << 8);
            }

LABEL_45:
            __break(1u);
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v9 < a1)
    {
      goto LABEL_42;
    }

    v10 = a1 >> 32;
    if (v9 >= a1 >> 32)
    {
      goto LABEL_42;
    }

    result = sub_22FE42654();
    if (!result)
    {
      goto LABEL_46;
    }

    v12 = result;
    a1 = sub_22FE42684();
    v3 = v9 - a1;
    if (!__OFSUB__(v9, a1))
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_40;
    }

    if (HIDWORD(a1) - a1 != 2)
    {
      goto LABEL_24;
    }
  }

  v13 = v9 + 1;
  if (v9 + 1 < v8 || v13 >= v10)
  {
    goto LABEL_42;
  }

  v14 = *(v12 + v3);
  result = sub_22FE42654();
  if (result)
  {
    v15 = result;
    a1 = sub_22FE42684();
    v3 = v13 - a1;
    if (!__OFSUB__(v13, a1))
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_22FE09454(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_41;
    }

    if (v9 != 4)
    {
      goto LABEL_13;
    }

LABEL_8:
    v35 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v2 = 0;
    v33 = a1 >> 32;
    v34 = BYTE6(a2);
    v12 = 4;
    v31 = a1 >> 16;
    v32 = a1 >> 8;
    v29 = HIDWORD(a1);
    v30 = a1 >> 24;
    v27 = HIWORD(a1);
    v28 = a1 >> 40;
    v25 = a2 >> 8;
    v26 = HIBYTE(a1);
    v23 = a2 >> 24;
    v24 = a2 >> 16;
    v22 = HIDWORD(a2);
    v13 = a2 >> 40;
    while (v5 != 1)
    {
      if (v5)
      {
        if (v10 < *(a1 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v10 >= *(a1 + 24))
        {
          goto LABEL_39;
        }

        v19 = sub_22FE42654();
        if (!v19)
        {
          goto LABEL_44;
        }

        v16 = v19;
        v20 = sub_22FE42684();
        v18 = v10 - v20;
        if (__OFSUB__(v10, v20))
        {
          __break(1u);
          return v2;
        }

        goto LABEL_17;
      }

      if (v10 >= v34)
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      v36[1] = v32;
      v36[2] = v31;
      v36[3] = v30;
      v36[4] = v29;
      v36[5] = v28;
      v36[6] = v27;
      v36[7] = v26;
      v36[8] = v3;
      v36[9] = v25;
      v36[10] = v24;
      v36[11] = v23;
      v36[12] = v22;
      v36[13] = v13;
      v14 = v36[v10];
LABEL_18:
      v2 = (v2 << 8) | v14;
      ++v10;
      if (!--v12)
      {
        return v2;
      }
    }

    if (v10 < v35 || v10 >= v33)
    {
      goto LABEL_38;
    }

    v15 = sub_22FE42654();
    if (!v15)
    {
      goto LABEL_43;
    }

    v16 = v15;
    v17 = sub_22FE42684();
    v18 = v10 - v17;
    if (__OFSUB__(v10, v17))
    {
      goto LABEL_40;
    }

LABEL_17:
    v14 = *(v16 + v18);
    goto LABEL_18;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_42;
  }

  if (HIDWORD(a1) - a1 == 4)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22FD91780();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();
  return v2;
}

uint64_t sub_22FE0971C(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_41;
    }

    if (v9 != 8)
    {
      goto LABEL_13;
    }

LABEL_8:
    v35 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v2 = 0;
    v33 = a1 >> 32;
    v34 = BYTE6(a2);
    v12 = 8;
    v31 = a1 >> 16;
    v32 = a1 >> 8;
    v29 = HIDWORD(a1);
    v30 = a1 >> 24;
    v27 = HIWORD(a1);
    v28 = a1 >> 40;
    v25 = a2 >> 8;
    v26 = HIBYTE(a1);
    v23 = a2 >> 24;
    v24 = a2 >> 16;
    v22 = HIDWORD(a2);
    v13 = a2 >> 40;
    while (v5 != 1)
    {
      if (v5)
      {
        if (v10 < *(a1 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v10 >= *(a1 + 24))
        {
          goto LABEL_39;
        }

        v19 = sub_22FE42654();
        if (!v19)
        {
          goto LABEL_44;
        }

        v16 = v19;
        v20 = sub_22FE42684();
        v18 = v10 - v20;
        if (__OFSUB__(v10, v20))
        {
          __break(1u);
          return v2;
        }

        goto LABEL_17;
      }

      if (v10 >= v34)
      {
        goto LABEL_37;
      }

      v36[0] = a1;
      v36[1] = v32;
      v36[2] = v31;
      v36[3] = v30;
      v36[4] = v29;
      v36[5] = v28;
      v36[6] = v27;
      v36[7] = v26;
      v36[8] = v3;
      v36[9] = v25;
      v36[10] = v24;
      v36[11] = v23;
      v36[12] = v22;
      v36[13] = v13;
      v14 = v36[v10];
LABEL_18:
      v2 = (v2 << 8) | v14;
      ++v10;
      if (!--v12)
      {
        return v2;
      }
    }

    if (v10 < v35 || v10 >= v33)
    {
      goto LABEL_38;
    }

    v15 = sub_22FE42654();
    if (!v15)
    {
      goto LABEL_43;
    }

    v16 = v15;
    v17 = sub_22FE42684();
    v18 = v10 - v17;
    if (__OFSUB__(v10, v17))
    {
      goto LABEL_40;
    }

LABEL_17:
    v14 = *(v16 + v18);
    goto LABEL_18;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 8)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_42;
  }

  if (HIDWORD(a1) - a1 == 8)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22FD91780();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();
  return v2;
}

uint64_t sub_22FE09B5C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t BroadcastSequence.__allocating_init()()
{
  v0 = swift_allocObject();
  BroadcastSequence.init()();
  return v0;
}

uint64_t BroadcastSequence.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE434D4();
  *(v0 + 16) = sub_22FE42F34();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_22FE09C50(uint64_t a1)
{
  v25 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v23 = &v18 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v22 = sub_22FE43494();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v18 - v6;
  v24 = v2;
  v7 = sub_22FE434D4();
  v8 = *(v7 - 8);
  v18 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  swift_beginAccess();
  v11 = v1[2];

  if (!sub_22FE43304())
  {
  }

  v12 = 0;
  v19 = (v3 + 16);
  v20 = (v8 + 16);
  v13 = (v5 + 8);
  while (1)
  {
    v14 = sub_22FE432F4();
    sub_22FE432B4();
    if (v14)
    {
      (*(v8 + 16))(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v7);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v18 != 8)
    {
      break;
    }

    v26 = result;
    (*v20)(v10, &v26, v7);
    swift_unknownObjectRelease();
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    (*v19)(v23, v25, v24);
    v16 = v21;
    sub_22FE434B4();
    (*v13)(v16, v22);
    (*(v8 + 8))(v10, v7);
    ++v12;
    if (v15 == sub_22FE43304())
    {
    }
  }

  __break(1u);
  return result;
}

void *sub_22FE09FD4(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v4 = sub_22FE434D4();
  v5 = *(v4 - 8);
  v16 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  swift_beginAccess();
  v8 = *(v2 + 16);

  if (!sub_22FE43304())
  {
LABEL_11:

    v14 = sub_22FE432D4();
    swift_beginAccess();
    *(v2 + 16) = v14;
  }

  v9 = 0;
  while (1)
  {
    v10 = sub_22FE432F4();
    sub_22FE432B4();
    if (v10)
    {
      (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v16 != 8)
    {
      break;
    }

    v17 = result;
    (*(v5 + 16))(v7, &v17, v4);
    swift_unknownObjectRelease();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v17 = a1;
    v12 = a1;
    sub_22FE434C4();
    (*(v5 + 8))(v7, v4);
    ++v9;
    if (v11 == sub_22FE43304())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE0A244()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v2 = sub_22FE434A4();
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  if (v0[24] == 1)
  {
    MEMORY[0x28223BE20](v3);
    *(&v7 - 2) = v1;
  }

  sub_22FE0A494(v5);
  return sub_22FE434F4();
}

uint64_t sub_22FE0A39C(uint64_t a1, uint64_t a2)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE0A868();
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE434D4();
  return sub_22FE434C4();
}

uint64_t sub_22FE0A494@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v4 = sub_22FE434A4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_22FE0A538(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v3 = sub_22FE434D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE0A868();
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_22FE43354();
  sub_22FE43324();
  return swift_endAccess();
}

uint64_t BroadcastSequence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22FE0A868()
{
  result = qword_28148B408;
  if (!qword_28148B408)
  {
    type metadata accessor for CommunicationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148B408);
  }

  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22FE0A8E4, 0, 0);
}

uint64_t sub_22FE0A8E4()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_22FE42F34();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_22FE43354();
  *v4 = v0;
  v4[1] = sub_22FE0AA08;
  v6 = v0[5];
  v7 = v0[4];

  return MEMORY[0x282200540](v0 + 2, v0 + 3, &unk_22FE4E710, v3, v7, v5, v6);
}

uint64_t sub_22FE0AA08()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22FDC3644;
  }

  else
  {

    v2 = sub_22FE0AB24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE0AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[4] = AssociatedTypeWitness;
  v4[5] = *(AssociatedTypeWitness - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE0AC18, 0, 0);
}

uint64_t sub_22FE0AC18()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_22FE43354();
  sub_22FE43324();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE0ACC0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD73F54;

  return sub_22FE0AB40(a1, a2, v7, v6);
}

uint64_t DestructableSequence.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DestructableSequence.init(_:_:)(a1, a2, a3);
  return v6;
}

uint64_t DestructableSequence.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + *(*v3 + 104)) = v6;
  v7 = (v3 + *(*v3 + 112));
  *v7 = a2;
  v7[1] = a3;
  return v3;
}

uint64_t DestructableSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v15 - v12;
  (*(v7 + 16))(v9, v3 + *(v5 + 96), v6, v11);
  sub_22FE43464();
  DestructableIterator.init(_:_:)(v13, v3, a2);
}

uint64_t DestructableIterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for DestructableIterator(0, v7, v6, v9);
  *(a3 + *(result + 36)) = a2;
  return result;
}

atomic_uchar *sub_22FE0B11C()
{
  result = (*(**(v0 + *(*v0 + 104)) + 136))();
  if ((atomic_exchange(result, 1u) & 1) == 0)
  {
    return (*(v0 + *(*v0 + 112)))();
  }

  return result;
}

uint64_t *DestructableSequence.deinit()
{
  v1 = *v0;
  sub_22FE0B11C();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t DestructableSequence.__deallocating_deinit()
{
  DestructableSequence.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FE0B2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DestructableSequence.makeAsyncIterator()(a1, a2);
}

uint64_t DestructableIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_22FE0B404;

  return MEMORY[0x282200308](a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22FE0B404()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FE0B534, 0, 0);
  }
}

uint64_t sub_22FE0B534()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v1, 1, AssociatedTypeWitness) == 1)
  {
    sub_22FE0B11C();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FE0B618(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return DestructableIterator.next()(a1, a2);
}

uint64_t sub_22FE0B6C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE0B7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for DestructableSequence(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE0B864(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_22FE0B9F4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t sub_22FE0BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22FE0D520(a3, v25 - v10);
  v12 = sub_22FE43404();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22FE0D590(v11);
  }

  else
  {
    sub_22FE433F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22FE43374();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22FE430C4() + 32;
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

      sub_22FE0D590(a3);

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

  sub_22FE0D590(a3);
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

uint64_t generateElements<A>(isolation:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v12 = type metadata accessor for AsyncThrowingChannel(0, a3, v11, MEMORY[0x277D84950]);

  v13 = AsyncThrowingChannel.__allocating_init()();
  v14 = sub_22FE43404();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v13;

  v16 = sub_22FE0BBD0(0, 0, v10, &unk_22FE4E830, v15);

  WitnessTable = swift_getWitnessTable();
  type metadata accessor for DestructableSequence(0, v12, WitnessTable, v18);
  v21 = v13;
  result = DestructableSequence.__allocating_init(_:_:)(&v21, sub_22FE0D37C, v16);
  *a4 = result;
  return result;
}

uint64_t sub_22FE0C080(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *(a5 - 8);
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_22FE0C1D8;

  return v10(v7);
}

uint64_t sub_22FE0C1D8()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE0C558, 0, 0);
  }

  else
  {
    v6 = (v2[2] + *v2[2]);
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_22FE0C3B0;
    v4 = v2[6];

    return v6(v4);
  }
}

uint64_t sub_22FE0C3B0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD97814, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22FE0C558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE0C5DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;

  generateElements<A>(isolation:_:)(a5, v11, a3, a6);
}

uint64_t sub_22FE0C668(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a2;
  v5[5] = a5;
  v5[3] = a1;
  v7 = *(a5 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v8[1] = sub_22FE0C7B4;

  return v10();
}

uint64_t sub_22FE0C7B4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FE0C904, 0, 0);
  }
}

uint64_t sub_22FE0C904()
{
  if (sub_22FE43304())
  {
    v1 = sub_22FE432F4();
    sub_22FE432B4();
    if (v1)
    {
      (*(v0[6] + 16))(v0[8], v0[10] + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)), v0[5]);
    }

    else
    {
      v6 = v0[7];
      result = sub_22FE43924();
      if (v6 != 8)
      {
        __break(1u);
        return result;
      }

      v7 = v0[8];
      v8 = v0[5];
      v9 = v0[6];
      v0[2] = result;
      (*(v9 + 16))(v7, v0 + 2, v8);
      swift_unknownObjectRelease();
    }

    v0[11] = 1;
    v10 = (v0[3] + *v0[3]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22FE0CB14;
    v3 = v0[8];

    return v10(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22FE0CB14()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[6] + 8))(v2[8], v2[5]);
  if (v0)
  {

    v3 = sub_22FE0CE8C;
  }

  else
  {
    v3 = sub_22FE0CC64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FE0CC64()
{
  v1 = v0[11];
  if (v1 == sub_22FE43304())
  {

    v2 = v0[1];

    return v2();
  }

  v4 = v0[11];
  v5 = sub_22FE432F4();
  sub_22FE432B4();
  if (v5)
  {
    result = (*(v0[6] + 16))(v0[8], v0[10] + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v4, v0[5]);
  }

  else
  {
    v8 = v0[7];
    result = sub_22FE43924();
    if (v8 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    v0[2] = result;
    (*(v11 + 16))(v9, v0 + 2, v10);
    result = swift_unknownObjectRelease();
  }

  v0[11] = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_22FE0CB14;
  v7 = v0[8];

  return v12(v7);
}

uint64_t sub_22FE0CE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE0CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22FE0CF14, 0, 0);
}

uint64_t sub_22FE0CF14()
{
  v4 = (v0[2] + *v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22FE0D014;
  v2 = v0[4];

  return v4(&unk_22FE4E868, v2);
}

uint64_t sub_22FE0D014()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22FE0D188;
  }

  else
  {
    v2 = sub_22FE0D128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE0D128()
{
  AsyncThrowingChannel.finish()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE0D188()
{
  v1 = *(v0 + 48);
  AsyncThrowingChannel.fail<>(_:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE0D1F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD73F54;

  return sub_22FE0CEF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE0D2C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD842A0;

  return AsyncThrowingChannel.send(_:)(a1);
}

uint64_t sub_22FE0D3A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD73F54;

  return sub_22FE0C080(a1, a2, v7, v8, v6);
}

uint64_t sub_22FE0D460(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return sub_22FE0C668(a1, a2, v7, v8, v6);
}

uint64_t sub_22FE0D520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FE0D590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE0D5F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD8C738;

  return sub_22FE38A30(a1, v4);
}

uint64_t sub_22FE0D6B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD8C738;

  return sub_22FE0D2C0(a1);
}

uint64_t AsyncIteratorProtocol.sequence.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_22FE0D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IterateOnceSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence.generic.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1;
  v10 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  return sub_22FD72C14(&v8, a3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t WrapperIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FE0DA14, 0, 0);
}

uint64_t sub_22FE0DA14()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_22FE0DAD0;
  v5 = v0[2];

  return MEMORY[0x282200308](v5, v2, v3);
}

uint64_t sub_22FE0DAD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_22FE0DC14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD73F54;

  return WrapperIterator.next()(a1);
}

uint64_t WrapperSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_22FE43464();
  return sub_22FD72C14(&v9, a1);
}

uint64_t sub_22FE0DE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WrapperSequence.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_22FE0DE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FE0DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FE0DF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FE0DF50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t AsyncSequence<>.throwing.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t MakeThrowingIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD73F54;

  return MEMORY[0x282200308](a1, v4, v5);
}

uint64_t sub_22FE0E148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD8C738;

  return MakeThrowingIterator.next()(a1, a2);
}

uint64_t MakeThrowingSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v2, v4, v10);
  sub_22FE43464();
  return (*(v9 + 32))(a2, v12, AssociatedTypeWitness);
}

uint64_t sub_22FE0E39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MakeThrowingSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t static String.read(from:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43054();
  v5 = [a1 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_22FE43064();

  return v6;
}

Swift::Void __swiftcall String.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43054();
  v4 = sub_22FE43054();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_22FE0E54C(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = sub_22FE43054();
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = sub_22FE43064();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

void sub_22FE0E5D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43054();
  v5 = sub_22FE43054();
  [a1 setObject:v4 forKey:v5];
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_22FE43054();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_22FE0E6E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22FE0FE3C(a1, a2, a3, MEMORY[0x277D83B88]);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_22FE0E71C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_22FE43054();
  [a1 setInteger:v5 forKey:v6];
}

uint64_t static Duration.read(from:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43054();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_22FE43EB4();
    }
  }

  else
  {
    sub_22FE0FDD4(v9);
  }

  return 0;
}

Swift::Void __swiftcall Duration.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43E54();
  sub_22FE43E54();
  v5 = v4 / 1.0e18 + v3;
  v6 = sub_22FE43054();
  [(objc_class *)isa setDouble:v6 forKey:v5];
}

uint64_t sub_22FE0E91C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = static Duration.read(from:key:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  return result;
}

void sub_22FE0E94C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43E54();
  sub_22FE43E54();
  v6 = v5 / 1.0e18 + v4;
  v7 = sub_22FE43054();
  [a1 setDouble:v7 forKey:v6];
}

Swift::Void __swiftcall UInt64.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43E24();
  v4 = sub_22FE43054();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

uint64_t sub_22FE0EAAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22FE0FE3C(a1, a2, a3, MEMORY[0x277D84D38]);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_22FE0EAE4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43E24();
  v5 = sub_22FE43054();
  [a1 setObject:v4 forKey:v5];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_22FE43054();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_22FE0EBD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1, a2, a3);
  *a4 = result;
  return result;
}

void sub_22FE0EBFC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_22FE43054();
  [a1 setBool:v5 forKey:v6];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_22FE43054();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_22FE0ECF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22FE0FF20(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_22FE0ED20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_22FE43054();
  [a1 setDouble:v6 forKey:v5];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_22FE43054();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_22FE0EE2C@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  result = sub_22FE10370(a2, a3, a4);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_22FE0EE5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7 = sub_22FE43054();
  LODWORD(v6) = v5;
  [a1 setFloat:v7 forKey:v6];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v4 = sub_22FE43744();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v21, v20, v17);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    return (*(v10 + 8))(v12, a4);
  }

  (*(v15 + 32))(v19, v12, v14);
  (*(a5 + 16))(a1, a2, a3, v14, a5);
  return (*(v15 + 8))(v19, v14);
}

uint64_t static Array<A>.read(from:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_22FE43054();
  v8 = [a1 valueForKey_];

  if (v8)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    swift_getAssociatedTypeWitness();
    sub_22FE43354();
    v9 = swift_dynamicCast();
    if (v9)
    {
      *&v15[0] = v12;
      MEMORY[0x28223BE20](v9);
      swift_getWitnessTable();
      v10 = sub_22FE431B4();

      return v10;
    }
  }

  else
  {
    sub_22FE0FDD4(v15);
  }

  return 0;
}

uint64_t sub_22FE0F310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, a1, v5);
  return sub_22FE43264();
}

void Array<A>.write(to:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v8 = sub_22FE43354();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  sub_22FDA5834(sub_22FE107F0, v14, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v12 = sub_22FE43274();

  v13 = sub_22FE43054();
  [a1 setObject:v12 forKey:v13];
}

uint64_t sub_22FE0F544@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = static Array<A>.read(from:key:)(a1, a2, a3, *(a4 + 16), *(a5 - 8), *(a5 - 16));
  *a6 = result;
  return result;
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = a1;
  v48 = a7;
  v12 = sub_22FE43744();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v42 - v13;
  v45 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_22FE43744();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v26 = *(a6 + 8);
  v27 = v47;
  v42 = a2;
  v47 = a3;
  v28 = a6;
  v30 = v29;
  v26(v27, a2, a3, AssociatedTypeWitness, v28, v23);
  if ((*(v30 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return (*(*(a4 - 8) + 56))(v48, 1, 1, a4);
  }

  else
  {
    v32 = v48;
    (*(v30 + 32))(v25, v18, AssociatedTypeWitness);
    (*(v30 + 16))(v21, v25, AssociatedTypeWitness);
    v33 = v46;
    sub_22FE43264();
    v34 = *(a4 - 8);
    if ((*(v34 + 48))(v33, 1, a4) == 1)
    {
      v45 = v30;
      (*(v43 + 8))(v33, v44);
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v35 = sub_22FE42D34();
      __swift_project_value_buffer(v35, qword_28148B108);
      v36 = v47;

      v37 = sub_22FE42D14();
      v38 = sub_22FE436A4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = v25;
        v41 = swift_slowAlloc();
        v49 = v41;
        *v39 = 141558274;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_22FD98218(v42, v36, &v49);
        _os_log_impl(&dword_22FD6D000, v37, v38, "Couldn't parse user default %{mask.hash}s.", v39, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x23190C380](v41, -1, -1);
        MEMORY[0x23190C380](v39, -1, -1);

        (*(v45 + 8))(v40, AssociatedTypeWitness);
      }

      else
      {

        (*(v45 + 8))(v25, AssociatedTypeWitness);
      }

      return (*(v34 + 56))(v32, 1, 1, a4);
    }

    else
    {
      (*(v30 + 8))(v25, AssociatedTypeWitness);
      (*(v34 + 32))(v32, v33, a4);
      return (*(v34 + 56))(v32, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v16 - v13;
  sub_22FE43254();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

BOOL sub_22FE0FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_22FE438E4();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22FE43054();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_22FE0FDD4(v10);
    return 2;
  }
}

uint64_t sub_22FE0FDD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5108, &qword_22FE4EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE0FE3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22FE43054();
  v6 = [a1 valueForKey_];

  if (v6)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22FE0FDD4(v11);
    return 0;
  }
}

uint64_t sub_22FE0FF20(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FE43054();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
LABEL_16:
    *&result = 0.0;
    return result;
  }

  sub_22FE437F4();
  swift_unknownObjectRelease();
  sub_22FD98E50(v32, v31);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    return v30[0];
  }

  sub_22FD98E50(v32, v31);
  if (!swift_dynamicCast())
  {
    sub_22FD98E50(v32, v31);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v32);
      *&result = *v30;
      return result;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v10 = sub_22FE42D34();
    __swift_project_value_buffer(v10, qword_28148B108);
    sub_22FD98E50(v32, v31);
    sub_22FD98E50(v32, v30);

    v11 = sub_22FE42D14();
    v12 = sub_22FE436A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_22FD98218(a2, a3, &v29);
      *(v13 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      swift_getDynamicType();
      v15 = sub_22FE43EE4();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(v31);
      v18 = sub_22FD98218(v15, v17, &v29);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v20 = MEMORY[0x28223BE20](v19);
      (*(v22 + 16))(&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
      v23 = sub_22FE430B4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_22FD98218(v23, v25, &v29);

      *(v13 + 24) = v26;
      _os_log_impl(&dword_22FD6D000, v11, v12, "Couldn't parse Double at %s with type %s and value %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v14, -1, -1);
      MEMORY[0x23190C380](v13, -1, -1);

      v27 = v32;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v31);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v27 = v30;
    }

    __swift_destroy_boxed_opaque_existential_0(v27);
    goto LABEL_16;
  }

  v31[0] = 0;
  v9 = sub_22FE0FC04(v30[0], v30[1], v31, MEMORY[0x277D84FA8], sub_22FE10878);

  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v9)
  {
    return v31[0];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_22FE10370(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FE43054();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
    goto LABEL_16;
  }

  sub_22FE437F4();
  swift_unknownObjectRelease();
  sub_22FD98E50(v35, v34);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    v8 = 0;
    v9 = *v33;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  sub_22FD98E50(v35, v34);
  if (!swift_dynamicCast())
  {
    sub_22FD98E50(v35, v34);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v35);
      v8 = 0;
      v11 = *v33;
      v9 = v11;
      return LODWORD(v9) | ((v8 & 1) << 32);
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v12 = sub_22FE42D34();
    __swift_project_value_buffer(v12, qword_28148B108);
    sub_22FD98E50(v35, v34);
    sub_22FD98E50(v35, v33);

    v13 = sub_22FE42D14();
    v14 = sub_22FE436A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_22FD98218(a2, a3, &v32);
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      swift_getDynamicType();
      v17 = sub_22FE43EE4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v20 = sub_22FD98218(v17, v19, &v32);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v22 = MEMORY[0x28223BE20](v21);
      (*(v24 + 16))(&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_22FE430B4();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v33);
      v28 = sub_22FD98218(v25, v27, &v32);

      *(v15 + 24) = v28;
      _os_log_impl(&dword_22FD6D000, v13, v14, "Couldn't parse Float at %s with type %s and value %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v16, -1, -1);
      MEMORY[0x23190C380](v15, -1, -1);

      v29 = v35;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v34);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v29 = v33;
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_16:
    v9 = 0.0;
    v8 = 1;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  LODWORD(v34[0]) = 0;
  v10 = sub_22FE0FC04(v33[0], v33[1], v34, MEMORY[0x277D84FB0], sub_22FE1084C);

  __swift_destroy_boxed_opaque_existential_0(v35);
  v9 = *v34;
  if (!v10)
  {
    v9 = 0.0;
  }

  v8 = !v10;
  return LODWORD(v9) | ((v8 & 1) << 32);
}

_BYTE *sub_22FE108A4@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_22FE10940()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22FE43054();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_28148BC00 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Collection<>.parallelForEach(parallelism:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE10C10, 0, 0);
}

uint64_t sub_22FE10C10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = *(v0 + 5);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FE10D10;
  v5 = v0[6];
  v6 = v0[5];
  v7 = v0[2];
  v8 = MEMORY[0x277D84F78] + 8;

  return Collection<>.parallelMap<A>(parallelism:transform:)(v7, &unk_22FE4ED30, v3, v6, v8, v5);
}

uint64_t sub_22FE10D10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FE10E6C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FE10E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE10ED0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22FD73F54;

  return v7(a2);
}

uint64_t sub_22FE10FC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return sub_22FE10ED0(a1, a2, v6);
}

uint64_t Collection<>.parallelMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_22FE110B8, 0, 0);
}

uint64_t sub_22FE110B8()
{
  sub_22FE435E4();
  v1 = sub_22FE43774();
  v3 = v2;
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v4 = sub_22FE43764();
  if (!v4)
  {
    return sub_22FE43A74();
  }

  v5 = v4;
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v10 = sub_22FE435E4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  *(v11 + 48) = v15;
  *(v11 + 64) = v16;
  *(v11 + 72) = v5;
  *(v11 + 80) = v10;
  *(v11 + 88) = v1;
  *(v11 + 96) = v3;
  v12 = sub_22FE43354();
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_22FE112C4;

  return MEMORY[0x282200740](v0 + 16, TupleTypeMetadata2, v12, 0, 0, &unk_22FE4ED48, v11, TupleTypeMetadata2);
}

uint64_t sub_22FE112C4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22FE11450;
  }

  else
  {

    v2 = sub_22FE113E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE113E0()
{
  v1 = *(v0 + 16);
  sub_22FE43754();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22FE11450()
{

  sub_22FE43754();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE114D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v16;
  v8[16] = v17;
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a8;
  v8[12] = v13;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[17] = swift_getTupleTypeMetadata2();
  v9 = sub_22FE43744();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = *(v16 - 8);
  v8[21] = v10;
  v8[22] = v10;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = *(v17 + 8);
  v8[26] = sub_22FE43AC4();
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE11680, 0, 0);
}

uint64_t sub_22FE11680()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[9];
  sub_22FE43AB4();
  v4 = swift_allocBox();
  v0[28] = v4;
  MEMORY[0x23190ADC0](v2, v1);
  v5 = sub_22FE43A94();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0[9])
    {
      v9 = 0;
      do
      {
        v10 = v0[9];
        ++v9;
        sub_22FE11E70(v4, v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      while (v9 != v10);
    }

    v0[29] = 0;
    v11 = swift_task_alloc();
    v0[30] = v11;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    v8 = sub_22FE43454();
    *v11 = v0;
    v11[1] = sub_22FE11804;
    v5 = v0[20];
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822004D0](v5, v6, v7, v8);
}

uint64_t sub_22FE11804()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_22FE11CD0;
  }

  else
  {
    v2 = sub_22FE11918;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE11918()
{
  v1 = v0[20];
  v2 = v0[17];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v20 = v0[21];
    v21 = v0[29];
    v11 = v0[15];
    v12 = v0[10];
    v13 = *v1;
    (*(v10 + 32))(v8, &v1[*(v2 + 48)], v11);
    v14 = v12 + *(v10 + 72) * v13;
    (*(v10 + 16))(v9, v8, v11);
    v3 = (*(v20 + 32))(v14, v9, v11);
    if (!__OFADD__(v21, 1))
    {
      if ((sub_22FE43424() & 1) == 0)
      {
        sub_22FE11E70(v0[28], v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      (*(v0[22] + 8))(v0[24], v0[15]);
      v0[29] = v21 + 1;
      v15 = swift_task_alloc();
      v0[30] = v15;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v6 = sub_22FE43454();
      *v15 = v0;
      v15[1] = sub_22FE11804;
      v3 = v0[20];
      v4 = 0;
      v5 = 0;

      return MEMORY[0x2822004D0](v3, v4, v5, v6);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x2822004D0](v3, v4, v5, v6);
  }

  (*(v0[19] + 8))(v1, v0[18]);
  v3 = sub_22FE43424();
  if ((v3 & 1) == 0)
  {
    v16 = v0[13];
    if (v0[11] == v16)
    {
      v17 = v0[4];
      v0[2] = v0[12];
      v0[3] = v16;
      sub_22FE43794();
      swift_getWitnessTable();
      v18 = sub_22FE43364();

      *v17 = v18;

      v7 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  sub_22FE43734();
  sub_22FE433B4();
  sub_22FE13F6C();
  swift_allocError();
  sub_22FE42F44();
  swift_willThrow();

  v7 = v0[1];
LABEL_12:

  return v7();
}

uint64_t sub_22FE11CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE11D64(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22FD8C738;

  return sub_22FE114D4(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22FE11E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a4;
  v44 = a6;
  v41 = a3;
  v45 = a2;
  v46 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = &v38 - v10;
  v42 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = sub_22FE43744();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = (&v38 - v14);
  v16 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v16);
  v18 = (&v38 - v17);
  v39 = *(AssociatedTypeWitness - 8);
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v47 = &v38 - v23;
  v40 = a5;
  sub_22FE43AB4();
  swift_projectBox();
  swift_beginAccess();
  sub_22FE43AA4();
  swift_endAccess();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v13 + 8))(v15, v38);
  }

  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v16 + 48);
  *v18 = *v15;
  v27 = v39;
  v28 = *(v39 + 32);
  v28(v18 + v26, v15 + v25, AssociatedTypeWitness);
  v46 = *v18;
  v29 = v47;
  v28(v47, v18 + *(v16 + 48), AssociatedTypeWitness);
  v30 = sub_22FE43404();
  (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
  (*(v27 + 16))(v21, v29, AssociatedTypeWitness);
  v31 = (*(v27 + 80) + 72) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v33 = v43;
  v34 = v44;
  *(v32 + 4) = v40;
  *(v32 + 5) = v34;
  v35 = v41;
  *(v32 + 6) = v42;
  *(v32 + 7) = v35;
  *(v32 + 8) = v33;
  v28(&v32[v31], v21, AssociatedTypeWitness);
  *&v32[(v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v36 = sub_22FE43454();
  v37 = v48;
  sub_22FE12674(v48, &unk_22FE4ED98, v32, v36);
  sub_22FE0D590(v37);
  return (*(v27 + 8))(v47, AssociatedTypeWitness);
}

uint64_t sub_22FE12334(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v15;
  v7[2] = a1;
  v7[5] = *(v15 - 8);
  v10 = swift_task_alloc();
  v7[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = sub_22FE124A0;

  return v13(v10, a6);
}

uint64_t sub_22FE124A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FDC6E98;
  }

  else
  {
    v2 = sub_22FE125B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE125B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v6], v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FE12674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_22FE0D520(a1, v19 - v9);
  v11 = sub_22FE43404();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22FE0D590(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_22FE43374();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22FE433F4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}