uint64_t sub_215063698()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C242E8);
  v1 = __swift_project_value_buffer(v0, qword_280C242E8);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ActivityEventParticipant.recordName.getter()
{
  v1 = *v0;

  return v1;
}

void ActivityEventParticipant.recordName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ActivityEventParticipant.mentionRecordName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ActivityEventParticipant.mentionRecordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_215063878()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x614E64726F636572;
  }
}

void sub_2150638BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E81A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2150A6270();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2150639A8(uint64_t a1)
{
  v2 = sub_2150645F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150639E4(uint64_t a1)
{
  v2 = sub_2150645F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityEventParticipant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44970, &qword_2150CD1C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150645F4();
  sub_2150A65B0();
  v13 = 0;
  v9 = v11[3];
  sub_2150A6060();
  if (!v9)
  {
    v12 = 1;
    sub_2150A6030();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityEventParticipant.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

void ActivityEventParticipant.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44980, &qword_2150CD1D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - v7;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v10 + 8))(v13, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150645F4();
  sub_2150A6590();
  if (!v2)
  {
    v14 = v22;
    v24 = 0;
    v15 = sub_2150A5F80();
    v17 = v16;
    v21 = v15;

    v23 = 1;
    v18 = sub_2150A5F30();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    *v14 = v21;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v20;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void __swiftcall ActivityEventParticipant.init(mentionAttachment:)(NotesShared::ActivityEventParticipant_optional *__return_ptr retstr, ICInlineAttachment *mentionAttachment)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(ICInlineAttachment *)mentionAttachment isMentionAttachment])
  {
    v9 = [(ICInlineAttachment *)mentionAttachment tokenContentIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2150A4AD0();
      v13 = v12;

      v14 = [(ICInlineAttachment *)mentionAttachment identifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2150A4AD0();
        v18 = v17;

        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        sub_2150A3990();

        (*(v5 + 8))(v8, v4);

        retstr->value.recordName._countAndFlagsBits = v11;
        retstr->value.recordName._object = v13;
        retstr->value.mentionRecordName.value._countAndFlagsBits = v16;
        retstr->value.mentionRecordName.value._object = v18;
        return;
      }
    }
  }

  if (qword_280C242E0 != -1)
  {
    swift_once();
  }

  v19 = sub_2150A3F30();
  __swift_project_value_buffer(v19, qword_280C242E8);
  v20 = mentionAttachment;
  v21 = sub_2150A3F10();
  v22 = sub_2150A5550();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = [(ICInlineAttachment *)v20 objectID];
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&dword_214D51000, v21, v22, "Inline attachment is not a valid mention — returning nil {objectID: %@}", v23, 0xCu);
    sub_214FA9D98(v24);
    MEMORY[0x216064AF0](v24, -1, -1);
    MEMORY[0x216064AF0](v23, -1, -1);
    v26 = v21;
  }

  else
  {
    v26 = v20;
    v20 = v21;
  }

  retstr->value.recordName = 0u;
  retstr->value.mentionRecordName = 0u;
}

uint64_t ActivityEventParticipant.Names.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x216063080](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x216063080](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x216063080](v3);
  }

  MEMORY[0x216063080](2);

  return sub_2150A4BB0();
}

uint64_t ActivityEventParticipant.Names.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t sub_2150642B4()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t sub_215064344(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x216063080](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x216063080](v3);
    case 2:
      v3 = 3;
      return MEMORY[0x216063080](v3);
  }

  MEMORY[0x216063080](2);

  return sub_2150A4BB0();
}

uint64_t sub_2150643DC()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x216063080](2);
        sub_2150A4BB0();
        return sub_2150A64E0();
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216063080](v2);
  return sub_2150A64E0();
}

uint64_t _s11NotesShared24ActivityEventParticipantV5NamesO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_214F736A0(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_214F736A0(*a1, 1uLL);
        sub_214F736A0(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_214F736A0(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_214F736A0(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_2150648F4(*a2, a2[1]);
    sub_2150648F4(v2, v3);
    sub_214F736A0(v2, v3);
    sub_214F736A0(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2150648F4(*a1, v3);
    sub_2150648F4(v2, v3);
    sub_214F736A0(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = sub_2150A6270();
  sub_2150648F4(v4, v5);
  sub_2150648F4(v2, v3);
  sub_214F736A0(v2, v3);
  sub_214F736A0(v4, v5);
  return v10 & 1;
}

unint64_t sub_2150645F4()
{
  result = qword_27CA44978;
  if (!qword_27CA44978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44978);
  }

  return result;
}

unint64_t sub_21506464C()
{
  result = qword_280C23840;
  if (!qword_280C23840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23840);
  }

  return result;
}

unint64_t sub_2150646A4()
{
  result = qword_27CA44988;
  if (!qword_27CA44988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44988);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared24ActivityEventParticipantV5NamesO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_215064720(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21506477C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2150647F0()
{
  result = qword_27CA44990;
  if (!qword_27CA44990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44990);
  }

  return result;
}

unint64_t sub_215064848()
{
  result = qword_27CA44998;
  if (!qword_27CA44998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44998);
  }

  return result;
}

unint64_t sub_2150648A0()
{
  result = qword_27CA449A0;
  if (!qword_27CA449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449A0);
  }

  return result;
}

uint64_t sub_2150648F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A4A90();

  v3 = [objc_opt_self() ic:v2 dataFromHexString:?];

  v4 = sub_2150A37B0();
  return v4;
}

Swift::Bool __swiftcall CharacterSet.contains(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_2150A3050();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  (*(v6 + 16))(&v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  LOBYTE(object) = sub_215064BD4(countAndFlagsBits, object, sub_215064AEC);

  return object & 1;
}

void sub_215064B6C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  sub_2150A3020();
}

uint64_t sub_215064BD4(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_2150A5B10();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_2150A5C80();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t FallbackActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FallbackActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FallbackActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackActivityEvent(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t type metadata accessor for FallbackActivityEvent(uint64_t a1)
{
  result = qword_280C23AF8;
  if (!qword_280C23AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void FallbackActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for FallbackActivityEvent(0) + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t FallbackActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FallbackActivityEvent(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 FallbackActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for FallbackActivityEvent(0) + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t FallbackActivityEvent.minimumSupportedNotesVersion.setter(uint64_t a1)
{
  result = type metadata accessor for FallbackActivityEvent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FallbackActivityEvent.typeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackActivityEvent(0) + 32));

  return v1;
}

void FallbackActivityEvent.typeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackActivityEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t FallbackActivityEvent.localizedFallbackTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackActivityEvent(0) + 36));

  return v1;
}

void FallbackActivityEvent.localizedFallbackTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackActivityEvent(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

__n128 FallbackActivityEvent.init(timestamp:object:participant:minimumSupportedNotesVersion:typeName:localizedFallbackTitle:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a2;
  v14 = *(a2 + 1);
  v13 = *(a2 + 2);
  v25 = *a3;
  v15 = a3[1].n128_u64[0];
  v16 = a3[1].n128_u64[1];
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v17 = type metadata accessor for FallbackActivityEvent(0);
  v18 = v17[7];
  [objc_opt_self() currentNotesVersion];
  v19 = sub_2150A3960();
  (*(*(v19 - 8) + 40))(a9, a1, v19);
  v20 = a9 + v17[5];
  *v20 = v12;
  *(v20 + 8) = v14;
  *(v20 + 16) = v13;
  v21 = (a9 + v17[6]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v15;
  v21[1].n128_u64[1] = v16;
  *(a9 + v18) = a4;
  v23 = (a9 + v17[8]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + v17[9]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

unint64_t sub_2150653F4()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0xD00000000000001CLL;
  v4 = 0x656D614E65707974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463656A626FLL;
  if (v1 != 1)
  {
    v5 = 0x7069636974726170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2150654C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_215066760(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2150654EC(uint64_t a1)
{
  v2 = sub_215066414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215065528(uint64_t a1)
{
  v2 = sub_215066414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FallbackActivityEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449A8, &qword_2150CD4C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215066414();
  sub_2150A65B0();
  LOBYTE(v20) = 0;
  sub_2150A3960();
  sub_215066468(&qword_27CA424A0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2150A60A0();
  if (!v2)
  {
    v10 = type metadata accessor for FallbackActivityEvent(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v20) = *v11;
    v21 = v12;
    v22 = v13;
    v24 = 1;
    sub_214F847EC();

    sub_2150A60A0();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v20 = *v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = 2;
    sub_214F84840();

    sub_2150A60A0();

    v20 = *(v3 + v10[7]);
    v24 = 3;
    type metadata accessor for NotesVersion(0);
    sub_215066468(&qword_27CA449B8, type metadata accessor for NotesVersion, &protocol conformance descriptor for ICNotesVersion);
    sub_2150A60A0();
    LOBYTE(v20) = 4;
    sub_2150A6060();
    LOBYTE(v20) = 5;
    sub_2150A6060();
  }

  return (*(v6 + 8))(v9, v5);
}

void FallbackActivityEvent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_2150A3960();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449C0, &qword_2150CD4C8);
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v9);
  v11 = &v31 - v10;
  v35 = type metadata accessor for FallbackActivityEvent(0);
  MEMORY[0x28223BE20](v35, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  [objc_opt_self() currentNotesVersion];
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_215066414();
  sub_2150A6590();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    (*(v36 + 8))(v14, v4);
  }

  else
  {
    v16 = v8;
    LOBYTE(v37) = 0;
    sub_215066468(&qword_27CA424D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v17 = v33;
    sub_2150A5FC0();
    (*(v36 + 40))(v14, v7, v4);
    v40 = 1;
    sub_214F848DC();
    sub_2150A5FC0();
    v18 = v38;
    v19 = v39;
    v20 = v35;
    v21 = &v14[*(v35 + 20)];
    *v21 = v37;
    *(v21 + 1) = v18;
    *(v21 + 2) = v19;
    v40 = 2;
    sub_214F84930();
    sub_2150A5FC0();
    v22 = v38;
    v23 = &v14[v20[6]];
    *v23 = v37;
    *(v23 + 1) = v22;
    *(v23 + 1) = v39;
    type metadata accessor for NotesVersion(0);
    v40 = 3;
    sub_215066468(&qword_27CA44180, type metadata accessor for NotesVersion, &protocol conformance descriptor for ICNotesVersion);
    sub_2150A5FC0();
    *&v14[v20[7]] = v37;
    LOBYTE(v37) = 4;
    v24 = sub_2150A5F80();
    v25 = &v14[v20[8]];
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v37) = 5;
    v27 = sub_2150A5F80();
    v29 = v28;
    (*(v16 + 8))(v11, v17);
    v30 = &v14[v20[9]];
    *v30 = v27;
    v30[1] = v29;
    sub_2150664B0(v14, v32);
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_215066514(v14, type metadata accessor for FallbackActivityEvent);
  }
}

uint64_t FallbackActivityEvent.init(activityEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = type metadata accessor for PersistedActivityEvent(0);
  v10 = *(v9 + 24);
  v11 = (a1 + *(v9 + 20));
  v36 = *v11;
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v15 = *(a1 + v10);
  v14 = *(a1 + v10 + 8);
  v16 = *(a1 + v10 + 24);
  v34 = *(a1 + v10 + 16);
  v35 = v12;

  PersistedActivityEvent.Activities.type.getter(&v41);
  v39 = v15;
  v40 = v14;
  v37 = v16;
  v38 = v13;
  if (v41 <= 3u)
  {
    if (v41 > 1u)
    {
      if (v41 == 2)
      {
        v33 = 0xE400000000000000;
        v17 = 2037411683;
      }

      else
      {
        v33 = 0xE600000000000000;
        v17 = 0x656D616E6572;
      }
    }

    else if (v41)
    {
      v33 = 0xE400000000000000;
      v17 = 1702260589;
    }

    else
    {
      v33 = 0xE600000000000000;
      v17 = 0x657461657263;
    }
  }

  else if (v41 <= 5u)
  {
    if (v41 == 4)
    {
      v33 = 0xE600000000000000;
      v17 = 0x6574656C6564;
    }

    else
    {
      v33 = 0xEE00746E61706963;
      v17 = 0x6974726150646461;
    }
  }

  else if (v41 == 6)
  {
    v17 = 0xD000000000000011;
    v33 = 0x80000002150E19E0;
  }

  else if (v41 == 7)
  {
    v33 = 0x80000002150E1A00;
    v17 = 0xD000000000000013;
  }

  else
  {
    v33 = 0xE700000000000000;
    v17 = 0x6E6F69746E656DLL;
  }

  v18 = sub_214F822B0();
  v20 = v19;
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v21 = type metadata accessor for FallbackActivityEvent(0);
  v22 = v21[7];
  [objc_opt_self() currentNotesVersion];
  sub_215066514(a1, type metadata accessor for PersistedActivityEvent);
  result = (*(v5 + 40))(a2, v8, v4);
  v24 = a2 + v21[5];
  *v24 = v36;
  v26 = v38;
  v25 = v39;
  *(v24 + 8) = v35;
  *(v24 + 16) = v26;
  v27 = (a2 + v21[6]);
  *v27 = v25;
  v28 = v34;
  v27[1] = v40;
  v27[2] = v28;
  v27[3] = v37;
  *(a2 + v22) = 6;
  v29 = (a2 + v21[8]);
  v30 = v33;
  *v29 = v17;
  v29[1] = v30;
  v31 = (a2 + v21[9]);
  *v31 = v18;
  v31[1] = v20;
  return result;
}

uint64_t _s11NotesShared21FallbackActivityEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FallbackActivityEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v9 = a2 + v5;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v6)
  {
    v12 = 1702129518;
  }

  else
  {
    v12 = 0x7265646C6F66;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (*v9)
  {
    v14 = 1702129518;
  }

  else
  {
    v14 = 0x7265646C6F66;
  }

  if (*v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_2150A6270();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  if (v8 == v11 && v7 == v10)
  {
  }

  else
  {
    v19 = sub_2150A6270();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v4[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v28 = v4[9];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if (v29 == *v31 && v30 == v31[1])
  {
    return 1;
  }

  return sub_2150A6270();
}

unint64_t sub_215066414()
{
  result = qword_27CA449B0;
  if (!qword_27CA449B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449B0);
  }

  return result;
}

uint64_t sub_215066468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2150664B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FallbackActivityEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215066514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21506659C(uint64_t a1)
{
  sub_2150A3960();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NotesVersion(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21506665C()
{
  result = qword_27CA449C8;
  if (!qword_27CA449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449C8);
  }

  return result;
}

unint64_t sub_2150666B4()
{
  result = qword_27CA449D0;
  if (!qword_27CA449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449D0);
  }

  return result;
}

unint64_t sub_21506670C()
{
  result = qword_27CA449D8;
  if (!qword_27CA449D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA449D8);
  }

  return result;
}

uint64_t sub_215066760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002150E81C0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002150E81E0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_215066970(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.replacing(pattern:in:options:matchingOptions:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a5;
  v39 = a3;
  v40 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for CustomReplacementRegularExpression());

  v19 = sub_21506780C(a1, a2, a8, a9, a6);
  v20 = v11;

  if (!v11)
  {
    v36 = v16;
    v23 = v37;
    MEMORY[0x28223BE20](v21, v22);
    *(&v35 - 4) = a10;
    *(&v35 - 3) = a11;
    *(&v35 - 2) = v41;
    v24 = sub_215066970(sub_215067A04, (&v35 - 6), v39, v40, v38 & 1);
    v40 = 0;
    if (v26)
    {
      v27 = v41;
      v28 = sub_2150A53E0();
      v29 = 0;
      v30 = v27;
    }

    else
    {
      v29 = v24;
      v28 = v25;
      v30 = v41;
    }

    (*(v36 + 16))(v18, v30, a10);
    sub_2150A4D30();
    v31 = sub_2150A4A90();

    v32 = sub_2150A4A90();
    v33 = [v19 stringByReplacingMatchesInString:v31 options:v23 range:v29 withTemplate:{v28, v32}];

    v20 = sub_2150A4AD0();
  }

  return v20;
}

uint64_t StringProtocol.replacing(pattern:in:withTemplate:options:matchingOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x277CCAC68]);

  v19 = sub_215067730(a1, a2, a8);
  if (!v11)
  {
    v21 = v19;
    v32 = a9;
    v33 = a6;
    MEMORY[0x28223BE20](v19, v20);
    *(&v31 - 4) = a10;
    *(&v31 - 3) = a11;
    *(&v31 - 2) = v37;
    v22 = sub_215066970(sub_21506792C, (&v31 - 6), v35, v36, v34 & 1);
    v36 = 0;
    if (v24)
    {
      v25 = sub_2150A53E0();
      v26 = 0;
    }

    else
    {
      v26 = v22;
      v25 = v23;
    }

    (*(v16 + 16))(v18, v37, a10);
    sub_2150A4D30();
    v27 = sub_2150A4A90();

    v28 = sub_2150A4A90();
    v29 = [v21 stringByReplacingMatchesInString:v27 options:v32 range:v26 withTemplate:{v25, v28}];

    a6 = sub_2150A4AD0();
  }

  return a6;
}

void sub_215066F3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ([a1 numberOfRanges] < 1)
  {
    goto LABEL_24;
  }

  [a1 range];
  v41 = a2;
  v8 = sub_2150A54C0();
  if (v10)
  {
    goto LABEL_24;
  }

  v11 = v8;
  v12 = v9;

  v13 = [a1 numberOfRanges];
  v14 = v13 - 1;
  if (v13 < 1)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    sub_2150A5E10();
    __break(1u);
    return;
  }

  v38 = v12;
  v39 = v11;
  v15 = MEMORY[0x277D84F90];
  v40 = a1;
  if (v13 != 1)
  {
    v16 = v13;
    v37 = a4;
    v42 = MEMORY[0x277D84F90];
    v17 = a1;
    sub_214F86ECC(0, v14, 0);
    v18 = 1;
    v15 = v42;
    while (1)
    {
      v19 = [v17 rangeAtIndex_];
      v21 = v20;
      v23 = *(v42 + 16);
      v22 = *(v42 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_214F86ECC((v22 > 1), v23 + 1, 1);
      }

      *(v42 + 16) = v23 + 1;
      v24 = v42 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      if (v16 == v18)
      {
        break;
      }

      if (v16 == ++v18)
      {

        a4 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v25 = *(v15 + 16);
  v26 = v41;
  if (v25)
  {
    v27 = v15 + 40;
    v28 = MEMORY[0x277D84F90];
    do
    {
      v30 = sub_2150A54C0();
      if ((v32 & 1) == 0)
      {
        v33 = v30;
        v34 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_215060620(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = sub_215060620((v35 > 1), v36 + 1, 1, v28);
        }

        *(v28 + 2) = v36 + 1;
        v29 = &v28[16 * v36];
        *(v29 + 4) = v33;
        *(v29 + 5) = v34;
        v26 = v41;
      }

      v27 += 16;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  *a4 = v26;
  a4[1] = a3;
  a4[2] = v39;
  a4[3] = v38;
  a4[4] = v28;
}

uint64_t String.Match.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t String.removingCharacters(notContainedIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A3050();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a2;
  v13[1] = a3;
  sub_2150A3040();
  sub_214D6E6C4();
  v10 = sub_2150A5860();
  (*(v6 + 8))(v9, v5);
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v11 = sub_2150A4A20();

  return v11;
}

uint64_t String.removingCharacters(containedIn:)(uint64_t a1)
{
  sub_214D6E6C4();
  sub_2150A5860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v1 = sub_2150A4A20();

  return v1;
}

uint64_t sub_2150675F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v10 = *MEMORY[0x28223BE20](a1, a2);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA449E8, &qword_2150CD738);
  sub_214F43BCC(&qword_27CA449F0, &qword_27CA449E8, &qword_2150CD738, MEMORY[0x277D83D30]);
  result = sub_2150A57C0();
  *a5 = result;
  a5[1] = v9;
  return result;
}

id sub_215067730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2150A4A90();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2150A35D0();

    swift_willThrow();
  }

  return v6;
}

id sub_21506780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v10 = &v5[OBJC_IVAR____TtC11NotesSharedP33_452BF3924CAE69326F83BAE5FEEBFB4234CustomReplacementRegularExpression_replaceBlock];
  *v10 = a3;
  *(v10 + 1) = a4;

  v11 = sub_2150A4A90();

  v16.super_class = ObjectType;
  v17[0] = 0;
  v16.receiver = v5;
  v12 = objc_msgSendSuper2(&v16, sel_initWithPattern_options_error_, v11, a5, v17);

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_2150A35D0();

    swift_willThrow();
  }

  return v12;
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

uint64_t sub_215067964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2150679AC(uint64_t result, int a2, int a3)
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

uint64_t sub_215067A1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_214F86A20(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x216062780](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_2150A4AB0();
  }

  __break(1u);
  return result;
}

uint64_t sub_215067B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_214F86CBC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B50, &unk_2150C2920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42668, &qword_2150C3E50);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_214F86CBC((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_214F86D40(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40, &qword_2150C4AA0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_214F86D40((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_214F86E04(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0, &unk_2150C2DE0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_214F86E04((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_215067F3C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v22 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = MEMORY[0x277D84F90];
    sub_214F86DA0(0, v13, 0);
    v14 = v26;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_21507423C(v15, v12, a3);
      v26 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_214F86DA0((v17 > 1), v18 + 1, 1);
        v14 = v26;
      }

      v24 = v8;
      v25 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      sub_21507423C(v12, boxed_opaque_existential_1, a3);
      *(v14 + 16) = v18 + 1;
      sub_214D7A458(&v23, v14 + 40 * v18 + 32);
      sub_2150742A4(v12, v22);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_2150680E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_214F86F6C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_214F86F6C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_214D72488(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2150681E0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_215068290(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_2150648F4(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_214F736A0(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_215068340(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 56);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v8 - 2);
      v15[0] = *(v8 - 3);
      v15[1] = v12;
      v15[2] = v11;
      v15[3] = v10;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 4;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_215068408(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2150684B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x216062780](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2150A59D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_215068638(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21505FABC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0, &unk_2150C2DE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_215068790(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21505FC18(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2150688AC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_215068A10(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2150A59D0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2150A59D0();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_215072D00(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_215068B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_215060214(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C8, &qword_2150C6370);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_215068C38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_215068D7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_21505F4D0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_215068E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2150600E0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_215068F64(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214D55670(0, &qword_27CA44A30, off_278192998);
    sub_214F737A4();
    sub_2150A5320();
    v3 = v31[1];
    v4 = v31[2];
    v5 = v31[3];
    v6 = v31[4];
    v7 = v31[5];
  }

  else
  {
    v8 = -1 << *(a3 + 32);
    v4 = a3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a3 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v29 = v3;
  while (v3 < 0)
  {
    v17 = sub_2150A5A10();
    if (!v17)
    {
      goto LABEL_33;
    }

    v31[0] = v17;
    sub_214D55670(0, &qword_27CA44A30, off_278192998);
    swift_dynamicCast();
    v16 = v32;
    v14 = v6;
    v15 = v7;
    if (!v32)
    {
LABEL_34:
      v3 = v29;
LABEL_33:
      sub_214F420F4(v3);
      return;
    }

LABEL_19:
    v32 = v16;
    a1(v31, &v32);
    if (v30)
    {
      sub_214F420F4(v29);

      return;
    }

    v18 = v31[0];
    v19 = *(v31[0] + 16);
    v20 = v11[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_37;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v11[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v11 = sub_21505FBF0(isUniquelyReferenced_nonNull_native, v23, 1, v11);
      if (!*(v18 + 16))
      {
LABEL_8:

        v3 = v29;
        if (v19)
        {
          goto LABEL_38;
        }

        goto LABEL_9;
      }
    }

    v24 = (v11[3] >> 1) - v11[2];
    type metadata accessor for NoteEditActivityEvent(0);
    if (v24 < v19)
    {
      goto LABEL_39;
    }

    swift_arrayInitWithCopy();

    v3 = v29;
    if (v19)
    {
      v25 = v11[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_40;
      }

      v11[2] = v27;
    }

LABEL_9:
    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_33;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t ICCloudSyncingObject.sharedRootActivityEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v107 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v103 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v96 - v10;
  v109 = type metadata accessor for PersistedActivityEvent(0);
  v12 = *(v109 - 8);
  v14 = MEMORY[0x28223BE20](v109, v13);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v96 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v100 = &v96 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v108 = (&v96 - v25);
  MEMORY[0x28223BE20](v24, v26);
  v105 = &v96 - v27;
  if (![v1 isSharedViaICloud])
  {
    return MEMORY[0x277D84F90];
  }

  if ([v1 isSharedRootObject])
  {
    return MEMORY[0x277D84F90];
  }

  v28 = [v1 sharedRootObject];
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v28;
  v99 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42740, &unk_2150C3EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C29C0;
  v30 = &selRef_hidesCallNotesInCustomFolders;
  v31 = [v1 identifier];
  if (v31)
  {
    v32 = v31;
    v33 = sub_2150A4AD0();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v37 = inited;
  *(inited + 32) = v33;
  *(v37 + 40) = v35;
  v38 = [v29 identifier];
  if (v38)
  {
    v39 = v38;
    v40 = sub_2150A4AD0();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v97 = v29;
  v106 = v19;
  v43 = inited;
  *(inited + 48) = v40;
  *(v43 + 56) = v42;
  v44 = [v1 allChildCloudObjects];
  sub_214D55670(0, &qword_27CA43240, off_278192BC0);
  v45 = sub_2150A4ED0();

  v46 = v45 & 0xFFFFFFFFFFFFFF8;
  if (v45 >> 62)
  {
    goto LABEL_97;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
  {
    v102 = v12;
    if (i)
    {
      v12 = 0;
      v98 = MEMORY[0x277D84F90];
      while (2)
      {
        v48 = v12;
        while (1)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x216062780](v48, v45);
            v12 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (v48 >= *(v46 + 16))
            {
              goto LABEL_94;
            }

            v49 = *(v45 + 8 * v48 + 32);
            v12 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }
          }

          v50 = v49;
          v51 = [v50 *(v30 + 234)];
          if (v51)
          {
            break;
          }

          ++v48;
          if (v12 == i)
          {
            goto LABEL_32;
          }
        }

        v52 = v51;
        v53 = sub_2150A4AD0();
        v96 = v54;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_21505F4D0(0, *(v98 + 2) + 1, 1, v98);
        }

        v56 = *(v98 + 2);
        v55 = *(v98 + 3);
        if (v56 >= v55 >> 1)
        {
          v98 = sub_21505F4D0((v55 > 1), v56 + 1, 1, v98);
        }

        v57 = v98;
        *(v98 + 2) = v56 + 1;
        v58 = &v57[16 * v56];
        v59 = v96;
        *(v58 + 4) = v53;
        *(v58 + 5) = v59;
        if (v12 != i)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v98 = MEMORY[0x277D84F90];
    }

LABEL_32:

    v30 = v98;
    v60 = sub_215067DDC(v98);

    *&v111[0] = inited;
    sub_215068638(v60);
    inited = *&v111[0];
    v61 = ICCloudSyncingObject.persistedActivityEvents.getter();
    v62 = *(v61 + 16);
    if (v62)
    {
      v98 = v61;
      v63 = v61 + 32;
      v64 = v102;
      v65 = (v102 + 56);
      v66 = (v102 + 48);
      v45 = MEMORY[0x277D84F90];
      v12 = v103;
      do
      {
        sub_214F6163C(v63, v111);
        sub_214D7A458(v111, v110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
        v30 = v109;
        v67 = swift_dynamicCast();
        (*v65)(v11, v67 ^ 1u, 1, v30);
        if ((*v66)(v11, 1, v30) == 1)
        {
          sub_214F302D4(v11, &qword_27CA42270, &unk_2150CD740);
        }

        else
        {
          sub_215074144(v11, v105, type metadata accessor for PersistedActivityEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_21505F8B8(0, *(v45 + 16) + 1, 1, v45);
          }

          v69 = *(v45 + 16);
          v68 = *(v45 + 24);
          if (v69 >= v68 >> 1)
          {
            v45 = sub_21505F8B8((v68 > 1), v69 + 1, 1, v45);
          }

          *(v45 + 16) = v69 + 1;
          sub_215074144(v105, v45 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v69, type metadata accessor for PersistedActivityEvent);
          v12 = v103;
        }

        v63 += 40;
        --v62;
      }

      while (v62);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
      v64 = v102;
      v12 = v103;
    }

    v46 = v106;
    v105 = *(v45 + 16);
    if (v105)
    {
      v70 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v70 >= *(v45 + 16))
        {
          goto LABEL_95;
        }

        v72 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v73 = *(v64 + 72);
        v30 = v108;
        sub_21507423C(v45 + v72 + v73 * v70, v108, type metadata accessor for PersistedActivityEvent);
        v74 = *(v109 + 28);
        sub_21507423C(v30 + v74, v12, type metadata accessor for PersistedActivityEvent.Activities);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          goto LABEL_56;
        }

        if (EnumCaseMultiPayload > 6)
        {
          break;
        }

        v76 = v12;
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          goto LABEL_68;
        }

        v77 = sub_2150A3A00();
        (*(*(v77 - 8) + 8))(v12, v77);
LABEL_57:
        sub_21507423C(v108 + v74, v107, type metadata accessor for PersistedActivityEvent.Activities);
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 <= 3)
        {
          if (v78 > 1)
          {
            v76 = v107;
            if (v78 != 2)
            {
LABEL_68:
              sub_2150742A4(v76, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_69:
              sub_215074144(v108, v100, type metadata accessor for PersistedActivityEvent);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v111[0] = v11;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_214F86DC0(0, *(v11 + 2) + 1, 1);
                v11 = *&v111[0];
              }

              v82 = *(v11 + 2);
              v81 = *(v11 + 3);
              if (v82 >= v81 >> 1)
              {
                sub_214F86DC0((v81 > 1), v82 + 1, 1);
                v11 = *&v111[0];
              }

              *(v11 + 2) = v82 + 1;
              sub_215074144(v100, &v11[v72 + v82 * v73], type metadata accessor for PersistedActivityEvent);
              v46 = v106;
              v12 = v103;
              goto LABEL_48;
            }

            v79 = *(v107 + 64);

            if (!v79)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (!v78)
            {
              sub_2150742A4(v107, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_78:
              v46 = v106;
              goto LABEL_47;
            }

            v83 = *(v107 + 40);

            if (!v83)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_78;
        }

        if (v78 <= 5)
        {
          v46 = v106;
LABEL_75:
          sub_2150742A4(v107, type metadata accessor for PersistedActivityEvent.Activities);
          goto LABEL_47;
        }

        v46 = v106;
        if (v78 == 6)
        {
          v71 = sub_2150A3A00();
          (*(*(v71 - 8) + 8))(v107, v71);
        }

        else if (v78 == 7)
        {
          goto LABEL_75;
        }

LABEL_47:
        sub_2150742A4(v108, type metadata accessor for PersistedActivityEvent);
LABEL_48:
        if (v105 == ++v70)
        {
          goto LABEL_80;
        }
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_57;
      }

LABEL_56:
      sub_2150742A4(v12, type metadata accessor for PersistedActivityEvent.Activities);
      goto LABEL_57;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_80:

    v84 = *(v11 + 2);
    if (!v84)
    {
      break;
    }

    v85 = 0;
    v86 = MEMORY[0x277D84F90];
    v30 = v111;
    while (v85 < *(v11 + 2))
    {
      v12 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v45 = *(v64 + 72);
      v87 = sub_21507423C(&v11[v12 + v45 * v85], v46, type metadata accessor for PersistedActivityEvent);
      v88 = v46 + *(v109 + 20);
      v90 = *(v88 + 8);
      v89 = *(v88 + 16);
      *&v111[0] = v90;
      *(&v111[0] + 1) = v89;
      MEMORY[0x28223BE20](v87, v91);
      *(&v96 - 2) = v111;
      if (sub_2150681E0(sub_2150737C4, (&v96 - 4), inited))
      {
        sub_215074144(v46, v104, type metadata accessor for PersistedActivityEvent);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v86;
        if ((v92 & 1) == 0)
        {
          sub_214F86DC0(0, *(v86 + 16) + 1, 1);
          v86 = v110[0];
        }

        v94 = *(v86 + 16);
        v93 = *(v86 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_214F86DC0((v93 > 1), v94 + 1, 1);
          v86 = v110[0];
        }

        *(v86 + 16) = v94 + 1;
        sub_215074144(v104, v86 + v12 + v94 * v45, type metadata accessor for PersistedActivityEvent);
        v46 = v106;
      }

      else
      {
        sub_2150742A4(v46, type metadata accessor for PersistedActivityEvent);
      }

      ++v85;
      v64 = v102;
      if (v84 == v85)
      {
        goto LABEL_92;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    ;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_92:

  v95 = sub_215067F3C(v86, type metadata accessor for PersistedActivityEvent, type metadata accessor for PersistedActivityEvent, &protocol witness table for PersistedActivityEvent, type metadata accessor for PersistedActivityEvent);

  return v95;
}

uint64_t ICCloudSyncingObject.persistedActivityEvents.getter()
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() supportsActivityEvents] && objc_msgSend(v0, sel_isSharedViaICloud))
  {
    if ([v0 persistedActivityEventsStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A20, &qword_2150CD760);
      if (swift_dynamicCast())
      {
        v1 = v4;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
        v2 = sub_2150A4EB0();
        [v0 setPersistedActivityEventsStorage_];

        return v1;
      }
    }

    else
    {
      sub_214F302D4(v7, &qword_27CA42178, &qword_2150C6010);
    }

    v1 = sub_21506BC6C();
    goto LABEL_12;
  }

  return MEMORY[0x277D84F90];
}

uint64_t ICCloudSyncingObject.activityEvents.getter()
{
  v1 = ICCloudSyncingObject.shareActivityEvents.getter();
  v2 = sub_215067F3C(v1, type metadata accessor for ShareActivityEvent, type metadata accessor for ShareActivityEvent, &protocol witness table for ShareActivityEvent, type metadata accessor for ShareActivityEvent);

  v3 = ICCloudSyncingObject.persistedActivityEvents.getter();
  sub_2150688AC(v3, sub_21505F894, &unk_27CA44A10, &unk_2150CD750);
  v4 = ICCloudSyncingObject.editActivityEvents.getter();
  v5 = sub_215067F3C(v4, type metadata accessor for NoteEditActivityEvent, type metadata accessor for NoteEditActivityEvent, &protocol witness table for NoteEditActivityEvent, type metadata accessor for NoteEditActivityEvent);

  sub_2150688AC(v5, sub_21505F894, &unk_27CA44A10, &unk_2150CD750);
  v24 = v2;
  v6 = [v0 allChildCloudObjects];
  sub_214D55670(0, &qword_27CA43240, off_278192BC0);
  v7 = sub_2150A4ED0();

  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x216062780](v9, v7);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v13 = v11;
      v14 = ICCloudSyncingObject.activityEvents.getter();

      v15 = *(v14 + 16);
      v16 = v10[2];
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= v10[3] >> 1)
      {
        if (*(v14 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v10 = sub_21505F894(isUniquelyReferenced_nonNull_native, v19, 1, v10);
        if (*(v14 + 16))
        {
LABEL_18:
          if ((v10[3] >> 1) - v10[2] < v15)
          {
            goto LABEL_28;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
          swift_arrayInitWithCopy();

          if (v15)
          {
            v20 = v10[2];
            v21 = __OFADD__(v20, v15);
            v22 = v20 + v15;
            if (v21)
            {
              goto LABEL_29;
            }

            v10[2] = v22;
          }

          goto LABEL_5;
        }
      }

      if (v15)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v9;
      if (v12 == i)
      {
        goto LABEL_32;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v11 = *(v7 + 8 * v9 + 32);
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_32:

  sub_2150688AC(v10, sub_21505F894, &unk_27CA44A10, &unk_2150CD750);
  swift_getKeyPath();

  sub_214F6E2FC(sub_215074310, 0);

  return v24;
}

uint64_t sub_21506A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_2150A39C0();
  v12(v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

void *ICCloudSyncingObject.editActivityEvents.getter()
{
  v1 = v0;
  v69 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v69, v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v65 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v65 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v70 = &v65 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v65 - v22;
  v24 = sub_2150A3960();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v65 - v31;
  if (![v1 isSharedViaICloud])
  {
    return MEMORY[0x277D84F90];
  }

  v68 = v32;
  objc_opt_self();
  v66 = v1;
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v34 = v33;
  v65 = v4;
  v35 = [v33 objc_shareTimestamp];
  v67 = v25;
  if (v35)
  {
    v36 = v35;
    sub_2150A3930();

    v37 = v25;
    v38 = *(v25 + 32);
    v38(v23, v29, v24);
    v39 = *(v37 + 56);
    v39(v23, 0, 1, v24);
    v38(v68, v23, v24);
  }

  else
  {
    v39 = *(v25 + 56);
    v39(v23, 1, 1, v24);
    sub_2150A37F0();
    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      sub_214F302D4(v23, &qword_27CA41DD0, &unk_2150C2740);
    }
  }

  v41 = [v34 recentUpdatesGenerationDate];
  if (v41)
  {
    v42 = v41;
    sub_2150A3930();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v67;
  v39(v13, v43, 1, v24);
  sub_214FB6CE4(v13, v17, &qword_27CA41DD0, &unk_2150C2740);
  if ((*(v44 + 48))(v17, 1, v24))
  {
    sub_214F302D4(v17, &qword_27CA41DD0, &unk_2150C2740);
    v45 = 1;
    v46 = v70;
  }

  else
  {
    (*(v44 + 16))(v29, v17, v24);
    sub_214F302D4(v17, &qword_27CA41DD0, &unk_2150C2740);
    v46 = v70;
    sub_2150A3840();
    (*(v44 + 8))(v29, v24);
    v45 = 0;
  }

  v39(v46, v45, 1, v24);
  v39(v9, 1, 1, v24);
  v47 = [v34 mergeableString];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = v48;
    v50 = v65;
    *v65 = v34;
    swift_storeEnumTagMultiPayload();
    v51 = v66;
    v52 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v49, v50, v9, v46);

    sub_2150742A4(v50, type metadata accessor for NoteEditActivityEvent.Parents);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
  }

  sub_214F302D4(v9, &qword_27CA41DD0, &unk_2150C2740);
  v53 = [v34 visibleAttachments];
  sub_214D55670(0, &qword_27CA44A30, off_278192998);
  sub_214F737A4();
  v54 = sub_2150A52E0();

  MEMORY[0x28223BE20](v55, v56);
  *(&v65 - 2) = v46;
  sub_215068F64(sub_2150737E4, (&v65 - 4), v54);
  v58 = v57;

  v71 = v52;
  sub_215068C38(v58, sub_21505FBF0, type metadata accessor for NoteEditActivityEvent);
  MEMORY[0x28223BE20](v59, v60);
  v61 = v68;
  *(&v65 - 2) = v68;
  v63 = sub_214F60048(sub_215073800, (&v65 - 4), v62);
  swift_getKeyPath();
  v71 = v63;

  sub_214F6E33C(sub_215072F30, 0);

  v64 = v71;
  sub_214F302D4(v46, &qword_27CA41DD0, &unk_2150C2740);
  (*(v67 + 8))(v61, v24);
  return v64;
}

Swift::Void __swiftcall ICCloudSyncingObject.remove(cloudSyncingObjectActivityEvent:)(ICCloudSyncingObjectActivityEvent cloudSyncingObjectActivityEvent)
{
  isa = cloudSyncingObjectActivityEvent.super.isa;
  v3 = [v1 activityEventsDocument];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 orderedSet];

    [v5 removeObject_];
  }

  v6 = [v1 activityEventsDocument];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serialize];

    v9 = sub_2150A37B0();
    v11 = v10;

    v12 = sub_2150A3790();
    sub_214F7EDE4(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  [v1 setActivityEventsData_];

  v13 = sub_2150A4A90();
  [v1 updateChangeCountWithReason_];
}

uint64_t sub_21506AF10()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23380);
  v1 = __swift_project_value_buffer(v0, qword_280C23380);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICCloudSyncingObject.shareActivityEvents.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A40, &qword_2150CD7B8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ShareActivityEvent(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([swift_getObjCClassFromMetadata() supportsActivityEvents] && objc_msgSend(v1, sel_isSharedViaICloud))
  {
    ShareActivityEvent.init(cloudSyncingObject:)(v1, v5);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_215074144(v5, v10, type metadata accessor for ShareActivityEvent);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A48, &qword_2150CD7C0);
      v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2150C25D0;
      sub_215074144(v10, v13 + v12, type metadata accessor for ShareActivityEvent);
      return v13;
    }

    sub_214F302D4(v5, &qword_27CA44A40, &qword_2150CD7B8);
  }

  return MEMORY[0x277D84F90];
}

uint64_t ICCloudSyncingObject.activityEventsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A50, &qword_2150CD7C8);
  v1 = *(v0 - 8);
  v64 = v0;
  v65 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v61 = &v52 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A58, &qword_2150CD7D0);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v4);
  v62 = &v52 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A60, &qword_2150CD7D8);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v6);
  v63 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A68, &qword_2150CD7E0);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v52 - v11;
  v13 = sub_2150A5670();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44A70, &unk_2150CD7E8);
  v57 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v55 = &v52 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v54 = &v52 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v53 = &v52 - v29;
  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  sub_2150A5680();

  sub_214D55670(0, &qword_27CA43240, off_278192BC0);
  sub_215073820(&qword_27CA44A78, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_2150A43C0();
  v32 = *(v14 + 8);
  v32(v17, v13);
  v33 = [v30 defaultCenter];
  sub_2150A5680();

  sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
  sub_2150A43C0();
  v32(v17, v13);
  v34 = swift_allocObject();
  v35 = v60;
  *(v34 + 16) = v60;
  v36 = v35;
  v37 = v54;
  v38 = v58;
  sub_2150A4380();

  (*(v59 + 8))(v12, v38);
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = v53;
  v40(v55, v53, v18);
  v40(v56, v37, v18);
  sub_214F43BCC(&qword_27CA44A88, &qword_27CA44A70, &unk_2150CD7E8, MEMORY[0x277CBCB10]);
  v42 = v61;
  sub_2150A4390();
  *(swift_allocObject() + 16) = v36;
  sub_214F43BCC(&qword_27CA44A90, &qword_27CA44A50, &qword_2150CD7C8, MEMORY[0x277CBCC60]);
  v43 = v36;
  v44 = v62;
  v45 = v64;
  sub_2150A43E0();

  (*(v65 + 8))(v42, v45);
  sub_214F43BCC(&qword_27CA44A98, &qword_27CA44A58, &qword_2150CD7D0, MEMORY[0x277CBCC90]);
  v46 = v63;
  v47 = v67;
  sub_2150A43D0();
  (*(v69 + 8))(v44, v47);
  sub_214F43BCC(&qword_27CA44AA0, &qword_27CA44A60, &qword_2150CD7D8, MEMORY[0x277CBCC08]);
  v48 = v66;
  v49 = sub_2150A43B0();
  (*(v68 + 8))(v46, v48);
  v50 = *(v39 + 8);
  v50(v37, v18);
  v50(v41, v18);
  return v49;
}

uint64_t sub_21506BA18@<X0>(unint64_t *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  sub_2150A30C0();
  if (!v7[3])
  {
    result = sub_214F302D4(v7, &qword_27CA42178, &qword_2150C6010);
    goto LABEL_5;
  }

  sub_214D55670(0, a1, a2);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a3 = 0;
  }

  return result;
}

void sub_21506BAB8(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectWithID_];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        *a3 = v8;
        return;
      }
    }
  }

  *a3 = 0;
}

uint64_t sub_21506BB58(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_214D55670(0, &qword_280C24220, 0x277D82BB8);
  if (sub_2150A5780())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 ancestorCloudObjects];
    sub_214D55670(0, &qword_27CA43240, off_278192BC0);
    v6 = sub_2150A4ED0();

    v11 = a2;
    MEMORY[0x28223BE20](v7, v8);
    v10[2] = &v11;
    v4 = sub_2150684B4(sub_2150741AC, v10, v6);
  }

  return v4 & 1;
}

uint64_t sub_21506BC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0, &qword_2150CD800);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (v23 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (v23 - v6);
  v8 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v11 = 0;
    v23[0] = v9 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23[0])
      {
        v13 = MEMORY[0x216062780](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      static ICCloudSyncingObject.persistedActivityEvent(for:)(v13, v7);
      v16 = type metadata accessor for PersistedActivityEvent(0);
      if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
      {
        sub_214F302D4(v7, &qword_27CA42270, &unk_2150CD740);
        v27 = 0u;
        v28 = 0u;
        v29 = 0;
        static ICCloudSyncingObject.fallbackActivityEvent(for:)(v14, v3);
        v17 = type metadata accessor for FallbackActivityEvent(0);
        if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
        {

          sub_214F302D4(v3, &qword_27CA44AB0, &qword_2150CD800);
          v24 = 0u;
          v25 = 0u;
          v26 = 0;
          if (!*(&v28 + 1))
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_214F302D4(&v27, &qword_27CA44AB8, &qword_2150CD808);
          goto LABEL_17;
        }

        *(&v25 + 1) = v17;
        v26 = &protocol witness table for FallbackActivityEvent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
        sub_215074144(v3, boxed_opaque_existential_1, type metadata accessor for FallbackActivityEvent);

        if (*(&v28 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(&v28 + 1) = v16;
        v29 = &protocol witness table for PersistedActivityEvent;
        v18 = __swift_allocate_boxed_opaque_existential_1(&v27);
        sub_215074144(v7, v18, type metadata accessor for PersistedActivityEvent);

        sub_214D7A458(&v27, &v24);
      }

LABEL_17:
      if (*(&v25 + 1))
      {
        sub_214D7A458(&v24, &v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_21505F894(0, v12[2] + 1, 1, v12);
        }

        v21 = v12[2];
        v20 = v12[3];
        if (v21 >= v20 >> 1)
        {
          v12 = sub_21505F894((v20 > 1), v21 + 1, 1, v12);
        }

        v12[2] = v21 + 1;
        sub_214D7A458(&v27, &v12[5 * v21 + 4]);
      }

      else
      {
        sub_214F302D4(&v24, &qword_27CA44AB8, &qword_2150CD808);
      }

      ++v11;
      if (v15 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_28:

  swift_getKeyPath();
  *&v27 = v12;

  sub_214F6E2FC(sub_215074310, 0);

  return v27;
}

uint64_t ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter()
{
  v1 = [v0 activityEventsDocument];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 orderedSet];

    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8, &qword_2150CD7F8);
    v6 = sub_2150A4ED0();

    v11 = v2;
    if (v6 >> 62)
    {
LABEL_21:
      v7 = sub_2150A59D0();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              MEMORY[0x216062780](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              swift_unknownObjectRetain();
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_19:
                __break(1u);
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x216061A60]();
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();
          v2 = v11;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_22:
  }

  return v2;
}

uint64_t static ICCloudSyncingObject.activityEvent(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0, &qword_2150CD800);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  static ICCloudSyncingObject.persistedActivityEvent(for:)(a1, (&v17 - v10));
  v12 = type metadata accessor for PersistedActivityEvent(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    *(&v18 + 1) = v12;
    v19 = &protocol witness table for PersistedActivityEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_215074144(v11, boxed_opaque_existential_1, type metadata accessor for PersistedActivityEvent);
    return sub_214D7A458(&v17, a2);
  }

  sub_214F302D4(v11, &qword_27CA42270, &unk_2150CD740);
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  static ICCloudSyncingObject.fallbackActivityEvent(for:)(a1, v7);
  v13 = type metadata accessor for FallbackActivityEvent(0);
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) != 1)
  {
    *(a2 + 24) = v13;
    *(a2 + 32) = &protocol witness table for FallbackActivityEvent;
    v16 = __swift_allocate_boxed_opaque_existential_1(a2);
    result = sub_215074144(v7, v16, type metadata accessor for FallbackActivityEvent);
    if (!*(&v18 + 1))
    {
      return result;
    }

    return sub_214F302D4(&v17, &qword_27CA44AB8, &qword_2150CD808);
  }

  result = sub_214F302D4(v7, &qword_27CA44AB0, &qword_2150CD800);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if (*(&v18 + 1))
  {
    return sub_214F302D4(&v17, &qword_27CA44AB8, &qword_2150CD808);
  }

  return result;
}

uint64_t ICCloudSyncingObject.persistedActivityEventsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC0, &qword_2150CD810);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC8, qword_2150CD818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_getKeyPath();
  sub_2150A3610();

  sub_214F43BCC(&qword_27CA44AD0, &qword_27CA44AC0, &qword_2150CD810, MEMORY[0x277CC9E08]);
  sub_2150A43D0();
  (*(v1 + 8))(v4, v0);
  sub_214F43BCC(&qword_27CA44AD8, &qword_27CA44AC8, qword_2150CD818, MEMORY[0x277CBCC08]);
  v10 = sub_2150A43B0();
  (*(v6 + 8))(v9, v5);
  return v10;
}

void sub_21506C758(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activityEventsData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A37B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21506C7C0(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2150A3790();
  }

  v4 = v3;
  [v2 setActivityEventsData_];
}

uint64_t sub_21506C838@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - v17;
  v19 = *a1;
  v20 = sub_2150A3960();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = [v19 attachmentModel];
  objc_opt_self();
  v40 = v21;
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    v34 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v23 = v22;
  v36 = a3;
  v37 = v3;
  v42 = MEMORY[0x277D84F90];
  v38 = [v22 table];
  v35 = v18;
  sub_214F43C14(v18, v15, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F43C14(v39, v11, &qword_27CA41DD0, &unk_2150C2740);
  v24 = *(v7 + 80);
  v25 = (v24 + 40) & ~v24;
  v26 = (v8 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v19;
  v27[4] = &v42;
  sub_214FB6CE4(v15, v27 + v25, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FB6CE4(v11, v27 + v26, &qword_27CA41DD0, &unk_2150C2740);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214FB6C1C;
  *(v28 + 24) = v27;
  aBlock[4] = sub_215074214;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_43_0;
  v29 = _Block_copy(aBlock);
  v30 = v40;
  v31 = v19;

  v32 = v38;
  [v38 enumerateColumnsWithBlock_];

  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v34 = v42;

    a3 = v36;
    v18 = v35;
LABEL_5:
    result = sub_214F302D4(v18, &qword_27CA41DD0, &unk_2150C2740);
    *a3 = v34;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21506CBF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoteEditActivityEvent(0);
  if (*(a1 + *(v3 + 28)) && *(a1 + *(v3 + 28)) != 1)
  {

    goto LABEL_6;
  }

  v4 = sub_2150A6270();

  if (v4)
  {
LABEL_6:
    v5 = 1;
    return v5 & 1;
  }

  sub_2150A3960();
  sub_215073820(&qword_27CA44B10, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v5 = sub_2150A4A30() ^ 1;
  return v5 & 1;
}

uint64_t ICCloudSyncingObject.editActivityEventsPublisher.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE0, &qword_2150CD860);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - v4;
  v6 = sub_2150A5670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE8, &qword_2150CD868);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AF0, &unk_2150CD870);
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = [objc_opt_self() defaultCenter];
    sub_2150A5680();

    *(swift_allocObject() + 16) = v1;
    sub_215073820(&qword_27CA44A78, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v20 = v1;
    sub_2150A43E0();

    (*(v7 + 8))(v10, v6);
    sub_214F43BCC(&qword_27CA44B00, &qword_27CA44AE8, &qword_2150CD868, MEMORY[0x277CBCC90]);
    sub_2150A43D0();
    (*(v25 + 8))(v14, v11);
    sub_214F43BCC(&qword_27CA44B08, &qword_27CA44AF0, &unk_2150CD870, MEMORY[0x277CBCC08]);
    v21 = sub_2150A43B0();
    (*(v26 + 8))(v18, v15);
  }

  else
  {
    sub_2150A43A0();
    sub_214F43BCC(&qword_27CA44AF8, &qword_27CA44AE0, &qword_2150CD860, MEMORY[0x277CBCE90]);
    v21 = sub_2150A43B0();
    (*(v24 + 8))(v5, v2);
  }

  return v21;
}

uint64_t sub_21506D1B8(uint64_t a1, void *a2)
{
  sub_2150A30C0();
  if (v10)
  {
    sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    sub_214F302D4(v9, &qword_27CA42178, &qword_2150C6010);
  }

  v3 = 0;
LABEL_6:
  v4 = [a2 objectID];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
      v6 = sub_2150A5780();
    }

    else
    {
      v6 = 0;
    }

    v5 = v3;
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ICCloudSyncingObject.sharedRootActivityEventsPublisher.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AE0, &qword_2150CD860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC0, &qword_2150CD810);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AC8, qword_2150CD818);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - v15;
  if ([v1 isSharedViaICloud] && (objc_msgSend(v1, sel_isSharedRootObject) & 1) == 0 && (v17 = objc_msgSend(v1, sel_sharedRootObject)) != 0)
  {
    v18 = v17;
    swift_getKeyPath();
    sub_2150A3610();

    sub_214F43BCC(&qword_27CA44AD0, &qword_27CA44AC0, &qword_2150CD810, MEMORY[0x277CC9E08]);
    sub_2150A43D0();
    (*(v8 + 8))(v11, v7);
    sub_214F43BCC(&qword_27CA44AD8, &qword_27CA44AC8, qword_2150CD818, MEMORY[0x277CBCC08]);
    v19 = sub_2150A43B0();

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_2150A43A0();
    sub_214F43BCC(&qword_27CA44AF8, &qword_27CA44AE0, &qword_2150CD860, MEMORY[0x277CBCE90]);
    v19 = sub_2150A43B0();
    (*(v3 + 8))(v6, v2);
  }

  return v19;
}

void ICCloudSyncingObject.shareTimestamp.getter(char *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v65 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v71 = &v65 - v18;
  v19 = sub_2150A3960();
  v73 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v68 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v69 = &v65 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v70 = &v65 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v65 - v30;
  v32 = type metadata accessor for PersistedActivityEvent(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isSharedViaICloud])
  {
    v42 = *(v73 + 56);

    v42(a1, 1, 1, v19);
    return;
  }

  v66 = v19;
  v67 = a1;
  if (([v2 isSharedRootObject] & 1) == 0)
  {
    v43 = ICCloudSyncingObject.persistedActivityEvents.getter();
    if (*(v43 + 16))
    {
      sub_214F6163C(v43 + 32, v74);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      v44 = swift_dynamicCast();
      (*(v33 + 56))(v31, v44 ^ 1u, 1, v32);
      if ((*(v33 + 48))(v31, 1, v32) != 1)
      {
        sub_215074144(v31, v36, type metadata accessor for PersistedActivityEvent);
        if (PersistedActivityEvent.Activities.isAddActivity.getter())
        {
          v46 = v66;
          v45 = v67;
          (*(v73 + 16))(v67, v36, v66);
          sub_2150742A4(v36, type metadata accessor for PersistedActivityEvent);
          (*(v73 + 56))(v45, 0, 1, v46);
          return;
        }

        sub_2150742A4(v36, type metadata accessor for PersistedActivityEvent);
LABEL_16:
        v48 = [v2 serverShareCheckingParent];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 creationDate];

          if (v50)
          {
            sub_2150A3930();

            v51 = 0;
          }

          else
          {
            v51 = 1;
          }

          v55 = *(v73 + 56);
          v56 = v66;
          v55(v16, v51, 1, v66);
          v52 = v71;
          sub_214FB6CE4(v16, v71, &qword_27CA41DD0, &unk_2150C2740);
          if ((*(v73 + 48))(v52, 1, v56) != 1)
          {
            v57 = *(v73 + 32);
            v58 = v70;
            v57(v70, v52, v56);
            v59 = [v2 parentCloudObjectModificationDate];
            if (v59)
            {
              v60 = v68;
              v61 = v59;
              sub_2150A3930();

              v62 = v69;
              v57(v69, v60, v56);
              sub_215073820(&qword_27CA44B10, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              LOBYTE(v61) = sub_2150A4A30();
              v63 = *(v73 + 8);
              v73 += 8;
              v63(v62, v56);
              if ((v61 & 1) == 0)
              {
                v64 = v67;
                v57(v67, v58, v56);
                v55(v64, 0, 1, v56);
                return;
              }

              v63(v58, v56);
            }

            else
            {
              (*(v73 + 8))(v58, v56);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v52 = v71;
          (*(v73 + 56))(v71, 1, 1, v66);
        }

        sub_214F302D4(v52, &qword_27CA41DD0, &unk_2150C2740);
LABEL_28:
        sub_21506EA3C(v2, ObjectType, v67);
        return;
      }
    }

    else
    {

      (*(v33 + 56))(v31, 1, 1, v32);
    }

    sub_214F302D4(v31, &qword_27CA42270, &unk_2150CD740);
    goto LABEL_16;
  }

  v37 = [v2 serverShare];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 creationDate];

    v40 = v66;
    if (v39)
    {
      sub_2150A3930();

      v41 = *(v73 + 56);
      v41(v8, 0, 1, v40);
    }

    else
    {
      v41 = *(v73 + 56);
      v41(v8, 1, 1, v66);
    }

    v47 = v67;
    sub_214FB6CE4(v8, v12, &qword_27CA41DD0, &unk_2150C2740);
    if ((*(v73 + 48))(v12, 1, v40) != 1)
    {
      v54 = *(v73 + 32);
      v73 += 32;
      v54(v47, v12, v40);
      v41(v47, 0, 1, v40);
      return;
    }
  }

  else
  {
    v40 = v66;
    (*(v73 + 56))(v12, 1, 1, v66);
    v47 = v67;
  }

  v53 = sub_21506EA3C(v2, ObjectType, v47);
  if ((*(v73 + 48))(v12, 1, v40, v53) != 1)
  {
    sub_214F302D4(v12, &qword_27CA41DD0, &unk_2150C2740);
  }
}

unint64_t sub_21506E05C@<X0>(uint64_t a1@<X8>)
{
  result = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_2150A59D0();
    result = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x216062780](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(result + 32);
  }

  v4 = v3;

  v5 = v4;
  static ICCloudSyncingObject.activityEvent(for:)(v5, &v12);

  v6 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v7 + 8))(v6, v7);
    v8 = sub_2150A3960();
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(&v12);
  }

LABEL_10:
  sub_214F302D4(&v12, &qword_27CA44AB8, &qword_2150CD808);
  v11 = sub_2150A3960();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

void sub_21506E220(void *a1@<X0>, char *a2@<X8>)
{
  v88 = sub_2150A3960();
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NoteEditActivityEvent(0);
  v8 = *(v82 - 8);
  v10 = MEMORY[0x28223BE20](v82, v9);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v83 = &v77 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v89 = &v77 - v16;
  v17 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v77 - v27;
  objc_opt_self();
  v29 = a1;
  v30 = swift_dynamicCastObjCClass();
  v80 = v4;
  v31 = v4 + 56;
  v32 = *(v4 + 56);
  if (v30)
  {
    v77 = a2;
    v33 = v20;
    v34 = v30;
    v35 = v88;
    v85 = v32;
    v86 = v31;
    v32(v28, 1, 1, v88);
    v85(v25, 1, 1, v35);
    v36 = v29;
    v37 = [v34 mergeableString];
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    v81 = v34;
    if (v38)
    {
      v39 = v38;
      *v33 = v34;
      swift_storeEnumTagMultiPayload();
      v40 = v36;
      v41 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v39, v33, v28, v25);

      sub_2150742A4(v33, type metadata accessor for NoteEditActivityEvent.Parents);
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    sub_214F302D4(v25, &qword_27CA41DD0, &unk_2150C2740);
    sub_214F302D4(v28, &qword_27CA41DD0, &unk_2150C2740);
    v43 = *(v41 + 2);
    v78 = v8;
    v79 = v36;
    v44 = v41;
    v86 = v43;
    if (v43)
    {
      v45 = 0;
      v84 = MEMORY[0x277D84F90];
      v85 = v41;
      v46 = v80;
      v47 = v82;
      while (1)
      {
        if (v45 >= *(v44 + 2))
        {
          __break(1u);
          return;
        }

        v48 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v49 = *(v8 + 72);
        v50 = v89;
        sub_21507423C(v44 + v48 + v49 * v45, v89, type metadata accessor for NoteEditActivityEvent);
        if (!*(v50 + *(v47 + 28)))
        {
          break;
        }

        v51 = sub_2150A6270();

        if (v51)
        {
          goto LABEL_17;
        }

        sub_2150742A4(v89, type metadata accessor for NoteEditActivityEvent);
LABEL_11:
        v44 = v85;
        if (v86 == ++v45)
        {
          goto LABEL_34;
        }
      }

LABEL_17:
      v52 = (v89 + *(v47 + 24));
      v54 = *v52;
      v53 = v52[1];

      v55 = [v81 cloudAccount];
      if (v55)
      {
        v56 = v7;
        v57 = v55;
        v58 = [v55 userRecordName];

        v59 = sub_2150A4AD0();
        v61 = v60;

        if (v54 == v59 && v53 == v61)
        {

          v36 = v79;
          v46 = v80;
          v7 = v56;
          v8 = v78;
LABEL_31:
          sub_2150742A4(v89, type metadata accessor for NoteEditActivityEvent);
LABEL_32:
          v47 = v82;
          goto LABEL_11;
        }

        v63 = sub_2150A6270();

        v36 = v79;
        v46 = v80;
        v7 = v56;
        v8 = v78;
        if (v63)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      sub_215074144(v89, v83, type metadata accessor for NoteEditActivityEvent);
      v64 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86E88(0, *(v64 + 16) + 1, 1);
        v64 = v90;
      }

      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_214F86E88((v66 > 1), v67 + 1, 1);
        v64 = v90;
      }

      *(v64 + 16) = v67 + 1;
      v84 = v64;
      sub_215074144(v83, v64 + v48 + v67 * v49, type metadata accessor for NoteEditActivityEvent);
      goto LABEL_32;
    }

    v84 = MEMORY[0x277D84F90];
    v46 = v80;
LABEL_34:

    v68 = v84;
    v69 = *(v84 + 16);
    if (v69)
    {
      v90 = MEMORY[0x277D84F90];
      sub_214F87010(0, v69, 0);
      v70 = v90;
      v71 = v68 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v72 = *(v78 + 72);
      do
      {
        v73 = v87;
        sub_21507423C(v71, v87, type metadata accessor for NoteEditActivityEvent);
        (*(v46 + 16))(v7, v73, v88);
        sub_2150742A4(v73, type metadata accessor for NoteEditActivityEvent);
        v90 = v70;
        v74 = v7;
        v76 = *(v70 + 16);
        v75 = *(v70 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_214F87010((v75 > 1), v76 + 1, 1);
          v70 = v90;
        }

        *(v70 + 16) = v76 + 1;
        (*(v46 + 32))(v70 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v76, v74, v88);
        v71 += v72;
        --v69;
        v7 = v74;
      }

      while (v69);

      v36 = v79;
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
    }

    sub_214FAD11C(v70, v77);
  }

  else
  {
    v42 = v88;

    v32(a2, 1, 1, v42);
  }
}

double sub_21506EA3C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v9 = *(v40 - 8);
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v40, v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B88, &unk_2150CD898);
  v18 = *(v9 + 72);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v37 = swift_allocObject();
  v20 = v37 + v19;
  sub_21506E05C(v37 + v19);
  sub_21506E220(a1, (v20 + v18));
  sub_214F43C14(v20, v17, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FB6CE4(v17, v14, &qword_27CA41DD0, &unk_2150C2740);
  v39 = v5;
  v21 = *(v5 + 48);
  v22 = v21(v14, 1, v4);
  v38 = v8;
  v36 = (v5 + 32);
  if (v22 == 1)
  {
    sub_214F302D4(v14, &qword_27CA41DD0, &unk_2150C2740);
    v23 = MEMORY[0x277D84F90];
    v24 = v4;
  }

  else
  {
    v35 = *(v5 + 32);
    v35(v8, v14, v4);
    v23 = MEMORY[0x277D84F90];
    v24 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2150601EC(0, *(v23 + 2) + 1, 1, v23);
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_2150601EC((v25 > 1), v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v35(&v23[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26], v38, v24);
  }

  sub_214F43C14(v20 + v18, v17, &qword_27CA41DD0, &unk_2150C2740);
  sub_214FB6CE4(v17, v14, &qword_27CA41DD0, &unk_2150C2740);
  if (v21(v14, 1, v24) == 1)
  {
    sub_214F302D4(v14, &qword_27CA41DD0, &unk_2150C2740);
  }

  else
  {
    v27 = *v36;
    v28 = v24;
    v29 = v38;
    v30 = v28;
    (*v36)(v38, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2150601EC(0, *(v23 + 2) + 1, 1, v23);
    }

    v32 = *(v23 + 2);
    v31 = *(v23 + 3);
    if (v32 >= v31 >> 1)
    {
      v23 = sub_2150601EC((v31 > 1), v32 + 1, 1, v23);
    }

    *(v23 + 2) = v32 + 1;
    (v27)(&v23[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32], v29, v30);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_214FAD11C(v23, v41);

  return result;
}

unint64_t sub_21506EEC8()
{
  if ([v0 checklistItemToActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_214F302D4(v7, &qword_27CA42178, &qword_2150C6010);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44B70, &qword_2150CD890);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v1 = sub_21506EFF4();
    goto LABEL_9;
  }

  v1 = v4;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
  v2 = sub_2150A4910();
  [v0 setChecklistItemToActivityEventsStorage_];

  return v1;
}

unint64_t sub_21506EFF4()
{
  v0 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2150A3A00();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v5);
  v58 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v47 - v9;
  v11 = type metadata accessor for PersistedActivityEvent(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44928, &qword_2150CD0F8);
  v56 = *(v16 - 8);
  v57 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v55 = (v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v20);
  v22 = v47 - v21;
  v23 = ICCloudSyncingObject.persistedActivityEvents.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v47[1] = v23;
    v25 = v4;
    v26 = v23 + 32;
    v27 = (v12 + 56);
    v49 = (v25 + 32);
    v48 = (v25 + 8);
    v28 = MEMORY[0x277D84F90];
    v53 = v0;
    v54 = v3;
    v51 = v10;
    v52 = v11;
    v50 = v27;
    do
    {
      sub_214F6163C(v26, v61);
      sub_214F6163C(v61, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      v29 = swift_dynamicCast();
      v30 = *v27;
      if (v29)
      {
        v30(v10, 0, 1, v11);
        sub_215074144(v10, v15, type metadata accessor for PersistedActivityEvent);
        sub_21507423C(&v15[*(v11 + 28)], v3, type metadata accessor for PersistedActivityEvent.Activities);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v31 = v58;
          v32 = v15;
          v33 = v59;
          (*v49)(v58, v3, v59);
          v34 = *(v57 + 48);
          v35 = v22;
          v36 = v28;
          v37 = sub_2150A3990();
          v39 = v38;
          v40 = v33;
          v15 = v32;
          (*v48)(v31, v40);
          __swift_destroy_boxed_opaque_existential_0(v61);
          v41 = v55;
          *v55 = v37;
          *(v41 + 8) = v39;
          v28 = v36;
          v22 = v35;
          sub_215074144(v15, v41 + v34, type metadata accessor for PersistedActivityEvent);
          sub_214FB6CE4(v41, v35, &qword_27CA44928, &qword_2150CD0F8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_215060724(0, v28[2] + 1, 1, v28);
          }

          v43 = v28[2];
          v42 = v28[3];
          v11 = v52;
          v10 = v51;
          if (v43 >= v42 >> 1)
          {
            v28 = sub_215060724((v42 > 1), v43 + 1, 1, v28);
          }

          v28[2] = v43 + 1;
          sub_214FB6CE4(v22, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v43, &qword_27CA44928, &qword_2150CD0F8);
          v3 = v54;
          v27 = v50;
        }

        else
        {
          sub_2150742A4(v15, type metadata accessor for PersistedActivityEvent);
          __swift_destroy_boxed_opaque_existential_0(v61);
          sub_2150742A4(v3, type metadata accessor for PersistedActivityEvent.Activities);
        }
      }

      else
      {
        v30(v10, 1, 1, v11);
        __swift_destroy_boxed_opaque_existential_0(v61);
        sub_214F302D4(v10, &qword_27CA42270, &unk_2150CD740);
      }

      v26 += 40;
      --v24;
    }

    while (v24);

    if (v28[2])
    {
      goto LABEL_14;
    }

LABEL_16:
    v44 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  v28 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80, &unk_2150C7D50);
  v44 = sub_2150A5EA0();
LABEL_17:
  v61[0] = v44;
  sub_2150738D0(v28, 1, v61);

  v45 = sub_214FE0954(v61[0]);

  return v45;
}

uint64_t ICCloudSyncingObject.timestampForChecklistItem(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21506EEC8();
  if (*(v6 + 16) && (v7 = sub_214F30094(a1, a2), (v8 & 1) != 0))
  {
    sub_214F6163C(*(v6 + 56) + 40 * v7, v15);

    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 8))(v9, v10);
    v11 = sub_2150A3960();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {

    v13 = sub_2150A3960();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

Swift::String_optional __swiftcall ICCloudSyncingObject.userIdForChecklistItem(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v3 = sub_21506EEC8();
  if (*(v3 + 16) && (v4 = sub_214F30094(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    sub_214F6163C(*(v3 + 56) + 40 * v4, v14);

    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v7 + 48))(v13, v6, v7);
    v8 = v13[0];
    v9 = v13[1];

    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = v9;
    v11 = v8;
  }

  else
  {

    v11 = 0;
    v10 = 0;
  }

  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t ICCloudSyncingObject.supports(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [v1 isSharedViaICloud];
  if (v7)
  {
    v8 = type metadata accessor for PersistedActivityEvent(0);
    sub_21507423C(a1 + *(v8 + 28), v6, type metadata accessor for PersistedActivityEvent.Activities);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload < 6)
      {
        sub_2150742A4(v6, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_5:
        LOBYTE(v7) = [v1 isSharedRootObject];
        return v7 & 1;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v24 = sub_2150A3A00();
        (*(*(v24 - 8) + 8))(v6, v24);
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (*(a1 + *(v8 + 20)))
          {
LABEL_39:
            v25 = sub_2150A6270();

            LOBYTE(v7) = v25;
            return v7 & 1;
          }

LABEL_40:

          LOBYTE(v7) = 1;
          return v7 & 1;
        }

        sub_2150742A4(v6, type metadata accessor for PersistedActivityEvent.Activities);
      }

      if (*(a1 + *(v8 + 20)) != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_2150742A4(v6, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_47:
      LOBYTE(v7) = [v1 isSharedRootObject] ^ 1;
      return v7 & 1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = v6[2];
      v11 = v6[5];
      if (v10 | v11)
      {
        if (v10)
        {
          if (v11)
          {
            v12 = *v6;
            v13 = v6[1];
            v14 = v6[3];
            v15 = v6[4];
            if (v12)
            {
              v16 = 1702129518;
            }

            else
            {
              v16 = 0x7265646C6F66;
            }

            if (v12)
            {
              v17 = 0xE400000000000000;
            }

            else
            {
              v17 = 0xE600000000000000;
            }

            if (v14)
            {
              v18 = 1702129518;
            }

            else
            {
              v18 = 0x7265646C6F66;
            }

            if (v14)
            {
              v19 = 0xE400000000000000;
            }

            else
            {
              v19 = 0xE600000000000000;
            }

            if (v16 == v18 && v17 == v19)
            {

              swift_bridgeObjectRetain_n();
            }

            else
            {
              v21 = sub_2150A6270();

              swift_bridgeObjectRetain_n();

              if ((v21 & 1) == 0)
              {

                swift_bridgeObjectRelease_n();
LABEL_46:

                goto LABEL_47;
              }
            }

            if (v13 == v15 && v10 == v11)
            {

              swift_bridgeObjectRelease_n();
            }

            else
            {
              v28 = sub_2150A6270();

              swift_bridgeObjectRelease_n();
              if ((v28 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

LABEL_57:

            LOBYTE(v7) = 0;
            return v7 & 1;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_57;
          }
        }

        if (!v11)
        {
          goto LABEL_5;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v22 = v6[5];
      v23 = v6[8];

      if (v22)
      {

        goto LABEL_46;
      }

      if (v23)
      {
        goto LABEL_46;
      }
    }

    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

objc_class *ICCloudSyncingObject.persist(activity:for:timestamp:)(uint64_t a1, ICCloudSyncingObject *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersistedActivityEvent(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2;
  if (!a2)
  {
    v14 = v3;
  }

  v15 = a2;
  ActivityEventParticipant.init(cloudSyncingObject:)(&v34, v14);
  object = v34.value.recordName._object;
  if (v34.value.recordName._object)
  {
    countAndFlagsBits = v34.value.recordName._countAndFlagsBits;
    v30 = v34.value.mentionRecordName.value._countAndFlagsBits;
    v31 = v3;
    v18 = v15;
    v29 = v34.value.mentionRecordName.value._object;
    if (!a2)
    {
      v18 = v31;
    }

    v19 = v15;
    v35 = ActivityEventObject.init(cloudSyncingObject:)(v18);
    v20 = v34.value.mentionRecordName.value._countAndFlagsBits;
    if (v34.value.mentionRecordName.value._countAndFlagsBits)
    {
      v21 = v34.value.recordName._object;
      v22 = v34.value.recordName._countAndFlagsBits;
      (*(v6 + 16))(v9, v32, v5, *&v35.is_nil);
      sub_21507423C(v33, &v13[v10[7]], type metadata accessor for PersistedActivityEvent.Activities);
      _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
      (*(v6 + 40))(v13, v9, v5);
      v23 = &v13[v10[5]];
      *v23 = v22 & 1;
      *(v23 + 1) = v21;
      *(v23 + 2) = v20;
      v24 = &v13[v10[6]];
      *v24 = countAndFlagsBits;
      v24[1] = object;
      v25 = v29;
      v24[2] = v30;
      v24[3] = v25;
      v26 = ICCloudSyncingObject.persist(activityEvent:)(v13);
      sub_2150742A4(v13, type metadata accessor for PersistedActivityEvent);
      return v26;
    }

    sub_21507388C(countAndFlagsBits, object, v30, v29);
  }

  return 0;
}

objc_class *ICCloudSyncingObject.persist(activityEvent:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0, &qword_2150CD800);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for PersistedActivityEvent(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FallbackActivityEvent(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ICCloudSyncingObject.supports(_:)(a1))
  {
    sub_21507423C(a1, v10, type metadata accessor for PersistedActivityEvent);
    FallbackActivityEvent.init(activityEvent:)(v10, v15);
    sub_21507423C(v15, v6, type metadata accessor for FallbackActivityEvent);
    (*(v12 + 56))(v6, 0, 1, v11);
    v16 = _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent3for8fallbackSo0abcgH0CSgAC09PersistedgH0V_AC08FallbackgH0VSgtFZ_0(a1, v6);
    sub_214F302D4(v6, &qword_27CA44AB0, &qword_2150CD800);
    if (v16)
    {
      v17.super.isa = v16;
      ICCloudSyncingObject.add(cloudSyncingObjectActivityEvent:)(v17);
    }

    sub_2150742A4(v15, type metadata accessor for FallbackActivityEvent);
  }

  else
  {
    if (qword_280C23378 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_280C23380);
    v19 = v1;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5550();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = [v19 objectID];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_214D51000, v20, v21, "Activity is not supported — skipping {objectID: %@}", v22, 0xCu);
      sub_214F302D4(v23, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v23, -1, -1);
      MEMORY[0x216064AF0](v22, -1, -1);
    }

    return 0;
  }

  return v16;
}

Swift::Void __swiftcall ICCloudSyncingObject.add(cloudSyncingObjectActivityEvent:)(ICCloudSyncingObjectActivityEvent cloudSyncingObjectActivityEvent)
{
  isa = cloudSyncingObjectActivityEvent.super.isa;
  v3 = [v1 activityEventsDocument];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 orderedSet];

    [v5 addObject_];
  }

  v6 = [v1 activityEventsDocument];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serialize];

    v9 = sub_2150A37B0();
    v11 = v10;

    v12 = sub_2150A3790();
    sub_214F7EDE4(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  [v1 setActivityEventsData_];

  v13 = sub_2150A4A90();
  [v1 updateChangeCountWithReason_];
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistCreateActivityEvent(forObject:inParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *inParentObject)
{
  v5 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A3960();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v20 = v26 - v19;
  if (inParentObject && (*&(&v16)[-1] = ActivityEventObject.init(cloudSyncingObject:)(inParentObject), (v21 = v30) != 0))
  {
    v26[0] = v29;
    v27 = forObject;
    v22 = v28;
    sub_2150A3950();
    v26[1] = v2;
    sub_2150A38E0();
    v23 = *(v10 + 8);
    v23(v14, v9);
    *v8 = v22 & 1;
    *(v8 + 1) = v26[0];
    *(v8 + 2) = v21;
    swift_storeEnumTagMultiPayload();
    v24 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v8, v27, v20);
    sub_2150742A4(v8, type metadata accessor for PersistedActivityEvent.Activities);
    v23(v20, v9);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  result.value._fallbackData = v17;
  result.value._data = v16;
  result.value.super.isa = v25;
  result.is_nil = v18;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistMoveActivityEvent(forObject:fromParentObject:toParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *fromParentObject, ICCloudSyncingObject_optional *toParentObject)
{
  v6 = sub_2150A3960();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!fromParentObject)
  {
    v15 = 0uLL;
    if (toParentObject)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v16 = 0uLL;
    goto LABEL_6;
  }

  ActivityEventObject.init(cloudSyncingObject:)(fromParentObject);
  v15 = v24;
  fromParentObject = v25;
  if (!toParentObject)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = v15;
  ActivityEventObject.init(cloudSyncingObject:)(toParentObject);
  v15 = v23;
  v16 = v24;
  v17 = v25;
LABEL_6:
  *v14 = v15;
  *(v14 + 2) = fromParentObject;
  *(v14 + 24) = v16;
  *(v14 + 5) = v17;
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v18 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v14, forObject, v10);
  (*(v7 + 8))(v10, v6);
  sub_2150742A4(v14, type metadata accessor for PersistedActivityEvent.Activities);
  v22 = v18;
  result.value._fallbackData = v20;
  result.value._data = v19;
  result.value.super.isa = v22;
  result.is_nil = v21;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistCopyActivityEvent(forObject:originalObject:fromParentObject:toParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject *originalObject, ICCloudSyncingObject_optional *fromParentObject, ICCloudSyncingObject_optional *toParentObject)
{
  v9 = sub_2150A3960();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = ActivityEventObject.init(cloudSyncingObject:)(originalObject);
  v18 = v29;
  if (v29)
  {
    v26 = forObject;
    v27 = v4;
    v19 = v28;
    if (fromParentObject)
    {
      ActivityEventObject.init(cloudSyncingObject:)(fromParentObject);
      v20 = v28;
      fromParentObject = v29;
      if (toParentObject)
      {
LABEL_4:
        v25 = v20;
        ActivityEventObject.init(cloudSyncingObject:)(toParentObject);
        v20 = v25;
        v21 = v28;
        v22 = v29;
LABEL_8:
        *v17 = v19 & 1;
        *(v17 + 1) = *(&v19 + 1);
        *(v17 + 2) = v18;
        *(v17 + 24) = v20;
        *(v17 + 5) = fromParentObject;
        *(v17 + 3) = v21;
        *(v17 + 8) = v22;
        swift_storeEnumTagMultiPayload();
        sub_2150A3950();
        v23 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v17, v26, v13);
        (*(v10 + 8))(v13, v9);
        sub_2150742A4(v17, type metadata accessor for PersistedActivityEvent.Activities);
        goto LABEL_9;
      }
    }

    else
    {
      v20 = 0uLL;
      if (toParentObject)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    v29 = 0;
    v21 = 0uLL;
    v28 = 0u;
    goto LABEL_8;
  }

  v23 = 0;
LABEL_9:
  v24 = v23;
  result.is_nil = v31.is_nil;
  result.value._fallbackData = v31.value.recordName._object;
  result.value._data = v31.value.recordName._countAndFlagsBits;
  result.value.super.isa = v24;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistRenameActivityEvent(forObject:)(ICCloudSyncingObject *forObject)
{
  v2 = sub_2150A3960();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v10 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v9, forObject, v6);
  (*(v3 + 8))(v6, v2);
  sub_2150742A4(v9, type metadata accessor for PersistedActivityEvent.Activities);
  v14 = v10;
  result.value._fallbackData = v12;
  result.value._data = v11;
  result.value.super.isa = v14;
  result.is_nil = v13;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistDeleteActivityEvent(forObject:fromParentObject:)(ICCloudSyncingObject *forObject, ICCloudSyncingObject_optional *fromParentObject)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v9, v10);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (fromParentObject && (*&(&v11)[-1] = ActivityEventObject.init(cloudSyncingObject:)(fromParentObject), (v16 = v22) != 0))
  {
    v17 = v21;
    *v15 = v20[8] & 1;
    *(v15 + 1) = v17;
    *(v15 + 2) = v16;
    swift_storeEnumTagMultiPayload();
    sub_2150A3950();
    v18 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v15, forObject, v8);
    (*(v5 + 8))(v8, v4);
    sub_2150742A4(v15, type metadata accessor for PersistedActivityEvent.Activities);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  result.value._fallbackData = v12;
  result.value._data = v11;
  result.value.super.isa = v19;
  result.is_nil = v13;
  return result;
}

id sub_215071124(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, void *))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5(v8, a4);

  return v11;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistAddParticipantActivityEvent(forObject:participant:)(ICCloudSyncingObject *forObject, CKShareParticipant participant)
{
  v2 = sub_215071230(forObject, participant.super.isa, 4);
  result.value._fallbackData = v4;
  result.value._data = v3;
  result.value.super.isa = v2;
  result.is_nil = v5;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistRemoveParticipantActivityEvent(forObject:participant:)(ICCloudSyncingObject *forObject, CKShareParticipant participant)
{
  v2 = sub_215071230(forObject, participant.super.isa, 5);
  result.value._fallbackData = v4;
  result.value._data = v3;
  result.value.super.isa = v2;
  result.is_nil = v5;
  return result;
}

objc_class *sub_215071230(ICCloudSyncingObject *a1, void *a2, uint64_t a3)
{
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  ActivityEventParticipant.init(participant:)(&v18, a2);
  object = v18.value.recordName._object;
  if (!v18.value.recordName._object)
  {
    return 0;
  }

  mentionRecordName = v18.value.mentionRecordName;
  v13->value._countAndFlagsBits = v18.value.recordName._countAndFlagsBits;
  v13->value._object = object;
  v13[1] = mentionRecordName;
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v16 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v13, a1, v9);
  (*(v6 + 8))(v9, v5);
  sub_2150742A4(v13, type metadata accessor for PersistedActivityEvent.Activities);
  return v16;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistToggleChecklistItemActivityEvent(forObject:todo:)(ICCloudSyncingObject *forObject, ICTTTodo todo)
{
  isa = todo.super.isa;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20, &qword_2150CD880) + 48);
  v14 = [(objc_class *)isa uuid];
  sub_2150A39C0();

  v12[v13] = [(objc_class *)isa done];
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v15 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v12, forObject, v8);
  (*(v5 + 8))(v8, v4);
  sub_2150742A4(v12, type metadata accessor for PersistedActivityEvent.Activities);
  v19 = v15;
  result.value._fallbackData = v17;
  result.value._data = v16;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

ICCloudSyncingObjectActivityEvent_optional __swiftcall ICCloudSyncingObject.persistMentionActivityEvent(forObject:mentionAttachments:)(ICCloudSyncingObject *forObject, Swift::OpaquePointer mentionAttachments)
{
  v40 = forObject;
  v4 = sub_2150A3960();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v36, v7);
  v37 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!(mentionAttachments._rawValue >> 62))
  {
    v9 = *((mentionAttachments._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = sub_2150A59D0();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((mentionAttachments._rawValue & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x216062780](v12, mentionAttachments._rawValue);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 >= *((mentionAttachments._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(mentionAttachments._rawValue + v12 + 4);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      ActivityEventParticipant.init(mentionAttachment:)(&v41, v13);
      object = v41.value.recordName._object;
      if (v41.value.recordName._object)
      {
        break;
      }

      sub_21507388C(v41.value.recordName._countAndFlagsBits, 0, v41.value.mentionRecordName.value._countAndFlagsBits, v41.value.mentionRecordName.value._object);
      ++v12;
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v32 = v2;
    v34 = v41.value.mentionRecordName.value._object;
    countAndFlagsBits = v41.value.recordName._countAndFlagsBits;
    v15 = v41.value.mentionRecordName.value._countAndFlagsBits;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_21505FC18(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    v19 = v34;
    v20 = countAndFlagsBits;
    if (v18 >= v17 >> 1)
    {
      v23 = sub_21505FC18((v17 > 1), v18 + 1, 1, v11);
      v21 = v15;
      v19 = v34;
      v20 = countAndFlagsBits;
      v11 = v23;
    }

    else
    {
      v21 = v15;
    }

    *(v11 + 2) = v18 + 1;
    v22 = &v11[32 * v18];
    *(v22 + 4) = v20;
    *(v22 + 5) = object;
    *(v22 + 6) = v21;
    *(v22 + 7) = v19;
    v2 = v32;
    v4 = v33;
  }

  while (v10 != v9);
LABEL_25:
  if (*(v11 + 2))
  {
    v24 = v37;
    *v37 = v11;
    swift_storeEnumTagMultiPayload();
    v25 = v38;
    sub_2150A3950();
    v26 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v24, v40, v25);
    (*(v39 + 8))(v25, v4);
    sub_2150742A4(v24, type metadata accessor for PersistedActivityEvent.Activities);
  }

  else
  {

    v26 = 0;
  }

  v30 = v26;
  result.value._fallbackData = v28;
  result.value._data = v27;
  result.value.super.isa = v30;
  result.is_nil = v29;
  return result;
}

uint64_t sub_215071C00(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t static ICCloudSyncingObject.persistedActivityEvent(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_27CA417E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for PersistedActivityEvent(0);
  v5 = [a1 data];
  v6 = sub_2150A37B0();
  v8 = v7;

  sub_215073820(&qword_27CA44B28, type metadata accessor for PersistedActivityEvent, &protocol conformance descriptor for PersistedActivityEvent);
  sub_2150A2F60();
  sub_214F7EDE4(v6, v8);
  v9 = *(*(v4 - 8) + 56);

  return v9(a2, 0, 1, v4);
}

uint64_t static ICCloudSyncingObject.fallbackActivityEvent(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 fallbackData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A37B0();
    v7 = v6;

    if (qword_27CA417E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for FallbackActivityEvent(0);
    sub_215073820(&unk_27CA44B30, type metadata accessor for FallbackActivityEvent, &protocol conformance descriptor for FallbackActivityEvent);
    sub_2150A2F60();
    sub_214F7EDE4(v5, v7);
    v14 = *(*(v8 - 8) + 56);
    v15 = a2;
    v16 = 0;
    v17 = v8;
  }

  else
  {
    if (qword_280C23378 != -1)
    {
      swift_once();
    }

    v9 = sub_2150A3F30();
    __swift_project_value_buffer(v9, qword_280C23380);
    v10 = sub_2150A3F10();
    v11 = sub_2150A5550();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_214D51000, v10, v11, "Cloud syncing activity event doesn't have fallback data — returning nil", v12, 2u);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    v13 = type metadata accessor for FallbackActivityEvent(0);
    v14 = *(*(v13 - 8) + 56);
    v17 = v13;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 activityEventsDocument];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 orderedSet];

    [v6 removeAllObjects];
  }

  v7 = [v2 activityEventsDocument];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 orderedSet];

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8, &qword_2150CD7F8);
      sub_2150A5E20();
    }

    else
    {
      sub_2150A62D0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AA8, &qword_2150CD7F8);
    v10 = sub_2150A4EB0();

    [v9 addObjectsFromArray_];
  }

  else
  {
  }

  v11 = [v2 activityEventsDocument];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 serialize];

    v14 = sub_2150A37B0();
    v16 = v15;

    v17 = sub_2150A3790();
    sub_214F7EDE4(v14, v16);
  }

  else
  {
    v17 = 0;
  }

  [v2 setActivityEventsData_];

  v18 = sub_2150A4A90();
  [v2 updateChangeCountWithReason_];
}

void (*ICCloudSyncingObject.cloudSyncingObjectActivityEvents.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
  return sub_2150725E4;
}

void sub_2150725E4(unint64_t *a1, char a2)
{
  if (a2)
  {

    ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(v2);
  }

  else
  {
    ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter(*a1);
  }
}

Swift::Void __swiftcall ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEvents()()
{
  v1 = [v0 activityEventsDocument];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 orderedSet];

    [v3 removeAllObjects];
  }

  v4 = [v0 activityEventsData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2150A37B0();
    v8 = v7;

    sub_214F7EDE4(v6, v8);
    v9 = [v0 activityEventsDocument];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 serialize];

      v12 = sub_2150A37B0();
      v14 = v13;

      v15 = sub_2150A3790();
      sub_214F7EDE4(v12, v14);
    }

    else
    {
      v15 = 0;
    }

    [v0 setActivityEventsData_];

    v16 = sub_2150A4A90();
    [v0 updateChangeCountWithReason_];
  }
}

uint64_t static ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEventsForUnsharedObjects(in:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_215074024;
  *(v3 + 24) = v2;
  v7[4] = sub_214F3FBD0;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_214F34100;
  v7[3] = &block_descriptor_22;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215072984(uint64_t a1)
{
  sub_214D55670(0, &qword_27CA43240, off_278192BC0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_214D55670(0, &qword_280C23140, 0x277CCAC30);
  v3 = sub_2150A5500();
  v4 = sub_2150A4EB0();
  aBlock[4] = sub_215072B08;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2150017E0;
  aBlock[3] = &block_descriptor_34;
  v5 = _Block_copy(aBlock);

  [ObjCClassFromMetadata ic:v3 enumerateObjectsMatchingPredicate:0 sortDescriptors:v4 relationshipKeyPathsForPrefetching:a1 context:16 batchSize:0 saveAfterBatch:v5 usingBlock:?];

  _Block_release(v5);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_215072B08(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    if (([v3 isSharedViaICloud] & 1) == 0)
    {
      [v3 objc_removeAllCloudSyncingObjectActivityEvents];
    }
  }
}

uint64_t sub_215072D00(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2150A59D0();
LABEL_9:
  result = sub_2150A5BD0();
  *v2 = result;
  return result;
}

uint64_t sub_215072DA0(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v19 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(v13, v14);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 8))(v15, v16);
  LOBYTE(a1) = sub_2150A3900();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v12, v4);
  return a1 & 1;
}

uint64_t sub_215072F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v16 - v11;
  v13 = *(v5 + 16);
  v13(v16 - v11, a1, v4);
  v13(v9, a2, v4);
  LOBYTE(a2) = sub_2150A3900();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v12, v4);
  return a2 & 1;
}

uint64_t sub_215073090(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BF0, &qword_27CA44BE8, &qword_2150CD8C0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BE8, &qword_2150CD8C0);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_280C24240, 0x277CBC5F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_215073244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BD8, &qword_27CA44BD0, &qword_2150CD8B8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BD0, &qword_2150CD8B8);
            v9 = sub_214F4800C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_280C24888, 0x277CBC5D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2150733F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BC0, &qword_27CA44BB8, &qword_2150CD8B0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB8, &qword_2150CD8B0);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ICTTAudioRecording.Fragment(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21507359C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2150A59D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2150A59D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_214F43BCC(&unk_27CA44BA0, &qword_27CA44B98, &qword_2150CD8A8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B98, &qword_2150CD8A8);
            v9 = sub_214F47F8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_214D55670(0, &qword_27CA44B90, off_278192CE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_215073750(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2150A6270() & 1;
    }
  }

  return result;
}

uint64_t sub_215073820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21507388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2150738D0(uint64_t a1, char a2, void *a3)
{
  v52 = a3;
  v5 = type metadata accessor for PersistedActivityEvent(0);
  v49 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v45 = &v44 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v51 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44928, &qword_2150CD0F8);
  result = MEMORY[0x28223BE20](v14, v15);
  v50 = (&v44 - v18);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(result + 48);
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v48 = v20;
    while (1)
    {
      v27 = v50;
      sub_214F43C14(v21, v50, &qword_27CA44928, &qword_2150CD0F8);
      v29 = *v27;
      v28 = v27[1];
      sub_215074144(v27 + v48, v51, type metadata accessor for PersistedActivityEvent);
      v30 = *v52;
      v32 = sub_214F30094(v29, v28);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      if (v30[3] >= v35)
      {
        if ((a2 & 1) == 0)
        {
          sub_214FEE69C();
        }
      }

      else
      {
        sub_214FEB820(v35, a2 & 1);
        v37 = sub_214F30094(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_20;
        }

        v32 = v37;
      }

      v39 = *v52;
      if (v36)
      {
        v22 = *(v49 + 72) * v32;
        v23 = v46;
        sub_21507423C(v39[7] + v22, v46, type metadata accessor for PersistedActivityEvent);
        v24 = v51;
        if (sub_2150A3900())
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v26 = v45;
        sub_21507423C(v25, v45, type metadata accessor for PersistedActivityEvent);
        sub_2150742A4(v23, type metadata accessor for PersistedActivityEvent);
        sub_2150742A4(v24, type metadata accessor for PersistedActivityEvent);

        result = sub_2150740E0(v26, v39[7] + v22);
      }

      else
      {
        v39[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v39[6] + 16 * v32);
        *v40 = v29;
        v40[1] = v28;
        result = sub_215074144(v51, v39[7] + *(v49 + 72) * v32, type metadata accessor for PersistedActivityEvent);
        v41 = v39[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_19;
        }

        v39[2] = v43;
      }

      v21 += v47;
      a2 = 1;
      if (!--v19)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_2150A63E0();
    __break(1u);
  }

  return result;
}

id _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent7forData8fallbackSo0abcgH0C10Foundation0J0V_AC08FallbackgH0VSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CA417E0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44AB0, &qword_2150CD800);
  sub_21507402C();
  v3 = sub_2150A2FC0();
  v5 = v4;
  v6 = v3;
  v7 = sub_2150A3790();
  if (v5 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2150A3790();
    sub_214FE1228(v6, v5);
  }

  v9 = [objc_allocWithZone(ICCloudSyncingObjectActivityEvent) initWithData:v7 fallbackData:v8];

  return v9;
}

id _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent3for8fallbackSo0abcgH0CSgAC09PersistedgH0V_AC08FallbackgH0VSgtFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_27CA417E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PersistedActivityEvent(0);
  sub_215073820(&qword_27CA44B68, type metadata accessor for PersistedActivityEvent, &protocol conformance descriptor for PersistedActivityEvent);
  v3 = sub_2150A2FC0();
  v5 = v4;
  v6 = _sSo20ICCloudSyncingObjectC11NotesSharedE05cloudbC13ActivityEvent7forData8fallbackSo0abcgH0C10Foundation0J0V_AC08FallbackgH0VSgtFZ_0(v3, v4, a2);
  sub_214F7EDE4(v3, v5);
  return v6;
}

unint64_t sub_21507402C()
{
  result = qword_27CA44B58;
  if (!qword_27CA44B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44AB0, &qword_2150CD800);
    sub_215073820(&qword_27CA44B60, type metadata accessor for FallbackActivityEvent, &protocol conformance descriptor for FallbackActivityEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44B58);
  }

  return result;
}

uint64_t sub_2150740E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_215074144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21507423C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2150742A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215074380(uint64_t a1)
{
  v2 = sub_21507443C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150743BC(uint64_t a1)
{
  v2 = sub_21507443C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21507443C()
{
  result = qword_27CA44C08;
  if (!qword_27CA44C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C08);
  }

  return result;
}

void ICTTMergeableString.location(for:affinity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  [v4 generateIdsForLocalChanges];
  v8 = [objc_opt_self() valueWithRange_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42680, &qword_2150C3E58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2150C25D0;
  *(v9 + 56) = sub_215075208();
  *(v9 + 32) = v8;
  v10 = v8;
  v11 = sub_2150A4EB0();

  v12 = [v4 selectionForCharacterRanges:v11 selectionAffinity:a2];

  *a3 = v12;
}

void ICTTMergeableString.canResolveCharacterLocation(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (v3 >> 62)
  {
    if (sub_2150A59D0())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    [v5 rangeValue];

    return;
  }

  __break(1u);
}

void ICTTMergeableString.characterLocation(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (v3 >> 62)
  {
    if (sub_2150A59D0())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    v5 = v4;

    [v5 rangeValue];

    return;
  }

  __break(1u);
}

uint64_t sub_215074858()
{
  sub_2150A64B0();
  MEMORY[0x216063080](0);
  return sub_2150A64E0();
}

uint64_t sub_21507489C()
{
  sub_2150A64B0();
  MEMORY[0x216063080](0);
  return sub_2150A64E0();
}

void sub_2150748DC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_2150A6270();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21507496C(uint64_t a1)
{
  v2 = sub_215075254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2150749A8(uint64_t a1)
{
  v2 = sub_215075254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_215074A28@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a6@<X8>)
{
  v22 = a6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v10);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2150A6590();
  if (!v6)
  {
    v13 = v9;
    sub_214FEED84();
    v14 = v25;
    sub_2150A5FC0();
    v15 = v23;
    v16 = v24;
    v17 = objc_allocWithZone(ICTTMergeableStringSelection);
    v18 = sub_2150A3790();
    v19 = [v17 initWithData_];

    sub_214F7EDE4(v15, v16);
    (*(v13 + 8))(v12, v14);
    *v22 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_215074C4C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - v10;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_2150A65B0();
  v13 = [v12 serialize];
  v14 = sub_2150A37B0();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  sub_214FEED30();
  sub_2150A60A0();
  sub_214F7EDE4(v20, v21);
  return (*(v8 + 8))(v11, v7);
}

id ICTTMergeableString.Selection.location.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 locationOnlySelection];
  *a1 = result;
  return result;
}

uint64_t _sSo19ICTTMergeableStringC11NotesSharedE8LocationV9hashValueSivg_0()
{
  sub_2150A64B0();
  sub_2150A5790();
  return sub_2150A64E0();
}

uint64_t sub_215074E84()
{
  sub_2150A64B0();
  sub_2150A5790();
  return sub_2150A64E0();
}

void ICTTMergeableString.selection(for:affinity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  [v3 generateIdsForLocalChanges];
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_214F86F6C(0, v8, 0);
    v9 = v19;
    v10 = objc_opt_self();
    v11 = (a1 + 40);
    do
    {
      v12 = [v10 valueWithRange_];
      v18 = sub_215075208();
      v19 = v9;
      *&v17 = v12;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86F6C((v13 > 1), v14 + 1, 1);
        v9 = v19;
      }

      v11 += 2;
      *(v9 + 16) = v14 + 1;
      sub_214D72488(&v17, (v9 + 32 * v14 + 32));
      --v8;
    }

    while (v8);
  }

  v15 = sub_2150A4EB0();

  v16 = [v4 selectionForCharacterRanges:v15 selectionAffinity:a2];

  *a3 = v16;
}

BOOL ICTTMergeableString.canResolveCharacterRanges(for:)(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(ICTTMergeableString.characterRanges(for:)(&v3) + 2);

  return v1 != 0;
}

char *ICTTMergeableString.characterRanges(for:)(void *a1)
{
  v2 = [v1 characterRangesForSelection_];
  sub_215075208();
  v3 = sub_2150A4ED0();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_2150A59D0();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_214F86ECC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216062780](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 rangeValue];
      v12 = v11;

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86ECC((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_215075208()
{
  result = qword_27CA44C18;
  if (!qword_27CA44C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44C18);
  }

  return result;
}

unint64_t sub_215075254()
{
  result = qword_27CA44C28;
  if (!qword_27CA44C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C28);
  }

  return result;
}

unint64_t sub_2150752A8()
{
  result = qword_27CA44C38;
  if (!qword_27CA44C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C38);
  }

  return result;
}

unint64_t sub_2150752FC()
{
  result = qword_27CA44C40;
  if (!qword_27CA44C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C40);
  }

  return result;
}

unint64_t sub_215075394()
{
  result = qword_27CA44C48;
  if (!qword_27CA44C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C48);
  }

  return result;
}

unint64_t sub_2150753EC()
{
  result = qword_27CA44C50;
  if (!qword_27CA44C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C50);
  }

  return result;
}

unint64_t sub_215075444()
{
  result = qword_27CA44C58;
  if (!qword_27CA44C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C58);
  }

  return result;
}

unint64_t sub_21507549C()
{
  result = qword_27CA44C60;
  if (!qword_27CA44C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C60);
  }

  return result;
}

unint64_t sub_2150754F4()
{
  result = qword_27CA44C68;
  if (!qword_27CA44C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C68);
  }

  return result;
}

unint64_t sub_21507554C()
{
  result = qword_27CA44C70;
  if (!qword_27CA44C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C70);
  }

  return result;
}

uint64_t sub_2150755E8(char a1, char a2)
{
  if (qword_2150CE1C8[a1] == qword_2150CE1C8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_215075650(char a1, char a2)
{
  if (qword_2150CE1E8[a1] == qword_2150CE1E8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2150756B8(char a1, char a2)
{
  if (qword_2150CE208[a1] == qword_2150CE208[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_215075720(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  v6 = 0x697263736E617274;
  v7 = 0xEC000000676E6962;
  if (a1 != 4)
  {
    v6 = 0x7974706D65;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x64616F6C6E776F64;
  v9 = 0xEB00000000676E69;
  if (a1 != 1)
  {
    v8 = 0x656E696C66666FLL;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x676E69646E6570;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC000000676E6962;
      if (v10 != 0x697263736E617274)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974706D65)
      {
LABEL_34:
        v13 = sub_2150A6270();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000676E69;
      if (v10 != 0x64616F6C6E776F64)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656E696C66666FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E69646E6570)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_215075918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE400000000000000;
    v13 = 2037411683;
    if (a1 != 2)
    {
      v13 = 0x656D616E6572;
      v12 = 0xE600000000000000;
    }

    v14 = 1702260589;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x657461657263;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000002150E19E0;
    v5 = 0x80000002150E1A00;
    v6 = 0xD000000000000013;
    if (a1 != 7)
    {
      v6 = 0x6E6F69746E656DLL;
      v5 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6574656C6564;
    if (a1 != 4)
    {
      v8 = 0x6974726150646461;
      v7 = 0xEE00746E61706963;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v9 != 2037411683)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x656D616E6572)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE400000000000000;
      if (v9 != 1702260589)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x657461657263)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6574656C6564)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEE00746E61706963;
      if (v9 != 0x6974726150646461)
      {
LABEL_52:
        v16 = sub_2150A6270();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x80000002150E19E0;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x80000002150E1A00;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x6E6F69746E656DLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_215075BCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000646574;
  v5 = 0x6C6F686563616C70;
  if (a1 == 2)
  {
    v5 = 0x726F707075736E75;
  }

  else
  {
    v4 = 0xEB00000000726564;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 0x6C61636F6CLL;
  }

  else
  {
    v3 = 0x80000002150E1960;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEB00000000646574;
    v9 = 0xEB00000000726564;
    if (a2 == 2)
    {
      v12 = 0x726F707075736E75;
    }

    else
    {
      v12 = 0x6C6F686563616C70;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x80000002150E1960;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x6C61636F6CLL;
    }

    else
    {
      v12 = 0xD000000000000011;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2150A6270();
  }

  return v14 & 1;
}

uint64_t EditNoteActivity.accountID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditNoteActivity.replicaID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditNoteActivity(0) + 24);
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditNoteActivity.noteTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for EditNoteActivity(0) + 28));

  return v1;
}

void EditNoteActivity.noteTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditNoteActivity(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

NotesShared::EditNoteActivity::NoteAttributes_optional __swiftcall EditNoteActivity.NoteAttributes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_215075F08()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

double sub_215075FDC(uint64_t a1)
{
  sub_2150A4BB0();

  return result;
}

uint64_t sub_21507609C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_215076178(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C61636F6CLL;
  v4 = 0xEB00000000646574;
  v5 = 0x726F707075736E75;
  if (*v1 != 2)
  {
    v5 = 0x6C6F686563616C70;
    v4 = 0xEB00000000726564;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000002150E1960;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t EditNoteActivity.noteAttributes.getter()
{
  type metadata accessor for EditNoteActivity(0);
}

void EditNoteActivity.noteAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EditNoteActivity(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t EditNoteActivity.init(noteID:accountID:replicaID:noteTitle:noteAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v18 = type metadata accessor for EditNoteActivity(0);
  v19 = &a9[v18[7]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *v19 = a6;
  *(v19 + 1) = a7;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = v18[6];
  v21 = sub_2150A3A00();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a5, v21);
  *&a9[v18[8]] = a8;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EditNoteActivity.validate()()
{
  v1 = v0;
  v2 = sub_214F81088(&unk_28270E800);
  v3 = *(v1 + *(type metadata accessor for EditNoteActivity(0) + 32));

  v4 = sub_21507A1A0(v2, v3);

  if (v4[2])
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2065746F4ELL, 0xE500000000000000);
    MEMORY[0x2160617E0](*v1, v1[1]);
    MEMORY[0x2160617E0](0xD000000000000011, 0x80000002150E8490);
    sub_214D5A634();
    v5 = sub_2150A52F0();
    v7 = v6;

    MEMORY[0x2160617E0](v5, v7);

    MEMORY[0x2160617E0](0xD00000000000001FLL, 0x80000002150E84B0);
    sub_215003804();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 3;
    swift_willThrow();
  }

  else
  {
  }
}

uint64_t EditNoteActivity.withNote<A>(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2150765FC, 0, 0);
}

uint64_t sub_2150765FC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  v7 = *(v0 + 24);
  *(v6 + 40) = v7;
  *(v6 + 56) = v3;
  v8 = v7;

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_21507671C;
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(_:)(v11, sub_21507ABF4, v6, v10);
}

uint64_t sub_21507671C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21507689C;
  }

  else
  {

    v2 = sub_215076838;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215076838()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21507689C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_215076908(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v8 = sub_2150A4A90();
  v9 = [objc_opt_self() noteWithIdentifier:v8 context:a3];

  if (v9)
  {
    a4(v9);
  }

  else
  {
    type metadata accessor for ICError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 40) = v11;
    sub_2150A5B20();

    MEMORY[0x2160617E0](a1, a2);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x80000002150E8520;
    sub_214FA4BBC(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_21507B118(&qword_27CA419D8, type metadata accessor for ICError, &unk_2150C1EA0);
    sub_2150A35B0();
    swift_willThrow();
  }
}

uint64_t sub_215076AF0()
{
  v1 = *v0;
  v2 = 0x444965746F6ELL;
  v3 = 0x496163696C706572;
  v4 = 0x6C74695465746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7274744165746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49746E756F636361;
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

uint64_t sub_215076BA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21507AA34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_215076BC8(uint64_t a1)
{
  v2 = sub_21507AC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_215076C04(uint64_t a1)
{
  v2 = sub_21507AC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditNoteActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C78, &qword_2150CDD58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21507AC18();
  sub_2150A65B0();
  v17 = 0;
  sub_2150A6060();
  if (!v2)
  {
    v16 = 1;
    sub_2150A6060();
    v11 = type metadata accessor for EditNoteActivity(0);
    v15 = 2;
    sub_2150A3A00();
    sub_21507B118(&qword_280C241B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2150A60A0();
    v14 = 3;
    sub_2150A6030();
    v13 = *(v3 + *(v11 + 32));
    v12[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C80, &qword_2150CDD60);
    sub_21507ACC0(&qword_280C23158, sub_21507AC6C, MEMORY[0x277D83B50]);
    sub_2150A60A0();
  }

  return (*(v6 + 8))(v9, v5);
}

void EditNoteActivity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_2150A3A00();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C88, &qword_2150CDD68);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for EditNoteActivity(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21507AC18();
  v29 = v10;
  v15 = v30;
  sub_2150A6590();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v16 = v27;
    v36 = 0;
    *v14 = sub_2150A5F80();
    v14[1] = v17;
    v30 = v17;
    v35 = 1;
    v14[2] = sub_2150A5F80();
    v14[3] = v18;
    v34 = 2;
    sub_21507B118(&qword_27CA43008, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v23[1] = 0;
    v24 = v14;
    sub_2150A5FC0();
    (*(v26 + 32))(v24 + v11[6], v6, v3);
    v33 = 3;
    v19 = sub_2150A5F30();
    v20 = v24;
    v21 = (v24 + v11[7]);
    *v21 = v19;
    v21[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44C80, &qword_2150CDD60);
    v32 = 4;
    sub_21507ACC0(&qword_27CA44C90, sub_21507AD38, MEMORY[0x277D83B70]);
    sub_2150A5FC0();
    (*(v16 + 8))(v29, v28);
    *(v20 + v11[8]) = v31;
    sub_214FD1A98(v20, v25);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_21507AD8C(v20);
  }
}

uint64_t EditNoteActivity.init(note:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_2150A4AD0();
  v13 = v12;

  v14 = [a1 account];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 identifier];
  if (!v16)
  {

LABEL_16:
    v32 = type metadata accessor for EditNoteActivity(0);
    v33 = *(*(v32 - 8) + 56);

    return v33(a2, 1, 1, v32);
  }

  v17 = v16;
  v63 = sub_2150A4AD0();
  v19 = v18;

  v20 = [a1 title];
  if (!v20)
  {

LABEL_15:

    goto LABEL_16;
  }

  v58 = v13;
  v59 = v5;
  v60 = v4;
  v21 = v20;
  v22 = sub_2150A4AD0();
  v55 = v23;
  v56 = v22;

  v24 = MEMORY[0x277D84FA0];
  v65 = MEMORY[0x277D84FA0];
  v25 = a1;
  v26 = [v25 needsInitialFetchFromCloud];
  v61 = v25;
  v62 = v11;
  if (v26)
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v27 = sub_2150A64E0();
    v28 = -1 << *(v24 + 32);
    v29 = v27 & ~v28;
    if ((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29))
    {
      v30 = ~v28;
      while (*(*(v24 + 48) + v29) <= 2u)
      {
        v31 = sub_2150A6270();

        if (v31)
        {
          goto LABEL_21;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v24 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v29) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v24 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v24;
      sub_215078CC0(3u, v29, isUniquelyReferenced_nonNull_native);
      v24 = v64[0];
      v65 = v64[0];
    }

LABEL_21:
    v25 = v61;
    v11 = v62;
  }

  if ([v25 isPasswordProtected])
  {
    sub_214FC0588(v64, 0);
    v24 = v65;
  }

  v36 = [v25 isUnsupported];
  v57 = v19;
  if (v36)
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v37 = sub_2150A64E0();
    v38 = -1 << *(v24 + 32);
    v39 = v37 & ~v38;
    if ((*(v24 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
    {
      v40 = ~v38;
      while (*(*(v24 + 48) + v39) <= 1u || *(*(v24 + 48) + v39) == 3)
      {
        v41 = sub_2150A6270();

        if (v41)
        {
          goto LABEL_32;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v24 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v24;
      sub_215078CC0(2u, v39, v42);
      v24 = v64[0];
      v65 = v64[0];
    }

LABEL_32:
    v25 = v61;
    v11 = v62;
    v19 = v57;
  }

  if ([v15 isLocalAccount])
  {
    sub_2150A64B0();
    sub_2150A4BB0();
    v43 = sub_2150A64E0();
    v44 = -1 << *(v24 + 32);
    v45 = v43 & ~v44;
    if ((*(v24 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
    {
      v46 = ~v44;
      while (*(*(v24 + 48) + v45) > 1u || !*(*(v24 + 48) + v45))
      {
        v47 = sub_2150A6270();

        if (v47)
        {
          goto LABEL_41;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v24 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v24;
      sub_215078CC0(1u, v45, v48);
      v24 = v64[0];
      v65 = v64[0];
    }

LABEL_41:
    v25 = v61;
    v11 = v62;
    v19 = v57;
  }

  v49 = [v25 currentReplicaID];

  sub_2150A39C0();
  v50 = type metadata accessor for EditNoteActivity(0);
  v51 = (a2 + v50[7]);
  v52 = v58;
  v53 = v59;
  *a2 = v11;
  a2[1] = v52;
  v54 = v55;
  *v51 = v56;
  v51[1] = v54;
  a2[2] = v63;
  a2[3] = v19;
  (*(v53 + 32))(a2 + v50[6], v8, v60);
  *(a2 + v50[8]) = v24;
  return (*(*(v50 - 1) + 56))(a2, 0, 1, v50);
}

uint64_t EditNoteActivity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_215077BD0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static EditNoteActivity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EditNoteActivity(0);

  return sub_2150A39B0();
}

uint64_t sub_215077C78(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  return sub_2150A39B0();
}

uint64_t EditNoteActivity.hash(into:)(uint64_t a1)
{
  sub_2150A4BB0();
  sub_2150A4BB0();
  type metadata accessor for EditNoteActivity(0);
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2150A49B0();
}

uint64_t EditNoteActivity.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  type metadata accessor for EditNoteActivity(0);
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_215077E70()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_215077F24(uint64_t a1)
{
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2150A49B0();
}

uint64_t sub_215077FBC()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_2150A3A00();
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2150A49B0();
  return sub_2150A64E0();
}

unint64_t EditNoteActivity.description.getter()
{
  sub_2150A5B20();

  MEMORY[0x2160617E0](*v0, v0[1]);
  MEMORY[0x2160617E0](93, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2150780EC()
{
  sub_2150A5B20();

  MEMORY[0x2160617E0](*v0, v0[1]);
  MEMORY[0x2160617E0](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t EditNoteActivity.metadata.getter()
{
  v0 = sub_2150A3C70();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_2150A3C90();
  sub_2150A3C60();
  return sub_2150A3C80();
}

uint64_t sub_215078224()
{
  sub_2150A3C70();
  swift_task_alloc();
  sub_2150A3C90();
  sub_2150A3C60();
  sub_2150A3C80();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t EditNoteActivity.NoteAttributes.description.getter()
{
  v1 = 0x6C61636F6CLL;
  v2 = 0x726F707075736E75;
  if (*v0 != 2)
  {
    v2 = 0x6C6F686563616C70;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_215078360()
{
  v1 = 0x6C61636F6CLL;
  v2 = 0x726F707075736E75;
  if (*v0 != 2)
  {
    v2 = 0x6C6F686563616C70;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_2150783EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA43208, &unk_2150C6340);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA43208, &unk_2150C6340);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_280C24528, 0x277CCABD0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

void sub_21507857C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA43200, &qword_2150C6338);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA43200, &qword_2150C6338);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_280C24888, 0x277CBC5D0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

uint64_t sub_21507870C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3A54(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_215078FB4();
      goto LABEL_12;
    }

    sub_215079708(v11 + 1);
  }

  v13 = *v3;
  sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_2150A49A0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21507B118(&qword_280C241A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_2150A4A80();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

uint64_t sub_2150789B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_214FC3D80(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2150791EC();
      goto LABEL_16;
    }

    sub_215079A24(v8 + 1);
  }

  v10 = *v4;
  sub_2150A64B0();
  sub_2150A4BB0();
  result = sub_2150A64E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2150A6270();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

void sub_215078B30(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214FC3FE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_215079488(&qword_27CA42458, &qword_2150C3A40);
      goto LABEL_12;
    }

    sub_215079C5C(v6 + 1, &qword_27CA42458, &qword_2150C3A40);
  }

  v8 = *v3;
  v9 = sub_2150A5770();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_2150A5780();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2150A63D0();
  __break(1u);
}

void sub_215078CC0(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_214FC4214(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_2150795C8();
      goto LABEL_50;
    }

    sub_215079E68(v5 + 1);
  }

  v7 = *v3;
  sub_2150A64B0();
  sub_2150A4BB0();

  v8 = sub_2150A64E0();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    v10 = 0x6C6F686563616C70;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      v12 = v11 == 2 ? 0x726F707075736E75 : v10;
      v13 = v11 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v14 = *(*(v7 + 48) + a2) ? 0x6C61636F6CLL : 0xD000000000000011;
      v15 = *(*(v7 + 48) + a2) ? 0xE500000000000000 : 0x80000002150E1960;
      v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
      v17 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
      v18 = a1 == 2 ? 0x726F707075736E75 : v10;
      v19 = a1 == 2 ? 0xEB00000000646574 : 0xEB00000000726564;
      v20 = a1 ? 0x6C61636F6CLL : 0xD000000000000011;
      v21 = a1 ? 0xE500000000000000 : 0x80000002150E1960;
      v22 = a1 <= 1u ? v20 : v18;
      v23 = a1 <= 1u ? v21 : v19;
      v24 = v10;
      if (v16 == v22 && v17 == v23)
      {
        goto LABEL_53;
      }

      v25 = sub_2150A6270();

      if (v25)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v31;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = a1;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  sub_2150A63D0();
  __break(1u);
}

void *sub_215078FB4()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238, &qword_2150C63D0);
  v7 = *v0;
  v8 = sub_2150A5A90();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_2150791EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468, &unk_2150C63F0);
  v2 = *v0;
  v3 = sub_2150A5A90();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

  return result;
}

void *sub_215079348()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43250, &qword_2150CE1C0);
  v2 = *v0;
  v3 = sub_2150A5A90();
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

id sub_215079488(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2150A5A90();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2150795C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420, &qword_2150C3A28);
  v2 = *v0;
  v3 = sub_2150A5A90();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_215079708(uint64_t a1)
{
  v2 = v1;
  v34 = sub_2150A3A00();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43238, &qword_2150C63D0);
  v8 = sub_2150A5AA0();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_21507B118(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2150A49A0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_215079A24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42468, &unk_2150C63F0);
  result = sub_2150A5AA0();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2150A64B0();

      sub_2150A4BB0();
      result = sub_2150A64E0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_215079C5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2150A5AA0();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2150A5770();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_215079E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42420, &qword_2150C3A28);
  result = sub_2150A5AA0();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2150A64B0();
      sub_2150A4BB0();

      result = sub_2150A64E0();
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
      *(*(v5 + 48) + v12) = v16;
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

void *sub_21507A110(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_21507A364(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_21507A1A0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_21507A364((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_21507A110(v13, v6, a2, a1);

    MEMORY[0x216064AF0](v13, -1, -1);
  }

  return v11;
}

void sub_21507A364(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_50;
  }

  v56 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v60 = v9 & *(a4 + 56);
  v55 = (v8 + 63) >> 6;
  v64 = a3 + 56;
  do
  {
LABEL_6:
    if (v60)
    {
      v10 = __clz(__rbit64(v60));
      v11 = (v60 - 1) & v60;
    }

    else
    {
      v12 = v7;
      do
      {
        v7 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v7 >= v55)
        {
LABEL_98:

          sub_214FC48DC(a1, a2, v6, v5);
          return;
        }

        v13 = *(v56 + 8 * v7);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
    }

    v14 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    sub_2150A64B0();
    v60 = v11;
    sub_2150A4BB0();

    v15 = sub_2150A64E0();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
  }

  while (((1 << v17) & *(v64 + 8 * (v17 >> 6))) == 0);
  v62 = v6;
  v20 = ~v16;
  while (1)
  {
    v21 = *(*(v5 + 48) + v17);
    v22 = 0x726F707075736E75;
    if (v21 != 2)
    {
      v22 = 0x6C6F686563616C70;
    }

    v23 = 0xEB00000000726564;
    if (v21 == 2)
    {
      v23 = 0xEB00000000646574;
    }

    v24 = 0xD000000000000011;
    if (*(*(v5 + 48) + v17))
    {
      v24 = 0x6C61636F6CLL;
    }

    v25 = 0x80000002150E1960;
    if (*(*(v5 + 48) + v17))
    {
      v25 = 0xE500000000000000;
    }

    if (*(*(v5 + 48) + v17) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (*(*(v5 + 48) + v17) <= 1u)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v29 = 0x726F707075736E75;
      }

      else
      {
        v29 = 0x6C6F686563616C70;
      }

      if (v14 == 2)
      {
        v28 = 0xEB00000000646574;
      }

      else
      {
        v28 = 0xEB00000000726564;
      }

      if (v26 != v29)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (!v14)
    {
      break;
    }

    v28 = 0xE500000000000000;
    if (v26 == 0x6C61636F6CLL)
    {
      goto LABEL_42;
    }

LABEL_43:
    v30 = sub_2150A6270();

    if (v30)
    {
      goto LABEL_47;
    }

    v17 = (v17 + 1) & v20;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    v5 = a3;
    if ((*(v64 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      v6 = v62;
      v4 = a4;
      goto LABEL_6;
    }
  }

  v28 = 0x80000002150E1960;
  if (v26 != 0xD000000000000011)
  {
    goto LABEL_43;
  }

LABEL_42:
  if (v27 != v28)
  {
    goto LABEL_43;
  }

LABEL_47:
  a1[v18] |= v19;
  v6 = v62 + 1;
  v4 = a4;
  v5 = a3;
  if (!__OFADD__(v62, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_50:
  v31 = v5 + 56;
  v32 = 1 << *(v5 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v65 = v33 & *(v5 + 56);
  v57 = (v32 + 63) >> 6;
  v34 = v4 + 56;
  while (2)
  {
    if (v65)
    {
      v35 = __clz(__rbit64(v65));
      v36 = (v65 - 1) & v65;
LABEL_61:
      v39 = v35 | (v7 << 6);
      v40 = *(*(v5 + 48) + v39);
      sub_2150A64B0();
      v65 = v36;
      v61 = v39;
      sub_2150A4BB0();

      v41 = sub_2150A64E0();
      v42 = -1 << *(v4 + 32);
      v43 = v41 & ~v42;
      if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        continue;
      }

      v63 = v6;
      v44 = ~v42;
LABEL_63:
      v45 = *(*(v4 + 48) + v43);
      v46 = 0x726F707075736E75;
      if (v45 != 2)
      {
        v46 = 0x6C6F686563616C70;
      }

      v47 = 0xEB00000000726564;
      if (v45 == 2)
      {
        v47 = 0xEB00000000646574;
      }

      v48 = 0xD000000000000011;
      if (*(*(v4 + 48) + v43))
      {
        v48 = 0x6C61636F6CLL;
      }

      v49 = 0x80000002150E1960;
      if (*(*(v4 + 48) + v43))
      {
        v49 = 0xE500000000000000;
      }

      if (*(*(v4 + 48) + v43) <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      if (*(*(v4 + 48) + v43) <= 1u)
      {
        v51 = v49;
      }

      else
      {
        v51 = v47;
      }

      if (v40 > 1)
      {
        if (v40 == 2)
        {
          v53 = 0x726F707075736E75;
        }

        else
        {
          v53 = 0x6C6F686563616C70;
        }

        if (v40 == 2)
        {
          v52 = 0xEB00000000646574;
        }

        else
        {
          v52 = 0xEB00000000726564;
        }

        if (v50 != v53)
        {
          goto LABEL_91;
        }
      }

      else if (v40)
      {
        v52 = 0xE500000000000000;
        if (v50 != 0x6C61636F6CLL)
        {
LABEL_91:
          v54 = sub_2150A6270();

          if (v54)
          {
            goto LABEL_95;
          }

          v43 = (v43 + 1) & v44;
          v4 = a4;
          if (((*(v34 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            v5 = a3;
            v6 = v63;
            continue;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v52 = 0x80000002150E1960;
        if (v50 != 0xD000000000000011)
        {
          goto LABEL_91;
        }
      }

      if (v51 == v52)
      {

LABEL_95:
        *(a1 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v6 = v63 + 1;
        v4 = a4;
        v5 = a3;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_98;
        }

        continue;
      }

      goto LABEL_91;
    }

    break;
  }

  v37 = v7;
  while (1)
  {
    v7 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v7 >= v57)
    {
      goto LABEL_98;
    }

    v38 = *(v31 + 8 * v7);
    ++v37;
    if (v38)
    {
      v35 = __clz(__rbit64(v38));
      v36 = (v38 - 1) & v38;
      goto LABEL_61;
    }
  }

LABEL_100:
  __break(1u);
}

uint64_t sub_21507AA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496163696C706572 && a2 == 0xE900000000000044 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C74695465746F6ELL && a2 == 0xE900000000000065 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274744165746F6ELL && a2 == 0xEE00736574756269)
  {

    return 4;
  }

  else
  {
    v6 = sub_2150A6270();

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

unint64_t sub_21507AC18()
{
  result = qword_280C23E60;
  if (!qword_280C23E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E60);
  }

  return result;
}

unint64_t sub_21507AC6C()
{
  result = qword_280C23E78[0];
  if (!qword_280C23E78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23E78);
  }

  return result;
}

uint64_t sub_21507ACC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44C80, &qword_2150CDD60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21507AD38()
{
  result = qword_27CA44C98;
  if (!qword_27CA44C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44C98);
  }

  return result;
}

uint64_t sub_21507AD8C(uint64_t a1)
{
  v2 = type metadata accessor for EditNoteActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21507AFC0()
{
  result = qword_27CA44CA8;
  if (!qword_27CA44CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44CA8);
  }

  return result;
}

unint64_t sub_21507B018()
{
  result = qword_280C23E50;
  if (!qword_280C23E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E50);
  }

  return result;
}

unint64_t sub_21507B070()
{
  result = qword_280C23E58;
  if (!qword_280C23E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E58);
  }

  return result;
}

unint64_t sub_21507B0C4()
{
  result = qword_27CA44CB0;
  if (!qword_27CA44CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44CB0);
  }

  return result;
}

uint64_t sub_21507B118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ICCloudConfiguration.overridableValue<A>(for:in:defaults:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_2150A5900();
  if (v8)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_2150A4A90();

    v11 = sub_2150A4910();
    v12 = [ObjCClassFromMetadata overridableValueForKey:v10 inConfigurationDictionary:v11 userDefaults:a3];

    if (v12)
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
      sub_214D72488(v26, v27);
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
    v24 = *(v7 + *MEMORY[0x277D84DE8] + 8);
    v25 = swift_dynamicCast();
    return (*(*(v24 - 8) + 56))(a4, v25 ^ 1u, 1);
  }

  else
  {
    v13 = qword_280C24598;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_2150A3F30();
    __swift_project_value_buffer(v14, qword_280C245A0);
    v15 = sub_2150A5570();
    v16 = sub_2150A3F10();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v26[0] = v18;
      *v17 = 136315650;
      v19 = sub_2150A5B70();
      v21 = sub_214F7723C(v19, v20, v26);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 35;
      *(v17 + 22) = 2080;
      *&v27[0] = 0;
      *(&v27[0] + 1) = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000025, 0x80000002150E8580);
      v28 = a1;
      sub_2150A65C0();
      sub_2150A6250();
      v22 = sub_214F7723C(*&v27[0], *(&v27[0] + 1), v26);

      *(v17 + 24) = v22;
      _os_log_impl(&dword_214D51000, v16, v15, "Failed assertion at %s:%lu: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v18, -1, -1);
      MEMORY[0x216064AF0](v17, -1, -1);
    }

    return (*(*(*(v7 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a4, 1, 1);
  }
}

uint64_t static ICCloudConfiguration.loadSharedConfiguration(priority:)(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_2150A4420();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v4 = sub_2150A4490();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  v2[44] = swift_task_alloc();
  v5 = sub_2150A5120();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21507B6F4, 0, 0);
}

uint64_t sub_21507B6F4()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];
  sub_214F54918(v0[36], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_215017A58(v0[44]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_21507BB90;
    v5 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CB8, &qword_2150CE240);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21507BD10;
    v0[21] = &block_descriptor_23;
    v0[22] = v5;
    [ObjCClassFromMetadata loadSharedConfigurationWithCompletionHandler_];
    v6 = v0 + 2;
  }

  else
  {
    v8 = v0[47];
    v7 = v0[48];
    v10 = v0[45];
    v9 = v0[46];
    v11 = v0[43];
    v12 = v0[42];
    v13 = v0[39];
    v14 = v0[40];
    v18 = v0[41];
    v19 = v0[38];
    (*(v9 + 32))(v7, v0[44], v10);
    v20 = swift_getObjCClassFromMetadata();
    (*(v9 + 16))(v8, v7, v10);
    DispatchQoS.init(_:)(v8);
    sub_2150A4480();
    (*(v12 + 8))(v11, v18);
    v15 = sub_2150A4410();
    (*(v13 + 8))(v14, v19);
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_21507B9F8;
    v16 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CB8, &qword_2150CE240);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21507BD10;
    v0[29] = &block_descriptor_3;
    v0[30] = v16;
    [v20 loadSharedConfigurationWithQoSClass:v15 completionHandler:?];
    v6 = v0 + 10;
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_21507B9F8()
{

  return MEMORY[0x2822009F8](sub_21507BAD8, 0, 0);
}

uint64_t sub_21507BAD8()
{
  (*(v0[46] + 8))(v0[48], v0[45]);
  v1 = v0[35];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_21507BB90()
{

  return MEMORY[0x2822009F8](sub_21507BC70, 0, 0);
}

uint64_t sub_21507BC70()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21507BD10(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t ICCloudConfiguration.overridableValue<A>(for:in:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_2150A5900();
  if (v7)
  {
    v8 = sub_2150A4A90();

    v9 = sub_2150A4910();
    v10 = [v3 overridableValueForKey:v8 inConfigurationDictionary:v9];

    if (v10)
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
      sub_214D72488(v24, v25);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
    v22 = *(v6 + *MEMORY[0x277D84DE8] + 8);
    v23 = swift_dynamicCast();
    return (*(*(v22 - 8) + 56))(a3, v23 ^ 1u, 1);
  }

  else
  {
    v11 = qword_280C24598;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_2150A3F30();
    __swift_project_value_buffer(v12, qword_280C245A0);
    v13 = sub_2150A5570();
    v14 = sub_2150A3F10();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v24[0] = v16;
      *v15 = 136315650;
      v17 = sub_2150A5B70();
      v19 = sub_214F7723C(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 47;
      *(v15 + 22) = 2080;
      *&v25[0] = 0;
      *(&v25[0] + 1) = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000025, 0x80000002150E8580);
      v26 = a1;
      sub_2150A65C0();
      sub_2150A6250();
      v20 = sub_214F7723C(*&v25[0], *(&v25[0] + 1), v24);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_214D51000, v14, v13, "Failed assertion at %s:%lu: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v16, -1, -1);
      MEMORY[0x216064AF0](v15, -1, -1);
    }

    return (*(*(*(v6 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a3, 1, 1);
  }
}

uint64_t related decl e for ICPaperDocumentErrorCode.init(_:attachment:)(uint64_t a1, void *a2)
{
  v3 = sub_21507C17C(a1, a2);

  return v3;
}

uint64_t sub_21507C17C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v5;
  ObjectType = swift_getObjectType();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44CC0, &unk_2150CE250);
  *(inited + 48) = ObjectType;
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F88894(inited + 32);
  v7 = [a2 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2150A4AD0();
    v11 = v10;

    v12 = sub_2150A4AD0();
    v14 = v13;
    v19 = MEMORY[0x277D837D0];
    *&v18 = v9;
    *(&v18 + 1) = v11;
    sub_214D72488(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_214FEC880(v17, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ICPaperDocumentError(0);
  *&v17[0] = a1;
  sub_21507C30C();
  sub_2150A35B0();
  return v18;
}

unint64_t sub_21507C30C()
{
  result = qword_27CA41B88;
  if (!qword_27CA41B88)
  {
    type metadata accessor for ICPaperDocumentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41B88);
  }

  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t NLSearchParseCandidateCopyAttributedInput_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC50]();
}

uint64_t NLSearchParseCandidateCopyDescription_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC58]();
}

uint64_t NLSearchParseCandidateCopyRankTerms_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC60]();
}

uint64_t NLSearchParseGetConfidence_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC68]();
}

uint64_t NLSearchParserCopyParseWithOptions_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC70]();
}

uint64_t NLSearchParserCreate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC78]();
}

uint64_t NLSearchParserSetString_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    dlopenHelper_NLP(a1);
  }

  return MEMORY[0x28218AC90]();
}

uint64_t ct_green_tea_logger_create_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libCTGreenTeaLogger_dylib))
  {
    dlopenHelper_libCTGreenTeaLogger_dylib(a1);
  }

  return MEMORY[0x2821F0CE0]();
}

uint64_t getCTGreenTeaOsLogHandle_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libCTGreenTeaLogger_dylib))
  {
    dlopenHelper_libCTGreenTeaLogger_dylib(a1);
  }

  return MEMORY[0x2821F0D10]();
}

double gotLoadHelper_x8__NLLanguageEnglish(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___AppleSpell(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MKMapItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MapKit))
  {
    return dlopenHelper_MapKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MarkupViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLEmbedding(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NLTokenizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NaturalLanguage))
  {
    return dlopenHelper_NaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNRecognizeTextRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VNSession(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Vision))
  {
    return dlopenHelper_Vision(result);
  }

  return result;
}

double gotLoadHelper_x8__PRAppIdentifierKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__PRGuessKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x9__PRScoreKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ProofReader))
  {
    return dlopenHelper_ProofReader(result);
  }

  return result;
}

double gotLoadHelper_x8__kNLSearchParserContextIdentifierKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NLP))
  {
    return dlopenHelper_NLP(result);
  }

  return result;
}

double dlopenHelper_LinkPresentation(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, &dlopenHelperFlag_LinkPresentation);
  return a1;
}

double dlopenHelper_MapKit(double a1)
{
  dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 0);
  atomic_store(1u, &dlopenHelperFlag_MapKit);
  return a1;
}

double dlopenHelper_NaturalLanguage(double a1)
{
  dlopen("/System/Library/Frameworks/NaturalLanguage.framework/NaturalLanguage", 0);
  atomic_store(1u, &dlopenHelperFlag_NaturalLanguage);
  return a1;
}

double dlopenHelper_Vision(double a1)
{
  dlopen("/System/Library/Frameworks/Vision.framework/Vision", 0);
  atomic_store(1u, &dlopenHelperFlag_Vision);
  return a1;
}

double dlopenHelper_MarkupUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MarkupUI.framework/MarkupUI", 0);
  atomic_store(1u, &dlopenHelperFlag_MarkupUI);
  return a1;
}

double dlopenHelper_NLP(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NLP.framework/NLP", 0);
  atomic_store(1u, &dlopenHelperFlag_NLP);
  return a1;
}

double dlopenHelper_ProofReader(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ProofReader.framework/ProofReader", 0);
  atomic_store(1u, &dlopenHelperFlag_ProofReader);
  return a1;
}

double dlopenHelper_libCTGreenTeaLogger_dylib(double a1)
{
  dlopen("/usr/lib/libCTGreenTeaLogger.dylib", 0);
  atomic_store(1u, &dlopenHelperFlag_libCTGreenTeaLogger_dylib);
  return a1;
}