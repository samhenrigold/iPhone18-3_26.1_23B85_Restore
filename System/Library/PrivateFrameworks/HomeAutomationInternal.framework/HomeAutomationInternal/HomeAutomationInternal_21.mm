uint64_t HomeAutomationIntent.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v1);
  return sub_252E37F14();
}

HomeAutomationInternal::HomeAutomationIntent::Verb_optional __swiftcall HomeAutomationIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252AB8974()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3D9C(v3, v1);
  return sub_252E37F14();
}

uint64_t sub_252AB89C4(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252AB3D9C(v4, v2);
  return sub_252E37F14();
}

unint64_t sub_252AB8A14@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.Verb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252AB8B00()
{
  v1 = *v0;
  v2 = 0x76697463656A626FLL;
  v3 = 0x797469746E65;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1954047342;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7669736573736F70;
  if (v1 != 1)
  {
    v5 = 0x69736F507473696CLL;
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

uint64_t sub_252AB8BDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252ABF240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252AB8C10(uint64_t a1)
{
  v2 = sub_252ABD2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8C4C(uint64_t a1)
{
  v2 = sub_252ABD2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8C94(uint64_t a1)
{
  v2 = sub_252ABD3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8CD0(uint64_t a1)
{
  v2 = sub_252ABD3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252AB8D98(uint64_t a1)
{
  v2 = sub_252ABD49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8DD4(uint64_t a1)
{
  v2 = sub_252ABD49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8E10(uint64_t a1)
{
  v2 = sub_252ABD34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8E4C(uint64_t a1)
{
  v2 = sub_252ABD34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8E88(uint64_t a1)
{
  v2 = sub_252ABD3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8EC4(uint64_t a1)
{
  v2 = sub_252ABD3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8F00(uint64_t a1)
{
  v2 = sub_252ABD448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8F3C(uint64_t a1)
{
  v2 = sub_252ABD448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8F78(uint64_t a1)
{
  v2 = sub_252ABD544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB8FB4(uint64_t a1)
{
  v2 = sub_252ABD544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AB8FF0(uint64_t a1)
{
  v2 = sub_252ABD4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AB902C(uint64_t a1)
{
  v2 = sub_252ABD4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationIntent.ReferenceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B70, &qword_252E48180);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B78, &qword_252E48188);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B80, &qword_252E48190);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B88, &qword_252E48198);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B90, &qword_252E481A0);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B98, &qword_252E481A8);
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v39 = &v36 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BA0, &qword_252E481B0);
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v36 = &v36 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BA8, &qword_252E481B8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - v21;
  v23 = *v2;
  v24 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ABD2F8();
  sub_252E37F84();
  if (v24 == 1)
  {
    v25 = (v20 + 8);
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v60 = 4;
        sub_252ABD3F4();
        v32 = v45;
        sub_252E37C84();
        v34 = v46;
        v33 = v47;
      }

      else if (v23 == 4)
      {
        v61 = 5;
        sub_252ABD3A0();
        v32 = v48;
        sub_252E37C84();
        v34 = v49;
        v33 = v50;
      }

      else
      {
        v62 = 6;
        sub_252ABD34C();
        v32 = v51;
        sub_252E37C84();
        v34 = v52;
        v33 = v53;
      }

      (*(v34 + 8))(v32, v33);
      return (*v25)(v22, v19);
    }

    else
    {
      v26 = v22;
      if (v23)
      {
        if (v23 == 1)
        {
          v57 = 1;
          sub_252ABD4F0();
          v27 = v39;
          sub_252E37C84();
          v29 = v40;
          v28 = v41;
        }

        else
        {
          v59 = 3;
          sub_252ABD448();
          v27 = v42;
          sub_252E37C84();
          v29 = v43;
          v28 = v44;
        }

        (*(v29 + 8))(v27, v28);
      }

      else
      {
        v56 = 0;
        sub_252ABD544();
        v35 = v36;
        sub_252E37C84();
        (*(v37 + 8))(v35, v38);
      }

      return (*v25)(v26, v19);
    }
  }

  else
  {
    v58 = 2;
    sub_252ABD49C();
    sub_252E37C84();
    v30 = v55;
    sub_252E37D34();
    (*(v54 + 8))(v14, v30);
    return (*(v20 + 8))(v22, v19);
  }
}

uint64_t HomeAutomationIntent.ReferenceType.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t HomeAutomationIntent.ReferenceType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252E37EC4();
  if (v2)
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t HomeAutomationIntent.ReferenceType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BF0, &qword_252E481C0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542BF8, &qword_252E481C8);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C00, &qword_252E481D0);
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  MEMORY[0x28223BE20](v7);
  v77 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C08, &qword_252E481D8);
  v11 = *(v10 - 8);
  v65 = v10;
  v66 = v11;
  MEMORY[0x28223BE20](v10);
  v73 = &v56 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C10, &qword_252E481E0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v76 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C18, &qword_252E481E8);
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C20, &qword_252E481F0);
  v60 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C28, &qword_252E481F8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v24 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_252ABD2F8();
  v25 = v80;
  sub_252E37F74();
  if (!v25)
  {
    v57 = v17;
    v58 = v16;
    v27 = v76;
    v26 = v77;
    v28 = v78;
    v59 = v21;
    v80 = v20;
    v29 = sub_252E37C74();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        if (*(v29 + 32) > 2u)
        {
          if (*(v29 + 32) > 4u)
          {
            v31 = v75;
            v44 = v80;
            if (v30 == 5)
            {
              v86 = 5;
              sub_252ABD3A0();
              v45 = v74;
              sub_252E37B84();
              v46 = v59;
              (*(v69 + 8))(v45, v70);
              (*(v46 + 8))(v23, v44);
              swift_unknownObjectRelease();
              v35 = 1;
              v36 = 4;
            }

            else
            {
              v87 = 6;
              sub_252ABD34C();
              v51 = v28;
              sub_252E37B84();
              v52 = v59;
              (*(v71 + 8))(v51, v72);
              (*(v52 + 8))(v23, v44);
              swift_unknownObjectRelease();
              v35 = 1;
              v36 = 5;
            }
          }

          else
          {
            v31 = v75;
            v32 = v80;
            if (v30 == 3)
            {
              v84 = 3;
              sub_252ABD448();
              v33 = v73;
              sub_252E37B84();
              v34 = v59;
              (*(v66 + 8))(v33, v65);
              (*(v34 + 8))(v23, v32);
              swift_unknownObjectRelease();
              v35 = 1;
              v36 = 2;
            }

            else
            {
              v85 = 4;
              sub_252ABD3F4();
              sub_252E37B84();
              v50 = v59;
              (*(v68 + 8))(v26, v67);
              (*(v50 + 8))(v23, v32);
              swift_unknownObjectRelease();
              v35 = 1;
              v36 = 3;
            }
          }

          v55 = v79;
          goto LABEL_22;
        }

        if (*(v29 + 32))
        {
          if (v30 != 1)
          {
            v83 = 2;
            sub_252ABD49C();
            v48 = v27;
            v49 = v80;
            sub_252E37B84();
            v54 = v61;
            v36 = sub_252E37C44();
            (*(v64 + 8))(v48, v54);
            (*(v59 + 8))(v23, v49);
            swift_unknownObjectRelease();
            v55 = v79;
            v35 = 0;
            v31 = v75;
LABEL_22:
            *v31 = v36;
            *(v31 + 8) = v35;
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          v82 = 1;
          sub_252ABD4F0();
          v41 = v58;
          v42 = v23;
          v43 = v80;
          sub_252E37B84();
          (*(v62 + 8))(v41, v63);
          (*(v59 + 8))(v42, v43);
          swift_unknownObjectRelease();
          v36 = 1;
        }

        else
        {
          v81 = 0;
          sub_252ABD544();
          v47 = v80;
          sub_252E37B84();
          (*(v60 + 8))(v19, v57);
          (*(v59 + 8))(v23, v47);
          swift_unknownObjectRelease();
          v36 = 0;
        }

        v35 = 1;
        v55 = v79;
        v31 = v75;
        goto LABEL_22;
      }
    }

    v37 = sub_252E37A74();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C30, &qword_252E48200);
    *v39 = &type metadata for HomeAutomationIntent.ReferenceType;
    v40 = v80;
    sub_252E37B94();
    sub_252E37A64();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v59 + 8))(v23, v40);
    swift_unknownObjectRelease();
  }

  v55 = v79;
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_252ABA29C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_252ABA2D8()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_252E490E0[v1];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252ABA328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252E37EC4();
  if (v3)
  {
    v2 = qword_252E490E0[v2];
  }

  else
  {
    MEMORY[0x2530AE390](2);
  }

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

HomeAutomationInternal::HomeAutomationIntent::HomeIntentFlag_optional __swiftcall HomeAutomationIntent.HomeIntentFlag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HomeAutomationIntent.HomeIntentFlag.rawValue.getter()
{
  result = 0x48746E6572727563;
  switch(*v0)
  {
    case 1:
      result = 0x6C706552726F6F64;
      break;
    case 2:
      result = 0x4966664F6E727574;
      break;
    case 3:
      result = 0x7972616D697270;
      break;
    case 4:
      result = 0x656372756F73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x45656C6946636F76;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x636E657265666572;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x6465766C6F736572;
      break;
    case 0xC:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252ABA634@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.HomeIntentFlag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HomeAutomationInternal::HomeAutomationIntent::ListPositionDefinedValues_optional __swiftcall HomeAutomationIntent.ListPositionDefinedValues.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == -100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 50)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t HomeAutomationIntent.ListPositionDefinedValues.rawValue.getter()
{
  if (*v0)
  {
    return -100;
  }

  else
  {
    return 50;
  }
}

uint64_t sub_252ABA740()
{
  v1 = *v0;
  sub_252E37EC4();
  if (v1)
  {
    v2 = -100;
  }

  else
  {
    v2 = 50;
  }

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

uint64_t sub_252ABA794()
{
  if (*v0)
  {
    v1 = -100;
  }

  else
  {
    v1 = 50;
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252ABA7D0(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  if (v2)
  {
    v3 = -100;
  }

  else
  {
    v3 = 50;
  }

  MEMORY[0x2530AE390](v3);
  return sub_252E37F14();
}

void *sub_252ABA820@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 50)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_252ABA840(uint64_t *a1@<X8>)
{
  v2 = 50;
  if (*v1)
  {
    v2 = -100;
  }

  *a1 = v2;
}

HomeAutomationInternal::HomeAutomationIntent::UsoTaskType_optional __swiftcall HomeAutomationIntent.UsoTaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t HomeAutomationIntent.UsoTaskType.rawValue.getter()
{
  result = 0x4E6F7355706F7473;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 4:
    case 0xA:
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 5:
    case 6:
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 7:
    case 0xB:
    case 0xF:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0x11:
    case 0x15:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x14:
      return result;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_252ABABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252ABAC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_252E37EC4();
  a3(v4);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252ABAD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_252E37044();
}

uint64_t sub_252ABAD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_252E37EC4();
  a4(v5);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252ABAE08@<X0>(unint64_t *a1@<X8>)
{
  result = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void HomeAutomationIntent.hash(into:)(__int128 *a1)
{
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v158 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v157 = &v121 - v3;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v125 = *(v1 + 10);
  v126 = v1[2];
  LODWORD(v3) = *(v1 + 25);
  v127 = *(v1 + 24);
  v128 = v3;
  v7 = *(v1 + 26);
  v129 = v1[4];
  v8 = *(v1 + 40);
  v9 = v1[7];
  v190 = v1[6];
  v131 = v9;
  v132 = *(v1 + 64);
  v10 = v1[10];
  v133 = v1[9];
  v134 = v10;
  v11 = v1[12];
  v135 = v1[11];
  v136 = v11;
  v12 = v1[14];
  v137 = v1[13];
  v138 = v12;
  v13 = v1[16];
  v139 = v1[15];
  v140 = v13;
  v14 = v1[18];
  v141 = v1[17];
  v142 = v14;
  v15 = v1[20];
  v143 = v1[19];
  v144 = v15;
  v16 = v1[22];
  v145 = v1[21];
  v146 = v16;
  v17 = v1[24];
  v147 = v1[23];
  v148 = v17;
  v18 = v1[25];
  LODWORD(v17) = *(v1 + 209);
  v149 = *(v1 + 208);
  v150 = v17;
  v19 = v1[28];
  v151 = v1[27];
  v152 = v19;
  v130 = *(v1 + 232);
  v20 = v1[30];
  v22 = v1[32];
  v21 = v1[33];
  v153 = v1[31];
  v154 = v22;
  v123 = v20;
  v124 = v21;
  v23 = v1[35];
  v155 = v1[34];
  v122 = v23;
  HIDWORD(v121) = *(v1 + 288);
  v156 = *(v1 + 289);
  v24 = v1[38];
  v159 = v1[37];
  v160 = v24;
  v161 = *(v1 + 312);
  v25 = v1[41];
  v162 = v1[40];
  v163 = v25;
  v26 = v1[43];
  v164 = v1[42];
  v165 = v26;
  v27 = v1[45];
  v166 = v1[44];
  v167 = v27;
  v28 = v1[47];
  v168 = v1[46];
  v169 = v28;
  v170 = *(v1 + 384);
  v171 = *(v1 + 385);
  v172 = *(v1 + 386);
  v173 = *(v1 + 387);
  v174 = *(v1 + 388);
  v175 = *(v1 + 389);
  v29 = v1[50];
  v176 = v1[49];
  v177 = v29;
  v30 = v1[52];
  v178 = v1[51];
  v179 = v30;
  v31 = v1[54];
  v180 = v1[53];
  v181 = v31;
  v32 = v1[56];
  v182 = v1[55];
  v183 = v32;
  v33 = v1[58];
  v184 = v1[57];
  v185 = v33;
  v34 = v1[60];
  v186 = v1[59];
  v187 = v34;
  v35 = v1[62];
  v188 = v1[61];
  v189 = v35;
  MEMORY[0x2530AE390](*(v4 + 16));
  v36 = *(v4 + 16);
  if (v36)
  {
    v37 = (v4 + 32);
    do
    {
      memcpy(v192, v37, sizeof(v192));
      memcpy(v194, v37, sizeof(v194));
      sub_2529353AC(v192, v193);
      HomeAutomationIntent.hash(into:)(a1);
      memcpy(v193, v194, sizeof(v193));
      sub_252935408(v193);
      v37 += 504;
      --v36;
    }

    while (v36);
  }

  sub_252E37EE4();
  if (v5 == 3)
  {
    v38 = v18;
    v39 = v8;
  }

  else
  {
    v39 = v8;
    sub_252E37044();

    v38 = v18;
  }

  v40 = v7;
  if (v6 == 3)
  {
    sub_252E37EE4();
    v41 = v130;
    v42 = v126;
    if ((v125 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_252E37EE4();
    v43 = v149;
    if (v42)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_252E37EE4();
  v42 = v126;
  sub_252E37044();

  v41 = v130;
  if (v125)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_252E37EE4();
  sub_252E37044();
  v43 = v149;
  if (v42)
  {
LABEL_10:
    v194[0] = v42;
    sub_252E37EE4();
    sub_252E35DD4();
    sub_252ABF5E8(&qword_27F542C38, MEMORY[0x277D56498], MEMORY[0x277D564A8]);
    sub_252E36E94();
    goto LABEL_14;
  }

LABEL_13:
  sub_252E37EE4();
LABEL_14:
  v44 = v190;
  v45 = v128;
  if (v127 == 2)
  {
    sub_252E37EE4();
    if (v45 != 3)
    {
LABEL_16:
      sub_252E37EE4();
      sub_252E37044();

      if (v40 == 4)
      {
        goto LABEL_21;
      }

LABEL_19:
      sub_252E37EE4();
      sub_252E37044();

      goto LABEL_22;
    }
  }

  else
  {
    sub_252E37EE4();
    v44 = v190;
    sub_252E37044();

    if (v45 != 3)
    {
      goto LABEL_16;
    }
  }

  sub_252E37EE4();
  if (v40 != 4)
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_252E37EE4();
LABEL_22:
  sub_252ABCE88(a1, v129);
  sub_252E37EE4();
  if (v39 != 4)
  {
    sub_252E37044();
  }

  MEMORY[0x2530AE390](*(v44 + 16));
  v46 = *(v44 + 16);
  if (v46)
  {
    v47 = v44 + 40;
    do
    {

      sub_252E37044();

      v47 += 16;
      --v46;
    }

    while (v46);
  }

  sub_252ABCE04(a1, v131);
  if (v132 == 4)
  {
    sub_252E37EE4();
    v48 = v133;
  }

  else
  {
    sub_252E37EE4();
    v48 = v133;
    sub_252E37044();
  }

  MEMORY[0x2530AE390](*(v48 + 16));
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v48 + 40;
    do
    {

      sub_252E37044();

      v50 += 16;
      --v49;
    }

    while (v49);
  }

  sub_252ABCD70(a1, v134, AttributeSemantic.rawValue.getter);
  sub_252ABCAD8(a1, v135);
  v51 = v136;
  MEMORY[0x2530AE390](*(v136 + 16));
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = (v51 + 32);
    do
    {
      v54 = *v53++;

      sub_252ABC420(a1, v54);

      --v52;
    }

    while (v52);
  }

  v55 = v137;
  MEMORY[0x2530AE390](*(v137 + 16));
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v55 + 40;
    do
    {

      sub_252E37044();

      v57 += 16;
      --v56;
    }

    while (v56);
  }

  v58 = v138;
  MEMORY[0x2530AE390](*(v138 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v58 + 40;
    do
    {

      sub_252E37044();

      v60 += 16;
      --v59;
    }

    while (v59);
  }

  v61 = v139;
  MEMORY[0x2530AE390](*(v139 + 16));
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = v61 + 40;
    do
    {

      sub_252E37044();

      v63 += 16;
      --v62;
    }

    while (v62);
  }

  v64 = v140;
  MEMORY[0x2530AE390](*(v140 + 16));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v64 + 40;
    do
    {

      sub_252E37044();

      v66 += 16;
      --v65;
    }

    while (v65);
  }

  sub_252ABCD70(a1, v141, AccessoryTypeSemantic.rawValue.getter);
  sub_252ABCD70(a1, v142, AccessoryTypeSemantic.rawValue.getter);
  v67 = v143;
  MEMORY[0x2530AE390](*(v143 + 16));
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = v67 + 40;
    do
    {

      sub_252E37044();

      v69 += 16;
      --v68;
    }

    while (v68);
  }

  v70 = v144;
  MEMORY[0x2530AE390](*(v144 + 16));
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = v70 + 40;
    do
    {

      sub_252E37044();

      v72 += 16;
      --v71;
    }

    while (v71);
  }

  v73 = v145;
  MEMORY[0x2530AE390](*(v145 + 16));
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = v73 + 40;
    do
    {

      sub_252E37044();

      v75 += 16;
      --v74;
    }

    while (v74);
  }

  v76 = v146;
  MEMORY[0x2530AE390](*(v146 + 16));
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = v76 + 40;
    do
    {

      sub_252E37044();

      v78 += 16;
      --v77;
    }

    while (v77);
  }

  v79 = v147;
  MEMORY[0x2530AE390](*(v147 + 16));
  v80 = *(v79 + 16);
  if (v80)
  {
    v81 = v79 + 40;
    do
    {

      sub_252E37044();

      v81 += 16;
      --v80;
    }

    while (v80);
  }

  sub_252ABCD70(a1, v148, StateSemantic.rawValue.getter);
  sub_252ABC9D0(a1, v38);
  sub_252E37EE4();
  if (v43 != 9)
  {
    sub_252AB3D9C(a1, v43);
  }

  v83 = v151;
  v82 = v152;
  if (v150 == 2)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    sub_252E37044();
  }

  sub_252ABC934(a1, v83);
  MEMORY[0x2530AE390](*(v82 + 16));
  v84 = *(v82 + 16);
  if (v84)
  {
    v85 = v82 + 40;
    do
    {

      sub_252E37044();

      v85 += 16;
      --v84;
    }

    while (v84);
  }

  if (v41)
  {
    sub_252E37EE4();
    v86 = v154;
    if (v153)
    {
LABEL_73:
      sub_252E37EE4();
      sub_252E37044();
      goto LABEL_76;
    }
  }

  else
  {
    sub_252E37EE4();
    sub_252E37044();
    v86 = v154;
    if (v153)
    {
      goto LABEL_73;
    }
  }

  sub_252E37EE4();
LABEL_76:
  MEMORY[0x2530AE390](*(v86 + 16));
  v87 = *(v86 + 16);
  v88 = v191;
  v89 = v157;
  if (v87)
  {
    v90 = *(v158 + 16);
    v91 = v86 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v92 = *(v158 + 72);
    v93 = (v158 + 8);
    do
    {
      v90(v89, v91, v88);
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F440]);
      sub_252E36E94();
      v88 = v191;
      (*v93)(v89, v191);
      v91 += v92;
      --v87;
    }

    while (v87);
  }

  if (v155)
  {
    sub_252E37EE4();
    sub_252E37044();
  }

  else
  {
    sub_252E37EE4();
  }

  v94 = v163;
  v95 = v161;
  v97 = v159;
  v96 = v160;
  if (v156)
  {
    sub_252E37EE4();
    if (v97)
    {
      goto LABEL_84;
    }
  }

  else
  {
    sub_252E37EE4();
    if ((v121 & 0x100000000) != 0)
    {
      if (v122 > 2)
      {
        if (v122 == 3)
        {
          v98 = 4;
        }

        else if (v122 == 4)
        {
          v98 = 5;
        }

        else
        {
          v98 = 6;
        }
      }

      else if (v122)
      {
        if (v122 == 1)
        {
          v98 = 1;
        }

        else
        {
          v98 = 3;
        }
      }

      else
      {
        v98 = 0;
      }
    }

    else
    {
      MEMORY[0x2530AE390](2);
      v98 = v122;
    }

    MEMORY[0x2530AE390](v98);
    if (v97)
    {
LABEL_84:
      sub_252E37EE4();
      sub_252ABD13C(a1, v97);
      if (v96)
      {
        goto LABEL_85;
      }

      goto LABEL_102;
    }
  }

  sub_252E37EE4();
  if (v96)
  {
LABEL_85:
    sub_252E37EE4();
    sub_252ABD13C(a1, v96);
    if (v95 == 2)
    {
      goto LABEL_104;
    }

LABEL_103:
    sub_252E37EE4();
    goto LABEL_104;
  }

LABEL_102:
  sub_252E37EE4();
  if (v95 != 2)
  {
    goto LABEL_103;
  }

LABEL_104:
  sub_252E37EE4();
  MEMORY[0x2530AE390](v162);
  MEMORY[0x2530AE390](*(v94 + 16));
  v99 = *(v94 + 16);
  if (v99)
  {
    v100 = v94 + 40;
    do
    {

      sub_252E37044();

      v100 += 16;
      --v99;
    }

    while (v99);
  }

  v101 = v164;
  MEMORY[0x2530AE390](*(v164 + 16));
  v102 = *(v101 + 16);
  if (v102)
  {
    v103 = v101 + 40;
    do
    {

      sub_252E37044();

      v103 += 16;
      --v102;
    }

    while (v102);
  }

  v104 = v165;
  MEMORY[0x2530AE390](*(v165 + 16));
  v105 = *(v104 + 16);
  if (v105)
  {
    v106 = v104 + 40;
    do
    {

      sub_252E37044();

      v106 += 16;
      --v105;
    }

    while (v105);
  }

  v107 = v166;
  MEMORY[0x2530AE390](*(v166 + 16));
  v108 = *(v107 + 16);
  if (v108)
  {
    v109 = v107 + 40;
    do
    {

      sub_252E37044();

      v109 += 16;
      --v108;
    }

    while (v108);
  }

  v110 = v167;
  MEMORY[0x2530AE390](*(v167 + 16));
  v111 = *(v110 + 16);
  if (v111)
  {
    v112 = v110 + 40;
    do
    {

      sub_252E37044();

      v112 += 16;
      --v111;
    }

    while (v111);
  }

  v113 = v168;
  MEMORY[0x2530AE390](*(v168 + 16));
  v114 = *(v113 + 16);
  if (v114)
  {
    v115 = v113 + 40;
    do
    {

      sub_252E37044();

      v115 += 16;
      --v114;
    }

    while (v114);
  }

  sub_252ABC6F8(a1, v169);
  v116 = v170;
  if (v170 == 22)
  {
    sub_252E37EE4();
  }

  else
  {
    sub_252E37EE4();
    LOBYTE(v194[0]) = v116;
    HomeAutomationIntent.UsoTaskType.rawValue.getter();
    sub_252E37044();
  }

  v118 = v188;
  v117 = v189;
  v119 = v187;
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252E37EE4();
  sub_252ABC57C(a1, v176);
  sub_252ABCF68(a1, v177);
  sub_252ABCF68(a1, v178);
  sub_252ABCF68(a1, v179);
  sub_252ABCF68(a1, v180);
  sub_252ABCF68(a1, v181);
  sub_252ABCF68(a1, v182);
  sub_252ABCF68(a1, v183);
  sub_252ABCF68(a1, v184);
  sub_252ABCF68(a1, v185);
  sub_252ABCF68(a1, v186);
  sub_252ABCF68(a1, v119);
  sub_252ABC268(a1, v118);
  sub_252E37EE4();
  if (v117)
  {
    v120 = v117;
    sub_252E376A4();
  }
}

uint64_t sub_252ABC190()
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252ABC1D4(uint64_t a1)
{
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v2);
  return sub_252E37F14();
}

unint64_t sub_252ABC210()
{
  result = qword_27F542AF8;
  if (!qword_27F542AF8)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for ReferencedEntityValue, v0, v1);
    atomic_store(result, &qword_27F542AF8);
  }

  return result;
}

uint64_t sub_252ABC268(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v42 = a1[2];
  v43 = v3;
  v44 = *(a1 + 8);
  v4 = a1[1];
  v40 = *a1;
  v41 = v4;
  sub_252E37F14();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v25)
  {
    v12 = i;
LABEL_9:
    v13 = *(a2 + 48) + 152 * (__clz(__rbit64(v7)) | (v12 << 6));
    v14 = *(v13 + 16);
    v7 &= v7 - 1;
    v38[0] = *v13;
    v38[1] = v14;
    v15 = *(v13 + 80);
    v17 = *(v13 + 32);
    v16 = *(v13 + 48);
    v38[4] = *(v13 + 64);
    v38[5] = v15;
    v38[2] = v17;
    v38[3] = v16;
    v19 = *(v13 + 112);
    v18 = *(v13 + 128);
    v20 = *(v13 + 96);
    v39 = *(v13 + 144);
    v38[7] = v19;
    v38[8] = v18;
    v38[6] = v20;
    v21 = *(v13 + 112);
    v34 = *(v13 + 96);
    v35 = v21;
    v36 = *(v13 + 128);
    v37 = *(v13 + 144);
    v22 = *(v13 + 48);
    v30 = *(v13 + 32);
    v31 = v22;
    v23 = *(v13 + 80);
    v32 = *(v13 + 64);
    v33 = v23;
    v24 = *(v13 + 16);
    v28 = *v13;
    v29 = v24;
    sub_252E37EC4();
    sub_25297DE08(v38, &v26);
    sub_252A34930(v27);
    v25 = sub_252E37F14();
    result = sub_2529AEC80(v38);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x2530AE390](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252ABC420(__int128 *a1, uint64_t a2)
{
  sub_252E37F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2530AE390](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_252E37EC4();

        sub_252E37044();
        v11 = sub_252E37F14();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252ABC57C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v7 = sub_252E378C4();
    MEMORY[0x2530AE390](v7);
    result = sub_252E378C4();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x2530AE390](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a2);
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);
      }

      ++v5;
      sub_252E32E84();
      sub_252ABF5E8(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      sub_252E37044();
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_252ABC6F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABC934(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABC9D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCAD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v5);
  if (v5)
  {
    v7 = a2 + 32;
    do
    {
      ++v7;
      a3(result);
      sub_252E37044();

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_252ABCE04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 2;
      HueSemantic.rawValue.getter();
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCE88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_252ABCF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      v6 = *(v5 - 8);
      if (*(v5 - 16))
      {
        sub_252E37EE4();

        sub_252E37044();
        if (v6 != 52)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_252E37EE4();
        if (v6 != 52)
        {
LABEL_9:
          sub_252E37EE4();
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E37044();

          goto LABEL_4;
        }
      }

      sub_252E37EE4();
LABEL_4:
      v5 += 32;
      sub_252E37EF4();
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_252ABD13C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_252E378C4();
    MEMORY[0x2530AE390](v8);
    v3 = sub_252E378C4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x2530AE390](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x2530ADF00](i, a2);
      sub_252E376A4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_252E376A4();

      --v3;
    }

    while (v3);
  }
}

BOOL _s22HomeAutomationInternal0aB6IntentV13ReferenceTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_252ABD2F8()
{
  result = qword_27F542BB0;
  if (!qword_27F542BB0)
  {
    result = swift_getWitnessTable(byte_252E4908C, &type metadata for HomeAutomationIntent.ReferenceType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BB0);
  }

  return result;
}

unint64_t sub_252ABD34C()
{
  result = qword_27F542BB8;
  if (!qword_27F542BB8)
  {
    result = swift_getWitnessTable(byte_252E4903C, &type metadata for HomeAutomationIntent.ReferenceType.LocationAndEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BB8);
  }

  return result;
}

unint64_t sub_252ABD3A0()
{
  result = qword_27F542BC0;
  if (!qword_27F542BC0)
  {
    result = swift_getWitnessTable(asc_252E48FEC, &type metadata for HomeAutomationIntent.ReferenceType.EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BC0);
  }

  return result;
}

unint64_t sub_252ABD3F4()
{
  result = qword_27F542BC8;
  if (!qword_27F542BC8)
  {
    result = swift_getWitnessTable(byte_252E48F9C, &type metadata for HomeAutomationIntent.ReferenceType.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BC8);
  }

  return result;
}

unint64_t sub_252ABD448()
{
  result = qword_27F542BD0;
  if (!qword_27F542BD0)
  {
    result = swift_getWitnessTable(byte_252E48F4C, &type metadata for HomeAutomationIntent.ReferenceType.NextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BD0);
  }

  return result;
}

unint64_t sub_252ABD49C()
{
  result = qword_27F542BD8;
  if (!qword_27F542BD8)
  {
    result = swift_getWitnessTable(asc_252E48EFC, &type metadata for HomeAutomationIntent.ReferenceType.ListPositionCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BD8);
  }

  return result;
}

unint64_t sub_252ABD4F0()
{
  result = qword_27F542BE0;
  if (!qword_27F542BE0)
  {
    result = swift_getWitnessTable(aP_0, &type metadata for HomeAutomationIntent.ReferenceType.PossesiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BE0);
  }

  return result;
}

unint64_t sub_252ABD544()
{
  result = qword_27F542BE8;
  if (!qword_27F542BE8)
  {
    result = swift_getWitnessTable(byte_252E48E5C, &type metadata for HomeAutomationIntent.ReferenceType.ObjectiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542BE8);
  }

  return result;
}

BOOL _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v172 = a1[2];
  v171 = *(a1 + 24);
  v170 = *(a1 + 25);
  v168 = *(a1 + 26);
  v167 = a1[4];
  v165 = *(a1 + 40);
  v163 = a1[6];
  v161 = a1[7];
  v159 = *(a1 + 64);
  v157 = a1[9];
  v155 = a1[10];
  v153 = a1[11];
  v151 = a1[12];
  v149 = a1[13];
  v147 = a1[14];
  v145 = a1[15];
  v143 = a1[16];
  v140 = a1[17];
  v141 = a1[18];
  v81 = a1[19];
  v83 = a1[20];
  v7 = a1[61];
  v174 = a1[60];
  v137 = *(a2 + 488);
  v176 = *(a2 + 480);
  v8 = a1[21];
  v9 = a1[22];
  v10 = *(a1 + 28);
  v173[2] = *(a1 + 27);
  v173[3] = v10;
  v173[4] = *(a1 + 29);
  v11 = *(a1 + 26);
  v173[0] = *(a1 + 25);
  v173[1] = v11;
  v68 = v8;
  v69 = a1[23];
  v70 = v9;
  v71 = a1[24];
  v72 = a1[25];
  v73 = *(a1 + 208);
  v76 = *(a1 + 209);
  v82 = a1[27];
  v85 = a1[28];
  v87 = *(a1 + 232);
  v89 = a1[31];
  v90 = a1[30];
  v91 = a1[32];
  v93 = a1[34];
  v94 = a1[33];
  v98 = a1[35];
  v97 = *(a1 + 288);
  v96 = *(a1 + 289);
  v105 = a1[37];
  v108 = a1[38];
  v111 = *(a1 + 312);
  v113 = a1[40];
  v115 = a1[41];
  v116 = a1[42];
  v117 = a1[43];
  v118 = a1[44];
  v119 = a1[45];
  v120 = a1[46];
  v121 = a1[47];
  v124 = *(a1 + 384);
  v130 = *(a1 + 385);
  v131 = *(a1 + 386);
  v132 = *(a1 + 387);
  v133 = *(a1 + 388);
  v134 = *(a1 + 389);
  v135 = a1[49];
  v136 = a1[62];
  v12 = *(a2 + 448);
  v175[2] = *(a2 + 432);
  v175[3] = v12;
  v175[4] = *(a2 + 464);
  v13 = *(a2 + 416);
  v175[0] = *(a2 + 400);
  v175[1] = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v16 = *(a2 + 10);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 25);
  v169 = *(a2 + 26);
  v166 = *(a2 + 32);
  v164 = *(a2 + 40);
  v162 = *(a2 + 48);
  v160 = *(a2 + 56);
  v158 = *(a2 + 64);
  v156 = *(a2 + 72);
  v154 = *(a2 + 80);
  v152 = *(a2 + 88);
  v150 = *(a2 + 96);
  v148 = *(a2 + 104);
  v146 = *(a2 + 112);
  v144 = *(a2 + 120);
  v142 = *(a2 + 128);
  v138 = *(a2 + 136);
  v139 = *(a2 + 144);
  v59 = *(a2 + 152);
  v60 = *(a2 + 160);
  v61 = *(a2 + 168);
  v62 = *(a2 + 176);
  v63 = *(a2 + 184);
  v64 = *(a2 + 192);
  v65 = *(a2 + 200);
  v66 = *(a2 + 208);
  v67 = *(a2 + 209);
  v74 = *(a2 + 216);
  v75 = *(a2 + 224);
  v77 = *(a2 + 232);
  v78 = *(a2 + 240);
  v79 = *(a2 + 248);
  v80 = *(a2 + 256);
  v84 = *(a2 + 264);
  v86 = *(a2 + 272);
  v95 = *(a2 + 280);
  v92 = *(a2 + 288);
  v88 = *(a2 + 289);
  v99 = *(a2 + 296);
  v100 = *(a2 + 304);
  v101 = *(a2 + 312);
  v102 = *(a2 + 320);
  v103 = *(a2 + 328);
  v104 = *(a2 + 336);
  v106 = *(a2 + 344);
  v107 = *(a2 + 352);
  v109 = *(a2 + 360);
  v110 = *(a2 + 368);
  v112 = *(a2 + 376);
  v114 = *(a2 + 384);
  v122 = *(a2 + 385);
  v123 = *(a2 + 386);
  v125 = *(a2 + 387);
  v126 = *(a2 + 388);
  v127 = *(a2 + 389);
  v128 = *(a2 + 392);
  v129 = *(a2 + 496);
  if ((sub_252AE810C(v3, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4 != 3)
  {
    if (v14 == 3)
    {
      return 0;
    }

    v57 = v7;
    v22 = 0xEC00000065756C61;
    v23 = 0x765F746567726174;
    if (v4)
    {
      if (v4 == 1)
      {
        v24 = 0x5F746E6572727563;
        v25 = 0xED000065756C6176;
      }

      else
      {
        v25 = 0xE600000000000000;
        v24 = 0x656C67676F74;
      }
    }

    else
    {
      v24 = 0x765F746567726174;
      v25 = 0xEC00000065756C61;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        v22 = 0xE600000000000000;
        if (v24 != 0x656C67676F74)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v23 = 0x5F746E6572727563;
      v22 = 0xED000065756C6176;
    }

    if (v24 != v23)
    {
LABEL_29:
      v29 = sub_252E37DB4();

      v7 = v57;
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_4;
    }

LABEL_23:
    if (v25 == v22)
    {

      v7 = v57;
      if (v5 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v14 != 3)
  {
    return 0;
  }

LABEL_4:
  if (v5 == 3)
  {
LABEL_5:
    result = 0;
    if (v15 != 3 || ((v6 ^ v16) & 1) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_25:
  if (v15 == 3)
  {
    return 0;
  }

  v26 = 7562617;
  v58 = v7;
  if (v5)
  {
    if (v5 == 1)
    {
      v27 = 0xE200000000000000;
      v28 = 28526;
    }

    else
    {
      v27 = 0xE600000000000000;
      v28 = 0x6C65636E6163;
    }
  }

  else
  {
    v27 = 0xE300000000000000;
    v28 = 7562617;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v30 = 0xE200000000000000;
      v26 = 28526;
    }

    else
    {
      v30 = 0xE600000000000000;
      v26 = 0x6C65636E6163;
    }
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  if (v28 == v26 && v27 == v30)
  {

    v7 = v58;
    if (v6 != v16)
    {
      return 0;
    }
  }

  else
  {
    v31 = sub_252E37DB4();

    result = 0;
    if ((v31 & 1) == 0)
    {
      return result;
    }

    v7 = v58;
    if ((v6 ^ v16))
    {
      return result;
    }
  }

LABEL_7:
  if (v172)
  {
    if (!v17)
    {
      return 0;
    }

    sub_252E35DD4();
    sub_252ABF5E8(&qword_27F542D40, MEMORY[0x277D56498], MEMORY[0x277D564B0]);

    v21 = sub_252E36EF4();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v171 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v18 == 2)
    {
      return 0;
    }

    if (v171)
    {
      v32 = 0x6573616572636564;
    }

    else
    {
      v32 = 0x6573616572636E69;
    }

    if (v18)
    {
      v33 = 0x6573616572636564;
    }

    else
    {
      v33 = 0x6573616572636E69;
    }

    if (v32 == v33)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v34 = sub_252E37DB4();
      swift_bridgeObjectRelease_n();
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v170 == 3)
  {
    if (v19 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v19 == 3)
    {
      return 0;
    }

    v35 = 6777186;
    if (v170)
    {
      if (v170 == 1)
      {
        v36 = 0xE600000000000000;
        v37 = 0x6D756964656DLL;
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x6C6C616D73;
      }
    }

    else
    {
      v36 = 0xE300000000000000;
      v37 = 6777186;
    }

    v38 = v7;
    if (v19)
    {
      if (v19 == 1)
      {
        v39 = 0xE600000000000000;
        v35 = 0x6D756964656DLL;
      }

      else
      {
        v39 = 0xE500000000000000;
        v35 = 0x6C6C616D73;
      }
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    if (v37 == v35 && v36 == v39)
    {

      v7 = v38;
    }

    else
    {
      v40 = sub_252E37DB4();

      v7 = v38;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v168 == 4)
  {
    if (v169 != 4)
    {
      return 0;
    }
  }

  else if (v169 == 4 || (sub_252A0C910(v168, v169) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE8238(v167, v166) & 1) == 0)
  {
    return 0;
  }

  if (v165 == 4)
  {
    if (v164 != 4)
    {
      return 0;
    }
  }

  else if (v164 == 4 || (sub_252A0CF54(v165, v164) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE83F4(v163, v162) & 1) == 0 || (sub_252AE8484(v161, v160) & 1) == 0)
  {
    return 0;
  }

  if (v159 == 4)
  {
    if (v158 != 4)
    {
      return 0;
    }
  }

  else if (v158 == 4 || (sub_252A0CE08(v159, v158) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE83F4(v157, v156) & 1) == 0 || (sub_252AE8584(v155, v154) & 1) == 0 || (sub_252AE859C(v153, v152) & 1) == 0 || (sub_252AE8B04(v151, v150) & 1) == 0 || (sub_252AE83F4(v149, v148) & 1) == 0 || (sub_252AE83F4(v147, v146) & 1) == 0 || (sub_252AE83F4(v145, v144) & 1) == 0 || (sub_252AE83F4(v143, v142) & 1) == 0 || (sub_252AE8BBC(v140, v138) & 1) == 0 || (sub_252AE8BBC(v141, v139) & 1) == 0 || (sub_252AE83F4(v81, v59) & 1) == 0 || (sub_252AE83F4(v83, v60) & 1) == 0 || (sub_252AE83F4(v68, v61) & 1) == 0 || (sub_252AE83F4(v70, v62) & 1) == 0 || (sub_252AE83F4(v69, v63) & 1) == 0 || (sub_252AE8BD4(v71, v64) & 1) == 0 || (sub_252AE8CF8(v72, v65) & 1) == 0)
  {
    return 0;
  }

  if (v73 == 9)
  {
    if (v66 != 9)
    {
      return 0;
    }
  }

  else if (v66 == 9 || (sub_252A0D524(v73, v66) & 1) == 0)
  {
    return 0;
  }

  if (v76 == 2)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v67 == 2)
    {
      return 0;
    }

    if (v76)
    {
      v41 = 0x7265626D656D6572;
    }

    else
    {
      v41 = 0x746567726F66;
    }

    if (v76)
    {
      v42 = 0xE800000000000000;
    }

    else
    {
      v42 = 0xE600000000000000;
    }

    if (v67)
    {
      v43 = 0x7265626D656D6572;
    }

    else
    {
      v43 = 0x746567726F66;
    }

    if (v67)
    {
      v44 = 0xE800000000000000;
    }

    else
    {
      v44 = 0xE600000000000000;
    }

    if (v41 == v43 && v42 == v44)
    {
    }

    else
    {
      v45 = sub_252E37DB4();

      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_252AE8ECC(v82, v74) & 1) == 0)
  {
    return 0;
  }

  v46 = sub_252AE83F4(v85, v75);
  result = 0;
  if ((v46 & 1) != 0 && ((v87 ^ v77) & 1) == 0)
  {
    if (v89)
    {
      if (!v79 || (v90 != v78 || v89 != v79) && (sub_252E37DB4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v79)
    {
      return 0;
    }

    if ((sub_252AE8FD8(v91, v80) & 1) == 0)
    {
      return 0;
    }

    if (v93)
    {
      if (!v86 || (v94 != v84 || v93 != v86) && (sub_252E37DB4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v86)
    {
      return 0;
    }

    if (v96)
    {
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v88)
      {
        return 0;
      }

      if (v97)
      {
        if (v98 > 2)
        {
          if (v98 == 3)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 3)
            {
              return result;
            }
          }

          else if (v98 == 4)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 4)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 < 5)
            {
              return result;
            }
          }
        }

        else if (v98)
        {
          if (v98 == 1)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 1)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 2)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if ((v92 & 1) == 0 || v95)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if ((v92 & 1) != 0 || v98 != v95)
        {
          return result;
        }
      }
    }

    if (v105)
    {
      if (!v99)
      {
        return 0;
      }

      v47 = sub_252AE91C8(v105, v99);

      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v99)
    {
      return 0;
    }

    if (v108)
    {
      if (!v100)
      {
        return 0;
      }

      v48 = sub_252AE91C8(v108, v100);

      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v100)
    {
      return 0;
    }

    if (v111 == 2)
    {
      result = 0;
      if (v101 != 2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v101 == 2 || ((v101 ^ v111) & 1) != 0)
      {
        return result;
      }
    }

    if (v113 != v102)
    {
      return result;
    }

    if ((sub_252AE83F4(v115, v103) & 1) == 0 || (sub_252AE83F4(v116, v104) & 1) == 0 || (sub_252AE83F4(v117, v106) & 1) == 0 || (sub_252AE83F4(v118, v107) & 1) == 0 || (sub_252AE83F4(v119, v109) & 1) == 0 || (sub_252AE83F4(v120, v110) & 1) == 0 || (sub_252AE91E0(v121, v112) & 1) == 0)
    {
      return 0;
    }

    if (v124 == 22)
    {
      if (v114 != 22)
      {
        return 0;
      }
    }

    else
    {
      if (v114 == 22)
      {
        return 0;
      }

      v49 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
      v51 = v50;
      if (v49 != HomeAutomationIntent.UsoTaskType.rawValue.getter() || v51 != v52)
      {
        v53 = sub_252E37DB4();

        result = 0;
        if (v53 & 1) == 0 || ((v130 ^ v122))
        {
          return result;
        }

        goto LABEL_219;
      }
    }

    result = 0;
    if (v130 != v122)
    {
      return result;
    }

LABEL_219:
    if (((v131 ^ v123) & 1) == 0 && ((v132 ^ v125) & 1) == 0 && ((v133 ^ v126) & 1) == 0 && ((v134 ^ v127) & 1) == 0)
    {
      if ((sub_252AE9618(v135, v128) & 1) == 0 || (sub_252C600F8(v173, v175) & 1) == 0 || (sub_2529A91A8(v7, v137) & 1) == 0)
      {
        return 0;
      }

      if (v136)
      {
        if (!v129)
        {
          return 0;
        }

        sub_252ABF59C();
        v54 = v129;
        v55 = v136;
        v56 = sub_252E37694();

        return (v56 & 1) != 0;
      }

      return !v129;
    }
  }

  return result;
}

unint64_t sub_252ABE50C()
{
  result = qword_27F542C48;
  if (!qword_27F542C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.Verb, &type metadata for HomeAutomationIntent.Verb, v0, v1);
    atomic_store(result, &qword_27F542C48);
  }

  return result;
}

unint64_t sub_252ABE5A8()
{
  result = qword_27F542C60;
  if (!qword_27F542C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.ReferenceType, &type metadata for HomeAutomationIntent.ReferenceType, v0, v1);
    atomic_store(result, &qword_27F542C60);
  }

  return result;
}

unint64_t sub_252ABE600()
{
  result = qword_27F542C68;
  if (!qword_27F542C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.HomeIntentFlag, &type metadata for HomeAutomationIntent.HomeIntentFlag, v0, v1);
    atomic_store(result, &qword_27F542C68);
  }

  return result;
}

unint64_t sub_252ABE658()
{
  result = qword_27F542C70;
  if (!qword_27F542C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.ListPositionDefinedValues, &type metadata for HomeAutomationIntent.ListPositionDefinedValues, v0, v1);
    atomic_store(result, &qword_27F542C70);
  }

  return result;
}

unint64_t sub_252ABE6B0()
{
  result = qword_27F542C78;
  if (!qword_27F542C78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.UsoTaskType, &type metadata for HomeAutomationIntent.UsoTaskType, v0, v1);
    atomic_store(result, &qword_27F542C78);
  }

  return result;
}

unint64_t sub_252ABE74C()
{
  result = qword_27F542C90;
  if (!qword_27F542C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent, &type metadata for HomeAutomationIntent, v0, v1);
    atomic_store(result, &qword_27F542C90);
  }

  return result;
}

uint64_t sub_252ABE7A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
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

uint64_t sub_252ABE7F0(uint64_t result, int a2, int a3)
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
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.UsoTaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.UsoTaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.ReferenceType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.ReferenceType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252ABEC14()
{
  result = qword_27F542C98;
  if (!qword_27F542C98)
  {
    result = swift_getWitnessTable(byte_252E48CDC, &type metadata for HomeAutomationIntent.ReferenceType.ListPositionCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542C98);
  }

  return result;
}

unint64_t sub_252ABEC6C()
{
  result = qword_27F542CA0;
  if (!qword_27F542CA0)
  {
    result = swift_getWitnessTable(byte_252E48E34, &type metadata for HomeAutomationIntent.ReferenceType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CA0);
  }

  return result;
}

unint64_t sub_252ABECC4()
{
  result = qword_27F542CA8;
  if (!qword_27F542CA8)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for HomeAutomationIntent.ReferenceType.ObjectiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CA8);
  }

  return result;
}

unint64_t sub_252ABED1C()
{
  result = qword_27F542CB0;
  if (!qword_27F542CB0)
  {
    result = swift_getWitnessTable(asc_252E48D7C, &type metadata for HomeAutomationIntent.ReferenceType.ObjectiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CB0);
  }

  return result;
}

unint64_t sub_252ABED74()
{
  result = qword_27F542CB8;
  if (!qword_27F542CB8)
  {
    result = swift_getWitnessTable(byte_252E48D04, &type metadata for HomeAutomationIntent.ReferenceType.PossesiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CB8);
  }

  return result;
}

unint64_t sub_252ABEDCC()
{
  result = qword_27F542CC0;
  if (!qword_27F542CC0)
  {
    result = swift_getWitnessTable(byte_252E48D2C, &type metadata for HomeAutomationIntent.ReferenceType.PossesiveCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CC0);
  }

  return result;
}

unint64_t sub_252ABEE24()
{
  result = qword_27F542CC8;
  if (!qword_27F542CC8)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for HomeAutomationIntent.ReferenceType.ListPositionCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CC8);
  }

  return result;
}

unint64_t sub_252ABEE7C()
{
  result = qword_27F542CD0;
  if (!qword_27F542CD0)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for HomeAutomationIntent.ReferenceType.ListPositionCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CD0);
  }

  return result;
}

unint64_t sub_252ABEED4()
{
  result = qword_27F542CD8;
  if (!qword_27F542CD8)
  {
    result = swift_getWitnessTable(byte_252E48BFC, &type metadata for HomeAutomationIntent.ReferenceType.NextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CD8);
  }

  return result;
}

unint64_t sub_252ABEF2C()
{
  result = qword_27F542CE0;
  if (!qword_27F542CE0)
  {
    result = swift_getWitnessTable(byte_252E48C24, &type metadata for HomeAutomationIntent.ReferenceType.NextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CE0);
  }

  return result;
}

unint64_t sub_252ABEF84()
{
  result = qword_27F542CE8;
  if (!qword_27F542CE8)
  {
    result = swift_getWitnessTable(byte_252E48BAC, &type metadata for HomeAutomationIntent.ReferenceType.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CE8);
  }

  return result;
}

unint64_t sub_252ABEFDC()
{
  result = qword_27F542CF0;
  if (!qword_27F542CF0)
  {
    result = swift_getWitnessTable(byte_252E48BD4, &type metadata for HomeAutomationIntent.ReferenceType.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CF0);
  }

  return result;
}

unint64_t sub_252ABF034()
{
  result = qword_27F542CF8;
  if (!qword_27F542CF8)
  {
    result = swift_getWitnessTable(aE0, &type metadata for HomeAutomationIntent.ReferenceType.EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542CF8);
  }

  return result;
}

unint64_t sub_252ABF08C()
{
  result = qword_27F542D00;
  if (!qword_27F542D00)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for HomeAutomationIntent.ReferenceType.EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542D00);
  }

  return result;
}

unint64_t sub_252ABF0E4()
{
  result = qword_27F542D08;
  if (!qword_27F542D08)
  {
    result = swift_getWitnessTable(byte_252E48B0C, &type metadata for HomeAutomationIntent.ReferenceType.LocationAndEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542D08);
  }

  return result;
}

unint64_t sub_252ABF13C()
{
  result = qword_27F542D10;
  if (!qword_27F542D10)
  {
    result = swift_getWitnessTable(byte_252E48B34, &type metadata for HomeAutomationIntent.ReferenceType.LocationAndEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F542D10);
  }

  return result;
}

unint64_t sub_252ABF194()
{
  result = qword_27F542D18;
  if (!qword_27F542D18)
  {
    result = swift_getWitnessTable(byte_252E48DA4, &type metadata for HomeAutomationIntent.ReferenceType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542D18);
  }

  return result;
}

unint64_t sub_252ABF1EC()
{
  result = qword_27F542D20;
  if (!qword_27F542D20)
  {
    result = swift_getWitnessTable(asc_252E48DCC, &type metadata for HomeAutomationIntent.ReferenceType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542D20);
  }

  return result;
}

uint64_t sub_252ABF240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76697463656A626FLL && a2 == 0xE900000000000065;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669736573736F70 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69736F507473696CLL && a2 == 0xEC0000006E6F6974 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E78230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_252ABF4A0()
{
  result = qword_27F542D28;
  if (!qword_27F542D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.UsoTaskType, &type metadata for HomeAutomationIntent.UsoTaskType, v0, v1);
    atomic_store(result, &qword_27F542D28);
  }

  return result;
}

unint64_t sub_252ABF4F4()
{
  result = qword_27F542D30;
  if (!qword_27F542D30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.HomeIntentFlag, &type metadata for HomeAutomationIntent.HomeIntentFlag, v0, v1);
    atomic_store(result, &qword_27F542D30);
  }

  return result;
}

unint64_t sub_252ABF548()
{
  result = qword_27F542D38;
  if (!qword_27F542D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.Verb, &type metadata for HomeAutomationIntent.Verb, v0, v1);
    atomic_store(result, &qword_27F542D38);
  }

  return result;
}

unint64_t sub_252ABF59C()
{
  result = qword_27F540AA8;
  if (!qword_27F540AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540AA8);
  }

  return result;
}

uint64_t sub_252ABF5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ABF638(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542D98, &qword_252E49170);
  if (swift_dynamicCast())
  {
    sub_252927BEC(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_252E32BB4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25293847C(__src, &qword_27F542DA0, &qword_252E49178);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_252E37A84();
  }

  sub_252ACAE60(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_252ACBB04(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_252ACAF28(sub_252ACBBA4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_252E32CF4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_252AD5C38(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_252E370E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_252E37124();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_252E37A84();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_252AD5C38(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_252E370F4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_252E32D04();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_252E32D04();
    sub_252982EFC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_252982EFC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2529E61B0(*&__src[0], *(&__src[0] + 1));

  sub_25296464C(v32, *(&v32 + 1));
  return v32;
}

void *sub_252ABFB58(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252ACBE88(&unk_27F541310, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  v6 = sub_252E371B4();
  v34 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_252E371A4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_252E3C290;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        result = sub_252E36F64();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_2529AA3A0((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_252E3C290;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        result = sub_252E36F64();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_2529AA3A0((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static MatterAccessoryManager.warmup(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_252E37344();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  sub_2529D89C4(0, 0, v5, &unk_252E49130, v7);
}

dispatch_semaphore_t sub_252AC0004()
{
  result = dispatch_semaphore_create(1);
  qword_27F5757D8 = result;
  return result;
}

id sub_252AC002C()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_252CC7228(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  *&v0[v3] = sub_252CC723C(v2);
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  *&v0[v4] = sub_252CC62F8(v2);
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore] = v2;
  v6 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded] = 0;
  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_waitForInitTimeout] = 0x4008000000000000;
  v7 = sub_252CC7228(v2);
  swift_beginAccess();
  *&v0[v1] = v7;

  swift_beginAccess();
  *&v0[v5] = v2;

  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores] = v2;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MatterAccessoryManager();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_252AC0190()
{
  v1 = v0[5];
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_252AC0280;
  v4.n128_u64[0] = 5.0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821C8618](v3, &unk_252E491E0, v2, v5, v4);
}

uint64_t sub_252AC0280()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_252AC03B0;
  }

  else
  {

    v2 = sub_252AC039C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AC03B0()
{

  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0AA0);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E78EA0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000007CLL, 0x8000000252E6B890, 0x5F2870756D726177, 0xEA0000000000293ALL, 143);

  sub_2529515FC(6, 18, 0xD000000000000035, 0x8000000252E78EF0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252AC0564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25293B808;

  return sub_252AC0170(a1, v4, v5, v7, v6);
}

uint64_t sub_252AC0644(uint64_t a1)
{
  v1[3] = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_252AC06E4;
  v3 = v1[2];

  return sub_252AC1428(v3);
}

uint64_t sub_252AC06E4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252AC0820, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_252AC0820()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AC0884(uint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v7 = sub_252E32E24();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = sub_252AC0AC0(v7, v9);

  if (!v10 || (v11 = sub_252DA0930(v10), , (result = v11) == 0))
  {
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544EC8);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78C00);
    v14 = sub_252D69924();
    MEMORY[0x2530AD570](v14);

    sub_252CC4050(v15, v16, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000019, 0x8000000252E78D60, 156);

    return 0;
  }

  return result;
}

unint64_t sub_252AC0AC0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E78C60);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000016, 0x8000000252E78C40, 170);
    goto LABEL_27;
  }

  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    sub_252E36744();

    if (v24)
    {
      break;
    }

LABEL_6:

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_17;
    }
  }

  if (v23 != a1 || v24 != a2)
  {
    v7 = sub_252E37DB4();

    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  v11 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_252A44A10(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF8, &qword_252E491C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = v8;
      v17 = inited + 32;
      *(inited + 40) = v15;
      v18 = sub_252CC47C4(inited);
      swift_setDeallocating();
      sub_25293847C(v17, &qword_27F542E00, &qword_252E491D0);
      return v18;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544EC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78C00);
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000016, 0x8000000252E78C40, 174);

LABEL_27:

  return 0;
}

uint64_t sub_252AC0F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v9 = sub_252E32E24();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_252A44A10(v9, v11);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      return v16;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544EC8);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E78D00);
  MEMORY[0x2530AD570](v9, v11);

  sub_252CC4050(v20, v21, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001ALL, 0x8000000252E78D40, 183);

  return 0;
}

uint64_t sub_252AC11C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v9 = sub_252E32E24();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_252A44A10(v9, v11);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      return v16;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544EC8);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78CA0);
  MEMORY[0x2530AD570](v9, v11);

  sub_252CC4050(v20, v21, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000019, 0x8000000252E78CE0, 192);

  return 0;
}

uint64_t sub_252AC1428(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = sub_252E36AD4();
  v2[49] = v3;
  v2[50] = *(v3 - 8);
  v2[51] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DB8, &qword_252E49188);
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v5 = sub_252E36634();
  v2[55] = v5;
  v2[56] = *(v5 - 8);
  v2[57] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DC0, &qword_252E49190);
  v2[58] = v6;
  v2[59] = *(v6 - 8);
  v2[60] = swift_task_alloc();
  v7 = sub_252E32E84();
  v2[61] = v7;
  v2[62] = *(v7 - 8);
  v2[63] = swift_task_alloc();
  v8 = sub_252E36AB4();
  v2[64] = v8;
  v2[65] = *(v8 - 8);
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AC16CC, 0, 0);
}

uint64_t sub_252AC16CC()
{
  v1 = v0[48];
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  v0[67] = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  *(v1 + v2) = 0;
  if (qword_27F53F560 != -1)
  {
LABEL_36:
    swift_once();
  }

  v3 = v0[47];
  v0[68] = __swift_project_value_buffer(v0[49], qword_27F544EC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E78890);
  v4 = type metadata accessor for MatterAccessory(0);
  v5 = MEMORY[0x2530AD730](v3, v4);
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  if (v3 >> 62)
  {
    v6 = sub_252E378C4();
    v109 = v0;
    if (v6)
    {
LABEL_4:
      if (qword_27F53F598 != -1)
      {
        swift_once();
      }

      v7 = qword_27F544F20;
      v0[69] = qword_27F544F20;
      v8 = v7;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      sub_252CC3D90(0xD000000000000038, 0x8000000252E788F0, 0xD00000000000007CLL, 0x8000000252E6B890);
      sub_252B680FC(v9);
      v10 = sub_252B6796C();
      v106 = v11;

      v0[70] = v10;
      sub_252CC3D90(0xD000000000000013, 0x8000000252E78930, 0xD00000000000007CLL, 0x8000000252E6B890);
      v12 = type metadata accessor for HomeStore(0);
      v13 = static HomeStore.shared.getter(v12);
      v14 = sub_2529F219C();
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        v17 = *&v14[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

        v18 = [v17 home];
        if (v18)
        {
          v19 = v18;
          type metadata accessor for Home(0);
          swift_allocObject();
          v20 = sub_2529E65BC(v19);
          sub_252956C8C(v14, 0);
          sub_252956C8C(v14, 0);
          v21 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v0 = v109;
          goto LABEL_54;
        }

        sub_252956C8C(v14, 0);
        v0 = v109;
      }

      sub_252956C8C(v14, v16 & 1);
LABEL_11:
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      v110 = MEMORY[0x277D84F90];
      v25 = v3 & 0xC000000000000001;
      v26 = v3 & 0xFFFFFFFFFFFFFF8;
      v27 = v0[47] + 32;
      v108 = (v0[62] + 32);
      do
      {
        v28 = v23;
        while (1)
        {
          if (v25)
          {
            v29 = MEMORY[0x2530ADF00](v28, v0[47]);
            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v28 >= *(v26 + 16))
            {
              goto LABEL_35;
            }

            v29 = *(v27 + 8 * v28);

            v23 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          v30 = [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          if (v30)
          {
            break;
          }

          ++v28;
          if (v23 == v6)
          {
            goto LABEL_28;
          }
        }

        v31 = v30;
        type metadata accessor for Home(0);
        v32 = swift_allocObject();
        *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v31;
        v33 = v31;
        v34 = [v33 uniqueIdentifier];
        sub_252E32E64();

        v35 = [v33 name];
        v36 = sub_252E36F34();
        v104 = v37;
        v105 = v36;

        v38 = [v33 assistantIdentifier];
        if (v38)
        {
          v39 = v38;
          v40 = sub_252E36F34();
          v42 = v41;
          v43 = v40;
        }

        else
        {

          v43 = 0;
          v42 = 0;
        }

        v44 = (*v108)(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v109[63], v109[61]);
        v45 = (v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v45 = v105;
        v45[1] = v104;
        *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v46 = (v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v46 = v43;
        v46[1] = v42;
        MEMORY[0x2530AD700](v44);
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v0 = v109;
        v24 = v110;
      }

      while (v23 != v6);
LABEL_28:
      v47 = sub_252DF956C(v24);

      if (v47 >> 62)
      {
        if (sub_252E378C4() == 1)
        {
          v48 = sub_252E378C4();
          if (v48)
          {
            goto LABEL_30;
          }
        }
      }

      else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_30:
        if ((v47 & 0xC000000000000001) == 0)
        {
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v47 + 32);

            v21 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v22 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_76;
        }

        v103 = MEMORY[0x2530ADF00](0, v47);

        v21 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v22 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
LABEL_54:
        ObjectType = swift_getObjectType();
        v0[46] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DC8, &unk_252E49198);
        swift_allocObject();
        v93 = sub_252E36754();
        v0[71] = v93;
        v0[25] = v21;
        v0[26] = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
        swift_allocObject();
        v94 = sub_252E36754();
        v0[72] = v94;
        v0[27] = v93;
        v0[28] = v94;
        sub_252ACBD80();
        sub_252ACBDD4();
        sub_2529C0054();
        sub_252E36404();
        swift_allocObject();
        v95 = sub_252E363F4();
        v0[73] = v95;
        v96 = swift_task_alloc();
        v0[74] = v96;
        *v96 = v0;
        v96[1] = sub_252AC25BC;
        v48 = v0[60];
        v50 = v0[57];
        v52 = MEMORY[0x277CEAFA0];
        v49 = v0 + 27;
        v51 = v95;
        v53 = ObjectType;
        v54 = &type metadata for HomeIntentProducer.GetDeviceInfoIntent;
        v55 = v106;

        return MEMORY[0x28213DAA0](v48, v49, v50, v51, v52, v53, v54, v55);
      }

      v21 = 0;
      v22 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v109 = v0;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  v107 = v0[67];
  v57 = v0[48];
  v58 = sub_252AC5D34();
  v59 = (v57 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  *v59 = v58;
  v59[1] = v60;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E789A0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v57;

  v62 = sub_252ACB7B8(v61, sub_252ACBED0);

  v63 = MEMORY[0x277D837D0];
  v64 = MEMORY[0x2530AD730](v62, MEMORY[0x277D837D0]);
  v66 = v65;

  MEMORY[0x2530AD570](v64, v66);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v57;

  v68 = sub_252ACB7B8(v67, sub_252ACBED8);

  v69 = MEMORY[0x2530AD730](v68, v63);
  v71 = v70;

  MEMORY[0x2530AD570](v69, v71);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v57;

  v73 = sub_252ACB7B8(v72, sub_252ACBF08);

  v74 = MEMORY[0x2530AD730](v73, v63);
  v76 = v75;

  MEMORY[0x2530AD570](v74, v76);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  swift_beginAccess();
  v77 = type metadata accessor for DeviceEntity(0);

  v79 = MEMORY[0x2530AD730](v78, v77);
  v81 = v80;

  MEMORY[0x2530AD570](v79, v81);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v82 = v59[1];
  v0[31] = *v59;
  v0[32] = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v83 = sub_252E36F94();
  MEMORY[0x2530AD570](v83);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v57 + v107) = 1;
  v111 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v84 = v0[48];
  sub_252E37604();
  v85 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  v48 = swift_beginAccess();
  v86 = *(v84 + v85);
  if (v86 >> 62)
  {
    v48 = sub_252E378C4();
    v87 = v48;
    if (v48)
    {
      goto LABEL_42;
    }

LABEL_58:
    v91 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v87)
  {
    goto LABEL_58;
  }

LABEL_42:
  if (v87 < 1)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  for (i = 0; i != v87; ++i)
  {
    if ((v86 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x2530ADF00](i, v86);
    }

    else
    {
      v89 = *(v86 + 8 * i + 32);
    }

    v90 = v89;
    MEMORY[0x2530AD700]();
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v91 = v111;

LABEL_59:
  v48 = sub_252E37614();
  if (v91 >> 62)
  {
    v48 = sub_252E378C4();
    v97 = v48;
    if (!v48)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v97 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v97)
    {
      goto LABEL_71;
    }
  }

  if (v97 < 1)
  {
LABEL_77:
    __break(1u);
    return MEMORY[0x28213DAA0](v48, v49, v50, v51, v52, v53, v54, v55);
  }

  v98 = 0;
  do
  {
    if ((v91 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x2530ADF00](v98, v91);
    }

    else
    {
      v99 = *(v91 + 8 * v98 + 32);
    }

    v100 = v99;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    ++v98;
    __swift_project_value_buffer(v109[49], qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
    sub_252E37614();
  }

  while (v97 != v98);
LABEL_71:

  v101 = v109[1];

  return v101();
}

uint64_t sub_252AC25BC()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v4 = v2[56];
  v3 = v2[57];
  v5 = v2[55];

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_252AC3684;
  }

  else
  {
    v6 = sub_252AC2760;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252AC2760()
{
  v94 = v0;
  v1 = 0xD00000000000007CLL;
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = "for accessoryID ";
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E78AD0, 0xD00000000000007CLL, 0x8000000252E6B890);
  sub_252E365F4();
  sub_252E366E4();
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 344);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_42;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v8)
    {
      v79 = v7;
      v9 = 0;
      v10 = *(v0 + 400);
      v89 = v6 & 0xC000000000000001;
      v80 = *(v0 + 384);
      v81 = v6;
      v11 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      v78 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
      v85 = (v10 + 16);
      v84 = (v10 + 8);
      v83 = v1 - 53;
      v86 = v8;
      v88 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      while (v89)
      {
        v6 = MEMORY[0x2530ADF00](v9, v81);
        v19 = __OFADD__(v9++, 1);
        if (v19)
        {
          goto LABEL_39;
        }

LABEL_14:

        sub_252E36744();

        v20 = *(v0 + 296);
        if (!v20)
        {
          goto LABEL_32;
        }

        sub_252E36744();

        v1 = *(v0 + 272);
        if (!v1)
        {
          goto LABEL_31;
        }

        v82 = v9;
        v87 = v20;
        v21 = *(v0 + 264);

        sub_252E36744();

        v7 = *(v0 + 352);
        if (!v7)
        {

          v9 = v82;
LABEL_31:

          v1 = 0xD00000000000007CLL;
LABEL_32:
          (*v85)(*(v0 + 408), *(v0 + 544), *(v0 + 392));
          v92 = 0;
          v93 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](v83, 0x8000000252E78B20);

          sub_252E36744();

          *(v0 + 312) = *(v0 + 320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
          v28 = sub_252E36F94();
          MEMORY[0x2530AD570](v28);

          MEMORY[0x2530AD570](0x6F7373656363610ALL, 0xEE00203A44497972);

          sub_252E36744();

          if (*(v0 + 304))
          {

            sub_252E36744();

            v12 = *(v0 + 184);
          }

          else
          {
            v12 = 0uLL;
          }

          v7 = *(v0 + 408);
          v13 = *(v0 + 392);
          *(v0 + 280) = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v14 = sub_252E36F94();
          MEMORY[0x2530AD570](v14);

          MEMORY[0x2530AD570](v1 - 102, 0x8000000252E78B70);

          sub_252E36744();

          *(v0 + 336) = *(v0 + 328);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF0, &unk_252E5F5E0);
          v15 = sub_252E36F94();
          MEMORY[0x2530AD570](v15);

          MEMORY[0x2530AD570](v1 - 99, 0x8000000252E78B90);

          v16 = sub_252D8BB5C();
          v18 = v17;

          MEMORY[0x2530AD570](v16, v18);

          sub_252CC4050(v92, v93, 0xD00000000000007CLL, v5 | 0x8000000000000000, v1 - 103, 0x8000000252E78980, 260);

          v6 = (*v84)(v7, v13);
          v8 = v86;
          goto LABEL_7;
        }

        swift_beginAccess();
        v5 = v87;

        MEMORY[0x2530AD700](v22);
        if (*((*(v80 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v80 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        swift_endAccess();
        v6 = sub_252CC479C(MEMORY[0x277D84F90]);
        v23 = v6;
        v91 = v6;
        if (v7 >> 62)
        {
          v6 = sub_252E378C4();
          v24 = v6;
          if (v6)
          {
LABEL_21:
            if (v24 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v24; ++i)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x2530ADF00](i, v7);
              }

              else
              {
                v26 = *(v7 + 8 * i + 32);
              }

              sub_252E36744();

              v27 = *(v0 + 608);
              if (v27 != 60)
              {
                sub_252AC4510(v26, v27, v21, v1, &v91);
              }
            }

            v7 = "for accessoryID ";
            v23 = v91;
            v8 = v86;
            goto LABEL_36;
          }
        }

        else
        {
          v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_21;
          }
        }

        v7 = "for accessoryID ";
LABEL_36:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = *(v80 + v78);
        *(v80 + v78) = 0x8000000000000000;
        sub_2529FB628(v23, v21, v1, isUniquelyReferenced_nonNull_native);

        *(v80 + v78) = v92;
        swift_endAccess();
        v92 = 0;
        v93 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E78BB0);
        MEMORY[0x2530AD570](v21, v1);
        v1 = 0xD00000000000007CLL;

        sub_252CC3D90(v92, v93, 0xD00000000000007CLL, 0x8000000252E6B890);

        v5 = "for accessoryID ";
        v9 = v82;
LABEL_7:
        v11 = v88;
        if (v9 == v8)
        {
          goto LABEL_43;
        }
      }

      if (v9 >= *(v79 + 16))
      {
        goto LABEL_40;
      }

      v19 = __OFADD__(v9++, 1);
      if (!v19)
      {
        goto LABEL_14;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v30 = v6;
      v8 = sub_252E378C4();
      v6 = v30;
    }

LABEL_43:
  }

  else
  {
    sub_252CC4050(0xD00000000000002CLL, 0x8000000252E78AF0, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000015, 0x8000000252E78980, 272);
  }

  v31 = MEMORY[0x277D84F90];
  swift_unknownObjectRelease();
  (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
  v32 = *(v0 + 552);
  v33 = *(v0 + 528);
  v34 = *(v0 + 520);
  v35 = *(v0 + 512);
  v36 = sub_252E375C4();
  sub_252E36A74(v36, &dword_252917000, v32, "fetchMatterDeviceInfo", 21, 2, v33, " enableTelemetry=YES ", 21, 2, v31);
  (*(v34 + 8))(v33, v35);
  v90 = *(v0 + 536);
  v37 = *(v0 + 384);
  v38 = sub_252AC5D34();
  v39 = (v37 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  *v39 = v38;
  v39[1] = v40;

  v92 = 0;
  v93 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v1 - 57, 0x8000000252E789A0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v37;

  v42 = sub_252ACB7B8(v41, sub_252ACBED0);

  v43 = MEMORY[0x277D837D0];
  v44 = MEMORY[0x2530AD730](v42, MEMORY[0x277D837D0]);
  v46 = v45;

  MEMORY[0x2530AD570](v44, v46);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v37;

  v48 = sub_252ACB7B8(v47, sub_252ACBED8);

  v49 = MEMORY[0x2530AD730](v48, v43);
  v51 = v50;

  MEMORY[0x2530AD570](v49, v51);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v37;

  v53 = sub_252ACB7B8(v52, sub_252ACBF08);

  v54 = MEMORY[0x2530AD730](v53, v43);
  v56 = v55;

  MEMORY[0x2530AD570](v54, v56);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  swift_beginAccess();
  v57 = type metadata accessor for DeviceEntity(0);

  v59 = MEMORY[0x2530AD730](v58, v57);
  v61 = v60;

  MEMORY[0x2530AD570](v59, v61);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v62 = v39[1];
  *(v0 + 248) = *v39;
  *(v0 + 256) = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v63 = sub_252E36F94();
  MEMORY[0x2530AD570](v63);

  sub_252CC3D90(v92, v93, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v37 + v90) = 1;
  v92 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 384);
  sub_252E37604();
  v65 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  result = swift_beginAccess();
  v67 = *(v64 + v65);
  if (v67 >> 62)
  {
    result = sub_252E378C4();
    v68 = result;
    if (result)
    {
      goto LABEL_48;
    }

LABEL_58:
    v72 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
    goto LABEL_58;
  }

LABEL_48:
  if (v68 < 1)
  {
    __break(1u);
    goto LABEL_75;
  }

  for (j = 0; j != v68; ++j)
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v70 = MEMORY[0x2530ADF00](j, v67);
    }

    else
    {
      v70 = *(v67 + 8 * j + 32);
    }

    v71 = v70;
    MEMORY[0x2530AD700]();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v72 = v92;

LABEL_59:
  result = sub_252E37614();
  if (v72 >> 62)
  {
    result = sub_252E378C4();
    v73 = result;
    if (result)
    {
LABEL_61:
      if (v73 >= 1)
      {
        v74 = 0;
        do
        {
          if ((v72 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x2530ADF00](v74, v72);
          }

          else
          {
            v75 = *(v72 + 8 * v74 + 32);
          }

          v76 = v75;
          if (qword_2814B0A98 != -1)
          {
            swift_once();
          }

          ++v74;
          __swift_project_value_buffer(*(v0 + 392), qword_2814B0AA0);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
          sub_252E37614();
        }

        while (v73 != v74);
        goto LABEL_71;
      }

LABEL_75:
      __break(1u);
      return result;
    }
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_61;
    }
  }

LABEL_71:

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_252AC3684()
{
  v1 = v0;
  v2 = v0[75];
  swift_unknownObjectRelease();
  sub_252E379F4();
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E78950);
  v0[45] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[29], v0[30], 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000015, 0x8000000252E78980, 275);

  v3 = v0[69];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v1[64];
  v7 = sub_252E375C4();
  sub_252E36A74(v7, &dword_252917000, v3, "fetchMatterDeviceInfo", 21, 2, v4, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v5 + 8))(v4, v6);
  v51 = v1[67];
  v8 = v1[48];
  v9 = sub_252AC5D34();
  v10 = (v8 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  *v10 = v9;
  v10[1] = v11;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E789A0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v8;

  v13 = sub_252ACB7B8(v12, sub_252ACBED0);

  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x2530AD730](v13, MEMORY[0x277D837D0]);
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v8;

  v19 = sub_252ACB7B8(v18, sub_252ACBED8);

  v20 = MEMORY[0x2530AD730](v19, v14);
  v22 = v21;
  v23 = v1;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  swift_beginAccess();
  *(swift_task_alloc() + 16) = v8;

  v25 = sub_252ACB7B8(v24, sub_252ACBF08);

  v26 = MEMORY[0x2530AD730](v25, v14);
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  swift_beginAccess();
  v29 = type metadata accessor for DeviceEntity(0);

  v31 = MEMORY[0x2530AD730](v30, v29);
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v34 = v10[1];
  v23[31] = *v10;
  v23[32] = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v35 = sub_252E36F94();
  MEMORY[0x2530AD570](v35);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v8 + v51) = 1;
  v52 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v36 = v23[48];
  sub_252E37604();
  v37 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  result = swift_beginAccess();
  v39 = *(v36 + v37);
  if (v39 >> 62)
  {
    result = sub_252E378C4();
    v40 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:
    v44 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v40 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  for (i = 0; i != v40; ++i)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x2530ADF00](i, v39);
    }

    else
    {
      v42 = *(v39 + 8 * i + 32);
    }

    v43 = v42;
    MEMORY[0x2530AD700]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v44 = v52;

LABEL_16:
  result = sub_252E37614();
  v45 = v23;
  if (v44 >> 62)
  {
    result = sub_252E378C4();
    v46 = result;
    if (result)
    {
LABEL_18:
      if (v46 >= 1)
      {
        v47 = 0;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x2530ADF00](v47, v44);
          }

          else
          {
            v48 = *(v44 + 8 * v47 + 32);
          }

          v49 = v48;
          if (qword_2814B0A98 != -1)
          {
            swift_once();
          }

          ++v47;
          __swift_project_value_buffer(v45[49], qword_2814B0AA0);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
          sub_252E37614();
        }

        while (v46 != v47);
        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return result;
    }
  }

  else
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_18;
    }
  }

LABEL_28:

  v50 = v45[1];

  return v50();
}

uint64_t sub_252AC3ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v7 = *(a4 + v6);
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    goto LABEL_21;
  }

  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v9, v7);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }
    }

    sub_252E36744();

    if (v18)
    {
      break;
    }

LABEL_6:

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_17;
    }
  }

  if (v17 != a1 || v18 != a2)
  {
    v10 = sub_252E37DB4();

    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v13 = sub_252E36F94();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
  sub_25292C260();
  v14 = sub_252E36E54();
  MEMORY[0x2530AD570](v14);

  return 0;
}

uint64_t sub_252AC41F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *(a4 + v8);
  if (v9 >> 62)
  {
LABEL_23:
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a3;

  if (!v10)
  {
LABEL_17:

    v15 = a5;
    v14 = v22;
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    goto LABEL_21;
  }

  v11 = 0;
  a3 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }
    }

    sub_252E36744();

    if (v25)
    {
      break;
    }

LABEL_6:

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_17;
    }
  }

  if (v24 != a1 || v25 != a2)
  {
    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  v15 = a5;
  v14 = v22;
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v18 = v15(0);
  v19 = MEMORY[0x2530AD730](v14, v18);
  MEMORY[0x2530AD570](v19);

  return 0;
}

void sub_252AC4510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_252BF8DE0(a2);
  if (v9)
  {
    if (qword_27F53F560 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_3;
  }

  v90 = v5;
  v91 = a3;
  v89 = v8;

  sub_252E36744();

  v11 = v105;
  v12 = MEMORY[0x277D84F90];
  if (!v105)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v101 = v12;
    v102 = v12;
    v29 = 0x27F53F000uLL;
    v30 = v15[2];
    if (v30)
    {
      v88 = a4;
      v31 = 0;
      v98 = v15 + 4;
      v32 = MEMORY[0x277D84F90];
      v33 = MEMORY[0x277D84F90];
      v96 = MEMORY[0x277D84F90];
      v92 = v15;
      v97 = v15[2];
      while (1)
      {
        if (v31 >= v15[2])
        {
          __break(1u);
          goto LABEL_85;
        }

        v37 = &v98[2 * v31];
        v38 = *v37;
        v39 = *(v37 + 8);
        if ((v39 - 42) < 2)
        {
          v35 = v38;
          v45 = [v35 cleaningJob];
          if (v45)
          {
            v46 = v45;
            MEMORY[0x2530AD700]();
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v33 = v102;
            goto LABEL_23;
          }

LABEL_22:

          goto LABEL_23;
        }

        if (v39 != 44)
        {
          if (v39 == 45)
          {
            v40 = v38;
            v41 = [v40 cleaningJob];
            if (v41 && (v42 = v41, v43 = [v41 targetMap], v42, v43))
            {
              v44 = v43;
              MEMORY[0x2530AD700]();
              if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();

              v96 = v101;
              v30 = v97;
            }

            else
            {

              v30 = v97;
            }

            goto LABEL_23;
          }

          v34 = *(v29 + 1376);
          v35 = v38;
          if (v34 != -1)
          {
            swift_once();
          }

          v36 = sub_252E36AD4();
          __swift_project_value_buffer(v36, qword_27F544EC8);
          sub_252CC4050(0xD00000000000002ELL, 0x8000000252E787C0, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000004ELL, 0x8000000252E78770, 351);
          goto LABEL_22;
        }

        v47 = v38;
        v48 = [v47 cleaningJob];
        if (!v48 || (v49 = v48, v50 = [v48 targetAreas], v49, !v50))
        {

          goto LABEL_23;
        }

        type metadata accessor for HomeAttributeTargetArea();
        v51 = sub_252E37264();

        v52 = v51 >> 62;
        if (v51 >> 62)
        {
          v53 = sub_252E378C4();
        }

        else
        {
          v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v54 = v32 >> 62;
        if (v32 >> 62)
        {
          v55 = sub_252E378C4();
        }

        else
        {
          v55 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v94 = v53;
        v56 = __OFADD__(v55, v53);
        v57 = v55 + v53;
        if (v56)
        {
          goto LABEL_86;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v54)
        {
          goto LABEL_51;
        }

        v58 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v57 > *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_52;
        }

LABEL_53:
        v95 = v32;
        v59 = *(v58 + 16);
        v60 = *(v58 + 24);
        if (v52)
        {
          v61 = sub_252E378C4();
          if (!v61)
          {
LABEL_59:

            v32 = v95;
            v15 = v92;
            v29 = 0x27F53F000;
            v30 = v97;
            if (v94 > 0)
            {
              goto LABEL_87;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v61 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v61)
          {
            goto LABEL_59;
          }
        }

        if (((v60 >> 1) - v59) < v94)
        {
          __break(1u);
          goto LABEL_93;
        }

        v62 = v58 + 8 * v59 + 32;
        if (v52)
        {
          if (v61 < 1)
          {
            goto LABEL_95;
          }

          v87 = v33;
          sub_2529E6488(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180, MEMORY[0x277D83988]);
          for (i = 0; i != v61; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v65 = sub_2529FBD80(&v103, i, v51);
            v67 = *v66;
            (v65)(&v103, 0);
            *(v62 + 8 * i) = v67;
          }

          v33 = v87;
          v63 = v94;
        }

        else
        {
          v63 = v94;
          swift_arrayInitWithCopy();
        }

        v32 = v95;
        v29 = 0x27F53F000;
        v30 = v97;
        if (v63 > 0)
        {
          v68 = *(v58 + 16);
          v56 = __OFADD__(v68, v63);
          v69 = v68 + v63;
          if (v56)
          {
            goto LABEL_94;
          }

          *(v58 + 16) = v69;
        }

        v15 = v92;
LABEL_23:
        if (++v31 == v30)
        {
          v70 = v33;

          a4 = v88;
          goto LABEL_73;
        }
      }

      if (v54)
      {
LABEL_51:
        sub_252E378C4();
      }

LABEL_52:
      v32 = sub_252E37A54();
      v58 = v32 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_53;
    }

    v32 = MEMORY[0x277D84F90];
    v70 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
LABEL_73:
    v71 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v90 + v71);
    *(v90 + v71) = 0x8000000000000000;
    sub_2529FB5E8(v32, v91, a4, isUniquelyReferenced_nonNull_native);

    *(v90 + v71) = v99;
    swift_endAccess();
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v73 = sub_252E36AD4();
    __swift_project_value_buffer(v73, qword_27F544EC8);
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E787F0);
    MEMORY[0x2530AD570](v91, a4);
    sub_252CC3D90(v103, v104, 0xD00000000000007CLL, 0x8000000252E6B890);

    v74 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
    swift_beginAccess();

    v75 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v90 + v74);
    *(v90 + v74) = 0x8000000000000000;
    sub_2529FB5A8(v96, v91, a4, v75);

    *(v90 + v74) = v100;
    swift_endAccess();
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000045, 0x8000000252E78840);
    MEMORY[0x2530AD570](v91, a4);
    sub_252CC3D90(v103, v104, 0xD00000000000007CLL, 0x8000000252E6B890);

    if (v70 >> 62)
    {
      v76 = sub_252E378C4();
      if (v76)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v76 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
LABEL_77:
        v103 = MEMORY[0x277D84F90];
        sub_252E37AB4();
        if (v76 < 0)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          return;
        }

        v77 = 0;
        do
        {
          if ((v70 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x2530ADF00](v77, v70);
          }

          else
          {
            v78 = *(v70 + 8 * v77 + 32);
          }

          v79 = v78;
          ++v77;
          v80 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v81 = v79;
          v82 = sub_252E36F04();
          v83 = [v80 initWithIdentifier:0 displayString:v82];

          v84 = v83;
          [v84 setType_];
          [v84 setCleaningJob_];

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v76 != v77);

        v85 = v103;
LABEL_91:
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *a5;
        sub_2529FB484(v85, v89, v86);
        *a5 = v103;
        return;
      }
    }

    v85 = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v13 = 0;
  v14 = *(v105 + 16);
  v15 = MEMORY[0x277D84F90];
LABEL_6:
  v16 = 48 * v13 + 32;
  while (1)
  {
    if (v14 == v13)
    {

      v12 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    ++v13;
    v17 = v16 + 48;
    v18 = (v11 + v16);
    v19 = *v18;
    v20 = v18[1];
    *&v106[9] = *(v18 + 25);
    v105 = v19;
    *v106 = v20;
    sub_252A656C8(&v105, &v103);
    v21 = sub_252D378B0(&v105);
    v23 = v22;
    sub_252ACBD2C(&v105);
    v16 = v17;
    if (v21)
    {
      v24 = v15;
      v25 = a4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2529F8C7C(0, v24[2] + 1, 1, v24);
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_2529F8C7C((v26 > 1), v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      v28 = &v24[2 * v27];
      v28[4] = v21;
      *(v28 + 40) = v23;
      a4 = v25;
      v15 = v24;
      goto LABEL_6;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  swift_once();
LABEL_3:
  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544EC8);
  sub_252CC4050(0xD00000000000003DLL, 0x8000000252E78730, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000004ELL, 0x8000000252E78770, 369);
}

uint64_t sub_252AC50D8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      sub_252E36424();
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      if (sub_252E364D4() == a1 && v11 == a2)
      {

        __swift_destroy_boxed_opaque_existential_1(&v16);
LABEL_22:

        return v9;
      }

      v13 = sub_252E37DB4();

      __swift_destroy_boxed_opaque_existential_1(&v16);
      if (v13)
      {
        goto LABEL_22;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544EC8);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E786D0);
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC4050(v16, v17, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001CLL, 0x8000000252E78710, 383);

  return 0;
}

uint64_t sub_252AC5368(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v59 = a1;
  v60 = a2;
  v58 = sub_252E36AD4();
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36C84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v52 = sub_252E36D54();
  v11 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v56 = &v46 - v17;
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v18 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded) == 1)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v58, qword_27F544D78);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v59, v60);
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E78E70);
    sub_252CC3D90(v61, v62, 0xD00000000000007CLL, 0x8000000252E6B890);

    sub_252E37614();
    return 1;
  }

  v53 = v11;
  v54 = v6;
  v49 = v5;
  v19 = dispatch_semaphore_create(0);
  v20 = qword_2814B0A98;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v58, qword_2814B0AA0);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();
  v22 = v60;

  v61 = v59;
  v62 = v22;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E703F0);
  sub_252CC3D90(v61, v62, 0xD00000000000007CLL, 0x8000000252E6B890);

  v23 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  swift_beginAccess();
  v24 = v21;
  MEMORY[0x2530AD700]();
  if (*((*(v3 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252E37614();
  if (!v24)
  {
    return 1;
  }

  sub_252E36D14();
  *v10 = 3;
  v25 = v54;
  v26 = v49;
  (*(v54 + 104))(v10, *MEMORY[0x277D85188], v49);
  v48 = v24;
  sub_252E36D24();
  v27 = *(v25 + 8);
  v54 = v25 + 8;
  v47 = v27;
  v27(v10, v26);
  v28 = v48;
  LOBYTE(v26) = sub_252E375F4();
  sub_252E36D14();
  sub_252E36D34();
  v29 = v52;
  v30 = *(v53 + 8);
  v53 += 8;
  v30(v14, v52);
  if ((v26 & 1) == 0)
  {
    v46 = "for accessoryID ";
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v35 = v58;
    v36 = __swift_project_value_buffer(v58, qword_27F544D78);
    v38 = v50;
    v37 = v51;
    (*(v51 + 16))(v50, v36, v35);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v59, v60);
    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E78E40);
    if (*(v3 + v18))
    {
      v39 = 5457241;
    }

    else
    {
      v39 = 20302;
    }

    if (*(v3 + v18))
    {
      v40 = 0xE300000000000000;
    }

    else
    {
      v40 = 0xE200000000000000;
    }

    MEMORY[0x2530AD570](v39, v40);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70480);
    v41 = v57;
    v42 = v49;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v61, v62, 0xD00000000000007CLL, v46 | 0x8000000000000000);

    (*(v37 + 8))(v38, v35);
    v33 = v41;
    v34 = v42;
    goto LABEL_26;
  }

  if (*(v3 + v18))
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v58, qword_27F544D78);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v59, v60);
    MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E78DF0);
    v31 = v57;
    v32 = v49;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v61, v62, 0xD00000000000007CLL, 0x8000000252E6B890);

    v33 = v31;
    v34 = v32;
LABEL_26:
    v47(v33, v34);
    v30(v55, v29);
    v30(v56, v29);
    return 1;
  }

  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v58, qword_27F544D78);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
  MEMORY[0x2530AD570](v59, v60);
  MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E78D80);
  v44 = v57;
  v45 = v49;
  sub_252E37AE4();
  MEMORY[0x2530AD570](34, 0xE100000000000000);
  sub_252CC4050(v61, v62, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001DLL, 0x8000000252E78DD0, 433);

  v47(v44, v45);
  v30(v55, v29);
  v30(v56, v29);
  return 0;
}

uint64_t sub_252AC5D34()
{
  v223 = sub_252E36DF4();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v221 = &v217 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_252E36E04();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v224 = &v217 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = 0;
  v263 = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v254 = v0;
  v4 = *(*(v0 + v3) + 16);
  v256 = v3;
  if (v4)
  {
    v5 = sub_252DFA3E0(v4, 0);
    v6 = sub_252E11360();
    v7 = v261[0];
    swift_bridgeObjectRetain_n();
    sub_25291AE30(v7);
    if (v6 != v4)
    {
      goto LABEL_282;
    }

    v3 = v256;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v261[0] = v5;
  v8 = 0;
  sub_252AC841C(v261);

  v9 = v261[0];
  v10 = *(v261[0] + 2);
  v252 = v261[0];
  if (v10)
  {
    v11 = 0;
    v12 = v261[0] + 32;
    v259 = ", targetArea.areaId(";
    v258 = "\ttargetMap.mapID(";
    v255 = v10;
    v257 = v261[0] + 32;
    while (1)
    {
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_271;
      }

      v13 = *(v254 + v3);
      if (!*(v13 + 16))
      {
        goto LABEL_8;
      }

      v14 = &v12[16 * v11];
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_252A44A10(v16, v15);
      if (v18)
      {
        break;
      }

      v9 = v252;
LABEL_8:
      if (++v11 == v10)
      {
        goto LABEL_34;
      }
    }

    v19 = *(*(v13 + 56) + 8 * v17);

    v261[0] = 0;
    v261[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v261, "matterNodeID(");
    HIWORD(v261[1]) = -4864;
    MEMORY[0x2530AD570](v16, v15);

    MEMORY[0x2530AD570](670249, 0xE300000000000000);
    MEMORY[0x2530AD570](v261[0], v261[1]);

    if (v19 >> 62)
    {
      v31 = sub_252E378C4();
      if (v31)
      {
        v32 = v31;
        v20 = sub_252E11384();

        sub_252E06784((v20 + 32), v32, v19);
        v34 = v33;

        if (v34 != v32)
        {
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          v216 = v8;
          goto LABEL_287;
        }
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v20 = (v19 & 0xFFFFFFFFFFFFFF8);
    }

    v261[0] = v20;
    sub_252AC8638(v261, sub_252935460, type metadata accessor for HomeAttributeTargetMap);

    v21 = v261[0];
    if ((v261[0] & 0x8000000000000000) != 0 || (v261[0] & 0x4000000000000000) != 0)
    {
      v22 = sub_252E378C4();
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = *(v261[0] + 2);
      if (v22)
      {
LABEL_17:
        if (v22 < 1)
        {
          goto LABEL_275;
        }

        v23 = 0;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2530ADF00](v23, v21);
          }

          else
          {
            v28 = *(v21 + 8 * v23 + 32);
          }

          v29 = v28;
          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, v259 | 0x8000000000000000);
          [v29 mapID];
          sub_252E37374();
          MEMORY[0x2530AD570](0xD000000000000012, v258 | 0x8000000000000000);
          v30 = [v29 name];
          if (v30)
          {
            v24 = v30;
            v25 = sub_252E36F34();
            v27 = v26;
          }

          else
          {
            v27 = 0xE300000000000000;
            v25 = 7104878;
          }

          ++v23;
          MEMORY[0x2530AD570](v25, v27);

          MEMORY[0x2530AD570](2601, 0xE200000000000000);
          MEMORY[0x2530AD570](v261[0], v261[1]);
        }

        while (v22 != v23);

        v9 = v252;
        v3 = v256;
        v10 = v255;
        goto LABEL_32;
      }
    }

    v9 = v252;
LABEL_32:
    v12 = v257;
    goto LABEL_8;
  }

LABEL_34:
  v35 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  v36 = v254;
  swift_beginAccess();
  v37 = *(*(v36 + v35) + 16);
  v248 = v35;
  if (v37)
  {
    v38 = sub_252DFA3E0(v37, 0);
    v39 = sub_252E11360();
    v40 = v261[0];
    swift_bridgeObjectRetain_n();
    sub_25291AE30(v40);
    if (v39 != v37)
    {
      goto LABEL_283;
    }

    v35 = v248;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  v261[0] = v38;
  sub_252AC841C(v261);

  v41 = v261[0];
  v42 = *(v261[0] + 2);
  v250 = v261[0];
  v251 = 0;
  if (v42)
  {
    v43 = 0;
    v44 = v261[0] + 32;
    v257 = 0x8000000252E78630;
    v256 = "\ttargetArea.name(";
    v255 = ", targetArea.mapID(";
    v247 = v42;
    v249 = v261[0] + 32;
    while (1)
    {
      if (v43 >= *(v41 + 2))
      {
        goto LABEL_272;
      }

      v45 = *(v254 + v35);
      if (!*(v45 + 16))
      {
        goto LABEL_42;
      }

      v253 = v43;
      v46 = &v44[16 * v43];
      v48 = *v46;
      v47 = v46[1];

      v49 = sub_252A44A10(v48, v47);
      if (v50)
      {
        break;
      }

      v41 = v250;
LABEL_41:
      v43 = v253;
LABEL_42:
      if (++v43 == v42)
      {
        goto LABEL_69;
      }
    }

    v51 = *(*(v45 + 56) + 8 * v49);

    v261[0] = 0;
    v261[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v261, "matterNodeID(");
    HIWORD(v261[1]) = -4864;
    MEMORY[0x2530AD570](v48, v47);

    MEMORY[0x2530AD570](670249, 0xE300000000000000);
    MEMORY[0x2530AD570](v261[0], v261[1]);

    if (v51 >> 62)
    {
      v64 = sub_252E378C4();
      if (v64)
      {
        v65 = v64;
        v52 = sub_252E11384();

        sub_252E06914((v52 + 32), v65, v51);
        v67 = v66;

        if (v67 != v65)
        {
          goto LABEL_285;
        }
      }

      else
      {
        v52 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFF8);
    }

    v261[0] = v52;
    v8 = v251;
    sub_252AC8638(v261, sub_252935460, type metadata accessor for HomeAttributeTargetArea);
    v53 = &v264;
    v251 = v8;
    if (v8)
    {
      goto LABEL_291;
    }

    v54 = v261[0];
    if ((v261[0] & 0x8000000000000000) != 0 || (v261[0] & 0x4000000000000000) != 0)
    {
      v55 = sub_252E378C4();
      if (v55)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v55 = *(v261[0] + 2);
      if (v55)
      {
LABEL_52:
        if (v55 < 1)
        {
          goto LABEL_276;
        }

        v56 = 0;
        v258 = v54 & 0xC000000000000001;
        v259 = v55;
        do
        {
          if (v258)
          {
            v61 = MEMORY[0x2530ADF00](v56, v54);
          }

          else
          {
            v61 = *(v54 + 8 * v56 + 32);
          }

          v62 = v61;
          v261[0] = 0xD000000000000011;
          v261[1] = v257;
          v63 = [v61 name];
          if (v63)
          {
            v57 = v63;
            v58 = sub_252E36F34();
            v60 = v59;
          }

          else
          {
            v60 = 0xE300000000000000;
            v58 = 7104878;
          }

          ++v56;
          MEMORY[0x2530AD570](v58, v60);

          MEMORY[0x2530AD570](41, 0xE100000000000000);
          MEMORY[0x2530AD570](v261[0], v261[1]);

          v8 = 0xE000000000000000;
          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000013, v256 | 0x8000000000000000);
          [v62 mapID];
          sub_252E37374();
          MEMORY[0x2530AD570](41, 0xE100000000000000);
          MEMORY[0x2530AD570](v261[0], v261[1]);

          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000014, v255 | 0x8000000000000000);
          [v62 areaID];
          sub_252E37374();
          MEMORY[0x2530AD570](2601, 0xE200000000000000);
          MEMORY[0x2530AD570](v261[0], v261[1]);
        }

        while (v259 != v56);

        v41 = v250;
        v35 = v248;
        v42 = v247;
        goto LABEL_67;
      }
    }

    v41 = v250;
LABEL_67:
    v44 = v249;
    goto LABEL_41;
  }

LABEL_69:
  v68 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  v69 = v254;
  swift_beginAccess();
  v242 = v68;
  v70 = *(v69 + v68);
  v71 = *(v70 + 16);
  if (!v71)
  {
    goto LABEL_72;
  }

  v72 = sub_252DFA3E0(*(v70 + 16), 0);
  v73 = sub_252E11360();
  v74 = v261[0];
  swift_bridgeObjectRetain_n();
  sub_25291AE30(v74);
  if (v73 != v71)
  {
    __break(1u);
LABEL_72:

    v72 = MEMORY[0x277D84F90];
  }

  v261[0] = v72;
  v8 = v251;
  sub_252AC841C(v261);
  if (v8)
  {
    goto LABEL_286;
  }

  v75 = v261[0];
  v239 = *(v261[0] + 2);
  if (!v239)
  {
LABEL_260:

    if (qword_27F53F560 != -1)
    {
      goto LABEL_284;
    }

    goto LABEL_261;
  }

  v76 = 0;
  v230 = v261[0] + 32;
  v238 = "Pre-hashed string:\n";
  v237 = "\t\tsupportedUnknownValue\n";
  v236 = "for accessoryID ";
  v228 = "\t\tsupportedRangeValue(empty))\n";
  v227 = "RVC special case handled above";
  v235 = "\t\tsupportedRangeValue(";
  v234 = 0x8000000252E78580;
  v233 = 0x8000000252E785A0;
  v232 = "\t\tsupportedStringValue(";
  v231 = 0x8000000252E785E0;
  v220 = 0x8000000252E67470;
  v219 = 0x8000000252E644C0;
  v218 = 0x8000000252E644A0;
  v217 = 0x8000000252E64480;
  v241 = "\t\tsupportedBooleanValue(";
  v229 = v261[0];
  while (1)
  {
    if (v76 >= *(v75 + 2))
    {
      goto LABEL_274;
    }

    v77 = *(v254 + v242);
    if (!*(v77 + 16))
    {
      goto LABEL_78;
    }

    v240 = v76;
    v78 = &v230[16 * v76];
    v79 = *v78;
    v80 = v78[1];

    v81 = sub_252A44A10(v79, v80);
    if (v82)
    {
      break;
    }

LABEL_77:

    v75 = v229;
    v76 = v240;
LABEL_78:
    if (++v76 == v239)
    {
      goto LABEL_260;
    }
  }

  v83 = *(*(v77 + 56) + 8 * v81);

  v261[0] = 0;
  v261[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v261, "matterNodeID(");
  HIWORD(v261[1]) = -4864;
  MEMORY[0x2530AD570](v79, v80);
  MEMORY[0x2530AD570](670249, 0xE300000000000000);
  MEMORY[0x2530AD570](v261[0], v261[1]);

  v84 = *(v83 + 16);
  v244 = v80;
  v243 = v83;
  if (v84)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    v85 = swift_allocObject();
    v86 = _swift_stdlib_malloc_size(v85);
    v87 = v86 - 32;
    if (v86 < 32)
    {
      v87 = v86 - 25;
    }

    v85[2] = v84;
    v85[3] = 2 * (v87 >> 3);
    v88 = sub_252E08AE0(v261, v85 + 4, v84, v83);
    v89 = v261[0];
    swift_bridgeObjectRetain_n();
    sub_25291AE30(v89);
    if (v88 != v84)
    {
      goto LABEL_281;
    }

    v83 = v243;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v261[0] = v85;
  sub_252AC8504(v261);

  v90 = v261[0];
  v255 = *(v261[0] + 2);
  if (!v255)
  {
LABEL_259:

    goto LABEL_77;
  }

  v91 = 0;
  v253 = v261[0] + 32;
  v251 = v261[0];
  while (1)
  {
    if (v91 >= *(v90 + 2))
    {
      goto LABEL_273;
    }

    v256 = v91;
    v92 = *&v253[8 * v91];
    v261[0] = 0x7562697274746109;
    v261[1] = 0xEF28657079546574;
    v93 = HomeAttributeType.description.getter(v92);
    MEMORY[0x2530AD570](v93);

    MEMORY[0x2530AD570](2601, 0xE200000000000000);
    MEMORY[0x2530AD570](v261[0], v261[1]);

    if (*(v83 + 16))
    {
      break;
    }

LABEL_91:
    v91 = v256 + 1;
    if ((v256 + 1) == v255)
    {
      goto LABEL_259;
    }
  }

  v94 = sub_252A488EC();
  if ((v95 & 1) == 0)
  {
    if (!*(v83 + 16))
    {
      goto LABEL_91;
    }

    v113 = sub_252A488EC();
    if ((v114 & 1) == 0)
    {
      goto LABEL_91;
    }

    v115 = *(*(v83 + 56) + 8 * v113);
    swift_bridgeObjectRetain_n();
    v261[0] = sub_252ACB5E0(v115, sub_252E11384, sub_252E07DD4);
    sub_252AC8488(v261);
    v116 = v261[0];
    v117 = &off_279711000;
    v258 = v115;
    if ((v261[0] & 0x8000000000000000) == 0 && (v261[0] & 0x4000000000000000) == 0)
    {
      v118 = *(v261[0] + 2);
      if (v118)
      {
        goto LABEL_137;
      }

      goto LABEL_90;
    }

    v118 = sub_252E378C4();
    if (!v118)
    {
LABEL_90:

      v83 = v243;
      goto LABEL_91;
    }

LABEL_137:
    v119 = 0;
    v259 = v116 & 0xC000000000000001;
    while (1)
    {
      if (v259)
      {
        v120 = MEMORY[0x2530ADF00](v119, v116);
      }

      else
      {
        if (v119 >= *(v116 + 16))
        {
          goto LABEL_270;
        }

        v120 = *(v116 + 8 * v119 + 32);
      }

      v121 = v120;
      v122 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_269;
      }

      v123 = [v120 v117[222]];
      if (v123 <= 3)
      {
        break;
      }

      if (v123 <= 5)
      {
        if (v123 == 4)
        {
          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_252E379F4();

          v261[0] = 0xD000000000000018;
          v261[1] = v234;
          v260 = [v121 integerValue];
          v124 = sub_252E37D94();
          goto LABEL_167;
        }

        v261[0] = 0;
        v261[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000016, v235 | 0x8000000000000000);
        v260 = [v121 limitValue];
        sub_252E37AE4();
LABEL_139:
        MEMORY[0x2530AD570](2601, 0xE200000000000000);
        MEMORY[0x2530AD570](v261[0], v261[1]);

        goto LABEL_140;
      }

      if (v123 == 6)
      {
        v131 = [v121 rangeValue];
        if (v131)
        {
          v132 = v131;
          [v131 upperValue];
          [v132 lowerValue];
          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000016, v228 | 0x8000000000000000);
          sub_252E37374();
          MEMORY[0x2530AD570](44, 0xE100000000000000);
          v90 = v251;
          sub_252E37374();
          MEMORY[0x2530AD570](10, 0xE100000000000000);
          MEMORY[0x2530AD570](v261[0], v261[1]);
        }

        else
        {
          MEMORY[0x2530AD570](0xD00000000000001ELL, v227 | 0x8000000000000000);
        }

        v117 = &off_279711000;
      }

      else
      {
        if (v123 != 8)
        {
          while (1)
          {
LABEL_288:
            v261[0] = v123;
LABEL_290:
            sub_252E37DF4();
            __break(1u);
LABEL_291:
            v216 = *(v53 - 32);
LABEL_287:

            __break(1u);
          }
        }

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v136 = sub_252E36AD4();
        __swift_project_value_buffer(v136, qword_27F544EC8);
        sub_252CC3D90(0xD00000000000001ELL, v237 | 0x8000000000000000, 0xD00000000000007CLL, v236 | 0x8000000000000000);
      }

LABEL_140:

      ++v119;
      if (v122 == v118)
      {
        goto LABEL_90;
      }
    }

    if (v123 > 1)
    {
      if (v123 != 2)
      {
        v261[0] = 0;
        v261[1] = 0xE000000000000000;
        sub_252E379F4();

        v261[0] = 0xD000000000000017;
        v261[1] = v233;
        v126 = [v121 stringValue];
        if (v126)
        {
          v127 = v126;
          v128 = sub_252E36F34();
          v130 = v129;
        }

        else
        {
          v130 = 0xE300000000000000;
          v128 = 7104878;
        }

        MEMORY[0x2530AD570](v128, v130);

        MEMORY[0x2530AD570](2601, 0xE200000000000000);
        MEMORY[0x2530AD570](v261[0], v261[1]);

        v117 = &off_279711000;
        v90 = v251;
        goto LABEL_140;
      }

      v261[0] = 0;
      v261[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000017, v232 | 0x8000000000000000);
      [v121 doubleValue];
      sub_252E37374();
    }

    else
    {
      if (!v123)
      {
        MEMORY[0x2530AD570](0xD000000000000018, v238 | 0x8000000000000000);
        goto LABEL_140;
      }

      if (v123 != 1)
      {
        goto LABEL_288;
      }

      v261[0] = 0;
      v261[1] = 0xE000000000000000;
      sub_252E379F4();

      v261[0] = 0xD000000000000018;
      v261[1] = v231;
      v133 = [v121 BOOLValue];
      v134 = v133 == 0;
      if (v133)
      {
        v124 = 1702195828;
      }

      else
      {
        v124 = 0x65736C6166;
      }

      if (v134)
      {
        v135 = 0xE500000000000000;
      }

      else
      {
        v135 = 0xE400000000000000;
      }

      v125 = v135;
LABEL_167:
      MEMORY[0x2530AD570](v124, v125);
    }

    goto LABEL_139;
  }

  v96 = *(*(v83 + 56) + 8 * v94);
  if (v96 >> 62)
  {
    v97 = sub_252E378C4();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = &off_279711000;
  v259 = v96 & 0xC000000000000001;

  if (v97)
  {
    v100 = 0;
    v258 = MEMORY[0x277D84F90];
LABEL_99:
    v101 = v100;
    while (1)
    {
      if (v259)
      {
        v102 = MEMORY[0x2530ADF00](v101, v96);
      }

      else
      {
        if (v101 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_263;
        }

        v102 = *&v96[8 * v101 + 32];
      }

      v103 = v102;
      v100 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v104 = [v102 v98[207]];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 runState];

        v107 = 0xE700000000000000;
        v108 = 0x646570706F7473;
        switch(v106)
        {
          case 0uLL:
            v108 = 0x6E776F6E6B6E75;
            goto LABEL_126;
          case 1uLL:
            goto LABEL_126;
          case 2uLL:
            v108 = 0x676E696E6E7572;
            goto LABEL_126;
          case 3uLL:
            v107 = 0xE600000000000000;
            v108 = 0x646573756170;
            goto LABEL_126;
          case 4uLL:
            v108 = 0x43676E696B656573;
            v107 = 0xEE00726567726168;
            goto LABEL_126;
          case 5uLL:
            v107 = 0xE800000000000000;
            v108 = 0x676E696772616863;
            goto LABEL_126;
          case 6uLL:
            v107 = 0xE600000000000000;
            v108 = 0x64656B636F64;
            goto LABEL_126;
          case 7uLL:
            v107 = 0xE500000000000000;
            v108 = 0x726F727265;
            goto LABEL_126;
          case 8uLL:
            v107 = 0xE500000000000000;
            v108 = 0x6B63757473;
            goto LABEL_126;
          case 9uLL:
            v107 = 0xEA00000000007972;
            v108 = 0x6574746142776F6CLL;
            goto LABEL_126;
          case 0xAuLL:
            v108 = 0x4D6E694274737564;
            v107 = 0xEE00676E69737369;
            goto LABEL_126;
          case 0xBuLL:
            v108 = 0x466E694274737564;
            v107 = 0xEB000000006C6C75;
            goto LABEL_126;
          case 0xCuLL:
            v108 = 0xD000000000000010;
            v107 = v217;
            goto LABEL_126;
          case 0xDuLL:
            v108 = 0x6E61547265746177;
            v107 = 0xEE007974706D456BLL;
            goto LABEL_126;
          case 0xEuLL:
            v108 = 0xD000000000000010;
            v107 = v218;
            goto LABEL_126;
          case 0xFuLL:
            v108 = 0xD000000000000015;
            v107 = v219;
            goto LABEL_126;
          case 0x10uLL:
            v108 = 0xD000000000000016;
            v107 = v220;
            goto LABEL_126;
          case 0x11uLL:
            v108 = 0x64656D75736572;
LABEL_126:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v258 + 16) + 1, 1, v258);
              v258 = isUniquelyReferenced_nonNull_native;
            }

            v110 = *(v258 + 16);
            v109 = *(v258 + 24);
            if (v110 >= v109 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_2529F7A80((v109 > 1), v110 + 1, 1, v258);
              v258 = isUniquelyReferenced_nonNull_native;
            }

            v111 = v258;
            *(v258 + 16) = v110 + 1;
            v112 = v111 + 16 * v110;
            *(v112 + 32) = v108;
            *(v112 + 40) = v107;
            v98 = &off_279711000;
            if (v100 == v97)
            {
              goto LABEL_178;
            }

            goto LABEL_99;
          default:
            v261[0] = v106;
            goto LABEL_290;
        }
      }

      ++v101;
      if (v100 == v97)
      {
        goto LABEL_178;
      }
    }

    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v258 = MEMORY[0x277D84F90];
LABEL_178:
  v257 = v97;
  v248 = v96 & 0xFFFFFFFFFFFFFF8;
  v249 = v96;
  v137 = *(v258 + 16);
  if (v137)
  {
    v138 = 0;
    v139 = (v258 + 40);
    v246 = v137 - 1;
    v140 = MEMORY[0x277D84F90];
    v247 = (v258 + 40);
    do
    {
      v141 = &v139[16 * v138];
      v142 = v138;
      while (1)
      {
        if (v142 >= *(v258 + 16))
        {
          goto LABEL_264;
        }

        v143 = *(v141 - 1);
        v144 = *v141;
        v138 = v142 + 1;
        v261[0] = v143;
        v261[1] = v144;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v217 - 2) = v261;

        if ((sub_2529ED970(sub_25296A69C, (&v217 - 4), v140) & 1) == 0)
        {
          break;
        }

        v141 += 2;
        ++v142;
        if (v137 == v138)
        {
          goto LABEL_192;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v140 + 16) + 1, 1, v140);
        v140 = isUniquelyReferenced_nonNull_native;
      }

      v146 = *(v140 + 16);
      v145 = *(v140 + 24);
      if (v146 >= v145 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80((v145 > 1), v146 + 1, 1, v140);
        v140 = isUniquelyReferenced_nonNull_native;
      }

      *(v140 + 16) = v146 + 1;
      v147 = v140 + 16 * v146;
      *(v147 + 32) = v143;
      *(v147 + 40) = v144;
      v139 = v247;
    }

    while (v246 != v142);
  }

  else
  {
    v140 = MEMORY[0x277D84F90];
  }

LABEL_192:

  v261[0] = v140;

  sub_252AC841C(v261);

  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v149 = sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v246 = v148;
  v245 = v149;
  v247 = sub_252E36EA4();
  v258 = v150;

  v151 = v249;
  v152 = v248;
  if (v257)
  {
    v153 = 0;
    v154 = MEMORY[0x277D84F90];
    do
    {
      v155 = v153;
      while (1)
      {
        if (v259)
        {
          v156 = MEMORY[0x2530ADF00](v155, v151);
        }

        else
        {
          if (v155 >= *(v152 + 16))
          {
            goto LABEL_266;
          }

          v156 = *&v151[8 * v155 + 32];
        }

        v157 = v156;
        v153 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_265;
        }

        v158 = [v156 cleaningJob];
        if (v158)
        {
          break;
        }

        ++v155;
        if (v153 == v257)
        {
          goto LABEL_210;
        }
      }

      v159 = v158;
      v160 = [v158 cleanModes];

      v161 = sub_252E37264();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_2529F8DD4(0, v154[2] + 1, 1, v154);
      }

      v163 = v154[2];
      v162 = v154[3];
      if (v163 >= v162 >> 1)
      {
        v154 = sub_2529F8DD4((v162 > 1), v163 + 1, 1, v154);
      }

      v154[2] = v163 + 1;
      v154[v163 + 4] = v161;
    }

    while (v153 != v257);
  }

  else
  {
    v154 = MEMORY[0x277D84F90];
  }

LABEL_210:

  v164 = v154[2];
  if (!v164)
  {
    v165 = MEMORY[0x277D84F90];
LABEL_232:

    v180 = *(v165 + 2);
    if (v180)
    {
      v181 = (v165 + 32);
      v182 = MEMORY[0x277D84F90];
      do
      {
        v183 = *v181++;
        v261[0] = v183;
        v184 = sub_252E37D94();
        v186 = v185;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_2529F7A80(0, *(v182 + 2) + 1, 1, v182);
        }

        v188 = *(v182 + 2);
        v187 = *(v182 + 3);
        if (v188 >= v187 >> 1)
        {
          v182 = sub_2529F7A80((v187 > 1), v188 + 1, 1, v182);
        }

        *(v182 + 2) = v188 + 1;
        v189 = &v182[16 * v188];
        *(v189 + 4) = v184;
        *(v189 + 5) = v186;
        --v180;
      }

      while (v180);
    }

    else
    {
      v182 = MEMORY[0x277D84F90];
    }

    v191 = *(v182 + 2);
    if (v191)
    {
      v192 = 0;
      v193 = v182 + 40;
      v259 = *(v182 + 2);
      v249 = (v191 - 1);
      v194 = MEMORY[0x277D84F90];
      v257 = v182 + 40;
      do
      {
        v195 = &v193[16 * v192];
        v196 = v192;
        while (1)
        {
          if (v196 >= *(v182 + 2))
          {
            goto LABEL_268;
          }

          v198 = *(v195 - 1);
          v197 = *v195;
          v192 = v196 + 1;
          v261[0] = v198;
          v261[1] = v197;
          MEMORY[0x28223BE20](v190);
          *(&v217 - 2) = v261;

          if ((sub_2529ED970(sub_25296A724, (&v217 - 4), v194) & 1) == 0)
          {
            break;
          }

          v195 += 2;
          ++v196;
          if (v259 == v192)
          {
            goto LABEL_255;
          }
        }

        v190 = swift_isUniquelyReferenced_nonNull_native();
        if ((v190 & 1) == 0)
        {
          v190 = sub_2529F7A80(0, *(v194 + 16) + 1, 1, v194);
          v194 = v190;
        }

        v200 = *(v194 + 16);
        v199 = *(v194 + 24);
        if (v200 >= v199 >> 1)
        {
          v190 = sub_2529F7A80((v199 > 1), v200 + 1, 1, v194);
          v194 = v190;
        }

        *(v194 + 16) = v200 + 1;
        v201 = v194 + 16 * v200;
        *(v201 + 32) = v198;
        *(v201 + 40) = v197;
        v193 = v257;
      }

      while (v249 != v196);
    }

    else
    {
      v194 = MEMORY[0x277D84F90];
    }

LABEL_255:

    v261[0] = v194;

    sub_252AC841C(v261);

    v202 = sub_252E36EA4();
    v204 = v203;

    v261[0] = 0;
    v261[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000026, v241 | 0x8000000000000000);
    MEMORY[0x2530AD570](v247, v258);

    MEMORY[0x2530AD570](0x4D6E61656C632C29, 0xED0000287365646FLL);
    MEMORY[0x2530AD570](v202, v204);

    MEMORY[0x2530AD570](665897, 0xE300000000000000);
    MEMORY[0x2530AD570](v261[0], v261[1]);

    v83 = v243;
    v90 = v251;
    goto LABEL_91;
  }

  v259 = (v154 + 4);
  v257 = v164 - 1;
  v165 = MEMORY[0x277D84F90];
  v166 = 0;
  while (v166 < v154[2])
  {
    v167 = v154;
    v168 = *(v259 + 8 * v166);
    v169 = v166 + 1;
    v261[0] = v165;
    v260 = v168;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    sub_2529E6488(&qword_27F542D90, &qword_27F5416D8, &qword_252E40998, MEMORY[0x277D83988]);
    if (sub_252E37414())
    {

      ++v166;
      if (v164 == v169)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v170 = v168[2];
      v171 = *(v165 + 2);
      v172 = v171 + v170;
      if (__OFADD__(v171, v170))
      {
        goto LABEL_277;
      }

      v173 = v168[2];
      v174 = swift_isUniquelyReferenced_nonNull_native();
      if (!v174 || v172 > *(v165 + 3) >> 1)
      {
        if (v171 <= v172)
        {
          v175 = v172;
        }

        else
        {
          v175 = v171;
        }

        v165 = sub_2529F8104(v174, v175, 1, v165);
      }

      v154 = v167;
      if (v168[2])
      {
        v176 = *(v165 + 2);
        if ((*(v165 + 3) >> 1) - v176 < v173)
        {
          goto LABEL_279;
        }

        memcpy(&v165[8 * v176 + 32], v168 + 4, 8 * v173);

        if (v173)
        {
          v177 = *(v165 + 2);
          v178 = __OFADD__(v177, v173);
          v179 = v177 + v173;
          if (v178)
          {
            goto LABEL_280;
          }

          *(v165 + 2) = v179;
        }
      }

      else
      {

        if (v173)
        {
          goto LABEL_278;
        }
      }

      if (v257 == v166)
      {
        goto LABEL_232;
      }

      ++v166;
    }
  }

LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  swift_once();
LABEL_261:
  v205 = sub_252E36AD4();
  __swift_project_value_buffer(v205, qword_27F544EC8);
  v261[0] = 0;
  v261[1] = 0xE000000000000000;
  sub_252E379F4();

  v261[0] = 0xD000000000000013;
  v261[1] = 0x8000000252E784C0;
  v207 = v262;
  v206 = v263;
  MEMORY[0x2530AD570](v262, v263);
  sub_252CC3D90(v261[0], v261[1], 0xD00000000000007CLL, 0x8000000252E6B890);

  v208 = sub_252ABF638(v207, v206);
  v210 = v209;
  sub_252ACBE88(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  v211 = v221;
  v212 = v223;
  sub_252E36DE4();
  sub_2529E61B0(v208, v210);
  sub_252D7BB0C(v208, v210, v211);
  sub_25296464C(v208, v210);
  v213 = v224;
  sub_252E36DD4();
  (*(v222 + 8))(v211, v212);
  v261[0] = sub_252ABFB58(v213);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v214 = sub_252E36EA4();
  sub_25296464C(v208, v210);

  (*(v225 + 8))(v213, v226);

  return v214;
}

id MatterAccessoryManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MatterAccessoryManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_252AC841C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2529346C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_252AC86CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_252AC8488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_252935460(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_252AC87C4(v6);
  return sub_252E37AA4();
}

uint64_t sub_252AC8504(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934780(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_252E37D74();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
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
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
      v7 = sub_252E372B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_252AC98DC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_252AC8638(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_252AC88C8(v10, a3);
  return sub_252E37AA4();
}

uint64_t sub_252AC86CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252AC8C98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252AC89D4(0, v2, 1, a1);
  }

  return result;
}

void sub_252AC87C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252E37D74();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeAttributeValue();
        v6 = sub_252E372B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_252AC9274(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_252AC8AA4(0, v2, 1, a1);
  }
}

void sub_252AC88C8(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_252E37D74();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v8 = sub_252E372B4();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_252AC9E28(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_252AC8B9C(0, v4, 1, a1);
  }
}

uint64_t sub_252AC89D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_252E37DB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_252AC8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 type];
      v13 = [v11 type];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_252AC8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 mapID];
      v15 = v14;
      [v13 mapID];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_252AC8C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_252934564(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_252ACA4A0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_252E37DB4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_252E37DB4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_252934578((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_252ACA4A0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2529344D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_252E37DB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}