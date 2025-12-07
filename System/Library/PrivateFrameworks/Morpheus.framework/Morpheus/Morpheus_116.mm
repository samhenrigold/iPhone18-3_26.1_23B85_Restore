double sub_25A911924@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, &v4);
  if (v5)
  {
    sub_25A872CE0(&v4);
    sub_25A872C84(v1, &v4);
    if (v5 != 1)
    {
      sub_25A872CE0(&v4);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_25A911A04@<D0>(uint64_t a1@<X8>)
{
  sub_25A872C84(v1, v6);
  if (v7 && (sub_25A872CE0(v6), sub_25A872C84(v1, v6), v7 != 1))
  {
    sub_25A872CE0(v6);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v8 = v6[0];
    v9 = v6[1];
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    *(a1 + 32) = &protocol witness table for A?;
    v3 = swift_allocObject();
    *a1 = v3;
    result = *&v8;
    v5 = v9;
    *(v3 + 16) = v8;
    *(v3 + 32) = v5;
  }

  return result;
}

uint64_t sub_25A911AC4()
{
  sub_25A872C84(v0, &v2);
  if (v3 && (sub_25A872CE0(&v2), sub_25A872C84(v0, &v2), v3 != 1))
  {
    sub_25A872CE0(&v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  LOBYTE(v2) = 2;
  return v2;
}

double sub_25A911BA8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25A872C84(v3, &v8);
  if (v9)
  {
    sub_25A872CE0(&v8);
    sub_25A872C84(v3, &v8);
    if (v9 != 1)
    {
      sub_25A872CE0(&v8);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A911C78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365756C6176;
  }

  else
  {
    v3 = 28783;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365756C6176;
  }

  else
  {
    v5 = 28783;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A911D10()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A911D84(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A911DE4(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A911E54@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A911EB4(uint64_t *a1@<X8>)
{
  v2 = 28783;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A911EE4()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 28783;
  }
}

uint64_t sub_25A911F10@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A911F74(uint64_t a1)
{
  v2 = sub_25A912B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A911FB0(uint64_t a1)
{
  v2 = sub_25A912B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A912038(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05168, &unk_25A9FBF90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A912B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for BoolOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v1[6] = sub_25A9988F8();
    v1[7] = v10;
    v1[5] = sub_25A94B230(v8, 1);
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A912244@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v4 = v1[5];
  if (v4[2] != 2)
  {
    if (qword_27FA043C0 == -1)
    {
LABEL_12:
      v29 = sub_25A997BD8();
      __swift_project_value_buffer(v29, qword_27FA0FCE8);

      v30 = sub_25A997BB8();
      v31 = sub_25A9983A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = *(v3[5] + 16);
        *(v32 + 12) = 2048;
        *(v32 + 14) = v3[2];

        _os_log_impl(&dword_25A232000, v30, v31, "BoolOp> Only 2 values are supported, but got %ld. line %ld", v32, 0x16u);
        MEMORY[0x25F852800](v32, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      v34 = 31;
      goto LABEL_16;
    }

LABEL_38:
    swift_once();
    goto LABEL_12;
  }

  v5 = v2;
  v60 = a1;
  v6 = v4[5];

  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  if (v4[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  v11 = v4[7];
  v12 = swift_getObjectType();
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = v1[4];
  v15 = *(v11 + 48);
  swift_unknownObjectRetain();
  v15(v13, v14, v12, v11);

  swift_unknownObjectRelease();
  v16 = v1[5];
  if (*(v16 + 16))
  {
    v17 = *(v16 + 40);
    v18 = swift_getObjectType();
    v19 = *(v17 + 64);
    swift_unknownObjectRetain();
    v19(v54, v18, v17);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      return result;
    }

    sub_25A911A04(&v55);
    sub_25A872CE0(v54);
    if (v56)
    {
      sub_25A895470(&v55, v57);
      v21 = v1[6];
      v22 = v3[7];
      if (v21 == 29295 && v22 == 0xE200000000000000 || (sub_25A9989E8() & 1) != 0)
      {
        v23 = v58;
        v24 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        if ((*(v24 + 8))(v23, v24))
        {
LABEL_10:
          v25 = v58;
          v26 = __swift_project_boxed_opaque_existential_1(v57, v58);
          v27 = v60;
          *(v60 + 24) = v25;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
          (*(*(v25 - 8) + 16))(boxed_opaque_existential_0, v26, v25);
          *(v27 + 32) = 0;
          return __swift_destroy_boxed_opaque_existential_0Tm(v57);
        }

        v39 = v3[5];
        if (*(v39 + 16) >= 2uLL)
        {
LABEL_22:
          v40 = *(v39 + 56);
          v41 = swift_getObjectType();
          v42 = *(v40 + 64);
          swift_unknownObjectRetain();
          v42(v41, v40);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v57);
        }

        __break(1u);
      }

      else
      {
        if (v21 == 6581857 && v22 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
        {
          v43 = v58;
          v44 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          if (((*(v44 + 8))(v43, v44) & 1) == 0)
          {
            goto LABEL_10;
          }

          v39 = v3[5];
          if (*(v39 + 16) >= 2uLL)
          {
            goto LABEL_22;
          }

          __break(1u);
        }

        if (qword_27FA043C0 == -1)
        {
LABEL_33:
          v45 = sub_25A997BD8();
          __swift_project_value_buffer(v45, qword_27FA0FCE8);

          v46 = sub_25A997BB8();
          v47 = sub_25A9983A8();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v55 = v49;
            *v48 = 136315394;
            v50 = v3[6];
            v51 = v3[7];

            v52 = sub_25A98CC90(v50, v51, &v55);

            *(v48 + 4) = v52;
            *(v48 + 12) = 2048;
            *(v48 + 14) = v3[2];

            _os_log_impl(&dword_25A232000, v46, v47, "BoolOp> Op %s is not supported yet. line %ld", v48, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v49);
            MEMORY[0x25F852800](v49, -1, -1);
            MEMORY[0x25F852800](v48, -1, -1);
          }

          else
          {
          }

          sub_25A874F54();
          swift_allocError();
          *v53 = 32;
          swift_willThrow();
          return __swift_destroy_boxed_opaque_existential_0Tm(v57);
        }
      }

      swift_once();
      goto LABEL_33;
    }

    sub_25A8F4B04(&v55);
    if (qword_27FA043C0 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_19:
  v35 = sub_25A997BD8();
  __swift_project_value_buffer(v35, qword_27FA0FCE8);

  v36 = sub_25A997BB8();
  v37 = sub_25A9983A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v3[2];

    _os_log_impl(&dword_25A232000, v36, v37, "BoolOp> Left operand is not returning Truthiness. line %ld", v38, 0xCu);
    MEMORY[0x25F852800](v38, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  v34 = 29;
LABEL_16:
  *v33 = v34;
  return swift_willThrow();
}

void sub_25A912984()
{
  if (*(v0[5] + 16))
  {
    swift_getObjectType();
    sub_25A9989B8();
    MEMORY[0x25F850290](32, 0xE100000000000000);
    v1 = v0[6];
    v2 = v0[7];

    MEMORY[0x25F850290](v1, v2);

    MEMORY[0x25F850290](32, 0xE100000000000000);
    if (*(v0[5] + 16) >= 2uLL)
    {
      swift_getObjectType();
      sub_25A9989B8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25A912A70()
{
}

uint64_t sub_25A912AA0()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A912B2C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A912B6C()
{
  result = qword_27FA05170;
  if (!qword_27FA05170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05170);
  }

  return result;
}

unint64_t sub_25A912BD4()
{
  result = qword_27FA05188;
  if (!qword_27FA05188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05188);
  }

  return result;
}

unint64_t sub_25A912C2C()
{
  result = qword_27FA05190;
  if (!qword_27FA05190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05190);
  }

  return result;
}

unint64_t sub_25A912C84()
{
  result = qword_27FA05198;
  if (!qword_27FA05198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05198);
  }

  return result;
}

Morpheus::MorpheusError_optional __swiftcall MorpheusError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  switch(rawValue)
  {
    case 9201:
      goto LABEL_131;
    case 9202:
      v2 = 1;
      goto LABEL_131;
    case 9203:
      v2 = 2;
      goto LABEL_131;
    case 9204:
      v2 = 3;
      goto LABEL_131;
    case 9205:
      v2 = 4;
      goto LABEL_131;
    case 9206:
      v2 = 5;
      goto LABEL_131;
    case 9207:
      v2 = 6;
      goto LABEL_131;
    case 9208:
      v2 = 7;
      goto LABEL_131;
    case 9209:
      v2 = 8;
      goto LABEL_131;
    case 9210:
      v2 = 9;
      goto LABEL_131;
    case 9211:
      v2 = 10;
      goto LABEL_131;
    case 9212:
      v2 = 11;
      goto LABEL_131;
    case 9213:
      v2 = 12;
      goto LABEL_131;
    case 9214:
      v2 = 13;
      goto LABEL_131;
    case 9215:
      v2 = 14;
      goto LABEL_131;
    case 9216:
      v2 = 15;
      goto LABEL_131;
    case 9217:
      v2 = 16;
      goto LABEL_131;
    case 9218:
      v2 = 17;
      goto LABEL_131;
    case 9219:
      v2 = 18;
      goto LABEL_131;
    case 9220:
      v2 = 19;
      goto LABEL_131;
    case 9221:
      v2 = 20;
      goto LABEL_131;
    case 9222:
      v2 = 21;
      goto LABEL_131;
    case 9223:
      v2 = 22;
      goto LABEL_131;
    case 9224:
      v2 = 23;
      goto LABEL_131;
    case 9225:
      v2 = 24;
      goto LABEL_131;
    case 9226:
      v2 = 25;
      goto LABEL_131;
    case 9227:
      v2 = 26;
      goto LABEL_131;
    case 9228:
      v2 = 27;
      goto LABEL_131;
    case 9229:
      v2 = 28;
      goto LABEL_131;
    case 9230:
      v2 = 29;
      goto LABEL_131;
    case 9231:
      v2 = 30;
      goto LABEL_131;
    case 9232:
      v2 = 31;
      goto LABEL_131;
    case 9233:
      v2 = 32;
      goto LABEL_131;
    case 9234:
      v2 = 33;
      goto LABEL_131;
    case 9235:
      v2 = 34;
      goto LABEL_131;
    case 9236:
      v2 = 35;
      goto LABEL_131;
    case 9237:
      v2 = 36;
      goto LABEL_131;
    case 9238:
      v2 = 37;
      goto LABEL_131;
    case 9239:
      v2 = 38;
      goto LABEL_131;
    case 9240:
      v2 = 39;
      goto LABEL_131;
    case 9241:
      v2 = 40;
      goto LABEL_131;
    case 9242:
      v2 = 41;
      goto LABEL_131;
    case 9243:
      v2 = 42;
      goto LABEL_131;
    case 9244:
      v2 = 43;
      goto LABEL_131;
    case 9245:
      v2 = 44;
      goto LABEL_131;
    case 9246:
      v2 = 45;
      goto LABEL_131;
    case 9247:
      v2 = 46;
      goto LABEL_131;
    case 9248:
      v2 = 47;
      goto LABEL_131;
    case 9249:
      v2 = 48;
      goto LABEL_131;
    case 9250:
      v2 = 49;
      goto LABEL_131;
    case 9251:
      v2 = 50;
      goto LABEL_131;
    case 9252:
      v2 = 51;
      goto LABEL_131;
    case 9253:
      v2 = 52;
      goto LABEL_131;
    case 9254:
      v2 = 53;
      goto LABEL_131;
    case 9255:
      v2 = 54;
      goto LABEL_131;
    case 9256:
      v2 = 55;
      goto LABEL_131;
    case 9257:
      v2 = 56;
      goto LABEL_131;
    case 9258:
      v2 = 57;
      goto LABEL_131;
    case 9259:
      v2 = 58;
      goto LABEL_131;
    case 9260:
      v2 = 59;
      goto LABEL_131;
    case 9261:
      v2 = 60;
      goto LABEL_131;
    case 9262:
      v2 = 61;
      goto LABEL_131;
    case 9263:
      v2 = 62;
      goto LABEL_131;
    case 9264:
      v2 = 63;
      goto LABEL_131;
    case 9265:
      v2 = 64;
      goto LABEL_131;
    case 9267:
      v2 = 65;
      goto LABEL_131;
    case 9268:
      v2 = 66;
      goto LABEL_131;
    case 9269:
      v2 = 67;
      goto LABEL_131;
    case 9270:
      v2 = 68;
      goto LABEL_131;
    case 9271:
      v2 = 69;
      goto LABEL_131;
    case 9272:
      v2 = 70;
      goto LABEL_131;
    case 9273:
      v2 = 71;
      goto LABEL_131;
    case 9274:
      v2 = 72;
      goto LABEL_131;
    case 9275:
      v2 = 73;
      goto LABEL_131;
    case 9276:
      v2 = 74;
      goto LABEL_131;
    case 9277:
      v2 = 75;
      goto LABEL_131;
    case 9278:
      v2 = 76;
      goto LABEL_131;
    case 9279:
      v2 = 77;
      goto LABEL_131;
    case 9280:
      v2 = 78;
      goto LABEL_131;
    case 9281:
      v2 = 79;
      goto LABEL_131;
    case 9282:
      v2 = 80;
      goto LABEL_131;
    case 9283:
      v2 = 81;
      goto LABEL_131;
    case 9284:
      v2 = 82;
      goto LABEL_131;
    case 9285:
      v2 = 83;
      goto LABEL_131;
    case 9286:
      v2 = 84;
      goto LABEL_131;
    case 9287:
      v2 = 85;
      goto LABEL_131;
    case 9288:
      v2 = 86;
      goto LABEL_131;
    case 9289:
      v2 = 87;
      goto LABEL_131;
    case 9290:
      v2 = 88;
      goto LABEL_131;
    case 9291:
      v2 = 89;
      goto LABEL_131;
    case 9292:
      v2 = 90;
      goto LABEL_131;
    case 9293:
      v2 = 91;
      goto LABEL_131;
    case 9294:
      v2 = 92;
      goto LABEL_131;
    case 9295:
      v2 = 93;
      goto LABEL_131;
    case 9296:
      v2 = 94;
      goto LABEL_131;
    case 9297:
      v2 = 95;
      goto LABEL_131;
    case 9298:
      v2 = 96;
      goto LABEL_131;
    case 9299:
      v2 = 97;
      goto LABEL_131;
    case 9300:
      v2 = 98;
      goto LABEL_131;
    case 9301:
      v2 = 99;
      goto LABEL_131;
    case 9302:
      v2 = 100;
      goto LABEL_131;
    case 9303:
      v2 = 101;
      goto LABEL_131;
    case 9304:
      v2 = 102;
      goto LABEL_131;
    case 9305:
      v2 = 103;
      goto LABEL_131;
    case 9306:
      v2 = 104;
      goto LABEL_131;
    case 9307:
      v2 = 105;
      goto LABEL_131;
    case 9308:
      v2 = 106;
      goto LABEL_131;
    case 9309:
      v2 = 107;
      goto LABEL_131;
    case 9310:
      v2 = 108;
      goto LABEL_131;
    case 9311:
      v2 = 109;
      goto LABEL_131;
    case 9312:
      v2 = 110;
      goto LABEL_131;
    case 9313:
      v2 = 111;
      goto LABEL_131;
    case 9314:
      v2 = 112;
      goto LABEL_131;
    case 9315:
      v2 = 113;
      goto LABEL_131;
    case 9316:
      v2 = 114;
      goto LABEL_131;
    case 9317:
      v2 = 115;
      goto LABEL_131;
    case 9318:
      v2 = 116;
      goto LABEL_131;
    case 9319:
      v2 = 117;
      goto LABEL_131;
    case 9320:
      v2 = 118;
      goto LABEL_131;
    case 9321:
      v2 = 119;
      goto LABEL_131;
    case 9322:
      v2 = 120;
      goto LABEL_131;
    case 9323:
      v2 = 121;
      goto LABEL_131;
    case 9324:
      v2 = 122;
      goto LABEL_131;
    case 9325:
      v2 = 123;
      goto LABEL_131;
    case 9326:
      v2 = 124;
      goto LABEL_131;
    case 9327:
      v2 = 125;
      goto LABEL_131;
    case 9328:
      v2 = 126;
      goto LABEL_131;
    case 9329:
      v2 = 127;
LABEL_131:
      v3 = v2;
LABEL_132:
      *v1 = v3;
      break;
    default:
      v3 = -112;
      v2 = 0x80;
      switch(rawValue)
      {
        case 9330:
          goto LABEL_131;
        case 9331:
          v2 = -127;
          goto LABEL_131;
        case 9332:
          v2 = -126;
          goto LABEL_131;
        case 9333:
          v2 = -125;
          goto LABEL_131;
        case 9334:
          v2 = -124;
          goto LABEL_131;
        case 9335:
          v2 = -123;
          goto LABEL_131;
        case 9336:
          v2 = -122;
          goto LABEL_131;
        case 9337:
          v2 = -121;
          goto LABEL_131;
        case 9338:
          v2 = -120;
          goto LABEL_131;
        case 9339:
          v2 = -119;
          goto LABEL_131;
        case 9340:
          v2 = -118;
          goto LABEL_131;
        case 9341:
          v2 = -117;
          goto LABEL_131;
        case 9342:
          v2 = -116;
          goto LABEL_131;
        case 9343:
          v2 = -115;
          goto LABEL_131;
        case 9344:
          v2 = -114;
          goto LABEL_131;
        case 9345:
          v2 = -113;
          goto LABEL_131;
        case 9346:
          goto LABEL_132;
        case 9347:
          *v1 = -111;
          break;
        case 9348:
          *v1 = -110;
          break;
        case 9349:
          *v1 = -109;
          break;
        case 9350:
          *v1 = -108;
          break;
        case 9351:
          *v1 = -107;
          break;
        case 9352:
          *v1 = -106;
          break;
        case 9353:
          *v1 = -105;
          break;
        case 9354:
          *v1 = -104;
          break;
        case 9355:
          *v1 = -103;
          break;
        case 9356:
          *v1 = -102;
          break;
        case 9357:
          *v1 = -101;
          break;
        case 9358:
          *v1 = -100;
          break;
        case 9359:
          *v1 = -99;
          break;
        case 9360:
          *v1 = -98;
          break;
        case 9361:
          *v1 = -97;
          break;
        case 9362:
          *v1 = -96;
          break;
        case 9399:
          *v1 = -95;
          break;
        default:
          *v1 = -94;
          break;
      }

      break;
  }

  return rawValue;
}

unint64_t sub_25A9135F8()
{
  result = qword_27FA051A0;
  if (!qword_27FA051A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051A0);
  }

  return result;
}

uint64_t sub_25A91364C()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](qword_25A9FC4A8[v1 ^ 0x80]);
  return sub_25A998B38();
}

uint64_t sub_25A9136DC(uint64_t a1)
{
  v2 = *v1;
  sub_25A998B18();
  MEMORY[0x25F850E50](qword_25A9FC4A8[v2 ^ 0x80]);
  return sub_25A998B38();
}

uint64_t sub_25A913754(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A913904();
  v5 = sub_25A913958();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for MorpheusError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x5F)
  {
    goto LABEL_17;
  }

  if (a2 + 161 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 161) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 161;
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

      return (*a1 | (v4 << 8)) - 161;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 161;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA2;
  v8 = v6 - 162;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 161 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 161) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x5F)
  {
    v4 = 0;
  }

  if (a2 > 0x5E)
  {
    v5 = ((a2 - 95) >> 8) + 1;
    *result = a2 - 95;
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
    *result = a2 - 95;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A913904()
{
  result = qword_27FA051A8;
  if (!qword_27FA051A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051A8);
  }

  return result;
}

unint64_t sub_25A913958()
{
  result = qword_27FA051B0;
  if (!qword_27FA051B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051B0);
  }

  return result;
}

uint64_t sub_25A9139B0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA042E8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046B8;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A915040(&qword_27FA04718, type metadata accessor for PyBuiltInClass, &protocol conformance descriptor for PyBuiltInClass);
  *a1 = v2;
}

double sub_25A913A64@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *((*(a4 + 40))(a3, a4) + 32);

  sub_25A998578();
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_25A8F35BC(v11);
    if (v9)
    {
      sub_25A87500C(*(v7 + 56) + 32 * v8, a5);

      sub_25A8795A0(v11);

      return result;
    }
  }

  else
  {
  }

  sub_25A8795A0(v11);
  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

uint64_t sub_25A913B8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 40))(a3, a4);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  LOBYTE(a2) = LexicalContext.has(attribute:)(v6);

  return a2 & 1;
}

uint64_t sub_25A913BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 40))(a3, a4);
  sub_25A87500C(a1, v10);
  if (!swift_dynamicCast())
  {
  }

  sub_25A998578();
  sub_25A87500C(a2, v9);
  sub_25A874FB0(v10, &v8);
  sub_25A8952F0(v9, v7, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  sub_25A8F2E14(v7, &v8);
  swift_endAccess();

  sub_25A878194(v9, &qword_27FA04458, &unk_25A9F7FB0);
  return sub_25A8795A0(v10);
}

uint64_t sub_25A913D58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 40))(a4, a5);

  v13[0] = a1;
  v13[1] = a2;

  sub_25A998578();
  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  v10 = (*(v9 + 40))(v8, v9);
  v14[3] = type metadata accessor for LexicalContext();
  v14[0] = v10;
  sub_25A874FB0(v15, v13);
  sub_25A8952F0(v14, v12, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  sub_25A8F2E14(v12, v13);
  swift_endAccess();

  sub_25A8795A0(v15);
  return sub_25A878194(v14, &qword_27FA04458, &unk_25A9F7FB0);
}

uint64_t sub_25A913EB4()
{
  v1 = *(v0 + 32);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v35 = v1;
  while (v5)
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v7 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_25A87500C(*(v1 + 56) + 32 * v10, v49);
    v47[0] = v13;
    v47[1] = v12;
    sub_25A872D74(v49, &v48);
    v14 = *(*(v36 + 40) + 32);
    sub_25A8952F0(v47, v45, &qword_27FA04E48, &qword_25A9FB8F0);
    v41[0] = v45[0];
    v41[1] = v45[1];

    sub_25A998578();
    sub_25A8952F0(v47, v41, &qword_27FA04E48, &qword_25A9FB8F0);

    sub_25A872D74(&v42, v43);
    sub_25A874FB0(v44, v40);
    sub_25A8952F0(v43, &v38, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (v39)
    {
      sub_25A872D74(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v14 + 16);
      v16 = v50;
      *(v14 + 16) = 0x8000000000000000;
      v18 = sub_25A8F35BC(v40);
      v19 = v16[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_32;
      }

      v22 = v17;
      if (v16[3] >= v21)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v25 = v50;
          if ((v17 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_25A968DB8();
          v25 = v50;
          if ((v22 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_25A9679D0(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_25A8F35BC(v40);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_34;
        }

        v18 = v23;
        v25 = v50;
        if ((v22 & 1) == 0)
        {
LABEL_24:
          v25[(v18 >> 6) + 8] |= 1 << v18;
          sub_25A874FB0(v40, v25[6] + 40 * v18);
          sub_25A872D74(v37, (v25[7] + 32 * v18));
          sub_25A8795A0(v40);
          v31 = v25[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_33;
          }

          v25[2] = v33;
          goto LABEL_5;
        }
      }

      v8 = (v25[7] + 32 * v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      sub_25A872D74(v37, v8);
      sub_25A8795A0(v40);
LABEL_5:
      *(v14 + 16) = v25;

      v1 = v35;
      goto LABEL_6;
    }

    sub_25A878194(&v38, &qword_27FA04458, &unk_25A9F7FB0);
    v26 = sub_25A8F35BC(v40);
    if (v27)
    {
      v28 = v26;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v14 + 16);
      v50 = v30;
      *(v14 + 16) = 0x8000000000000000;
      if (!v29)
      {
        sub_25A968DB8();
        v30 = v50;
      }

      sub_25A8795A0(*(v30 + 48) + 40 * v28);
      sub_25A872D74((*(v30 + 56) + 32 * v28), v37);
      sub_25A969C84(v28, v30);
      sub_25A8795A0(v40);
      *(v14 + 16) = v30;
    }

    else
    {
      sub_25A8795A0(v40);
      memset(v37, 0, sizeof(v37));
    }

    sub_25A878194(v37, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_6:
    v5 &= v5 - 1;
    swift_endAccess();

    sub_25A878194(v43, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v44);
    sub_25A878194(v47, &qword_27FA04E48, &qword_25A9FB8F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A91431C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25A914408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B636F6C62;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B636F6C62;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A9144A4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A91451C(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A914580(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A9145F4@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A914654(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x6B636F6C62;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A914688()
{
  if (*v0)
  {
    return 0x6B636F6C62;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_25A9146B8@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A91471C(uint64_t a1)
{
  v2 = sub_25A914FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A914758(uint64_t a1)
{
  v2 = sub_25A914FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A9147E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051B8, &unk_25A9FCDD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A914FEC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ModuleOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v10;
    v13 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A915040(&qword_27FA04A18, type metadata accessor for LexicalBlock, &unk_25A9F90EC);
    sub_25A998938();
    v1[7] = v12[0];
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A914A50(uint64_t a1, uint64_t a2, void *a3)
{
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = a1;
  v9[1] = a2;
  v3 = a3[3];
  v4 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v3);
  v5 = *(v4 + 40);

  v6 = v5(v3, v4);
  v8[3] = type metadata accessor for LexicalContext();
  v8[0] = v6;
  LexicalContext.store(key:obj:)(v9, v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_25A914B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 32);
  swift_beginAccess();
  *(v3 + 32) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  sub_25A87A380(0, a1);
}

uint64_t sub_25A914BE0()
{
  v2 = *(v0 + 56);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 32);
  swift_beginAccess();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  sub_25A87A380(0, v5);
  if (!v1)
  {
    sub_25A872CE0(v5);
  }
}

uint64_t sub_25A914CA4()
{

  v0 = sub_25A87A5A4();

  return v0;
}

uint64_t sub_25A914CF0()
{
}

uint64_t sub_25A914D20()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A914DBC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_25A914FEC()
{
  result = qword_27FA051C0;
  if (!qword_27FA051C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051C0);
  }

  return result;
}

uint64_t sub_25A915040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25A91509C()
{
  result = qword_27FA051C8;
  if (!qword_27FA051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051C8);
  }

  return result;
}

unint64_t sub_25A9150F4()
{
  result = qword_27FA051D0;
  if (!qword_27FA051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051D0);
  }

  return result;
}

unint64_t sub_25A91514C()
{
  result = qword_27FA051D8;
  if (!qword_27FA051D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051D8);
  }

  return result;
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

uint64_t sub_25A9151F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25A91523C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Int.mod(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_25A917A78(v28);
    if (a2 == a2)
    {
      mlx_array_new_int(a2);
    }

    __break(1u);
    goto LABEL_32;
  }

  v26 = a3;
  sub_25A87817C(v28, v31);
  v6 = v32;
  v3 = v33;
  v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v27 = v24;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v28[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v25 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24[1] = v24;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v16 = v24 - v15;
      swift_getAssociatedConformanceWitness();
      v24[2] = v16;
      v17 = sub_25A998A78();
      v24[0] = v24;
      MEMORY[0x28223BE20](v17);
      sub_25A9989C8();
      LOBYTE(v16) = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v16)
      {
        goto LABEL_35;
      }

      goto LABEL_16;
    }

LABEL_11:
    v25 = v24;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = sub_25A997D88();
    (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v13)
    {
      goto LABEL_35;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v28[0] = 0x7FFFFFFFFFFFFFFFLL;
    v18 = sub_25A9984D8();
    v19 = sub_25A9984C8();
    if (v18)
    {
      if (v19 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v19 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v19);
      sub_25A895280();
      sub_25A9984A8();
      v20 = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v21 = sub_25A9984B8();
  (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 == 0x8000000000000000 && v21 == -1)
  {
LABEL_33:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v31[0];
    v31[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v31, a2, *(v3 + 16), *(v11 + 16));
  }

  v22 = v26;
  *(v26 + 24) = MEMORY[0x277D83B88];
  *v22 = a2 % v21;
  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

void sub_25A915AD0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A915AD8);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.mod(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A917A78(v30);
    v33[0] = a2;
    a2 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 8);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(a2);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_remainder(v33, a2, v7[2], *(v14 + 16));
    }

LABEL_35:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_37;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_37:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (!v24)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_34;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = a2 % v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A916360(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A916368);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.mod(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v33 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_25A917A78(v27);
    mlx_array_new_int(a2);
  }

  sub_25A87817C(v27, v30);
  v4 = v31;
  v5 = v32;
  v6 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v25 = v23;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v27[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v24 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23[1] = v23;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v15 = v23 - v14;
      swift_getAssociatedConformanceWitness();
      v23[2] = v15;
      v16 = sub_25A998A78();
      v23[0] = v23;
      MEMORY[0x28223BE20](v16);
      sub_25A9989C8();
      LOBYTE(v15) = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

LABEL_10:
    v24 = v23;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = sub_25A997D88();
    (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v12)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v27[0]) = 0x7FFFFFFF;
    v17 = sub_25A9984D8();
    v18 = sub_25A9984C8();
    if (v17)
    {
      if (v18 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v18 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v18);
      sub_25A8DF954();
      sub_25A9984A8();
      v19 = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v20 = sub_25A9984B8();
  (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (!v20)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 == 0x80000000 && v20 == -1)
  {
LABEL_31:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v30[0];
    v30[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v30, a2, *(v5 + 16), *(v10 + 16));
  }

  v21 = v26;
  *(v26 + 24) = MEMORY[0x277D849A8];
  *v21 = a2 % v20;
  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

void sub_25A916BD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A916BE0);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.mod(_:)@<X0>(void *a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A917A78(v30);
    LODWORD(v33[0]) = a2;
    a2 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 3);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(a2);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_remainder(v33, a2, v7[2], *(v14 + 16));
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (!v24)
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = a2 % v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A917454(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91745CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.mod(_:)(void *a1, float a3)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v5 = mlx_array_new_float(a3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v5;
  v6 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v6;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v10, v5, v8[2], *(v9 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v5);
}

void sub_25A91767C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A917684);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.mod(_:)(void *a1, double a3)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mlx_array_new_float(v5);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v9 = v7;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v11[0];
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_remainder(v11, v6, v9[2], *(v10 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v6);
}

void sub_25A917898(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9178A0);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9178D8(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  result = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8[0] = mlx_array_new();
    swift_beginAccess();
    v6 = *(v2 + 16);
    swift_beginAccess();
    mlx_remainder(v8, v6, v5[2], *(v7 + 16));
  }

  return result;
}

void sub_25A917A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A917A48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A917A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C8, &qword_25A9F8E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Dictionary.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v30 = a2;
  v31 = a5;
  v32 = a6;
  v9 = sub_25A9983F8();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_25A9983F8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A87500C(a1, v33);
  v20 = swift_dynamicCast();
  v21 = *(v17 + 56);
  if (v20)
  {
    v22 = v32;
    v21(v16, 0, 1, a3);
    (*(v17 + 32))(v19, v16, a3);
    sub_25A997D08();
    v23 = *(a4 - 8);
    if ((*(v23 + 48))(v11, 1, a4) == 1)
    {
      (*(v17 + 8))(v19, a3);
      result = (*(v28 + 8))(v11, v29);
      *v22 = 0u;
      v22[1] = 0u;
    }

    else
    {
      *(v22 + 3) = a4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
      (*(v23 + 32))(boxed_opaque_existential_0, v11, a4);
      return (*(v17 + 8))(v19, a3);
    }
  }

  else
  {
    v21(v16, 1, 1, a3);
    result = (*(v13 + 8))(v16, v12);
    v25 = v32;
    *v32 = 0u;
    v25[1] = 0u;
  }

  return result;
}

uint64_t Array.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v60 = a4;
    sub_25A87817C(v61, &v64);
    v7 = v65;
    v8 = v66;
    v9 = __swift_project_boxed_opaque_existential_1(&v64, v65);
    v10 = v56;
    v11 = *(v7 - 8);
    v12 = *(v11 + 8);
    MEMORY[0x28223BE20](v9);
    v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 2))(v13);
    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
    {
      *&v61[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v14 = sub_25A9984C8();
        if (v14 < 64)
        {
          sub_25A9984B8();
          goto LABEL_56;
        }

        v58 = v56;
        v59 = v56;
        MEMORY[0x28223BE20](v14);
        sub_25A895280();
        sub_25A9984A8();
        v43 = sub_25A997D88();
        (*(v11 + 1))(v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_49:
        v10 = v58;
        if (v43)
        {
          goto LABEL_72;
        }

        goto LABEL_56;
      }

      v59 = v12;
      v40 = sub_25A9984D8();
      v41 = sub_25A9984C8();
      if (v40)
      {
        v58 = v56;
        if (v41 > 64)
        {
          v57 = v56;
          v42 = v59;
          MEMORY[0x28223BE20](v41);
          sub_25A895280();
          sub_25A9984A8();
          v43 = sub_25A997D88();
          v12 = v42;
          (*(v11 + 1))(v56 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          goto LABEL_49;
        }

        v56[0] = *(*(v8 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v57 = v56;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v45 = sub_25A998A78();
        v56[1] = v56;
        MEMORY[0x28223BE20](v45);
        v47 = v56 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A9989C8();
        v48 = sub_25A997D88();
        (*(v11 + 1))(v47, v7);
        if (v48)
        {
          goto LABEL_72;
        }

        sub_25A9984B8();
        v10 = v58;
      }

      else if (v41 < 64)
      {
        sub_25A9984B8();
      }

      v12 = v59;
    }

LABEL_56:
    if (sub_25A9984C8() <= 64)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v59 = v11;
      v49 = v12;
      *&v61[0] = 0x7FFFFFFFFFFFFFFFLL;
      v50 = sub_25A9984D8();
      v51 = sub_25A9984C8();
      if (v50)
      {
        if (v51 < 65)
        {
          goto LABEL_65;
        }
      }

      else if (v51 < 64)
      {
LABEL_65:
        sub_25A9984B8();
        v11 = v59;
LABEL_66:
        v53 = sub_25A9984B8();
        (*(v11 + 1))(v13, v7);
        v54 = v60;
        if (v53 < 0)
        {
          v55 = v60;
          if (!__OFADD__(_sSa8MorpheusE3lenSiyF_0(), v53))
          {
            v54 = v55;
            goto LABEL_69;
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:

          __break(1u);
        }

        else
        {
LABEL_69:
          v54[3] = a3;
          __swift_allocate_boxed_opaque_existential_0(v54);
          sub_25A9981D8();
          return __swift_destroy_boxed_opaque_existential_0Tm(&v64);
        }

        return result;
      }

      v58 = v10;
      MEMORY[0x28223BE20](v51);
      v12 = v56 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25A895280();
      sub_25A9984A8();
      v52 = sub_25A997D88();
      v11 = v59;
      (*(v59 + 1))(v12, v7);
      v10 = v58;
      if (v52)
      {
        __break(1u);
LABEL_61:
        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_66;
    }
  }

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_25A917A78(v61);
  sub_25A87500C(a1, &v64);
  if (!swift_dynamicCast())
  {
LABEL_17:
    sub_25A874F54();
    v25 = swift_allocError();
    *v26 = 101;
    v67 = v25;
    return swift_willThrow();
  }

  v15 = _sSa8MorpheusE3lenSiyF_0();
  v18 = sub_25A8FF4EC(v15);
  v19 = v16;
  v20 = v17;
  v21 = 0;
  v22 = v18;
  while (1)
  {
    v23 = v16 >= v22;
    if (v17 > 0)
    {
      v23 = v22 >= v16;
    }

    if (v23)
    {
      break;
    }

    v24 = __OFADD__(v22, v17);
    v22 += v17;
    if (v24)
    {
      v22 = (v22 >> 63) ^ 0x8000000000000000;
    }

    v24 = __OFADD__(v21++, 1);
    if (v24)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  v60 = a4;
  *&v61[0] = MEMORY[0x277D84F90];
  sub_25A937550(0, v21, 0);
  v28 = *&v61[0];
  if (v21)
  {
    do
    {
      v29 = v19 >= v18;
      if (v20 > 0)
      {
        v29 = v18 >= v19;
      }

      if (v29)
      {
        __break(1u);
        goto LABEL_71;
      }

      if (__OFADD__(v18, v20))
      {
        v30 = ((v18 + v20) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v30 = v18 + v20;
      }

      v65 = a3;
      __swift_allocate_boxed_opaque_existential_0(&v64);
      sub_25A9981D8();
      if (v67)
      {
        goto LABEL_73;
      }

      *&v61[0] = v28;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25A937550((v31 > 1), v32 + 1, 1);
        v28 = *&v61[0];
      }

      *(v28 + 16) = v32 + 1;
      sub_25A872D74(&v64, (v28 + 32 * v32 + 32));
      v18 = v30;
      --v21;
    }

    while (v21);
  }

  else
  {
    v30 = v18;
  }

  v33 = v19 >= v30;
  if (v20 > 0)
  {
    v33 = v30 >= v19;
  }

  if (!v33)
  {
    do
    {
      if (__OFADD__(v30, v20))
      {
        v36 = ((v30 + v20) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v36 = v30 + v20;
      }

      v65 = a3;
      __swift_allocate_boxed_opaque_existential_0(&v64);
      sub_25A9981D8();
      if (v67)
      {
        goto LABEL_73;
      }

      *&v61[0] = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_25A937550((v37 > 1), v38 + 1, 1);
        v28 = *&v61[0];
      }

      *(v28 + 16) = v38 + 1;
      sub_25A872D74(&v64, (v28 + 32 * v38 + 32));
      v39 = v19 >= v36;
      if (v20 > 0)
      {
        v39 = v36 >= v19;
      }

      v30 = v36;
    }

    while (!v39);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  result = swift_allocObject();
  *(result + 16) = v28;
  v35 = v60;
  v60[3] = v34;
  *v35 = result;
  return result;
}

uint64_t String.get(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_25A917A78(v44);
    sub_25A87500C(a1, v47);
    if (swift_dynamicCast())
    {
      v18 = _sSS8MorpheusE3lenSiyF_0();
      v19 = sub_25A8FF4EC(v18);
      v21 = v20;
      v23 = v22;

      v24 = sub_25A918FEC(v19, v21, v23, a2, a3);

      v47[0] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051E0, &qword_25A9FCFF8);
      sub_25A91921C();
      result = sub_25A998038();
      a4[3] = MEMORY[0x277D837D0];
      *a4 = result;
      a4[1] = v25;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v26 = -96;
      return swift_willThrow();
    }

    return result;
  }

  v43 = a2;
  v50 = v4;
  sub_25A87817C(v44, v47);
  v9 = v48;
  v10 = v49;
  v11 = __swift_project_boxed_opaque_existential_1(v47, v48);
  v12 = v40;
  v13 = *(v9 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v44[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v15 = sub_25A9984C8();
    if (v15 >= 64)
    {
      v41 = v40;
      MEMORY[0x28223BE20](v15);
      v42 = v40;
      sub_25A895280();
      sub_25A9984A8();
      v16 = sub_25A997D88();
      v12 = v42;
      result = (*(v13 + 8))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v16)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v42 = v40;
  v27 = sub_25A9984D8();
  v28 = sub_25A9984C8();
  if (v27)
  {
    if (v28 <= 64)
    {
      v41 = *(*(v10 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v40[2] = v40;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v40[0] = v40 - v31;
      swift_getAssociatedConformanceWitness();
      v32 = sub_25A998A78();
      v40[1] = v40;
      MEMORY[0x28223BE20](v32);
      sub_25A9989C8();
      v33 = sub_25A997D88();
      result = (*(v13 + 8))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v33)
      {
        goto LABEL_33;
      }

      sub_25A9984B8();
      v12 = v42;
    }

    else
    {
      v41 = v40;
      MEMORY[0x28223BE20](v28);
      sub_25A895280();
      sub_25A9984A8();
      v29 = sub_25A997D88();
      result = (*(v13 + 8))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      v12 = v42;
      if (v29)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  v12 = v42;
  if (v28 < 64)
  {
LABEL_16:
    sub_25A9984B8();
  }

LABEL_19:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v42 = v12;
    *&v44[0] = 0x7FFFFFFFFFFFFFFFLL;
    v34 = sub_25A9984D8();
    v35 = sub_25A9984C8();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_28;
    }

LABEL_22:
    v41 = v40;
    MEMORY[0x28223BE20](v35);
    sub_25A895280();
    sub_25A9984A8();
    v36 = sub_25A997D88();
    (*(v13 + 8))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v12 = v42;
    if (v36)
    {
      __break(1u);
LABEL_24:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  if (v35 >= 64)
  {
    goto LABEL_22;
  }

LABEL_28:
  sub_25A9984B8();
LABEL_29:
  v37 = sub_25A9984B8();
  (*(v13 + 8))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if ((v37 & 0x8000000000000000) == 0 || (result = _sSS8MorpheusE3lenSiyF_0(), !__OFADD__(result, v37)))
  {
    sub_25A997F58();
    v38 = sub_25A998028();
    a4[3] = MEMORY[0x277D837D0];
    *a4 = v38;
    a4[1] = v39;
    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_25A918FEC(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v11 = a1;
  v31 = MEMORY[0x277D84F90];
  result = sub_25A937880(0, v7, 0);
  if (v7)
  {
    v13 = v11;
    while (1)
    {
      v14 = v13 <= a2;
      if (a3 > 0)
      {
        v14 = v13 >= a2;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v13, a3))
      {
        v11 = ((v13 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v11 = v13 + a3;
      }

      sub_25A997F58();
      result = sub_25A998028();
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        v28 = v15;
        v29 = result;
        sub_25A937880((v16 > 1), v17 + 1, 1);
        v15 = v28;
        result = v29;
      }

      *(v31 + 16) = v17 + 1;
      v18 = v31 + 16 * v17;
      *(v18 + 32) = result;
      *(v18 + 40) = v15;
      v13 = v11;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v19 = v11 <= a2;
    if (a3 > 0)
    {
      v19 = v11 >= a2;
    }

    if (!v19)
    {
      do
      {
        if (__OFADD__(v11, a3))
        {
          v20 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v11 + a3;
        }

        sub_25A997F58();
        v21 = sub_25A998028();
        v24 = *(v31 + 16);
        v23 = *(v31 + 24);
        if (v24 >= v23 >> 1)
        {
          v30 = v21;
          v27 = v22;
          sub_25A937880((v23 > 1), v24 + 1, 1);
          v22 = v27;
          v21 = v30;
        }

        *(v31 + 16) = v24 + 1;
        v25 = v31 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        v26 = v20 <= a2;
        if (a3 > 0)
        {
          v26 = v20 >= a2;
        }

        v11 = v20;
      }

      while (!v26);
    }

    return v31;
  }

  return result;
}

unint64_t sub_25A91921C()
{
  result = qword_27FA051E8;
  if (!qword_27FA051E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA051E0, &qword_25A9FCFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA051E8);
  }

  return result;
}

uint64_t sub_25A9192A8()
{
  if (qword_27FA04398 != -1)
  {
LABEL_35:
    swift_once();
  }

  v0 = qword_27FA0FCB0;
  v1 = qword_27FA0FCB0 + 64;
  v2 = 1 << *(qword_27FA0FCB0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_27FA0FCB0 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v34 = v0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
        }

        v4 = *(v1 + 8 * v8);
        ++v6;
        if (v4)
        {
          v6 = v8;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_13:
    v9 = __clz(__rbit64(v4)) | (v6 << 6);
    v10 = (*(v0 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_25A87500C(*(v0 + 56) + 32 * v9, v48);
    v46[0] = v12;
    v46[1] = v11;
    sub_25A872D74(v48, &v47);
    v13 = *(*(v35 + 16) + 32);
    sub_25A8952F0(v46, v44, &qword_27FA04E48, &qword_25A9FB8F0);
    v40[0] = v44[0];
    v40[1] = v44[1];

    sub_25A998578();
    sub_25A8952F0(v46, v40, &qword_27FA04E48, &qword_25A9FB8F0);

    sub_25A872D74(&v41, v42);
    sub_25A874FB0(v43, v39);
    sub_25A8952F0(v42, &v37, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (v38)
    {
      break;
    }

    sub_25A878194(&v37, &qword_27FA04458, &unk_25A9F7FB0);
    v25 = sub_25A8F35BC(v39);
    if (v26)
    {
      v27 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v13 + 16);
      v49 = v29;
      *(v13 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25A968DB8();
        v29 = v49;
      }

      sub_25A8795A0(*(v29 + 48) + 40 * v27);
      sub_25A872D74((*(v29 + 56) + 32 * v27), v36);
      sub_25A969C84(v27, v29);
      sub_25A8795A0(v39);
      *(v13 + 16) = v29;
    }

    else
    {
      sub_25A8795A0(v39);
      memset(v36, 0, sizeof(v36));
    }

    sub_25A878194(v36, &qword_27FA04458, &unk_25A9F7FB0);
LABEL_7:
    v4 &= v4 - 1;
    swift_endAccess();

    sub_25A878194(v42, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v43);
    sub_25A878194(v46, &qword_27FA04E48, &qword_25A9FB8F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  sub_25A872D74(&v37, v36);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v13 + 16);
  v15 = v49;
  *(v13 + 16) = 0x8000000000000000;
  v17 = sub_25A8F35BC(v39);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_33;
  }

  v21 = v16;
  if (v15[3] >= v20)
  {
    if (v14)
    {
      v24 = v49;
      if ((v16 & 1) == 0)
      {
LABEL_25:
        v24[(v17 >> 6) + 8] |= 1 << v17;
        sub_25A874FB0(v39, v24[6] + 40 * v17);
        sub_25A872D74(v36, (v24[7] + 32 * v17));
        sub_25A8795A0(v39);
        v30 = v24[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_34;
        }

        v24[2] = v32;
        goto LABEL_6;
      }
    }

    else
    {
      sub_25A968DB8();
      v24 = v49;
      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_5:
    v7 = (v24[7] + 32 * v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    sub_25A872D74(v36, v7);
    sub_25A8795A0(v39);
LABEL_6:
    *(v13 + 16) = v24;

    v0 = v34;
    goto LABEL_7;
  }

  sub_25A9679D0(v20, v14);
  v22 = sub_25A8F35BC(v39);
  if ((v21 & 1) == (v23 & 1))
  {
    v17 = v22;
    v24 = v49;
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  result = sub_25A998AA8();
  __break(1u);
  return result;
}

uint64_t sub_25A919744()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25A9197D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_25A998558(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_25A874FB0(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x25F850890](v10, a1);
      sub_25A8795A0(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_25A9198A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25A998B18();
  sub_25A997D58();
  v6 = sub_25A998B38();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25A9989E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25A9199A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25A998B18();
  sub_25A997D58();
  v6 = sub_25A998B38();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25A9989E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_25A919A98(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_25A91CAD4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_25A91CC18(v3, v4);
    }

    else
    {
      v6 = sub_25A91CB94(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_25A919B54(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v37[0] = a1;
  v37[1] = a2;
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05258, &qword_25A9FD180);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v38, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_25A997A98();
    v38[0] = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(&v41);
    goto LABEL_64;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_25A878194(v38, &qword_27FA05260, &qword_25A9FD188);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v38[0] = a1;
    *(&v38[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_25A91C464(v38, HIBYTE(a2) & 0xF, &v41);
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = sub_25A998708();
    }

    sub_25A91C464(v4, v5, &v41);
  }

  if (*(&v41 + 1) >> 60 != 15)
  {
    v38[0] = v41;
    goto LABEL_64;
  }

  v33 = *(&v41 + 1);
  v34 = v41;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_13:
  *&v38[0] = sub_25A91CE20(v6);
  *(&v38[0] + 1) = v7;
  MEMORY[0x28223BE20](*&v38[0]);
  v32[2] = v37;
  v8 = sub_25A91C52C(sub_25A91D118, v32);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = *(&v38[0] + 1) >> 62;
  if ((*(&v38[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v38[0] + 16);
      v16 = *(*&v38[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_71;
      }

      if (v11 != v19)
      {
        goto LABEL_24;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_61;
    }
  }

  else if (v15)
  {
    if (__OFSUB__(DWORD1(v38[0]), v38[0]))
    {
      goto LABEL_72;
    }

    if (v11 != DWORD1(v38[0]) - LODWORD(v38[0]))
    {
LABEL_24:
      if (v15 == 2)
      {
        v20 = *(*&v38[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&v38[0] >> 32;
      }

      else
      {
        v20 = BYTE14(v38[0]);
      }

LABEL_61:
      if (v20 >= v11)
      {
        sub_25A997B38();
LABEL_63:

        goto LABEL_64;
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }
  }

  else if (v11 != BYTE14(v38[0]))
  {
    goto LABEL_24;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v21 == v10 >> 14)
  {
    goto LABEL_58;
  }

  LOBYTE(v22) = 0;
  v23 = (v8 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v23) = 1;
  }

  v24 = 4 << v23;
  v35 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v36 = v9 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v25 = v14 & 0xC;
    v26 = v14;
    if (v25 == v24)
    {
      v26 = sub_25A979AA8(v14, v12, v13);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v21)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      v6 = sub_25A997FA8();
      v34 = 0;
      v33 = 0xF000000000000000;
      goto LABEL_13;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v29 = sub_25A997FD8();
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else if ((v13 & 0x2000000000000000) != 0)
    {
      *&v41 = v12;
      *(&v41 + 1) = v36;
      v29 = *(&v41 + v27);
      if (v25 != v24)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v28 = v35;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = sub_25A998708();
      }

      v29 = *(v28 + v27);
      if (v25 != v24)
      {
LABEL_47:
        if ((v13 & 0x1000000000000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      }
    }

    v14 = sub_25A979AA8(v14, v12, v13);
    if ((v13 & 0x1000000000000000) == 0)
    {
LABEL_48:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_53;
    }

LABEL_51:
    if (v21 <= v14 >> 16)
    {
      goto LABEL_67;
    }

    v14 = sub_25A997FB8();
LABEL_53:
    *(&v40 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_66;
    }

    if (v22 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_25A997B48();
      LOBYTE(v22) = 0;
    }
  }

  while (4 * v21 != v14 >> 14);
  if (v22)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_25A997B48();
    sub_25A8F7E3C(v34, v33);
    goto LABEL_63;
  }

LABEL_58:

  sub_25A8F7E3C(v34, v33);
LABEL_64:
  v30 = v38[0];
  sub_25A8F192C(*&v38[0], *(&v38[0] + 1));

  sub_25A8F1C54(v30, *(&v30 + 1));
  return v30;
}

void *sub_25A91A090()
{
  v0[2] = 1684632949;
  v0[3] = 0xE400000000000000;
  type metadata accessor for LexicalContext();
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[4] = v1;
  return v0;
}

uint64_t sub_25A91A17C()
{
  *(&v18 + 1) = MEMORY[0x277D837D0];
  *&v17 = 1145656661;
  *(&v17 + 1) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
  v0 = swift_allocObject();
  v0[1] = xmmword_25A9F8D80;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v1 = MEMORY[0x277D84F90];
  v2 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v3 = type metadata accessor for Function();
  v4 = swift_allocObject();
  v4[4] = v1;
  v4[5] = v1;
  v4[6] = v1;

  v4[7] = v1;

  v4[8] = v1;

  v4[9] = 0;
  v4[10] = 0;

  v4[11] = 0;
  v4[12] = 0;

  v4[13] = sub_25A92BDB4(v1);
  v4[2] = 1145656661;
  v4[3] = 0xE400000000000000;
  v5 = *(v4 + 5);
  v15[2] = *(v4 + 4);
  v15[3] = v5;
  v16 = v4[12];
  v6 = *(v4 + 3);
  v15[0] = *(v4 + 2);
  v15[1] = v6;
  v4[4] = &unk_286C0D2E8;
  v4[5] = v1;
  v4[6] = v1;
  v4[7] = v1;
  v4[8] = v0;
  *(v4 + 9) = 0u;
  *(v4 + 11) = 0u;
  sub_25A892B80(v15);
  swift_beginAccess();
  v4[13] = v2;

  v4[14] = sub_25A91C384;
  v4[15] = 0;
  v14 = v3;
  v13[0] = v4;
  LexicalContext.store(key:obj:)(&v17, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  __swift_destroy_boxed_opaque_existential_0Tm(&v17);
  v14 = MEMORY[0x277D837D0];
  v13[0] = 0x3464697575;
  v13[1] = 0xE500000000000000;
  v7 = sub_25A92BDB4(v1);
  v8 = swift_allocObject();
  v8[4] = v1;
  v8[5] = v1;
  v8[6] = v1;

  v8[7] = v1;

  v8[8] = v1;

  v8[9] = 0;
  v8[10] = 0;

  v8[11] = 0;
  v8[12] = 0;

  v8[13] = sub_25A92BDB4(v1);
  v8[2] = 0x3464697575;
  v8[3] = 0xE500000000000000;
  v9 = *(v8 + 5);
  v19 = *(v8 + 4);
  v20 = v9;
  v21 = v8[12];
  v10 = *(v8 + 3);
  v17 = *(v8 + 2);
  v18 = v10;
  v8[4] = v1;
  v8[5] = v1;
  v8[6] = v1;
  v8[7] = v1;
  v8[8] = v1;
  *(v8 + 9) = 0u;
  *(v8 + 11) = 0u;
  sub_25A892B80(&v17);
  swift_beginAccess();
  v8[13] = v7;

  v8[14] = sub_25A91C408;
  v8[15] = 0;
  v12[3] = v3;
  v12[0] = v8;
  LexicalContext.store(key:obj:)(v13, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

void sub_25A91A464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05218, &qword_25A9FD148);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_25A997BA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v11 = sub_25A8F3600(7890280, 0xE300000000000000);
  if ((v12 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v11, v32), (swift_dynamicCast() & 1) == 0))
  {
    if (*(a1 + 16))
    {
      v16 = sub_25A8F3600(0x7365747962, 0xE500000000000000);
      if (v17)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v16, v32);
        if (swift_dynamicCast())
        {
          v19 = v31[1];
          v18 = v31[2];
          *(a2 + 24) = v7;
          __swift_allocate_boxed_opaque_existential_0(a2);
          v20 = v18 >> 62;
          if ((v18 >> 62) > 1)
          {
            if (v20 != 2)
            {
              *&v32[6] = 0;
              *v32 = 0;
              v30 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
              sub_25A997B78();

              goto LABEL_27;
            }

            v25 = *(v19 + 16);
            v26 = *(v19 + 24);
            v27 = sub_25A997A08();
            if (v27)
            {
              v28 = sub_25A997A38();
              if (__OFSUB__(v25, v28))
              {
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v27 += v25 - v28;
            }

            if (!__OFSUB__(v26, v25))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (!v20)
            {
              *v32 = v19;
              *&v32[8] = v18;
              v32[10] = BYTE2(v18);
              v32[11] = BYTE3(v18);
              v32[12] = BYTE4(v18);
              v32[13] = BYTE5(v18);
              v21 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
              sub_25A997B78();

LABEL_27:
              sub_25A8F1C54(v19, v18);
              return;
            }

            if (v19 >> 32 >= v19)
            {
              v27 = sub_25A997A08();
              if (!v27)
              {
LABEL_25:
                sub_25A997A28();
                sub_25A91A9B4(v27);
                goto LABEL_27;
              }

              v29 = sub_25A997A38();
              if (!__OFSUB__(v19, v29))
              {
                v27 += v19 - v29;
                goto LABEL_25;
              }

LABEL_31:
              __break(1u);
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_30;
        }
      }
    }

LABEL_13:
    sub_25A874F54();
    swift_allocError();
    *v22 = -109;
    swift_willThrow();
    return;
  }

  v13 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v14 = sub_25A997E18();

  v15 = [v13 initWithUUIDString_];

  if (v15 && ((*(v8 + 56))(v6, 1, 1, v7), sub_25A91D0D0(&qword_27FA05220, MEMORY[0x277CC95F0], MEMORY[0x277CC9620]), sub_25A9988B8(), v15, (*(v8 + 48))(v6, 1, v7) != 1))
  {
    v23 = *(v8 + 32);
    v23(v10, v6, v7);
    *(a2 + 24) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    v23(boxed_opaque_existential_0, v10, v7);
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

void sub_25A91A998(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91A9A0);
  }

  _Unwind_Resume(a1);
}

void sub_25A91A9B4(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
  sub_25A997B78();
}

uint64_t sub_25A91AA18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04710, &unk_25A9FDC70);
  v0 = swift_allocObject();
  v29 = xmmword_25A9F8D90;
  *(v0 + 16) = xmmword_25A9F8D90;
  if (qword_27FA042D0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v1 = qword_27FA046A0;
  *(v0 + 56) = type metadata accessor for PyBuiltInClass();
  *(v0 + 64) = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass, &protocol conformance descriptor for PyBuiltInClass);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04798, &qword_25A9F8E60);
  inited = swift_initStackObject();
  *(inited + 16) = v29;
  *(inited + 32) = 0x5F5F7274735F5FLL;
  *(inited + 40) = 0xE700000000000000;

  v3 = MEMORY[0x277D84F90];
  v4 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v26 = type metadata accessor for Function();
  v5 = swift_allocObject();
  v5[4] = v3;
  v5[5] = v3;
  v5[6] = v3;

  v5[7] = v3;

  v5[8] = v3;

  v5[9] = 0;
  v5[10] = 0;

  v5[11] = 0;
  v5[12] = 0;

  v5[13] = sub_25A92BDB4(v3);
  v5[2] = 0x5F5F7274735F5FLL;
  v5[3] = 0xE700000000000000;
  v6 = *(v5 + 5);
  v32[2] = *(v5 + 4);
  v32[3] = v6;
  v33 = v5[12];
  v7 = *(v5 + 3);
  v32[0] = *(v5 + 2);
  v32[1] = v7;
  v5[4] = &unk_286C0B9F8;
  v5[5] = v3;
  v5[6] = v3;
  v5[7] = v3;
  v5[8] = v3;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  sub_25A892B80(v32);
  swift_beginAccess();
  v5[13] = v4;

  v5[14] = sub_25A91C358;
  v5[15] = 0;
  *(inited + 48) = v5;
  v8 = sub_25A98E67C(inited);
  swift_setDeallocating();
  sub_25A878194(inited + 32, &qword_27FA047A0, &qword_25A9F8E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
  v9 = swift_allocObject();
  *(v9 + 16) = v29;
  *(v9 + 32) = 0x7463656A626FLL;
  *(v9 + 40) = 0xE600000000000000;
  v10 = swift_allocObject();
  v10[10] = 0;
  v11 = sub_25A967378(1, 2, 1, v9);
  v31 = v11;
  sub_25A96B0BC(0, 0, 1, 1684632949, 0xE400000000000000);
  v10[2] = 1684632949;
  v10[3] = 0xE400000000000000;
  v10[4] = 1684632949;
  v10[5] = 0xE400000000000000;
  v10[6] = v0;
  v10[7] = v11;
  type metadata accessor for InlineBlock();
  swift_allocObject();
  v10[8] = sub_25A936284();
  v27 = v10;
  v10[9] = &off_286C11D08;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  swift_beginAccess();
  v15 = 0;
  v16 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      v20 = (*(v8 + 48) + 16 * v19);
      v21 = *v20;
      v0 = v20[1];
      v22 = *(*(v8 + 56) + 8 * v19);
      v23 = *(v27 + 72);
      ObjectType = swift_getObjectType();
      v30[3] = v26;
      v30[0] = v22;
      v28 = *(v23 + 64);
      *&v29 = ObjectType;
      swift_retain_n();

      swift_unknownObjectRetain();
      v28(v21, v0, v30, v29, v23);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v8 + 64 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  qword_27FA0FCE0 = v27;
  return result;
}

uint64_t sub_25A91AEB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05218, &qword_25A9FD148);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_25A997BA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16) && (v11 = sub_25A8F3600(1718379891, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v11, v18);
    v13 = swift_dynamicCast();
    (*(v8 + 56))(v6, v13 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = sub_25A997B68();
      a2[3] = MEMORY[0x277D837D0];
      *a2 = v14;
      a2[1] = v15;
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_25A878194(v6, &qword_27FA05218, &qword_25A9FD148);
  sub_25A874F54();
  swift_allocError();
  *v17 = -106;
  return swift_willThrow();
}

uint64_t sub_25A91B114()
{

  return swift_deallocClassInstance();
}

uint64_t UUID.__class__.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA043B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FCE0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass, &protocol conformance descriptor for PyBuiltInClass);
  *a1 = v2;
}

double UUID.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1 == 0x7365747962 && a2 == 0xE500000000000000;
  if (v4 || (sub_25A9989E8() & 1) != 0)
  {
    v5 = sub_25A997B88();
    *(a3 + 24) = MEMORY[0x277CC9318];
    v9[0] = v5;
    v9[1] = v6;
    *a3 = sub_25A919A98(v9, &v10);
    *(a3 + 8) = v7;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Bool __swiftcall UUID.has(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v3 = sub_25A91CC94(&unk_286C0D5A8);
  sub_25A873BC0(&unk_286C0D5C8);
  v4 = sub_25A9198A8(countAndFlagsBits, object, v3);

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_25A91BFB0();
    swift_beginAccess();
    v7 = *(v6 + 16);

    if (*(v7 + 16))
    {
      sub_25A8F3600(countAndFlagsBits, object);
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_25A91B3EC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA043B8 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA0FCE0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A91D0D0(&qword_27FA04718, type metadata accessor for PyBuiltInClass, &protocol conformance descriptor for PyBuiltInClass);
  *a1 = v2;
}

uint64_t sub_25A91B4A0()
{
  *&v10 = type metadata accessor for SharedMutableSet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05278, &qword_25A9FD198);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05280, &qword_25A9FD1A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05280, &qword_25A9FD1A0);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7CC(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91B674()
{
  *&v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05228, &qword_25A9FD150);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05230, &qword_25A9FD158);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05230, &qword_25A9FD158);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7E0(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91B854()
{
  *&v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05238, &qword_25A9FD160);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05240, &qword_25A9FD168);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05240, &qword_25A9FD168);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E7F4(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BA34()
{
  *&v10 = type metadata accessor for MLXArray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F0, &qword_25A9FD120);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F8, &qword_25A9FD128);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA051F8, &qword_25A9FD128);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E808(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BC08()
{
  *&v10 = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05248, &qword_25A9FD170);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05250, &qword_25A9FD178);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05250, &qword_25A9FD178);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E81C(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BDDC()
{
  *&v10 = sub_25A873A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A0, &qword_25A9FD1C0);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A8, &qword_25A9FD1C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA052A8, &qword_25A9FD1C8);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98E830(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91BFB0()
{
  *&v10 = sub_25A997BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05288, &qword_25A9FD1A8);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05290, &qword_25A9FD1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05290, &qword_25A9FD1B0);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98ECA0(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91C184()
{
  *&v10 = type metadata accessor for PyLogger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05200, &qword_25A9FD130);
  v0 = sub_25A997EA8();
  v2 = v1;
  if (qword_27FA04408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_27FA05930;
  if (*(off_27FA05930 + 2) && (v4 = sub_25A8F3600(v0, v2), (v5 & 1) != 0))
  {
    sub_25A87500C(v3[7] + 32 * v4, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  swift_endAccess();
  if (!*(&v11 + 1))
  {
    sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05208, &qword_25A9FD138);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05208, &qword_25A9FD138);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_25A98ECB4(MEMORY[0x277D84F90]);
    *(&v11 + 1) = v7;
    *&v10 = v6;
    swift_beginAccess();

    sub_25A8F2ED0(&v10, v0, v2);
    swift_endAccess();
    return v6;
  }

  return v9;
}

uint64_t sub_25A91C3B0(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

uint64_t sub_25A91C408@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_25A936F00(a2);
  a1[3] = sub_25A997BA8();
  __swift_allocate_boxed_opaque_existential_0(a1);
  sub_25A997B98();
}

unint64_t sub_25A91C464@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25A91CAD4(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25A997A58();
      swift_allocObject();
      v8 = sub_25A9979F8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25A997B28();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_25A91C52C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25A8F1C54(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25A8F1C54(v7, v6);
    *v4 = xmmword_25A9F8DC0;
    sub_25A8F1C54(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25A997A08() && __OFSUB__(v7, sub_25A997A38()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25A997A58();
      swift_allocObject();
      v14 = sub_25A9979E8();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25A91C9D0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25A8F1C54(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25A9F8DC0;
    sub_25A8F1C54(0, 0xC000000000000000);
    sub_25A997AD8();
    result = sub_25A91C9D0(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_25A91C8D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25A91CAD4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25A91CC18(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25A91CB94(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25A91C964(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25A91C9D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25A997A08();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25A997A38();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25A997A28();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25A91CA84@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25A998608();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25A91CAD4(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_25A973EEC(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25A91CB94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25A997A58();
  swift_allocObject();
  result = sub_25A9979F8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25A91CC18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25A997A58();
  swift_allocObject();
  result = sub_25A9979F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25A997B28();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25A91CC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05298, &qword_25A9FD1B8);
    v3 = sub_25A9985A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25A998B18();

      sub_25A997D58();
      result = sub_25A998B38();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_25A9989E8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25A91CE20(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_25A973EEC(result);
    }

    else
    {
      sub_25A997A58();
      swift_allocObject();
      sub_25A997A18();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25A997B28();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25A91CEC0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05268, &qword_25A9FD190);
  v10 = sub_25A91D1A0();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25A91C8D0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_25A91CF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05210, &qword_25A9FD140);
    v3 = sub_25A9985A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25A998B18();
      sub_25A997D58();
      result = sub_25A998B38();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 == v9 && v14[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_25A9989E8();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25A91D0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_25A91D118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25A91C964(sub_25A91D180, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_25A91D1A0()
{
  result = qword_27FA05270;
  if (!qword_27FA05270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA05268, &qword_25A9FD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05270);
  }

  return result;
}

uint64_t sub_25A91D214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65726F7473;
  if (v2 != 1)
  {
    v4 = 7103844;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684107116;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65726F7473;
  if (*a2 != 1)
  {
    v8 = 7103844;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684107116;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A91D2F8()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A91D388(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A91D404(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A91D490@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A91D614(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A91D4C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65726F7473;
  if (v2 != 1)
  {
    v5 = 7103844;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684107116;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25A91D5C0()
{
  result = qword_27FA052B0;
  if (!qword_27FA052B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052B0);
  }

  return result;
}

unint64_t sub_25A91D614(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25A91D660()
{
  result = qword_27FA052B8;
  if (!qword_27FA052B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA052B8);
  }

  return result;
}

uint64_t Int.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    sub_25A87500C(a1, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if (!swift_dynamicCast())
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_25A878194(&v43, &qword_27FA047C8, &qword_25A9F8E88);
      if (a2 == a2)
      {
        mlx_array_new_int(a2);
      }

      goto LABEL_54;
    }

    v41 = a3;
    sub_25A87817C(&v43, v47);
    v7 = v48;
    v3 = v49;
    v8 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v42 = v39;
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_38;
    }

    *&v43 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 64)
      {
LABEL_37:
        sub_25A9984B8();
        goto LABEL_38;
      }
    }

    else
    {
      v28 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v28 & 1) == 0)
      {
        if (v11 < 64)
        {
          goto LABEL_37;
        }

LABEL_38:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_48;
        }

        *&v43 = 0x7FFFFFFFFFFFFFFFLL;
        v34 = sub_25A9984D8();
        v35 = sub_25A9984C8();
        if (v34)
        {
          if (v35 >= 65)
          {
            goto LABEL_47;
          }
        }

        else if (v35 >= 64)
        {
LABEL_47:
          MEMORY[0x28223BE20](v35);
          sub_25A895280();
          sub_25A9984A8();
          v36 = sub_25A997D88();
          (*(v9 + 8))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v36 & 1) == 0)
          {
            goto LABEL_48;
          }

          __break(1u);
LABEL_57:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_48:
        v37 = sub_25A9984B8();
        (*(v9 + 8))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((a2 * v37) >> 64 != (a2 * v37) >> 63)
        {
          goto LABEL_55;
        }

        v38 = v41;
        v41[3] = MEMORY[0x277D83B88];
        *v38 = a2 * v37;
        return __swift_destroy_boxed_opaque_existential_0Tm(v47);
      }

      if (v11 <= 64)
      {
        v40 = *(*(v3 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v39[1] = v39;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v32 = v39 - v31;
        swift_getAssociatedConformanceWitness();
        v39[2] = v32;
        v33 = sub_25A998A78();
        v39[0] = v39;
        MEMORY[0x28223BE20](v33);
        sub_25A9989C8();
        LOBYTE(v32) = sub_25A997D88();
        (*(v9 + 8))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v32)
        {
          goto LABEL_57;
        }

        goto LABEL_37;
      }
    }

    v40 = v39;
    MEMORY[0x28223BE20](v11);
    sub_25A895280();
    sub_25A9984A8();
    v29 = sub_25A997D88();
    (*(v9 + 8))(v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v29)
    {
      goto LABEL_57;
    }

    goto LABEL_38;
  }

  sub_25A87500C(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_25A878194(&v43, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v23 = 15;
    return swift_willThrow();
  }

  sub_25A87817C(&v43, v47);
  v12 = v48;
  v13 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v14 = (*(v13 + 8))(v12, v13);
  if (a2 >= 1)
  {
    v3 = *(v14 + 16);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 + 2);
      v17 = v16 + v3;
      if (__OFADD__(v16, v3))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        swift_once();
        sub_25A998C58();
        v27 = v47[0];
        v47[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v47, a2, *(v3 + 16), *(v27 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v15 + 3) >> 1)
      {
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v3;
        }

        else
        {
          v19 = v16;
        }

        v15 = sub_25A967488(isUniquelyReferenced_nonNull_native, v19, 1, v15);
        if (!v3)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v15 + 3) >> 1) - *(v15 + 2) < v3)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      v20 = *(v15 + 2);
      v21 = __OFADD__(v20, v3);
      v22 = v20 + v3;
      if (v21)
      {
        goto LABEL_53;
      }

      *(v15 + 2) = v22;
LABEL_12:
      if (!--a2)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_29:

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  a3[3] = v25;
  *a3 = v26;
  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

void sub_25A91E10C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91E114);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.mul(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (!swift_dynamicCast())
  {
    sub_25A87500C(a1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_25A878194(&v45, &qword_27FA04728, &unk_25A9FD740);
      sub_25A874F54();
      swift_allocError();
      *v26 = 15;
      return swift_willThrow();
    }

    sub_25A87817C(&v45, v49);
    v13 = v50;
    v14 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v15 = (v14[1])(v13, v14);
    if (a2 < 1)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_29:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v28 = swift_allocObject();
      *(v28 + 16) = v16;
      a3[3] = v27;
      *a3 = v28;
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    }

    v8 = *(v15 + 16);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v16 + 2);
      v18 = v8 + v17;
      if (__OFADD__(v17, v8))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        swift_once();
LABEL_31:
        sub_25A998C58();
        v29 = v49[0];
        v49[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v49, a2, v8[2], *(v29 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v16 + 3) >> 1)
      {
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v8 + v17;
        }

        else
        {
          v20 = v17;
        }

        v16 = sub_25A967488(isUniquelyReferenced_nonNull_native, v20, 1, v16);
        if (!v8)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v8)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      v21 = *(v16 + 2);
      v22 = __OFADD__(v21, v8);
      v23 = v8 + v21;
      if (v22)
      {
        goto LABEL_55;
      }

      *(v16 + 2) = v23;
LABEL_12:
      if (!--a2)
      {
        goto LABEL_29;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  sub_25A87500C(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v43 = a3;
    sub_25A87817C(&v45, v49);
    v7 = v50;
    v8 = v51;
    v9 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v44 = v41;
    v10 = *(v7 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    (*(v10 + 16))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_40;
    }

    *&v45 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 < 64)
      {
LABEL_39:
        sub_25A9984B8();
        goto LABEL_40;
      }
    }

    else
    {
      v30 = sub_25A9984D8();
      v12 = sub_25A9984C8();
      if ((v30 & 1) == 0)
      {
        if (v12 < 64)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_50;
        }

        *&v45 = 0x7FFFFFFFFFFFFFFFLL;
        v36 = sub_25A9984D8();
        v37 = sub_25A9984C8();
        if (v36)
        {
          if (v37 >= 65)
          {
            goto LABEL_49;
          }
        }

        else if (v37 >= 64)
        {
LABEL_49:
          MEMORY[0x28223BE20](v37);
          sub_25A8DF900();
          sub_25A9984A8();
          v38 = sub_25A997D88();
          (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v38 & 1) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
LABEL_59:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_50:
        v39 = sub_25A9984B8();
        (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((a2 * v39) >> 64 != (a2 * v39) >> 63)
        {
          goto LABEL_56;
        }

        v40 = v43;
        v43[3] = MEMORY[0x277D84A28];
        *v40 = a2 * v39;
        return __swift_destroy_boxed_opaque_existential_0Tm(v49);
      }

      if (v12 <= 64)
      {
        v42 = *(v8[3] + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v41[1] = v41;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v34 = v41 - v33;
        swift_getAssociatedConformanceWitness();
        v41[2] = v34;
        v35 = sub_25A998A78();
        v41[0] = v41;
        MEMORY[0x28223BE20](v35);
        sub_25A9989C8();
        LOBYTE(v34) = sub_25A997D88();
        (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v34)
        {
          goto LABEL_59;
        }

        goto LABEL_39;
      }
    }

    v42 = v41;
    MEMORY[0x28223BE20](v12);
    sub_25A8DF900();
    sub_25A9984A8();
    v31 = sub_25A997D88();
    (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v31)
    {
      goto LABEL_59;
    }

    goto LABEL_40;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25A878194(&v45, &qword_27FA047C8, &qword_25A9F8E88);
  v49[0] = a2;
  a2 = mlx_array_new_data(v49, (MEMORY[0x277D84F90] + 32), 0, 8);
  v24 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v24;
    if (qword_27FA043D8 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_31;
  }

  return mlx_array_free(a2);
}

void sub_25A91EBC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91EBC8);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.mul(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    sub_25A87500C(a1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if (!swift_dynamicCast())
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_25A878194(&v44, &qword_27FA047C8, &qword_25A9F8E88);
      mlx_array_new_int(a2);
    }

    v42 = a3;
    sub_25A87817C(&v44, v48);
    v6 = v49;
    v7 = v50;
    v8 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v43 = v40;
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    (*(v9 + 16))(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
    {
      goto LABEL_37;
    }

    LODWORD(v44) = 0x80000000;
    if (sub_25A9984D8())
    {
      v11 = sub_25A9984C8();
      if (v11 < 32)
      {
LABEL_36:
        sub_25A9984B8();
        goto LABEL_37;
      }
    }

    else
    {
      v28 = sub_25A9984D8();
      v11 = sub_25A9984C8();
      if ((v28 & 1) == 0)
      {
        if (v11 < 32)
        {
          goto LABEL_36;
        }

LABEL_37:
        if (sub_25A9984C8() <= 32 && (sub_25A9984C8() != 32 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_47;
        }

        LODWORD(v44) = 0x7FFFFFFF;
        v34 = sub_25A9984D8();
        v35 = sub_25A9984C8();
        if (v34)
        {
          if (v35 >= 33)
          {
            goto LABEL_46;
          }
        }

        else if (v35 >= 32)
        {
LABEL_46:
          MEMORY[0x28223BE20](v35);
          sub_25A8DF954();
          sub_25A9984A8();
          v36 = sub_25A997D88();
          (*(v9 + 8))(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          if ((v36 & 1) == 0)
          {
            goto LABEL_47;
          }

          __break(1u);
LABEL_55:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_47:
        v37 = sub_25A9984B8();
        (*(v9 + 8))(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v38 = v37 * a2;
        if (v38 != v38)
        {
          goto LABEL_53;
        }

        v39 = v42;
        v42[3] = MEMORY[0x277D849A8];
        *v39 = v38;
        return __swift_destroy_boxed_opaque_existential_0Tm(v48);
      }

      if (v11 <= 32)
      {
        v41 = *(*(v7 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v40[1] = v40;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v32 = v40 - v31;
        swift_getAssociatedConformanceWitness();
        v40[2] = v32;
        v33 = sub_25A998A78();
        v40[0] = v40;
        MEMORY[0x28223BE20](v33);
        sub_25A9989C8();
        LOBYTE(v32) = sub_25A997D88();
        (*(v9 + 8))(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v32)
        {
          goto LABEL_55;
        }

        goto LABEL_36;
      }
    }

    v41 = v40;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF954();
    sub_25A9984A8();
    v29 = sub_25A997D88();
    (*(v9 + 8))(v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v29)
    {
      goto LABEL_55;
    }

    goto LABEL_37;
  }

  sub_25A87500C(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_25A878194(&v44, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v23 = 15;
    return swift_willThrow();
  }

  sub_25A87817C(&v44, v48);
  v12 = v49;
  v13 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v14 = (*(v13 + 8))(v12, v13);
  if (a2 >= 1)
  {
    v7 = a2;
    a2 = *(v14 + 16);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = *(v15 + 2);
      v17 = a2 + v16;
      if (__OFADD__(v16, a2))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        swift_once();
        sub_25A998C58();
        v27 = v48[0];
        v48[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v48, a2, *(v7 + 16), *(v27 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v15 + 3) >> 1)
      {
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = a2 + v16;
        }

        else
        {
          v19 = v16;
        }

        v15 = sub_25A967488(isUniquelyReferenced_nonNull_native, v19, 1, v15);
        if (!a2)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v15 + 3) >> 1) - *(v15 + 2) < a2)
      {
        goto LABEL_51;
      }

      swift_arrayInitWithCopy();

      v20 = *(v15 + 2);
      v21 = __OFADD__(v20, a2);
      v22 = a2 + v20;
      if (v21)
      {
        goto LABEL_52;
      }

      *(v15 + 2) = v22;
LABEL_12:
      if (!--v7)
      {
        goto LABEL_28;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_28:

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  a3[3] = v25;
  *a3 = v26;
  return __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

void sub_25A91F65C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A91F664);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.mul(_:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  LODWORD(v4) = a2;
  v52 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
  if (!swift_dynamicCast())
  {
    sub_25A87500C(a1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
    if (!swift_dynamicCast())
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_25A878194(&v45, &qword_27FA04728, &unk_25A9FD740);
      sub_25A874F54();
      swift_allocError();
      *v26 = 15;
      return swift_willThrow();
    }

    sub_25A87817C(&v45, v49);
    v13 = v50;
    v14 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v15 = (v14[1])(v13, v14);
    if (!v4)
    {
      v16 = MEMORY[0x277D84F90];
LABEL_29:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      v28 = swift_allocObject();
      *(v28 + 16) = v16;
      a3[3] = v27;
      *a3 = v28;
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    }

    v8 = v4;
    v4 = *(v15 + 16);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v16 + 2);
      v18 = v17 + v4;
      if (__OFADD__(v17, v4))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        swift_once();
LABEL_31:
        sub_25A998C58();
        v29 = v49[0];
        v49[0] = mlx_array_new();
        swift_beginAccess();
        mlx_multiply(v49, v4, *(v8 + 16), *(v29 + 16));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v16 + 3) >> 1)
      {
        if (!v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v4;
        }

        else
        {
          v20 = v17;
        }

        v16 = sub_25A967488(isUniquelyReferenced_nonNull_native, v20, 1, v16);
        if (!v4)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v4)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      v21 = *(v16 + 2);
      v22 = __OFADD__(v21, v4);
      v23 = v21 + v4;
      if (v22)
      {
        goto LABEL_55;
      }

      *(v16 + 2) = v23;
LABEL_12:
      if (!--v8)
      {
        goto LABEL_29;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  sub_25A87500C(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (swift_dynamicCast())
  {
    v43 = a3;
    sub_25A87817C(&v45, v49);
    v7 = v50;
    v8 = v51;
    v9 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v44 = v41;
    v10 = *(v7 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    (*(v10 + 16))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_40;
    }

    *&v45 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 < 64)
      {
LABEL_39:
        sub_25A9984B8();
        goto LABEL_40;
      }
    }

    else
    {
      v30 = sub_25A9984D8();
      v12 = sub_25A9984C8();
      if ((v30 & 1) == 0)
      {
        if (v12 < 64)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_50;
        }

        *&v45 = 0x7FFFFFFFFFFFFFFFLL;
        v36 = sub_25A9984D8();
        v37 = sub_25A9984C8();
        if (v36)
        {
          if (v37 >= 65)
          {
            goto LABEL_49;
          }
        }

        else if (v37 >= 64)
        {
LABEL_49:
          MEMORY[0x28223BE20](v37);
          sub_25A8DF900();
          sub_25A9984A8();
          v38 = sub_25A997D88();
          (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v38 & 1) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
LABEL_59:
          __break(1u);
        }

        sub_25A9984B8();
LABEL_50:
        v39 = sub_25A9984B8();
        v4 = v4;
        (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((v4 * v39) >> 64 != (v4 * v39) >> 63)
        {
          goto LABEL_56;
        }

        v40 = v43;
        v43[3] = MEMORY[0x277D84A28];
        *v40 = v4 * v39;
        return __swift_destroy_boxed_opaque_existential_0Tm(v49);
      }

      if (v12 <= 64)
      {
        v42 = *(*(v8 + 24) + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v41[1] = v41;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v34 = v41 - v33;
        swift_getAssociatedConformanceWitness();
        v41[2] = v34;
        v35 = sub_25A998A78();
        v41[0] = v41;
        MEMORY[0x28223BE20](v35);
        sub_25A9989C8();
        LOBYTE(v34) = sub_25A997D88();
        (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v34)
        {
          goto LABEL_59;
        }

        goto LABEL_39;
      }
    }

    v42 = v41;
    MEMORY[0x28223BE20](v12);
    sub_25A8DF900();
    sub_25A9984A8();
    v31 = sub_25A997D88();
    (*(v10 + 8))(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v31)
    {
      goto LABEL_59;
    }

    goto LABEL_40;
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_25A878194(&v45, &qword_27FA047C8, &qword_25A9F8E88);
  LODWORD(v49[0]) = v4;
  v4 = mlx_array_new_data(v49, (MEMORY[0x277D84F90] + 32), 0, 3);
  v24 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v24;
    if (qword_27FA043D8 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_31;
  }

  return mlx_array_free(v4);
}

void sub_25A920114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A92011CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.mul(_:)(void *a1, float a3)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v5 = mlx_array_new_float(a3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v5;
  v6 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v6;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_multiply(v10, v5, v8[2], *(v9 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v5);
}

void sub_25A92033C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920344);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.mul(_:)(void *a1, double a3)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mlx_array_new_float(v5);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v9 = v7;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v11[0];
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_multiply(v11, v6, v9[2], *(v10 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v6);
}

void sub_25A920558(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920560);
  }

  _Unwind_Resume(a1);
}

void *sub_25A920598(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  result = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8[0] = mlx_array_new();
    swift_beginAccess();
    v6 = *(v2 + 16);
    swift_beginAccess();
    mlx_multiply(v8, v6, v5[2], *(v7 + 16));
  }

  return result;
}

void sub_25A920700(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A920708);
  }

  _Unwind_Resume(a1);
}

char *Array.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  sub_25A87500C(a1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_25A878194(v46, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v19 = 15;
    return swift_willThrow();
  }

  v45 = a4;
  sub_25A87817C(v46, v49);
  v9 = Array.anyArray.getter(a2, a3);
  v10 = v50;
  v11 = v51;
  v12 = __swift_project_boxed_opaque_existential_1(v49, v50);
  v52 = v42;
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v46[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v16 = sub_25A9984C8();
      if (v16 >= 64)
      {
        v43 = v42;
        MEMORY[0x28223BE20](v16);
        v44 = v4;
        sub_25A895280();
        sub_25A9984A8();
        v17 = sub_25A997D88();
        v5 = v44;
        result = (*(v13 + 8))(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
        if (v17)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

LABEL_14:
      sub_25A9984B8();
      goto LABEL_17;
    }

    v44 = v4;
    v20 = sub_25A9984D8();
    v21 = sub_25A9984C8();
    if ((v20 & 1) == 0)
    {
      v5 = v44;
      if (v21 >= 64)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (v21 <= 64)
    {
      v43 = *(*(v11 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v42[2] = v42;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v42[0] = v42 - v24;
      swift_getAssociatedConformanceWitness();
      v25 = sub_25A998A78();
      v42[1] = v42;
      MEMORY[0x28223BE20](v25);
      sub_25A9989C8();
      v26 = sub_25A997D88();
      result = (*(v13 + 8))(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      if (v26)
      {
        goto LABEL_48;
      }

      sub_25A9984B8();
      v5 = v44;
    }

    else
    {
      v43 = v42;
      MEMORY[0x28223BE20](v21);
      sub_25A895280();
      sub_25A9984A8();
      v22 = sub_25A997D88();
      result = (*(v13 + 8))(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      v5 = v44;
      if (v22)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v44 = v5;
    *&v46[0] = 0x7FFFFFFFFFFFFFFFLL;
    v27 = sub_25A9984D8();
    v28 = sub_25A9984C8();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    MEMORY[0x28223BE20](v28);
    v14 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v29 = sub_25A997D88();
    (*(v13 + 8))(v14, v10);
    v5 = v44;
    if (v29)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v28 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
LABEL_27:
  v30 = sub_25A9984B8();
  result = (*(v13 + 8))(v15, v10);
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_44:

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
    v40 = swift_allocObject();
    *(v40 + 16) = v32;
    v41 = v45;
    v45[3] = v39;
    *v41 = v40;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v31 = *(v9 + 16);
  v32 = MEMORY[0x277D84F90];
  while (2)
  {
    v33 = *(v32 + 2);
    v34 = v33 + v31;
    if (!__OFADD__(v33, v31))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v34 <= *(v32 + 3) >> 1)
      {
        if (!v31)
        {
          goto LABEL_29;
        }

LABEL_40:
        if ((*(v32 + 3) >> 1) - *(v32 + 2) < v31)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v36 = *(v32 + 2);
        v37 = __OFADD__(v36, v31);
        v38 = v36 + v31;
        if (v37)
        {
          goto LABEL_47;
        }

        *(v32 + 2) = v38;
      }

      else
      {
        if (v33 <= v34)
        {
          v35 = v33 + v31;
        }

        else
        {
          v35 = v33;
        }

        result = sub_25A967488(result, v35, 1, v32);
        v32 = result;
        if (v31)
        {
          goto LABEL_40;
        }

LABEL_29:
      }

      if (!--v30)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

char *sub_25A920F88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_25A87500C(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_25A878194(v51, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v22 = 15;
    return swift_willThrow();
  }

  v48 = a3;
  v49 = a4;
  v50 = a5;
  v57 = v5;
  v10 = sub_25A87817C(v51, v54);
  v11 = a2(v10);
  v12 = v55;
  v13 = v56;
  v14 = __swift_project_boxed_opaque_existential_1(v54, v55);
  v15 = v45;
  v16 = *(v12 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v51[0] = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v19 = sub_25A9984C8();
      if (v19 >= 64)
      {
        v46 = v45;
        MEMORY[0x28223BE20](v19);
        v47 = v45;
        sub_25A895280();
        sub_25A9984A8();
        v20 = sub_25A997D88();
        v15 = v47;
        result = (*(v16 + 8))(v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
        if (v20)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

LABEL_14:
      sub_25A9984B8();
      goto LABEL_17;
    }

    v47 = v45;
    v23 = sub_25A9984D8();
    v24 = sub_25A9984C8();
    if ((v23 & 1) == 0)
    {
      v15 = v47;
      if (v24 >= 64)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (v24 <= 64)
    {
      v46 = *(*(v13 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v45[2] = v45;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v45[0] = v45 - v27;
      swift_getAssociatedConformanceWitness();
      v28 = sub_25A998A78();
      v45[1] = v45;
      MEMORY[0x28223BE20](v28);
      sub_25A9989C8();
      v29 = sub_25A997D88();
      result = (*(v16 + 8))(v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      if (v29)
      {
        goto LABEL_48;
      }

      sub_25A9984B8();
      v15 = v47;
    }

    else
    {
      v46 = v45;
      MEMORY[0x28223BE20](v24);
      sub_25A895280();
      sub_25A9984A8();
      v25 = sub_25A997D88();
      result = (*(v16 + 8))(v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      v15 = v47;
      if (v25)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v47 = v15;
    *&v51[0] = 0x7FFFFFFFFFFFFFFFLL;
    v30 = sub_25A9984D8();
    v31 = sub_25A9984C8();
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (v31 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    MEMORY[0x28223BE20](v31);
    v17 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v32 = sub_25A997D88();
    (*(v16 + 8))(v17, v12);
    v15 = v47;
    if (v32)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v31 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
LABEL_27:
  v33 = sub_25A9984B8();
  result = (*(v16 + 8))(v18, v12);
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_44:

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
    v43 = swift_allocObject();
    *(v43 + 16) = v35;
    v44 = v50;
    v50[3] = v42;
    *v44 = v43;
    return __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  v34 = *(v11 + 16);
  v35 = MEMORY[0x277D84F90];
  while (2)
  {
    v36 = *(v35 + 2);
    v37 = v36 + v34;
    if (!__OFADD__(v36, v34))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v37 <= *(v35 + 3) >> 1)
      {
        if (!v34)
        {
          goto LABEL_29;
        }

LABEL_40:
        if ((*(v35 + 3) >> 1) - *(v35 + 2) < v34)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v39 = *(v35 + 2);
        v40 = __OFADD__(v39, v34);
        v41 = v39 + v34;
        if (v40)
        {
          goto LABEL_47;
        }

        *(v35 + 2) = v41;
      }

      else
      {
        if (v36 <= v37)
        {
          v38 = v36 + v34;
        }

        else
        {
          v38 = v36;
        }

        result = sub_25A967488(result, v38, 1, v35);
        v35 = result;
        if (v34)
        {
          goto LABEL_40;
        }

LABEL_29:
      }

      if (!--v33)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t String.mul(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_25A878194(v35, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v16 = 15;
    return swift_willThrow();
  }

  v34 = a2;
  v41 = a3;
  sub_25A87817C(v35, v38);
  v7 = v39;
  v8 = v40;
  v9 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v10 = v31;
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v35[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v13 = sub_25A9984C8();
    if (v13 >= 64)
    {
      v32 = v31;
      MEMORY[0x28223BE20](v13);
      v33 = a4;
      sub_25A895280();
      sub_25A9984A8();
      v14 = sub_25A997D88();
      v10 = v31;
      a4 = v33;
      result = (*(v11 + 8))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v33 = v31;
  v17 = sub_25A9984D8();
  v18 = sub_25A9984C8();
  if (v17)
  {
    if (v18 <= 64)
    {
      v32 = *(*(v8 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v31[2] = v31;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v31[0] = v31 - v21;
      swift_getAssociatedConformanceWitness();
      v22 = sub_25A998A78();
      v31[1] = v31;
      MEMORY[0x28223BE20](v22);
      sub_25A9989C8();
      v23 = sub_25A997D88();
      result = (*(v11 + 8))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v23)
      {
LABEL_31:
        __break(1u);
        return result;
      }

      sub_25A9984B8();
      v10 = v33;
    }

    else
    {
      v32 = v31;
      MEMORY[0x28223BE20](v18);
      sub_25A895280();
      sub_25A9984A8();
      v19 = sub_25A997D88();
      result = (*(v11 + 8))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v10 = v33;
      if (v19)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_17;
  }

  v10 = v33;
  if (v18 < 64)
  {
LABEL_14:
    sub_25A9984B8();
  }

LABEL_17:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = a4;
    v24 = v10;
    *&v35[0] = 0x7FFFFFFFFFFFFFFFLL;
    v25 = sub_25A9984D8();
    v26 = sub_25A9984C8();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    v32 = v31;
    MEMORY[0x28223BE20](v26);
    sub_25A895280();
    sub_25A9984A8();
    v27 = sub_25A997D88();
    (*(v11 + 8))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v10 = v24;
    a4 = v33;
    if (v27)
    {
      __break(1u);
LABEL_22:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v26 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_25A9984B8();
  a4 = v33;
LABEL_27:
  v28 = sub_25A9984B8();
  (*(v11 + 8))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  if (v28 < 1)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {

    v29 = sub_25A998008();
  }

  a4[3] = MEMORY[0x277D837D0];
  *a4 = v29;
  a4[1] = v30;
  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t sub_25A921E58()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_25A921EB4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04300 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046D0;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

void *PyInstanceBoundMethod.__allocating_init(instance:function:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_25A922324(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v8;
}

void *PyInstanceBoundMethod.init(instance:function:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_25A9222AC(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v11;
}

uint64_t sub_25A9220A8(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[2];
  v14 = type metadata accessor for PyInstance();
  *&v13 = v6;
  sub_25A872D74(&v13, v12);
  v7 = *(a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = a1;
  if (!isUniquelyReferenced_nonNull_native || v7 >= *(a1 + 3) >> 1)
  {
    a1 = sub_25A967488(isUniquelyReferenced_nonNull_native, v7 + 1, 1, a1);
    v15 = a1;
  }

  sub_25A96AFC0(0, 0, 1, v12);
  v9 = v3[6];
  v10 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v9);
  (*(v10 + 16))(a1, a2, v9, v10);
}

uint64_t PyInstanceBoundMethod.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t PyInstanceBoundMethod.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25A922230()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 8))(v1, v2);
}

void *sub_25A9222AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  a3[2] = a1;
  return a3;
}

void *sub_25A922324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PyInstanceBoundMethod();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v12[6] = a4;
  v12[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12 + 3);
  (*(v9 + 32))(boxed_opaque_existential_0, v11, a4);
  v12[2] = a1;
  return v12;
}

uint64_t Int.add(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_25A878194(v28, &qword_27FA047C8, &qword_25A9F8E88);
    if (a2 == a2)
    {
      mlx_array_new_int(a2);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v31[0];
    v31[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v31, a2, *(v3 + 16), *(v11 + 16));
  }

  v26 = a3;
  sub_25A87817C(v28, v31);
  v6 = v32;
  v3 = v33;
  v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v27 = v24;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v28[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v25 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24[1] = v24;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v16 = v24 - v15;
      swift_getAssociatedConformanceWitness();
      v24[2] = v16;
      v17 = sub_25A998A78();
      v24[0] = v24;
      MEMORY[0x28223BE20](v17);
      sub_25A9989C8();
      LOBYTE(v16) = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v16)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

LABEL_11:
    v25 = v24;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = sub_25A997D88();
    (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v28[0] = 0x7FFFFFFFFFFFFFFFLL;
    v18 = sub_25A9984D8();
    v19 = sub_25A9984C8();
    if (v18)
    {
      if (v19 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v19 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v19);
      sub_25A895280();
      sub_25A9984A8();
      v20 = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v21 = sub_25A9984B8();
  (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFADD__(a2, v21))
  {
    goto LABEL_30;
  }

  v22 = v26;
  *(v26 + 24) = MEMORY[0x277D83B88];
  *v22 = a2 + v21;
  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

void sub_25A922D30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A922D38);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.add(_:)@<X0>(void *a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A878194(v30, &qword_27FA047C8, &qword_25A9F8E88);
    v33[0] = a2;
    a2 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 8);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(a2);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_add(v33, a2, v7[2], *(v14 + 16));
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFADD__(a2, v24))
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = a2 + v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A9235B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9235BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.add(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v33 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_25A878194(v27, &qword_27FA047C8, &qword_25A9F8E88);
    mlx_array_new_int(a2);
  }

  sub_25A87817C(v27, v30);
  v4 = v31;
  v5 = v32;
  v6 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v25 = v23;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v27[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v24 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23[1] = v23;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v15 = v23 - v14;
      swift_getAssociatedConformanceWitness();
      v23[2] = v15;
      v16 = sub_25A998A78();
      v23[0] = v23;
      MEMORY[0x28223BE20](v16);
      sub_25A9989C8();
      LOBYTE(v15) = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

LABEL_10:
    v24 = v23;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = sub_25A997D88();
    (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v12)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v27[0]) = 0x7FFFFFFF;
    v17 = sub_25A9984D8();
    v18 = sub_25A9984C8();
    if (v17)
    {
      if (v18 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v18 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v18);
      sub_25A8DF954();
      sub_25A9984A8();
      v19 = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v20 = sub_25A9984B8();
  (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (__OFADD__(a2, v20))
  {
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v30[0];
    v30[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v30, a2, *(v5 + 16), *(v10 + 16));
  }

  v21 = v26;
  *(v26 + 24) = MEMORY[0x277D849A8];
  *v21 = a2 + v20;
  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

void sub_25A923E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A923E28);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.add(_:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v4) = a2;
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A878194(v30, &qword_27FA047C8, &qword_25A9F8E88);
    LODWORD(v33[0]) = v4;
    v4 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 3);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(v4);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_add(v33, v4, v7[2], *(v14 + 16));
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  v4 = v4;
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFADD__(v4, v24))
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = v4 + v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A9246A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9246B0);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.add(_:)(void *a1, float a3)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v5 = mlx_array_new_float(a3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v5;
  v6 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v6;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v10, v5, v8[2], *(v9 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v5);
}

void sub_25A9248D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9248D8);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.add(_:)(void *a1, double a3)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mlx_array_new_float(v5);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v9 = v7;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v11[0];
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_add(v11, v6, v9[2], *(v10 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v6);
}

void sub_25A924AEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A924AF4);
  }

  _Unwind_Resume(a1);
}

void *sub_25A924B2C(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  result = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8[0] = mlx_array_new();
    swift_beginAccess();
    v6 = *(v2 + 16);
    swift_beginAccess();
    mlx_add(v8, v6, v5[2], *(v7 + 16));
  }

  return result;
}

void sub_25A924C94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A924C9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Array.add(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v14, v17);
    v5 = sub_25A9987B8();
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v8 = (*(v7 + 8))(v6, v7);
    *&v14[0] = v5;
    sub_25A933208(v8);
    v9 = *&v14[0];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    a4[3] = v10;
    *a4 = v11;
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_25A878194(v14, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v13 = 15;
    return swift_willThrow();
  }
}

uint64_t sub_25A924F04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_25A87500C(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    v9 = sub_25A87817C(v19, v22);
    v10 = a2(v9);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 8))(v11, v12);
    *&v19[0] = v10;
    sub_25A933208(v13);
    v14 = *&v19[0];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    a5[3] = v15;
    *a5 = v16;
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_25A878194(v19, &qword_27FA04728, &unk_25A9FD740);
    sub_25A874F54();
    swift_allocError();
    *v18 = 15;
    return swift_willThrow();
  }
}

uint64_t String.add(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25A87500C(a1, &v12);
  v7 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v12 = a2;
    v13 = a3;

    MEMORY[0x25F850290]();

    v9 = v12;
    v10 = v13;
    a4[3] = v7;
    *a4 = v9;
    a4[1] = v10;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = 15;
    return swift_willThrow();
  }

  return result;
}

uint64_t Int.subtract(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_25A917A78(v28);
    if (a2 == a2)
    {
      mlx_array_new_int(a2);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    swift_once();
    sub_25A998C58();
    v11 = v31[0];
    v31[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v31, a2, *(v3 + 16), *(v11 + 16));
  }

  v26 = a3;
  sub_25A87817C(v28, v31);
  v6 = v32;
  v3 = v33;
  v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v27 = v24;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_17;
  }

  *&v28[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v10 = sub_25A9984C8();
    if (v10 < 64)
    {
LABEL_16:
      sub_25A9984B8();
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = sub_25A9984D8();
  v10 = sub_25A9984C8();
  if (v12)
  {
    if (v10 <= 64)
    {
      v25 = *(*(v3 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24[1] = v24;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v16 = v24 - v15;
      swift_getAssociatedConformanceWitness();
      v24[2] = v16;
      v17 = sub_25A998A78();
      v24[0] = v24;
      MEMORY[0x28223BE20](v17);
      sub_25A9989C8();
      LOBYTE(v16) = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v16)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

LABEL_11:
    v25 = v24;
    MEMORY[0x28223BE20](v10);
    sub_25A895280();
    sub_25A9984A8();
    v13 = sub_25A997D88();
    (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v13)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v10 < 64)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v28[0] = 0x7FFFFFFFFFFFFFFFLL;
    v18 = sub_25A9984D8();
    v19 = sub_25A9984C8();
    if (v18)
    {
      if (v19 >= 65)
      {
        goto LABEL_26;
      }
    }

    else if (v19 >= 64)
    {
LABEL_26:
      MEMORY[0x28223BE20](v19);
      sub_25A895280();
      sub_25A9984A8();
      v20 = sub_25A997D88();
      (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_27:
  v21 = sub_25A9984B8();
  (*(v8 + 8))(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFSUB__(a2, v21))
  {
    goto LABEL_30;
  }

  v22 = v26;
  *(v26 + 24) = MEMORY[0x277D83B88];
  *v22 = a2 - v21;
  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

void sub_25A9259DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A9259E4);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.subtract(_:)@<X0>(void *a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A917A78(v30);
    v33[0] = a2;
    a2 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 8);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(a2);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_subtract(v33, a2, v7[2], *(v14 + 16));
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFSUB__(a2, v24))
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = a2 - v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A926250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A926258);
  }

  _Unwind_Resume(a1);
}

uint64_t Int32.subtract(_:)@<X0>(uint64_t a1@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v33 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_25A917A78(v27);
    mlx_array_new_int(a2);
  }

  sub_25A87817C(v27, v30);
  v4 = v31;
  v5 = v32;
  v6 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v25 = v23;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 32)
  {
    goto LABEL_16;
  }

  LODWORD(v27[0]) = 0x80000000;
  if (sub_25A9984D8())
  {
    v9 = sub_25A9984C8();
    if (v9 < 32)
    {
LABEL_15:
      sub_25A9984B8();
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = sub_25A9984D8();
  v9 = sub_25A9984C8();
  if (v11)
  {
    if (v9 <= 32)
    {
      v24 = *(*(v5 + 24) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23[1] = v23;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v15 = v23 - v14;
      swift_getAssociatedConformanceWitness();
      v23[2] = v15;
      v16 = sub_25A998A78();
      v23[0] = v23;
      MEMORY[0x28223BE20](v16);
      sub_25A9989C8();
      LOBYTE(v15) = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

LABEL_10:
    v24 = v23;
    MEMORY[0x28223BE20](v9);
    sub_25A8DF954();
    sub_25A9984A8();
    v12 = sub_25A997D88();
    (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v12)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  if (v9 < 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (sub_25A9984C8() > 32 || sub_25A9984C8() == 32 && (sub_25A9984D8() & 1) == 0)
  {
    LODWORD(v27[0]) = 0x7FFFFFFF;
    v17 = sub_25A9984D8();
    v18 = sub_25A9984C8();
    if (v17)
    {
      if (v18 >= 33)
      {
        goto LABEL_25;
      }
    }

    else if (v18 >= 32)
    {
LABEL_25:
      MEMORY[0x28223BE20](v18);
      sub_25A8DF954();
      sub_25A9984A8();
      v19 = sub_25A997D88();
      (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_26:
  v20 = sub_25A9984B8();
  (*(v7 + 8))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  if (__OFSUB__(a2, v20))
  {
    __break(1u);
    swift_once();
    sub_25A998C58();
    v10 = v30[0];
    v30[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v30, a2, *(v5 + 16), *(v10 + 16));
  }

  v21 = v26;
  *(v26 + 24) = MEMORY[0x277D849A8];
  *v21 = a2 - v20;
  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

void sub_25A926AAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A926AB4);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.subtract(_:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v4) = a2;
  v29 = a3;
  v36 = *MEMORY[0x277D85DE8];
  sub_25A87500C(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_25A917A78(v30);
    LODWORD(v33[0]) = v4;
    v4 = mlx_array_new_data(v33, (MEMORY[0x277D84F90] + 32), 0, 3);
    v12 = sub_25A8F0FA0(a1, 13);
    if (v3)
    {
      return mlx_array_free(v4);
    }

    v7 = v12;
    if (qword_27FA043D8 == -1)
    {
LABEL_10:
      sub_25A998C58();
      v14 = v33[0];
      v33[0] = mlx_array_new();
      swift_beginAccess();
      mlx_subtract(v33, v4, v7[2], *(v14 + 16));
    }

LABEL_32:
    swift_once();
    goto LABEL_10;
  }

  sub_25A87817C(v30, v33);
  v6 = v34;
  v7 = v35;
  v8 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v28 = v26;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_19;
  }

  *&v30[0] = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v11 = sub_25A9984C8();
    if (v11 < 64)
    {
LABEL_18:
      sub_25A9984B8();
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v15 = sub_25A9984D8();
  v11 = sub_25A9984C8();
  if (v15)
  {
    if (v11 <= 64)
    {
      v27 = *(v7[3] + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v26[1] = v26;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = v26 - v18;
      swift_getAssociatedConformanceWitness();
      v26[2] = v19;
      v20 = sub_25A998A78();
      v26[0] = v26;
      MEMORY[0x28223BE20](v20);
      sub_25A9989C8();
      LOBYTE(v19) = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v19)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

LABEL_13:
    v27 = v26;
    MEMORY[0x28223BE20](v11);
    sub_25A8DF900();
    sub_25A9984A8();
    v16 = sub_25A997D88();
    (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    if (v16)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v11 < 64)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (sub_25A9984C8() > 64 || sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
  {
    *&v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = sub_25A9984D8();
    v22 = sub_25A9984C8();
    if (v21)
    {
      if (v22 >= 65)
      {
        goto LABEL_28;
      }
    }

    else if (v22 >= 64)
    {
LABEL_28:
      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v23 = sub_25A997D88();
      (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    sub_25A9984B8();
  }

LABEL_29:
  v24 = sub_25A9984B8();
  v4 = v4;
  (*(v9 + 8))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  if (__OFSUB__(v4, v24))
  {
    __break(1u);
    goto LABEL_32;
  }

  v25 = v29;
  *(v29 + 24) = MEMORY[0x277D84A28];
  *v25 = v4 - v24;
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

void sub_25A927324(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A92732CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.subtract(_:)(void *a1, float a3)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v5 = mlx_array_new_float(a3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v5;
  v6 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v8 = v6;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v10, v5, v8[2], *(v9 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v5);
}

void sub_25A92754C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927554);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.subtract(_:)(void *a1, double a3)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = mlx_array_new_float(v5);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v9 = v7;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v11[0];
    v11[0] = mlx_array_new();
    swift_beginAccess();
    mlx_subtract(v11, v6, v9[2], *(v10 + 16));
  }

  swift_setDeallocating();
  return mlx_array_free(v6);
}

void sub_25A927768(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927770);
  }

  _Unwind_Resume(a1);
}

void *sub_25A9277A8(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  result = sub_25A8F0FA0(a1, 13);
  if (!v3)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8[0] = mlx_array_new();
    swift_beginAccess();
    v6 = *(v2 + 16);
    swift_beginAccess();
    mlx_subtract(v8, v6, v5[2], *(v7 + 16));
  }

  return result;
}

void sub_25A927910(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A927918);
  }

  _Unwind_Resume(a1);
}

uint64_t SharedMutableSet.__allocating_init(set:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_25A9279E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_25A927A40()
{
  swift_beginAccess();

  return result;
}

uint64_t SharedMutableSet.init(set:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

double sub_25A927AD4@<D0>(uint64_t a1@<X8>)
{
  sub_25A92BEE4(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_25A8952F0(v8, &v4, &qword_27FA052C0, &qword_25A9FD550);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_25A927B80(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_25A92AB48(a1, v5, a3 & 1, v7);

  return v8;
}

uint64_t sub_25A927C0C()
{
  swift_beginAccess();

  v0 = sub_25A998508();

  return v0;
}

uint64_t sub_25A927CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = a2;
  swift_beginAccess();
  return sub_25A927D44(a1, v5, *(v4 + 16), x8_0);
}

uint64_t sub_25A927D44@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_25A874FB0(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25A927D9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  LOBYTE(a1) = sub_25A9197D0(a1, v3);

  return a1 & 1;
}

uint64_t sub_25A927E00()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84FA0];
}

uint64_t SharedMutableSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}