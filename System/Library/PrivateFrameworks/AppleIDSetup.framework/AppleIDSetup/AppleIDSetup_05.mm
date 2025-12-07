char *sub_2405F24B8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2405F2780()
{
  result = sub_24075A0B4();
  qword_27E506828 = result;
  unk_27E506830 = v1;
  return result;
}

unint64_t sub_2405F27FC()
{
  v1 = *(v0 + OBJC_IVAR___AISAuthenticationResponse_payload);
  if (*(v1 + 16) && (v2 = sub_2405BB37C(0x6F54534D44494B41, 0xEB000000006E656BLL), (v3 & 1) != 0) && (sub_2405BD1CC(*(v1 + 56) + 32 * v2, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return sub_2405BD358(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2405F28B4()
{
  v0 = sub_2405F27FC();
  if (*(v0 + 16) && (v1 = sub_2405BB37C(0xD000000000000024, 0x8000000240786B00), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2405F2938()
{
  v0 = sub_2405F27FC();
  if (*(v0 + 16) && (v1 = sub_2405BB37C(0xD000000000000015, 0x8000000240786B30), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2405F29E0()
{
  v0 = sub_2405F27FC();
  if (*(v0 + 16) && (v1 = sub_2405BB37C(0xD00000000000001FLL, 0x8000000240786B50), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2405F2A64()
{
  v0 = sub_2405F27FC();
  if (*(v0 + 16) && (v1 = sub_2405BB37C(0xD000000000000021, 0x8000000240786B70), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 16 * v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double sub_2405F2B04@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___AISAuthenticationResponse_payload);
  if (qword_27E4B5EF8 == -1)
  {
    if (!*(v3 + 16))
    {
LABEL_8:
      result = 0.0;
      *a1 = 0u;
      a1[1] = 0u;
      return result;
    }
  }

  else
  {
    swift_once();
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }
  }

  v4 = sub_2405BB37C(qword_27E506828, unk_27E506830);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(v3 + 56) + 32 * v4;

  sub_2405BD1CC(v6, a1);
  return result;
}

uint64_t sub_2405F2BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___AISAuthenticationResponse_payload);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_2405BB37C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_2405BD1CC(*(v3 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id AISAuthenticationResponse.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISAuthenticationResponse_payload] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAuthenticationResponse.init(with:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AISAuthenticationResponse_payload] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AISAuthenticationResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2405F2D54()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD00000000000002DLL, 0x8000000240786BA0);
  v0 = sub_2405F28B4();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 0xE000000000000000;
  }

  MEMORY[0x245CC5E60](v0, v2);

  MEMORY[0x245CC5E60](0xD000000000000010, 0x8000000240786BD0);
  v3 = sub_2405F2938();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x245CC5E60](v3, v5);

  return 0;
}

id AISAuthenticationResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISAuthenticationResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISAuthenticationResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double RepairCommand.Request.init(from:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, v6 != 4))
  {
    sub_2405F5954(a1, v5);
    *&v8 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0;
    *(a2 + 88) = -4;
  }

  else
  {
    v7 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = a1[4];
    *(a2 + 73) = *(a1 + 73);
    v8 = *a1;
    v9 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v9;
  }

  return *&v8;
}

uint64_t RepairCommand.Request.into()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  a1[2] = v1[2];
  a1[3] = v2;
  a1[4] = v1[4];
  *(a1 + 73) = *(v1 + 73);
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2405F3274(uint64_t a1)
{
  v2 = sub_2405F575C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F32B0(uint64_t a1)
{
  v2 = sub_2405F575C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F32EC(uint64_t a1)
{
  v2 = sub_2405F57B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F3328(uint64_t a1)
{
  v2 = sub_2405F57B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F3364(uint64_t a1)
{
  v2 = sub_2405F58AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F33A0(uint64_t a1)
{
  v2 = sub_2405F58AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F33DC(uint64_t a1)
{
  v2 = sub_2405F5804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F3418(uint64_t a1)
{
  v2 = sub_2405F5804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairCommand.Request.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86E0, &qword_2407670B0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v22 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86E8, &qword_2407670B8);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86F0, &qword_2407670C0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86F8, &qword_2407670C8);
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v22 - v9;
  v11 = *v1;
  v28 = v1[1];
  v36 = v11;
  v12 = v1[2];
  v26 = v1[3];
  v27 = v12;
  v13 = *(v1 + 9);
  v25 = *(v1 + 8);
  v24 = v13;
  v23 = *(v1 + 10);
  v14 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405F575C();
  sub_24075AF74();
  if (!(v14 >> 6))
  {
    LOBYTE(v38) = 0;
    sub_2405F58AC();
    v17 = v37;
    sub_24075AB54();
    sub_24075ABB4();
    (*(v29 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v17);
  }

  if (v14 >> 6 == 1)
  {
    v15 = v14 & 0x3F;
    LOBYTE(v38) = 1;
    sub_2405F5804();
    v16 = v31;
    v17 = v37;
    sub_24075AB54();
    v39 = v28;
    v38 = v36;
    v41 = v26;
    v40 = v27;
    v42 = v25;
    v43 = v24;
    v44 = v23;
    v45 = v15;
    sub_2405F5858();
    v18 = v35;
    sub_24075ABE4();
    (*(v33 + 8))(v16, v18);
    return (*(v8 + 8))(v10, v17);
  }

  LOBYTE(v38) = 2;
  sub_2405F57B0();
  v20 = v30;
  v21 = v37;
  sub_24075AB54();
  (*(v32 + 8))(v20, v34);
  return (*(v8 + 8))(v10, v21);
}

uint64_t RepairCommand.Request.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 88) >> 6;
  if (v2)
  {
    if (v2 != 1)
    {
      return MEMORY[0x245CC6BA0](2);
    }

    v3 = *(v1 + 80);
    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = 0;
        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v4 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v4 = 2;
          goto LABEL_18;
        case 3:
          v4 = 3;
          goto LABEL_18;
        case 4:
          v4 = 5;
LABEL_18:
          MEMORY[0x245CC6BA0](v4);
          return sub_24075AE94();
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    return sub_24075AE94();
  }

  MEMORY[0x245CC6BA0](0);

  return sub_24075A114();
}

uint64_t RepairCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  RepairCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t RepairCommand.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8728, &qword_2407670D0);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v45 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8730, &qword_2407670D8);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8738, &qword_2407670E0);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8740, &unk_2407670E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2405F575C();
  v14 = v53;
  sub_24075AF34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v15 = v50;
  v45 = 0;
  v53 = v10;
  v17 = v51;
  v16 = v52;
  v18 = sub_24075AB34();
  v19 = (2 * *(v18 + 16)) | 1;
  v61 = v18;
  v62 = v18 + 32;
  v63 = 0;
  v64 = v19;
  v20 = sub_2405B8AF0();
  if (v20 == 3 || v63 != v64 >> 1)
  {
    v24 = sub_24075A8C4();
    swift_allocError();
    v25 = v9;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v27 = &type metadata for RepairCommand.Request;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v53 + 8))(v12, v25);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v20)
  {
    if (v20 != 1)
    {
      LOBYTE(v54) = 2;
      sub_2405F57B0();
      v31 = v45;
      sub_24075AA54();
      v36 = v31;
      v32 = v53;
      if (!v31)
      {
        (*(v17 + 8))(v15, v48);
        (*(v32 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v37 = 0uLL;
        v42 = 0x80;
        v38 = 0uLL;
        v39 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        goto LABEL_18;
      }

      (*(v53 + 8))(v12, v9);
      goto LABEL_9;
    }

    LOBYTE(v54) = 1;
    sub_2405F5804();
    v21 = v45;
    sub_24075AA54();
    v22 = v53;
    if (!v21)
    {
      sub_2405F5900();
      v23 = v46;
      sub_24075AAF4();
      (*(v49 + 8))(v5, v23);
      (*(v22 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v36 = v54;
      v37 = v55;
      v38 = v56;
      v39 = v57;
      v40 = v58;
      v41 = v59;
      v42 = v60 & 3 | 0x40;
LABEL_18:
      v33 = v16;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  LOBYTE(v54) = 0;
  sub_2405F58AC();
  v29 = v8;
  v30 = v45;
  sub_24075AA54();
  if (v30)
  {
    v22 = v53;
LABEL_13:
    (*(v22 + 8))(v12, v9);
    goto LABEL_9;
  }

  v33 = v16;
  v34 = v12;
  v35 = v9;
  v36 = sub_24075AAC4();
  v44 = v43;
  (*(v47 + 8))(v29, v6);
  (*(v53 + 8))(v34, v35);
  swift_unknownObjectRelease();
  v42 = 0;
  *&v37 = v44;
LABEL_19:
  *v33 = v36;
  *(v33 + 8) = v37;
  *(v33 + 24) = v38;
  *(v33 + 40) = v39;
  *(v33 + 56) = v40;
  *(v33 + 72) = v41;
  *(v33 + 88) = v42;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_2405F417C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  a1[2] = v1[2];
  a1[3] = v2;
  a1[4] = v1[4];
  *(a1 + 73) = *(v1 + 73);
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

double sub_2405F41F8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, v6 != 4))
  {
    sub_2405F5954(a1, v5);
    *&v8 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0;
    *(a2 + 88) = -4;
  }

  else
  {
    v7 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = a1[4];
    *(a2 + 73) = *(a1 + 73);
    v8 = *a1;
    v9 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v9;
  }

  return *&v8;
}

uint64_t sub_2405F42F0()
{
  sub_24075AE64();
  RepairCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405F4334(uint64_t a1)
{
  sub_24075AE64();
  RepairCommand.Request.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t RepairCommand.Response.init(from:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for V1Command.Response(0), result = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Response, result == 4))
  {
    v7 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v7;
  }

  else
  {
    result = sub_2405F5954(a1, v5);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xF000000000000007;
  }

  return result;
}

uint64_t RepairCommand.Response.into()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2405F4478(uint64_t a1)
{
  v2 = sub_2405F5BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F44B4(uint64_t a1)
{
  v2 = sub_2405F5BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F44F0(uint64_t a1)
{
  v2 = sub_2405F5C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F452C(uint64_t a1)
{
  v2 = sub_2405F5C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F4568(uint64_t a1)
{
  v2 = sub_2405F5CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F45A4(uint64_t a1)
{
  v2 = sub_2405F5CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405F45E0(uint64_t a1)
{
  v2 = sub_2405F5CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405F461C(uint64_t a1)
{
  v2 = sub_2405F5CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairCommand.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8750, &qword_2407670F8);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v22 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8758, &qword_240767100);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8760, &qword_240767108);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8768, &qword_240767110);
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v22 - v11;
  v13 = v1[1];
  v32 = *v1;
  v14 = v1[3];
  v23 = v1[2];
  v24 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405F5BFC();
  sub_24075AF74();
  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      LOBYTE(v34) = 1;
      sub_2405F5CA4();
      v15 = v33;
      sub_24075AB54();
      v16 = v29;
      sub_24075ABC4();
      (*(v27 + 8))(v6, v16);
      return (*(v10 + 8))(v12, v15);
    }

    else
    {
      LOBYTE(v34) = 2;
      sub_2405F5C50();
      v20 = v28;
      v21 = v33;
      sub_24075AB54();
      (*(v30 + 8))(v20, v31);
      return (*(v10 + 8))(v12, v21);
    }
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_2405F5CF8();
    v18 = v33;
    sub_24075AB54();
    v34 = v32;
    v35 = v24;
    v36 = v23;
    v37 = v14;
    sub_2405EE9C8();
    v19 = v26;
    sub_24075ABE4();
    (*(v25 + 8))(v9, v19);
    return (*(v10 + 8))(v12, v18);
  }
}

uint64_t RepairCommand.Response.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      return sub_24075AE94();
    }

    else
    {
      return MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();

    return sub_2405ED470(a1, v3);
  }
}

uint64_t RepairCommand.Response.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_24075AE64();
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075AE94();
    }

    else
    {
      MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();
    sub_2405ED470(v3, v1);
  }

  return sub_24075AED4();
}

uint64_t RepairCommand.Response.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8790, &qword_240767118);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8798, &qword_240767120);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B87A0, &qword_240767128);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B87A8, &qword_240767130);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2405F5BFC();
  v16 = v49;
  sub_24075AF34();
  if (!v16)
  {
    v41 = v8;
    v49 = v12;
    v18 = v47;
    v17 = v48;
    v19 = v14;
    v20 = sub_24075AB34();
    v21 = (2 * *(v20 + 16)) | 1;
    v54 = v20;
    v55 = v20 + 32;
    v56 = 0;
    v57 = v21;
    v22 = sub_2405B8AF0();
    if (v22 == 3 || v56 != v57 >> 1)
    {
      v27 = sub_24075A8C4();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v29 = &type metadata for RepairCommand.Response;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v49 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        if (v22 == 1)
        {
          LOBYTE(v50) = 1;
          sub_2405F5CA4();
          v23 = v7;
          v24 = v14;
          sub_24075AA54();
          v25 = v49;
          v26 = v45;
          v35 = sub_24075AAD4();
          (*(v46 + 8))(v23, v26);
          (*(v25 + 8))(v24, v11);
          swift_unknownObjectRelease();
          v36 = 0;
          v37 = 0;
          v38 = v35 & 1;
          v39 = 0x4000000000000000;
        }

        else
        {
          LOBYTE(v50) = 2;
          sub_2405F5C50();
          v32 = v14;
          sub_24075AA54();
          v33 = v49;
          (*(v42 + 8))(v18, v44);
          (*(v33 + 8))(v32, v11);
          swift_unknownObjectRelease();
          v38 = 0;
          v36 = 0;
          v37 = 0;
          v39 = 0x8000000000000000;
        }
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_2405F5CF8();
        v31 = v10;
        sub_24075AA54();
        sub_2405EEDE4();
        v34 = v41;
        sub_24075AAF4();
        (*(v43 + 8))(v31, v34);
        (*(v49 + 8))(v19, v11);
        swift_unknownObjectRelease();
        v38 = v50;
        v36 = v51;
        v37 = v52;
        v39 = v53;
      }

      *v17 = v38;
      v17[1] = v36;
      v17[2] = v37;
      v17[3] = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_2405F523C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2405F52A0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for V1Command.Response(0), result = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Response, result == 4))
  {
    v7 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v7;
  }

  else
  {
    result = sub_2405F5954(a1, v5);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xF000000000000007;
  }

  return result;
}

uint64_t sub_2405F5378(__int128 *a1)
{
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      return sub_24075AE94();
    }

    else
    {
      return MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();

    return sub_2405ED470(a1, v3);
  }
}

uint64_t sub_2405F5430(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_24075AE64();
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075AE94();
    }

    else
    {
      MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();
    sub_2405ED470(v4, v2);
  }

  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup13RepairCommandV7RequestO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *&v26[32] = a1[2];
  *&v26[48] = v3;
  v4 = a1[3];
  *&v26[64] = a1[4];
  *&v26[73] = *(a1 + 73);
  v5 = a1[1];
  *v26 = *a1;
  *&v26[16] = v5;
  v6 = a2[3];
  v7 = a2[1];
  *&v28[16] = a2[2];
  *&v28[32] = v6;
  v8 = a2[3];
  *&v28[48] = a2[4];
  *&v28[57] = *(a2 + 73);
  v9 = a2[1];
  v27 = *a2;
  *v28 = v9;
  v29[0] = *v26;
  v29[1] = v2;
  *(v30 + 9) = *(a1 + 73);
  v29[2] = *&v26[32];
  v29[3] = v4;
  v10 = a2[4];
  v30[5] = v8;
  v31[0] = v10;
  *(v31 + 9) = *(a2 + 73);
  v30[3] = v7;
  v30[4] = *&v28[16];
  v30[0] = a1[4];
  v30[2] = v27;
  v11 = v26[88] >> 6;
  if (!v11)
  {
    if (v28[72] > 0x3Fu)
    {
      goto LABEL_12;
    }

    if (*v26 != v27)
    {
      v12 = sub_24075ACF4();
      sub_2405F70DC(&v27, &v19);
      sub_2405F70DC(v26, &v19);
      sub_2405F7114(v29);
      return v12 & 1;
    }

    sub_2405F70DC(&v27, &v19);
    sub_2405F70DC(v26, &v19);
LABEL_11:
    sub_2405F7114(v29);
    v12 = 1;
    return v12 & 1;
  }

  if (v11 != 1)
  {
    if ((v28[72] & 0xC0) != 0x80)
    {
      goto LABEL_12;
    }

    if (v28[72] != 128)
    {
      goto LABEL_12;
    }

    v13 = vorrq_s8(vorrq_s8(*&v28[8], *&v28[40]), vorrq_s8(*&v28[24], *&v28[56]));
    if (*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *v28 | *(&v27 + 1) | v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v28[72] & 0xC0) != 0x40)
  {
LABEL_12:
    sub_2405F70DC(&v27, &v19);
    sub_2405F70DC(v26, &v19);
    sub_2405F7114(v29);
    v12 = 0;
    return v12 & 1;
  }

  v19 = *v26;
  v20 = *&v26[8];
  v21 = *&v26[24];
  v22 = *&v26[40];
  v23 = *&v26[56];
  v24 = *&v26[72];
  v25 = v26[88] & 0x3F;
  v16[0] = v27;
  v16[1] = *v28;
  v16[2] = *&v28[16];
  v16[3] = *&v28[32];
  v16[4] = *&v28[48];
  v17 = *&v28[64];
  v18 = v28[72] & 0x3F;
  sub_2405F70DC(&v27, v15);
  sub_2405F70DC(v26, v15);
  sub_2405F70DC(&v27, v15);
  sub_2405F70DC(v26, v15);
  v12 = _s12AppleIDSetup7SymptomV2eeoiySbAC_ACtFZ_0(&v19, v16);
  sub_2405F7114(v29);
  sub_2405F717C(&v27);
  sub_2405F717C(v26);
  return v12 & 1;
}

unint64_t sub_2405F575C()
{
  result = qword_27E4B8700;
  if (!qword_27E4B8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8700);
  }

  return result;
}

unint64_t sub_2405F57B0()
{
  result = qword_27E4B8708;
  if (!qword_27E4B8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8708);
  }

  return result;
}

unint64_t sub_2405F5804()
{
  result = qword_27E4B8710;
  if (!qword_27E4B8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8710);
  }

  return result;
}

unint64_t sub_2405F5858()
{
  result = qword_27E4B8718;
  if (!qword_27E4B8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8718);
  }

  return result;
}

unint64_t sub_2405F58AC()
{
  result = qword_27E4B8720;
  if (!qword_27E4B8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8720);
  }

  return result;
}

unint64_t sub_2405F5900()
{
  result = qword_27E4B8748;
  if (!qword_27E4B8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8748);
  }

  return result;
}

uint64_t sub_2405F5954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s12AppleIDSetup13RepairCommandV8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (!(v4 >> 62))
  {
    if (v8 >> 62)
    {

      goto LABEL_24;
    }

    v11 = v2 == v6 && v3 == v7;
    if (!v11 && (sub_24075ACF4() & 1) == 0)
    {
      sub_2405F7034(v2, v3, v5, v4);
      goto LABEL_24;
    }

    sub_2405F7034(v6, v7, v9, v8);
    sub_2405F7034(v2, v3, v5, v4);
    sub_2405F7034(v2, v3, v5, v4);
    sub_2405F7034(v6, v7, v9, v8);
    v12 = sub_2406B7F50(v4, v8);
    sub_2405F7088(v2, v3, v5, v4);
    sub_2405F7088(v6, v7, v9, v8);
    sub_2405F7088(v6, v7, v9, v8);
    sub_2405F7088(v2, v3, v5, v4);
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v10 = 1;
    return v10 & 1;
  }

  if (v4 >> 62 != 1)
  {
    if (v8 >> 62 != 2 || (v7 | v6 | v9) != 0 || v8 != 0x8000000000000000)
    {
      goto LABEL_24;
    }

    sub_2405F7088(*a1, v3, v5, v4);
    sub_2405F7088(0, 0, 0, 0x8000000000000000);
    goto LABEL_22;
  }

  if (v8 >> 62 != 1)
  {
LABEL_24:
    sub_2405F7034(v6, v7, v9, v8);
    sub_2405F7088(v2, v3, v5, v4);
    sub_2405F7088(v6, v7, v9, v8);
LABEL_25:
    v10 = 0;
    return v10 & 1;
  }

  sub_2405F7088(*a1, v3, v5, v4);
  sub_2405F7088(v6, v7, v9, v8);
  v10 = v6 ^ v2 ^ 1;
  return v10 & 1;
}

unint64_t sub_2405F5BFC()
{
  result = qword_27E4B8770;
  if (!qword_27E4B8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8770);
  }

  return result;
}

unint64_t sub_2405F5C50()
{
  result = qword_27E4B8778;
  if (!qword_27E4B8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8778);
  }

  return result;
}

unint64_t sub_2405F5CA4()
{
  result = qword_27E4B8780;
  if (!qword_27E4B8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8780);
  }

  return result;
}

unint64_t sub_2405F5CF8()
{
  result = qword_27E4B8788;
  if (!qword_27E4B8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8788);
  }

  return result;
}

unint64_t sub_2405F5D4C()
{
  result = qword_27E4B87B0;
  if (!qword_27E4B87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87B0);
  }

  return result;
}

unint64_t sub_2405F5DA0(uint64_t a1)
{
  result = sub_2405F5DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2405F5DC8()
{
  result = qword_27E4B87B8;
  if (!qword_27E4B87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87B8);
  }

  return result;
}

unint64_t sub_2405F5E1C()
{
  result = qword_27E4B87C0;
  if (!qword_27E4B87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87C0);
  }

  return result;
}

unint64_t sub_2405F5E70(uint64_t a1)
{
  result = sub_2405F5E98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2405F5E98()
{
  result = qword_27E4B87C8;
  if (!qword_27E4B87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87C8);
  }

  return result;
}

unint64_t sub_2405F5F2C()
{
  result = qword_27E4B87D0;
  if (!qword_27E4B87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87D0);
  }

  return result;
}

unint64_t sub_2405F5F80()
{
  result = qword_27E4B87D8;
  if (!qword_27E4B87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87D8);
  }

  return result;
}

unint64_t sub_2405F5FD4()
{
  result = qword_27E4B87E0;
  if (!qword_27E4B87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87E0);
  }

  return result;
}

unint64_t sub_2405F602C()
{
  result = qword_27E4B87E8;
  if (!qword_27E4B87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87E8);
  }

  return result;
}

unint64_t sub_2405F6080(uint64_t a1)
{
  result = sub_2405F60A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2405F60A8()
{
  result = qword_27E4B87F0;
  if (!qword_27E4B87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87F0);
  }

  return result;
}

unint64_t sub_2405F60FC(uint64_t a1)
{
  result = sub_2405F6124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2405F6124()
{
  result = qword_27E4B87F8;
  if (!qword_27E4B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B87F8);
  }

  return result;
}

uint64_t sub_2405F61B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2405F620C()
{
  result = qword_27E4B8800;
  if (!qword_27E4B8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8800);
  }

  return result;
}

unint64_t sub_2405F6260()
{
  result = qword_27E4B8808;
  if (!qword_27E4B8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8808);
  }

  return result;
}

unint64_t sub_2405F62B4()
{
  result = qword_27E4B8810;
  if (!qword_27E4B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8810);
  }

  return result;
}

unint64_t sub_2405F630C()
{
  result = qword_27E4B8818;
  if (!qword_27E4B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8818);
  }

  return result;
}

unint64_t sub_2405F6364()
{
  result = qword_27E4B8820;
  if (!qword_27E4B8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8820);
  }

  return result;
}

unint64_t sub_2405F63BC()
{
  result = qword_27E4B8828;
  if (!qword_27E4B8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8828);
  }

  return result;
}

unint64_t sub_2405F6410(uint64_t a1)
{
  result = sub_2405F5E1C();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup7SymptomV4KindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup13RepairCommandV7RequestO(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2405F64AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 89))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 88) & 0x3C | (*(a1 + 88) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2405F64FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 80) = 0;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 88) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_2405F6588(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 88) = *(result + 88) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0x80;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12AppleIDSetup13RepairCommandV8ResponseO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2405F65F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 32))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 24) >> 57) >> 5) | (4 * ((*(a1 + 24) >> 57) & 0x18 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2405F6654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_2405F66BC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
  }

  return result;
}

unint64_t sub_2405F677C()
{
  result = qword_27E4B8830;
  if (!qword_27E4B8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8830);
  }

  return result;
}

unint64_t sub_2405F67D4()
{
  result = qword_27E4B8838;
  if (!qword_27E4B8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8838);
  }

  return result;
}

unint64_t sub_2405F682C()
{
  result = qword_27E4B8840;
  if (!qword_27E4B8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8840);
  }

  return result;
}

unint64_t sub_2405F6884()
{
  result = qword_27E4B8848;
  if (!qword_27E4B8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8848);
  }

  return result;
}

unint64_t sub_2405F68DC()
{
  result = qword_27E4B8850;
  if (!qword_27E4B8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8850);
  }

  return result;
}

unint64_t sub_2405F6934()
{
  result = qword_27E4B8858;
  if (!qword_27E4B8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8858);
  }

  return result;
}

unint64_t sub_2405F698C()
{
  result = qword_27E4B8860;
  if (!qword_27E4B8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8860);
  }

  return result;
}

unint64_t sub_2405F69E4()
{
  result = qword_27E4B8868;
  if (!qword_27E4B8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8868);
  }

  return result;
}

unint64_t sub_2405F6A3C()
{
  result = qword_27E4B8870;
  if (!qword_27E4B8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8870);
  }

  return result;
}

unint64_t sub_2405F6A94()
{
  result = qword_27E4B8878;
  if (!qword_27E4B8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8878);
  }

  return result;
}

unint64_t sub_2405F6AEC()
{
  result = qword_27E4B8880;
  if (!qword_27E4B8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8880);
  }

  return result;
}

unint64_t sub_2405F6B44()
{
  result = qword_27E4B8888;
  if (!qword_27E4B8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8888);
  }

  return result;
}

unint64_t sub_2405F6B9C()
{
  result = qword_27E4B8890;
  if (!qword_27E4B8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8890);
  }

  return result;
}

unint64_t sub_2405F6BF4()
{
  result = qword_27E4B8898;
  if (!qword_27E4B8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8898);
  }

  return result;
}

unint64_t sub_2405F6C4C()
{
  result = qword_27E4B88A0;
  if (!qword_27E4B88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88A0);
  }

  return result;
}

unint64_t sub_2405F6CA4()
{
  result = qword_27E4B88A8;
  if (!qword_27E4B88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88A8);
  }

  return result;
}

unint64_t sub_2405F6CFC()
{
  result = qword_27E4B88B0;
  if (!qword_27E4B88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88B0);
  }

  return result;
}

unint64_t sub_2405F6D54()
{
  result = qword_27E4B88B8;
  if (!qword_27E4B88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88B8);
  }

  return result;
}

unint64_t sub_2405F6DAC()
{
  result = qword_27E4B88C0;
  if (!qword_27E4B88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88C0);
  }

  return result;
}

unint64_t sub_2405F6E04()
{
  result = qword_27E4B88C8;
  if (!qword_27E4B88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88C8);
  }

  return result;
}

unint64_t sub_2405F6E5C()
{
  result = qword_27E4B88D0;
  if (!qword_27E4B88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88D0);
  }

  return result;
}

unint64_t sub_2405F6EB4()
{
  result = qword_27E4B88D8;
  if (!qword_27E4B88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88D8);
  }

  return result;
}

uint64_t sub_2405F6F08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002407869D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7953726961706572 && a2 == 0xED00006D6F74706DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_2405F7034(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!(a4 >> 62))
  {
  }
}

void sub_2405F7088(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!(a4 >> 62))
  {
  }
}

uint64_t sub_2405F7114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B88E0, &qword_240767CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AISAnalytics.shared.getter()
{
  type metadata accessor for AISAnalytics();

  return swift_initStaticObject();
}

uint64_t sub_2405F7210(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2405F72B8(v3, v1, v2);
}

uint64_t sub_2405F7250(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2405F72B8(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v38[3] = a2;
  v38[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  a3[1](a2, a3);
  v7 = sub_24075A084();

  sub_2405F7830(v38, &v36);
  v8 = swift_allocObject();
  sub_24058C9C0(&v36, v8 + 16);
  v34 = sub_2405F7894;
  v35 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24069F0E8;
  v33 = &block_descriptor;
  v9 = _Block_copy(aBlock);

  v10 = AnalyticsSendEventLazy();
  _Block_release(v9);

  if (!v10)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v24 = sub_240759AE4();
    __swift_project_value_buffer(v24, qword_280FADA00);
    sub_2405F7830(v38, aBlock);
    v12 = sub_240759AC4();
    v25 = sub_24075A5D4();
    if (os_log_type_enabled(v12, v25))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v36 = v15;
      *v14 = 136315138;
      __swift_project_boxed_opaque_existential_1(aBlock, v33);
      v26 = a3[3](a2, a3);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v29 = sub_2405BBA7C(v26, v28, &v36);

      *(v14 + 4) = v29;
      _os_log_impl(&dword_240579000, v12, v25, "Failed to send Core Analytics event: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      goto LABEL_10;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_280FADA00);
  sub_2405F7830(v38, aBlock);
  sub_2405F7830(v38, &v36);
  v12 = sub_240759AC4();
  v13 = sub_24075A5D4();
  if (!os_log_type_enabled(v12, v13))
  {

    __swift_destroy_boxed_opaque_existential_1(&v36);
    goto LABEL_13;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v31 = v15;
  *v14 = 136315394;
  __swift_project_boxed_opaque_existential_1(aBlock, v33);
  v16 = a3[3](a2, a3);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v19 = sub_2405BBA7C(v16, v18, &v31);

  *(v14 + 4) = v19;
  *(v14 + 12) = 2080;
  __swift_project_boxed_opaque_existential_1(&v36, v37);
  a3[2](a2, a3);
  sub_2405F7900();
  v20 = sub_240759F84();
  v22 = v21;

  __swift_destroy_boxed_opaque_existential_1(&v36);
  v23 = sub_2405BBA7C(v20, v22, &v31);

  *(v14 + 14) = v23;
  _os_log_impl(&dword_240579000, v12, v13, "Sent Core Analytics event:  %s %s", v14, 0x16u);
  swift_arrayDestroy();
LABEL_10:
  MEMORY[0x245CC76B0](v15, -1, -1);
  MEMORY[0x245CC76B0](v14, -1, -1);

  return __swift_destroy_boxed_opaque_existential_1(v38);
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

uint64_t sub_2405F7830(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2405F7894()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2405F7900()
{
  result = qword_27E4B88E8;
  if (!qword_27E4B88E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B88E8);
  }

  return result;
}

Swift::String __swiftcall String.localized(inTable:)(Swift::String inTable)
{
  v1 = sub_2407597F4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_24075A064();
  MEMORY[0x28223BE20](v2 - 8);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_2407597E4();
  v6 = sub_24075A0D4();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2407597F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24075A064();
  MEMORY[0x28223BE20](v3 - 8);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

uint64_t String.ageAttestationLocalized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2407597F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24075A064();
  MEMORY[0x28223BE20](v3 - 8);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

uint64_t String.ageMigrationLocalized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2407597F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24075A064();
  MEMORY[0x28223BE20](v3 - 8);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

Swift::String __swiftcall String.ageMigrationLocalized(forDeviceClass:)(AppleIDSetup::AISDeviceClass forDeviceClass)
{
  v3 = sub_2405F82A0(forDeviceClass, v1, v2, sub_2405F7E94);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2405F7E94(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (v5 > 2 || v5 == 0)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v7 = sub_240759AE4();
    __swift_project_value_buffer(v7, qword_280FADA00);

    v8 = sub_240759AC4();
    v9 = sub_24075A5E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315394;
      v12 = 0xE600000000000000;
      v13 = 0x656369766544;
      v14 = 0xEB00000000686374;
      v15 = 0x615720656C707041;
      if (v5 != 6)
      {
        v15 = 0xD000000000000010;
        v14 = 0x8000000240786D10;
      }

      v16 = 0xE300000000000000;
      v17 = 6512973;
      if (v5 != 4)
      {
        v17 = 0x565420656C707041;
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v15 = v17;
        v14 = v16;
      }

      v18 = 0xE400000000000000;
      v19 = 1684099177;
      if (v5 != 2)
      {
        v19 = 0x646F50656D6F48;
        v18 = 0xE700000000000000;
      }

      if (v5)
      {
        v13 = 0x656E6F685069;
        v12 = 0xE600000000000000;
      }

      if (v5 > 1)
      {
        v13 = v19;
        v12 = v18;
      }

      if (v5 <= 3)
      {
        v20 = v13;
      }

      else
      {
        v20 = v15;
      }

      if (v5 <= 3)
      {
        v21 = v12;
      }

      else
      {
        v21 = v14;
      }

      v22 = sub_2405BBA7C(v20, v21, &v27);

      *(v10 + 4) = v22;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2405BBA7C(a2, a3, &v27);
      _os_log_impl(&dword_240579000, v8, v9, "Unknown device class %s asking for localization in key %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v11, -1, -1);
      MEMORY[0x245CC76B0](v10, -1, -1);
    }

    v27 = a2;
    v28 = a3;

    MEMORY[0x245CC5E60](95, 0xE100000000000000);
    MEMORY[0x245CC5E60](0x454349564544, 0xE600000000000000);
  }

  else
  {
    v27 = a2;
    v28 = a3;

    MEMORY[0x245CC5E60](95, 0xE100000000000000);
    sub_2405F9728();
    sub_24075A744();

    sub_24075A744();

    v23 = sub_24075A0F4();
    v25 = v24;

    MEMORY[0x245CC5E60](v23, v25);
  }

  return v27;
}

Swift::String __swiftcall String.ageMigrationLocalizedForCurrentDeviceClass(andPeer:)(AppleIDSetup::AISDeviceClass andPeer)
{
  v3 = sub_2405F82A0(andPeer, v1, v2, sub_2405F8404);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2405F82A0(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v8 = sub_2407597F4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24075A064();
  MEMORY[0x28223BE20](v9 - 8);
  v13 = *a1;
  a4(&v13, a2, a3);
  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

id sub_2405F8404(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    AISDeviceClass.init(rawValue:)(deviceClassNumber);
    if (v66 == 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v66;
    }

    if (sub_2405F944C(v9, &unk_285266BF0))
    {
      sub_2405F9728();
      v10 = sub_24075A744();
      v12 = v11;

      v66 = v10;
      v67 = v12;
      sub_24075A744();

      v13 = sub_24075A0F4();
      v15 = v14;
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v16 = sub_240759AE4();
      __swift_project_value_buffer(v16, qword_280FADA00);

      v17 = sub_240759AC4();
      v18 = sub_24075A5E4();

      if (os_log_type_enabled(v17, v18))
      {
        v64 = a2;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66 = v20;
        *v19 = 136315394;
        v21 = 0xE600000000000000;
        v22 = 0x615720656C707041;
        v23 = 0xEB00000000686374;
        if (v9 != 6)
        {
          v22 = 0xD000000000000010;
          v23 = 0x8000000240786D10;
        }

        v24 = 0xE300000000000000;
        v25 = 6512973;
        if (v9 != 4)
        {
          v25 = 0x565420656C707041;
          v24 = 0xE800000000000000;
        }

        if (v9 <= 5)
        {
          v22 = v25;
          v23 = v24;
        }

        v26 = 0xE400000000000000;
        v27 = 1684099177;
        if (v9 != 2)
        {
          v27 = 0x646F50656D6F48;
          v26 = 0xE700000000000000;
        }

        v28 = 0x656E6F685069;
        if (v9)
        {
          v21 = 0xE600000000000000;
        }

        else
        {
          v28 = 0x656369766544;
        }

        if (v9 > 1)
        {
          v21 = v26;
        }

        else
        {
          v27 = v28;
        }

        if (v9 <= 3)
        {
          v29 = v27;
        }

        else
        {
          v29 = v22;
        }

        if (v9 <= 3)
        {
          v30 = v21;
        }

        else
        {
          v30 = v23;
        }

        v13 = 0x454349564544;
        v31 = sub_2405BBA7C(v29, v30, &v66);

        *(v19 + 4) = v31;
        *(v19 + 12) = 2080;
        a2 = v64;
        *(v19 + 14) = sub_2405BBA7C(v64, a3, &v66);
        _os_log_impl(&dword_240579000, v17, v18, "Unexpected current device type %s asking for localization in %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC76B0](v20, -1, -1);
        MEMORY[0x245CC76B0](v19, -1, -1);

        v15 = 0xE600000000000000;
      }

      else
      {
        v13 = 0x454349564544;

        v15 = 0xE600000000000000;
      }
    }

    if (sub_2405F944C(v5, &unk_285266BF0))
    {
      v32 = 0x615720656C707041;
      v33 = 0xEB00000000686374;
      if (v5 != 6)
      {
        v32 = 0xD000000000000010;
        v33 = 0x8000000240786D10;
      }

      v34 = 0xE300000000000000;
      v35 = 6512973;
      if (v5 != 4)
      {
        v35 = 0x565420656C707041;
        v34 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v33 = v34;
      }

      else
      {
        v35 = v32;
      }

      v36 = 1684099177;
      v37 = 0xE700000000000000;
      if (v5 == 2)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v36 = 0x646F50656D6F48;
      }

      v38 = 0x656E6F685069;
      if (!v5)
      {
        v38 = 0x656369766544;
      }

      if (v5 <= 1)
      {
        v36 = v38;
        v37 = 0xE600000000000000;
      }

      if (v5 <= 3)
      {
        v39 = v36;
      }

      else
      {
        v39 = v35;
      }

      if (v5 <= 3)
      {
        v40 = v37;
      }

      else
      {
        v40 = v33;
      }

      v66 = v39;
      v67 = v40;
      sub_2405F9728();
      v41 = sub_24075A744();
      v43 = v42;

      v66 = v41;
      v67 = v43;
      sub_24075A744();

      v44 = sub_24075A0F4();
      v46 = v45;
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v47 = sub_240759AE4();
      __swift_project_value_buffer(v47, qword_280FADA00);

      v48 = sub_240759AC4();
      v49 = sub_24075A5E4();

      if (os_log_type_enabled(v48, v49))
      {
        v65 = v13;
        v50 = a2;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v66 = v52;
        *v51 = 136315394;
        v53 = 0xE600000000000000;
        v54 = 0x615720656C707041;
        v55 = 0xEB00000000686374;
        if (v5 != 6)
        {
          v54 = 0xD000000000000010;
          v55 = 0x8000000240786D10;
        }

        v56 = 0xE300000000000000;
        v57 = 6512973;
        if (v5 != 4)
        {
          v57 = 0x565420656C707041;
          v56 = 0xE800000000000000;
        }

        if (v5 <= 5)
        {
          v54 = v57;
          v55 = v56;
        }

        v58 = 0xE400000000000000;
        v59 = 1684099177;
        if (v5 != 2)
        {
          v59 = 0x646F50656D6F48;
          v58 = 0xE700000000000000;
        }

        v60 = 0x656E6F685069;
        if (v5)
        {
          v53 = 0xE600000000000000;
        }

        else
        {
          v60 = 0x656369766544;
        }

        if (v5 > 1)
        {
          v53 = v58;
        }

        else
        {
          v59 = v60;
        }

        if (v5 <= 3)
        {
          v61 = v59;
        }

        else
        {
          v61 = v54;
        }

        if (v5 <= 3)
        {
          v62 = v53;
        }

        else
        {
          v62 = v55;
        }

        v44 = 0x454349564544;
        v63 = sub_2405BBA7C(v61, v62, &v66);

        *(v51 + 4) = v63;
        *(v51 + 12) = 2080;
        a2 = v50;
        *(v51 + 14) = sub_2405BBA7C(v50, a3, &v66);
        _os_log_impl(&dword_240579000, v48, v49, "Unexpected peer device type %s asking for localization in %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC76B0](v52, -1, -1);
        MEMORY[0x245CC76B0](v51, -1, -1);

        v46 = 0xE600000000000000;
        v13 = v65;
      }

      else
      {
        v44 = 0x454349564544;

        v46 = 0xE600000000000000;
      }
    }

    v66 = a2;
    v67 = a3;

    MEMORY[0x245CC5E60](95, 0xE100000000000000);
    MEMORY[0x245CC5E60](v13, v15);

    MEMORY[0x245CC5E60](95, 0xE100000000000000);
    MEMORY[0x245CC5E60](v44, v46);

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.ageBasedAccountSupportLocalized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2407597F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24075A064();
  MEMORY[0x28223BE20](v3 - 8);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

uint64_t String.ageBasedAccountSupportLocalized(forAgeRange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2407597F4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24075A064();
  MEMORY[0x28223BE20](v5 - 8);

  MEMORY[0x245CC5E60](95, 0xE100000000000000);
  v6 = 0xE500000000000000;
  v7 = 0x544C554441;
  if (a1 == 2)
  {
    v7 = 1313162580;
    v6 = 0xE400000000000000;
  }

  if (a1 == 1)
  {
    v8 = 0x444C494843;
  }

  else
  {
    v8 = v7;
  }

  if (a1 == 1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x245CC5E60](v8, v9);

  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

uint64_t String.localizableKeySuffix(for:)(uint64_t a1)
{
  v1 = 0x544C554441;
  if (a1 == 2)
  {
    v1 = 1313162580;
  }

  if (a1 == 1)
  {
    return 0x444C494843;
  }

  else
  {
    return v1;
  }
}

Swift::String __swiftcall String.ageBasedAccountSupportLocalized(forDeviceClass:)(AppleIDSetup::AISDeviceClass forDeviceClass)
{
  v3 = sub_2405F90C8(forDeviceClass, v1, v2, sub_2405F7E94);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall String.ageBasedAccountSupportLocalizedForCurrentDeviceClass(andPeer:)(AppleIDSetup::AISDeviceClass andPeer)
{
  v3 = sub_2405F90C8(andPeer, v1, v2, sub_2405F8404);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2405F90C8(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v8 = sub_2407597F4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24075A064();
  MEMORY[0x28223BE20](v9 - 8);
  v13 = *a1;
  a4(&v13, a2, a3);
  sub_24075A074();
  type metadata accessor for AISChildSetupFlowResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_2407597E4();
  return sub_24075A0D4();
}

id String.ageBasedAccountSupportLocalizedForCurrentDeviceClass(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2407597F4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24075A064();
  MEMORY[0x28223BE20](v7 - 8);
  v19 = a2;
  v20 = a3;

  MEMORY[0x245CC5E60](95, 0xE100000000000000);
  v8 = 0xE500000000000000;
  v9 = 0x544C554441;
  if (a1 == 2)
  {
    v9 = 1313162580;
    v8 = 0xE400000000000000;
  }

  if (a1 == 1)
  {
    v10 = 0x444C494843;
  }

  else
  {
    v10 = v9;
  }

  if (a1 == 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = v8;
  }

  MEMORY[0x245CC5E60](v10, v11);

  v12 = v19;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    AISDeviceClass.init(rawValue:)(deviceClassNumber);
    v16 = v19;
    if (v19 == 8)
    {
      v16 = 0;
    }

    LOBYTE(v19) = v16;
    sub_2405F7E94(&v19, v12, v20);

    sub_24075A074();
    type metadata accessor for AISChildSetupFlowResult();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_2407597E4();
    return sub_24075A0D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2405F944C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_240767D70[v6] != qword_240767D70[a1]);
  return v4 != 0;
}

Swift::String __swiftcall String.adding(deviceClass:)(AppleIDSetup::AISDeviceClass deviceClass)
{
  v3 = v2;
  v4 = v1;
  if (*deviceClass > 3u)
  {
    goto LABEL_8;
  }

  if (*deviceClass > 1u)
  {
    if (*deviceClass == 2)
    {
LABEL_8:
      sub_2405F9728();
      sub_24075A744();

      sub_24075A744();

      v5 = sub_24075A0F4();
      v7 = v6;

      MEMORY[0x245CC5E60](v5, v7);

      v11 = v4;
      v12 = v3;

      MEMORY[0x245CC5E60](95, 0xE100000000000000);

      goto LABEL_9;
    }
  }

  else if (*deviceClass)
  {
    goto LABEL_8;
  }

  v11 = v1;
  v12 = v2;

  MEMORY[0x245CC5E60](0x4543495645445FLL, 0xE700000000000000);
LABEL_9:
  v8 = v11;
  v9 = v12;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_2405F9728()
{
  result = qword_27E4B88F0;
  if (!qword_27E4B88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B88F0);
  }

  return result;
}

uint64_t static AISShieldControllerHostInterface.xpcInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_2405FD8E0();
  inited = swift_initStackObject();
  inited[4] = sub_240590794(0, &unk_27E4B8900, 0x277CBEAC0);
  inited[5] = sub_240590794(0, &qword_27E4BDF20, 0x277CCACA8);
  inited[6] = sub_240590794(0, &qword_27E4B8910, 0x277CCABB0);
  inited[7] = sub_240590794(0, &qword_27E4B8918, 0x277CBEBC0);
  inited[8] = sub_240590794(0, &unk_27E4B8920, 0x277CBEA60);
  inited[9] = sub_240590794(0, &unk_27E4BBE40, 0x277CBEAA8);
  inited[10] = sub_240590794(0, &unk_27E4B8930, 0x277CBEA90);
  inited[11] = sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_24075A524();

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

id AISShieldControllerHostInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISShieldControllerHostInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISShieldControllerHostInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2405F9C3C()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2405F9CB0(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2405F9D04@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24075AA34();

  *a2 = v3 != 0;
  return result;
}

id sub_2405F9DF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2405F9FFC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2405FA078, 0, 0);
}

uint64_t sub_2405FA078()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = sub_2405FA21C;
    v6 = *(v0 + 16);

    return v10(v6, ObjectType, v3);
  }

  else
  {

    v8 = *(v0 + 32);
    v8[2](v8, 1);
    _Block_release(v8);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2405FA21C(char a1)
{
  *(*v1 + 56) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2405FA33C, 0, 0);
}

uint64_t sub_2405FA33C()
{
  v1 = *(v0 + 32);
  v1[2](v1, *(v0 + 56));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2405FA530(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2405FA5A8, 0, 0);
}

uint64_t sub_2405FA5A8()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_2405FA744;

    return v9(ObjectType, v3);
  }

  else
  {

    v7 = *(v0 + 24);
    v7[2](v7, 1);
    _Block_release(v7);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2405FA744(char a1)
{
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2405FA864, 0, 0);
}

uint64_t sub_2405FA864()
{
  v1 = *(v0 + 24);
  v1[2](v1, *(v0 + 48));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2405FAA6C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v3[4] = sub_240759F74();
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2405FAB20, 0, 0);
}

uint64_t sub_2405FAB20()
{
  v1 = v0[2] + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_2405FACCC;
    v6 = v0[4];

    return v11(v6, ObjectType, v3);
  }

  else
  {
    v8 = v0[2];

    v9 = v0[3];
    v9[2](v9, 0);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2405FACCC(char a1)
{
  *(*v1 + 56) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2405FAE08, 0, 0);
}

uint64_t sub_2405FAE08()
{
  v1 = *(v0 + 24);
  v1[2](v1, *(v0 + 56));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_2405FAE88(unint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);
  v7 = a2;
  v8 = sub_240759AC4();
  v9 = sub_24075A5D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 4) = v13;
    *v11 = v14;
    _os_log_impl(&dword_240579000, v8, v9, "Calling AISShieldControllerHostProtocol shieldRequestFinishedError %@", v10, 0xCu);
    sub_2405B8A50(v11, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v15 = v3 + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    if (a2)
    {
      swift_willThrow();
      v17 = a2;
    }

    else
    {
      if (!a1)
      {
        sub_2405BD570(MEMORY[0x277D84F90]);
      }

      v18 = objc_allocWithZone(AISShieldAppleIDSignInResult);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
      v19 = sub_240759F54();

      v17 = [v18 initWithAuthResults_];
    }

    ObjectType = swift_getObjectType();
    v21 = *(v16 + 32);
    v22 = a2;
    v21(v17, a2 != 0, ObjectType, v16);
    swift_unknownObjectRelease();

    sub_2405FDED4(v17);
  }
}

void sub_2405FB234(void *a1)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_280FADA00);
  v4 = a1;
  v5 = sub_240759AC4();
  v6 = sub_24075A5C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_240579000, v5, v6, "handle: %@ did deactivate", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v10 = v1 + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    oslog = [objc_allocWithZone(AISShieldAppleIDSignInResult) init];
    (*(v11 + 32))(oslog, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_240759AC4();
    v13 = sub_24075A5E4();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_240579000, oslog, v13, "ShieldPresenter remoteAlertHandleDidDeactivate failed because there is no delegate", v14, 2u);
      MEMORY[0x245CC76B0](v14, -1, -1);
    }
  }
}

void sub_2405FB4D8(void *a1, void *a2)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_280FADA00);
  v6 = a1;
  v7 = a2;
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2080;
    v13 = v6;
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v15 = sub_24075A0E4();
    v17 = sub_2405BBA7C(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_240579000, v8, v9, "handle: %@ did invalidate with error: %s", v10, 0x16u);
    sub_2405B8A50(v11, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CC76B0](v12, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v18 = *(v2 + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler);
  *(v2 + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler) = 0;

  v19 = v2 + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_2405FDD34();
    v22 = swift_allocError();
    (*(v20 + 32))(v22, 1, ObjectType, v20);

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_240759AC4();
    v24 = sub_24075A5E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_240579000, v23, v24, "ShieldPresenter remoteAlertHandle didInvalidateWithError failed because there is no delegate", v25, 2u);
      MEMORY[0x245CC76B0](v25, -1, -1);
    }
  }
}

Swift::Void __swiftcall AISShieldController.presentShieldOptions()()
{
  v1 = [objc_allocWithZone(AISShieldFlowContext) init];
  [v0 presentShieldFlowWithContext_];
}

Swift::Void __swiftcall AISShieldController.presentShieldFlow(with:)(AISShieldFlowContext *with)
{
  v2 = [objc_allocWithZone(type metadata accessor for ShieldPresenter()) init];
  *&v2[OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate + 8] = &off_28526BA50;
  swift_unknownObjectWeakAssign();
  [v1 setPresenter_];
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_280FADA00);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_240579000, v4, v5, "ShieldController Launching Shield view service", v6, 2u);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v7 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v8 = sub_24075A084();
  v9 = sub_24075A084();
  v71 = [v7 initWithServiceName:v8 viewControllerClassName:v9];

  v10 = [objc_opt_self() anonymousListener];
  [v1 setRemoteListener_];

  v11 = [v1 remoteListener];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate_];
  }

  v13 = [v1 remoteListener];
  [v13 resume];

  v14 = v1;
  v15 = sub_240759AC4();
  v16 = sub_24075A5C4();

  if (os_log_type_enabled(v15, v16))
  {
    v68 = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v72 = v18;
    *v17 = 136315650;
    [v14 remoteListener];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8970, &unk_240767DD0);
    v19 = sub_24075A0E4();
    v21 = sub_2405BBA7C(v19, v20, &v72);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v14 remoteListener];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 endpoint];

      [v24 _endpoint];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8978, &unk_240767DE0);
    v25 = sub_24075A0E4();
    v27 = sub_2405BBA7C(v25, v26, &v72);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = [v14 remoteListener];
    [v28 delegate];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8980, &qword_240767DF0);
    v29 = sub_24075A0E4();
    v31 = sub_2405BBA7C(v29, v30, &v72);

    *(v17 + 24) = v31;
    _os_log_impl(&dword_240579000, v15, v16, "Remote Listener: \n%s\nendpoint: %s\ndelegate: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  else
  {
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  *(inited + 32) = 0x6C46646C65696873;
  *(inited + 40) = 0xEA0000000000776FLL;
  v34 = [(AISShieldFlowContext *)with setupSelfFlow];
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = v34;
  v35 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  v36 = [v14 remoteListener];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 endpoint];

    v39 = [v38 _endpoint];
  }

  else
  {
    v39 = 0;
  }

  [v32 setXpcEndpoint_];
  swift_unknownObjectRelease();
  sub_2405B9E48(v35);

  v40 = sub_240759F54();

  [v32 setUserInfo_];

  v41 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v42 = [objc_opt_self() newHandleWithDefinition:v71 configurationContext:v32];
  [v14 setRemoteHandler_];

  v43 = [v14 remoteHandler];
  v44 = *&v2[OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler];
  *&v2[OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler] = v43;

  v45 = v14;
  v46 = sub_240759AC4();
  v47 = sub_24075A5C4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v70 = v41;
    v49 = v32;
    v50 = v2;
    v51 = swift_slowAlloc();
    v72 = v51;
    *v48 = 136315138;
    [v45 remoteHandler];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8968, &qword_240767DC8);
    v52 = sub_24075A0E4();
    v54 = sub_2405BBA7C(v52, v53, &v72);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_240579000, v46, v47, "Activating a new alert handle: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v55 = v51;
    v2 = v50;
    v32 = v49;
    v41 = v70;
    MEMORY[0x245CC76B0](v55, -1, -1);
    MEMORY[0x245CC76B0](v48, -1, -1);
  }

  v56 = [v45 remoteHandler];
  if (v56)
  {
    v57 = v56;
    [v56 registerObserver_];
  }

  v58 = [v45 remoteHandler];
  if (v58)
  {
    v59 = v58;
    [v58 activateWithContext_];
  }

  v60 = v45;
  v61 = sub_240759AC4();
  v62 = sub_24075A5C4();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v72 = v64;
    *v63 = 136315138;
    [v60 remoteHandler];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8968, &qword_240767DC8);
    v65 = sub_24075A0E4();
    v67 = sub_2405BBA7C(v65, v66, &v72);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_240579000, v61, v62, "Activated a new alert handle: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x245CC76B0](v64, -1, -1);
    MEMORY[0x245CC76B0](v63, -1, -1);
  }
}

id sub_2405FC414()
{
  v1 = v0;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_240579000, v3, v4, "ShieldController deinitialized", v5, 2u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = OBJC_IVAR___AISShieldController_remoteHandler;
  if (*&v1[OBJC_IVAR___AISShieldController_presenter])
  {
    v7 = *&v1[OBJC_IVAR___AISShieldController_remoteHandler];
    if (v7)
    {
      [v7 unregisterObserver_];
      v6 = OBJC_IVAR___AISShieldController_remoteHandler;
    }
  }

  v8 = *&v1[v6];
  if (v8)
  {
    [v8 invalidate];
  }

  v10.receiver = v1;
  v10.super_class = AISShieldController;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

id AISShieldController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___AISShieldController_remoteListener] = 0;
  *&v0[OBJC_IVAR___AISShieldController_remoteHandler] = 0;
  *&v0[OBJC_IVAR___AISShieldController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = AISShieldController;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2405FC710(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_2405FC730, 0, 0);
}

uint64_t sub_2405FC730()
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_280FADA00);
  v2 = sub_240759AC4();
  v3 = sub_24075A604();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_240579000, v2, v3, "ShieldController shieldSetupSelectedAccount accountType %ld", v5, 0xCu);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = v0[19];

  v7 = [v6 delegate];
  v0[20] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = v0[18];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_2405FC9E8;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A48, &qword_240767F70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2405FCB2C;
    v0[13] = &block_descriptor_65;
    v0[14] = v10;
    [v8 shieldSetupSelectedAccount:v9 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v11 = sub_240759AC4();
    v12 = sub_24075A5E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_240579000, v11, v12, "ShieldController shieldSetupSelectedAccount failed because there is no delegate", v13, 2u);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14(1);
  }
}

uint64_t sub_2405FC9E8()
{

  return MEMORY[0x2822009F8](sub_2405FCAC8, 0, 0);
}

uint64_t sub_2405FCAC8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2405FCB2C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_2405FCB88(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_2405FCBA8, 0, 0);
}

uint64_t sub_2405FCBA8()
{
  v19 = v0;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_280FADA00);

  v2 = sub_240759AC4();
  v3 = sub_24075A604();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
    v6 = sub_240759F84();
    v8 = sub_2405BBA7C(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_240579000, v2, v3, "ShieldController performAIDASignIn authResults %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v9 = [*(v0 + 152) delegate];
  *(v0 + 160) = v9;
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
    v11 = sub_240759F54();
    *(v0 + 168) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 176;
    *(v0 + 24) = sub_2405FCF28;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A48, &qword_240767F70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2405FCB2C;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v12;
    [v10 performAIDASignInWith:v11 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = sub_240759AC4();
    v14 = sub_24075A5E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_240579000, v13, v14, "ShieldController performAIDASignIn failed because there is no delegate", v15, 2u);
      MEMORY[0x245CC76B0](v15, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16(1);
  }
}

uint64_t sub_2405FCF28()
{

  return MEMORY[0x2822009F8](sub_2405FD008, 0, 0);
}

uint64_t sub_2405FD008()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2405FD094()
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_280FADA00);
  v2 = sub_240759AC4();
  v3 = sub_24075A604();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "ShieldController setupPasscodeAndBiometric", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = [v5 delegate];
  v0[19] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_2405FD328;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A48, &qword_240767F70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2405FCB2C;
    v0[13] = &block_descriptor_61;
    v0[14] = v8;
    [v7 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_240579000, v9, v10, "ShieldController setupPasscodeAndBiometric failed because there is no delegate", v11, 2u);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_2405FD328()
{

  return MEMORY[0x2822009F8](sub_2405FD408, 0, 0);
}

uint64_t sub_2405FD408()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_2405FD46C(void *a1, char a2)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_280FADA00);
  sub_2405FE2C0(a1);
  v6 = sub_240759AC4();
  v7 = sub_24075A604();
  sub_2405FDED4(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    sub_2405FE2C0(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A40, &qword_240767F60);
    v10 = sub_24075A0E4();
    v12 = sub_2405BBA7C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_240579000, v6, v7, "ShieldController shieldPresenterDidFinish result %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v13 = [v2 delegate];
  if (!v13)
  {
    v15 = sub_240759AC4();
    v16 = sub_24075A5E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_240579000, v15, v16, "ShieldController shieldPresenterDidFinish failed because there is no delegate", v17, 2u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    goto LABEL_10;
  }

  if (a2)
  {
    v14 = v13;
    v15 = sub_2407595C4();
    [v14 shieldSetupDidFinishWithResult:0 error:v15];
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  [v13 shieldSetupDidFinishWithResult:a1 error:0];
  swift_unknownObjectRelease();
}

uint64_t sub_2405FD6F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4D8;

  return sub_2405FC710(a1);
}

uint64_t sub_2405FD788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2405DA4D8;

  return sub_2405FD074();
}

uint64_t sub_2405FD814(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE5D8;

  return sub_2405FCB88(a1);
}

uint64_t sub_2405FD8B0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_2405FD8E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27E4B8A50;
    v3 = &unk_240767F88;
  }

  else
  {
    v2 = &unk_27E4B8A58;
    v3 = &unk_240767F90;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2405FD9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4D8;

  return v9(a1, a2, a3);
}

uint64_t sub_2405FDAC8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4D8;

  return v7(a1, a2);
}

uint64_t sub_2405FDBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE5D8;

  return v9(a1, a2, a3);
}

unint64_t sub_2405FDD34()
{
  result = qword_27E4B8A18;
  if (!qword_27E4B8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8A18);
  }

  return result;
}

void sub_2405FDD88(void *a1)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  v3 = a1;
  oslog = sub_240759AC4();
  v4 = sub_24075A5C4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_240579000, oslog, v4, "handle: %@ did activate", v5, 0xCu);
    sub_2405B8A50(v6, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }
}

uint64_t sub_2405FDEE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_2405FAA6C(v2, v3, v4);
}

uint64_t sub_2405FDF94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2406FC298(v2, v3, v4);
}

uint64_t sub_2405FE054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405DA4B0;

  return sub_2406FC380(a1, v4, v5, v6);
}

uint64_t sub_2405FE120()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_2405FA530(v2, v3);
}

uint64_t sub_2405FE1CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2405F9FFC(v2, v3, v4);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2405FE2F8()
{
  result = qword_27E4B8A60;
  if (!qword_27E4B8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8A60);
  }

  return result;
}

unint64_t AgeMigrationReport.description.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*(v0 + 8) != 20)
  {
    sub_24075A864();

    v2 = _AgeMigrationError.description.getter();
    MEMORY[0x245CC5E60](v2);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return v1;
}

BOOL static AgeMigrationReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == 20)
  {
    return *(a2 + 8) == 20;
  }

  v14 = v2;
  v15 = v3;
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v6 = *(a2 + 8);
  if (v6 == 20)
  {
    v7 = 0;
  }

  else
  {
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v7 = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(v11, v8);
  }

  return v7 & 1;
}

unint64_t AgeMigrationReport.debugDescription.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*(v0 + 8) != 20)
  {
    sub_24075A864();

    v2 = _AgeMigrationError.description.getter();
    MEMORY[0x245CC5E60](v2);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    return 0xD00000000000001BLL;
  }

  return v1;
}

uint64_t sub_2405FE58C()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_2405FE5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2405FE69C(uint64_t a1)
{
  v2 = sub_2405FEEDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405FE6D8(uint64_t a1)
{
  v2 = sub_2405FEEDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405FE714(uint64_t a1)
{
  v2 = sub_2405FEF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405FE750(uint64_t a1)
{
  v2 = sub_2405FEF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405FE78C(uint64_t a1)
{
  v2 = sub_2405FEF84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405FE7C8(uint64_t a1)
{
  v2 = sub_2405FEF84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AgeMigrationReport.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A70, &qword_2407680B0);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A78, &qword_2407680B8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8A80, &qword_2407680C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405FEEDC();
  sub_24075AF74();
  v14 = v2[1];
  if (v14 == 20)
  {
    LOBYTE(v23) = 0;
    sub_2405FEF84();
    sub_24075AB54();
    (*(v19 + 8))(v9, v20);
  }

  else
  {
    v16 = *v2;
    LOBYTE(v23) = 1;
    sub_2405FEF30();
    sub_24075AB54();
    v23 = v16;
    v24 = v14;
    v25 = *(v2 + 1);
    v26 = v2[4];
    sub_2405E1410();
    v17 = v22;
    sub_24075ABE4();
    (*(v21 + 8))(v6, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t AgeMigrationReport.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 20)
  {
    return MEMORY[0x245CC6BA0](0);
  }

  MEMORY[0x245CC6BA0](1);
  return _AgeMigrationError.hash(into:)(a1);
}

uint64_t AgeMigrationReport.hashValue.getter()
{
  sub_24075AE64();
  v1 = *(v0 + 8);
  if (v1 == 20)
  {
    MEMORY[0x245CC6BA0](0);
  }

  else
  {
    v3[9] = *v0;
    v3[10] = v1;
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    MEMORY[0x245CC6BA0](1);
    _AgeMigrationError.hash(into:)(v3);
  }

  return sub_24075AED4();
}

double AgeMigrationReport.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2405FEFD8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_2405FEC68@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2405FEFD8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2405FECC8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 1);
  if (v2 != 20)
  {
    v5 = *a2;
    v6 = *(a2 + 3);
    v7 = *(a1 + 32);
    v9[0] = *a1;
    v9[1] = v2;
    v10 = *(a1 + 16);
    v11 = v7;
    if (v3 != 20)
    {
      v12 = v5;
      v13 = v3;
      v14 = v6;
      v4 = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(v9, &v12);
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 20)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_2405FED54()
{
  v3 = v0[1];
  v4 = *v0;
  v1 = *(v0 + 4);
  sub_24075AE64();
  if (*(&v4 + 1) == 20)
  {
    MEMORY[0x245CC6BA0](0);
  }

  else
  {
    v6 = v4;
    v7 = v3;
    v8 = v1;
    MEMORY[0x245CC6BA0](1);
    _AgeMigrationError.hash(into:)(v5);
  }

  return sub_24075AED4();
}

uint64_t sub_2405FEDE0(uint64_t a1)
{
  if (*(v1 + 8) == 20)
  {
    return MEMORY[0x245CC6BA0](0);
  }

  MEMORY[0x245CC6BA0](1);
  return _AgeMigrationError.hash(into:)(a1);
}

uint64_t sub_2405FEE54(uint64_t a1)
{
  v4 = v1[1];
  v5 = *v1;
  v2 = *(v1 + 4);
  sub_24075AE64();
  if (*(&v5 + 1) == 20)
  {
    MEMORY[0x245CC6BA0](0);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = v2;
    MEMORY[0x245CC6BA0](1);
    _AgeMigrationError.hash(into:)(v6);
  }

  return sub_24075AED4();
}

unint64_t sub_2405FEEDC()
{
  result = qword_27E4B8A88;
  if (!qword_27E4B8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8A88);
  }

  return result;
}

unint64_t sub_2405FEF30()
{
  result = qword_27E4B8A90;
  if (!qword_27E4B8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8A90);
  }

  return result;
}

unint64_t sub_2405FEF84()
{
  result = qword_27E4B8A98;
  if (!qword_27E4B8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8A98);
  }

  return result;
}

double sub_2405FEFD8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8AF0, &qword_240768578);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8AF8, &qword_240768580);
  *&v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B00, &qword_240768588);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2405FEEDC();
  v15 = v37;
  sub_24075AF34();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v35;
  *&v37 = v11;
  v17 = v36;
  v18 = sub_24075AB34();
  v19 = (2 * *(v18 + 16)) | 1;
  v41 = v18;
  v42 = v18 + 32;
  v43 = 0;
  v44 = v19;
  v20 = sub_2405B8AF4();
  if (v20 == 2 || v43 != v44 >> 1)
  {
    v24 = sub_24075A8C4();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v26 = &type metadata for AgeMigrationReport;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v37 + 8))(v13, v10);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v45);
    return result;
  }

  if (v20)
  {
    LOBYTE(v38) = 1;
    sub_2405FEF30();
    v21 = v13;
    v22 = v6;
    sub_24075AA54();
    v23 = v37;
    sub_2405E1A00();
    v29 = v22;
    v30 = v33;
    sub_24075AAF4();
    (*(v34 + 8))(v29, v30);
    (*(v23 + 8))(v21, v10);
    swift_unknownObjectRelease();
    v35 = v39;
    v37 = v38;
    v31 = v40;
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_2405FEF84();
    sub_24075AA54();
    v28 = v37;
    (*(v16 + 8))(v9, v7);
    (*(v28 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v31 = 0;
    v37 = xmmword_2407680A0;
    v35 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  v32 = v35;
  result = *&v37;
  *v17 = v37;
  *(v17 + 16) = v32;
  *(v17 + 32) = v31;
  return result;
}

unint64_t sub_2405FF4E4(void *a1)
{
  a1[1] = sub_2405E1B58();
  a1[2] = sub_2405E16B8();
  result = sub_2405FF51C();
  a1[3] = result;
  return result;
}

unint64_t sub_2405FF51C()
{
  result = qword_27E4B8AA0;
  if (!qword_27E4B8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AA0);
  }

  return result;
}

unint64_t sub_2405FF574()
{
  result = qword_27E4B8AA8;
  if (!qword_27E4B8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup18AgeMigrationReportO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 20;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2405FF5EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEA && *(a1 + 40))
  {
    return (*a1 + 2147483627);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 < 0x15)
  {
    v5 = 0;
  }

  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405FF650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483627;
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 20;
    }
  }

  return result;
}

double sub_2405FF6A8(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 2147483628;
  }

  else if (a2)
  {
    *(a1 + 8) = a2 + 19;
  }

  return result;
}

unint64_t sub_2405FF728()
{
  result = qword_27E4B8AB0;
  if (!qword_27E4B8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AB0);
  }

  return result;
}

unint64_t sub_2405FF780()
{
  result = qword_27E4B8AB8;
  if (!qword_27E4B8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AB8);
  }

  return result;
}

unint64_t sub_2405FF7D8()
{
  result = qword_27E4B8AC0;
  if (!qword_27E4B8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AC0);
  }

  return result;
}

unint64_t sub_2405FF830()
{
  result = qword_27E4B8AC8;
  if (!qword_27E4B8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AC8);
  }

  return result;
}

unint64_t sub_2405FF888()
{
  result = qword_27E4B8AD0;
  if (!qword_27E4B8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AD0);
  }

  return result;
}

unint64_t sub_2405FF8E0()
{
  result = qword_27E4B8AD8;
  if (!qword_27E4B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AD8);
  }

  return result;
}

unint64_t sub_2405FF938()
{
  result = qword_27E4B8AE0;
  if (!qword_27E4B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AE0);
  }

  return result;
}

unint64_t sub_2405FF990()
{
  result = qword_27E4B8AE8;
  if (!qword_27E4B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8AE8);
  }

  return result;
}

uint64_t sub_2405FFA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticateCommand.Request.deviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticateCommand.Request(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2405FFB2C(v10, v9);
}

uint64_t sub_2405FFB2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B08, &qword_240768590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AuthenticateCommand.Request.deviceInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticateCommand.Request(0) + 20);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405B8A50(v8, &qword_27E4B8B08, &qword_240768590);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

__n128 AuthenticateCommand.Request.init(account:deviceInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for AuthenticateCommand.Request(0) + 20);
  *(v6 + 64) = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  sub_2405FFFE4(a1, a3, type metadata accessor for IdMSAccount);
  v7 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v7;
  v12 = *(v6 + 64);
  v8 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v8;
  sub_2405B8A50(v11, &qword_27E4B8B08, &qword_240768590);
  v9 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v9;
  *(v6 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = result;
  return result;
}

uint64_t AuthenticateCommand.Request.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AuthenticateCommand.Request(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = &v19 + *(v9 + 20) - v10;
  type metadata accessor for V1Command(0);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  v12[64] = 0;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), v15 = swift_getEnumCaseMultiPayload(), v14 = type metadata accessor for V1Command.Request, v15 != 3))
  {
    sub_2405FFF84(a1, v14);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    sub_2405B8A50(&v19, &qword_27E4B8B08, &qword_240768590);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    sub_2405FFFE4(a1, v8, type metadata accessor for AuthenticateCommand.Request);
    v16 = *(v12 + 3);
    v21 = *(v12 + 2);
    v22 = v16;
    v23 = v12[64];
    v17 = *(v12 + 1);
    v19 = *v12;
    v20 = v17;
    sub_2405B8A50(&v19, &qword_27E4B8B08, &qword_240768590);
    sub_2405FFFE4(v8, v11, type metadata accessor for AuthenticateCommand.Request);
    sub_24060004C(v11, a2, type metadata accessor for AuthenticateCommand.Request);
    (*(v5 + 56))(a2, 0, 1, v4);
    return sub_2405FFF84(v11, type metadata accessor for AuthenticateCommand.Request);
  }
}

uint64_t sub_2405FFF84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2405FFFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24060004C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2406000E8()
{
  if (*v0)
  {
    return 0x6E49656369766564;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_240600128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24060020C(uint64_t a1)
{
  v2 = sub_240602004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240600248(uint64_t a1)
{
  v2 = sub_240602004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B10, &qword_240768598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240602004();
  sub_24075AF74();
  v27 = 0;
  type metadata accessor for IdMSAccount(0);
  sub_2406020AC(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for AuthenticateCommand.Request(0) + 20);
    v11 = *(v10 + 16);
    v12 = *(v10 + 48);
    v23 = *(v10 + 32);
    v24 = v12;
    v13 = *(v10 + 16);
    v22[0] = *v10;
    v22[1] = v13;
    v14 = *(v10 + 48);
    v19 = v23;
    v20 = v14;
    v25 = *(v10 + 64);
    v21 = *(v10 + 64);
    v17 = v22[0];
    v18 = v11;
    v26 = 1;
    sub_2405FFB2C(v22, v15);
    sub_240602058();
    sub_24075AB94();
    v15[2] = v19;
    v15[3] = v20;
    v16 = v21;
    v15[1] = v18;
    v15[0] = v17;
    sub_2405B8A50(v15, &qword_27E4B8B08, &qword_240768590);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AuthenticateCommand.Request.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  type metadata accessor for AuthenticateCommand.Request(0);
  return sub_240601BC0(a1);
}

uint64_t AuthenticateCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v5);
  v1 = (v0 + *(type metadata accessor for AuthenticateCommand.Request(0) + 20));
  v2 = v1[3];
  v8 = v1[2];
  v9 = v2;
  v10 = *(v1 + 64);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_240601BC0(v5);
  return sub_24075AED4();
}

uint64_t AuthenticateCommand.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for IdMSAccount(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B28, &unk_2407685A0);
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AuthenticateCommand.Request(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(v9 + 28)];
  v12[64] = 0;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240602004();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = *(v12 + 3);
    v35 = *(v12 + 2);
    v36 = v15;
    v37 = v12[64];
    v16 = *(v12 + 1);
    v33 = *v12;
    v34 = v16;
    return sub_2405B8A50(&v33, &qword_27E4B8B08, &qword_240768590);
  }

  else
  {
    v13 = v23;
    LOBYTE(v33) = 0;
    sub_2406020AC(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
    v14 = v24;
    sub_24075AAF4();
    sub_2405FFFE4(v25, v11, type metadata accessor for IdMSAccount);
    v38 = 1;
    sub_2406020F4();
    sub_24075AAA4();
    (*(v13 + 8))(v7, v14);
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v27 = v34;
    v26 = v33;
    v17 = *(v12 + 3);
    v31[2] = *(v12 + 2);
    v31[3] = v17;
    v32 = v12[64];
    v18 = *(v12 + 1);
    v31[0] = *v12;
    v31[1] = v18;
    sub_2405B8A50(v31, &qword_27E4B8B08, &qword_240768590);
    v19 = v29;
    *(v12 + 2) = v28;
    *(v12 + 3) = v19;
    v12[64] = v30;
    v20 = v27;
    *v12 = v26;
    *(v12 + 1) = v20;
    sub_24060004C(v11, v22, type metadata accessor for AuthenticateCommand.Request);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2405FFF84(v11, type metadata accessor for AuthenticateCommand.Request);
  }
}

uint64_t sub_240600A6C(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v7);
  v3 = (v1 + *(a1 + 20));
  v4 = v3[3];
  v10 = v3[2];
  v11 = v4;
  v12 = *(v3 + 64);
  v5 = v3[1];
  v8 = *v3;
  v9 = v5;
  sub_240601BC0(v7);
  return sub_24075AED4();
}

uint64_t sub_240600B40(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v8);
  v4 = (v2 + *(a2 + 20));
  v5 = v4[3];
  v11 = v4[2];
  v12 = v5;
  v13 = *(v4 + 64);
  v6 = v4[1];
  v9 = *v4;
  v10 = v6;
  sub_240601BC0(v8);
  return sub_24075AED4();
}

uint64_t AuthenticateCommand.Response.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AuthenticateCommand.Response.result.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AuthenticateCommand.Response.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AuthenticateCommand.Response.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2405FFFE4(a1, a2, type metadata accessor for AuthenticateCommand.Response);
      v4 = 0;
      goto LABEL_7;
    }

    v5 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v5 = type metadata accessor for V1Command;
  }

  sub_2405FFF84(a1, v5);
  v4 = 1;
LABEL_7:
  v6 = type metadata accessor for AuthenticateCommand.Response(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v4, 1, v6);
}

uint64_t sub_240600E60@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  sub_2405FFFE4(v4, a4, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AuthenticateCommand.Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_240602168();
  sub_2406021BC();
  sub_240602210();

  return sub_240759964();
}

uint64_t sub_240600F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_240600FEC(uint64_t a1)
{
  v2 = sub_240602264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240601028(uint64_t a1)
{
  v2 = sub_240602264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B50, &qword_2407685B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240602264();
  sub_24075AF74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B60, sub_2406022B8, sub_24060230C, MEMORY[0x277CE4638]);
  sub_24075ABE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AuthenticateCommand.Response.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B78, sub_240602360, sub_2406023B4, MEMORY[0x277CE4640]);

  return sub_24075A004();
}

uint64_t AuthenticateCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B78, sub_240602360, sub_2406023B4, MEMORY[0x277CE4640]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t AuthenticateCommand.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B90, &qword_2407685B8);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AuthenticateCommand.Response(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240602264();
  sub_24075AF34();
  if (!v2)
  {
    v13 = v16;
    v12 = v17;
    sub_240602408(&qword_27E4B8B98, sub_240602498, sub_2406024EC, MEMORY[0x277CE4650]);
    sub_24075AAF4();
    (*(v18 + 8))(v8, v6);
    (*(v13 + 32))(v11, v19, v4);
    sub_2405FFFE4(v11, v12, type metadata accessor for AuthenticateCommand.Response);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24060162C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_2405FFFE4(v4, a4, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406016A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2405FFFE4(a1, a3, type metadata accessor for AuthenticateCommand.Response);
      v6 = 0;
      goto LABEL_7;
    }

    v7 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v7 = type metadata accessor for V1Command;
  }

  sub_2405FFF84(a1, v7);
  v6 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v6, 1, a2);
}

uint64_t sub_2406017C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B50, &qword_2407685B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240602264();
  sub_24075AF74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B60, sub_2406022B8, sub_24060230C, MEMORY[0x277CE4638]);
  sub_24075ABE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24060195C(uint64_t a1, uint64_t a2)
{
  sub_240602168();
  sub_2406021BC();
  sub_240602210();

  return sub_240759964();
}

uint64_t sub_2406019D0()
{
  sub_24075AE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B78, sub_240602360, sub_2406023B4, MEMORY[0x277CE4640]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t sub_240601A78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B78, sub_240602360, sub_2406023B4, MEMORY[0x277CE4640]);

  return sub_24075A004();
}

uint64_t sub_240601B1C(uint64_t a1)
{
  sub_24075AE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
  sub_240602408(&qword_27E4B8B78, sub_240602360, sub_2406023B4, MEMORY[0x277CE4640]);
  sub_24075A004();
  return sub_24075AED4();
}

uint64_t sub_240601BC0(uint64_t a1)
{
  if (v1[1])
  {
    v2 = v1[5];
    v3 = v1[6];
    v4 = v1[7];
    sub_24075AE94();
    sub_24075A114();
    sub_24075A114();
    if (v2)
    {
      sub_24075AE94();
      sub_24075A114();
      v5 = *(v3 + 16);
      MEMORY[0x245CC6BA0](v5);
      if (v5)
      {
        v6 = v3 + 40;
        do
        {

          sub_24075A114();

          v6 += 16;
          --v5;
        }

        while (v5);
      }

      v7 = *(v4 + 16);
      MEMORY[0x245CC6BA0](v7);
      if (v7)
      {
        v8 = v4 + 40;
        do
        {

          sub_24075A114();

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      sub_24075AE94();
    }
  }

  return sub_24075AE94();
}

BOOL _s12AppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AuthenticateCommand.Request(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 1);
  v7 = *(v5 + 3);
  v54 = *(v5 + 2);
  v55 = v7;
  v56 = v5[64];
  v8 = *(v5 + 1);
  v53[0] = *v5;
  v53[1] = v8;
  v9 = a2 + *(v4 + 20);
  v10 = *(v9 + 3);
  v11 = *(v9 + 1);
  v58 = *(v9 + 2);
  v59 = v10;
  v12 = *(v9 + 1);
  v57[0] = *v9;
  v57[1] = v12;
  v49 = v6;
  v50 = v54;
  v51 = *(v5 + 3);
  v13 = *(v9 + 3);
  v46 = v58;
  v47 = v13;
  v60 = v9[64];
  v14 = v53[0];
  v52 = v5[64];
  v15 = v57[0];
  v48 = v9[64];
  v45 = v11;
  if (*(&v53[0] + 1))
  {
    v35 = v53[0];
    v16 = *(v5 + 2);
    v36 = *(v5 + 1);
    v37 = v16;
    v38 = *(v5 + 3);
    v39 = v5[64];
    v32 = v16;
    v33 = v38;
    v34 = v39;
    v30 = v53[0];
    v31 = v36;
    if (*(&v57[0] + 1))
    {
      v17 = *(v9 + 2);
      v26 = *(v9 + 1);
      v27 = v17;
      v28 = *(v9 + 3);
      v29 = v9[64];
      v25 = v57[0];
      sub_2405FFB2C(v53, v23);
      sub_2405FFB2C(v57, v23);
      sub_2405FFB2C(&v35, v23);
      v18 = _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v30, &v25);
      v21[2] = v27;
      v21[3] = v28;
      v22 = v29;
      v21[0] = v25;
      v21[1] = v26;
      sub_240602EAC(v21);
      v23[2] = v32;
      v23[3] = v33;
      v24 = v34;
      v23[0] = v30;
      v23[1] = v31;
      sub_240602EAC(v23);
      v25 = v14;
      v26 = v49;
      v27 = v50;
      v28 = v51;
      v29 = v52;
      sub_2405B8A50(&v25, &qword_27E4B8B08, &qword_240768590);
      return (v18 & 1) != 0;
    }

    v27 = v37;
    v28 = v38;
    v29 = v39;
    v25 = v35;
    v26 = v36;
    sub_2405FFB2C(v53, v23);
    sub_2405FFB2C(v57, v23);
    sub_2405FFB2C(&v35, v23);
    sub_240602EAC(&v25);
LABEL_9:
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v41 = v45;
    v35 = v14;
    v39 = v52;
    v40 = v15;
    v42 = v46;
    v43 = v47;
    v44 = v48;
    sub_2405B8A50(&v35, &qword_27E4B8C88, &unk_240768A80);
    return 0;
  }

  if (*(&v57[0] + 1))
  {
    sub_2405FFB2C(v53, &v35);
    sub_2405FFB2C(v57, &v35);
    goto LABEL_9;
  }

  v35 = *&v53[0];
  v20 = *(v5 + 2);
  v36 = *(v5 + 1);
  v37 = v20;
  v38 = *(v5 + 3);
  v39 = v5[64];
  sub_2405FFB2C(v53, &v30);
  sub_2405FFB2C(v57, &v30);
  sub_2405B8A50(&v35, &qword_27E4B8B08, &qword_240768590);
  return 1;
}

unint64_t sub_240602004()
{
  result = qword_27E4B8B18;
  if (!qword_27E4B8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B18);
  }

  return result;
}

unint64_t sub_240602058()
{
  result = qword_27E4B8B20;
  if (!qword_27E4B8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B20);
  }

  return result;
}

uint64_t sub_2406020AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2406020F4()
{
  result = qword_27E4B8B30;
  if (!qword_27E4B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B30);
  }

  return result;
}

unint64_t sub_240602168()
{
  result = qword_27E4B8B40;
  if (!qword_27E4B8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B40);
  }

  return result;
}

unint64_t sub_2406021BC()
{
  result = qword_27E4B8B48;
  if (!qword_27E4B8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B48);
  }

  return result;
}

unint64_t sub_240602210()
{
  result = qword_280FADF50;
  if (!qword_280FADF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF50);
  }

  return result;
}

unint64_t sub_240602264()
{
  result = qword_27E4B8B58;
  if (!qword_27E4B8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B58);
  }

  return result;
}

unint64_t sub_2406022B8()
{
  result = qword_27E4B8B68;
  if (!qword_27E4B8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B68);
  }

  return result;
}

unint64_t sub_24060230C()
{
  result = qword_27E4B8B70;
  if (!qword_27E4B8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B70);
  }

  return result;
}

unint64_t sub_240602360()
{
  result = qword_27E4B8B80;
  if (!qword_27E4B8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B80);
  }

  return result;
}

unint64_t sub_2406023B4()
{
  result = qword_27E4B8B88;
  if (!qword_27E4B8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B88);
  }

  return result;
}

uint64_t sub_240602408(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8B38, &qword_240777010);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240602498()
{
  result = qword_27E4B8BA0;
  if (!qword_27E4B8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8BA0);
  }

  return result;
}

unint64_t sub_2406024EC()
{
  result = qword_27E4B8BA8;
  if (!qword_27E4B8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8BA8);
  }

  return result;
}

unint64_t sub_240602540()
{
  result = qword_27E4B8BB0;
  if (!qword_27E4B8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8BB0);
  }

  return result;
}

uint64_t sub_240602594(uint64_t a1)
{
  result = sub_2406020AC(&qword_27E4B8BB8, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406025EC()
{
  result = qword_27E4B8BC0;
  if (!qword_27E4B8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8BC0);
  }

  return result;
}

uint64_t sub_240602640(uint64_t a1)
{
  result = sub_2406020AC(&qword_27E4B8BC8, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240602698(void *a1)
{
  a1[1] = sub_2406020AC(&qword_27E4B8BD0, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
  a1[2] = sub_2406020AC(&qword_27E4B8BD8, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
  result = sub_2406020AC(&qword_27E4B8BE0, type metadata accessor for AuthenticateCommand.Request, &protocol conformance descriptor for AuthenticateCommand.Request);
  a1[3] = result;
  return result;
}

uint64_t sub_24060278C(uint64_t a1)
{
  result = sub_2406020AC(&qword_27E4B8BF0, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406027E4(uint64_t a1)
{
  result = sub_2406020AC(&qword_27E4B8BF8, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24060283C(void *a1)
{
  a1[1] = sub_2406020AC(&qword_27E4B8C00, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
  a1[2] = sub_2406020AC(&qword_27E4B8C08, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
  result = sub_2406020AC(&qword_27E4B8C10, type metadata accessor for AuthenticateCommand.Response, &protocol conformance descriptor for AuthenticateCommand.Response);
  a1[3] = result;
  return result;
}

unint64_t sub_2406029C0(uint64_t a1)
{
  result = sub_2406025EC();
  *(a1 + 8) = result;
  return result;
}

void sub_240602AB0(uint64_t a1)
{
  type metadata accessor for IdMSAccount(319);
  if (v1 <= 0x3F)
  {
    sub_240602B34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240602B34()
{
  if (!qword_27E4B8C40)
  {
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B8C40);
    }
  }
}

void sub_240602BAC(uint64_t a1)
{
  sub_240602C18(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_240602C18(uint64_t a1)
{
  if (!qword_280FAD7A0[0])
  {
    sub_240602210();
    v1 = sub_240759974();
    if (!v2)
    {
      atomic_store(v1, qword_280FAD7A0);
    }
  }
}

unint64_t sub_240602CA0()
{
  result = qword_27E4B8C58;
  if (!qword_27E4B8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C58);
  }

  return result;
}

unint64_t sub_240602CF8()
{
  result = qword_27E4B8C60;
  if (!qword_27E4B8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C60);
  }

  return result;
}

unint64_t sub_240602D50()
{
  result = qword_27E4B8C68;
  if (!qword_27E4B8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C68);
  }

  return result;
}

unint64_t sub_240602DA8()
{
  result = qword_27E4B8C70;
  if (!qword_27E4B8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C70);
  }

  return result;
}

unint64_t sub_240602E00()
{
  result = qword_27E4B8C78;
  if (!qword_27E4B8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C78);
  }

  return result;
}

unint64_t sub_240602E58()
{
  result = qword_27E4B8C80;
  if (!qword_27E4B8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8C80);
  }

  return result;
}

uint64_t sub_240602F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2405B044C(a3, v25 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24075A344();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24075A104() + 32;
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

      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

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

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
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

uint64_t sub_240603208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2405B044C(a3, v25 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24075A344();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24075A104() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA8, &qword_240768DF0);
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

      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

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

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA8, &qword_240768DF0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24060351C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2405B044C(a3, v25 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24075A344();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24075A104() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8C90, &qword_240768DA8);
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

      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

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

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8C90, &qword_240768DA8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AutomaticRepairModelExchange.setupExchange.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x388uLL);
  memcpy(a1, v1, 0x388uLL);
  return sub_240603884(__dst, v4);
}

void *AutomaticRepairModelExchange.setupExchange.setter(const void *a1)
{
  memcpy(v4, v1, 0x388uLL);
  sub_240603930(v4);
  return memcpy(v1, a1, 0x388uLL);
}

void *AutomaticRepairModelExchange.queue.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

void (*AutomaticRepairModelExchange.queue.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 160);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return sub_240603A48;
}

void sub_240603A48(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 160) = v4;
  }

  else
  {

    *(v2 + 160) = v4;
  }
}

uint64_t sub_240603AC0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2405DA4B0;

  return v7(a2);
}

uint64_t sub_240603BB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 904) = &unk_240768D80;
  *(a2 + 912) = v5;
  return result;
}

uint64_t sub_240603C28(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2405DA4B0;

  return v5();
}

uint64_t AutomaticRepairModelExchange.receiveInitial.getter()
{
  v1 = *(v0 + 904);

  return v1;
}

uint64_t AutomaticRepairModelExchange.receiveInitial.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 904) = a1;
  *(v2 + 912) = a2;
  return result;
}

uint64_t sub_240603DAC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 920) = &unk_240768D70;
  *(a2 + 928) = v5;
  return result;
}

uint64_t AutomaticRepairModelExchange.receiveRepairing.getter()
{
  v1 = *(v0 + 920);

  return v1;
}

uint64_t AutomaticRepairModelExchange.receiveRepairing.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 920) = a1;
  *(v2 + 928) = a2;
  return result;
}

uint64_t sub_240603EB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 936) = &unk_240768D60;
  *(a2 + 944) = v5;
  return result;
}

uint64_t AutomaticRepairModelExchange.receiveFinished.getter()
{
  v1 = *(v0 + 936);

  return v1;
}

uint64_t AutomaticRepairModelExchange.receiveFinished.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 936) = a1;
  *(v2 + 944) = a2;
  return result;
}

uint64_t sub_240603FB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2405CE450;

  return v9(a2, a3);
}

uint64_t sub_2406040B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 952) = &unk_240768D48;
  *(a2 + 960) = v5;
  return result;
}

uint64_t sub_240604128(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2405DA4B0;

  return v6();
}

uint64_t AutomaticRepairModelExchange.receiveRepairError.getter()
{
  v1 = *(v0 + 952);

  return v1;
}

uint64_t AutomaticRepairModelExchange.receiveRepairError.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 952) = a1;
  *(v2 + 960) = a2;
  return result;
}

uint64_t sub_2406042B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 968) = &unk_240768D28;
  *(a2 + 976) = v5;
  return result;
}

uint64_t AutomaticRepairModelExchange.receiveDismiss.getter()
{
  v1 = *(v0 + 968);

  return v1;
}

uint64_t AutomaticRepairModelExchange.receiveDismiss.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 968) = a1;
  *(v2 + 976) = a2;
  return result;
}

void *AutomaticRepairModelExchange.init(setupExchange:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  a2[113] = &unk_240768A90;
  a2[114] = 0;
  a2[115] = &unk_240768A98;
  a2[116] = 0;
  a2[117] = &unk_240768AA0;
  a2[118] = 0;
  a2[119] = &unk_240768AA8;
  a2[120] = 0;
  a2[121] = &unk_240768AB0;
  a2[122] = 0;
  return memcpy(a2, __src, 0x388uLL);
}

uint64_t AutomaticRepairModelExchange.receiveModelUpdate(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  memcpy(v21, v3, 0x3D8uLL);
  v14 = sub_24075A3D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2405B044C(a1, v10, &qword_27E4B8000, &unk_240776AD0);
  v15 = (*(v7 + 80) + 1016) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  memcpy(v16 + 4, v21, 0x3D8uLL);
  sub_240604E5C(v10, v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v19;
  v17[1] = a3;
  sub_240605010(v21, &v20);

  sub_240602F08(0, 0, v13, &unk_240768AC0, v16);
}

uint64_t sub_240604668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[128] = a7;
  v7[127] = a6;
  v7[126] = a5;
  v7[125] = a4;
  v7[129] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v7[130] = swift_task_alloc();
  v7[131] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8C98, &qword_240768DD0);
  v7[132] = swift_task_alloc();
  type metadata accessor for RepairModel(0);
  v7[133] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24060477C, 0, 0);
}

uint64_t sub_24060477C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1008);
  memcpy((v0 + 16), *(v0 + 1000), 0x3D8uLL);
  v4 = *(v3 + 8);
  *(v0 + 1080) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  sub_2406076DC(v3 + *(v5 + 32), &v1[*(v2 + 28)], type metadata accessor for RepairModel);
  *v1 = v4;
  v6 = swift_task_alloc();
  *(v0 + 1072) = v6;
  *v6 = v0;
  v6[1] = sub_240604884;
  v7 = *(v0 + 1064);
  v8 = *(v0 + 1056);

  return sub_240605048(v7, v8);
}

uint64_t sub_240604884()
{
  v1 = *(*v0 + 1056);

  sub_2405B8A50(v1, &qword_27E4B8C98, &qword_240768DD0);

  return MEMORY[0x2822009F8](sub_2406049AC, 0, 0);
}

uint64_t sub_2406049AC()
{
  if (*(v0 + 1080) == 1)
  {
    v1 = *(v0 + 1040);
    v2 = *(v0 + 1016);
    v3 = **(v0 + 1008);
    sub_2406076DC(*(v0 + 1064), v1 + *(*(v0 + 1032) + 32), type metadata accessor for RepairModel);
    v4 = sub_2407316B0();
    *v1 = v3;
    v1[1] = v4;
    v2(v1);
    sub_2405B8A50(v1, &qword_27E4B80E8, &qword_240765598);
  }

  sub_24060766C(*(v0 + 1064));

  v5 = *(v0 + 8);

  return v5();
}

void sub_240604AB8(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 38) & 3;
  if (((a4 >> 38) & 3) > 1)
  {
    if (v4 != 2)
    {
      return;
    }
  }

  else if (!v4)
  {

    return;
  }
}

uint64_t sub_240604AE0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4)
  {
  }

  if (v4 == 3 || !(a4 >> 5))
  {
  }

  return v5;
}

uint64_t sub_240604B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20)
{
  result = a2;
  v21 = a18 >> 61;
  if ((a18 >> 61) > 1)
  {
    if (v21 == 2)
    {
    }

    else if (v21 != 3)
    {
      return result;
    }
  }

  else if (v21)
  {
    if (v21 != 1)
    {
      return result;
    }

    sub_240604C2C(a14, a15, a16, a17);
  }

  else
  {
  }
}

void sub_240604C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_240604C7C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_240604C90(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v13 = a10 >> 61;
  if ((a10 >> 61) <= 3)
  {
    if (v13 <= 1)
    {

LABEL_19:

      return;
    }

    if (v13 == 2)
    {

      sub_240604E2C(a1);
      return;
    }

    a8 = a3;
LABEL_18:

    goto LABEL_19;
  }

  if (v13 > 5)
  {
    if (v13 == 6)
    {
    }
  }

  else
  {
    a8 = a3;
    if (v13 == 4)
    {
      goto LABEL_18;
    }

    sub_240604E3C(a11, a12, a13);
  }
}

void sub_240604E2C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_240604E3C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_240604E54(result, a2);
  }

  return result;
}

uint64_t sub_240604E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240604ECC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v6 = (*(v5 + 80) + 1016) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_240604668(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_240605048(uint64_t a1, uint64_t a2)
{
  v3[1087] = v2;
  v3[1086] = a2;
  v3[1085] = a1;
  type metadata accessor for SetupModel(0);
  v3[1088] = swift_task_alloc();
  v3[1089] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA0, &qword_240768DE0);
  v3[1090] = swift_task_alloc();
  memcpy(v3 + 2, v2, 0x3D8uLL);

  return MEMORY[0x2822009F8](sub_24060512C, 0, 0);
}

uint64_t sub_24060512C()
{
  v1 = *(v0 + 8688);
  v2 = *(v0 + 8680);
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8C98, &qword_240768DD0);
  sub_2406076DC(&v1[*(v4 + 28)], v2, type metadata accessor for RepairModel);
  v5 = type metadata accessor for RepairModel(0);
  v6 = *(v5 + 24);
  *(v0 + 8676) = v6;
  v7 = *(v2 + v6);
  *(v0 + 8728) = v7;
  v8 = *(v2 + v6 + 8);
  *(v0 + 8736) = v8;
  v9 = *(v2 + v6 + 16);
  *(v0 + 8744) = v9;
  v10 = *(v2 + v6 + 24);
  *(v0 + 8752) = v10;
  v11 = *(v2 + v6 + 32);
  *(v0 + 8760) = v11;
  v12 = *(v2 + v6 + 40);
  *(v0 + 8673) = v12;
  if (v12 <= 252)
  {
    if (v12 == 251)
    {
      if ((v3 & 1) == 0)
      {
        v26 = *(v0 + 984);
        memcpy((v0 + 1000), *(v0 + 8696), 0x3D8uLL);
        v43 = (v26 + *v26);
        v27 = swift_task_alloc();
        *(v0 + 8808) = v27;
        *v27 = v0;
        v27[1] = sub_240605F74;
        v15 = v0 + 1000;
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 == 252)
      {
        if ((v3 & 1) == 0)
        {
          v30 = *(v0 + 952);
          memcpy((v0 + 2968), *(v0 + 8696), 0x3D8uLL);
          v43 = (v30 + *v30);
          v31 = swift_task_alloc();
          *(v0 + 8792) = v31;
          *v31 = v0;
          v31[1] = sub_240605C10;
          v15 = v0 + 2968;
          goto LABEL_23;
        }

        LOBYTE(v12) = -4;
      }

      else if ((v3 & 1) == 0)
      {
        v32 = *(v0 + 968);
        v33 = v7;
        v34 = v8;
        v35 = v9;
        v36 = v10;
        v37 = v11;
        v38 = v12;
        memcpy((v0 + 1984), *(v0 + 8696), 0x3D8uLL);
        *&v39 = v33;
        *(&v39 + 1) = v34;
        *&v40 = v35;
        *(&v40 + 1) = v36;
        *(v0 + 8632) = v39;
        *(v0 + 8648) = v40;
        *(v0 + 8664) = v37;
        *(v0 + 8672) = v38;
        sub_2405EF2E8(v33, v34, v35, v36, v37, v38);
        v42 = (v32 + *v32);
        v41 = swift_task_alloc();
        *(v0 + 8800) = v41;
        *v41 = v0;
        v41[1] = sub_240605DAC;

        return v42(v0 + 1984, v0 + 8632);
      }

      v28 = *(v0 + 8680) + v6;
      sub_2406076C8(v7, v8, v9, v10, v11, v12);
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 40) = -5;
    }

LABEL_19:

    v29 = *(v0 + 8);

    return v29();
  }

  if (v12 == 253)
  {
    if ((v3 & 1) == 0)
    {
      v16 = *(v0 + 936);
      memcpy((v0 + 3952), *(v0 + 8696), 0x3D8uLL);
      v43 = (v16 + *v16);
      v17 = swift_task_alloc();
      *(v0 + 8784) = v17;
      *v17 = v0;
      v17[1] = sub_240605AE4;
      v15 = v0 + 3952;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v12 != 254)
  {
    if ((v3 & 1) == 0)
    {
      v13 = *(v0 + 920);
      memcpy((v0 + 4936), *(v0 + 8696), 0x3D8uLL);
      v43 = (v13 + *v13);
      v14 = swift_task_alloc();
      *(v0 + 8768) = v14;
      *v14 = v0;
      v14[1] = sub_2406057F0;
      v15 = v0 + 4936;
LABEL_23:

      return v43(v15);
    }

    goto LABEL_19;
  }

  v18 = *(v0 + 8720);
  v19 = *(v0 + 8712);
  v20 = *(v0 + 8680);
  v21 = *(v5 + 20);
  *(v0 + 8816) = v21;
  sub_2406076DC(v20 + v21, &v18[*(v19 + 28)], type metadata accessor for SetupModel);
  *v18 = v3;
  memcpy((v0 + 6824), (v0 + 16), 0x388uLL);
  sub_240603884(v0 + 16, v0 + 7728);
  v22 = swift_task_alloc();
  *(v0 + 8776) = v22;
  *v22 = v0;
  v22[1] = sub_24060591C;
  v23 = *(v0 + 8720);
  v24 = *(v0 + 8704);

  return sub_240731C20(v24, v23);
}

uint64_t sub_2406057F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24060591C()
{
  v1 = *v0;

  memcpy((v1 + 5920), (v1 + 6824), 0x388uLL);
  sub_240603930(v1 + 5920);

  return MEMORY[0x2822009F8](sub_240605A40, 0, 0);
}

uint64_t sub_240605A40()
{
  v1 = *(v0 + 8816);
  v2 = *(v0 + 8704);
  v3 = *(v0 + 8680);
  sub_2405B8A50(*(v0 + 8720), &qword_27E4B8CA0, &qword_240768DE0);
  sub_240607744(v2, v3 + v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240605AE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240605C10()
{

  return MEMORY[0x2822009F8](sub_240605D0C, 0, 0);
}

uint64_t sub_240605D0C()
{
  v1 = *(v0 + 8680) + *(v0 + 8676);
  sub_2406076C8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = -5;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240605DAC()
{

  return MEMORY[0x2822009F8](sub_240605EA8, 0, 0);
}

uint64_t sub_240605EA8()
{
  v1 = *(v0 + 8680) + *(v0 + 8676);
  sub_2406076C8(*(v0 + 8728), *(v0 + 8736), *(v0 + 8744), *(v0 + 8752), *(v0 + 8760), *(v0 + 8673));
  v2 = *(v0 + 8680) + *(v0 + 8676);
  sub_2406076C8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 40) = -5;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240605F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2406060A0()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

uint64_t sub_2406060C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  memcpy(v21, v3, 0x3D8uLL);
  v14 = sub_24075A3D4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2405B044C(a1, v10, &qword_27E4B8000, &unk_240776AD0);
  v15 = (*(v7 + 80) + 1016) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  memcpy(v16 + 4, v21, 0x3D8uLL);
  sub_240604E5C(v10, v16 + v15);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v19;
  v17[1] = a3;
  sub_240605010(v21, &v20);

  sub_240602F08(0, 0, v13, &unk_240768D90, v16);
}

uint64_t sub_2406062F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 984))
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

uint64_t sub_24060633C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 984) = 1;
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

    *(result + 984) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24060648C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v4);
}

uint64_t sub_240606540(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v6);
}

uint64_t sub_240606608(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v6);
}

uint64_t sub_2406066CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return sub_240603FB4(a1, a2, a3, v8);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v2 = *(*(v1 - 8) + 80);
  v40 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v41 = (v2 + 1016) & ~v2;
  v3 = v0 + v41 + *(v1 + 32);

  v39 = type metadata accessor for RepairModel(0);
  v4 = v3 + *(v39 + 20);
  sub_240604AB8(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32) | ((*(v4 + 36) | (*(v4 + 38) << 16)) << 32));
  v5 = *(v4 + 88);
  if (v5 <= 0xF9)
  {
    sub_2405AEA70(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), v5);
  }

  sub_240604AE0(*(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 208));

  sub_240604AE0(*(v4 + 240), *(v4 + 248), *(v4 + 256), *(v4 + 264));

  v6 = *(v4 + 288);
  if (v6 != 1)
  {

    v7 = *(v4 + 304);
    if (v7 >> 60 != 15)
    {
      sub_2405BCD98(*(v4 + 296), v7);
    }
  }

  if (*(v4 + 328))
  {
  }

  v8 = type metadata accessor for SetupModel(0);
  v9 = v4 + *(v8 + 36);
  v10 = type metadata accessor for IdMSAccount(0);
  v11 = (*(v10 - 1) + 48);
  v38 = *v11;
  if (!(*v11)(v9, 1, v10))
  {

    v12 = v2;
    v13 = v10[5];
    v14 = sub_2407595A4();
    v15 = v9 + v13;
    v2 = v12;
    (*(*(v14 - 8) + 8))(v15, v14);
    v16 = v9 + v10[6];
    sub_240604B08(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56), *(v16 + 64), *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96), *(v16 + 104), *(v16 + 112), *(v16 + 120), *(v16 + 128), *(v16 + 136), *(v16 + 144), *(v16 + 152));

    v17 = (v9 + v10[8]);
    if (*v17 != 1)
    {
    }
  }

  v18 = type metadata accessor for AuthenticationModel(0);
  if (*(v9 + v18[5] + 8))
  {
  }

  v19 = v9 + v18[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v37 = v2;

      v20 = v10[5];
      v21 = sub_2407595A4();
      (*(*(v21 - 8) + 8))(v19 + v20, v21);
      v22 = v19 + v10[6];
      sub_240604B08(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), *(v22 + 104), *(v22 + 112), *(v22 + 120), *(v22 + 128), *(v22 + 136), *(v22 + 144), *(v22 + 152));

      v23 = (v19 + v10[8]);
      if (*v23 != 1)
      {
      }

      v2 = v37;
      break;
    case 2u:
    case 3u:

      v24 = *(v19 + 96);
      if (v24 != 255)
      {
        sub_2405B0558(*(v19 + 64), *(v19 + 72), *(v19 + 80), *(v19 + 88), v24);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v19 + 40) != 1)
      {
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      break;
    case 0xCu:
    case 0xDu:

      break;
    default:
      break;
  }

  if (*(v9 + v18[11]))
  {
  }

  v25 = v4 + *(v8 + 40);
  if (!v38(v25, 1, v10))
  {

    v26 = v10[5];
    v27 = sub_2407595A4();
    (*(*(v27 - 8) + 8))(v25 + v26, v27);
    v28 = v25 + v10[6];
    sub_240604B08(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), *(v28 + 48), *(v28 + 56), *(v28 + 64), *(v28 + 72), *(v28 + 80), *(v28 + 88), *(v28 + 96), *(v28 + 104), *(v28 + 112), *(v28 + 120), *(v28 + 128), *(v28 + 136), *(v28 + 144), *(v28 + 152));

    v29 = (v25 + v10[8]);
    if (*v29 != 1)
    {
    }
  }

  v30 = type metadata accessor for SignInModel(0);
  v31 = (v25 + v30[5]);
  if (v31[1])
  {

    v32 = v31[11];
    if (v32 >> 60 != 15)
    {
      sub_2405BCD98(v31[10], v32);
    }
  }

  if (*(v25 + v30[10] + 8))
  {
  }

  sub_240604C7C(*(v25 + v30[16]), *(v25 + v30[16] + 8), *(v25 + v30[16] + 16));

  v33 = v25 + v30[19];
  sub_240604C90(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32), *(v33 + 40), *(v33 + 48), *(v33 + 56), *(v33 + 64), *(v33 + 72), *(v33 + 80), *(v33 + 88), *(v33 + 96));
  v34 = v3 + *(v39 + 24);
  v35 = *(v34 + 40);
  if (v35 <= 0xFA)
  {
    sub_2405EE680(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), *(v34 + 32), v35);
  }

  return MEMORY[0x2821FE8E8](v0, ((v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2406071B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v6 = (*(v5 + 80) + 1016) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405CE450;

  return sub_240604668(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_2406072F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2406073E8;

  return v5(v2 + 32);
}

uint64_t sub_2406073E8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2406074FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2406072F4(a1, v4);
}

uint64_t sub_2406075B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_24065B538(a1, v4);
}

uint64_t sub_24060766C(uint64_t a1)
{
  v2 = type metadata accessor for RepairModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2406076C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFAu)
  {
    return sub_2405EE680(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_2406076DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240607744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2406077A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_24065B630(a1, v4);
}

uint64_t sub_240607860(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405CE450;

  return sub_24065B630(a1, v4);
}

unint64_t AISAppleIDSignInFlowType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_240607934()
{
  result = qword_27E4B8CB0;
  if (!qword_27E4B8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CB0);
  }

  return result;
}

unint64_t *sub_240607988@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t RepairContext.Builder.MissingExpectedValue.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2406079E4()
{
  v1 = *v0;

  return v1;
}

void *RepairContext.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 118) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 192;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 160) = 2;
  *(a1 + 168) = 0;
  AutomaticSetupModelExchange.init(queue:)(0, __src);
  *(a1 + 200) = &type metadata for AutomaticRepairModelExchange;
  *(a1 + 208) = &protocol witness table for AutomaticRepairModelExchange;
  v2 = swift_allocObject();
  *(a1 + 176) = v2;
  v2[115] = &unk_240768A90;
  v2[116] = 0;
  v2[117] = &unk_240768A98;
  v2[118] = 0;
  v2[119] = &unk_240768AA0;
  v2[120] = 0;
  v2[121] = &unk_240768AA8;
  v2[122] = 0;
  v2[123] = &unk_240768AB0;
  v2[124] = 0;
  result = memcpy(v2 + 2, __src, 0x388uLL);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

__n128 RepairContext.Builder.accountID(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v22[4] = a1[4];
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = *(v2 + 48);
  v23[2] = *(v2 + 32);
  v23[3] = v7;
  v23[4] = *(v2 + 64);
  v8 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v8;
  sub_2405AF99C(v22, &v21);
  sub_2405B8A50(v23, &qword_27E4B6420, &qword_240768F00);
  result = a1[2];
  v10 = a1[3];
  *(v2 + 32) = result;
  *(v2 + 48) = v10;
  v11 = *(v2 + 176);
  v12 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v12;
  v13 = *(v2 + 112);
  v14 = *(v2 + 144);
  v15 = *(v2 + 160);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v14;
  v16 = a1[4];
  *(v2 + 64) = v16;
  *(a2 + 160) = v15;
  *(a2 + 176) = v11;
  v17 = *(v2 + 80);
  v18 = *(v2 + 96);
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v20 = *a1;
  v19 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v19;
  *(a2 + 224) = *(v2 + 224);
  *(a2 + 96) = v18;
  *(a2 + 112) = v13;
  *a2 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

__n128 RepairContext.Builder._proximityRepairClient(for:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v21 = *a1;
  *&v21[15] = *(a1 + 15);
  v18 = *&v21[8];
  v19 = *v21;
  v4 = v21[30];
  v5 = *&v21[16] & 0xFF0000FFFFLL;
  v6 = (*&v21[24] | ((*&v21[28] | (v21[30] << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = *(v2 + 112) | ((*(v2 + 116) | (*(v2 + 118) << 16)) << 32);
  sub_240607D50(v21, v20);
  sub_240604AB8(v7, v8, v9, v10);
  *(v2 + 88) = v19;
  *(v2 + 96) = v18;
  *(v2 + 104) = v5;
  *(v2 + 118) = v4;
  *(v2 + 116) = WORD2(v6);
  *(v2 + 112) = v6;
  v11 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v11;
  *(a2 + 224) = *(v2 + 224);
  v12 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v12;
  v13 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v13;
  v14 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v14;
  v15 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v15;
  result = *(v2 + 112);
  v17 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v17;
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = result;
  return result;
}

__n128 RepairContext.Builder._proximityRepairClientIntercept()@<Q0>(uint64_t a1@<X8>)
{
  sub_240604AB8(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112) | ((*(v1 + 116) | (*(v1 + 118) << 16)) << 32));
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 2;
  *(v1 + 118) = 0;
  *(v1 + 116) = 192;
  *(v1 + 112) = 0;
  v3 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = v3;
  *(a1 + 224) = *(v1 + 224);
  v4 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v4;
  v5 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v5;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  v7 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v7;
  result = *(v1 + 112);
  v9 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = result;
  return result;
}

__n128 RepairContext.Builder._enableProximityRepair(withTargetAuthTag:withCodeType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  sub_240604AB8(*(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112) | ((*(v4 + 116) | (*(v4 + 118) << 16)) << 32));
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 88) = 1;
  *(v4 + 118) = 0;
  *(v4 + 116) = 192;
  *(v4 + 112) = 0;

  *(v4 + 136) = a1;
  *(v4 + 144) = a2;
  *(v4 + 152) = v8;
  *(v4 + 160) = v9;
  v10 = *(v4 + 208);
  *(a4 + 192) = *(v4 + 192);
  *(a4 + 208) = v10;
  *(a4 + 224) = *(v4 + 224);
  v11 = *(v4 + 112);
  v12 = *(v4 + 80);
  *(a4 + 64) = *(v4 + 64);
  *(a4 + 80) = v12;
  *(a4 + 96) = *(v4 + 96);
  *(a4 + 112) = v11;
  v13 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v13;
  v14 = *(v4 + 48);
  *(a4 + 32) = *(v4 + 32);
  *(a4 + 48) = v14;
  v15 = *(v4 + 144);
  *(a4 + 128) = *(v4 + 128);
  *(a4 + 144) = v15;
  result = *(v4 + 176);
  *(a4 + 160) = *(v4 + 160);
  *(a4 + 176) = result;
  return result;
}

__n128 RepairContext.Builder._context(_:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;

  v1[10].n128_u64[1] = v2;
  sub_2405B044C(&v1[11], v33, &qword_27E4B8CB8, &qword_240768F08);
  if (v34)
  {
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CC0, &qword_240768F10);
    if (swift_dynamicCast())
    {
      v6 = v1;
      __src[6] = v30[6];
      __src[7] = v30[7];
      __src[8] = v30[8];
      __src[9] = v30[9];
      __src[2] = v30[2];
      __src[3] = v30[3];
      __src[4] = v30[4];
      __src[5] = v30[5];
      __src[0] = v30[0];
      __src[1] = v30[1];
      v7 = v31;
      memcpy(&__src[10] + 8, v32, 0x330uLL);
      *&__src[10] = v31;
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4B8518);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27 = v12;
        *v11 = 136315138;
        swift_beginAccess();
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[20];
        memcpy(v28, __src, sizeof(v28));
        sub_240605010(__dst, v26);
        v13 = sub_24075A0E4();
        v15 = sub_2405BBA7C(v13, v14, &v27);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_240579000, v9, v10, "Applying main queue override on exchange: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x245CC76B0](v12, -1, -1);
        MEMORY[0x245CC76B0](v11, -1, -1);
      }

      sub_2406082EC();
      v16 = sub_24075A644();
      swift_beginAccess();
      *&__src[10] = v16;

      memcpy(v28, __src, sizeof(v28));
      v17 = swift_allocObject();
      memcpy((v17 + 16), __src, 0x3D8uLL);
      sub_240605010(v28, __dst);
      v1 = v6;
      sub_2405B8A50(&v6[11], &qword_27E4B8CB8, &qword_240768F08);
      v6[11].n128_u64[0] = v17;
      v6[12].n128_u64[1] = &type metadata for AutomaticRepairModelExchange;
      v6[13].n128_u64[0] = &protocol witness table for AutomaticRepairModelExchange;
      memcpy(__dst, __src, sizeof(__dst));
      sub_240608338(__dst);
    }
  }

  else
  {
    v18 = v2;
    sub_2405B8A50(v33, &qword_27E4B8CB8, &qword_240768F08);
  }

  v19 = v1[13];
  v4[12] = v1[12];
  v4[13] = v19;
  v4[14].n128_u8[0] = v1[14].n128_u8[0];
  v20 = v1[9];
  v4[8] = v1[8];
  v4[9] = v20;
  v21 = v1[11];
  v4[10] = v1[10];
  v4[11] = v21;
  v22 = v1[5];
  v4[4] = v1[4];
  v4[5] = v22;
  v23 = v1[7];
  v4[6] = v1[6];
  v4[7] = v23;
  v24 = v1[1];
  *v4 = *v1;
  v4[1] = v24;
  result = v1[3];
  v4[2] = v1[2];
  v4[3] = result;
  return result;
}

unint64_t sub_2406082EC()
{
  result = qword_280FAD6F0;
  if (!qword_280FAD6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FAD6F0);
  }

  return result;
}

id RepairContext.Builder._builderError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 216) = a1;
  *(a2 + 224) = *(v2 + 224);
  v5 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v5;
  v6 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v6;
  v7 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v7;
  v8 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v8;
  v9 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v9;
  v10 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v10;
  v11 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v11;

  return a1;
}

__n128 RepairContext.Builder.modelExchange<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v18 + 1) = a2;
  v19 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2405B8A50(v4 + 176, &qword_27E4B8CB8, &qword_240768F08);
  v9 = v18;
  *(v4 + 176) = v17;
  *(v4 + 192) = v9;
  *(v4 + 208) = v19;
  v10 = *(v4 + 208);
  *(a4 + 192) = *(v4 + 192);
  *(a4 + 208) = v10;
  *(a4 + 224) = *(v4 + 224);
  v11 = *(v4 + 144);
  *(a4 + 128) = *(v4 + 128);
  *(a4 + 144) = v11;
  v12 = *(v4 + 176);
  *(a4 + 160) = *(v4 + 160);
  *(a4 + 176) = v12;
  v13 = *(v4 + 80);
  *(a4 + 64) = *(v4 + 64);
  *(a4 + 80) = v13;
  v14 = *(v4 + 112);
  *(a4 + 96) = *(v4 + 96);
  *(a4 + 112) = v14;
  v15 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v15;
  result = *(v4 + 48);
  *(a4 + 32) = *(v4 + 32);
  *(a4 + 48) = result;
  return result;
}

__n128 RepairContext.Builder.shouldSkipConfirmation(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(v2 + 224) = a1;
  *(a2 + 224) = a1;
  v3 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v3;
  v4 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v4;
  v5 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v5;
  v6 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v6;
  v7 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v7;
  v8 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v8;
  result = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 RepairContext.Builder._fixedPin(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  v7 = *(v3 + 208);
  *(a3 + 192) = *(v3 + 192);
  *(a3 + 208) = v7;
  *(a3 + 224) = *(v3 + 224);
  v8 = *(v3 + 176);
  *(a3 + 160) = *(v3 + 160);
  *(a3 + 176) = v8;
  v9 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v9;
  v10 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v10;
  v11 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v11;
  v12 = *(v3 + 112);
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = v12;
  result = *(v3 + 144);
  *(a3 + 128) = *(v3 + 128);
  *(a3 + 144) = result;
  return result;
}

uint64_t RepairContext.Builder.build()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CC8, &qword_240768F18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for RepairModel(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = *(v1 + 216);
  if (v15)
  {
    v16 = v15;
    sub_2406095E0(v1);
    return swift_willThrow();
  }

  v18 = *(v1 + 208);
  v33[1] = *(v1 + 192);
  v33[2] = v18;
  v34 = *(v1 + 224);
  v19 = *(v1 + 144);
  v31[8] = *(v1 + 128);
  v31[9] = v19;
  v20 = *(v1 + 176);
  v32 = *(v1 + 160);
  v33[0] = v20;
  v21 = *(v1 + 80);
  v31[4] = *(v1 + 64);
  v31[5] = v21;
  v22 = *(v1 + 112);
  v31[6] = *(v1 + 96);
  v31[7] = v22;
  v23 = *(v1 + 16);
  v31[0] = *v1;
  v31[1] = v23;
  v24 = *(v1 + 48);
  v31[2] = *(v1 + 32);
  v31[3] = v24;
  if (!*(&v32 + 1))
  {
    sub_2406095A8(v31, &v30);
    sub_240608EC0(v11);
    if (v2)
    {
      return sub_2406095E0(v31);
    }

    v6 = v11;
LABEL_9:
    sub_240609734(v6, v14, type metadata accessor for RepairModel);
    sub_240609734(v14, a1, type metadata accessor for RepairModel);
    v28 = type metadata accessor for RepairContext(0);
    sub_2405B044C(v33, a1 + *(v28 + 20), &qword_27E4B8CB8, &qword_240768F08);
    return sub_2406095E0(v31);
  }

  v25 = v12;
  v26 = *(&v32 + 1);
  AISRepairContext.into(relaxed:)(0, v6);
  if ((*(v8 + 48))(v6, 1, v25) != 1)
  {

    goto LABEL_9;
  }

  sub_2405B8A50(v6, &qword_27E4B8CC8, &qword_240768F18);
  sub_24060965C();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();

  return sub_2406095E0(v31);
}

uint64_t AISRepairContext.into(relaxed:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CD8, &qword_240768F20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for SetupModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  v13 = __swift_project_value_buffer(v12, qword_27E4B8518);
  v14 = v2;
  v69 = v13;
  v15 = sub_240759AC4();
  v16 = sub_24075A5C4();

  v17 = os_log_type_enabled(v15, v16);
  v70 = a1;
  if (v17)
  {
    v66 = v8;
    v67 = v11;
    v68 = a2;
    v18 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v71 = v65;
    *v18 = 67109634;
    *(v18 + 4) = a1 & 1;
    *(v18 + 8) = 2080;
    v19 = [v14 altDSID];
    v20 = sub_24075A0B4();
    v22 = v21;

    v23 = sub_2405BBA7C(v20, v22, &v71);

    *(v18 + 10) = v23;
    *(v18 + 18) = 2080;
    v24 = &unk_278CAD000;
    v25 = [v14 userProfileIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_24075A0B4();
      v29 = v28;
    }

    else
    {
      v29 = 0xE600000000000000;
      v27 = 0x3E6C6C756E3CLL;
    }

    v30 = sub_2405BBA7C(v27, v29, &v71);

    *(v18 + 20) = v30;
    _os_log_impl(&dword_240579000, v15, v16, "Converting objc setup context with properties (relaxed: %{BOOL}d): {\n  altDSID: %s,\n  userProfileIdentifier: %s\n}", v18, 0x1Cu);
    v31 = v65;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v31, -1, -1);
    MEMORY[0x245CC76B0](v18, -1, -1);

    v11 = v67;
    a2 = v68;
    v8 = v66;
  }

  else
  {
    v24 = 0x1FBE10000;
  }

  AISSetupContext.into(relaxed:)(v70 & 1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2405B8A50(v7, &qword_27E4B8CD8, &qword_240768F20);
    v32 = sub_240759AC4();
    v33 = sub_24075A5E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_240579000, v32, v33, "Unable to convert setup model", v34, 2u);
      MEMORY[0x245CC76B0](v34, -1, -1);
    }

    v35 = type metadata accessor for RepairModel(0);
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  else
  {
    v37 = v24;
    sub_240609734(v7, v11, type metadata accessor for SetupModel);
    v11[96] = 1;
    v38 = [v14 altDSID];
    v39 = sub_24075A0B4();
    v41 = v40;

    *(v11 + 19) = v39;
    *(v11 + 20) = v41;
    v42 = [v14 (v37 + 116)];
    if (v42)
    {
      v43 = v8;
      v44 = v42;
      v45 = sub_24075A0B4();
      v47 = v46;

      v48 = sub_240759AC4();
      v49 = sub_24075A5C4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_240579000, v48, v49, "Client provided a profile identifier. Setting it.", v50, 2u);
        MEMORY[0x245CC76B0](v50, -1, -1);
      }

      v51 = *(v43 + 40);
      v52 = &v11[v51 + *(type metadata accessor for SignInModel(0) + 64)];
      sub_240604C7C(*v52, *(v52 + 1), v52[16]);
      *v52 = v45;
      *(v52 + 1) = v47;
      v52[16] = 0;
    }

    v53 = [v14 altDSID];
    v54 = sub_24075A0B4();
    v56 = v55;

    v57 = [v14 (v37 + 116)];
    if (v57)
    {
      v58 = v57;
      v59 = sub_24075A0B4();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = type metadata accessor for RepairModel(0);
    sub_24060979C(v11, a2 + *(v62 + 20));
    *a2 = v54;
    *(a2 + 8) = v56;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = v59;
    *(a2 + 72) = v61;
    v63 = a2 + *(v62 + 24);
    *(v63 + 32) = 0;
    *v63 = 0u;
    *(v63 + 16) = 0u;
    *(v63 + 40) = -1;
    (*(*(v62 - 8) + 56))(a2, 0, 1, v62);
    return sub_240609800(v11);
  }
}

double sub_240608EC0@<D0>(void *a1@<X8>)
{
  v77 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v57 - v4;
  v78 = type metadata accessor for SetupModel(0);
  MEMORY[0x28223BE20](v78);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 116);
  v7 = *(v1 + 112) | ((v6 | (*(v1 + 118) << 16)) << 32);
  LODWORD(v65) = (v6 >> 6) >= 2u;
  v8 = *(v1 + 88);
  v9 = *(v1 + 16);
  v88 = *v1;
  v89 = v9;
  v10 = *(v1 + 48);
  v90 = *(v1 + 32);
  v91 = v10;
  v92 = *(v1 + 64);
  if (*(&v88 + 1))
  {
    v76 = v88;
    v74 = v90;
    v75 = v89;
    v72 = v92;
    v73 = v91;
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    v72 = 0u;
    v73 = 0u;
  }

  v12 = *(v1 + 96);
  v11 = *(v1 + 104);
  v70 = *(v1 + 80);
  v13 = *(v1 + 120);
  v14 = *(v1 + 128);
  v15 = *(v2 + 144);
  v58 = *(v2 + 136);
  v62 = *(v2 + 152);
  v63 = v13;
  LODWORD(v13) = *(v2 + 160);
  v60 = *(v2 + 224);
  v61 = v13;
  *&v79 = v70 ^ 1u | 0x200;
  *(&v79 + 1) = 0;
  v80 = 0uLL;
  v81 = xmmword_240768EF0;
  LOBYTE(v82) = 0;
  sub_240609C0C(v8, v12, v11, v7);
  v59 = v15;

  v64 = v14;

  sub_2405B044C(&v88, v86, &qword_27E4B6420, &qword_240768F00);
  sub_240676624(v86);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0, 0, 0);
  v93 = v11;
  sub_240609C0C(v8, v12, v11, v7);
  sub_2406095E0(v2);
  v69 = v12;
  v66 = v8;
  v67 = v7;
  if ((v7 & 0xC000000000) != 0)
  {
    sub_240604AB8(v8, v12, v93, v7);
    v16 = 0;
    v17 = 0;
    v7 = 0;
    v18 = 1;
  }

  else
  {
    v17 = v93 & 0xFF0000FFFFLL;
    v19 = v8;
    v18 = v12;
    v16 = v19;
  }

  *&v85[21] = v86[6];
  *&v85[23] = v86[7];
  *&v85[25] = v86[8];
  *&v85[13] = v86[2];
  *&v85[15] = v86[3];
  *&v85[17] = v86[4];
  *&v85[19] = v86[5];
  *&v85[9] = v86[0];
  LOBYTE(v85[0]) = 1;
  BYTE1(v85[0]) = v65;
  v85[1] = v58;
  v85[2] = v59;
  v85[3] = v63;
  v85[4] = v64;
  v85[5] = v62;
  LOBYTE(v85[6]) = v61;
  BYTE1(v85[6]) = v60;
  v85[7] = 0;
  v85[8] = 0;
  LOWORD(v85[27]) = v87;
  *&v85[11] = v86[1];
  memset(&v85[28], 0, 81);
  *&v79 = v16;
  *(&v79 + 1) = v18;
  *&v80 = v17;
  BYTE14(v80) = BYTE6(v7);
  WORD6(v80) = WORD2(v7);
  DWORD2(v80) = v7;
  DiscoveryModel.update(withPeer:)(&v79);
  sub_240609C84(v16, v18);
  v20 = type metadata accessor for IdMSAccount(0);
  v21 = *(*(v20 - 8) + 56);
  v22 = v71;
  v21(v71, 1, 1, v20);
  v23 = v21;
  v65 = v21;
  v24 = v68;
  v25 = &v68[*(v78 + 36)];
  v26 = type metadata accessor for AuthenticationModel(0);
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v23(v25, 1, 1, v20);
  v27 = (v25 + v26[5]);
  v27[3] = 0u;
  v27[4] = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  *v27 = 0u;
  v28 = v26[7];
  v64 = v26[8];
  v29 = (v25 + v28);
  v30 = v24;
  v31 = v26[9];
  v32 = (v25 + v26[11]);
  *v32 = 0;
  v32[1] = 0;
  sub_240590814(v22, v25);
  *(v25 + v26[6]) = 1;
  *v29 = 0;
  v29[1] = 0;
  *(v25 + v31) = 0;
  v33 = v65;
  *(v25 + v64) = MEMORY[0x277D84F90];
  v33(v22, 1, 1, v20);
  v34 = v30 + *(v78 + 40);
  v33(v34, 1, 1, v20);
  v35 = type metadata accessor for SignInModel(0);
  v36 = (v34 + v35[5]);
  v36[4] = 0u;
  v36[5] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v34 + v35[10]);
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v78 = v34 + v35[11];
  *(v34 + v35[13]) = 0;
  v38 = v35[15];
  v39 = (v34 + v35[14]);
  *(v34 + v38) = 2;
  v40 = (v34 + v35[17]);
  *v40 = 0;
  v40[1] = 0;
  *(v34 + v35[18]) = 0;
  sub_240590814(v22, v34);
  v41 = v36[3];
  v81 = v36[2];
  v82 = v41;
  v42 = v36[5];
  v83 = v36[4];
  v84 = v42;
  v43 = v36[1];
  v79 = *v36;
  v80 = v43;
  sub_2405B8A50(&v79, &qword_27E4B8D00, &qword_2407691E0);
  *v36 = 0u;
  v36[1] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  v36[4] = 0u;
  v36[5] = 0u;
  v44 = MEMORY[0x277D84FA0];
  *(v34 + v35[6]) = MEMORY[0x277D84FA0];
  *(v34 + v35[7]) = v44;
  *(v34 + v35[8]) = 0;
  *(v34 + v35[9]) = 0;
  *v39 = 0;
  v39[1] = 0;
  *(v34 + v38) = 2;
  v45 = v34 + v35[16];
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  v46 = v34 + v35[19];
  *(v46 + 32) = 0u;
  *(v46 + 48) = 0u;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0xE000000000000000;
  *(v46 + 80) = 0;
  *(v46 + 88) = 0;
  *(v46 + 96) = 0;
  sub_240604C2C(*v37, v37[1], v37[2], v37[3]);
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v47 = v78;
  *v78 = 0;
  *(v47 + 8) = 0;
  *(v34 + v35[12]) = 0;
  *(v30 + 39) = 0;
  *v30 = v70;
  v48 = v67;
  v49 = v69;
  *(v30 + 8) = v66;
  *(v30 + 16) = v49;
  *(v30 + 24) = v93;
  *(v30 + 38) = BYTE6(v48);
  *(v30 + 36) = WORD2(v48);
  *(v30 + 32) = v48;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 88) = -1;
  memcpy((v30 + 96), v85, 0x131uLL);
  v50 = v77;
  v51 = *(&v76 + 1);
  *v77 = v76;
  v50[1] = v51;
  v52 = v74;
  *(v50 + 1) = v75;
  *(v50 + 2) = v52;
  v53 = v72;
  *(v50 + 3) = v73;
  *(v50 + 4) = v53;
  v54 = type metadata accessor for RepairModel(0);
  sub_240609734(v30, v50 + *(v54 + 20), type metadata accessor for SetupModel);
  v55 = v50 + *(v54 + 24);
  *(v55 + 4) = 0;
  result = 0.0;
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v55[40] = -1;
  return result;
}

uint64_t type metadata accessor for RepairContext(uint64_t a1)
{
  result = qword_27E4B8CE0;
  if (!qword_27E4B8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24060965C()
{
  result = qword_27E4B8CD0;
  if (!qword_27E4B8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CD0);
  }

  return result;
}

uint64_t sub_240609704@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240609734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24060979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240609800(uint64_t a1)
{
  v2 = type metadata accessor for SetupModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_240609890(uint64_t a1)
{
  type metadata accessor for RepairModel(319);
  if (v1 <= 0x3F)
  {
    sub_240609914(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240609914(uint64_t a1)
{
  if (!qword_27E4B8CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8CC0, &qword_240768F10);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B8CF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV2IDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10RemoteRoleO(uint64_t a1)
{
  if (*(a1 + 28) >> 6 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 28) >> 6;
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup19RepairModelExchange_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_240609A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 225))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 104) >> 24) & 0xFFFF0000 | WORD1(*(a1 + 104));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_240609A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(result + 104) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
      *(result + 118) = 0;
      *(result + 116) = 0;
      *(result + 112) = 0;
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240609B10(uint64_t a1, int a2)
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

uint64_t sub_240609B58(uint64_t result, int a2, int a3)
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

unint64_t sub_240609BB8()
{
  result = qword_27E4B8CF8;
  if (!qword_27E4B8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CF8);
  }

  return result;
}

id sub_240609C0C(id result, id a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 38) & 3;
  if (((a4 >> 38) & 3) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }
  }

  else if (!v4)
  {
  }

  return result;
}

void sub_240609C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_240609C84(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

AISSafetySettingsResult __swiftcall AISSafetySettingsResult.init(isSafetySettingsApplied:)(Swift::Bool isSafetySettingsApplied)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v2 initWithIsSafetySettingsApplied_];
  result.isSafetySettingsApplied = v3;
  return result;
}

id AISSafetySettingsResult.init(isSafetySettingsApplied:)(char a1)
{
  *(v1 + OBJC_IVAR___AISSafetySettingsResult_isSafetySettingsApplied) = a1;
  v3.super_class = AISSafetySettingsResult;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AISSafetySettingsResult.description.getter()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000033, 0x8000000240787130);
  v1 = [v0 isSafetySettingsApplied];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x245CC5E60](v3, v4);

  MEMORY[0x245CC5E60](125, 0xE100000000000000);
  return 0;
}

AISSafetySettingsResult __swiftcall AISSafetySettingsResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isSafetySettingsApplied = v1;
  return result;
}

unint64_t type metadata accessor for AISSafetySettingsResult()
{
  result = qword_27E4B8D10;
  if (!qword_27E4B8D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B8D10);
  }

  return result;
}

void IdMSAccount.init(id:name:credential:services:familyInfo:ageRange:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void **a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v12 = *a5;
  v13 = a5[1];
  v14 = type metadata accessor for IdMSAccount(0);
  v15 = &a7[v14[8]];
  *v15 = xmmword_24075D8C0;
  v16 = &a7[v14[9]];
  *v16 = 0;
  v16[8] = 1;
  v17 = a1[4];
  *(a7 + 3) = a1[3];
  *(a7 + 4) = v17;
  v18 = a1[2];
  *(a7 + 1) = a1[1];
  *(a7 + 2) = v18;
  *a7 = *a1;
  v19 = v14[5];
  v20 = sub_2407595A4();
  (*(*(v20 - 8) + 32))(&a7[v19], a2, v20);
  v21 = &a7[v14[6]];
  v22 = a3[7];
  *(v21 + 6) = a3[6];
  *(v21 + 7) = v22;
  v23 = a3[9];
  *(v21 + 8) = a3[8];
  *(v21 + 9) = v23;
  v24 = a3[3];
  *(v21 + 2) = a3[2];
  *(v21 + 3) = v24;
  v25 = a3[5];
  *(v21 + 4) = a3[4];
  *(v21 + 5) = v25;
  v26 = a3[1];
  *v21 = *a3;
  *(v21 + 1) = v26;
  *&a7[v14[7]] = a4;
  sub_2405AFA1C(*v15, v15[1]);
  *v15 = v12;
  v15[1] = v13;
  *v16 = a6;
  v16[8] = 0;
}

uint64_t type metadata accessor for IdMSAccount(uint64_t a1)
{
  result = qword_27E4B90E8;
  if (!qword_27E4B90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall IdMSAccount.ID.init(altDsid:username:dsid:name:deviceUserId:)(AppleIDSetup::IdMSAccount::ID *__return_ptr retstr, Swift::String altDsid, Swift::String_optional username, Swift::String_optional dsid, Swift::String_optional name, Swift::String_optional deviceUserId)
{
  retstr->altDsid = altDsid;
  retstr->username = username;
  retstr->dsid = dsid;
  retstr->name = name;
  retstr->deviceUserId = deviceUserId;
}

uint64_t IdMSAccount.id.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

__n128 IdMSAccount.id.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_240618468(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t IdMSAccount.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdMSAccount(0) + 20);
  v4 = sub_2407595A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IdMSAccount.name.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdMSAccount(0) + 20);
  v4 = sub_2407595A4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IdMSAccount.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IdMSAccount(0) + 24));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_240618498(v20, &v19);
}

__n128 IdMSAccount.credential.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IdMSAccount(0) + 24));
  v4 = v3[7];
  v15[6] = v3[6];
  v15[7] = v4;
  v5 = v3[9];
  v15[8] = v3[8];
  v15[9] = v5;
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v7 = v3[5];
  v15[4] = v3[4];
  v15[5] = v7;
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  sub_2406184D0(v15);
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  return result;
}

uint64_t IdMSAccount.services.getter()
{
  type metadata accessor for IdMSAccount(0);
}

uint64_t IdMSAccount.services.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdMSAccount(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

id IdMSAccount.familyInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IdMSAccount(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return sub_240618500(v4, v5);
}

void IdMSAccount.familyInfo.setter(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IdMSAccount(0) + 32));
  sub_2405AFA1C(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t IdMSAccount.ageRange.getter()
{
  v1 = (v0 + *(type metadata accessor for IdMSAccount(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IdMSAccount.ageRange.setter(uint64_t a1)
{
  result = type metadata accessor for IdMSAccount(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IdMSAccount.ageRange.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IdMSAccount(0) + 36);
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
  return sub_24060A720;
}

uint64_t sub_24060A720(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_24060A738()
{
  v0 = sub_2407595A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdMSAccount(0);
  __swift_allocate_value_buffer(v4, qword_27E4B8D18);
  v5 = __swift_project_value_buffer(v4, qword_27E4B8D18);
  if (qword_27E4B5F08 != -1)
  {
    swift_once();
  }

  v24 = xmmword_27E4B8D50;
  v25 = xmmword_27E4B8D60;
  v26 = xmmword_27E4B8D70;
  v23 = xmmword_27E4B8D40;
  v22 = xmmword_27E4B8D30;
  sub_2405AF99C(&v22, v27);
  sub_240759594();
  sub_2405AF9F8(v27);
  v6 = &v5[v4[8]];
  v21 = xmmword_24075D8C0;
  *v6 = xmmword_24075D8C0;
  v7 = &v5[v4[9]];
  *v7 = 0;
  v7[8] = 1;
  *v5 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v26;
  *(v5 + 3) = v25;
  *(v5 + 4) = v10;
  *(v5 + 1) = v8;
  *(v5 + 2) = v9;
  (*(v1 + 32))(&v5[v4[5]], v3, v0);
  v11 = &v5[v4[6]];
  v13 = v27[8];
  v12 = v27[9];
  v14 = v27[7];
  *(v11 + 6) = v27[6];
  *(v11 + 7) = v14;
  *(v11 + 8) = v13;
  *(v11 + 9) = v12;
  v16 = v27[4];
  v15 = v27[5];
  v17 = v27[3];
  *(v11 + 2) = v27[2];
  *(v11 + 3) = v17;
  *(v11 + 4) = v16;
  *(v11 + 5) = v15;
  v18 = v27[1];
  *v11 = v27[0];
  *(v11 + 1) = v18;
  *&v5[v4[7]] = MEMORY[0x277D84FA0];
  v19 = *v6;
  v20 = *(v6 + 1);
  *v6 = v21;
  sub_2405AFA1C(v19, v20);
  *v7 = 0;
  v7[8] = 0;
}