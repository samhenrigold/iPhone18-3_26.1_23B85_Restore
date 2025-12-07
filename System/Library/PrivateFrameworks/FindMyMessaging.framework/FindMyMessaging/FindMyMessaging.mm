void sub_24AED0730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = &v4[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2 && (v14 = *(v11 + 1), (v15 = sub_24AED0D44(a2)) != 0))
    {
      if (a1)
      {
        v16 = v15;
        v17 = [a1 serviceIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = sub_24AF353AC();
          v21 = v20;

          v22 = sub_24AF31BD8(v16);

          v23 = sub_24AF3557C();
          (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v13;
          v24[5] = v14;
          v24[6] = v19;
          v24[7] = v21;
          v24[8] = v22;
          sub_24AF08F10(0, 0, v10, a4, v24);

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v41 = sub_24AF3529C();
        __swift_project_value_buffer(v41, qword_27EFC4BE8);
        v42 = v4;
        v26 = sub_24AF3527C();
        v43 = sub_24AF3570C();

        if (os_log_type_enabled(v26, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          *(v44 + 4) = v42;
          *v45 = v42;
          v46 = v42;
          _os_log_impl(&dword_24AECF000, v26, v43, "MessagingDelegateTrampoline: serviceIdentifier for %@", v44, 0xCu);
          sub_24AEE2E10(v45, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v45, -1, -1);
          MEMORY[0x24C236490](v44, -1, -1);
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v25 = sub_24AF3529C();
      __swift_project_value_buffer(v25, qword_27EFC4BE8);

      v26 = sub_24AF3527C();
      v27 = sub_24AF3570C();
      if (!os_log_type_enabled(v26, v27))
      {

LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      if (a2)
      {
        v30 = v29;

        v31 = MEMORY[0x24C235500](a2, MEMORY[0x277D84F70] + 8);
        v33 = sub_24AEF599C(v31, v32, &v48);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_24AECF000, v26, v27, "MessagingDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C236490](v30, -1, -1);
        MEMORY[0x24C236490](v28, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v34 = sub_24AF3529C();
  __swift_project_value_buffer(v34, qword_27EFC4BE8);
  v35 = v4;
  v47 = sub_24AF3527C();
  v36 = sub_24AF3570C();

  if (os_log_type_enabled(v47, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v35;
    *v38 = v35;
    v39 = v35;
    _os_log_impl(&dword_24AECF000, v47, v36, "MessagingDelegateTrampoline: No delegate for %@", v37, 0xCu);
    sub_24AEE2E10(v38, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v38, -1, -1);
    MEMORY[0x24C236490](v37, -1, -1);
  }

  v40 = v47;
}

uint64_t sub_24AED0CA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = sub_24AF3549C();
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a1;
  sub_24AED0730(a3, v10, a5, a6);
}

uint64_t sub_24AED0D44(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24AF359AC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24AED0E50(i, v5);
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24AF3598C();
    sub_24AF359BC();
    sub_24AF359CC();
    sub_24AF3599C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_24AED0E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AED0EAC(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_24AED0F00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24AED0F10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED0F48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AED1020()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_24AED10C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectionState];
  *a2 = result;
  return result;
}

uint64_t sub_24AED1110()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AED1164(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AED1174()
{
  v1 = type metadata accessor for MessageContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v3, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v3, v6);
  }

  v9(v5 + *(v1 + 20), v6);

  v10 = *(v1 + 44);
  v11 = sub_24AF351BC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED1358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 104) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MessageContext(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v9 + v11 + 8) & ~v11;
  v13 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v14 = v4 + v8;
  (*(*(v5 - 8) + 8))(v14, v5);
  sub_24AED6198(*(v14 + v6[12]), *(v14 + v6[12] + 8));

  v15 = v4 + v12;
  v16 = sub_24AF3521C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v4 + v12, 1, v16);
  v19 = *(v17 + 8);
  if (!v18)
  {
    v19(v4 + v12, v16);
  }

  v19(v15 + *(v10 + 20), v16);

  v20 = *(v10 + 44);
  v21 = sub_24AF351BC();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v7 | v11 | 7);
}

uint64_t sub_24AED15F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 104) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessageContext(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v14 = v4 + v8;
  (*(*(v5 - 8) + 8))(v14, v5);
  sub_24AED6198(*(v14 + v6[12]), *(v14 + v6[12] + 8));
  v15 = v4 + v12;
  v16 = sub_24AF3521C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v4 + v12, 1, v16);
  v19 = *(v17 + 8);
  if (!v18)
  {
    v19(v4 + v12, v16);
  }

  v19(v15 + *(v10 + 20), v16);

  v20 = *(v10 + 44);
  v21 = sub_24AF351BC();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v7 | v11 | 7);
}

uint64_t sub_24AED187C()
{
  v1 = type metadata accessor for MessagingOptions(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v9 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);

  v7 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED1A34()
{
  v1 = type metadata accessor for MessagingOptions(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v9 = *(*(v1 - 8) + 64);

  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);

  v7 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED1BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v19 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  return MEMORY[0x2821FE8E8](v4, ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v19 = *(*(v10 - 8) + 64);

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  return MEMORY[0x2821FE8E8](v4, ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v18 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v12 = v4 + v8;
  (*(*(v5 - 8) + 8))(v12, v5);
  sub_24AED6198(*(v12 + v6[12]), *(v12 + v6[12] + 8));

  v19 = (v9 + v11 + 8) & ~v11;
  v13 = sub_24AF3521C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v4 + v19, v13);

  v16 = *(v10 + 28);
  if (!(*(v14 + 48))(v4 + v19 + v16, 1, v13))
  {
    v15(v4 + v19 + v16, v13);
  }

  return MEMORY[0x2821FE8E8](v4, ((((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED22F8()
{
  v1 = *(v0 + 16);
  v20 = *(v0 + 24);
  v2 = sub_24AF3513C();
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v4 = (v22 + 40) & ~v22;
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MessagingOptions(0);
  v7 = *(*(v6 - 8) + 80);
  v18 = *(*(v6 - 8) + 64);
  v23 = v1;
  v21 = type metadata accessor for Message(0, v1, v20, v8);
  v9 = *(*(v21 - 8) + 80);
  v17 = *(*(v21 - 8) + 64);

  (*(v3 + 8))(v0 + v4, v2);

  v19 = (v5 + v7 + 8) & ~v7;
  v10 = sub_24AF3521C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v19, v10);

  v13 = *(v6 + 28);
  if (!(*(v11 + 48))(v0 + v19 + v13, 1, v10))
  {
    v12(v0 + v19 + v13, v10);
  }

  v14 = (v19 + v18 + v9) & ~v9;

  (*(*(v23 - 8) + 8))(v0 + v14);
  v15 = v0 + v14 + *(v21 + 40);
  sub_24AED6198(*v15, *(v15 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v22 | v7 | v9 | 7);
}

uint64_t sub_24AED2600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v20 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  v18 = (v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_24AED6198(*(v4 + v18), *(v4 + v18 + 8));

  return MEMORY[0x2821FE8E8](v4, ((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED287C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for MessagingOptions(0);
  v4 = *(*(v3 - 8) + 80);
  v16 = *(*(v3 - 8) + 64);
  v18 = v1;
  v17 = type metadata accessor for Message(0, v1, v2, v5);
  v6 = *(*(v17 - 8) + 80);
  v15 = *(*(v17 - 8) + 64);

  sub_24AED6198(*(v0 + 5), *(v0 + 6));

  v7 = &v0[(v4 + 64) & ~v4];
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v11 = *(v3 + 28);
  if (!(*(v9 + 48))(&v7[v11], 1, v8))
  {
    v10(&v7[v11], v8);
  }

  v12 = (((v4 + 64) & ~v4) + v16 + v6) & ~v6;

  (*(*(v18 - 8) + 8))(&v0[v12]);
  v13 = &v0[v12 + *(v17 + 40)];
  sub_24AED6198(*v13, *(v13 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v6 | 7);
}

uint64_t sub_24AED2B04@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24AED2B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AED2C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AF3521C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24AED2DB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED2DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AED2ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED2F04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AED2FF0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AED3038()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AED3074()
{
  v1 = type metadata accessor for MessageContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v3, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v3, v6);
  }

  v9(v5 + *(v1 + 20), v6);

  v10 = *(v1 + 44);
  v11 = sub_24AF351BC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 104) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MessageContext(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v9 + v11 + 8) & ~v11;
  v13 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v14 = v4 + v8;
  (*(*(v5 - 8) + 8))(v14, v5);
  sub_24AED6198(*(v14 + v6[12]), *(v14 + v6[12] + 8));

  v15 = v4 + v12;
  v16 = sub_24AF3521C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v4 + v12, 1, v16);
  v19 = *(v17 + 8);
  if (!v18)
  {
    v19(v4 + v12, v16);
  }

  v19(v15 + *(v10 + 20), v16);

  v20 = *(v10 + 44);
  v21 = sub_24AF351BC();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v7 | v11 | 7);
}

uint64_t sub_24AED34F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 104) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessageContext(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v14 = v4 + v8;
  (*(*(v5 - 8) + 8))(v14, v5);
  sub_24AED6198(*(v14 + v6[12]), *(v14 + v6[12] + 8));
  v15 = v4 + v12;
  v16 = sub_24AF3521C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v4 + v12, 1, v16);
  v19 = *(v17 + 8);
  if (!v18)
  {
    v19(v4 + v12, v16);
  }

  v19(v15 + *(v10 + 20), v16);

  v20 = *(v10 + 44);
  v21 = sub_24AF351BC();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);

  return MEMORY[0x2821FE8E8](v4, v12 + v13, v7 | v11 | 7);
}

uint64_t sub_24AED377C()
{
  v1 = type metadata accessor for MessagingOptions(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v9 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);

  v7 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED3934()
{
  v1 = type metadata accessor for MessagingOptions(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v9 = *(*(v1 - 8) + 64);

  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);

  v7 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED3ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v19 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  return MEMORY[0x2821FE8E8](v4, ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED3D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v19 = *(*(v10 - 8) + 64);

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  return MEMORY[0x2821FE8E8](v4, ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED3F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v18 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v12 = v4 + v8;
  (*(*(v5 - 8) + 8))(v12, v5);
  sub_24AED6198(*(v12 + v6[12]), *(v12 + v6[12] + 8));

  v19 = (v9 + v11 + 8) & ~v11;
  v13 = sub_24AF3521C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v4 + v19, v13);

  v16 = *(v10 + 28);
  if (!(*(v14 + 48))(v4 + v19 + v16, 1, v13))
  {
    v15(v4 + v19 + v16, v13);
  }

  return MEMORY[0x2821FE8E8](v4, ((((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED41F8()
{
  v1 = *(v0 + 16);
  v20 = *(v0 + 24);
  v2 = sub_24AF3513C();
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v4 = (v22 + 40) & ~v22;
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MessagingOptions(0);
  v7 = *(*(v6 - 8) + 80);
  v18 = *(*(v6 - 8) + 64);
  v23 = v1;
  v21 = type metadata accessor for Message(0, v1, v20, v8);
  v9 = *(*(v21 - 8) + 80);
  v17 = *(*(v21 - 8) + 64);

  (*(v3 + 8))(v0 + v4, v2);

  v19 = (v5 + v7 + 8) & ~v7;
  v10 = sub_24AF3521C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v19, v10);

  v13 = *(v6 + 28);
  if (!(*(v11 + 48))(v0 + v19 + v13, 1, v10))
  {
    v12(v0 + v19 + v13, v10);
  }

  v14 = (v19 + v18 + v9) & ~v9;

  (*(*(v23 - 8) + 8))(v0 + v14);
  v15 = v0 + v14 + *(v21 + 40);
  sub_24AED6198(*v15, *(v15 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v22 | v7 | v9 | 7);
}

uint64_t sub_24AED4500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for Message(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 56) & ~v7;
  v9 = *(*v6 + 64);
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v20 = *(*(v10 - 8) + 64);
  swift_unknownObjectRelease();

  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v13, v5);
  sub_24AED6198(*(v13 + v6[12]), *(v13 + v6[12] + 8));
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v4 + v12, v14);

  v17 = *(v10 + 28);
  if (!(*(v15 + 48))(v4 + v12 + v17, 1, v14))
  {
    v16(v4 + v12 + v17, v14);
  }

  v18 = (v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_24AED6198(*(v4 + v18), *(v4 + v18 + 8));

  return MEMORY[0x2821FE8E8](v4, ((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | v11 | 7);
}

uint64_t sub_24AED477C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for MessagingOptions(0);
  v4 = *(*(v3 - 8) + 80);
  v16 = *(*(v3 - 8) + 64);
  v18 = v1;
  v17 = type metadata accessor for Message(0, v1, v2, v5);
  v6 = *(*(v17 - 8) + 80);
  v15 = *(*(v17 - 8) + 64);

  sub_24AED6198(*(v0 + 5), *(v0 + 6));

  v7 = &v0[(v4 + 64) & ~v4];
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v11 = *(v3 + 28);
  if (!(*(v9 + 48))(&v7[v11], 1, v8))
  {
    v10(&v7[v11], v8);
  }

  v12 = (((v4 + 64) & ~v4) + v16 + v6) & ~v6;

  (*(*(v18 - 8) + 8))(&v0[v12]);
  v13 = &v0[v12 + *(v17 + 40)];
  sub_24AED6198(*v13, *(v13 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v6 | 7);
}

uint64_t sub_24AED49E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AED4AB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AF3521C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 16);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_24AF351BC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24AED4C3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24AF3521C();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 16) = (a2 - 1);
  }

  else
  {
    v15 = sub_24AF351BC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24AED4DC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AED4E00()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_24AED6198(*(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24AED4E74()
{
  v1 = sub_24AF3521C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AED4F68()
{
  v1 = sub_24AF3521C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AED5058()
{
  v1 = type metadata accessor for MessageContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v3, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v3, v6);
  }

  v9(v5 + *(v1 + 20), v6);

  v10 = *(v1 + 44);
  v11 = sub_24AF351BC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED5244()
{
  v1 = sub_24AF3513C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for MessageContext(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v17 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v9 = v0 + v8;
  v10 = sub_24AF3521C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v0 + v8, 1, v10);
  v13 = *(v11 + 8);
  if (!v12)
  {
    v13(v0 + v8, v10);
  }

  v13(v9 + *(v6 + 20), v10);

  v14 = *(v6 + 44);
  v15 = sub_24AF351BC();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v8 + v17, v3 | v7 | 7);
}

uint64_t sub_24AED54D4()
{
  v1 = type metadata accessor for MessageContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 112) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_24AED6198(*(v0 + 72), *(v0 + 80));

  v5 = v0 + v3;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v3, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v3, v6);
  }

  v9(v5 + *(v1 + 20), v6);

  v10 = *(v1 + 44);
  v11 = sub_24AF351BC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED56FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SessionMessagingInvite.account.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t SessionMessagingInvite.fromID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t sub_24AED57BC()
{
  sub_24AF05840();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SessionMessagingInvite.context<A>()(uint64_t a1, uint64_t a2)
{
  sub_24AF3508C();
  swift_allocObject();
  sub_24AF3507C();
  sub_24AF3505C();
}

uint64_t SessionMessagingInvite.accept<A>(context:heartbeatConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  *(v5 + 40) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 56) = v6;
  v7 = *(v4 + 64);
  *(v5 + 72) = *(a2 + 32);
  *(v5 + 80) = v7;
  return MEMORY[0x2822009F8](sub_24AED58F0, 0, 0);
}

uint64_t sub_24AED58F0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  *(v0 + 88) = sub_24AF3509C();
  *(v0 + 96) = v1;

  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_24AED59F4, v2, 0);
}

uint64_t sub_24AED59F4()
{
  v1 = *(v0 + 96);
  v5 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_24AED5ACC;

  return sub_24AF069F8(sub_24AED618C, v2);
}

uint64_t sub_24AED5ACC()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_24AED5D68, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_24AED5C40;

    return sub_24AF07168();
  }
}

uint64_t sub_24AED5C40(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 144) = v1;
    v5 = sub_24AED5EA8;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_24AED5DD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AED5D68()
{

  *(v0 + 144) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24AED5EA8, 0, 0);
}

uint64_t sub_24AED5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = v4;
  v5 = *(v4 + 136);
  v7 = *(v4 + 88);
  v6 = *(v4 + 96);
  v8 = *(v4 + 72);
  type metadata accessor for SessionMessaging(0, *(v4 + 24), *(v4 + 32), a4);
  v9 = *(v4 + 40);
  v14[1] = *(v4 + 56);
  v14[0] = v9;
  v15 = v8;

  v11 = sub_24AF09200(v10, v5, v14);
  sub_24AED6198(v7, v6);
  v12 = *(v4 + 8);

  return v12(v11);
}

uint64_t sub_24AED5EA8()
{
  sub_24AED6198(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t SessionMessagingInvite.decline(context:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_24AED5F74, 0, 0);
}

uint64_t sub_24AED5F74()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_24AF350CC();
  swift_allocObject();
  sub_24AF350BC();
  v1 = sub_24AF3509C();
  v3 = v2;

  v4 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;

  return MEMORY[0x2822009F8](sub_24AED6084, v4, 0);
}

uint64_t sub_24AED6084()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 120);
  v3 = sub_24AF3516C();
  [v2 declineInvitationWithData_];

  [*(v1 + 120) endSession];

  return MEMORY[0x2822009F8](sub_24AED6128, 0, 0);
}

uint64_t sub_24AED6128()
{
  sub_24AED6198(v0[5], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AED6198(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AED622C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24AED6274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24AED62E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_24AED630C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t QueryController.serviceName.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void *QueryController.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4[14] = result;
    v4[15] = a1;
    v4[16] = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *QueryController.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2[14] = result;
    v2[15] = a1;
    v2[16] = a2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AED6470(uint64_t a1)
{
  *(v2 + 57) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_24AED64A0, v1, 0);
}

uint64_t sub_24AED64A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = *(v2 + 57);
  v6 = *(v2 + 16);
  v7 = sub_24AEE2DC8(&qword_27EFC0740, a2, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
  v8 = swift_task_alloc();
  *(v2 + 40) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = swift_task_alloc();
  *(v2 + 48) = v9;
  *v9 = v2;
  v9[1] = sub_24AED65F0;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v2 + 56, v6, v7, 0xD00000000000001ALL, 0x800000024AF36940, sub_24AED6A94, v8, v10);
}

uint64_t sub_24AED65F0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AED671C, v1, 0);
}

void sub_24AED6758(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v30 = a3;
  v26 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_24AF352AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[14];
  v28 = sub_24AF3539C();
  v27 = sub_24AF3539C();
  v14 = sub_24AF3539C();
  sub_24AEE2D5C();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v15 = sub_24AF3576C();
  (*(v11 + 8))(v13, v10);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v26, v6);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v30;
  v19 = v24;
  *(v18 + 32) = v25;
  *(v18 + 40) = v19;
  (*(v7 + 32))(v18 + v17, v9, v6);
  aBlock[4] = sub_24AEE2E70;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AED6F7C;
  aBlock[3] = &block_descriptor_33;
  v20 = _Block_copy(aBlock);

  v21 = v28;
  v22 = v27;
  [v29 currentIDStatusForDestination:v28 service:v27 listenerID:v14 queue:v15 completionBlock:v20];
  _Block_release(v20);
}

void sub_24AED6AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = sub_24AF352AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      if (qword_27EFC06F0 != -1)
      {
        swift_once();
      }

      v17 = sub_24AF3529C();
      __swift_project_value_buffer(v17, qword_27EFC4BB0);
      v18 = sub_24AF3527C();
      v19 = sub_24AF3572C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24AECF000, v18, v19, "FindMyMessaging: lookup status is valid, no need to refresh", v20, 2u);
        MEMORY[0x24C236490](v20, -1, -1);
      }

      LOBYTE(aBlock[0]) = a1 == 1;
      sub_24AF3553C();
    }

    else
    {
      if (qword_27EFC06F0 != -1)
      {
        swift_once();
      }

      v35 = v7;
      v21 = sub_24AF3529C();
      __swift_project_value_buffer(v21, qword_27EFC4BB0);
      v22 = sub_24AF3527C();
      v23 = sub_24AF3572C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24AECF000, v22, v23, "FindMyMessaging: lookup status is unknown, refreshing", v24, 2u);
        MEMORY[0x24C236490](v24, -1, -1);
      }

      v34 = *(v16 + 112);
      v37 = sub_24AF3539C();

      v36 = sub_24AF3539C();

      v25 = sub_24AF3539C();

      sub_24AEE2D5C();
      (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);
      v26 = sub_24AF3576C();
      (*(v12 + 8))(v14, v11);
      v27 = v35;
      (*(v8 + 16))(v10, v38, v35);
      v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v29 = swift_allocObject();
      (*(v8 + 32))(v29 + v28, v10, v27);
      aBlock[4] = sub_24AEE2EF8;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24AED6F7C;
      aBlock[3] = &block_descriptor_39;
      v30 = _Block_copy(aBlock);

      v31 = v34;
      v33 = v36;
      v32 = v37;
      [v34 refreshIDStatusForDestination:v37 service:v36 listenerID:v25 queue:v26 completionBlock:v30];

      _Block_release(v30);
    }
  }
}

uint64_t sub_24AED6F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24AED6FD0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 136) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 137) = *a2;
  return MEMORY[0x2822009F8](sub_24AED7008, v2, 0);
}

uint64_t sub_24AED7008()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v7 = v0;
  v7[1] = sub_24AED7158;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AED9678, v6, v8);
}

uint64_t sub_24AED7158()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_24AED743C;
  }

  else
  {
    v5 = *(v2 + 80);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_24AED72A8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AED72A8()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(v1 + 48) + 24 * v9;
      v11 = *(*(v1 + 56) + 8 * v9);
      v13 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v0 + 137);
      v17[0] = *v10;
      v18 = v13;
      v19 = v12;
      v20 = v11;

      LOBYTE(v11) = sub_24AED8318(v17, v11, v14);

      if (v11)
      {
        break;
      }

      v4 &= v4 - 1;
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
LABEL_12:
    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        v15 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED743C()
{
  swift_setDeallocating();
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1(0);
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

uint64_t sub_24AED750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 152) = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(v4 + 96) = v3;
  *(v4 + 104) = v5;
  *(v4 + 112) = v6;
  return MEMORY[0x2822009F8](sub_24AED7540, v3, 0);
}

uint64_t sub_24AED7540()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v7 = v0;
  v7[1] = sub_24AED7690;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v8);
}

uint64_t sub_24AED7690()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_24AED7978;
  }

  else
  {
    v5 = *(v2 + 96);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_24AED77E0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AED77E0()
{
  v22 = v0;
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v10 = v0[10];
      v9 = v0[11];
      v11 = __clz(__rbit64(v4)) | (v8 << 6);
      v12 = *(v1 + 48) + 24 * v11;
      v14 = *(v12 + 8);
      v13 = *(v12 + 16);
      v15 = *(*(v1 + 56) + 8 * v11);
      v18[0] = *v12;
      v19 = v14;
      v20 = v13;
      v21 = v15;

      LOBYTE(v9) = sub_24AED7A00(v18, v15, v10, v9);

      if (v9)
      {
        break;
      }

      v4 &= v4 - 1;
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v16 = 1;
LABEL_12:
    v17 = v0[1];

    return v17(v16);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        v16 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED7978()
{
  swift_setDeallocating();
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1(0);
}

BOOL sub_24AED7A00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v6 = sub_24AF3585C();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C2359A0](v7, a2, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v11 = [v9 capabilities];
    v12 = sub_24AF3539C();
    v13 = [v11 valueForCapability_];

    v7 = v8 + 1;
  }

  while (v13 != 1);
  return v6 != v8;
}

uint64_t sub_24AED7B30(uint64_t a1, _BYTE *a2)
{
  *(v3 + 153) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 154) = *a2;
  return MEMORY[0x2822009F8](sub_24AED7B68, v2, 0);
}

uint64_t sub_24AED7B68(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 88);
  v3 = *(v2 + 96);
  v5 = *(v2 + 153);
  v6 = *(v2 + 80);
  v7 = sub_24AEE2DC8(&qword_27EFC0740, a2, type metadata accessor for QueryController, &protocol conformance descriptor for QueryController);
  v8 = swift_task_alloc();
  *(v2 + 104) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = swift_task_alloc();
  *(v2 + 112) = v9;
  *v9 = v2;
  v9[1] = sub_24AED7CB8;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v2 + 152, v6, v7, 0xD00000000000001ALL, 0x800000024AF36940, sub_24AEE2FAC, v8, v10);
}

uint64_t sub_24AED7CB8()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AED7DE4, v1, 0);
}

uint64_t sub_24AED7DE4()
{
  if (*(v0 + 152) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 153);
    v4 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
    inited = swift_initStackObject();
    *(v0 + 120) = inited;
    *(inited + 16) = xmmword_24AF37AB0;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 48) = v1;

    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *(v6 + 16) = inited;
    *(v6 + 24) = v4;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
    *v7 = v0;
    v7[1] = sub_24AED7FAC;

    return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v8);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_24AED7FAC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_24AED8290;
  }

  else
  {
    v5 = *(v2 + 80);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_24AED80FC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AED80FC()
{
  v21 = v0;
  v1 = *(v0 + 72);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(v1 + 48) + 24 * v9;
      v11 = *(*(v1 + 56) + 8 * v9);
      v13 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v0 + 154);
      v17[0] = *v10;
      v18 = v13;
      v19 = v12;
      v20 = v11;

      LOBYTE(v11) = sub_24AED8318(v17, v11, v14);

      if (v11)
      {
        break;
      }

      v4 &= v4 - 1;
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
LABEL_12:
    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        v15 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED8290()
{
  swift_setDeallocating();
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1(0);
}

BOOL sub_24AED8318(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v14 = a3;
    v15 = sub_24AF3585C();
    a3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v9 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C2359A0](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(a2 + 8 * v6 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = [v10 capabilities];
    sub_24AF353AC();
    v7 = sub_24AF3539C();

    v8 = [v12 valueForCapability_];

    v6 = v9 + 1;
  }

  while (v8 != 1);
  return v5 != v9;
}

uint64_t sub_24AED84F8(uint64_t a1)
{
  *(v2 + 136) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  return MEMORY[0x2822009F8](sub_24AED8528, v1, 0);
}

uint64_t sub_24AED8528()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v7 = v0;
  v7[1] = sub_24AED8678;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v8);
}

uint64_t sub_24AED8678()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_24AED88F8;
  }

  else
  {
    v5 = *(v2 + 80);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_24AED87C8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AED87C8()
{
  v1 = sub_24AED897C(*(v0 + 72));

  if (!v1)
  {
    goto LABEL_11;
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_24AF3585C();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C2359A0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 senderCorrelationIdentifier];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = sub_24AF353AC();
  v8 = v7;

  v9 = v8;
  v10 = v6;
LABEL_12:
  v11 = *(v0 + 8);

  return v11(v10, v9);
}

uint64_t sub_24AED88F8()
{
  swift_setDeallocating();
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AED897C(uint64_t a1)
{
  v2 = sub_24AF357DC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_24AEE1AE8(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_24AED89E4(uint64_t a1)
{
  *(v2 + 136) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  return MEMORY[0x2822009F8](sub_24AED8A14, v1, 0);
}

uint64_t sub_24AED8A14()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v7 = v0;
  v7[1] = sub_24AED8B64;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v8);
}

uint64_t sub_24AED8B64()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_24AED88F8;
  }

  else
  {
    v5 = *(v2 + 80);
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = sub_24AED8CB4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AED8CB4()
{
  v45 = v0;
  v1 = *(v0 + 9);
  if (!*(v1 + 16) || (v2 = sub_24AEDA148(v0[136], *(v0 + 11), *(v0 + 12)), (v3 & 1) == 0))
  {

    v30 = sub_24AEE1B38(MEMORY[0x277D84F90]);
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = *(*(v1 + 56) + 8 * v2);

  v42 = sub_24AEE1B38(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_43:
    v5 = sub_24AF3585C();
  }

  else
  {
    v5 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v0;
  v36 = isUniquelyReferenced_nonNull_native;
  v6 = 0;
  if (!v5)
  {
LABEL_30:

    sub_24AED56FC(v6, 0);
    v0 = v33;
    v30 = v42;
LABEL_32:
    v31 = *(v0 + 1);

    return v31(v30);
  }

  v7 = 0;
  v38 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v35 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v34 = isUniquelyReferenced_nonNull_native + 32;
  v0 = byte_285E3D600;
  v37 = v5;
  while (1)
  {
    if (v38)
    {
      v8 = MEMORY[0x24C2359A0](v7, v36);
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v7 >= *(v35 + 16))
      {
        goto LABEL_42;
      }

      v8 = *(v34 + 8 * v7);
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
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
        goto LABEL_43;
      }
    }

    v40 = v10;
    v41 = v6;
    v39 = v8;
    v11 = [v8 capabilities];
    v12 = 0;
    v43 = MEMORY[0x277D84FA0];
    do
    {
      v13 = byte_285E3D600[v12 + 32];
      sub_24AF353AC();
      v14 = sub_24AF3539C();

      v15 = [v11 valueForCapability_];

      if (v15 == 1)
      {
        sub_24AEDD7DC(&v44, v13);
      }

      ++v12;
    }

    while (v12 != 6);

    sub_24AED56FC(v41, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v42;
    v16 = sub_24AEDA0DC(v43);
    v18 = *(v42 + 16);
    v19 = (v17 & 1) == 0;
    v9 = __OFADD__(v18, v19);
    v20 = v18 + v19;
    if (v9)
    {
      goto LABEL_39;
    }

    v21 = v42;
    v22 = v17;
    if (*(v42 + 24) < v20)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v16;
      sub_24AEDC97C();
      v16 = isUniquelyReferenced_nonNull_native;
      v21 = v44;
      if (v22)
      {
LABEL_24:
        v24 = v16;
        isUniquelyReferenced_nonNull_native = v21;

        v21 = isUniquelyReferenced_nonNull_native;
        v16 = v24;
        goto LABEL_28;
      }
    }

LABEL_26:
    v21[(v16 >> 6) + 8] |= 1 << v16;
    *(v21[6] + 8 * v16) = v43;
    *(v21[7] + 8 * v16) = 0;
    v25 = v21[2];
    v9 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v9)
    {
      goto LABEL_41;
    }

    v21[2] = v26;
LABEL_28:
    v27 = v21[7];
    v28 = *(v27 + 8 * v16);
    v9 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v9)
    {
      goto LABEL_40;
    }

    v42 = v21;
    *(v27 + 8 * v16) = v29;

    v6 = sub_24AED9128;
    v7 = v40;
    if (v40 == v37)
    {
      goto LABEL_30;
    }
  }

  sub_24AEDA560(v20, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = v44;
  v16 = sub_24AEDA0DC(v43);
  if ((v22 & 1) == (v23 & 1))
  {
    v21 = isUniquelyReferenced_nonNull_native;
    if (v22)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);

  return sub_24AF35C8C();
}

uint64_t QueryController.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t QueryController.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_24AED91B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24AF352AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_17:
    v23 = a3[14];
    sub_24AEE5770(v10);

    v24 = sub_24AF3548C();

    v25 = sub_24AF3539C();
    v26 = sub_24AF3539C();
    sub_24AEE2D5C();
    v27 = v34;
    (*(v7 + 104))(v34, *MEMORY[0x277D851C8], v6);
    v28 = sub_24AF3576C();
    (*(v7 + 8))(v27, v6);
    v39 = sub_24AEE2DA8;
    v40 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_24AED9E24;
    v38 = &block_descriptor;
    v29 = _Block_copy(&aBlock);

    [v23 currentRemoteDevicesForDestinations:v24 service:v25 listenerID:v26 queue:v28 completionBlock:v29];
    _Block_release(v29);

    return;
  }

  v30 = a3;
  v31 = v7;
  v32 = v6;
  v33 = a1;
  v41 = MEMORY[0x277D84F90];
  sub_24AEF6148(0, v9, 0);
  v10 = v41;
  v11 = (a2 + 48);
  while (1)
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    v14 = *(v11 - 2) & 0xFE;

    if (v14 != 2)
    {
      v17 = v12;
      v19 = v13;
      goto LABEL_13;
    }

    v15 = sub_24AF3539C();
    v16 = [v15 _stripPotentialTokenURIWithToken_];

    if (!v16)
    {
      break;
    }

    v17 = sub_24AF353AC();
    v19 = v18;

    if ((sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v41 = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_24AEF6148((v20 > 1), v21 + 1, 1);
      v10 = v41;
    }

    *(v10 + 16) = v21 + 1;
    v22 = v10 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v11 += 3;
    if (!--v9)
    {
      v6 = v32;
      a1 = v33;
      a3 = v30;
      v7 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:

  aBlock = 0;
  v36 = 0xE000000000000000;
  sub_24AF3592C();

  aBlock = 0xD000000000000012;
  v36 = 0x800000024AF36A70;
  MEMORY[0x24C235440](v12, v13);
  MEMORY[0x24C235440](0xD000000000000013, 0x800000024AF36A90);
  sub_24AF35A3C();
  __break(1u);
}

unint64_t sub_24AED9680()
{
  result = qword_27EFC0758;
  if (!qword_27EFC0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0758);
  }

  return result;
}

void sub_24AED96D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v3 = sub_24AED9B44(a1)) == 0)
  {
    v32 = sub_24AF34FEC();
    sub_24AEE2DC8(&qword_27EFC07F8, 255, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000029;
    v34[1] = 0x800000024AF36AB0;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D08930], v32);
    sub_24AF34FFC();

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v38 = MEMORY[0x277D84F98];
  while (v9)
  {
    v11 = v5;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v4 + 56) + 8 * v13);

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 0;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 1;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 2;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 3;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 4;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v35 = v4;
      v36 = a2;
      v18 = 5;
LABEL_24:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v38;
      v37 = v18;
      v21 = sub_24AEDA148(v18, v15, v16);
      v22 = v38[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_40;
      }

      if (v38[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v20)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v27 = v20;
          sub_24AEDCAD8();
          if (v27)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v39 = v20;
        sub_24AEDA7F0(v24, isUniquelyReferenced_nonNull_native);
        v25 = sub_24AEDA148(v37, v15, v16);
        if ((v39 & 1) != (v26 & 1))
        {
          goto LABEL_42;
        }

        v21 = v25;
        if (v39)
        {
LABEL_31:

          v38 = v40;
          *(v40[7] + 8 * v21) = v17;

          goto LABEL_35;
        }
      }

      v40[(v21 >> 6) + 8] |= 1 << v21;
      v28 = v40[6] + 24 * v21;
      *v28 = v37;
      *(v28 + 8) = v15;
      *(v28 + 16) = v16;
      *(v40[7] + 8 * v21) = v17;
      v29 = v40[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_41;
      }

      v38 = v40;
      v40[2] = v31;
LABEL_35:
      v4 = v35;
      a2 = v36;
      v5 = v11;
    }

    else
    {

      v5 = v11;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      sub_24AF3500C();

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_24AF35C8C();
  __break(1u);
}

unint64_t sub_24AED9B44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0808, &qword_24AF37C10);
    v2 = sub_24AF35A7C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_24AEE2A84(*(a1 + 48) + 40 * v11, v24);
        sub_24AED0E50(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_24AEE2A84(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_24AEE2E10(v21, &qword_27EFC0810, &qword_24AF37C18);

          goto LABEL_23;
        }

        sub_24AED0E50(v22 + 8, v20);
        sub_24AEE2E10(v21, &qword_27EFC0810, &qword_24AF37C18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0818, &qword_24AF37C20);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_24AEDA1DC(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24AED9E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_24AF352FC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_24AED9EB4()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BB0);
  __swift_project_value_buffer(v0, qword_27EFC4BB0);
  return sub_24AF3528C();
}

uint64_t sub_24AED9F34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AED9FCC;

  return sub_24AED84F8(a1);
}

uint64_t sub_24AED9FCC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t sub_24AEDA0DC(uint64_t a1)
{
  sub_24AF35D0C();
  sub_24AEE184C(v4, a1);
  v2 = sub_24AF35D4C();

  return sub_24AEDBFB0(a1, v2);
}

unint64_t sub_24AEDA148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v5);
  sub_24AF353DC();
  v6 = sub_24AF35D4C();

  return sub_24AEDC04C(v5, a2, a3, v6);
}

unint64_t sub_24AEDA1DC(uint64_t a1, uint64_t a2)
{
  sub_24AF35D0C();
  sub_24AF353DC();
  v4 = sub_24AF35D4C();

  return sub_24AEDC124(a1, a2, v4);
}

unint64_t sub_24AEDA254(uint64_t a1)
{
  sub_24AF3521C();
  sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24AF3535C();

  return sub_24AEDC1DC(a1, v2);
}

unint64_t sub_24AEDA2F0(uint64_t a1)
{
  v2 = sub_24AF3521C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CorrelationIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AF35D0C();
  sub_24AEE2B34(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  v9 = sub_24AF35D4C();
  return sub_24AEDC3A0(a1, v9);
}

unint64_t sub_24AEDA4FC(uint64_t a1)
{
  sub_24AF35A2C();
  v2 = sub_24AF3535C();

  return sub_24AEDC7E4(a1, v2);
}

uint64_t sub_24AEDA560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
  v30 = v4;
  result = sub_24AF35A6C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_24AF35D0C();
      sub_24AEE184C(v31, v20);
      result = sub_24AF35D4C();
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_24AEDA7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0800, &qword_24AF37C08);
  v34 = v4;
  result = sub_24AF35A6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 24 * v20);
      v35 = *v21;
      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24AF35D0C();
      MEMORY[0x24C235D70](v35);
      sub_24AF353DC();
      result = sub_24AF35D4C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24AEDAAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24AF3521C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
  v39 = v4;
  result = sub_24AF35A6C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24AF3535C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24AEDAEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_24AF3521C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CorrelationIdentifier(0);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v48 - v10;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B8, &qword_24AF37BD0);
  result = sub_24AF35A6C();
  v13 = result;
  if (*(v11 + 16))
  {
    v48 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v50 = (v5 + 32);
    v49 = (v5 + 8);
    v20 = result + 64;
    v21 = v56;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_15:
      v29 = v25 | (v14 << 6);
      v30 = *(v11 + 48);
      v60 = *(v54 + 72);
      v61 = v26;
      v31 = v30 + v60 * v29;
      if (v4)
      {
        sub_24AEE2BF4(v31, v21);
        v32 = (*(v11 + 56) + 24 * v29);
        v59 = *v32;
        v33 = *(v32 + 1);
        v57 = *(v32 + 2);
        v58 = v33;
      }

      else
      {
        sub_24AEE2B34(v31, v21);
        v34 = (*(v11 + 56) + 24 * v29);
        v59 = *v34;
        v35 = *(v34 + 1);
        v57 = *(v34 + 2);
        v58 = v35;
      }

      v36 = v11;
      sub_24AF35D0C();
      v37 = v53;
      sub_24AEE2B34(v21, v53);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v51;
        v39 = v52;
        (*v50)(v51, v37, v52);
        MEMORY[0x24C235D70](1);
        sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_24AF3536C();
        (*v49)(v38, v39);
      }

      else
      {
        MEMORY[0x24C235D70](0);
        sub_24AF353DC();
      }

      result = sub_24AF35D4C();
      v40 = -1 << *(v13 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v11 = v36;
      v21 = v56;
      if (((-1 << v41) & ~*(v20 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v20 + 8 * v42);
          if (v46 != -1)
          {
            v22 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v41) & ~*(v20 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_24AEE2BF4(v21, *(v13 + 48) + v60 * v22);
      v23 = *(v13 + 56) + 24 * v22;
      *v23 = v59;
      v24 = v57;
      *(v23 + 8) = v58;
      *(v23 + 16) = v24;
      ++*(v13 + 16);
      v18 = v61;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_37;
    }

    v47 = 1 << *(v11 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v15, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v47;
    }

    *(v11 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

uint64_t sub_24AEDB3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CorrelationIdentifier(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C0, &qword_24AF37BD8);
  v41 = v4;
  result = sub_24AF35A6C();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 24 * v22);
      v25 = *v24;
      v27 = *(v24 + 1);
      v26 = *(v24 + 2);
      v28 = v23 + *(v40 + 72) * v22;
      v42 = *(v40 + 72);
      if (v41)
      {
        sub_24AEE2BF4(v28, v43);
      }

      else
      {
        sub_24AEE2B34(v28, v43);
      }

      sub_24AF35D0C();
      MEMORY[0x24C235D70](v25);
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v25;
      *(v18 + 8) = v27;
      *(v18 + 16) = v26;
      result = sub_24AEE2BF4(v43, *(v9 + 56) + v42 * v17);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24AEDB76C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_24AF35A6C();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_24AED0E50(v27, v38);
      }

      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_24AEDBA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24AF35A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0798, &qword_24AF37BB0);
  v39 = v4;
  result = sub_24AF35A6C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_24AED0F00((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_24AED0E50(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_24AF3535C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_24AED0F00(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_24AEDBDD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24AED0F00(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_24AEDBE3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24AF3521C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24AEDBEF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for CorrelationIdentifier(0);
  result = sub_24AEE2BF4(a2, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_24AEDBFB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (sub_24AEE1978(*(*(v2 + 48) + 8 * v4), a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24AEDC04C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a1;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == v10)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (sub_24AF35C4C() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_24AEDC124(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AF35C4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AEDC1DC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24AEE2DC8(&qword_27EFC0790, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24AF3537C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_24AEDC3A0(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v40 = sub_24AF3521C();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for CorrelationIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v35 - v13);
  MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v46 = v2;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v44 = v2 + 64;
  if (((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return v19;
  }

  v20 = *(v15 + 72);
  v42 = ~v18;
  v43 = v20;
  v39 = (v4 + 8);
  v36 = (v4 + 32);
  v21 = v41;
  while (1)
  {
    sub_24AEE2B34(*(v46 + 48) + v43 * v19, v17);
    v22 = &v8[*(v6 + 48)];
    sub_24AEE2B34(v17, v8);
    sub_24AEE2B34(v45, v22);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24AEE2B34(v8, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v6;
      v24 = v37;
      v25 = v40;
      (*v36)(v37, v22, v40);
      v38 = sub_24AF351FC();
      v26 = *v39;
      v27 = v24;
      v6 = v23;
      v21 = v41;
      (*v39)(v27, v25);
      sub_24AEE2B98(v17);
      v26(v21, v25);
      if (v38)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_24AEE2B98(v8);
      goto LABEL_5;
    }

    sub_24AEE2B98(v17);
    (*v39)(v21, v40);
LABEL_4:
    sub_24AEE2E10(v8, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_5:
    v19 = (v19 + 1) & v42;
    if (((*(v44 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return v19;
    }
  }

  sub_24AEE2B34(v8, v14);
  v29 = *v14;
  v28 = v14[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AEE2B98(v17);

    goto LABEL_4;
  }

  v30 = *v22;
  v31 = *(v22 + 1);
  if (v29 != v30 || v28 != v31)
  {
    v33 = sub_24AF35C4C();

    sub_24AEE2B98(v17);
    if (v33)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  sub_24AEE2B98(v17);
LABEL_20:
  sub_24AEE2B98(v8);
  return v19;
}

unint64_t sub_24AEDC7E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_24AF35A2C();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_24AF3537C();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_24AEDC97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
  v2 = *v0;
  v3 = sub_24AF35A5C();
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

void *sub_24AEDCAD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0800, &qword_24AF37C08);
  v2 = *v0;
  v3 = sub_24AF35A5C();
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

char *sub_24AEDCC7C()
{
  v1 = v0;
  v33 = sub_24AF3521C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
  v3 = *v0;
  v4 = sub_24AF35A5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_24AEDCEFC()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B8, &qword_24AF37BD0);
  v4 = *v0;
  v5 = sub_24AF35A5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v31;
        v21 = *(v32 + 72) * v19;
        sub_24AEE2B34(*(v4 + 48) + v21, v31);
        v22 = 24 * v19;
        v23 = *(v4 + 56) + 24 * v19;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = v33;
        sub_24AEE2BF4(v20, *(v33 + 48) + v21);
        v28 = *(v27 + 56) + v22;
        *v28 = v24;
        *(v28 + 8) = v25;
        *(v28 + 16) = v26;

        v14 = v34;
      }

      while (v34);
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

        v1 = v29;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24AEDD148()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C0, &qword_24AF37BD8);
  v4 = *v0;
  v5 = sub_24AF35A5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 48) + 24 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v31;
        v26 = *(v32 + 72) * v19;
        sub_24AEE2B34(*(v4 + 56) + v26, v31);
        v27 = v33;
        v28 = *(v33 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        sub_24AEE2BF4(v25, *(v27 + 56) + v26);

        v14 = v34;
      }

      while (v34);
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

        v1 = v30;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24AEDD3B8(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_24AF35A5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_24AED0E50(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_24AEDD558()
{
  v1 = v0;
  v26 = sub_24AF35A2C();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0798, &qword_24AF37BB0);
  v3 = *v0;
  v4 = sub_24AF35A5C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_24AED0E50(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_24AED0F00(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_24AEDD7DC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](a2);
  v6 = sub_24AF35D4C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
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
    sub_24AEDF52C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AEDD8D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AF35D0C();
  sub_24AF353DC();
  v8 = sub_24AF35D4C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AF35C4C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AEDF678(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AEDDA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24AF358BC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24AEE2A84(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x24C235920](v16, a2);
      sub_24AEE2AE0(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24AEE2AE0(a2);
    sub_24AEE2A84(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24AEE2A84(a2, v16);
    v15 = *v3;
    sub_24AEDF7F8(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24AEDDB70(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  MEMORY[0x28223BE20](v63);
  v5 = &v50 - v4;
  v6 = sub_24AF3521C();
  v62 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for CorrelationIdentifier(0);
  v61 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = (&v50 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v51 = v2;
  v65 = *v2;
  sub_24AF35D0C();
  v64 = a2;
  sub_24AEE2B34(a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v22;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v62;
    (*(v62 + 32))(v10, v24, v6);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    (*(v26 + 8))(v10, v6);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();

    v26 = v62;
  }

  v27 = sub_24AF35D4C();
  v28 = -1 << *(v65 + 32);
  v29 = v27 & ~v28;
  v62 = v65 + 56;
  if (((*(v65 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_21:
    v45 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v64;
    v48 = v50;
    sub_24AEE2B34(v64, v50);
    v66 = *v45;
    sub_24AEDF970(v48, v29, isUniquelyReferenced_nonNull_native);
    *v45 = v66;
    sub_24AEE2BF4(v47, v52);
    return 1;
  }

  v60 = ~v28;
  v61 = *(v61 + 72);
  v56 = (v26 + 8);
  v57 = v6;
  v53 = (v26 + 32);
  while (1)
  {
    v30 = v61 * v29;
    sub_24AEE2B34(*(v65 + 48) + v61 * v29, v19);
    v31 = &v5[*(v63 + 48)];
    sub_24AEE2B34(v19, v5);
    sub_24AEE2B34(v64, v31);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24AEE2B34(v5, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v30;
      v32 = v11;
      v33 = v14;
      v34 = v54;
      v35 = v57;
      (*v53)(v54, v31, v57);
      v55 = sub_24AF351FC();
      v36 = *v56;
      v37 = v34;
      v14 = v33;
      v11 = v32;
      (*v56)(v37, v35);
      sub_24AEE2B98(v19);
      v36(v14, v35);
      if (v55)
      {
        goto LABEL_23;
      }

LABEL_19:
      sub_24AEE2B98(v5);
      goto LABEL_8;
    }

    sub_24AEE2B98(v19);
    (*v56)(v14, v57);
LABEL_7:
    sub_24AEE2E10(v5, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_8:
    v29 = (v29 + 1) & v60;
    if (((*(v62 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v59 = v30;
  v38 = v58;
  sub_24AEE2B34(v5, v58);
  v40 = *v38;
  v39 = v38[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AEE2B98(v19);

    goto LABEL_7;
  }

  v41 = *v31;
  v42 = *(v31 + 1);
  if (v40 != v41 || v39 != v42)
  {
    v44 = sub_24AF35C4C();

    sub_24AEE2B98(v19);
    if (v44)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_24AEE2B98(v19);
LABEL_23:
  sub_24AEE2B98(v5);
  sub_24AEE2B98(v64);
  sub_24AEE2B34(*(v65 + 48) + v59, v52);
  return 0;
}

uint64_t sub_24AEDE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](a2);
  sub_24AF353DC();
  v9 = sub_24AF35D4C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = (v13 + 24 * v11);
      if (*v14 == a2)
      {
        v15 = *(v14 + 1) == a3 && *(v14 + 2) == a4;
        if (v15 || (sub_24AF35C4C() & 1) != 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v16 = *(v8 + 48) + 24 * v11;
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    *a1 = *v16;
    *(a1 + 8) = v18;
    *(a1 + 16) = v17;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;

    sub_24AEDFF88(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_24AEDE374(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AF35D0C();
  sub_24AF353DC();
  v8 = sub_24AF35D4C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AF35C4C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AEE013C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AEDE4C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  result = sub_24AF358FC();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AEDE724(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  result = sub_24AF358FC();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_24AF358BC();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AEDE988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  result = sub_24AF358FC();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v17);
      result = sub_24AF35D4C();
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
      *(*(v5 + 48) + v13) = v17;
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

uint64_t sub_24AEDEBD8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CorrelationIdentifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  result = sub_24AF358FC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_24AEDF2AC(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_24AEE2BF4(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_24AEDEDCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  result = sub_24AF358FC();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v19);
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AEDF04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  result = sub_24AF358FC();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AEDF2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CorrelationIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AF35D0C();
  sub_24AEE2B34(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24AF3536C();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  sub_24AF35D4C();
  v12 = sub_24AF357FC();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_24AEE2BF4(a1, *(a2 + 48) + *(v9 + 72) * v12);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24AEDF52C(uint64_t result, unint64_t a2, char a3)
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
    sub_24AEDE988(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AEE0594();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AEE0FE4(v5 + 1);
  }

  v8 = *v3;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v4);
  result = sub_24AF35D4C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v11 + 48) + a2) = v4;
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
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF678(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AEDE4C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AEE02BC();
      goto LABEL_16;
    }

    sub_24AEE0B7C(v8 + 1);
  }

  v10 = *v4;
  sub_24AF35D0C();
  sub_24AF353DC();
  result = sub_24AF35D4C();
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

      result = sub_24AF35C4C();
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
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF7F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AEDE724(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_24AEE0418();
      goto LABEL_12;
    }

    sub_24AEE0DB4(v7 + 1);
  }

  v9 = *v3;
  result = sub_24AF358BC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_24AEE2A84(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x24C235920](v19, v6);
      result = sub_24AEE2AE0(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF970(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v5 = a3;
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  MEMORY[0x28223BE20](v63);
  v8 = &v53 - v7;
  v59 = sub_24AF3521C();
  v9 = *(v59 - 8);
  v10 = MEMORY[0x28223BE20](v59);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v53 - v12;
  v13 = type metadata accessor for CorrelationIdentifier(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v58 = (&v53 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = *(*v4 + 16);
  v26 = *(*v4 + 24);
  v53 = v14;
  v54 = v4;
  if (v26 <= v25 || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_24AEDEBD8(v25 + 1);
    }

    else
    {
      if (v26 > v25)
      {
        sub_24AEE06D4();
        goto LABEL_28;
      }

      sub_24AEE1204(v25 + 1);
    }

    v56 = *v4;
    sub_24AF35D0C();
    sub_24AEE2B34(v64, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v62;
      v28 = v24;
      v29 = v59;
      (*(v9 + 32))(v62, v28, v59);
      MEMORY[0x24C235D70](1);
      sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24AF3536C();
      (*(v9 + 8))(v27, v29);
    }

    else
    {
      MEMORY[0x24C235D70](0);
      sub_24AF353DC();
    }

    v30 = sub_24AF35D4C();
    v31 = v56;
    v32 = -1 << *(v56 + 32);
    a2 = v30 & ~v32;
    v62 = (v56 + 56);
    if ((*(v56 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v61 = ~v32;
      v60 = *(v14 + 72);
      v33 = (v9 + 8);
      v55 = (v9 + 32);
      do
      {
        sub_24AEE2B34(*(v31 + 48) + v60 * a2, v22);
        v34 = &v8[*(v63 + 48)];
        sub_24AEE2B34(v22, v8);
        sub_24AEE2B34(v64, v34);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_24AEE2B34(v8, v17);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v35 = v17;
            v36 = v57;
            v37 = v59;
            (*v55)(v57, v34, v59);
            v38 = sub_24AF351FC();
            v39 = *v33;
            v40 = v36;
            v17 = v35;
            v31 = v56;
            (*v33)(v40, v37);
            sub_24AEE2B98(v22);
            v39(v17, v37);
            if (v38)
            {
              goto LABEL_32;
            }

LABEL_26:
            sub_24AEE2B98(v8);
            goto LABEL_15;
          }

          sub_24AEE2B98(v22);
          (*v33)(v17, v59);
        }

        else
        {
          v41 = v58;
          sub_24AEE2B34(v8, v58);
          v43 = *v41;
          v42 = v41[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v44 = *v34;
            v45 = *(v34 + 1);
            if (v43 == v44 && v42 == v45)
            {
              goto LABEL_31;
            }

            v47 = sub_24AF35C4C();

            sub_24AEE2B98(v22);
            if (v47)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

          sub_24AEE2B98(v22);
        }

        sub_24AEE2E10(v8, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_15:
        a2 = (a2 + 1) & v61;
      }

      while (((*&v62[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v48 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24AEE2BF4(v64, *(v48 + 48) + *(v53 + 72) * a2);
  v50 = *(v48 + 16);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
LABEL_31:

    sub_24AEE2B98(v22);
LABEL_32:
    sub_24AEE2B98(v8);
    result = sub_24AF35C7C();
    __break(1u);
  }

  else
  {
    *(v48 + 16) = v52;
  }

  return result;
}

uint64_t sub_24AEDFF88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_24AEDEDCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_24AEE08B8();
      goto LABEL_18;
    }

    sub_24AEE13BC(v11 + 1);
  }

  v13 = *v5;
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v10);
  sub_24AF353DC();
  result = sub_24AF35D4C();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    while (1)
    {
      v18 = (v17 + 24 * a4);
      if (*v18 == v10)
      {
        if (*(v18 + 1) == a2 && *(v18 + 2) == a3)
        {
          break;
        }

        result = sub_24AF35C4C();
        if (result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v16;
      if (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_24AF35C7C();
    __break(1u);
  }

LABEL_18:
  v20 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v10;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_24AEE013C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AEDF04C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AEE0A20();
      goto LABEL_16;
    }

    sub_24AEE1614(v8 + 1);
  }

  v10 = *v4;
  sub_24AF35D0C();
  sub_24AF353DC();
  result = sub_24AF35D4C();
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

      result = sub_24AF35C4C();
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
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

void *sub_24AEE02BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  v2 = *v0;
  v3 = sub_24AF358EC();
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

void *sub_24AEE0418()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_24AEE2A84(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_24AEE0594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  v2 = *v0;
  v3 = sub_24AF358EC();
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

void *sub_24AEE06D4()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  v6 = *v0;
  v7 = sub_24AF358EC();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_24AEE2B34(*(v6 + 48) + v21, v5);
        result = sub_24AEE2BF4(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_24AEE08B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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

void *sub_24AEE0A20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  v2 = *v0;
  v3 = sub_24AF358EC();
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

uint64_t sub_24AEE0B7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  result = sub_24AF358FC();
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
      sub_24AF35D0C();

      sub_24AF353DC();
      result = sub_24AF35D4C();
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

uint64_t sub_24AEE0DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  result = sub_24AF358FC();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_24AEE2A84(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_24AF358BC();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_24AEE0FE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  result = sub_24AF358FC();
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
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v16);
      result = sub_24AF35D4C();
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

uint64_t sub_24AEE1204(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CorrelationIdentifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  result = sub_24AF358FC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_24AEDF2AC(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_24AEE2B34(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_24AEE13BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  result = sub_24AF358FC();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v19);

      sub_24AF353DC();
      result = sub_24AF35D4C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_24AEE1614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  result = sub_24AF358FC();
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
      sub_24AF35D0C();

      sub_24AF353DC();
      result = sub_24AF35D4C();
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

uint64_t sub_24AEE184C(__int128 *a1, uint64_t a2)
{
  result = sub_24AF35D4C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24AF35D0C();
    MEMORY[0x24C235D70](v12);
    result = sub_24AF35D4C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C235D70](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEE1978(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24AF35D0C();
    MEMORY[0x24C235D70](v13);
    result = sub_24AF35D4C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEE1AE8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_24AEE1B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
    v3 = sub_24AF35A7C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_24AEDA0DC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t dispatch thunk of QueryController.isRegistered(destination:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AEE1D70;

  return v6(a1);
}

uint64_t sub_24AEE1D70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of QueryController.destinationHasCapability(destination:capability:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AEE1F94;

  return v8(a1, a2);
}

uint64_t sub_24AEE1F94(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of QueryController.destinationHasCapability(destination:capability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AEE2FB0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AEE2FB0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of QueryController.correlationIdentifier(destination:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AEE2410;

  return v6(a1);
}

uint64_t sub_24AEE2410(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of QueryController.partitionByCapability(destination:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AEE1F94;

  return v6(a1);
}

unint64_t sub_24AEE263C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E8, &qword_24AF37BF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
    v7 = sub_24AF35A7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AEE2CF4(v9, v5, &qword_27EFC07E8, &qword_24AF37BF8);
      result = sub_24AEDA254(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24AF3521C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_24AEE2824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07D0, &qword_24AF37BE8);
    v3 = sub_24AF35A7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEE2CF4(v4, &v13, &qword_27EFC07D8, &qword_24AF38DD0);
      v5 = v13;
      v6 = v14;
      result = sub_24AEDA1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AED0F00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24AEE2954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0770, &qword_24AF37B90);
    v3 = sub_24AF35A7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEE2CF4(v4, &v13, &qword_27EFC0778, &qword_24AF38080);
      v5 = v13;
      v6 = v14;
      result = sub_24AEDA1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AED0F00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24AEE2B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEE2B98(uint64_t a1)
{
  v2 = type metadata accessor for CorrelationIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AEE2BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AEE2CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24AEE2D5C()
{
  result = qword_281392DC0;
  if (!qword_281392DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281392DC0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEE2DC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AEE2E10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_24AEE2E70(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_24AED6AA4(a1, v4, v7, v5, v6, v8);
}

uint64_t sub_24AEE2EF8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  return sub_24AF3553C();
}

uint64_t sub_24AEE2FC4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08B0, &qword_24AF37D38);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08B8, &qword_24AF37D40);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48);
  v3[21] = v6;
  v7 = *(v6 - 8);
  v3[22] = v7;
  v3[23] = *(v7 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0890, &qword_24AF37CF8);
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE3218, 0, 0);
}

uint64_t sub_24AEE3218()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask) = 0;
  v4 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v0[29] = v5;
  v6 = *(v5 - 8);
  v0[30] = v6;
  (*(v6 + 16))(v2 + v4, v1, v5);
  *(v2 + 112) = v3;
  v7 = v3;

  return MEMORY[0x2822009F8](sub_24AEE3310, v2, 0);
}

uint64_t sub_24AEE3310()
{
  receiver = v0[14].receiver;
  super_class = v0[12].super_class;
  v27 = v0[13].receiver;
  v28 = v0[13].super_class;
  v24 = v0[11].receiver;
  v25 = v0[10].super_class;
  v26 = v0[12].receiver;
  v3 = v0[9].super_class;
  v4 = v0[10].receiver;
  v5 = v0[9].receiver;
  v6 = *(v0[6].super_class + 14);
  v7 = type metadata accessor for KVOHelperNWDatagramConnection(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation] = 0;
  type metadata accessor for NWConnectionState(0);
  (*(v3 + 13))(v4, *MEMORY[0x277D85778], v5);
  v9 = v6;
  sub_24AF3558C();
  (*(v3 + 1))(v4, v5);
  *&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observee] = v9;
  (*(v28 + 2))(&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_stream], receiver, v27);
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v23 = v9;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[15].super_class = v10;
  v11 = *(v10 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observee);
  v0[4].receiver = v11;
  swift_getKeyPath();
  v24[2](v26, super_class, v25);
  v12 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v13 = swift_allocObject();
  v24[4]((v13 + v12), v26, v25);
  v14 = v10;
  v15 = v11;
  v16 = sub_24AF350EC();

  (v24[1])(super_class, v25);
  (*(v28 + 1))(receiver, v27);
  v17 = *(v14 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation);
  *(v14 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation) = v16;

  sub_24AF355FC();
  v18 = sub_24AEE5404();
  v0[16].receiver = v18;
  v19 = v0[6].super_class;

  v20 = swift_task_alloc();
  v0[16].super_class = v20;
  *v20 = v0;
  *(v20 + 1) = sub_24AEE366C;
  v21 = v0[7].super_class;

  return MEMORY[0x2822003E8](&v0[3], v19, v18, v21);
}

uint64_t sub_24AEE366C()
{
  v1 = *(*v0 + 104);

  if (v1)
  {
    swift_getObjectType();
    v2 = sub_24AF3551C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](sub_24AEE37B0, v2, v4);
}

uint64_t sub_24AEE37B0()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 232);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    (*(v2 + 8))(v7, v3);
    (*(v5 + 8))(v4, v6);
LABEL_5:

    v20 = *(v0 + 8);
    v21 = *(v0 + 104);

    return v20(v21);
  }

  if (v1 == 3)
  {
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 240);
    v12 = *(v0 + 128);
    v38 = *(v0 + 136);
    v13 = *(v0 + 112);
    v36 = *(v0 + 232);
    v37 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);
    v17 = sub_24AF3557C();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v10;
    v18[4] = v14;
    swift_retain_n();
    v19 = sub_24AF255AC(0, 0, v13, &unk_24AF37D90, v18);

    (*(v11 + 8))(v15, v36);
    (*(v12 + 8))(v38, v37);
    *(v14 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask) = v19;

    goto LABEL_5;
  }

  if (qword_27EFC06F8 != -1)
  {
    swift_once();
  }

  v23 = sub_24AF3529C();
  __swift_project_value_buffer(v23, qword_27EFC0828);
  v24 = sub_24AF3527C();
  v25 = sub_24AF3570C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *(v0 + 72) = v27;
    *v26 = 136446210;
    if (v1 <= 1)
    {
      if (!v1)
      {
        v29 = 0xE800000000000000;
        v28 = 0x64696C61766E692ELL;
        goto LABEL_23;
      }

      if (v1 == 1)
      {
        v29 = 0xE800000000000000;
        v28 = 0x676E69746961772ELL;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          v29 = 0xEA0000000000676ELL;
          v28 = 0x697261706572702ELL;
          goto LABEL_23;
        case 4:
          v29 = 0xE700000000000000;
          v28 = 0x64656C6961662ELL;
          goto LABEL_23;
        case 5:
          v28 = 0x6C6C65636E61632ELL;
          v29 = 0xEA00000000006465;
LABEL_23:
          v31 = sub_24AEF599C(v28, v29, (v0 + 72));

          *(v26 + 4) = v31;
          _os_log_impl(&dword_24AECF000, v24, v25, "SessionMessagingDatagramConnection connection state is %{public}s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x24C236490](v27, -1, -1);
          MEMORY[0x24C236490](v26, -1, -1);
          goto LABEL_24;
      }
    }

    *(v0 + 32) = 0x4E574F4E4B4E553CLL;
    *(v0 + 40) = 0xEA00000000002820;
    *(v0 + 80) = v1;
    v30 = sub_24AF35C0C();
    MEMORY[0x24C235440](v30);

    MEMORY[0x24C235440](15913, 0xE200000000000000);
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);
    goto LABEL_23;
  }

LABEL_24:

  v32 = *(v0 + 256);
  v33 = *(v0 + 104);

  v34 = swift_task_alloc();
  *(v0 + 264) = v34;
  *v34 = v0;
  v34[1] = sub_24AEE366C;
  v35 = *(v0 + 120);

  return MEMORY[0x2822003E8](v0 + 48, v33, v32, v35);
}

uint64_t sub_24AEE3C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D0, &qword_24AF37D98);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v4[8] = v7;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_24AEE3D64, a4, 0);
}

uint64_t sub_24AEE3D64()
{
  sub_24AF3563C();
  v1 = *(v0 + 40);
  v2 = sub_24AEE5404();
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D8, &qword_24AF37DA0);
  *v3 = v0;
  v3[1] = sub_24AEE3EEC;
  v5 = *(v0 + 40);

  return MEMORY[0x2822008A0](v0 + 32, v1, v2, 0x6B63615064616572, 0xED00002928737465, sub_24AEE5650, v5, v4);
}

uint64_t sub_24AEE3EEC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24AEE4144;
  }

  else
  {
    v4 = sub_24AEE4018;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AEE4018()
{
  v9 = *(v0 + 32);
  v1 = *(v9 + 16);
  if (v1)
  {
    v2 = (v9 + 32);
    do
    {
      v3 = *(v0 + 64);
      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      v6 = *v2++;
      *(v0 + 16) = v6;
      sub_24AEE5154(v6, *(&v6 + 1));
      sub_24AEE5154(v6, *(&v6 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
      sub_24AF355CC();
      sub_24AED6198(v6, *(&v6 + 1));
      (*(v4 + 8))(v3, v5);
      --v1;
    }

    while (v1);
  }

  v7 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24AEE41E0, v7, 0);
}

uint64_t sub_24AEE4144()
{
  v1 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  sub_24AF355DC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AEE41E0()
{
  v1 = v0[11];
  sub_24AF3563C();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
    sub_24AF355DC();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[5];
    v5 = sub_24AEE5404();
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08D8, &qword_24AF37DA0);
    *v6 = v0;
    v6[1] = sub_24AEE3EEC;
    v8 = v0[5];

    return MEMORY[0x2822008A0](v0 + 4, v4, v5, 0x6B63615064616572, 0xED00002928737465, sub_24AEE5650, v8, v7);
  }
}

void sub_24AEE4368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_24AEE56DC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEE46D0;
  aBlock[3] = &block_descriptor_29;
  v11 = _Block_copy(aBlock);

  [v8 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_24AEE4524(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27EFC0710 != -1)
    {
      swift_once();
    }

    v4 = sub_24AF3529C();
    __swift_project_value_buffer(v4, qword_27EFC4BD0);
    v5 = a2;
    v6 = sub_24AF3527C();
    v7 = sub_24AF3570C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24AECF000, v6, v7, "MessagingDatagramConnection read error: %{public}@", v8, 0xCu);
      sub_24AEE5304(v9);
      MEMORY[0x24C236490](v9, -1, -1);
      MEMORY[0x24C236490](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
    return sub_24AF3552C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);
    return sub_24AF3553C();
  }
}

void sub_24AEE46D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_24AF3549C();

  v6 = a3;
  v4(v5, a3);
}

void sub_24AEE4760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = *(a2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A0, &qword_24AF37D18);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24AF37AB0;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  sub_24AEE5154(a3, a4);
  v14 = sub_24AF3548C();

  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_24AEE51A8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AEE4B24;
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  [v12 writeDatagrams:v14 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_24AEE4988(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27EFC0710 != -1)
    {
      swift_once();
    }

    v3 = sub_24AF3529C();
    __swift_project_value_buffer(v3, qword_27EFC4BD0);
    v4 = a1;
    v5 = sub_24AF3527C();
    v6 = sub_24AF3570C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24AECF000, v5, v6, "MessagingDatagramConnection send error: %{public}@", v7, 0xCu);
      sub_24AEE5304(v8);
      MEMORY[0x24C236490](v8, -1, -1);
      MEMORY[0x24C236490](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
    return sub_24AF3552C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);
    return sub_24AF3553C();
  }
}

void sub_24AEE4B24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24AEE4B90()
{
  v1 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask;
  if (*(v0 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0898, &qword_24AF37D00);
    sub_24AF3562C();
  }

  *(v0 + v1) = 0;

  [*(v0 + 112) cancel];

  v2 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24AEE4C94()
{
  sub_24AEE4B90();

  return MEMORY[0x282200960](v0);
}

void sub_24AEE4CE8(uint64_t a1)
{
  sub_24AEE4D98();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24AEE4D98()
{
  if (!qword_27EFC0C50)
  {
    v0 = sub_24AF355EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC0C50);
    }
  }
}

uint64_t sub_24AEE4DE8(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E8, &qword_24AF37DB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = [*a1 connectionState];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48);
  sub_24AF355CC();
  return (*(v3 + 8))(v5, v2);
}

id sub_24AEE4F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KVOHelperNWDatagramConnection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AEE501C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AEE5054(uint64_t a1)
{
  sub_24AEE50FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24AEE50FC(uint64_t a1)
{
  if (!qword_27EFC0888)
  {
    type metadata accessor for NWConnectionState(255);
    v1 = sub_24AF3561C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC0888);
    }
  }
}

uint64_t sub_24AEE5154(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24AEE51A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0C40, &qword_24AF37D10);

  return sub_24AEE4988(a1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEE523C()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC0828);
  v1 = __swift_project_value_buffer(v0, qword_27EFC0828);
  if (qword_27EFC0710 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFC4BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AEE5304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D70, &qword_24AF37D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AEE5378(id *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48);

  return sub_24AEE4DE8(a1);
}

unint64_t sub_24AEE5404()
{
  result = qword_27EFC08C8;
  if (!qword_27EFC08C8)
  {
    type metadata accessor for SessionMessagingDatagramConnection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC08C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_24AEE54A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AEE555C;

  return sub_24AEE3C8C(a1, v4, v5, v6);
}

uint64_t sub_24AEE555C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24AEE56DC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08E0, &qword_24AF37DA8);

  return sub_24AEE4524(a1, a2);
}

uint64_t sub_24AEE5770(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24AEF6128(0, v1, 0);
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
        sub_24AEF6128((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_24AEE2FBC(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_24AEE5870(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24AF3585C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24AEF6128(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C2359A0](i, a1);
        sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24AEF6128((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24AEE2FBC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24AEF6128((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24AEE2FBC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}