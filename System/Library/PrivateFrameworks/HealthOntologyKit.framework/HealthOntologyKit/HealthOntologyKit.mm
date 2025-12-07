uint64_t sub_2519C04F8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2519C05EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2519C06C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2519C06F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C0738()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C0778()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519C07B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2519C07E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2519C0824()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_2519C08A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2519C0914()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2519C094C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_2519E5FC0(v3, v2);
}

__n128 sub_2519C0970(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2519C097C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v1 = sub_2519F0B78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2519C14E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2519C1554()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2519C1610()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2519C164C()
{
  swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v1 = sub_2519F0B78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2519C1710(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SubjectDescriptor.debugDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v4 = 64;
    v2 = MEMORY[0x253089C80](v1, MEMORY[0x277D83B88]);
    MEMORY[0x253089BD0](v2);
  }

  else
  {
    v4 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  return v4;
}

uint64_t sub_2519C17C8(uint64_t a1)
{
  v2 = sub_2519C5AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C1804(uint64_t a1)
{
  v2 = sub_2519C5AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C1840()
{
  if (*v0)
  {
    return 0x73644965646F6ELL;
  }

  else
  {
    return 0x65727574706163;
  }
}

uint64_t sub_2519C1874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65727574706163 && a2 == 0xE700000000000000;
  if (v6 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73644965646F6ELL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519C1950(uint64_t a1)
{
  v2 = sub_2519C5B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C198C(uint64_t a1)
{
  v2 = sub_2519C5B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C19C8(uint64_t a1)
{
  v2 = sub_2519C5A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C1A04(uint64_t a1)
{
  v2 = sub_2519C5A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubjectDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CD90, sub_2519C5A58, &type metadata for SubjectDescriptor.NodeIdsCodingKeys, MEMORY[0x277D84538]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v23 = &v21 - v6;
  sub_2519C6A88(0, &qword_27F46CDA0, sub_2519C5AAC, &type metadata for SubjectDescriptor.CaptureCodingKeys, v3);
  v8 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  sub_2519C6A88(0, &qword_27F46CDB0, sub_2519C5B00, &type metadata for SubjectDescriptor.CodingKeys, v3);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - v14;
  v16 = v1[1];
  v26 = *v1;
  v21 = v16;
  LOBYTE(v3) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C5B00();
  sub_2519F1158();
  if (v3)
  {
    v31 = 1;
    sub_2519C5A58();
    v17 = v23;
    v18 = v28;
    sub_2519F0EA8();
    v29 = v26;
    sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_2519C5B98();
    v19 = v25;
    sub_2519F0EF8();
    (*(v24 + 8))(v17, v19);
  }

  else
  {
    v30 = 0;
    sub_2519C5AAC();
    v18 = v28;
    sub_2519F0EA8();
    sub_2519F0ED8();
    (*(v22 + 8))(v11, v8);
  }

  return (*(v27 + 8))(v15, v18);
}

uint64_t SubjectDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x25308A270](1);
    result = MEMORY[0x25308A270](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        result = MEMORY[0x25308A270](v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);

    return sub_2519F09F8();
  }

  return result;
}

uint64_t SubjectDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_2519F1098();
  if (v2)
  {
    MEMORY[0x25308A270](1);
    MEMORY[0x25308A270](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        MEMORY[0x25308A270](v5);
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t SubjectDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CDD0, sub_2519C5A58, &type metadata for SubjectDescriptor.NodeIdsCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v41 = &v36 - v7;
  sub_2519C6A88(0, &qword_27F46CDD8, sub_2519C5AAC, &type metadata for SubjectDescriptor.CaptureCodingKeys, v3);
  v9 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - v11;
  sub_2519C6A88(0, &qword_27F46CDE0, sub_2519C5B00, &type metadata for SubjectDescriptor.CodingKeys, v3);
  v14 = v13;
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C5B00();
  v18 = v44;
  sub_2519F1148();
  if (v18)
  {
    goto LABEL_7;
  }

  v19 = v41;
  v20 = v42;
  v44 = a1;
  v21 = v17;
  v22 = sub_2519F0E78();
  if (*(v22 + 16) != 1)
  {
    v26 = sub_2519F0CE8();
    swift_allocError();
    v27 = v14;
    v29 = v28;
    sub_2519C5C78(0);
    *v29 = &type metadata for SubjectDescriptor;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v43 + 8))(v21, v27);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_7:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v23 = *(v22 + 32);
  if (v23)
  {
    LODWORD(v38) = *(v22 + 32);
    v47 = 1;
    sub_2519C5A58();
    sub_2519F0E08();
    v37 = v21;
    sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    sub_2519C5D34();
    v24 = v39;
    sub_2519F0E68();
    v25 = v43;
    (*(v40 + 8))(v19, v24);
    (*(v25 + 8))(v37, v14);
    swift_unknownObjectRelease();
    v33 = 0;
    v34 = v45;
    v23 = v38;
  }

  else
  {
    v46 = 0;
    sub_2519C5AAC();
    sub_2519F0E08();
    v37 = v21;
    v32 = v9;
    v34 = sub_2519F0E48();
    v33 = v35;
    (*(v38 + 8))(v12, v32);
    (*(v43 + 8))(v37, v14);
    swift_unknownObjectRelease();
  }

  *v20 = v34;
  *(v20 + 8) = v33;
  *(v20 + 16) = v23;
  v30 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_2519C2510(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_2519F1098();
  if (v3)
  {
    MEMORY[0x25308A270](1);
    MEMORY[0x25308A270](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A270](v6);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    MEMORY[0x25308A270](0);
    sub_2519F09F8();
  }

  return sub_2519F10D8();
}

uint64_t sub_2519C25B4()
{
  v1 = *v0;
  if (v0[2])
  {
    v4 = 64;
    v2 = MEMORY[0x253089C80](v1, MEMORY[0x277D83B88]);
    MEMORY[0x253089BD0](v2);
  }

  else
  {
    v4 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  return v4;
}

uint64_t PredicateDescriptor.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  if (*(v0 + 24) <= 1u)
  {
    if (!*(v0 + 24))
    {
      v8 = 63;
      MEMORY[0x253089BD0](v1, v0[1]);
      return v8;
    }

    v3 = 62;
LABEL_7:
    v8 = v3;
    if (v2)
    {
      v4 = v0[1];
    }

    else
    {
      v4 = 0;
    }

    if (v2)
    {
      v5 = v0[2];
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    MEMORY[0x253089BD0](v4, v5);

    v6 = MEMORY[0x253089C80](v1, MEMORY[0x277D84A28]);
    MEMORY[0x253089BD0](v6);

    return v8;
  }

  if (*(v0 + 24) == 2)
  {
    v3 = 58;
    goto LABEL_7;
  }

  return 28265;
}

uint64_t sub_2519C2710(uint64_t a1)
{
  v2 = sub_2519C61B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C274C(uint64_t a1)
{
  v2 = sub_2519C61B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C2788(uint64_t a1)
{
  v2 = sub_2519C62AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C27C4(uint64_t a1)
{
  v2 = sub_2519C62AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2519C2800()
{
  v1 = 0x65727574706163;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 0x6E497365646F6ELL;
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

uint64_t sub_2519C288C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2519C8310(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2519C28C0(uint64_t a1)
{
  v2 = sub_2519C6300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C28FC(uint64_t a1)
{
  v2 = sub_2519C6300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C2944@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2519C2974(uint64_t a1)
{
  v2 = sub_2519C6258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C29B0(uint64_t a1)
{
  v2 = sub_2519C6258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C29EC()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t sub_2519C2A34(uint64_t a1)
{
  v2 = *v1;
  sub_2519F1098();
  MEMORY[0x25308A270](v2);
  return sub_2519F10D8();
}

uint64_t sub_2519C2A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519C2B44(uint64_t a1)
{
  v2 = sub_2519C6204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C2B80(uint64_t a1)
{
  v2 = sub_2519C6204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PredicateDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CE00, sub_2519C61B0, &type metadata for PredicateDescriptor.AttributeTypesCodingKeys, MEMORY[0x277D84538]);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v43 = &v36 - v6;
  sub_2519C6A88(0, &qword_27F46CE10, sub_2519C6204, &type metadata for PredicateDescriptor.RelationshipTypesCodingKeys, v3);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v40 = &v36 - v9;
  sub_2519C6A88(0, &qword_27F46CE20, sub_2519C6258, &type metadata for PredicateDescriptor.NodesInCodingKeys, v3);
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - v12;
  sub_2519C6A88(0, &qword_27F46CE30, sub_2519C62AC, &type metadata for PredicateDescriptor.CaptureCodingKeys, v3);
  v15 = v14;
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v36 - v17;
  sub_2519C6A88(0, &qword_27F46CE40, sub_2519C6300, &type metadata for PredicateDescriptor.CodingKeys, v3);
  v20 = *(v19 - 8);
  v48 = v19;
  v49 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v22 = *v1;
  v46 = v1[1];
  v47 = v22;
  v36 = v1[2];
  v23 = *(v1 + 24);
  v24 = a1[3];
  v25 = a1;
  v27 = &v36 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_2519C6300();
  sub_2519F1158();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      LOBYTE(v52) = 1;
      sub_2519C6258();
      v34 = v48;
      sub_2519F0EA8();
      (*(v38 + 8))(v13, v39);
      return (*(v49 + 8))(v27, v34);
    }

    LOBYTE(v52) = 3;
    sub_2519C61B0();
    v29 = v43;
    v28 = v48;
    sub_2519F0EA8();
    v52 = v47;
    v51 = 0;
    sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_2519C6354();
    v30 = v45;
    v31 = v50;
    sub_2519F0EF8();
    if (!v31)
    {
      LOBYTE(v52) = 1;
      sub_2519F0EB8();
    }

    v32 = v44;
    goto LABEL_12;
  }

  if (v23)
  {
    LOBYTE(v52) = 2;
    sub_2519C6204();
    v29 = v40;
    v28 = v48;
    sub_2519F0EA8();
    v52 = v47;
    v51 = 0;
    sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_2519C6354();
    v30 = v42;
    v33 = v50;
    sub_2519F0EF8();
    if (!v33)
    {
      LOBYTE(v52) = 1;
      sub_2519F0EB8();
    }

    v32 = v41;
LABEL_12:
    (*(v32 + 8))(v29, v30);
    return (*(v49 + 8))(v27, v28);
  }

  LOBYTE(v52) = 0;
  sub_2519C62AC();
  v28 = v48;
  sub_2519F0EA8();
  sub_2519F0ED8();
  (*(v37 + 8))(v18, v15);
  return (*(v49 + 8))(v27, v28);
}

uint64_t PredicateDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  if (*(v1 + 24) > 1u)
  {
    if (*(v1 + 24) != 2)
    {
      return MEMORY[0x25308A270](1);
    }

    MEMORY[0x25308A270](3);
    MEMORY[0x25308A270](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x25308A290](v6);
        --v4;
      }

      while (v4);
    }

    if (!v3)
    {
      return sub_2519F10B8();
    }

LABEL_9:
    sub_2519F10B8();
    goto LABEL_10;
  }

  if (*(v1 + 24))
  {
    MEMORY[0x25308A270](2);
    MEMORY[0x25308A270](*(v2 + 16));
    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v2 + 32);
      do
      {
        v10 = *v9++;
        MEMORY[0x25308A290](v10);
        --v8;
      }

      while (v8);
    }

    if (!v3)
    {
      return sub_2519F10B8();
    }

    goto LABEL_9;
  }

  MEMORY[0x25308A270](0);
LABEL_10:

  return sub_2519F09F8();
}

uint64_t PredicateDescriptor.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2519F1098();
  PredicateDescriptor.hash(into:)(v4);
  return sub_2519F10D8();
}

uint64_t PredicateDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CE60, sub_2519C61B0, &type metadata for PredicateDescriptor.AttributeTypesCodingKeys, MEMORY[0x277D844C8]);
  v57 = v4;
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v54 - v6;
  sub_2519C6A88(0, &qword_27F46CE68, sub_2519C6204, &type metadata for PredicateDescriptor.RelationshipTypesCodingKeys, v3);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v65 = &v54 - v9;
  sub_2519C6A88(0, &qword_27F46CE70, sub_2519C6258, &type metadata for PredicateDescriptor.NodesInCodingKeys, v3);
  v56 = v10;
  v64 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v63 = &v54 - v12;
  sub_2519C6A88(0, &qword_27F46CE78, sub_2519C62AC, &type metadata for PredicateDescriptor.CaptureCodingKeys, v3);
  v14 = v13;
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v54 - v16;
  sub_2519C6A88(0, &qword_27F46CE80, sub_2519C6300, &type metadata for PredicateDescriptor.CodingKeys, v3);
  v19 = v18;
  v66 = *(v18 - 1);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v54 - v21;
  v23 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2519C6300();
  v24 = v67;
  sub_2519F1148();
  if (!v24)
  {
    v25 = v63;
    v26 = v64;
    v54 = v14;
    v27 = v65;
    v67 = v22;
    v28 = sub_2519F0E78();
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v28 + 32);
      if (v29 == 1 && v30 != 4)
      {
        if (*(v28 + 32) > 1u)
        {
          v64 = v28;
          if (v30 == 2)
          {
            LOBYTE(v70) = 2;
            sub_2519C6204();
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
            v69 = 0;
            sub_2519C63E8();
            v39 = v59;
            sub_2519F0E68();
            v40 = v66;
            v50 = v70;
            v69 = 1;
            v51 = v27;
            v46 = sub_2519F0E28();
            v47 = v52;
            (*(v58 + 8))(v51, v39);
            (*(v40 + 8))(v67, v19);
            swift_unknownObjectRelease();
            v48 = 1;
          }

          else
          {
            LOBYTE(v70) = 3;
            sub_2519C61B0();
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
            v69 = 0;
            sub_2519C63E8();
            v41 = v57;
            v42 = v62;
            sub_2519F0E68();
            v43 = v66;
            v65 = v19;
            v50 = v70;
            v69 = 1;
            v46 = sub_2519F0E28();
            v47 = v53;
            (*(v60 + 8))(v42, v41);
            (*(v43 + 8))(v67, v65);
            swift_unknownObjectRelease();
            v48 = 2;
          }
        }

        else
        {
          v37 = v67;
          if (!*(v28 + 32))
          {
            LOBYTE(v70) = 0;
            sub_2519C62AC();
            sub_2519F0E08();
            v38 = v54;
            v44 = sub_2519F0E48();
            v46 = v45;
            (*(v55 + 8))(v17, v38);
            (*(v66 + 8))(v67, v19);
            swift_unknownObjectRelease();
            v47 = 0;
            v48 = 0;
            v49 = v61;
            v50 = v44;
LABEL_18:
            *v49 = v50;
            *(v49 + 8) = v46;
            *(v49 + 16) = v47;
            *(v49 + 24) = v48;
            return __swift_destroy_boxed_opaque_existential_1(v68);
          }

          LOBYTE(v70) = 1;
          sub_2519C6258();
          sub_2519F0E08();
          (*(v26 + 8))(v25, v56);
          (*(v66 + 8))(v37, v19);
          swift_unknownObjectRelease();
          v50 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 3;
        }

        v49 = v61;
        goto LABEL_18;
      }
    }

    v32 = sub_2519F0CE8();
    swift_allocError();
    v34 = v33;
    sub_2519C5C78(0);
    *v34 = &type metadata for PredicateDescriptor;
    v35 = v67;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v66 + 8))(v35, v19);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_2519C3D60()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2519F1098();
  PredicateDescriptor.hash(into:)(v4);
  return sub_2519F10D8();
}

uint64_t sub_2519C3DC0(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2519F1098();
  PredicateDescriptor.hash(into:)(v5);
  return sub_2519F10D8();
}

uint64_t ObjectDescriptor.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    v7 = 63;
    MEMORY[0x253089BD0](v1, v0[1]);
  }

  else
  {
    if (v2 == 2)
    {
      v7 = 64;
      v4 = MEMORY[0x277D83B88];
    }

    else
    {
      if (v2 == 3)
      {
        v3 = 38;
      }

      else
      {
        v3 = 124;
      }

      v7 = v3;
      v4 = MEMORY[0x277D837D0];
    }

    v5 = MEMORY[0x253089C80](v1, v4);
    MEMORY[0x253089BD0](v5);
  }

  return v7;
}

uint64_t sub_2519C3ED4()
{
  v1 = *v0;
  v2 = 0x7470614365646F6ELL;
  v3 = 0x73644965646F6ELL;
  v4 = 0x6C6C4174786574;
  if (v1 != 3)
  {
    v4 = 0x796E4174786574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70614365756C6176;
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

uint64_t sub_2519C3F80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2519C8484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2519C3FB4(uint64_t a1)
{
  v2 = sub_2519C69A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C3FF0(uint64_t a1)
{
  v2 = sub_2519C69A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C402C(uint64_t a1)
{
  v2 = sub_2519C694C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C4068(uint64_t a1)
{
  v2 = sub_2519C694C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C40A4(uint64_t a1)
{
  v2 = sub_2519C68A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C40E0(uint64_t a1)
{
  v2 = sub_2519C68A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C411C(uint64_t a1)
{
  v2 = sub_2519C6850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C4158(uint64_t a1)
{
  v2 = sub_2519C6850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C4194(uint64_t a1)
{
  v2 = sub_2519C67FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C41D0(uint64_t a1)
{
  v2 = sub_2519C67FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2519C420C()
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t sub_2519C4250(uint64_t a1)
{
  sub_2519F1098();
  MEMORY[0x25308A270](0);
  return sub_2519F10D8();
}

uint64_t sub_2519C4290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2519F0F68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2519C4310(uint64_t a1)
{
  v2 = sub_2519C68F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519C434C(uint64_t a1)
{
  v2 = sub_2519C68F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObjectDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_2519C6A88(0, &qword_27F46CE90, sub_2519C67FC, &type metadata for ObjectDescriptor.TextAnyCodingKeys, MEMORY[0x277D84538]);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v46 = &v39 - v6;
  sub_2519C6A88(0, &qword_27F46CEA0, sub_2519C6850, &type metadata for ObjectDescriptor.TextAllCodingKeys, v3);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v39 - v9;
  sub_2519C6A88(0, &qword_27F46CEB0, sub_2519C68A4, &type metadata for ObjectDescriptor.NodeIdsCodingKeys, v3);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v40 = &v39 - v12;
  sub_2519C6A88(0, &qword_27F46CEC0, sub_2519C68F8, &type metadata for ObjectDescriptor.ValueCaptureCodingKeys, v3);
  v51 = v13;
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v50 = &v39 - v15;
  sub_2519C6A88(0, &qword_27F46CED0, sub_2519C694C, &type metadata for ObjectDescriptor.NodeCaptureCodingKeys, v3);
  v17 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v39 - v19;
  sub_2519C6A88(0, &qword_27F46CEE0, sub_2519C69A0, &type metadata for ObjectDescriptor.CodingKeys, v3);
  v22 = *(v21 - 8);
  v54 = v21;
  v55 = v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v39 - v24;
  v53 = *v1;
  v26 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519C69A0();
  v52 = v25;
  sub_2519F1158();
  if (v26 <= 1)
  {
    v32 = v20;
    v34 = v49;
    v33 = v50;
    v35 = v51;
    if (v26)
    {
      LOBYTE(v56) = 1;
      sub_2519C68F8();
      v36 = v33;
      v28 = v54;
      v29 = v52;
      sub_2519F0EA8();
      v37 = v35;
      sub_2519F0ED8();
      v34 = v39;
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_2519C694C();
      v36 = v32;
      v28 = v54;
      v29 = v52;
      sub_2519F0EA8();
      v37 = v17;
      sub_2519F0ED8();
    }

    (*(v34 + 8))(v36, v37);
  }

  else
  {
    if (v26 == 2)
    {
      LOBYTE(v56) = 2;
      sub_2519C68A4();
      v27 = v40;
      v28 = v54;
      v29 = v52;
      sub_2519F0EA8();
      v56 = v53;
      sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
      sub_2519C5B98();
      v30 = v42;
      sub_2519F0EF8();
      v31 = v41;
    }

    else if (v26 == 3)
    {
      LOBYTE(v56) = 3;
      sub_2519C6850();
      v27 = v43;
      v28 = v54;
      v29 = v52;
      sub_2519F0EA8();
      v56 = v53;
      sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2519C69F4();
      v30 = v45;
      sub_2519F0EF8();
      v31 = v44;
    }

    else
    {
      LOBYTE(v56) = 4;
      sub_2519C67FC();
      v27 = v46;
      v28 = v54;
      v29 = v52;
      sub_2519F0EA8();
      v56 = v53;
      sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2519C69F4();
      v30 = v48;
      sub_2519F0EF8();
      v31 = v47;
    }

    (*(v31 + 8))(v27, v30);
  }

  return (*(v55 + 8))(v29, v28);
}

uint64_t ObjectDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (*(v1 + 16))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v1 + 16);
    }

    MEMORY[0x25308A270](v7);

    return sub_2519F09F8();
  }

  else if (v3 == 2)
  {
    MEMORY[0x25308A270](2);
    result = MEMORY[0x25308A270](*(v2 + 16));
    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v2 + 32);
      do
      {
        v10 = *v9++;
        result = MEMORY[0x25308A270](v10);
        --v8;
      }

      while (v8);
    }
  }

  else if (v3 == 3)
  {
    MEMORY[0x25308A270](3);
    result = MEMORY[0x25308A270](*(v2 + 16));
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v2 + 40;
      do
      {

        sub_2519F09F8();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    MEMORY[0x25308A270](4);
    result = MEMORY[0x25308A270](*(v2 + 16));
    v11 = *(v2 + 16);
    if (v11)
    {
      v12 = v2 + 40;
      do
      {

        sub_2519F09F8();

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t ObjectDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2519F1098();
  ObjectDescriptor.hash(into:)(v3);
  return sub_2519F10D8();
}

uint64_t ObjectDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2519C6A88(0, &qword_27F46CF00, sub_2519C67FC, &type metadata for ObjectDescriptor.TextAnyCodingKeys, MEMORY[0x277D844C8]);
  v67 = v4;
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v75 = &v61 - v6;
  sub_2519C6A88(0, &qword_27F46CF08, sub_2519C6850, &type metadata for ObjectDescriptor.TextAllCodingKeys, v3);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v71 = &v61 - v10;
  sub_2519C6A88(0, &qword_27F46CF10, sub_2519C68A4, &type metadata for ObjectDescriptor.NodeIdsCodingKeys, v3);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v74 = &v61 - v14;
  sub_2519C6A88(0, &qword_27F46CF18, sub_2519C68F8, &type metadata for ObjectDescriptor.ValueCaptureCodingKeys, v3);
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v73 = &v61 - v18;
  sub_2519C6A88(0, &qword_27F46CF20, sub_2519C694C, &type metadata for ObjectDescriptor.NodeCaptureCodingKeys, v3);
  v20 = v19;
  v62 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v61 - v22;
  sub_2519C6A88(0, &qword_27F46CF28, sub_2519C69A0, &type metadata for ObjectDescriptor.CodingKeys, v3);
  v25 = v24;
  v76 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v61 - v27;
  v29 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2519C69A0();
  v30 = v77;
  sub_2519F1148();
  if (!v30)
  {
    v31 = v73;
    v32 = v74;
    v33 = v75;
    v61 = v25;
    v77 = v28;
    v34 = sub_2519F0E78();
    if (*(v34 + 16) == 1)
    {
      v35 = *(v34 + 32);
      if (v35 != 5)
      {
        if (*(v34 + 32) <= 1u)
        {
          v75 = v34;
          if (v35)
          {
            LOBYTE(v79) = 1;
            sub_2519C68F8();
            v52 = v61;
            v53 = v77;
            sub_2519F0E08();
            v54 = v63;
            v57 = sub_2519F0E48();
            v55 = v31;
            v56 = v76;
            v59 = v60;
            (*(v64 + 8))(v55, v54);
            (*(v56 + 8))(v53, v52);
          }

          else
          {
            LOBYTE(v79) = 0;
            sub_2519C694C();
            sub_2519F0E08();
            v57 = sub_2519F0E48();
            v59 = v58;
            (*(v62 + 8))(v23, v20);
            (*(v76 + 8))(v77, v61);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v36 = v72;
          if (v35 == 2)
          {
            v75 = v34;
            LOBYTE(v79) = 2;
            sub_2519C68A4();
            v47 = v61;
            v48 = v77;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
            sub_2519C5D34();
            v49 = v65;
            sub_2519F0E68();
            (*(v66 + 8))(v32, v49);
            (*(v76 + 8))(v48, v47);
            swift_unknownObjectRelease();
            v59 = 0;
            v57 = v79;
LABEL_18:
            *v36 = v57;
            *(v36 + 8) = v59;
            *(v36 + 16) = v35;
            return __swift_destroy_boxed_opaque_existential_1(v78);
          }

          v37 = v61;
          if (v35 == 3)
          {
            LOBYTE(v79) = 3;
            sub_2519C6850();
            v38 = v71;
            v39 = v77;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_2519C6AF0();
            v40 = v68;
            sub_2519F0E68();
            (*(v69 + 8))(v38, v40);
            (*(v76 + 8))(v39, v37);
          }

          else
          {
            LOBYTE(v79) = 4;
            sub_2519C67FC();
            v50 = v77;
            sub_2519F0E08();
            sub_2519C8888(0, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
            sub_2519C6AF0();
            v51 = v67;
            sub_2519F0E68();
            (*(v70 + 8))(v33, v51);
            (*(v76 + 8))(v50, v37);
          }

          swift_unknownObjectRelease();
          v59 = 0;
          v57 = v79;
        }

        v36 = v72;
        goto LABEL_18;
      }
    }

    v41 = sub_2519F0CE8();
    swift_allocError();
    v43 = v42;
    sub_2519C5C78(0);
    *v43 = &type metadata for ObjectDescriptor;
    v44 = v61;
    v45 = v77;
    sub_2519F0E18();
    sub_2519F0CC8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v76 + 8))(v45, v44);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_2519C579C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2519F1098();
  ObjectDescriptor.hash(into:)(v3);
  return sub_2519F10D8();
}

uint64_t sub_2519C57F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2519F1098();
  ObjectDescriptor.hash(into:)(v4);
  return sub_2519F10D8();
}

uint64_t _s17HealthOntologyKit17SubjectDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v16 = *result;
      if (v3 != v6 || v2 != v5)
      {
        v18 = sub_2519F0F68();
        sub_2519C87E8(v6, v5, 0);
        sub_2519C87E8(v3, v2, 0);
        sub_2519C87F4(v3, v2, 0);
        sub_2519C87F4(v6, v5, 0);
        return v18 & 1;
      }

      sub_2519C87E8(v16, v2, 0);
      sub_2519C87E8(v3, v2, 0);
      sub_2519C87F4(v3, v2, 0);
      v10 = v3;
      v11 = v2;
      v12 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if ((a2[2] & 1) == 0)
  {
LABEL_11:
    sub_2519C87E8(*a2, a2[1], v7);
    sub_2519C87E8(v3, v2, v4);
    sub_2519C87F4(v3, v2, v4);
    v13 = v6;
    v14 = v5;
    v15 = v7;
LABEL_24:
    sub_2519C87F4(v13, v14, v15);
    return 0;
  }

  v8 = *(v3 + 16);
  if (v8 != *(v6 + 16))
  {
LABEL_23:
    sub_2519C87E8(*a2, a2[1], 1);
    sub_2519C87E8(v3, v2, 1);
    sub_2519C87F4(v3, v2, 1);
    v13 = v6;
    v14 = v5;
    v15 = 1;
    goto LABEL_24;
  }

  if (v8)
  {
    v9 = v3 == v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_9:
    sub_2519C87E8(*a2, a2[1], 1);
    sub_2519C87E8(v3, v2, 1);
    sub_2519C87F4(v3, v2, 1);
    v10 = v6;
    v11 = v5;
    v12 = 1;
LABEL_18:
    sub_2519C87F4(v10, v11, v12);
    return 1;
  }

  v19 = (v3 + 32);
  v20 = (v6 + 32);
  while (v8)
  {
    if (*v19 != *v20)
    {
      goto LABEL_23;
    }

    ++v19;
    ++v20;
    if (!--v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2519C5A58()
{
  result = qword_27F46CD98;
  if (!qword_27F46CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CD98);
  }

  return result;
}

unint64_t sub_2519C5AAC()
{
  result = qword_27F46CDA8;
  if (!qword_27F46CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDA8);
  }

  return result;
}

unint64_t sub_2519C5B00()
{
  result = qword_27F46CDB8;
  if (!qword_27F46CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDB8);
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

unint64_t sub_2519C5B98()
{
  result = qword_27F46CDC8;
  if (!qword_27F46CDC8)
  {
    sub_2519C8888(255, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDC8);
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

void sub_2519C5C78(uint64_t a1)
{
  if (!qword_27F46CDE8)
  {
    sub_2519C5CE8();
    sub_2519F0CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46CDE8);
    }
  }
}

unint64_t sub_2519C5CE8()
{
  result = qword_27F46CDF0;
  if (!qword_27F46CDF0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F46CDF0);
  }

  return result;
}

unint64_t sub_2519C5D34()
{
  result = qword_27F46CDF8;
  if (!qword_27F46CDF8)
  {
    sub_2519C8888(255, &qword_27F46CDC0, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CDF8);
  }

  return result;
}

BOOL _s17HealthOntologyKit19PredicateDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 24);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *(a2 + 24);
  v48[0] = v10;
  v48[1] = v9;
  v48[2] = v11;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v15;
  v53 = v16;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v16 == 3 && !(v14 | v13 | v15))
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v16 != 2)
    {
LABEL_35:
      sub_2519C86C4(v13, v14, v15, v16);
      v27 = v10;
      v28 = v9;
      v29 = v11;
      v30 = v12;
LABEL_36:
      sub_2519C86C4(v27, v28, v29, v30);
      sub_2519C8730(v48);
      return 0;
    }

    v21 = *(v10 + 16);
    if (v21 == *(v13 + 16))
    {
      if (!v21 || v10 == v13)
      {
LABEL_16:
        if (!v11)
        {
          v36 = v15;
          sub_2519C86C4(v13, v14, v15, 2u);
          v37 = v10;
          v38 = v9;
          v39 = 2;
LABEL_44:
          sub_2519C86C4(v37, v38, 0, v39);

          sub_2519C8730(v48);
          if (v36)
          {

            return 0;
          }

          return 1;
        }

        if (v15)
        {
          if (v9 == v14 && v11 == v15)
          {
            sub_2519C86C4(v13, v9, v11, 2u);
            v17 = v10;
            v18 = v9;
            v19 = v11;
            v20 = 2;
            goto LABEL_7;
          }

          v40 = v13;
          v41 = v14;
          v42 = v15;
          v43 = sub_2519F0F68();
          sub_2519C86C4(v40, v41, v42, 2u);
          sub_2519C86C4(v10, v9, v11, 2u);
          sub_2519C8730(v48);
          return (v43 & 1) != 0;
        }
      }

      else
      {
        v22 = (v10 + 32);
        v23 = (v13 + 32);
        while (*v22 == *v23)
        {
          ++v22;
          ++v23;
          if (!--v21)
          {
            goto LABEL_16;
          }
        }
      }
    }

    sub_2519C86C4(v13, v14, v15, 2u);
    v27 = v10;
    v28 = v9;
    v29 = v11;
    v30 = 2;
    goto LABEL_36;
  }

  if (v12)
  {
    if (v16 != 1)
    {
      goto LABEL_35;
    }

    v24 = *(v10 + 16);
    if (v24 != *(v13 + 16))
    {
      goto LABEL_40;
    }

    if (v24 && v10 != v13)
    {
      v25 = (v10 + 32);
      v26 = (v13 + 32);
      while (*v25 == *v26)
      {
        ++v25;
        ++v26;
        if (!--v24)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_40;
    }

LABEL_28:
    if (v11)
    {
      if (v15)
      {
        if (v9 == v14 && v11 == v15)
        {
          sub_2519C86C4(v13, v9, v11, 1u);
          v17 = v10;
          v18 = v9;
          v19 = v11;
          v20 = 1;
          goto LABEL_7;
        }

        v44 = v13;
        v45 = v14;
        v46 = v15;
        v47 = sub_2519F0F68();
        sub_2519C86C4(v44, v45, v46, 1u);
        sub_2519C86C4(v10, v9, v11, 1u);
        sub_2519C8730(v48);
        result = 1;
        if (v47)
        {
          return result;
        }

        return 0;
      }

LABEL_40:
      sub_2519C86C4(v13, v14, v15, 1u);
      v27 = v10;
      v28 = v9;
      v29 = v11;
      v30 = 1;
      goto LABEL_36;
    }

    v36 = v15;
    sub_2519C86C4(v13, v14, v15, 1u);
    v37 = v10;
    v38 = v9;
    v39 = 1;
    goto LABEL_44;
  }

  if (v16)
  {
    goto LABEL_35;
  }

  if (v10 == v13 && v9 == v14)
  {
    sub_2519C86C4(v10, v9, v15, 0);
    v17 = v10;
    v18 = v9;
    v19 = v11;
    v20 = 0;
LABEL_7:
    sub_2519C86C4(v17, v18, v19, v20);
LABEL_38:
    sub_2519C8730(v48);
    return 1;
  }

  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = sub_2519F0F68();
  sub_2519C86C4(v32, v33, v34, 0);
  sub_2519C86C4(v10, v9, v11, 0);
  sub_2519C8730(v48);
  return v35 & 1;
}

unint64_t sub_2519C61B0()
{
  result = qword_27F46CE08;
  if (!qword_27F46CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE08);
  }

  return result;
}

unint64_t sub_2519C6204()
{
  result = qword_27F46CE18;
  if (!qword_27F46CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE18);
  }

  return result;
}

unint64_t sub_2519C6258()
{
  result = qword_27F46CE28;
  if (!qword_27F46CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE28);
  }

  return result;
}

unint64_t sub_2519C62AC()
{
  result = qword_27F46CE38;
  if (!qword_27F46CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE38);
  }

  return result;
}

unint64_t sub_2519C6300()
{
  result = qword_27F46CE48;
  if (!qword_27F46CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE48);
  }

  return result;
}

unint64_t sub_2519C6354()
{
  result = qword_27F46CE58;
  if (!qword_27F46CE58)
  {
    sub_2519C8888(255, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE58);
  }

  return result;
}

unint64_t sub_2519C63E8()
{
  result = qword_27F46CE88;
  if (!qword_27F46CE88)
  {
    sub_2519C8888(255, &qword_27F46CE50, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE88);
  }

  return result;
}

uint64_t _s17HealthOntologyKit16ObjectDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(result + 16))
    {
      if (v7 == 1)
      {
        v19 = *result;
        if (v3 != v6 || v2 != v5)
        {
          v8 = sub_2519F0F68();
          sub_2519C863C(v6, v5, 1u);
          sub_2519C863C(v3, v2, 1u);
          sub_2519C8680(v3, v2, 1u);
          v9 = v6;
          v10 = v5;
          v11 = 1;
          goto LABEL_29;
        }

        sub_2519C863C(v19, v2, 1u);
        sub_2519C863C(v3, v2, 1u);
        sub_2519C8680(v3, v2, 1u);
        v16 = v3;
        v17 = v2;
        v18 = 1;
        goto LABEL_34;
      }
    }

    else if (!*(a2 + 16))
    {
      v12 = *result;
      if (v3 != v6 || v2 != v5)
      {
        v8 = sub_2519F0F68();
        sub_2519C863C(v6, v5, 0);
        sub_2519C863C(v3, v2, 0);
        sub_2519C8680(v3, v2, 0);
        v9 = v6;
        v10 = v5;
        v11 = 0;
        goto LABEL_29;
      }

      sub_2519C863C(v12, v2, 0);
      sub_2519C863C(v3, v2, 0);
      sub_2519C8680(v3, v2, 0);
      v16 = v3;
      v17 = v2;
      v18 = 0;
      goto LABEL_34;
    }

LABEL_30:
    sub_2519C863C(*a2, a2[1], v7);
    sub_2519C863C(v3, v2, v4);
    sub_2519C8680(v3, v2, v4);
    v21 = v6;
    v22 = v5;
    v23 = v7;
LABEL_31:
    sub_2519C8680(v21, v22, v23);
    return 0;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        v8 = sub_2519DC684(*result, *a2);
        sub_2519C863C(v6, v5, 3u);
        sub_2519C863C(v3, v2, 3u);
        sub_2519C8680(v3, v2, 3u);
        v9 = v6;
        v10 = v5;
        v11 = 3;
LABEL_29:
        sub_2519C8680(v9, v10, v11);
        return v8 & 1;
      }
    }

    else if (v7 == 4)
    {
      v8 = sub_2519DC684(*result, *a2);
      sub_2519C863C(v6, v5, 4u);
      sub_2519C863C(v3, v2, 4u);
      sub_2519C8680(v3, v2, 4u);
      v9 = v6;
      v10 = v5;
      v11 = 4;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v7 != 2)
  {
    goto LABEL_30;
  }

  v14 = *(v3 + 16);
  if (v14 != *(v6 + 16))
  {
LABEL_39:
    sub_2519C863C(*a2, a2[1], 2u);
    sub_2519C863C(v3, v2, 2u);
    sub_2519C8680(v3, v2, 2u);
    v21 = v6;
    v22 = v5;
    v23 = 2;
    goto LABEL_31;
  }

  if (v14)
  {
    v15 = v3 == v6;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_20:
    sub_2519C863C(*a2, a2[1], 2u);
    sub_2519C863C(v3, v2, 2u);
    sub_2519C8680(v3, v2, 2u);
    v16 = v6;
    v17 = v5;
    v18 = 2;
LABEL_34:
    sub_2519C8680(v16, v17, v18);
    return 1;
  }

  v24 = (v3 + 32);
  v25 = (v6 + 32);
  while (v14)
  {
    if (*v24 != *v25)
    {
      goto LABEL_39;
    }

    ++v24;
    ++v25;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2519C67FC()
{
  result = qword_27F46CE98;
  if (!qword_27F46CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CE98);
  }

  return result;
}

unint64_t sub_2519C6850()
{
  result = qword_27F46CEA8;
  if (!qword_27F46CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEA8);
  }

  return result;
}

unint64_t sub_2519C68A4()
{
  result = qword_27F46CEB8;
  if (!qword_27F46CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEB8);
  }

  return result;
}

unint64_t sub_2519C68F8()
{
  result = qword_27F46CEC8;
  if (!qword_27F46CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEC8);
  }

  return result;
}

unint64_t sub_2519C694C()
{
  result = qword_27F46CED8;
  if (!qword_27F46CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CED8);
  }

  return result;
}

unint64_t sub_2519C69A0()
{
  result = qword_27F46CEE8;
  if (!qword_27F46CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEE8);
  }

  return result;
}

unint64_t sub_2519C69F4()
{
  result = qword_27F46CEF8;
  if (!qword_27F46CEF8)
  {
    sub_2519C8888(255, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CEF8);
  }

  return result;
}

void sub_2519C6A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2519C6AF0()
{
  result = qword_27F46CF30;
  if (!qword_27F46CF30)
  {
    sub_2519C8888(255, &qword_27F46CEF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF30);
  }

  return result;
}

unint64_t sub_2519C6B88()
{
  result = qword_27F46CF38;
  if (!qword_27F46CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF38);
  }

  return result;
}

unint64_t sub_2519C6BE0()
{
  result = qword_27F46CF40;
  if (!qword_27F46CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF40);
  }

  return result;
}

unint64_t sub_2519C6C38()
{
  result = qword_27F46CF48;
  if (!qword_27F46CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF48);
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

uint64_t sub_2519C6CAC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2519C6CF4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_17HealthOntologyKit19PredicateDescriptorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2519C6D88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519C6DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2519C6E18(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2519C6E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2519C6E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2519C6F04(uint64_t a1, int a2)
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

uint64_t sub_2519C6F24(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ObjectDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PredicateDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredicateDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConceptAttributeValueRequestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConceptAttributeValueRequestError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PlaceholderRow(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlaceholderRow(_WORD *result, int a2, int a3)
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

unint64_t sub_2519C74FC()
{
  result = qword_27F46CF50;
  if (!qword_27F46CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF50);
  }

  return result;
}

unint64_t sub_2519C7554()
{
  result = qword_27F46CF58;
  if (!qword_27F46CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF58);
  }

  return result;
}

unint64_t sub_2519C75AC()
{
  result = qword_27F46CF60;
  if (!qword_27F46CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF60);
  }

  return result;
}

unint64_t sub_2519C7604()
{
  result = qword_27F46CF68;
  if (!qword_27F46CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF68);
  }

  return result;
}

unint64_t sub_2519C765C()
{
  result = qword_27F46CF70;
  if (!qword_27F46CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF70);
  }

  return result;
}

unint64_t sub_2519C76B4()
{
  result = qword_27F46CF78;
  if (!qword_27F46CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF78);
  }

  return result;
}

unint64_t sub_2519C770C()
{
  result = qword_27F46CF80;
  if (!qword_27F46CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF80);
  }

  return result;
}

unint64_t sub_2519C7764()
{
  result = qword_27F46CF88;
  if (!qword_27F46CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF88);
  }

  return result;
}

unint64_t sub_2519C77BC()
{
  result = qword_27F46CF90;
  if (!qword_27F46CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF90);
  }

  return result;
}

unint64_t sub_2519C7814()
{
  result = qword_27F46CF98;
  if (!qword_27F46CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CF98);
  }

  return result;
}

unint64_t sub_2519C786C()
{
  result = qword_27F46CFA0;
  if (!qword_27F46CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFA0);
  }

  return result;
}

unint64_t sub_2519C78C4()
{
  result = qword_27F46CFA8;
  if (!qword_27F46CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFA8);
  }

  return result;
}

unint64_t sub_2519C791C()
{
  result = qword_27F46CFB0;
  if (!qword_27F46CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFB0);
  }

  return result;
}

unint64_t sub_2519C7974()
{
  result = qword_27F46CFB8;
  if (!qword_27F46CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFB8);
  }

  return result;
}

unint64_t sub_2519C79CC()
{
  result = qword_27F46CFC0;
  if (!qword_27F46CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFC0);
  }

  return result;
}

unint64_t sub_2519C7A24()
{
  result = qword_27F46CFC8;
  if (!qword_27F46CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFC8);
  }

  return result;
}

unint64_t sub_2519C7A7C()
{
  result = qword_27F46CFD0;
  if (!qword_27F46CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFD0);
  }

  return result;
}

unint64_t sub_2519C7AD4()
{
  result = qword_27F46CFD8;
  if (!qword_27F46CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFD8);
  }

  return result;
}

unint64_t sub_2519C7B2C()
{
  result = qword_27F46CFE0;
  if (!qword_27F46CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFE0);
  }

  return result;
}

unint64_t sub_2519C7B84()
{
  result = qword_27F46CFE8;
  if (!qword_27F46CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFE8);
  }

  return result;
}

unint64_t sub_2519C7BDC()
{
  result = qword_27F46CFF0;
  if (!qword_27F46CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFF0);
  }

  return result;
}

unint64_t sub_2519C7C34()
{
  result = qword_27F46CFF8;
  if (!qword_27F46CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46CFF8);
  }

  return result;
}

unint64_t sub_2519C7C8C()
{
  result = qword_27F46D000;
  if (!qword_27F46D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D000);
  }

  return result;
}

unint64_t sub_2519C7CE4()
{
  result = qword_27F46D008;
  if (!qword_27F46D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D008);
  }

  return result;
}

unint64_t sub_2519C7D3C()
{
  result = qword_27F46D010;
  if (!qword_27F46D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D010);
  }

  return result;
}

unint64_t sub_2519C7D94()
{
  result = qword_27F46D018;
  if (!qword_27F46D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D018);
  }

  return result;
}

unint64_t sub_2519C7DEC()
{
  result = qword_27F46D020;
  if (!qword_27F46D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D020);
  }

  return result;
}

unint64_t sub_2519C7E44()
{
  result = qword_27F46D028;
  if (!qword_27F46D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D028);
  }

  return result;
}

unint64_t sub_2519C7E9C()
{
  result = qword_27F46D030;
  if (!qword_27F46D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D030);
  }

  return result;
}

unint64_t sub_2519C7EF4()
{
  result = qword_27F46D038;
  if (!qword_27F46D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D038);
  }

  return result;
}

unint64_t sub_2519C7F4C()
{
  result = qword_27F46D040;
  if (!qword_27F46D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D040);
  }

  return result;
}

unint64_t sub_2519C7FA4()
{
  result = qword_27F46D048;
  if (!qword_27F46D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D048);
  }

  return result;
}

unint64_t sub_2519C7FFC()
{
  result = qword_27F46D050;
  if (!qword_27F46D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D050);
  }

  return result;
}

unint64_t sub_2519C8054()
{
  result = qword_27F46D058;
  if (!qword_27F46D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D058);
  }

  return result;
}

unint64_t sub_2519C80AC()
{
  result = qword_27F46D060;
  if (!qword_27F46D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D060);
  }

  return result;
}

unint64_t sub_2519C8104()
{
  result = qword_27F46D068;
  if (!qword_27F46D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D068);
  }

  return result;
}

unint64_t sub_2519C815C()
{
  result = qword_27F46D070;
  if (!qword_27F46D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D070);
  }

  return result;
}

unint64_t sub_2519C81B4()
{
  result = qword_27F46D078;
  if (!qword_27F46D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D078);
  }

  return result;
}

unint64_t sub_2519C820C()
{
  result = qword_27F46D080;
  if (!qword_27F46D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D080);
  }

  return result;
}

unint64_t sub_2519C8264()
{
  result = qword_27F46D088;
  if (!qword_27F46D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D088);
  }

  return result;
}

unint64_t sub_2519C82BC()
{
  result = qword_27F46D090;
  if (!qword_27F46D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D090);
  }

  return result;
}

uint64_t sub_2519C8310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574706163 && a2 == 0xE700000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E497365646F6ELL && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002519F6750 == a2 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00736570795465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2519F0F68();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2519C8484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470614365646F6ELL && a2 == 0xEB00000000657275;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614365756C6176 && a2 == 0xEC00000065727574 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73644965646F6ELL && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C4174786574 && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796E4174786574 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C863C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return v3;
}

uint64_t sub_2519C8680(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return v3;
}

uint64_t sub_2519C86C4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 < 2)
  {
  }

  if (!a4)
  {
  }

  return v5;
}

uint64_t sub_2519C8730(uint64_t a1)
{
  sub_2519C878C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519C878C()
{
  if (!qword_27F46D098)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D098);
    }
  }
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519C8814(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2519C8834(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

void sub_2519C8888(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t HKConceptIdentifier.ontologyConceptIdentifier.getter@<X0>(void *a1@<X8>)
{
  v5 = [v1 rawIdentifier];
  v3 = sub_2519F0F18();
  MEMORY[0x253089BD0](v3);

  result = MEMORY[0x253089BD0](41, 0xE100000000000000);
  *a1 = v5;
  a1[1] = 0x2820656E6F6ELL;
  a1[2] = 0xE600000000000000;
  return result;
}

unint64_t sub_2519C89CC()
{
  v1 = [*v0 rawIdentifier];
  v2 = 0;
  v3 = 0;

  return OntologyConceptIdentifier.init(_:label:)(v1, *&v2);
}

id HKConceptIdentifier.init(_:)(uint64_t *a1)
{
  v1 = *a1;

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRawIdentifier_];
}

id OntologyConceptIdentifier.healthKitConceptIdentifier.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCD1D0]);

  return [v2 initWithRawIdentifier_];
}

uint64_t ConceptAttributeValue.concept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValue.attribute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValue.init(concept:attribute:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *a7 = *a1;
  *(a7 + 16) = v10;
  *(a7 + 24) = *a2;
  *(a7 + 40) = v11;
  v12 = type metadata accessor for ConceptAttributeValue(0, a4, a5, a6);
  v13 = *(*(a4 - 8) + 32);
  v14 = a7 + *(v12 + 48);

  return v13(v14, a3, a4);
}

uint64_t sub_2519C8C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C8D28(char a1)
{
  if (!a1)
  {
    return 0x747065636E6F63;
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 0x65756C6176;
}

uint64_t sub_2519C8DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2519C8C0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2519C8DDC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2519CA560();
  *a2 = result;
  return result;
}

uint64_t sub_2519C8E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519C8E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ConceptAttributeValue.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v16[0] = a2[4];
  v16[1] = v4;
  type metadata accessor for ConceptAttributeValue.CodingKeys(255, v4, v5, v16[0]);
  swift_getWitnessTable();
  v6 = sub_2519F0F08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v16[2];
  sub_2519F1158();
  v12 = *(v11 + 16);
  v17 = *v11;
  v18 = v12;
  v19 = 0;
  sub_2519C9118();

  v13 = v16[3];
  sub_2519F0EF8();
  if (v13)
  {
  }

  else
  {

    v14 = *(v11 + 40);
    v17 = *(v11 + 24);
    v18 = v14;
    v19 = 1;
    sub_2519C916C();

    sub_2519F0EF8();

    LOBYTE(v17) = 2;
    sub_2519F0EF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2519C9118()
{
  result = qword_27F46D0A8;
  if (!qword_27F46D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0A8);
  }

  return result;
}

unint64_t sub_2519C916C()
{
  result = qword_27F46D0B0;
  if (!qword_27F46D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0B0);
  }

  return result;
}

uint64_t ConceptAttributeValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v34 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConceptAttributeValue.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v40 = sub_2519F0E88();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v13);
  v15 = &v32 - v14;
  v39 = a2;
  v36 = a3;
  v16 = type metadata accessor for ConceptAttributeValue(0, a2, a3, a4);
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v32 - v18;
  v20 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v41 = v15;
  v21 = v42;
  sub_2519F1148();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v42 = v16;
  v23 = v37;
  v22 = v38;
  v24 = v19;
  v25 = v39;
  v46 = 0;
  sub_2519C95DC();
  v26 = v40;
  sub_2519F0E68();
  v27 = v45;
  *v24 = v44;
  *(v24 + 2) = v27;
  v46 = 1;
  sub_2519C9630();
  sub_2519F0E68();
  v28 = v45;
  *(v24 + 24) = v44;
  *(v24 + 5) = v28;
  LOBYTE(v44) = 2;
  sub_2519F0E68();
  (*(v23 + 8))(v41, v26);
  v29 = v42;
  (*(v34 + 32))(&v24[*(v42 + 48)], v22, v25);
  v30 = v33;
  (*(v33 + 16))(v35, v24, v29);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v30 + 8))(v24, v29);
}

unint64_t sub_2519C95DC()
{
  result = qword_27F46D0B8;
  if (!qword_27F46D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0B8);
  }

  return result;
}

unint64_t sub_2519C9630()
{
  result = qword_27F46D0C0;
  if (!qword_27F46D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D0C0);
  }

  return result;
}

uint64_t static ConceptAttributeValue<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2 || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for ConceptAttributeValue(0, a3, a4, a5);
  return sub_2519F0968() & 1;
}

uint64_t ConceptAttributeValueRequest.identifier.getter()
{
  v0 = sub_2519CA568();

  return v0;
}

uint64_t ConceptAttributeValueRequest.concept.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t ConceptAttributeValueRequest.attribute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
}

__n128 ConceptAttributeValueRequest.init(identifier:concept:attribute:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v6 = a4[1].n128_u64[0];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = *a4;
  *(a5 + 40) = *a4;
  *(a5 + 56) = v6;
  return result;
}

uint64_t ConceptAttributeValueRequest.response(value:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v14 = v3[6];
  v15 = v3[7];
  v21 = v14;
  (*(v7 + 16))(v9);
  v16 = a2[3];
  v17 = a2[4];
  *a3 = v10;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v21;
  *(a3 + 5) = v15;
  v18 = type metadata accessor for ConceptAttributeValue(0, v6, v16, v17);
  (*(v7 + 32))(&a3[*(v18 + 48)], v9, v6);
}

BOOL static ConceptAttributeValueRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[5];
  v4 = a2[2];
  v5 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_2519F0F68();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t sub_2519C99AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2519F0F68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747065636E6F63 && a2 == 0xE700000000000000 || (sub_2519F0F68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_2519F0F68();

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

uint64_t sub_2519C9AD4(unsigned __int8 a1)
{
  sub_2519F1098();
  MEMORY[0x25308A270](a1);
  return sub_2519F10D8();
}

uint64_t sub_2519C9B1C(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x747065636E6F63;
  }

  return 0x7475626972747461;
}

uint64_t sub_2519C9B7C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void))
{
  sub_2519F1098();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_2519F10D8();
}

uint64_t sub_2519C9BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2519C99AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2519C9C1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2519C9C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ConceptAttributeValueRequest.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for ConceptAttributeValueRequest.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v4 = sub_2519F0F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v7 = v2[1];
  v8 = v2[2];
  v24 = v2[3];
  v25 = v8;
  v9 = v2[5];
  v26 = v2[4];
  v27 = v7;
  v23 = v9;
  v10 = v2[6];
  v21 = v2[7];
  v22 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_2519F1158();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_2519F0ED8();
  if (!v15)
  {
    v17 = v22;
    v16 = v23;
    v18 = v21;
    v29 = v25;
    v30 = v24;
    v31 = v26;
    v32 = 1;
    sub_2519C9118();

    sub_2519F0EF8();

    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = 2;
    sub_2519C916C();

    sub_2519F0EF8();
  }

  return (*(v5 + 8))(v14, v4);
}

uint64_t ConceptAttributeValueRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_2519F09F8();
  MEMORY[0x25308A270](v2);
  return MEMORY[0x25308A270](v3);
}

uint64_t ConceptAttributeValueRequest.hashValue.getter()
{
  sub_2519F1098();
  ConceptAttributeValueRequest.hash(into:)(v1);
  return sub_2519F10D8();
}

uint64_t ConceptAttributeValueRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int128 *a5@<X8>)
{
  v30 = a5;
  type metadata accessor for ConceptAttributeValueRequest.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v31 = sub_2519F0E88();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v32;
  sub_2519F1148();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v14 = v30;
  v32 = a4;
  LOBYTE(v37) = 0;
  *&v28 = sub_2519F0E48();
  *(&v28 + 1) = v15;
  LOBYTE(v33) = 1;
  sub_2519C95DC();
  sub_2519F0E68();
  v16 = v37;
  v25 = v16 >> 64;
  v26 = v16;
  v27 = v38;
  v46 = 2;
  sub_2519C9630();
  sub_2519F0E68();
  (*(v13 + 8))(v11, v31);
  v31 = v44;
  v24 = *(&v45 + 1);
  v29 = v45;
  v17 = v28;
  v33 = v28;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  v18 = v27;
  *&v35 = v27;
  *(&v35 + 1) = v44;
  v36 = v45;
  v19 = v34;
  *v14 = v28;
  v14[1] = v19;
  v20 = v36;
  v14[2] = v35;
  v14[3] = v20;
  v21 = type metadata accessor for ConceptAttributeValueRequest(0, a2, a3, v32);
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v37, &v33, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37 = v17;
  v38 = v26;
  v39 = v25;
  v40 = v18;
  v41 = v31;
  v42 = v29;
  v43 = v24;
  return (*(v22 + 8))(&v37, v21);
}

uint64_t sub_2519CA388()
{
  v0 = sub_2519CA568();

  return v0;
}

uint64_t sub_2519CA404(uint64_t a1)
{
  sub_2519F1098();
  ConceptAttributeValueRequest.hash(into:)(v2);
  return sub_2519F10D8();
}

uint64_t ConceptAttributeValueRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

__n128 ConceptAttributeValueRequest<>.init(concept:attribute:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u64[0];
  *a3 = 0xD00000000000001CLL;
  *(a3 + 8) = 0x80000002519F6860;
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = a2[1].n128_u64[0];
  *a3 = 0xD00000000000001ELL;
  *(a3 + 8) = 0x80000002519F6880;
  *(a3 + 16) = *a1;
  *(a3 + 32) = v3;
  result = *a2;
  *(a3 + 40) = *a2;
  *(a3 + 56) = v4;
  return result;
}

uint64_t sub_2519CA5D8(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_2519CA678()
{
  result = qword_27F46D0C8[0];
  if (!qword_27F46D0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F46D0C8);
  }

  return result;
}

uint64_t sub_2519CA6D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2519CA75C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      v15 = *(a1 + 2);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_2519CA8E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 2) = a2 - 1;
  }
}

uint64_t sub_2519CAB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2519CABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2519CABE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Triple.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Triple.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SecurelyCodableOntologyRequest.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier);

  return v1;
}

uint64_t sub_2519CAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t SecurelyCodableOntologyRequest.decoded<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2519F0858();
  swift_allocObject();
  sub_2519F0848();
  sub_2519F0838();
}

Swift::Void __swiftcall SecurelyCodableOntologyRequest.encode(with:)(NSCoder with)
{
  v2 = sub_2519F0978();
  v3 = sub_2519F0978();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_2519F08A8();
  v5 = sub_2519F0978();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id SecurelyCodableOntologyRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_2519CB604(0, &qword_27F46D2E0, 0x277CCACA8);
  v2 = sub_2519F0BE8();
  if (v2)
  {
    v3 = v2;
    sub_2519F0988();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id SecurelyCodableOntologyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurelyCodableOntologyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2519CB47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 56))(a2, a3);
  v9 = &v3[OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_identifier];
  *v9 = v8;
  v9[1] = v10;
  sub_2519F0888();
  swift_allocObject();
  sub_2519F0878();
  v11 = sub_2519F0868();
  v13 = v12;

  if (v4)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = &v3[OBJC_IVAR____TtC17HealthOntologyKit30SecurelyCodableOntologyRequest_payload];
    *v15 = v11;
    v15[1] = v13;
    v16.receiver = v3;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }
}

uint64_t sub_2519CB604(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2519CB6C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double static OntologyRelationshipIdentifier.none.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2519F35A0;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

double static OntologyRelationshipIdentifier.isFormOf.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 798;
  *a1 = xmmword_2519F35B0;
  *(a1 + 16) = 0xEA0000000000664FLL;
  return result;
}

double static OntologyRelationshipIdentifier.hasSeverity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 799;
  *a1 = xmmword_2519F35C0;
  *(a1 + 16) = 0xEC00000079746972;
  return result;
}

double static OntologyRelationshipIdentifier.component.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 809;
  *a1 = xmmword_2519F35D0;
  *(a1 + 16) = 0xE900000000000074;
  return result;
}

double static OntologyRelationshipIdentifier.hasInteraction.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 813;
  *a1 = xmmword_2519F35E0;
  *(a1 + 16) = 0xEF6E6F6974636172;
  return result;
}

double static OntologyRelationshipIdentifier.hasEducationalContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 988;
  *a1 = xmmword_2519F35F0;
  *(a1 + 16) = 0x80000002519F6970;
  return result;
}

double static OntologyRelationshipIdentifier.hasInteractionClass.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 996;
  *a1 = xmmword_2519F3600;
  *(a1 + 16) = 0x80000002519F6990;
  return result;
}

double static OntologyRelationshipIdentifier.groupedBy.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1013;
  *a1 = xmmword_2519F3610;
  *(a1 + 16) = 0xEA00000000007942;
  return result;
}

double static OntologyRelationshipIdentifier.isA.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1015;
  *a1 = xmmword_2519F3620;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

void OntologyRelationshipIdentifier.init(relationshipType:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 54837)
  {
    if (((a1 - 952) > 0x3F || ((1 << (a1 + 72)) & 0xA0001012F0000003) == 0) && ((a1 - 797) > 0x10 || ((1 << (a1 - 29)) & 0x15007) == 0) && ((a1 + 1) > 0xC || ((1 << (a1 + 1)) & 0x1803) == 0))
    {
      goto LABEL_5;
    }

LABEL_16:
    v8 = sub_2519F0F18();
    MEMORY[0x253089BD0](v8);

    MEMORY[0x253089BD0](41, 0xE100000000000000);
    *a2 = a1;
    a2[1] = 0x2820656E6F6ELL;
    a2[2] = 0xE600000000000000;
    return;
  }

  if (a1 == 54838 || a1 == 6641711 || a1 == 4863950)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v4 = sub_2519F0918();
  __swift_project_value_buffer(v4, qword_27F46DE10);
  v5 = sub_2519F08F8();
  v6 = sub_2519F0BD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_2519BF000, v5, v6, "OntologyRelationshipIdentifier: attempted to create with unknown relationship type %lld", v7, 0xCu);
    MEMORY[0x25308A910](v7, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

double sub_2519CBA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OntologyRelationshipIdentifier.init(relationshipType:)(a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2519CBAC0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = _sSb17HealthOntologyKitEySbSgSo18HKConceptAttributeCcfC_0(a2);
  *a1 = result;
  return result;
}

uint64_t String.init(_:)(void *a1)
{
  v2 = [a1 stringValue];
  v3 = sub_2519F0998();

  return v3;
}

void sub_2519CBB44(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 stringValue];
  v5 = sub_2519F0998();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t _sSb17HealthOntologyKitEySbSgSo18HKConceptAttributeCcfC_0(void *a1)
{
  v2 = [a1 stringValue];
  v3 = sub_2519F0998();
  v5 = v4;

  if (sub_2519F0998() == v3 && v6 == v5)
  {

    return 1;
  }

  v8 = sub_2519F0F68();

  if (v8)
  {

    return 1;
  }

  if (sub_2519F0998() == v3 && v10 == v5)
  {

    return 0;
  }

  else
  {
    v12 = sub_2519F0F68();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

double HgQLResultRowDecodable.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v24 = sub_2519F1108();
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v38 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v4, a3);
  sub_2519F10E8();
  v22 = v10;
  sub_2519F10F8();
  sub_2519F0D18();

  sub_2519F0DE8();
  if (!v39)
  {
LABEL_15:
    (*(v23 + 8))(v22, v24);

    v16 = v25;
    *(v25 + 32) = 0;
    result = 0.0;
    *v16 = 0u;
    v16[1] = 0u;
    return result;
  }

  while (1)
  {
    v35 = v37;
    sub_2519CC0D8(&v38, &v36);
    sub_2519CC0E8(&v35, &v32);
    v12 = v33;
    if (!v33)
    {
      sub_2519CC1CC(&v35);
      __swift_destroy_boxed_opaque_existential_1(v34);
      goto LABEL_4;
    }

    v13 = v32;
    __swift_destroy_boxed_opaque_existential_1(v34);
    if (v13 == a1 && v12 == a2)
    {
      break;
    }

    v15 = sub_2519F0F68();

    if (v15)
    {
      goto LABEL_13;
    }

    sub_2519CC1CC(&v35);
LABEL_4:
    sub_2519F0DE8();
    if (!v39)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  sub_2519CC0E8(&v35, &v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2519CC1CC(&v35);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    sub_2519CC228(&v26);
    goto LABEL_4;
  }

  v29 = v26;
  v30 = v27;
  v31 = v28;
  v18 = sub_2519CC2E0();

  sub_2519CC1CC(&v35);
  (*(v23 + 8))(v22, v24);
  if (v18)
  {
    result = *&v29;
    v19 = v30;
    v20 = v25;
    *v25 = v29;
    *(v20 + 16) = v19;
    *(v20 + 32) = v31;
  }

  else
  {
    sub_2519CC398(&v29);
    result = 0.0;
    v21 = v25;
    *v25 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2519CC0D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2519CC0E8(uint64_t a1, uint64_t a2)
{
  sub_2519CC14C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519CC14C(uint64_t a1)
{
  if (!qword_27F46D3C0)
  {
    sub_2519CC294(255, &qword_27F46D3C8, MEMORY[0x277D837D0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F46D3C0);
    }
  }
}

uint64_t sub_2519CC1CC(uint64_t a1)
{
  sub_2519CC14C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519CC228(uint64_t a1)
{
  sub_2519CC294(0, &qword_27F46D3D0, MEMORY[0x277D84030]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2519CC294(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2519F0C08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2519CC2E0()
{
  sub_2519F0C78();
  if (swift_dynamicCast())
  {
    return 1;
  }

  sub_2519F0C78();
  if (swift_dynamicCast())
  {

    return 1;
  }

  else
  {
    sub_2519F0C78();
    return swift_dynamicCast();
  }
}

double PlaceholderRow.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2519CC414(uint64_t a1)
{
  v2 = sub_2519CC5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CC450(uint64_t a1)
{
  v2 = sub_2519CC5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaceholderRow.encode(to:)(void *a1)
{
  sub_2519CC598(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CC5F4();
  sub_2519F1158();
  return (*(v4 + 8))(v7, v3);
}

void sub_2519CC598(uint64_t a1)
{
  if (!qword_27F46D3D8)
  {
    sub_2519CC5F4();
    v1 = sub_2519F0F08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D3D8);
    }
  }
}

unint64_t sub_2519CC5F4()
{
  result = qword_27F46D3E0;
  if (!qword_27F46D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3E0);
  }

  return result;
}

double sub_2519CC6AC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2519CC6F0(void *a1)
{
  sub_2519CC598(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CC5F4();
  sub_2519F1158();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2519CC868(void *a1)
{
  a1[1] = sub_2519CC8A0();
  a1[2] = sub_2519CC8F4();
  result = sub_2519CC948();
  a1[3] = result;
  return result;
}

unint64_t sub_2519CC8A0()
{
  result = qword_27F46D3E8;
  if (!qword_27F46D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3E8);
  }

  return result;
}

unint64_t sub_2519CC8F4()
{
  result = qword_27F46D3F0;
  if (!qword_27F46D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3F0);
  }

  return result;
}

unint64_t sub_2519CC948()
{
  result = qword_27F46D3F8;
  if (!qword_27F46D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D3F8);
  }

  return result;
}

unint64_t sub_2519CC9A0()
{
  result = qword_27F46D400;
  if (!qword_27F46D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D400);
  }

  return result;
}

uint64_t sub_2519CCA00(uint64_t a1, unsigned int a2)
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

uint64_t sub_2519CCA48(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2519CCAFC()
{
  result = qword_27F46D408;
  if (!qword_27F46D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D408);
  }

  return result;
}

unint64_t sub_2519CCB54()
{
  result = qword_27F46D410;
  if (!qword_27F46D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D410);
  }

  return result;
}

uint64_t HealthOntologyStore.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for HealthOntologyStore.HealthOntologyStoreProxy());
  *(v2 + 24) = sub_2519CE0A8(a1);
  swift_weakAssign();
  return v2;
}

uint64_t HealthOntologyStore.init(healthStore:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  v4 = objc_allocWithZone(type metadata accessor for HealthOntologyStore.HealthOntologyStoreProxy());
  *(v2 + 24) = sub_2519CE0A8(a1);
  swift_weakAssign();
  return v2;
}

void HealthOntologyStore.fetchResponse<A>(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 24);
  v14 = *(v10 + 16);
  v31 = v15;
  v14(v12);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v32 = a5;
  v19 = v6;
  *(v18 + 4) = v6;
  (*(v10 + 32))(&v18[v16], v12, a4);
  v20 = &v18[v17];
  v21 = v33;
  *v20 = a2;
  *(v20 + 1) = v21;
  v22 = *(v13 + OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider);
  if (v22)
  {
    aBlock[4] = sub_2519CE720;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2519CE51C;
    aBlock[3] = &block_descriptor;
    v23 = _Block_copy(aBlock);

    v24 = v22;

    v25 = [v24 clientQueueObjectHandlerWithCompletion_];

    _Block_release(v23);

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    type metadata accessor for SecurelyCodableOntologyRequest();
    _Block_copy(v25);
    v27 = sub_2519CB5A8(v31, a4, v32);
    _Block_release(v25);
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_2519CE7D0;
    v28[4] = v26;
    v29 = swift_allocObject();
    v29[2] = v19;
    v29[3] = sub_2519CE7D0;
    v29[4] = v26;
    swift_retain_n();

    v30 = v27;
    sub_2519CDEEC(sub_2519CEB28, v28, sub_2519CEB34, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2519CD158(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *, uint64_t, uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v60 = a5;
  v61 = a4;
  v56 = *v8;
  v57 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2519CECC4();
  v12 = sub_2519F1118();
  v58 = *(v12 - 8);
  v59 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v55 = &v54[-v19];
  v20 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v54[-v26];
  sub_2519CEA14(a2, v64);
  if (v64[3])
  {
    type metadata accessor for SecurelyCodableOntologyResponse();
    if (swift_dynamicCast())
    {
      v28 = v62;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      SecurelyCodableOntologyResponse.decoded<A>(_:)(AssociatedTypeWitness, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v20 + 32))(v27, v24, AssociatedTypeWitness);
      v51 = v55;
      (*(v20 + 16))(v55, v27, AssociatedTypeWitness);
      v52 = v59;
      swift_storeEnumTagMultiPayload();
      v61(v8, v57, v51);

      (*(v58 + 8))(v51, v52);
      return (*(v20 + 8))(v27, AssociatedTypeWitness);
    }
  }

  else
  {
    sub_2519CEACC(v64);
  }

  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v30 = sub_2519F0918();
  __swift_project_value_buffer(v30, qword_27F46DE10);
  sub_2519CEA14(a2, v64);

  v31 = a3;
  v32 = sub_2519F08F8();
  v33 = sub_2519F0BD8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136446722;
    v62 = v8;

    v36 = sub_2519F09D8();
    v38 = sub_2519EF108(v36, v37, &v63);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    sub_2519CEA14(v64, &v62);
    sub_2519CEA78();
    v39 = sub_2519F09D8();
    v41 = v40;
    sub_2519CEACC(v64);
    v42 = sub_2519EF108(v39, v41, &v63);

    *(v34 + 14) = v42;
    *(v34 + 22) = 2082;
    v62 = a3;
    v43 = a3;
    sub_2519CED7C(0);
    v44 = sub_2519F09D8();
    v46 = sub_2519EF108(v44, v45, &v63);

    *(v34 + 24) = v46;
    _os_log_impl(&dword_2519BF000, v32, v33, "%{public}s: failure response %s, error: %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308A910](v35, -1, -1);
    MEMORY[0x25308A910](v34, -1, -1);

    v47 = a3;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_2519CEACC(v64);
    v47 = a3;
    if (!a3)
    {
LABEL_11:
      sub_2519CED28();
      v47 = swift_allocError();
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      *v48 = 0;
      *(v48 + 24) = 5;
    }
  }

  *v16 = v47;
  v49 = v59;
  swift_storeEnumTagMultiPayload();
  v50 = a3;
  v61(v8, v57, v16);
  return (*(v58 + 8))(v16, v49);
}

void sub_2519CDA50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2519CECBC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2519CDBC8;
  v10[3] = &block_descriptor_34;
  v9 = _Block_copy(v10);

  [a1 remote:a2 executeWithRequest:v9 with:?];
  _Block_release(v9);
}

uint64_t sub_2519CDB44(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = type metadata accessor for SecurelyCodableOntologyResponse();
    *&v8 = a1;
    sub_2519CC0D8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a1;
  a3(v10, a2);
  return sub_2519CEACC(v10);
}

void sub_2519CDBC8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2519CDC54(void *a1, uint64_t a2, void (*a3)(_OWORD *, void *))
{
  if (qword_27F46CD88 != -1)
  {
    swift_once();
  }

  v6 = sub_2519F0918();
  __swift_project_value_buffer(v6, qword_27F46DE10);

  v7 = a1;
  v8 = sub_2519F08F8();
  v9 = sub_2519F0BD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[5] = a2;
    *&v23[0] = v11;
    *v10 = 136446466;
    type metadata accessor for HealthOntologyStore();

    v12 = sub_2519F09D8();
    v14 = sub_2519EF108(v12, v13, v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue, v22[1]);
    (*(v17 + 16))(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = sub_2519F09D8();
    v20 = sub_2519EF108(v18, v19, v23);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_2519BF000, v8, v9, "%{public}s: remote_execute error: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308A910](v11, -1, -1);
    MEMORY[0x25308A910](v10, -1, -1);
  }

  memset(v23, 0, sizeof(v23));
  a3(v23, a1);
  return sub_2519CEACC(v23);
}

void sub_2519CDEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = ObjectType;
    v20 = sub_2519CEBC8;
    v21 = v11;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2519CE444;
    v19 = &block_descriptor_22;
    v12 = _Block_copy(&v16);
    v13 = v5;

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v20 = sub_2519CEBD4;
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2519CE4B4;
    v19 = &block_descriptor_28;
    v15 = _Block_copy(&v16);

    [v13 fetchProxyWithHandler:v12 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

char *sub_2519CE0A8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2519F08E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider] = 0;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  sub_2519F08D8();
  v11 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v12 = sub_2519F0978();
  v13 = sub_2519F08C8();
  v14 = [v11 initWithHealthStore:a1 taskIdentifier:v12 exportedObject:v10 taskUUID:v13];

  (*(v6 + 8))(v9, v5);
  v15 = *&v10[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider];
  *&v10[OBJC_IVAR____TtCC17HealthOntologyKit19HealthOntologyStoreP33_15DCA7F8B4C996C19607F2A4D5C454CA24HealthOntologyStoreProxy_proxyProvider] = v14;

  return v10;
}

uint64_t sub_2519CE25C(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_2519CEBFC(a1, &v13);
  sub_2519CEC58();
  if (swift_dynamicCast())
  {
    a2(v12[1]);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2519F0CA8();

    v13 = 91;
    v14 = 0xE100000000000000;
    v7 = sub_2519F11B8();
    MEMORY[0x253089BD0](v7);

    MEMORY[0x253089BD0](0xD00000000000001FLL, 0x80000002519F6B60);
    v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v8, v8);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = sub_2519F09D8();
    MEMORY[0x253089BD0](v11);

    result = sub_2519F0D98();
    __break(1u);
  }

  return result;
}

uint64_t sub_2519CE444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_2519CE4B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2519CE51C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_2519CC0D8(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_2519CEACC(v10);
}

void sub_2519CE5BC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2519CEA14(a1, v11);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v6, v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_2519F0F58();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_2519F0898();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_2519CE720(uint64_t a1, void *a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = v2 + ((*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2519CD158(v2 + v3, a1, a2, *v4, *(v4 + 8), *(v2 + 16), *(v2 + 24));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2519CE7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

id sub_2519CE878()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthOntologyStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2519CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  HealthOntologyStore.fetchResponse<A>(for:handler:)(a1, sub_2519CEB90, v10, a4, a5);
}

uint64_t sub_2519CEA14(uint64_t a1, uint64_t a2)
{
  sub_2519CEA78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2519CEA78()
{
  if (!qword_27F46D430)
  {
    v0 = sub_2519F0C08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F46D430);
    }
  }
}

uint64_t sub_2519CEACC(uint64_t a1)
{
  sub_2519CEA78();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2519CEB90(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2519CEBFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2519CEC58()
{
  result = qword_27F46D498;
  if (!qword_27F46D498)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D498);
  }

  return result;
}

unint64_t sub_2519CECC4()
{
  result = qword_27F46D4A0;
  if (!qword_27F46D4A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F46D4A0);
  }

  return result;
}

unint64_t sub_2519CED28()
{
  result = qword_27F46D4A8;
  if (!qword_27F46D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D4A8);
  }

  return result;
}

void sub_2519CED7C(uint64_t a1)
{
  if (!qword_27F46D4B0)
  {
    sub_2519CECC4();
    v1 = sub_2519F0C08();
    if (!v2)
    {
      atomic_store(v1, &qword_27F46D4B0);
    }
  }
}

uint64_t OntologyAttributeIdentifier.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

HealthOntologyKit::OntologyAttributeIdentifier __swiftcall OntologyAttributeIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

uint64_t OntologyAttributeIdentifier.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2519F0CA8();

  strcpy(v5, "attributeID: ");
  v3 = sub_2519F0F18();
  MEMORY[0x253089BD0](v3);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v2);
  return v5[0];
}

uint64_t sub_2519CEFCC()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2519CEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2519F0F68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2519F0F68();

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

uint64_t sub_2519CF0C8(uint64_t a1)
{
  v2 = sub_2519CF2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CF104(uint64_t a1)
{
  v2 = sub_2519CF2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyAttributeIdentifier.encode(to:)(void *a1)
{
  sub_2519CF640(0, &qword_27F46D520, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CF2BC();
  sub_2519F1158();
  v14 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v13 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2519CF2BC()
{
  result = qword_27F46D528;
  if (!qword_27F46D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D528);
  }

  return result;
}

uint64_t OntologyAttributeIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyAttributeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519CF640(0, &qword_27F46D530, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CF2BC();
  sub_2519F1148();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2519F0E58();
    v17 = 1;
    v13 = sub_2519F0E48();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2519CF518()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2519CF588()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t sub_2519CF5FC(uint64_t a1)
{
  v2 = *v1;
  sub_2519F1098();
  MEMORY[0x25308A270](v2);
  return sub_2519F10D8();
}

void sub_2519CF640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519CF2BC();
    v7 = a3(a1, &type metadata for OntologyAttributeIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519CF6A4(void *a1)
{
  a1[1] = sub_2519CF6EC();
  a1[2] = sub_2519C9630();
  a1[3] = sub_2519C916C();
  a1[4] = sub_2519CF740();
  result = sub_2519CF794();
  a1[5] = result;
  return result;
}

unint64_t sub_2519CF6EC()
{
  result = qword_27F46D538;
  if (!qword_27F46D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D538);
  }

  return result;
}

unint64_t sub_2519CF740()
{
  result = qword_27F46D540;
  if (!qword_27F46D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D540);
  }

  return result;
}

unint64_t sub_2519CF794()
{
  result = qword_27F46D548;
  if (!qword_27F46D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D548);
  }

  return result;
}

unint64_t sub_2519CF7F8()
{
  result = qword_27F46D550;
  if (!qword_27F46D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D550);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2519CF874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2519CF8BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2519CF920()
{
  result = qword_27F46D558;
  if (!qword_27F46D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D558);
  }

  return result;
}

unint64_t sub_2519CF978()
{
  result = qword_27F46D560;
  if (!qword_27F46D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D560);
  }

  return result;
}

unint64_t sub_2519CF9D0()
{
  result = qword_27F46D568;
  if (!qword_27F46D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D568);
  }

  return result;
}

HealthOntologyKit::OntologyRelationshipIdentifier __swiftcall OntologyRelationshipIdentifier.init(_:label:)(Swift::Int _, Swift::String_optional label)
{
  v3 = _;
  v4 = v2;
  if (!label.value._object)
  {
    v5 = sub_2519F0F18();
    MEMORY[0x253089BD0](v5);

    _ = MEMORY[0x253089BD0](41, 0xE100000000000000);
    label.value._countAndFlagsBits = 0x2820656E6F6ELL;
    label.value._object = 0xE600000000000000;
  }

  *v4 = v3;
  *(v4 + 8) = label;
  result.label = label.value;
  result.id = _;
  return result;
}

uint64_t OntologyRelationshipIdentifier.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t OntologyRelationshipIdentifier.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2519F0CA8();

  v3 = sub_2519F0F18();
  MEMORY[0x253089BD0](v3);

  MEMORY[0x253089BD0](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x253089BD0](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_2519CFBC4(uint64_t a1)
{
  v2 = sub_2519CFDB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2519CFC00(uint64_t a1)
{
  v2 = sub_2519CFDB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OntologyRelationshipIdentifier.encode(to:)(void *a1)
{
  sub_2519D0040(0, &qword_27F46D570, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CFDB8();
  sub_2519F1158();
  v14 = 0;
  sub_2519F0EE8();
  if (!v2)
  {
    v13 = 1;
    sub_2519F0ED8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2519CFDB8()
{
  result = qword_27F46D578;
  if (!qword_27F46D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D578);
  }

  return result;
}

uint64_t OntologyRelationshipIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_2519F1098();
  MEMORY[0x25308A270](v1);
  return sub_2519F10D8();
}

uint64_t OntologyRelationshipIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2519D0040(0, &qword_27F46D580, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2519CFDB8();
  sub_2519F1148();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2519F0E58();
    v17 = 1;
    v13 = sub_2519F0E48();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2519D0040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2519CFDB8();
    v7 = a3(a1, &type metadata for OntologyRelationshipIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2519D00A4(void *a1)
{
  a1[1] = sub_2519D00EC();
  a1[2] = sub_2519D0140();
  a1[3] = sub_2519D0194();
  a1[4] = sub_2519D01E8();
  result = sub_2519D023C();
  a1[5] = result;
  return result;
}

unint64_t sub_2519D00EC()
{
  result = qword_27F46D588;
  if (!qword_27F46D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D588);
  }

  return result;
}

unint64_t sub_2519D0140()
{
  result = qword_27F46D590;
  if (!qword_27F46D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D590);
  }

  return result;
}

unint64_t sub_2519D0194()
{
  result = qword_27F46D598;
  if (!qword_27F46D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D598);
  }

  return result;
}

unint64_t sub_2519D01E8()
{
  result = qword_27F46D5A0;
  if (!qword_27F46D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5A0);
  }

  return result;
}

unint64_t sub_2519D023C()
{
  result = qword_27F46D5A8;
  if (!qword_27F46D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5A8);
  }

  return result;
}

unint64_t sub_2519D0294()
{
  result = qword_27F46D5B0;
  if (!qword_27F46D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5B0);
  }

  return result;
}

unint64_t sub_2519D030C()
{
  result = qword_27F46D5B8;
  if (!qword_27F46D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5B8);
  }

  return result;
}

unint64_t sub_2519D0364()
{
  result = qword_27F46D5C0;
  if (!qword_27F46D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5C0);
  }

  return result;
}

unint64_t sub_2519D03BC()
{
  result = qword_27F46D5C8;
  if (!qword_27F46D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F46D5C8);
  }

  return result;
}

uint64_t sub_2519D0410()
{
  sub_2519D9640();
}

uint64_t sub_2519D0438(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_2519D04D4()
{
  sub_2519D9674();
}

uint64_t sub_2519D04FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *HgQLDecoderCore.__allocating_init(row:column:codingPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[10] = sub_2519D96A8(MEMORY[0x277D84F90]);
  sub_2519C1710(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *HgQLDecoderCore.init(row:column:codingPath:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = sub_2519D96A8(MEMORY[0x277D84F90]);
  sub_2519C1710(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t sub_2519D0670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2519D986C((v3 + 2), &v14);
  swift_beginAccess();
  v7 = v3[9];
  swift_beginAccess();
  v8 = v3[10];
  v9 = *(v6 + 80);
  v10 = *(v6 + 88);
  sub_2519C1710(&v14, v17);
  v18 = v7;
  v19 = v8;
  *&v14 = v9;
  *(&v14 + 1) = a2;
  v15 = v10;
  v16 = a3;
  v11 = type metadata accessor for HgQLKeyedDecodingContainer(0, &v14);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v14, v17, v11);

  swift_getWitnessTable();
  sub_2519F0E98();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_2519D07FC()
{
  v0 = sub_2519F0CE8();
  swift_allocError();
  v2 = v1;
  swift_beginAccess();

  sub_2519F0CC8();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D84168], v0);
  return swift_willThrow();
}

uint64_t sub_2519D08D8@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  if (v2)
  {
    v3 = v1[7];
    a1[3] = &type metadata for HgQLSingleValueDecodingContainer;
    a1[4] = sub_2519D98E8();
    v5 = swift_allocObject();
    *a1 = v5;
    sub_2519D986C((v1 + 2), (v5 + 2));
    swift_beginAccess();
    v6 = v1[9];
    v5[7] = v3;
    v5[8] = v2;
    v5[9] = v6;
  }

  else
  {
    v8 = sub_2519F0CE8();
    swift_allocError();
    v10 = v9;
    swift_beginAccess();

    sub_2519F0CC8();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
    return swift_willThrow();
  }
}

void *HgQLDecoderCore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t HgQLDecoderCore.__deallocating_deinit()
{
  HgQLDecoderCore.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2519D0AA8()
{
  sub_2519D9640();
}

uint64_t sub_2519D0ADC()
{
  sub_2519D9674();
}

BOOL sub_2519D0B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_2519F1178();
  (*(v3 + 32))(v7, v4);

  v5 = v7[3] == 0;
  sub_2519CC228(v7);
  return v5;
}

uint64_t sub_2519D0C34@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v67 = a4;
  v65 = a5;
  v63 = sub_2519F0C08();
  v62 = *(v63 - 8);
  v11 = MEMORY[0x28223BE20](v63, v10);
  v13 = &v61 - v12;
  v64 = *(a3 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v17 = a2[3];
  v18 = a2[5];
  v77 = a1;
  v69 = v17;
  v68 = v18;
  v19 = sub_2519F1178();
  (*(v16 + 32))(&v70, v19);

  if (*(&v71 + 1))
  {
    v73 = v70;
    v74 = v71;
    v75 = WitnessTable;
    v20 = a2[2];
    sub_2519F0928();
    if (!swift_conformsToProtocol2())
    {
      v36 = v6[6];
      if (qword_27F46CD80 != -1)
      {
        swift_once();
      }

      v37 = sub_2519F0D58();
      v38 = __swift_project_value_buffer(v37, qword_27F46D5D0);
      if (*(v36 + 16))
      {
        v39 = sub_2519EA784(v38);
        if (v40)
        {
          sub_2519CEBFC(*(v36 + 56) + 32 * v39, &v70);
          sub_2519F0BB8();
          if (swift_dynamicCast())
          {

            *&v70 = v76;
            swift_getWitnessTable();
            sub_2519F0B48();
          }
        }
      }
    }

    v21 = sub_2519F1178();
    v23 = v22;
    sub_2519D9DD8(0, &qword_27F46D700, &protocol descriptor for HgQLResultRowDecodable);
    v24 = sub_2519F0D28();

    v25 = v66;
    sub_2519D47A4(a3, &v73, v21, v23, v24, a3, v67, v13);
    if (v25)
    {
      sub_2519CC398(&v73);
    }

    else
    {

      v41 = v64;
      if ((*(v64 + 48))(v13, 1, a3) == 1)
      {
        (*(v62 + 8))(v13, v63);
        v43 = type metadata accessor for HgQLDecoderCore(0, v20, a2[4], v42);
        sub_2519D986C(v6, &v70);
        v44 = v6[5];
        sub_2519D9D70(0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2519F3F20;
        v46 = v69;
        v47 = v68;
        *(inited + 56) = v69;
        *(inited + 64) = v47;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v77, v46);
        v76 = v44;

        sub_2519D8A3C(inited);
        v49 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v70, 0, 0, v76);
        v50 = v6[6];

        swift_beginAccess();
        v49[10] = v50;

        *(&v71 + 1) = v43;
        WitnessTable = swift_getWitnessTable();
        *&v70 = v49;

        sub_2519F0B88();
        sub_2519CC398(&v73);
      }

      else
      {
        sub_2519CC398(&v73);
        v59 = *(v41 + 32);
        v60 = v61;
        v59(v61, v13, a3);
        return (v59)(v65, v60, a3);
      }
    }
  }

  else
  {
    sub_2519CC228(&v70);
    if (swift_conformsToProtocol2())
    {
      v28 = type metadata accessor for HgQLDecoderCore(0, a2[2], a2[4], v27);
      *(&v74 + 1) = &type metadata for PlaceholderRow;
      v75 = sub_2519DA2F4();
      v29 = v6[5];
      sub_2519D9D70(0);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2519F3F20;
      v31 = v69;
      v32 = v68;
      *(v30 + 56) = v69;
      *(v30 + 64) = v32;
      v33 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
      (*(*(v31 - 8) + 16))(v33, v77, v31);
      *&v70 = v29;

      sub_2519D8A3C(v30);
      v34 = HgQLDecoderCore.__allocating_init(row:column:codingPath:)(&v73, 0, 0, v70);
      v35 = v6[6];

      swift_beginAccess();
      v34[10] = v35;

      *(&v74 + 1) = v28;
      v75 = swift_getWitnessTable();
      *&v73 = v34;
      return sub_2519F0B88();
    }

    else
    {
      v51 = sub_2519F0CE8();
      swift_allocError();
      v53 = v52;
      sub_2519DA348(0);
      v67 = *(v54 + 48);
      v55 = v69;
      v56 = v68;
      v53[3] = v69;
      v53[4] = v56;
      v57 = __swift_allocate_boxed_opaque_existential_0(v53);
      (*(*(v55 - 8) + 16))(v57, v77, v55);
      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;

      sub_2519F0CA8();

      *&v73 = 0xD000000000000011;
      *(&v73 + 1) = 0x80000002519F6D00;
      v58 = sub_2519F1178();
      MEMORY[0x253089BD0](v58);

      sub_2519F0CC8();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84158], v51);
      return swift_willThrow();
    }
  }
}

uint64_t sub_2519D14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v49);
  sub_2519D9FD4(a2, a3, &v49, a4);
  result = sub_2519CC228(&v49);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      return LOBYTE(v47);
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      v49 = 0x2820656E6F6ELL;
      v50 = 0xE600000000000000;
      v15 = sub_2519F0F18();
      MEMORY[0x253089BD0](v15);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v47);
    }

    sub_2519DA6C4(a1, &v49);
    result = swift_dynamicCast();
    if (!result)
    {
      return 2;
    }

    v17 = *&v47;
    v16 = v48;
    v18 = HIBYTE(v48) & 0xF;
    v19 = *&v47 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v20 = *&v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ((v48 & 0x1000000000000000) == 0)
      {
        if ((v48 & 0x2000000000000000) != 0)
        {
          v49 = *&v47;
          v50 = v48 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v47) == 43)
          {
            if (v18)
            {
              if (--v18)
              {
                v22 = 0;
                v32 = &v49 + 1;
                while (1)
                {
                  v33 = *v32 - 48;
                  if (v33 > 9)
                  {
                    break;
                  }

                  v34 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    break;
                  }

                  v22 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    break;
                  }

                  ++v32;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v47) != 45)
          {
            if (v18)
            {
              v22 = 0;
              v37 = &v49;
              while (1)
              {
                v38 = *v37 - 48;
                if (v38 > 9)
                {
                  break;
                }

                v39 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v39 + v38;
                if (__OFADD__(v39, v38))
                {
                  break;
                }

                v37 = (v37 + 1);
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v18)
          {
            if (--v18)
            {
              v22 = 0;
              v26 = &v49 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  break;
                }

                ++v26;
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v47 & 0x1000000000000000) != 0)
          {
            result = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_2519F0D08();
          }

          v21 = *result;
          if (v21 == 43)
          {
            if (v19 >= 1)
            {
              v18 = v19 - 1;
              if (v19 != 1)
              {
                v22 = 0;
                if (result)
                {
                  v29 = (result + 1);
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      goto LABEL_69;
                    }

                    v31 = 10 * v22;
                    if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v22 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      goto LABEL_69;
                    }

                    ++v29;
                    if (!--v18)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v21 != 45)
          {
            if (v19)
            {
              v22 = 0;
              if (result)
              {
                while (1)
                {
                  v35 = *result - 48;
                  if (v35 > 9)
                  {
                    goto LABEL_69;
                  }

                  v36 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v19)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v22 = 0;
            LOBYTE(v18) = 1;
LABEL_70:
            LOBYTE(v47) = v18;
            if (v18)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v19 >= 1)
          {
            v18 = v19 - 1;
            if (v19 != 1)
            {
              v22 = 0;
              if (result)
              {
                v23 = (result + 1);
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_69;
                  }

                  v25 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v25 - v24;
                  if (__OFSUB__(v25, v24))
                  {
                    goto LABEL_69;
                  }

                  ++v23;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v18) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v22 = sub_2519D8B48(v17, v16, 10);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
LABEL_71:
        v49 = 0x2820656E6F6ELL;
        v50 = 0xE600000000000000;
        v47 = *&v22;
        v40 = sub_2519F0F18();
        MEMORY[0x253089BD0](v40);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v49 = 0;
    if (sub_2519D9548(v17, v16, &v49))
    {
      MEMORY[0x253089DC0](*&v49);
    }

    sub_2519F09B8();
    v41 = sub_2519F09A8();
    v43 = v42;

    (*(v10 + 8))(v13, v9);
    if (v43 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v41, v43);

      return v49;
    }

    return 2;
  }

  return result;
}

unsigned __int8 *sub_2519D1B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v49);
  sub_2519D9FD4(a2, a3, &v49, a4);
  result = sub_2519CC228(&v49);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      return *&v47;
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      v49 = 0x2820656E6F6ELL;
      v50 = 0xE600000000000000;
      v15 = sub_2519F0F18();
      MEMORY[0x253089BD0](v15);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v47);
    }

    sub_2519DA6C4(a1, &v49);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v17 = *&v47;
    v16 = v48;
    v18 = HIBYTE(v48) & 0xF;
    v19 = *&v47 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v20 = *&v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ((v48 & 0x1000000000000000) == 0)
      {
        if ((v48 & 0x2000000000000000) != 0)
        {
          v49 = *&v47;
          v50 = v48 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v47) == 43)
          {
            if (v18)
            {
              if (--v18)
              {
                v22 = 0;
                v32 = &v49 + 1;
                while (1)
                {
                  v33 = *v32 - 48;
                  if (v33 > 9)
                  {
                    break;
                  }

                  v34 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    break;
                  }

                  v22 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    break;
                  }

                  ++v32;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v47) != 45)
          {
            if (v18)
            {
              v22 = 0;
              v37 = &v49;
              while (1)
              {
                v38 = *v37 - 48;
                if (v38 > 9)
                {
                  break;
                }

                v39 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v39 + v38;
                if (__OFADD__(v39, v38))
                {
                  break;
                }

                v37 = (v37 + 1);
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v18)
          {
            if (--v18)
            {
              v22 = 0;
              v26 = &v49 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  break;
                }

                v22 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  break;
                }

                ++v26;
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v47 & 0x1000000000000000) != 0)
          {
            result = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v21 = *result;
          if (v21 == 43)
          {
            if (v19 >= 1)
            {
              v18 = v19 - 1;
              if (v19 != 1)
              {
                v22 = 0;
                if (result)
                {
                  v29 = result + 1;
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      goto LABEL_69;
                    }

                    v31 = 10 * v22;
                    if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v22 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      goto LABEL_69;
                    }

                    ++v29;
                    if (!--v18)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v21 != 45)
          {
            if (v19)
            {
              v22 = 0;
              if (result)
              {
                while (1)
                {
                  v35 = *result - 48;
                  if (v35 > 9)
                  {
                    goto LABEL_69;
                  }

                  v36 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v19)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v22 = 0;
            LOBYTE(v18) = 1;
LABEL_70:
            LOBYTE(v47) = v18;
            if (v18)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v19 >= 1)
          {
            v18 = v19 - 1;
            if (v19 != 1)
            {
              v22 = 0;
              if (result)
              {
                v23 = result + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_69;
                  }

                  v25 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v22 = v25 - v24;
                  if (__OFSUB__(v25, v24))
                  {
                    goto LABEL_69;
                  }

                  ++v23;
                  if (!--v18)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v18) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v22 = sub_2519D8B48(v17, v16, 10);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
LABEL_71:
        v49 = 0x2820656E6F6ELL;
        v50 = 0xE600000000000000;
        v47 = *&v22;
        v40 = sub_2519F0F18();
        MEMORY[0x253089BD0](v40);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v49 = 0;
    if (sub_2519D9548(v17, v16, &v49))
    {
      MEMORY[0x253089DC0](*&v49);
    }

    sub_2519F09B8();
    v41 = sub_2519F09A8();
    v43 = v42;

    (*(v10 + 8))(v13, v9);
    if (v43 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v41, v43);

      return v49;
    }

    return 0;
  }

  return result;
}

unsigned __int8 *sub_2519D218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v49);
  sub_2519D9FD4(a2, a3, &v49, a4);
  result = sub_2519CC228(&v49);
  if (!v4)
  {
    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      return v47;
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      v49 = 0x2820656E6F6ELL;
      v50 = 0xE600000000000000;
      v15 = sub_2519F0F18();
      MEMORY[0x253089BD0](v15);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v49);
    if (swift_dynamicCast())
    {
      return v47;
    }

    sub_2519DA6C4(a1, &v49);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v17 = v47;
    v16 = v48;
    v18 = HIBYTE(v48) & 0xF;
    v19 = v47 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v20 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_72;
    }

    if ((v48 & 0x1000000000000000) != 0)
    {

      v22 = sub_2519D8B48(v17, v16, 10);
      v45 = v44;

      if (v45)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    if ((v48 & 0x2000000000000000) != 0)
    {
      v49 = v47;
      v50 = v48 & 0xFFFFFFFFFFFFFFLL;
      if (v47 == 43)
      {
        if (v18)
        {
          if (--v18)
          {
            v22 = 0;
            v32 = &v49 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v18)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v47 != 45)
      {
        if (v18)
        {
          v22 = 0;
          v37 = &v49;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            v37 = (v37 + 1);
            if (!--v18)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v26 = &v49 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v18)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v47 & 0x1000000000000000) != 0)
      {
        result = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2519F0D08();
      }

      v21 = *result;
      if (v21 == 43)
      {
        if (v19 >= 1)
        {
          v18 = v19 - 1;
          if (v19 != 1)
          {
            v22 = 0;
            if (result)
            {
              v29 = result + 1;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_69;
                }

                v31 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  goto LABEL_69;
                }

                v22 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_69;
                }

                ++v29;
                if (!--v18)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v21 != 45)
      {
        if (v19)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              v35 = *result - 48;
              if (v35 > 9)
              {
                goto LABEL_69;
              }

              v36 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_69;
              }

              v22 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v19)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v22 = 0;
        LOBYTE(v18) = 1;
LABEL_70:
        LOBYTE(v47) = v18;
        if ((v18 & 1) == 0)
        {
LABEL_71:
          v49 = 0x2820656E6F6ELL;
          v50 = 0xE600000000000000;
          v47 = v22;
          v40 = sub_2519F0F18();
          MEMORY[0x253089BD0](v40);

          MEMORY[0x253089BD0](41, 0xE100000000000000);
        }

LABEL_72:
        v49 = 0;
        if (sub_2519D9548(v17, v16, &v49))
        {

          return v49;
        }

        sub_2519F09B8();
        v41 = sub_2519F09A8();
        v43 = v42;

        (*(v10 + 8))(v13, v9);
        if (v43 >> 60 != 15)
        {
          sub_2519F0828();
          swift_allocObject();
          sub_2519F0818();
          sub_2519F0808();
          sub_2519DA720(v41, v43);

          return v49;
        }

        return 0;
      }

      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_69;
              }

              v25 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_69;
              }

              v22 = v25 - v24;
              if (__OFSUB__(v25, v24))
              {
                goto LABEL_69;
              }

              ++v23;
              if (!--v18)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v18) = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  return result;
}

unsigned __int8 *sub_2519D27F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2519F09C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, v47);
  sub_2519D9FD4(a2, a3, v47, a4);
  result = sub_2519CC228(v47);
  if (!v4)
  {
    sub_2519DA6C4(a1, v47);
    if (swift_dynamicCast())
    {
      return *&v45;
    }

    sub_2519DA6C4(a1, v47);
    if (swift_dynamicCast())
    {
      return *&v45;
    }

    sub_2519DA6C4(a1, v47);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v45);
    }

    sub_2519DA6C4(a1, v47);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v16 = *&v45;
    v15 = v46;
    v17 = HIBYTE(v46) & 0xF;
    v18 = *&v45 & 0xFFFFFFFFFFFFLL;
    if ((v46 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v46) & 0xF;
    }

    else
    {
      v19 = *&v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if ((v46 & 0x1000000000000000) == 0)
      {
        if ((v46 & 0x2000000000000000) != 0)
        {
          v47[0] = v45;
          *&v47[1] = v46 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v45) == 43)
          {
            if (v17)
            {
              if (--v17)
              {
                v21 = 0;
                v31 = v47 + 1;
                while (1)
                {
                  v32 = *v31 - 48;
                  if (v32 > 9)
                  {
                    break;
                  }

                  v33 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    break;
                  }

                  v21 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    break;
                  }

                  ++v31;
                  if (!--v17)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_82:
            __break(1u);
            return result;
          }

          if (LOBYTE(v45) != 45)
          {
            if (v17)
            {
              v21 = 0;
              v36 = v47;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                v36 = (v36 + 1);
                if (!--v17)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v17)
          {
            if (--v17)
            {
              v21 = 0;
              v25 = v47 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  break;
                }

                v21 = v27 - v26;
                if (__OFSUB__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v17)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v45 & 0x1000000000000000) != 0)
          {
            result = ((v46 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v20 = *result;
          if (v20 == 43)
          {
            if (v18 >= 1)
            {
              v17 = v18 - 1;
              if (v18 != 1)
              {
                v21 = 0;
                if (result)
                {
                  v28 = result + 1;
                  while (1)
                  {
                    v29 = *v28 - 48;
                    if (v29 > 9)
                    {
                      goto LABEL_69;
                    }

                    v30 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v21 = v30 + v29;
                    if (__OFADD__(v30, v29))
                    {
                      goto LABEL_69;
                    }

                    ++v28;
                    if (!--v17)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_81;
          }

          if (v20 != 45)
          {
            if (v18)
            {
              v21 = 0;
              if (result)
              {
                while (1)
                {
                  v34 = *result - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_69;
                  }

                  v35 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v21 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v18)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v21 = 0;
            LOBYTE(v17) = 1;
LABEL_70:
            LOBYTE(v45) = v17;
            if (v17)
            {
              goto LABEL_71;
            }

LABEL_77:

            return v21;
          }

          if (v18 >= 1)
          {
            v17 = v18 - 1;
            if (v18 != 1)
            {
              v21 = 0;
              if (result)
              {
                v22 = result + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_69;
                  }

                  v24 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v21 = v24 - v23;
                  if (__OFSUB__(v24, v23))
                  {
                    goto LABEL_69;
                  }

                  ++v22;
                  if (!--v17)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v17) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v21 = sub_2519D8B48(v16, v15, 10);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

LABEL_71:
    v47[0] = 0.0;
    if (sub_2519D9548(v16, v15, v47))
    {
      MEMORY[0x253089DC0](v47[0]);
    }

    sub_2519F09B8();
    v39 = sub_2519F09A8();
    v41 = v40;

    (*(v10 + 8))(v13, v9);
    if (v41 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v39, v41);

      return *&v47[0];
    }

    return 0;
  }

  return result;
}

unsigned __int8 *sub_2519D2DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v11 = sub_2519F09C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v57);
  sub_2519D9FD4(a2, a3, &v57, a4);
  result = sub_2519CC228(&v57);
  if (!v6)
  {
    v53 = v15;
    v54 = v12;
    sub_2519DA6C4(a1, &v57);
    if (swift_dynamicCast())
    {
      v17 = 0;
      v18 = LODWORD(v55);
LABEL_76:
      LOBYTE(v57) = v17;
      return (v18 | (v17 << 32));
    }

    sub_2519DA6C4(a1, &v57);
    if (swift_dynamicCast())
    {
      v57 = 0x2820656E6F6ELL;
      v58 = 0xE600000000000000;
      v19 = sub_2519F0F18();
      MEMORY[0x253089BD0](v19);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v57);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v55);
    }

    sub_2519DA6C4(a1, &v57);
    result = swift_dynamicCast();
    if (!result)
    {
LABEL_75:
      v18 = 0;
      v17 = 1;
      goto LABEL_76;
    }

    v21 = *&v55;
    v20 = v56;
    v22 = HIBYTE(v56) & 0xF;
    v23 = *&v55 & 0xFFFFFFFFFFFFLL;
    if ((v56 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v56) & 0xF;
    }

    else
    {
      v24 = *&v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      if ((v56 & 0x1000000000000000) == 0)
      {
        if ((v56 & 0x2000000000000000) != 0)
        {
          v57 = *&v55;
          v58 = v56 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v55) == 43)
          {
            if (v22)
            {
              if (--v22)
              {
                v26 = 0;
                v36 = &v57 + 1;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    break;
                  }

                  v38 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    break;
                  }

                  v26 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    break;
                  }

                  ++v36;
                  if (!--v22)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_85:
            __break(1u);
            return result;
          }

          if (LOBYTE(v55) != 45)
          {
            if (v22)
            {
              v26 = 0;
              v41 = &v57;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                v43 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  break;
                }

                v41 = (v41 + 1);
                if (!--v22)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v22)
          {
            if (--v22)
            {
              v26 = 0;
              v30 = &v57 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v32 - v31;
                if (__OFSUB__(v32, v31))
                {
                  break;
                }

                ++v30;
                if (!--v22)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v55 & 0x1000000000000000) != 0)
          {
            result = ((v56 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v25 = *result;
          if (v25 == 43)
          {
            if (v23 >= 1)
            {
              v22 = v23 - 1;
              if (v23 != 1)
              {
                v26 = 0;
                if (result)
                {
                  v33 = result + 1;
                  while (1)
                  {
                    v34 = *v33 - 48;
                    if (v34 > 9)
                    {
                      goto LABEL_69;
                    }

                    v35 = 10 * v26;
                    if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v26 = v35 + v34;
                    if (__OFADD__(v35, v34))
                    {
                      goto LABEL_69;
                    }

                    ++v33;
                    if (!--v22)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_84;
          }

          if (v25 != 45)
          {
            if (v23)
            {
              v26 = 0;
              if (result)
              {
                while (1)
                {
                  v39 = *result - 48;
                  if (v39 > 9)
                  {
                    goto LABEL_69;
                  }

                  v40 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v26 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v23)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v26 = 0;
            LOBYTE(v22) = 1;
LABEL_70:
            LOBYTE(v55) = v22;
            if (v22)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v23 >= 1)
          {
            v22 = v23 - 1;
            if (v23 != 1)
            {
              v26 = 0;
              if (result)
              {
                v27 = result + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_69;
                  }

                  v29 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v26 = v29 - v28;
                  if (__OFSUB__(v29, v28))
                  {
                    goto LABEL_69;
                  }

                  ++v27;
                  if (!--v22)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v22) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v26 = sub_2519D8B48(v21, v20, 10);
      v51 = v50;

      if ((v51 & 1) == 0)
      {
LABEL_71:
        v57 = 0x2820656E6F6ELL;
        v58 = 0xE600000000000000;
        v55 = *&v26;
        v44 = sub_2519F0F18();
        MEMORY[0x253089BD0](v44);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v57 = 0;
    if (sub_2519D9548(v21, v20, &v57))
    {
      MEMORY[0x253089DC0](*&v57);
    }

    v46 = v53;
    v45 = v54;
    sub_2519F09B8();
    v47 = sub_2519F09A8();
    v49 = v48;

    (*(v45 + 8))(v46, v11);
    if (v49 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v47, v49);

      v17 = 0;
      v18 = v57;
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  return result;
}

unsigned __int8 *sub_2519D3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v11 = sub_2519F09C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2519DA6C4(a1, &v55);
  sub_2519D9FD4(a2, a3, &v55, a4);
  result = sub_2519CC228(&v55);
  if (!v6)
  {
    v51 = v15;
    v52 = v12;
    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      return *&v53;
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      v55 = 0x2820656E6F6ELL;
      v56 = 0xE600000000000000;
      v17 = sub_2519F0F18();
      MEMORY[0x253089BD0](v17);

      MEMORY[0x253089BD0](41, 0xE100000000000000);
    }

    sub_2519DA6C4(a1, &v55);
    if (swift_dynamicCast())
    {
      MEMORY[0x253089DC0](v53);
    }

    sub_2519DA6C4(a1, &v55);
    result = swift_dynamicCast();
    if (!result)
    {
      return 0;
    }

    v19 = *&v53;
    v18 = v54;
    v20 = HIBYTE(v54) & 0xF;
    v21 = *&v53 & 0xFFFFFFFFFFFFLL;
    if ((v54 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v22 = *&v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if ((v54 & 0x1000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          v55 = *&v53;
          v56 = v54 & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v53) == 43)
          {
            if (v20)
            {
              if (--v20)
              {
                v24 = 0;
                v34 = &v55 + 1;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    break;
                  }

                  v24 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_69;
            }

LABEL_84:
            __break(1u);
            return result;
          }

          if (LOBYTE(v53) != 45)
          {
            if (v20)
            {
              v24 = 0;
              v39 = &v55;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                v41 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                v39 = (v39 + 1);
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

          if (v20)
          {
            if (--v20)
            {
              v24 = 0;
              v28 = &v55 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v30 - v29;
                if (__OFSUB__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v20)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }
        }

        else
        {
          if ((*&v53 & 0x1000000000000000) != 0)
          {
            result = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_2519F0D08();
          }

          v23 = *result;
          if (v23 == 43)
          {
            if (v21 >= 1)
            {
              v20 = v21 - 1;
              if (v21 != 1)
              {
                v24 = 0;
                if (result)
                {
                  v31 = result + 1;
                  while (1)
                  {
                    v32 = *v31 - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_69;
                    }

                    v33 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_69;
                    }

                    v24 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_69;
                    }

                    ++v31;
                    if (!--v20)
                    {
                      goto LABEL_70;
                    }
                  }
                }

                goto LABEL_61;
              }

              goto LABEL_69;
            }

            goto LABEL_83;
          }

          if (v23 != 45)
          {
            if (v21)
            {
              v24 = 0;
              if (result)
              {
                while (1)
                {
                  v37 = *result - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_69;
                  }

                  v38 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_69;
                  }

                  ++result;
                  if (!--v21)
                  {
                    goto LABEL_61;
                  }
                }
              }

              goto LABEL_61;
            }

LABEL_69:
            v24 = 0;
            LOBYTE(v20) = 1;
LABEL_70:
            LOBYTE(v53) = v20;
            if (v20)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          if (v21 >= 1)
          {
            v20 = v21 - 1;
            if (v21 != 1)
            {
              v24 = 0;
              if (result)
              {
                v25 = result + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_69;
                  }

                  v27 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v24 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    goto LABEL_69;
                  }

                  ++v25;
                  if (!--v20)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          __break(1u);
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v24 = sub_2519D8B48(v19, v18, 10);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_71:
        v55 = 0x2820656E6F6ELL;
        v56 = 0xE600000000000000;
        v53 = *&v24;
        v42 = sub_2519F0F18();
        MEMORY[0x253089BD0](v42);

        MEMORY[0x253089BD0](41, 0xE100000000000000);
      }
    }

LABEL_72:
    v55 = 0;
    if (sub_2519D9548(v19, v18, &v55))
    {
      MEMORY[0x253089DC0](*&v55);
    }

    v44 = v51;
    v43 = v52;
    sub_2519F09B8();
    v45 = sub_2519F09A8();
    v47 = v46;

    (*(v43 + 8))(v44, v11);
    if (v47 >> 60 != 15)
    {
      sub_2519F0828();
      swift_allocObject();
      sub_2519F0818();
      sub_2519F0808();
      sub_2519DA720(v45, v47);

      return v55;
    }

    return 0;
  }

  return result;
}