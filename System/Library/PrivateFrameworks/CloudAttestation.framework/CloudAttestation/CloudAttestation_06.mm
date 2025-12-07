unint64_t sub_22FF201E0()
{
  result = qword_27DAF28D0;
  if (!qword_27DAF28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28D0);
  }

  return result;
}

unint64_t sub_22FF20234()
{
  result = qword_27DAF28D8;
  if (!qword_27DAF28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28D8);
  }

  return result;
}

unint64_t sub_22FF20288()
{
  result = qword_27DAF28E8;
  if (!qword_27DAF28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1A60, &qword_22FFB3928);
    sub_22FF20234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28E8);
  }

  return result;
}

unint64_t sub_22FF2030C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7365747441706573;
    v6 = 0x74656B6369547061;
    if (a1 != 2)
    {
      v6 = 0x614864656C616573;
    }

    if (!a1)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x6C6F506C61636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x66696E614D726673;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x61746144707061;
    if (a1 != 4)
    {
      v3 = 0x726970784579656BLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22FF2046C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF27A9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF204AC(uint64_t a1)
{
  v2 = sub_22FF201E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF204E8(uint64_t a1)
{
  v2 = sub_22FF201E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_LocalPolicy.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2908, &qword_22FFB9118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25C48();
  sub_22FFB1D18();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v11)
  {
    if ((v10 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v9 != v9 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = 0;
  v10 = 0xF000000000000000;
LABEL_10:
  v16 = v9;
  v17 = v10;
  v15 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v16, v17);
  if (!v2)
  {
    v12 = *(v3 + 24);
    v16 = *(v3 + 16);
    LOBYTE(v17) = (v16 != 0) & v12;
    BYTE1(v17) = v16 == 0;
    v15 = 1;
    sub_22FF25C9C();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22FF2074C()
{
  if (*v0)
  {
    return 0x6E656D656C706D69;
  }

  else
  {
    return 0x7963696C6F70;
  }
}

uint64_t sub_22FF20790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D656C706D69 && a2 == 0xEE006E6F69746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF20870(uint64_t a1)
{
  v2 = sub_22FF25C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF208AC(uint64_t a1)
{
  v2 = sub_22FF25C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_LocalPolicy.Implementation.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t Proto_SealedHashLedger.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2920, &qword_22FFB9120);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25D40();
  sub_22FFB1D18();
  v8 = *v2;
  if (*(v8 + 16))
  {
  }

  else
  {
    v8 = 0;
  }

  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2930, &qword_22FFB9128);
  sub_22FF25D94();
  sub_22FFB1B38();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22FF20BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF20C34(uint64_t a1)
{
  v2 = sub_22FF25D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF20C70(uint64_t a1)
{
  v2 = sub_22FF25D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_SealedHash.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2948, &qword_22FFB9130);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25E50();
  sub_22FFB1D18();
  v9 = *(v3 + 8);
  v10 = *v3 == 0;
  v11 = *v3 != 0;
  v16 = *v3;
  v17 = v11 & v9;
  v18 = v10;
  v15 = 0;
  sub_22FF25EA4();
  sub_22FFB1B38();
  if (!v2)
  {
    v12 = v3[2];
    if (*(v12 + 16))
    {
    }

    else
    {
      v12 = 0;
    }

    v16 = v12;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2960, &qword_22FFB9138);
    sub_22FF25EF8();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22FF20EA8()
{
  if (*v0)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x676C4168736168;
  }
}

uint64_t sub_22FF20EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676C4168736168 && a2 == 0xE700000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF20FB8(uint64_t a1)
{
  v2 = sub_22FF25E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF20FF4(uint64_t a1)
{
  v2 = sub_22FF25E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_SealedHash.Entry.encode(to:)(void *a1)
{
  v3 = v1;
  v54 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v54);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Proto_Cryptex.Salt(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v51);
  v50 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v56 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  *&v57 = &v45 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2978, &qword_22FFB9140);
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25FAC();
  sub_22FFB1D18();
  v23 = *(v3 + 8);
  v24 = *(v3 + 16);
  v25 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2 || *(v23 + 16) == *(v23 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v25)
  {
    if ((v24 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*(v3 + 8), *(v3 + 16));
    goto LABEL_10;
  }

  if (v23 != v23 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v23 = 0;
  v24 = 0xF000000000000000;
LABEL_10:
  v59 = v23;
  v60 = v24;
  v61 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  if (v2)
  {
    sub_22FEA56EC(v59, v60);
    return (*(v58 + 8))(v22, v20);
  }

  sub_22FEA56EC(v59, v60);
  v26 = *v3 == 0;
  LOBYTE(v59) = 1;
  v61 = v26;
  sub_22FFB1B48();
  v48 = v20;
  v47 = type metadata accessor for Proto_SealedHash.Entry(0);
  v28 = *(v47 + 24);
  v29 = v57;
  sub_22FEBF3A4(v3 + v28, v57, &qword_27DAF2130, &unk_22FFB5C80);
  v30 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v46 = *(*(v30 - 8) + 48);
  if (v46(v29, 1, v30) != 1)
  {
    sub_22FEBF3A4(v29, v56, &qword_27DAF2130, &unk_22FFB5C80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v31 = v3;
        v29 = v57;
LABEL_40:
        sub_22FF2608C(v56, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_41;
      }

      v35 = v3 + v28;
      v31 = v3;
      sub_22FEBF3A4(v35, v16, &qword_27DAF2130, &unk_22FFB5C80);
      if (v46(v16, 1, v30) == 1)
      {
        sub_22FEAEA34(v16, &qword_27DAF2130, &unk_22FFB5C80);
        v29 = v57;
        v36 = v50;
      }

      else
      {
        v40 = swift_getEnumCaseMultiPayload();
        v29 = v57;
        v36 = v50;
        if (v40 == 1)
        {
          sub_22FF264A4(v16, v50, type metadata accessor for Proto_Cryptex);
LABEL_35:
          LOBYTE(v59) = 2;
          sub_22FF2645C(&qword_27DAF29A0, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);
          sub_22FFB1B88();
          sub_22FF2608C(v36, type metadata accessor for Proto_Cryptex);
          goto LABEL_40;
        }

        sub_22FF2608C(v16, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      }

      *v36 = xmmword_22FFB33B0;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v33 = v3 + v28;
      v31 = v3;
      sub_22FEBF3A4(v33, v13, &qword_27DAF2130, &unk_22FFB5C80);
      if (v46(v13, 1, v30) == 1)
      {
        sub_22FEAEA34(v13, &qword_27DAF2130, &unk_22FFB5C80);
        v34 = v53;
      }

      else
      {
        v39 = swift_getEnumCaseMultiPayload();
        v34 = v53;
        if (v39 == 2)
        {
          sub_22FF264A4(v13, v53, type metadata accessor for Proto_Cryptex.Salt);
LABEL_32:
          v29 = v57;
          LOBYTE(v59) = 3;
          sub_22FF2645C(&qword_27DAF2998, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);
          sub_22FFB1B88();
          v42 = type metadata accessor for Proto_Cryptex.Salt;
LABEL_39:
          sub_22FF2608C(v34, v42);
          goto LABEL_40;
        }

        sub_22FF2608C(v13, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      }

      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      goto LABEL_32;
    }

    v37 = v3 + v28;
    v31 = v3;
    v38 = v49;
    sub_22FEBF3A4(v37, v49, &qword_27DAF2130, &unk_22FFB5C80);
    if (v46(v38, 1, v30) == 1)
    {
      sub_22FEAEA34(v38, &qword_27DAF2130, &unk_22FFB5C80);
      v29 = v57;
      v34 = v55;
    }

    else
    {
      v41 = swift_getEnumCaseMultiPayload();
      v29 = v57;
      v34 = v55;
      if (v41 == 3)
      {
        sub_22FF264A4(v38, v55, type metadata accessor for Proto_SecureConfig);
LABEL_38:
        LOBYTE(v59) = 4;
        sub_22FF2645C(&qword_27DAF2990, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);
        sub_22FFB1B88();
        v42 = type metadata accessor for Proto_SecureConfig;
        goto LABEL_39;
      }

      sub_22FF2608C(v38, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    }

    v57 = xmmword_22FFB33B0;
    *v34 = xmmword_22FFB33B0;
    *(v34 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
    *(v34 + 24) = v57;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    goto LABEL_38;
  }

  v31 = v3;
LABEL_41:
  sub_22FEAEA34(v29, &qword_27DAF2130, &unk_22FFB5C80);
  v43 = *(v31 + *(v47 + 28));
  if (*(v43 + 16))
  {
  }

  else
  {
    v43 = 0;
  }

  v44 = v48;
  v59 = v43;
  v61 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1540, &qword_22FFB2D78);
  sub_22FF26000();
  sub_22FFB1B38();

  return (*(v58 + 8))(v22, v44);
}

uint64_t sub_22FF21A64()
{
  v1 = *v0;
  v2 = 0x747365676964;
  v3 = 0x5378657470797263;
  v4 = 0x6F43657275636573;
  if (v1 != 4)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7367616C66;
  if (v1 != 1)
  {
    v5 = 0x78657470797263;
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

uint64_t sub_22FF21B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF27DA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF21B50(uint64_t a1)
{
  v2 = sub_22FF25FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF21B8C(uint64_t a1)
{
  v2 = sub_22FF25FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_Cryptex.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29A8, &qword_22FFB9148);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF260EC();
  sub_22FFB1D18();
  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_9:
      v8 = 0;
      v9 = 0xF000000000000000;
      goto LABEL_10;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22FEA5608(v8, v9);
LABEL_10:
  v12 = v8;
  v13 = v9;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v12, v13);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22FF21DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D346567616D69 && a2 == 0xEE0074736566696ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF21E40(uint64_t a1)
{
  v2 = sub_22FF260EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF21E7C(uint64_t a1)
{
  v2 = sub_22FF260EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_Cryptex.Salt.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29B8, &qword_22FFB9150);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26140();
  sub_22FFB1D18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22FF21FF0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_22FF22020(uint64_t a1)
{
  v2 = sub_22FF26140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF2205C(uint64_t a1)
{
  v2 = sub_22FF26140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FF22098(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29B8, &qword_22FFB9150);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26140();
  sub_22FFB1D18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Proto_SecureConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29C8, &qword_22FFB9158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26194();
  sub_22FFB1D18();
  v9 = *v3;
  v10 = v3[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v11)
  {
    if ((v10 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, v3[1]);
    goto LABEL_10;
  }

  if (v9 != v9 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = 0;
  v10 = 0xF000000000000000;
LABEL_10:
  v19 = v9;
  v20 = v10;
  v18 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v19, v20);
  if (!v2)
  {
    v12 = v3[2];
    if (*(v12 + 16))
    {
    }

    else
    {
      v12 = 0;
    }

    v19 = v12;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29D8, &qword_22FFC0350);
    sub_22FF261E8();
    sub_22FFB1B38();

    v13 = v3[3];
    v14 = v3[4];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2 || *(v13 + 16) == *(v13 + 24))
      {
        goto LABEL_23;
      }
    }

    else if (v15)
    {
      if (v13 == v13 >> 32)
      {
LABEL_23:
        v13 = 0;
        v14 = 0xF000000000000000;
        goto LABEL_24;
      }
    }

    else if ((v14 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    sub_22FEA5608(v13, v14);
LABEL_24:
    v19 = v13;
    v20 = v14;
    v18 = 2;
    sub_22FFB1B38();
    sub_22FEA56EC(v19, v20);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22FF22474()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972746E65;
  }
}

uint64_t sub_22FF224C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF27FA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF224EC(uint64_t a1)
{
  v2 = sub_22FF26194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF22528(uint64_t a1)
{
  v2 = sub_22FF26194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_HashAlg.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_22FF226F0@<X0>(uint64_t a2@<X8>)
{
  sub_22FFB13C8();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 1;
  }

  else
  {
    sub_22FFB13F8();
    result = swift_dynamicCastMetatype();
    v4 = 2 * (result != 0);
  }

  *a2 = v4;
  *(a2 + 8) = 1;
  return result;
}

uint64_t Proto_TransparencyProofs.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29E8, &qword_22FFB9160);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26264();
  v35 = v13;
  sub_22FFB1D18();
  v14 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v32 = v2;
  sub_22FEBF3A4(v2 + v14, v9, &qword_27DAF37C0, &unk_22FFB5C60);
  v15 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v16 = *(v15 - 8);
  v17 = 1;
  v31 = *(v16 + 48);
  v18 = v31(v9, 1, v15);
  v19 = v34;
  sub_22FEAEA34(v9, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v18 != 1)
  {
    v20 = v32 + v14;
    v21 = v33;
    sub_22FEBF3A4(v20, v33, &qword_27DAF37C0, &unk_22FFB5C60);
    v22 = v31;
    if (v31(v21, 1, v15) == 1)
    {
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v23 = *(v15 + 20);
      v24 = type metadata accessor for LogEntry(0);
      (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
      v25 = *(v15 + 24);
      v26 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
      if (v22(v21, 1, v15) != 1)
      {
        sub_22FEAEA34(v21, &qword_27DAF37C0, &unk_22FFB5C60);
      }
    }

    else
    {
      sub_22FF264A4(v21, v19, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    }

    v17 = 0;
  }

  (*(v16 + 56))(v19, v17, 1, v15);
  sub_22FF2645C(&qword_27DAF29F8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v27 = v37;
  v28 = v35;
  sub_22FFB1B38();
  sub_22FEAEA34(v19, &qword_27DAF37C0, &unk_22FFB5C60);
  return (*(v36 + 8))(v28, v27);
}

uint64_t sub_22FF22BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73666F6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF22C30(uint64_t a1)
{
  v2 = sub_22FF26264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF22C6C(uint64_t a1)
{
  v2 = sub_22FF26264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A00, &qword_22FFB9168);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v19 = &v47 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF262B8();
  v57 = v19;
  sub_22FFB1D18();
  v49 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v20 = *(v49 + 20);
  v54 = v2;
  sub_22FEBF3A4(v2 + v20, v15, &qword_27DAF2150, &qword_22FFB5CA0);
  v21 = type metadata accessor for LogEntry(0);
  v22 = *(v21 - 8);
  v23 = 1;
  v52 = *(v22 + 48);
  v24 = v52(v15, 1, v21);
  sub_22FEAEA34(v15, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v24 != 1)
  {
    v25 = v53;
    sub_22FEBF3A4(v54 + v20, v53, &qword_27DAF2150, &qword_22FFB5CA0);
    v26 = v52;
    if (v52(v25, 1, v21) == 1)
    {
      *v17 = 0;
      v17[8] = 1;
      *(v17 + 2) = MEMORY[0x277D84F90];
      *(v17 + 24) = xmmword_22FFB33B0;
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
      v17[56] = 1;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v27 = *(v21 + 40);
      v28 = type metadata accessor for SignedObject(0);
      (*(*(v28 - 8) + 56))(&v17[v27], 1, 1, v28);
      if (v26(v25, 1, v21) != 1)
      {
        sub_22FEAEA34(v25, &qword_27DAF2150, &qword_22FFB5CA0);
      }
    }

    else
    {
      sub_22FF264A4(v25, v17, type metadata accessor for LogEntry);
    }

    v23 = 0;
  }

  (*(v22 + 56))(v17, v23, 1, v21);
  v60 = 0;
  sub_22FF2645C(&qword_27DAF2A10, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  v29 = v58;
  v30 = v57;
  v31 = v55;
  sub_22FFB1B38();
  sub_22FEAEA34(v17, &qword_27DAF2150, &qword_22FFB5CA0);
  if (!v31)
  {
    v32 = v50;
    v33 = *(v49 + 24);
    v34 = v54;
    sub_22FEBF3A4(v54 + v33, v50, &qword_27DAF2140, &qword_22FFB5C90);
    v35 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    v38 = v37(v32, 1, v35);
    sub_22FEAEA34(v32, &qword_27DAF2140, &qword_22FFB5C90);
    v39 = 1;
    v40 = v38 == 1;
    v41 = v51;
    if (!v40)
    {
      v42 = v34 + v33;
      v43 = v48;
      sub_22FEBF3A4(v42, v48, &qword_27DAF2140, &qword_22FFB5C90);
      if (v37(v43, 1, v35) == 1)
      {
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v44 = *(v35 + 20);
        if (qword_281490E10 != -1)
        {
          swift_once();
        }

        *(v41 + v44) = qword_281490E18;
        v45 = v37(v43, 1, v35);

        if (v45 != 1)
        {
          sub_22FEAEA34(v43, &qword_27DAF2140, &qword_22FFB5C90);
        }
      }

      else
      {
        sub_22FF264A4(v43, v41, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      }

      v39 = 0;
    }

    (*(v36 + 56))(v41, v39, 1, v35);
    v59 = 1;
    sub_22FF2645C(&qword_27DAF2A18, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);
    v29 = v58;
    v30 = v57;
    sub_22FFB1B38();
    sub_22FEAEA34(v41, &qword_27DAF2140, &qword_22FFB5C90);
  }

  return (*(v56 + 8))(v30, v29);
}

uint64_t sub_22FF233B4()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6F6973756C636E69;
  }
}

uint64_t sub_22FF23400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C636E69 && a2 == 0xEE00666F6F72506ELL;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022FFCA4D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF234EC(uint64_t a1)
{
  v2 = sub_22FF262B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF23528(uint64_t a1)
{
  v2 = sub_22FF262B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogEntry.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A20, &qword_22FFB9170);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF2630C();
  sub_22FFB1D18();
  v16 = *(v2 + 8);
  v17 = *v2 == 0;
  v18 = *v2 != 0;
  v55 = *v2;
  LOBYTE(v56) = v18 & v16;
  BYTE1(v56) = v17;
  v57 = 0;
  sub_22FF26360();
  v19 = v54;
  sub_22FFB1B38();
  if (v19)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v49 = v7;
  v50 = v15;
  v51 = 0;
  v52 = v13;
  v21 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEBF3A4(v2 + v21, v10, &qword_27DAF2338, &unk_22FFBB620);
  v22 = type metadata accessor for SignedObject(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v10, 1, v22);
  v54 = v12;
  v26 = v25;
  sub_22FEAEA34(v10, &qword_27DAF2338, &unk_22FFBB620);
  v27 = 1;
  v28 = v26 == 1;
  v29 = v2;
  v31 = v53;
  v30 = v54;
  if (!v28)
  {
    v48 = v29;
    v32 = v29 + v21;
    v33 = v49;
    sub_22FEBF3A4(v32, v49, &qword_27DAF2338, &unk_22FFBB620);
    if (v24(v33, 1, v22) == 1)
    {
      *v31 = xmmword_22FFB33B0;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v34 = *(v22 + 24);
      v35 = type metadata accessor for Signature(0);
      (*(*(v35 - 8) + 56))(&v31[v34], 1, 1, v35);
      if (v24(v33, 1, v22) != 1)
      {
        sub_22FEAEA34(v33, &qword_27DAF2338, &unk_22FFBB620);
      }

      v27 = 0;
      v30 = v54;
    }

    else
    {
      sub_22FF264A4(v33, v31, type metadata accessor for SignedObject);
      v27 = 0;
    }

    v29 = v48;
  }

  (*(v23 + 56))(v31, v27, 1, v22);
  LOBYTE(v55) = 1;
  sub_22FF2645C(&qword_27DAF2A38, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  v36 = v50;
  v37 = v51;
  sub_22FFB1B38();
  if (v37)
  {
    sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
    return (*(v52 + 8))(v36, v30);
  }

  sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
  v38 = *(v29 + 16);
  if (*(v38 + 16))
  {
  }

  else
  {
    v38 = 0;
  }

  v55 = v38;
  v57 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  sub_22FF20288();
  sub_22FFB1B38();

  v39 = *(v29 + 24);
  v40 = *(v29 + 32);
  v41 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    v42 = v54;
    v43 = v52;
    if (v41 != 2)
    {
      goto LABEL_23;
    }

    v44 = *(v39 + 16);
    v45 = *(v39 + 24);
  }

  else
  {
    v42 = v54;
    v43 = v52;
    if (!v41)
    {
      if ((v40 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_22FEA5608(*(v29 + 24), *(v29 + 32));
      goto LABEL_25;
    }

    v44 = v39;
    v45 = v39 >> 32;
  }

  if (v44 != v45)
  {
    goto LABEL_24;
  }

LABEL_23:
  v39 = 0;
  v40 = 0xF000000000000000;
LABEL_25:
  v55 = v39;
  v56 = v40;
  v57 = 3;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v55, v56);
  LOBYTE(v55) = 4;
  sub_22FFB1B58();
  v46 = *(v29 + 56);
  v55 = *(v29 + 48);
  LOBYTE(v56) = (v55 != 0) & v46;
  BYTE1(v56) = v55 == 0;
  v57 = 5;
  sub_22FF263B4();
  sub_22FFB1B38();
  return (*(v43 + 8))(v36, v42);
}

uint64_t sub_22FF23BEC()
{
  v1 = *v0;
  v2 = 0x65707954676F6CLL;
  v3 = 0x6574794265646F6ELL;
  v4 = 0x69736F5065646F6ELL;
  if (v1 != 4)
  {
    v4 = 0x6570795465646F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6843507;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

uint64_t sub_22FF23CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF280B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF23CD8(uint64_t a1)
{
  v2 = sub_22FF2630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF23D14(uint64_t a1)
{
  v2 = sub_22FF2630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogType.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t SignedObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v36 = &v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A50, &qword_22FFB9180);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26408();
  sub_22FFB1D18();
  v16 = *v3;
  v17 = *(v3 + 8);
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v18)
  {
    if ((v17 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v16 != v16 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v16 = 0;
  v17 = 0xF000000000000000;
LABEL_10:
  v37 = v16;
  v38 = v17;
  v39 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v37, v38);
  if (v2)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v33 = v13;
  v34 = v12;
  v20 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEBF3A4(v3 + v20, v10, &qword_27DAF2A48, &qword_22FFB9178);
  v21 = type metadata accessor for Signature(0);
  v22 = *(v21 - 8);
  v32 = *(v22 + 48);
  v23 = v32(v10, 1, v21);
  sub_22FEAEA34(v10, &qword_27DAF2A48, &qword_22FFB9178);
  v24 = 1;
  v25 = v23 == 1;
  v26 = v36;
  if (!v25)
  {
    v27 = v3 + v20;
    v28 = v35;
    sub_22FEBF3A4(v27, v35, &qword_27DAF2A48, &qword_22FFB9178);
    v29 = v32;
    if (v32(v28, 1, v21) == 1)
    {
      *v26 = xmmword_22FFB33B0;
      *(v26 + 16) = xmmword_22FFB33B0;
      *(v26 + 32) = 0;
      *(v26 + 40) = 1;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v29(v28, 1, v21) != 1)
      {
        sub_22FEAEA34(v28, &qword_27DAF2A48, &qword_22FFB9178);
      }
    }

    else
    {
      sub_22FF264A4(v28, v26, type metadata accessor for Signature);
    }

    v24 = 0;
  }

  (*(v22 + 56))(v26, v24, 1, v21);
  LOBYTE(v37) = 1;
  sub_22FF2645C(&qword_27DAF2A60, type metadata accessor for Signature, &protocol conformance descriptor for Signature);
  v30 = v34;
  sub_22FFB1B38();
  sub_22FEAEA34(v26, &qword_27DAF2A48, &qword_22FFB9178);
  return (*(v33 + 8))(v15, v30);
}

uint64_t sub_22FF243FC()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_22FF24438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF24518(uint64_t a1)
{
  v2 = sub_22FF26408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF24554(uint64_t a1)
{
  v2 = sub_22FF26408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A68, &qword_22FFB9188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF2650C();
  sub_22FFB1D18();
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v11)
  {
    if ((v10 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v9 != v9 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = 0;
  v10 = 0xF000000000000000;
LABEL_10:
  v19 = v9;
  v20 = v10;
  v18 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v19, v20);
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2 || *(v12 + 16) == *(v12 + 24))
      {
        goto LABEL_19;
      }
    }

    else if (v14)
    {
      if (v12 == v12 >> 32)
      {
LABEL_19:
        v12 = 0;
        v13 = 0xF000000000000000;
        goto LABEL_20;
      }
    }

    else if ((v13 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

    sub_22FEA5608(*(v3 + 16), *(v3 + 24));
LABEL_20:
    v19 = v12;
    v20 = v13;
    v18 = 1;
    sub_22FFB1B38();
    sub_22FEA56EC(v19, v20);
    v15 = *(v3 + 40);
    v19 = *(v3 + 32);
    LOBYTE(v20) = (v19 != 0) & v15;
    BYTE1(v20) = v19 == 0;
    v18 = 2;
    sub_22FF26560();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22FF24858()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x687469726F676C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x727574616E676973;
  }
}

uint64_t sub_22FF248BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF282C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF248E4(uint64_t a1)
{
  v2 = sub_22FF2650C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF24920(uint64_t a1)
{
  v2 = sub_22FF2650C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NodeType.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  if (v2 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v86 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v86 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v86 - v14;
  MEMORY[0x28223BE20](v13);
  v92 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v93 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v94 = &v86 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v86 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v86 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A80, &qword_22FFB9190);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v31 = &v86 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF265B4();
  v102 = v31;
  sub_22FFB1D18();
  v32 = *(v2 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v33 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  v100 = v32;
  sub_22FEBF3A4(v32 + v33, v27, &qword_27DAF2338, &unk_22FFBB620);
  v34 = type metadata accessor for SignedObject(0);
  v103 = *(v34 - 8);
  v35 = 1;
  v97 = *(v103 + 48);
  LODWORD(v32) = v97(v27, 1, v34);
  sub_22FEAEA34(v27, &qword_27DAF2338, &unk_22FFBB620);
  if (v32 != 1)
  {
    v36 = v96;
    sub_22FEBF3A4(v100 + v33, v96, &qword_27DAF2338, &unk_22FFBB620);
    v37 = v97;
    if (v97(v36, 1, v34) == 1)
    {
      *v29 = xmmword_22FFB33B0;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v38 = *(v34 + 24);
      v39 = type metadata accessor for Signature(0);
      (*(*(v39 - 8) + 56))(&v29[v38], 1, 1, v39);
      if (v37(v36, 1, v34) != 1)
      {
        sub_22FEAEA34(v36, &qword_27DAF2338, &unk_22FFBB620);
      }
    }

    else
    {
      sub_22FF264A4(v36, v29, type metadata accessor for SignedObject);
    }

    v35 = 0;
  }

  v41 = v103 + 56;
  v40 = *(v103 + 56);
  v40(v29, v35, 1, v34);
  v107 = 0;
  sub_22FF2645C(&qword_27DAF2A38, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  v43 = v101;
  v42 = v102;
  v44 = v98;
  sub_22FFB1B38();
  if (v44)
  {
    sub_22FEAEA34(v29, &qword_27DAF2338, &unk_22FFBB620);
    return (*(v99 + 8))(v42, v43);
  }

  else
  {
    v98 = v40;
    v103 = v41;
    sub_22FEAEA34(v29, &qword_27DAF2338, &unk_22FFBB620);
    v46 = v34;
    v47 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
    v48 = v100;
    swift_beginAccess();
    v49 = v94;
    sub_22FEBF3A4(v48 + v47, v94, &qword_27DAF2338, &unk_22FFBB620);
    v50 = v97;
    v51 = v97(v49, 1, v46);
    sub_22FEAEA34(v49, &qword_27DAF2338, &unk_22FFBB620);
    v52 = 1;
    v53 = v51 == 1;
    v54 = v95;
    if (!v53)
    {
      v55 = v93;
      sub_22FEBF3A4(v48 + v47, v93, &qword_27DAF2338, &unk_22FFBB620);
      if (v50(v55, 1, v46) == 1)
      {
        v56 = v50;
        *v54 = xmmword_22FFB33B0;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v57 = *(v46 + 24);
        v58 = type metadata accessor for Signature(0);
        (*(*(v58 - 8) + 56))(&v54[v57], 1, 1, v58);
        if (v56(v55, 1, v46) != 1)
        {
          sub_22FEAEA34(v55, &qword_27DAF2338, &unk_22FFBB620);
        }

        v52 = 0;
      }

      else
      {
        sub_22FF264A4(v55, v54, type metadata accessor for SignedObject);
        v52 = 0;
      }
    }

    v98(v54, v52, 1, v46);
    v106 = 1;
    v59 = v101;
    sub_22FFB1B38();
    v97 = v46;
    sub_22FEAEA34(v54, &qword_27DAF2338, &unk_22FFBB620);
    v60 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
    swift_beginAccess();
    v61 = *(v100 + v60);
    v62 = v100;
    if (*(v61 + 16))
    {
    }

    else
    {
      v61 = 0;
    }

    v105 = v61;
    v104 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
    sub_22FF20288();
    sub_22FFB1B38();

    v63 = v62;
    v64 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
    swift_beginAccess();
    v65 = v91;
    sub_22FEBF3A4(v63 + v64, v91, &qword_27DAF2150, &qword_22FFB5CA0);
    v66 = type metadata accessor for LogEntry(0);
    v96 = *(v66 - 8);
    v67 = *(v96 + 48);
    v68 = 1;
    v95 = (v96 + 48);
    v94 = v67;
    v69 = (v67)(v65, 1, v66);
    sub_22FEAEA34(v65, &qword_27DAF2150, &qword_22FFB5CA0);
    v70 = v92;
    if (v69 != 1)
    {
      v71 = v90;
      sub_22FEBF3A4(v100 + v64, v90, &qword_27DAF2150, &qword_22FFB5CA0);
      v72 = v94;
      if ((v94)(v71, 1, v66) == 1)
      {
        *v70 = 0;
        *(v70 + 8) = 1;
        *(v70 + 16) = MEMORY[0x277D84F90];
        *(v70 + 24) = xmmword_22FFB33B0;
        *(v70 + 40) = 0;
        *(v70 + 48) = 0;
        *(v70 + 56) = 1;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v98((v70 + *(v66 + 40)), 1, 1, v97);
        if (v72(v71, 1, v66) != 1)
        {
          sub_22FEAEA34(v71, &qword_27DAF2150, &qword_22FFB5CA0);
        }
      }

      else
      {
        sub_22FF264A4(v71, v70, type metadata accessor for LogEntry);
      }

      v68 = 0;
    }

    v73 = v96 + 56;
    v74 = *(v96 + 56);
    v74(v70, v68, 1, v66);
    v104 = 3;
    v75 = sub_22FF2645C(&qword_27DAF2A10, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
    sub_22FFB1B38();
    sub_22FEAEA34(v70, &qword_27DAF2150, &qword_22FFB5CA0);
    v92 = v75;
    v93 = v74;
    v96 = v73;
    v76 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
    v77 = v100;
    swift_beginAccess();
    v78 = v66;
    v79 = v88;
    sub_22FEBF3A4(v77 + v76, v88, &qword_27DAF2150, &qword_22FFB5CA0);
    v80 = v94;
    LODWORD(v73) = (v94)(v79, 1, v78);
    sub_22FEAEA34(v79, &qword_27DAF2150, &qword_22FFB5CA0);
    v81 = 1;
    v82 = v89;
    if (v73 != 1)
    {
      v83 = v77 + v76;
      v84 = v87;
      sub_22FEBF3A4(v83, v87, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v80(v84, 1, v78) == 1)
      {
        *v82 = 0;
        *(v82 + 8) = 1;
        *(v82 + 16) = MEMORY[0x277D84F90];
        *(v82 + 24) = xmmword_22FFB33B0;
        *(v82 + 40) = 0;
        *(v82 + 48) = 0;
        *(v82 + 56) = 1;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v98((v82 + *(v78 + 40)), 1, 1, v97);
        if (v80(v84, 1, v78) != 1)
        {
          sub_22FEAEA34(v84, &qword_27DAF2150, &qword_22FFB5CA0);
        }
      }

      else
      {
        sub_22FF264A4(v84, v82, type metadata accessor for LogEntry);
      }

      v81 = 0;
    }

    v93(v82, v81, 1, v78);
    v108 = 4;
    v85 = v102;
    sub_22FFB1B38();
    sub_22FEAEA34(v82, &qword_27DAF2150, &qword_22FFB5CA0);
    return (*(v99 + 8))(v85, v59);
  }
}

unint64_t sub_22FF25964()
{
  v1 = 0x484C537472617473;
  v2 = 0x736148666F6F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x484C53646E65;
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

uint64_t sub_22FF25A0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF283F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF25A40(uint64_t a1)
{
  v2 = sub_22FF265B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF25A7C(uint64_t a1)
{
  v2 = sub_22FF265B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22FF25AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  Img4DecodeInit(a1, v3, a3);
  if (v4)
  {
    v5 = v4;
    sub_22FF28604();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_22FF25B4C(int *a1, void *a2, uint64_t a3)
{
  result = sub_22FFB0708();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = result;
  result = sub_22FFB05B8();
  v10 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v8 - v7;
  v12 = sub_22FFB05A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  Img4DecodeCopyManifestTrustedBootPolicyMeasurement(a2, sub_22FF25AD8, a3, v9 + v10, v13);
  if (v14)
  {
    v15 = v14;
    sub_22FF28604();
    swift_allocError();
    *v16 = v15;
    *(v16 + 4) = 2;
    swift_willThrow();
  }
}

unint64_t sub_22FF25C48()
{
  result = qword_27DAF2910;
  if (!qword_27DAF2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2910);
  }

  return result;
}

unint64_t sub_22FF25C9C()
{
  result = qword_27DAF2918;
  if (!qword_27DAF2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2918);
  }

  return result;
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

unint64_t sub_22FF25D40()
{
  result = qword_27DAF2928;
  if (!qword_27DAF2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2928);
  }

  return result;
}

unint64_t sub_22FF25D94()
{
  result = qword_27DAF2938;
  if (!qword_27DAF2938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2930, &qword_22FFB9128);
    sub_22FF2645C(&qword_27DAF2940, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2938);
  }

  return result;
}

unint64_t sub_22FF25E50()
{
  result = qword_27DAF2950;
  if (!qword_27DAF2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2950);
  }

  return result;
}

unint64_t sub_22FF25EA4()
{
  result = qword_27DAF2958;
  if (!qword_27DAF2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2958);
  }

  return result;
}

unint64_t sub_22FF25EF8()
{
  result = qword_27DAF2968;
  if (!qword_27DAF2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2960, &qword_22FFB9138);
    sub_22FF2645C(&qword_27DAF2970, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2968);
  }

  return result;
}

unint64_t sub_22FF25FAC()
{
  result = qword_27DAF2980;
  if (!qword_27DAF2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2980);
  }

  return result;
}

unint64_t sub_22FF26000()
{
  result = qword_27DAF2988;
  if (!qword_27DAF2988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1540, &qword_22FFB2D78);
    sub_22FF20234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2988);
  }

  return result;
}

uint64_t sub_22FF2608C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FF260EC()
{
  result = qword_27DAF29B0;
  if (!qword_27DAF29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29B0);
  }

  return result;
}

unint64_t sub_22FF26140()
{
  result = qword_27DAF29C0;
  if (!qword_27DAF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29C0);
  }

  return result;
}

unint64_t sub_22FF26194()
{
  result = qword_27DAF29D0;
  if (!qword_27DAF29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29D0);
  }

  return result;
}

unint64_t sub_22FF261E8()
{
  result = qword_27DAF29E0;
  if (!qword_27DAF29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF29D8, &qword_22FFC0350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29E0);
  }

  return result;
}

unint64_t sub_22FF26264()
{
  result = qword_27DAF29F0;
  if (!qword_27DAF29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29F0);
  }

  return result;
}

unint64_t sub_22FF262B8()
{
  result = qword_27DAF2A08;
  if (!qword_27DAF2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A08);
  }

  return result;
}

unint64_t sub_22FF2630C()
{
  result = qword_27DAF2A28;
  if (!qword_27DAF2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A28);
  }

  return result;
}

unint64_t sub_22FF26360()
{
  result = qword_27DAF2A30;
  if (!qword_27DAF2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A30);
  }

  return result;
}

unint64_t sub_22FF263B4()
{
  result = qword_27DAF2A40;
  if (!qword_27DAF2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A40);
  }

  return result;
}

unint64_t sub_22FF26408()
{
  result = qword_27DAF2A58;
  if (!qword_27DAF2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A58);
  }

  return result;
}

uint64_t sub_22FF2645C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF264A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FF2650C()
{
  result = qword_27DAF2A70;
  if (!qword_27DAF2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A70);
  }

  return result;
}

unint64_t sub_22FF26560()
{
  result = qword_27DAF2A78;
  if (!qword_27DAF2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A78);
  }

  return result;
}

unint64_t sub_22FF265B4()
{
  result = qword_27DAF2A88;
  if (!qword_27DAF2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A88);
  }

  return result;
}

uint64_t sub_22FF26698(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22FF26728(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10CodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FF2696C()
{
  result = qword_27DAF2A90;
  if (!qword_27DAF2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A90);
  }

  return result;
}

unint64_t sub_22FF269C4()
{
  result = qword_27DAF2A98;
  if (!qword_27DAF2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A98);
  }

  return result;
}

unint64_t sub_22FF26A1C()
{
  result = qword_27DAF2AA0;
  if (!qword_27DAF2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AA0);
  }

  return result;
}

unint64_t sub_22FF26A74()
{
  result = qword_27DAF2AA8;
  if (!qword_27DAF2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AA8);
  }

  return result;
}

unint64_t sub_22FF26ACC()
{
  result = qword_27DAF2AB0;
  if (!qword_27DAF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AB0);
  }

  return result;
}

unint64_t sub_22FF26B24()
{
  result = qword_27DAF2AB8;
  if (!qword_27DAF2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AB8);
  }

  return result;
}

unint64_t sub_22FF26B7C()
{
  result = qword_27DAF2AC0;
  if (!qword_27DAF2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AC0);
  }

  return result;
}

unint64_t sub_22FF26BD4()
{
  result = qword_27DAF2AC8;
  if (!qword_27DAF2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AC8);
  }

  return result;
}

unint64_t sub_22FF26C2C()
{
  result = qword_27DAF2AD0;
  if (!qword_27DAF2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AD0);
  }

  return result;
}

unint64_t sub_22FF26C84()
{
  result = qword_27DAF2AD8;
  if (!qword_27DAF2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AD8);
  }

  return result;
}

unint64_t sub_22FF26CDC()
{
  result = qword_27DAF2AE0;
  if (!qword_27DAF2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AE0);
  }

  return result;
}

unint64_t sub_22FF26D34()
{
  result = qword_27DAF2AE8;
  if (!qword_27DAF2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AE8);
  }

  return result;
}

unint64_t sub_22FF26D8C()
{
  result = qword_27DAF2AF0;
  if (!qword_27DAF2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AF0);
  }

  return result;
}

unint64_t sub_22FF26DE4()
{
  result = qword_27DAF2AF8;
  if (!qword_27DAF2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AF8);
  }

  return result;
}

unint64_t sub_22FF26E3C()
{
  result = qword_27DAF2B00;
  if (!qword_27DAF2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B00);
  }

  return result;
}

unint64_t sub_22FF26E94()
{
  result = qword_27DAF2B08;
  if (!qword_27DAF2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B08);
  }

  return result;
}

unint64_t sub_22FF26EEC()
{
  result = qword_27DAF2B10;
  if (!qword_27DAF2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B10);
  }

  return result;
}

unint64_t sub_22FF26F44()
{
  result = qword_27DAF2B18;
  if (!qword_27DAF2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B18);
  }

  return result;
}

unint64_t sub_22FF26F9C()
{
  result = qword_27DAF2B20;
  if (!qword_27DAF2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B20);
  }

  return result;
}

unint64_t sub_22FF26FF4()
{
  result = qword_27DAF2B28;
  if (!qword_27DAF2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B28);
  }

  return result;
}

unint64_t sub_22FF2704C()
{
  result = qword_27DAF2B30;
  if (!qword_27DAF2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B30);
  }

  return result;
}

unint64_t sub_22FF270A4()
{
  result = qword_27DAF2B38;
  if (!qword_27DAF2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B38);
  }

  return result;
}

unint64_t sub_22FF270FC()
{
  result = qword_27DAF2B40;
  if (!qword_27DAF2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B40);
  }

  return result;
}

unint64_t sub_22FF27154()
{
  result = qword_27DAF2B48;
  if (!qword_27DAF2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B48);
  }

  return result;
}

unint64_t sub_22FF271AC()
{
  result = qword_27DAF2B50;
  if (!qword_27DAF2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B50);
  }

  return result;
}

unint64_t sub_22FF27204()
{
  result = qword_27DAF2B58;
  if (!qword_27DAF2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B58);
  }

  return result;
}

unint64_t sub_22FF2725C()
{
  result = qword_27DAF2B60;
  if (!qword_27DAF2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B60);
  }

  return result;
}

unint64_t sub_22FF272B4()
{
  result = qword_27DAF2B68;
  if (!qword_27DAF2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B68);
  }

  return result;
}

unint64_t sub_22FF2730C()
{
  result = qword_27DAF2B70;
  if (!qword_27DAF2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B70);
  }

  return result;
}

unint64_t sub_22FF27364()
{
  result = qword_27DAF2B78;
  if (!qword_27DAF2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B78);
  }

  return result;
}

unint64_t sub_22FF273BC()
{
  result = qword_27DAF2B80;
  if (!qword_27DAF2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B80);
  }

  return result;
}

unint64_t sub_22FF27414()
{
  result = qword_27DAF2B88;
  if (!qword_27DAF2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B88);
  }

  return result;
}

unint64_t sub_22FF2746C()
{
  result = qword_27DAF2B90;
  if (!qword_27DAF2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B90);
  }

  return result;
}

unint64_t sub_22FF274C4()
{
  result = qword_27DAF2B98;
  if (!qword_27DAF2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B98);
  }

  return result;
}

unint64_t sub_22FF2751C()
{
  result = qword_27DAF2BA0;
  if (!qword_27DAF2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BA0);
  }

  return result;
}

unint64_t sub_22FF27574()
{
  result = qword_27DAF2BA8;
  if (!qword_27DAF2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BA8);
  }

  return result;
}

unint64_t sub_22FF275CC()
{
  result = qword_27DAF2BB0;
  if (!qword_27DAF2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BB0);
  }

  return result;
}

unint64_t sub_22FF27624()
{
  result = qword_27DAF2BB8;
  if (!qword_27DAF2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BB8);
  }

  return result;
}

unint64_t sub_22FF2767C()
{
  result = qword_27DAF2BC0;
  if (!qword_27DAF2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BC0);
  }

  return result;
}

unint64_t sub_22FF276D4()
{
  result = qword_27DAF2BC8;
  if (!qword_27DAF2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BC8);
  }

  return result;
}

unint64_t sub_22FF2772C()
{
  result = qword_27DAF2BD0;
  if (!qword_27DAF2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BD0);
  }

  return result;
}

uint64_t sub_22FF27780(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_22FFB0738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_22FFB0588();
  if (v3)
  {
    result = sub_22FFB05B8();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_22FFB05A8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_22FF55698(v3, v7);

  return v8;
}

uint64_t sub_22FF27864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB06F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FFB06E8();
  if (a2)
  {
    sub_22FFB05D8();
    swift_allocObject();

    v10 = sub_22FFB0568();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_22FFB05C8();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_22FF27780(v10, a2);
  }

  else
  {
    v13 = sub_22FFB06E8();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_22FF27A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022FFCA980 == a2;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365747441706573 && a2 == 0xEE006E6F69746174 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B6369547061 && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614864656C616573 && a2 == 0xEC00000073656873 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726970784579656BLL && a2 == 0xED00006E6F697461 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022FFCA9A0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F506C61636F6CLL && a2 == 0xEB00000000796369 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x66696E614D726673 && a2 == 0xEB00000000747365)
  {

    return 8;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22FF27DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747365676964 && a2 == 0xE600000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x78657470797263 && a2 == 0xE700000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5378657470797263 && a2 == 0xEB00000000746C61 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43657275636573 && a2 == 0xEC0000006769666ELL || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF27FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E65 && a2 == 0xE500000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF280B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6843507 && a2 == 0xE300000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022FFCA9C0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574794265646F6ELL && a2 == 0xE900000000000073 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69736F5065646F6ELL && a2 == 0xEC0000006E6F6974 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570795465646F6ELL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF282C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022FFCA9E0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF283F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x484C537472617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x484C53646E65 && a2 == 0xE600000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736148666F6F7270 && a2 == 0xEB00000000736568 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FFCA480 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FFCA4A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

unint64_t sub_22FF285B0()
{
  result = qword_28148F370;
  if (!qword_28148F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F370);
  }

  return result;
}

unint64_t sub_22FF28604()
{
  result = qword_27DAF2BD8;
  if (!qword_27DAF2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BD8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s5ErrorOwet_1(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t _s5ErrorOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FF286F8(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22FF28710(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for Proto_TransparencyProofs);
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void PrivateCloudCompute_ReleaseMetadata.schemaVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.schemaVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseCreation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v6 + 40), v5, &qword_27DAF1520, &qword_22FFB3A30);
  v7 = sub_22FFB0EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_22FFB0ED8();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF28A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v7 + 40), v6, &qword_27DAF1520, &qword_22FFB3A30);
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_22FFB0ED8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF28B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(a2 + v8, &qword_27DAF1520, &qword_22FFB3A30);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseCreation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(v1 + v3, &qword_27DAF1520, &qword_22FFB3A30);
  v4 = sub_22FFB0EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.releaseCreation.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_22FFB0EE8();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF1520, &qword_22FFB3A30);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0ED8();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF28FB0;
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasReleaseCreation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v4 + 40), v3, &qword_27DAF1520, &qword_22FFB3A30);
  v5 = sub_22FFB0EE8();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF1520, &qword_22FFB3A30);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearReleaseCreation()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(v0 + v1, &qword_27DAF1520, &qword_22FFB3A30);
  v2 = sub_22FFB0EE8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseDigest.getter()
{
  v1 = *(v0 + 16);
  sub_22FEA5608(v1, *(v0 + 24));
  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseDigest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.assets.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.darwinInit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v6 + 44), v5, &qword_27DAF2D38, &qword_22FFBA2F0);
  v7 = sub_22FFB0F38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_22FFB0F28();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  return result;
}

uint64_t sub_22FF29388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v7 + 44), v6, &qword_27DAF2D38, &qword_22FFBA2F0);
  v8 = sub_22FFB0F38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_22FFB0F28();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  return result;
}

uint64_t sub_22FF294F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2D38, &qword_22FFBA2F0);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.darwinInit.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D38, &qword_22FFBA2F0);
  v4 = sub_22FFB0F38();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.darwinInit.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_22FFB0F38();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D38, &qword_22FFBA2F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0F28();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D38, &qword_22FFBA2F0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF29908;
}

void sub_22FF2991C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))((*a1)[4], v9, v10);
    sub_22FEAEA34(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v8, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    sub_22FEAEA34(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v9, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasDarwinInit.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v4 + 44), v3, &qword_27DAF2D38, &qword_22FFBA2F0);
  v5 = sub_22FFB0F38();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2D38, &qword_22FFBA2F0);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearDarwinInit()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D38, &qword_22FFBA2F0);
  v2 = sub_22FFB0F38();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.requirements.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.application.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v6 + 48), v5, &qword_27DAF2D40, &qword_22FFBA2F8);
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF2A164(v5, a1, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  return result;
}

uint64_t sub_22FF29DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v7 + 48), v6, &qword_27DAF2D40, &qword_22FFBA2F8);
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a2, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  return result;
}

uint64_t sub_22FF29F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  v8 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FF2A164(v7, a2 + v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.application.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2A164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*PrivateCloudCompute_ReleaseMetadata.application.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D40, &qword_22FFBA2F8);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  return sub_22FF2A3E4;
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasApplication.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v4 + 48), v3, &qword_27DAF2D40, &qword_22FFBA2F8);
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2D40, &qword_22FFBA2F8);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearApplication()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D40, &qword_22FFBA2F8);
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.buildVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.buildVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.SchemaVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.SchemaVersion.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF2A7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2D6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.AssetType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A854(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF32AA4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.FileType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF32AF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.DigestAlg.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF3295C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.digest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(v1 + *(v6 + 36), v5, &qword_27DAF2D48, &qword_22FFBA300);
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF2A164(v5, a1, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2D48, &qword_22FFBA300);
  }

  return result;
}

uint64_t sub_22FF2ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(a1 + *(v7 + 36), v6, &qword_27DAF2D48, &qword_22FFBA300);
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a2, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D48, &qword_22FFBA300);
  }

  return result;
}

uint64_t sub_22FF2AE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v8 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FF2A164(v7, a2 + v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.digest.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.Asset.digest.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D48, &qword_22FFBA300);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D48, &qword_22FFBA300);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  return sub_22FF2B230;
}

uint64_t sub_22FF2B26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF2B2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL PrivateCloudCompute_ReleaseMetadata.Asset.hasDigest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(v0 + *(v4 + 36), v3, &qword_27DAF2D48, &qword_22FFBA300);
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2D48, &qword_22FFBA300);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.Asset.clearDigest()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D48, &qword_22FFBA300);
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.variant.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.variant.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.ticket.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_22FEBF8F0(*v1, v2);
  return v3;
}

uint64_t sub_22FF2B58C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v5 = *v4;
  v6 = v4[1];
  sub_22FEA5608(v2, v3);
  result = sub_22FEA56EC(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.ticket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  result = sub_22FEA56EC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*PrivateCloudCompute_ReleaseMetadata.Asset.ticket.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_22FEBF8F0(v5, v6);
  return sub_22FF2B6AC;
}

uint64_t sub_22FF2B6AC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_22FEA5608(*a1, v2);
    sub_22FEA56EC(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_22FEA55AC(v4, v2);
  }

  else
  {
    result = sub_22FEA56EC(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.Asset.clearTicket()()
{
  v1 = v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  sub_22FEA56EC(*v1, *(v1 + 8));
  *v1 = xmmword_22FFB2D00;
}

void PrivateCloudCompute_ReleaseMetadata.Asset.fileType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.fileType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double PrivateCloudCompute_ReleaseMetadata.Asset.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = 0.0;
  *(a1 + *(v2 + 40)) = xmmword_22FFB2D00;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.availability.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.availability.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_22FF2BAB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF2BB74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v3 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = v3[10];
  v5 = sub_22FFB0EE8();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[11];
  v7 = sub_22FFB0F38();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v3[12];
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.proxiedRelease.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22FF2BF2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF2BFE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.digest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.digest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2118, &unk_22FFB5C70);
  v7 = type metadata accessor for Proto_TransparencyProofs(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF2A164(v5, a1, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF2C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2118, &unk_22FFB5C70);
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a2, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF2C470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v7, type metadata accessor for Proto_TransparencyProofs);
  v8 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FF2A164(v7, a2 + v8, type metadata accessor for Proto_TransparencyProofs);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2118, &unk_22FFB5C70);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for Proto_TransparencyProofs);
  }

  return sub_22FF2C7F4;
}

void sub_22FF2C830(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_22FF2B26C(v12, v11, a6);
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF2A164(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_22FF2B2D4(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF2A164(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.hasTransparencyProofs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(v0 + *(v4 + 24), v3, &qword_27DAF2118, &unk_22FFB5C70);
  v5 = type metadata accessor for Proto_TransparencyProofs(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2118, &unk_22FFB5C70);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.clearTransparencyProofs()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2118, &unk_22FFB5C70);
  v2 = type metadata accessor for Proto_TransparencyProofs(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v2 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2CC54()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2BE0);
  __swift_project_value_buffer(v0, qword_27DAF2BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22FFB6390;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "schema_version";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "release_creation";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "release_digest";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assets";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "darwin_init";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "requirements";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "application";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "build_version";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_22FF2D374(a1, v5, a2, a3);
          }

          else if (result == 8)
          {
            sub_22FFB10E8();
          }
        }

        else
        {
          if (result != 5)
          {
            v11 = v4;
            type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
            sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
LABEL_17:
            v4 = v11;
            sub_22FFB1118();
            goto LABEL_5;
          }

          sub_22FF2D2C0(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v11 = v4;
          type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
          sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Asset);
          goto LABEL_17;
        }

        sub_22FFB10C8();
      }

      else if (result == 1)
      {
        sub_22FF2D6A8();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        sub_22FF2D20C(a1, v5, a2, a3);
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF2D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FFB0EE8();
  sub_22FF2DB34(&qword_28148F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_22FFB1128();
}

uint64_t sub_22FF2D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FFB0F38();
  sub_22FF2DB34(&qword_27DAF2FA0, MEMORY[0x277D21610], MEMORY[0x277D21608]);
  return sub_22FFB1128();
}

uint64_t sub_22FF2D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Application);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_22FF2D6A8();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  result = sub_22FF2D6FC(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v9 = v3[2];
  v10 = v3[3];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_14;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_13:
    sub_22FFB1228();
  }

LABEL_14:
  if (*(v3[4] + 16))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
    sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Asset);
    sub_22FFB1278();
  }

  sub_22FF2D918(v3, a1, a2, a3);
  if (*(v3[5] + 16))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
    sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
    sub_22FFB1278();
  }

  sub_22FF2DB7C(v3, a1, a2, a3);
  v14 = v3[7];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v3[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_22FFB1248();
  }

  type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  return sub_22FFB0F68();
}

unint64_t sub_22FF2D6A8()
{
  result = qword_27DAF2D50;
  if (!qword_27DAF2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D50);
  }

  return result;
}

uint64_t sub_22FF2D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v12 + 40), v7, &qword_27DAF1520, &qword_22FFB3A30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1520, &qword_22FFB3A30);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22FF2DB34(&qword_28148F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22FFB1288();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FF2D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_22FFB0F38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v12 + 44), v7, &qword_27DAF2D38, &qword_22FFBA2F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22FF2DB34(&qword_27DAF2FA0, MEMORY[0x277D21610], MEMORY[0x277D21608]);
  sub_22FFB1288();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FF2DB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF2DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v12 + 48), v7, &qword_27DAF2D40, &qword_22FFBA2F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  sub_22FF2A164(v7, v11, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FFB1288();
  return sub_22FF2B2D4(v11, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
}

uint64_t sub_22FF2DDE4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 32) = MEMORY[0x277D84F90];
  *(a2 + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = a1[10];
  v6 = sub_22FFB0EE8();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[11];
  v8 = sub_22FFB0F38();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[12];
  v10 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_22FF2DF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2E00C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2E60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2E078(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_27DAF2E60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2E0F8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2BF8);
  __swift_project_value_buffer(v0, qword_27DAF2BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SCHEMA_VERSION_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCHEMA_VERSION_V1";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E308()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C10);
  __swift_project_value_buffer(v0, qword_27DAF2C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB6380;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ASSET_TYPE_UNSPECIFIED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASSET_TYPE_OS";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASSET_TYPE_PCS";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ASSET_TYPE_MODEL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ASSET_TYPE_HOST_TOOLS";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ASSET_TYPE_DEBUG_SHELL";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E618()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C28);
  __swift_project_value_buffer(v0, qword_27DAF2C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FILE_TYPE_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FILE_TYPE_IPSW";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FILE_TYPE_DISKIMAGE";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FILE_TYPE_APPLEARCHIVE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E8A4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C40);
  __swift_project_value_buffer(v0, qword_27DAF2C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DIGEST_ALG_UNSPECIFIED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIGEST_ALG_SHA256";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DIGEST_ALG_SHA384";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2EB44()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C68);
  __swift_project_value_buffer(v0, qword_27DAF2C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest_alg";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF3295C();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        sub_22FFB10C8();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF3295C(), result = sub_22FFB1208(), !v4))
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_22FFB1228();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_12:
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF2EF4C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2EFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F70, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2F07C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2F0E8(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2F1B0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C90);
  __swift_project_value_buffer(v0, qword_27DAF2C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FFB6380;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "url";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "digest";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "variant";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ticket";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "file_type";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_18;
          case 5:
            type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
            sub_22FFB10B8();
            break;
          case 6:
            v11 = v4;
            sub_22FF32AF8();
LABEL_17:
            v4 = v11;
            sub_22FFB1098();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            sub_22FF32AA4();
            goto LABEL_17;
          case 2:
LABEL_18:
            sub_22FFB10E8();
            break;
          case 3:
            sub_22FF2F5F8(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF2F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Digest);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF32AA4(), result = sub_22FFB1208(), !v4))
  {
    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_22FFB1248(), !v4))
    {
      result = sub_22FF2F83C(v3, a1, a2, a3);
      if (!v4)
      {
        v11 = v3[5];
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = v3[4] & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          sub_22FFB1248();
        }

        sub_22FF2FA58(v3);
        if (v3[6])
        {
          sub_22FF32AF8();
          sub_22FFB1208();
        }

        type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
        return sub_22FFB0F68();
      }
    }
  }

  return result;
}

uint64_t sub_22FF2F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(a1 + *(v12 + 36), v7, &qword_27DAF2D48, &qword_22FFBA300);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D48, &qword_22FFBA300);
  }

  sub_22FF2A164(v7, v11, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FFB1288();
  return sub_22FF2B2D4(v11, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
}

uint64_t sub_22FF2FA58(uint64_t a1)
{
  result = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_22FEA5608(*v3, *(v3 + 8));
    sub_22FFB1228();
    return sub_22FEA56EC(v5, v4);
  }

  return result;
}

double sub_22FF2FB44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = 0.0;
  *(a2 + *(a1 + 40)) = xmmword_22FFB2D00;
  return result;
}

uint64_t sub_22FF2FC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F68, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2FCE8(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2FD54(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2FDD4()
{
  result = MEMORY[0x23190DD10](0xD000000000000010, 0x800000022FFCAA90);
  qword_27DAF2CA8 = 0xD000000000000023;
  qword_27DAF2CB0 = 0x800000022FFCAA00;
  return result;
}

uint64_t sub_22FF2FE70()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2CB8);
  __swift_project_value_buffer(v0, qword_27DAF2CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "feature";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "availability";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_22FFB10E8();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_22FFB1248(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_22FFB1248(), !v4))
    {
      type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t static PrivateCloudCompute_ReleaseMetadata.ToolRequirement.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF303C0(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF3042C(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return sub_22FFB11A8();
}

uint64_t sub_22FF304A8(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF305B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23190DD10](a2, a3);
  *a4 = 0xD000000000000023;
  *a5 = 0x800000022FFCAA00;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10E8();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_22FFB1248(), !v4))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static PrivateCloudCompute_ReleaseMetadata.Application.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30894@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF30914(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Application);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF309B4(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Application);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF30A20(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, &protocol conformance descriptor for PrivateCloudCompute_ReleaseMetadata.Application);

  return sub_22FFB11A8();
}

uint64_t sub_22FF30A9C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
        sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0), sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease), result = sub_22FFB1278(), !v4))
  {
    type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static PrivateCloudCompute_ProxyNodeMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FEEAAB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F50, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF30F88(uint64_t a1)
{
  v2 = sub_22FF2DB34(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF30FF4(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);

  return sub_22FFB11A8();
}

uint64_t sub_22FF31070(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FEEAAB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF31118()
{
  result = MEMORY[0x23190DD10](0x646569786F72502ELL, 0xEF657361656C6552);
  qword_27DAF2D10 = 0xD000000000000025;
  *algn_27DAF2D18 = 0x800000022FFCAA30;
  return result;
}

uint64_t sub_22FF311B8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2D20);
  __swift_project_value_buffer(v0, qword_27DAF2D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "transparency_proofs";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }

    else if (result == 2)
    {
      sub_22FF3143C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF3143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FF2DB34(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
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
    result = sub_22FFB1228();
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
  result = sub_22FF315C8(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF315C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(a1 + *(v12 + 24), v7, &qword_27DAF2118, &unk_22FFB5C70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2118, &unk_22FFB5C70);
  }

  sub_22FF2A164(v7, v11, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF2DB34(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  sub_22FFB1288();
  return sub_22FF2B2D4(v11, type metadata accessor for Proto_TransparencyProofs);
}

uint64_t sub_22FF31830(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF2DB34(a2, a3, a4);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF318B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Proto_TransparencyProofs(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_22FF3199C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F48, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF31A3C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF31AA8(uint64_t a1, uint64_t a2)
{
  sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return sub_22FFB11A8();
}

uint64_t _s16CloudAttestation07PrivateA25Compute_ProxyNodeMetadataV14ProxiedReleaseV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2120, &qword_22FFB90B0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_8;
  }

  v21 = v7;
  v22 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF2118, &unk_22FFB5C70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF2118, &unk_22FFB5C70);
LABEL_11:
      sub_22FFB0F88();
      sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22FFB1478();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF2118, &unk_22FFB5C70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22FF2B2D4(v10, type metadata accessor for Proto_TransparencyProofs);
LABEL_7:
    sub_22FEAEA34(v13, &qword_27DAF2120, &qword_22FFB90B0);
    goto LABEL_8;
  }

  v19 = v21;
  sub_22FF2A164(&v13[v15], v21, type metadata accessor for Proto_TransparencyProofs);
  v20 = _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(v10, v19);
  sub_22FF2B2D4(v19, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF2B2D4(v10, type metadata accessor for Proto_TransparencyProofs);
  sub_22FEAEA34(v13, &qword_27DAF2118, &unk_22FFB5C70);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = (&v64 - v8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F88, &qword_22FFBB3B8);
  MEMORY[0x28223BE20](v69);
  v10 = &v64 - v9;
  v11 = sub_22FFB0F38();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v64 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F90, &unk_22FFBB3C0);
  MEMORY[0x28223BE20](v74);
  v75 = &v64 - v15;
  v16 = sub_22FFB0EE8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2870, &qword_22FFB90B8);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v26 = *a1;
  v27 = *a2;
  if (*(a1 + 8))
  {
    v26 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v27)
    {
      if (v26 != 1)
      {
        goto LABEL_42;
      }
    }

    else if (v26)
    {
LABEL_42:
      v62 = 0;
      return v62 & 1;
    }
  }

  else if (v26 != v27)
  {
    goto LABEL_42;
  }

  v64 = v6;
  v65 = v10;
  v28 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  v29 = *(v28 + 40);
  v30 = *(v23 + 48);
  v66 = v28;
  v67 = a1;
  sub_22FEBF3A4(a1 + v29, v25, &qword_27DAF1520, &qword_22FFB3A30);
  v31 = a2 + v29;
  v32 = a2;
  sub_22FEBF3A4(v31, &v25[v30], &qword_27DAF1520, &qword_22FFB3A30);
  v33 = *(v17 + 48);
  if (v33(v25, 1, v16) == 1)
  {
    if (v33(&v25[v30], 1, v16) == 1)
    {
      sub_22FEAEA34(v25, &qword_27DAF1520, &qword_22FFB3A30);
      goto LABEL_18;
    }

LABEL_15:
    v34 = &qword_27DAF2870;
    v35 = &qword_22FFB90B8;
    v36 = v25;
LABEL_16:
    sub_22FEAEA34(v36, v34, v35);
    goto LABEL_42;
  }

  sub_22FEBF3A4(v25, v22, &qword_27DAF1520, &qword_22FFB3A30);
  if (v33(&v25[v30], 1, v16) == 1)
  {
    (*(v17 + 8))(v22, v16);
    goto LABEL_15;
  }

  (*(v17 + 32))(v19, &v25[v30], v16);
  sub_22FF2DB34(&qword_27DAF2880, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v37 = sub_22FFB1478();
  v38 = *(v17 + 8);
  v38(v19, v16);
  v38(v22, v16);
  sub_22FEAEA34(v25, &qword_27DAF1520, &qword_22FFB3A30);
  if ((v37 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v39 = v67;
  if (!sub_22FEC3DC8(v67[2], v67[3], *(a2 + 16), *(a2 + 24)) || (sub_22FEEB6E0(v39[4], *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v40 = v66;
  v41 = *(v66 + 44);
  v42 = v75;
  v43 = *(v74 + 48);
  sub_22FEBF3A4(v39 + v41, v75, &qword_27DAF2D38, &qword_22FFBA2F0);
  sub_22FEBF3A4(v32 + v41, v42 + v43, &qword_27DAF2D38, &qword_22FFBA2F0);
  v45 = v76;
  v44 = v77;
  v46 = *(v76 + 48);
  if (v46(v42, 1, v77) == 1)
  {
    if (v46(v42 + v43, 1, v44) == 1)
    {
      sub_22FEAEA34(v42, &qword_27DAF2D38, &qword_22FFBA2F0);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v47 = v73;
  sub_22FEBF3A4(v42, v73, &qword_27DAF2D38, &qword_22FFBA2F0);
  if (v46(v42 + v43, 1, v44) == 1)
  {
    (*(v45 + 8))(v47, v44);
LABEL_25:
    v34 = &qword_27DAF2F90;
    v35 = &unk_22FFBB3C0;
    v36 = v42;
    goto LABEL_16;
  }

  v48 = v72;
  (*(v45 + 32))(v72, v42 + v43, v44);
  sub_22FF2DB34(&qword_27DAF2F98, MEMORY[0x277D21610], MEMORY[0x277D21618]);
  v49 = sub_22FFB1478();
  v50 = *(v45 + 8);
  v50(v48, v44);
  v50(v47, v44);
  sub_22FEAEA34(v42, &qword_27DAF2D38, &qword_22FFBA2F0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  if ((sub_22FEEB898(v39[5], v32[5]) & 1) == 0)
  {
    goto LABEL_42;
  }

  v51 = *(v40 + 48);
  v52 = *(v69 + 48);
  v53 = v65;
  sub_22FEBF3A4(v39 + v51, v65, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FEBF3A4(v32 + v51, v53 + v52, &qword_27DAF2D40, &qword_22FFBA2F8);
  v54 = v71;
  v55 = *(v70 + 48);
  if (v55(v53, 1, v71) == 1)
  {
    if (v55(v53 + v52, 1, v54) == 1)
    {
      sub_22FEAEA34(v53, &qword_27DAF2D40, &qword_22FFBA2F8);
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v56 = v68;
  sub_22FEBF3A4(v53, v68, &qword_27DAF2D40, &qword_22FFBA2F8);
  if (v55(v53 + v52, 1, v54) == 1)
  {
    sub_22FF2B2D4(v56, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
LABEL_33:
    v34 = &qword_27DAF2F88;
    v35 = &qword_22FFBB3B8;
    v36 = v53;
    goto LABEL_16;
  }

  v57 = v53 + v52;
  v58 = v64;
  sub_22FF2A164(v57, v64, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  if ((*v56 != *v58 || v56[1] != v58[1]) && (sub_22FFB1BC8() & 1) == 0)
  {
    sub_22FF2B2D4(v64, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
    sub_22FF2B2D4(v56, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
    v34 = &qword_27DAF2D40;
    v35 = &qword_22FFBA2F8;
    v36 = v65;
    goto LABEL_16;
  }

  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v59 = v56;
  v60 = v64;
  v61 = sub_22FFB1478();
  sub_22FF2B2D4(v60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FF2B2D4(v59, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FEAEA34(v65, &qword_27DAF2D40, &qword_22FFBA2F8);
  if ((v61 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((v39[6] != v32[6] || v39[7] != v32[7]) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v62 = sub_22FFB1478();
  return v62 & 1;
}

unint64_t sub_22FF3295C()
{
  result = qword_27DAF2D70;
  if (!qword_27DAF2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D70);
  }

  return result;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV6DigestV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEC3DC8(a1[2], a1[3], a2[2], a2[3]))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
    sub_22FFB0F88();
    sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

unint64_t sub_22FF32AA4()
{
  result = qword_27DAF2D80;
  if (!qword_27DAF2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D80);
  }

  return result;
}

unint64_t sub_22FF32AF8()
{
  result = qword_27DAF2D88;
  if (!qword_27DAF2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D88);
  }

  return result;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV5AssetV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v33 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F80, &qword_22FFBB3B0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        if (v14 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v14)
    {
      goto LABEL_38;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_38;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_38;
  }

  v16 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  v17 = *(v16 + 36);
  v18 = *(v11 + 48);
  v33 = v16;
  v34 = a1;
  sub_22FEBF3A4(a1 + v17, v13, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FEBF3A4(a2 + v17, &v13[v18], &qword_27DAF2D48, &qword_22FFBA300);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF2D48, &qword_22FFBA300);
      goto LABEL_22;
    }

LABEL_20:
    sub_22FEAEA34(v13, &qword_27DAF2F80, &qword_22FFBB3B0);
    goto LABEL_38;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF2D48, &qword_22FFBA300);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_22FF2B2D4(v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
    goto LABEL_20;
  }

  sub_22FF2A164(&v13[v18], v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v20 = _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV6DigestV2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_22FF2B2D4(v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FF2B2D4(v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FEAEA34(v13, &qword_27DAF2D48, &qword_22FFBA300);
  if ((v20 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  v21 = v34;
  if ((v34[4] != *(a2 + 32) || v34[5] != *(a2 + 40)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_38;
  }

  v22 = *(v33 + 40);
  v24 = *(v21 + v22);
  v23 = *(v21 + v22 + 8);
  v25 = (a2 + v22);
  v27 = *v25;
  v26 = v25[1];
  if (v23 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      sub_22FEBF8F0(v24, v23);
      sub_22FEBF8F0(v27, v26);
      sub_22FEA56EC(v24, v23);
      goto LABEL_41;
    }

LABEL_37:
    sub_22FEBF8F0(v24, v23);
    sub_22FEBF8F0(v27, v26);
    sub_22FEA56EC(v24, v23);
    sub_22FEA56EC(v27, v26);
    goto LABEL_38;
  }

  if (v26 >> 60 == 15)
  {
    goto LABEL_37;
  }

  sub_22FEBF8F0(v24, v23);
  sub_22FEBF8F0(v27, v26);
  v30 = sub_22FEC3DC8(v24, v23, v27, v26);
  sub_22FEA56EC(v27, v26);
  sub_22FEA56EC(v24, v23);
  if (!v30)
  {
    goto LABEL_38;
  }

LABEL_41:
  v31 = v21[6];
  v32 = *(a2 + 48);
  if (*(a2 + 56) != 1)
  {
    if (v31 != v32)
    {
      goto LABEL_38;
    }

LABEL_47:
    sub_22FFB0F88();
    sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v28 = sub_22FFB1478();
    return v28 & 1;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v31 != 3)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if (v32)
  {
    if (v31 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if (!v31)
  {
    goto LABEL_47;
  }

LABEL_38:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_22FF330C4()
{
  result = qword_27DAF2DB8;
  if (!qword_27DAF2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DB8);
  }

  return result;
}

unint64_t sub_22FF3311C()
{
  result = qword_27DAF2DC0;
  if (!qword_27DAF2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DC0);
  }

  return result;
}

unint64_t sub_22FF331A4()
{
  result = qword_27DAF2DD8;
  if (!qword_27DAF2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DD8);
  }

  return result;
}

unint64_t sub_22FF331FC()
{
  result = qword_27DAF2DE0;
  if (!qword_27DAF2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DE0);
  }

  return result;
}

unint64_t sub_22FF33254()
{
  result = qword_27DAF2DE8;
  if (!qword_27DAF2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DE8);
  }

  return result;
}

unint64_t sub_22FF332DC()
{
  result = qword_27DAF2E00;
  if (!qword_27DAF2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E00);
  }

  return result;
}

unint64_t sub_22FF33334()
{
  result = qword_27DAF2E08;
  if (!qword_27DAF2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E08);
  }

  return result;
}

unint64_t sub_22FF3338C()
{
  result = qword_27DAF2E10;
  if (!qword_27DAF2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E10);
  }

  return result;
}

unint64_t sub_22FF33414()
{
  result = qword_27DAF2E28;
  if (!qword_27DAF2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E28);
  }

  return result;
}

unint64_t sub_22FF3346C()
{
  result = qword_27DAF2E30;
  if (!qword_27DAF2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E30);
  }

  return result;
}

unint64_t sub_22FF334C4()
{
  result = qword_27DAF2E38;
  if (!qword_27DAF2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E38);
  }

  return result;
}

unint64_t sub_22FF3354C()
{
  result = qword_27DAF2E50;
  if (!qword_27DAF2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2E50);
  }

  return result;
}

void sub_22FF33DA8(uint64_t a1)
{
  sub_22FF33F9C(319, &qword_27DAF2EE0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FF33F9C(319, &qword_27DAF2EE8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22FFB0F88();
      if (v3 <= 0x3F)
      {
        sub_22FF33F9C(319, &qword_28148F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22FF33F9C(319, &qword_27DAF2EF0, MEMORY[0x277D21610], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22FF33F9C(319, &qword_27DAF2EF8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22FF33F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22FF340A4(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF33F9C(319, &qword_27DAF2F20, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22FF34194();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF34194()
{
  if (!qword_281491340)
  {
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_281491340);
    }
  }
}

uint64_t sub_22FF3421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22FFB0F88();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF342B8(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF3435C(uint64_t a1)
{
  sub_22FF33F9C(319, &qword_28148F148, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF34438(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF33F9C(319, qword_28148F820, type metadata accessor for Proto_TransparencyProofs, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t PrivateCloudCompute_Environment.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >= 0xA)
  {
    if (result > 97)
    {
      if (result == 98)
      {
        v2 = 1;
        result = 12;
        goto LABEL_3;
      }

      if (result == 99)
      {
        v2 = 1;
        result = 13;
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 96)
      {
        v2 = 1;
        result = 10;
        goto LABEL_3;
      }

      if (result == 97)
      {
        v2 = 1;
        result = 11;
        goto LABEL_3;
      }
    }

    v2 = 0;
    goto LABEL_3;
  }

  v2 = 1;
LABEL_3:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_Environment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBB5A8[result];
  }

  return result;
}

uint64_t sub_22FF34600()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBB5A8[result];
  }

  return result;
}

void sub_22FF34638(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBB5A8[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF3465C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF05888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FF346C4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2FA8);
  __swift_project_value_buffer(v0, qword_27DAF2FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22FFBB3D0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PRODUCTION";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CARRY";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "STAGING";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "QA";
  *(v15 + 1) = 2;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "PERF";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "EPHEMERAL";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DEV";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "LIVEON";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "QUARANTINE";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 96;
  *v26 = "QA1_PRIMARY";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 97;
  *v28 = "QA1_INTERNAL";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 98;
  *v30 = "QA2_PRIMARY";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 99;
  *v32 = "QA2_INTERNAL";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t static PrivateCloudCompute_Environment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12C8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF2FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22FF34C14()
{
  result = qword_27DAF2FC0;
  if (!qword_27DAF2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FC0);
  }

  return result;
}

unint64_t sub_22FF34C6C()
{
  result = qword_27DAF2FC8;
  if (!qword_27DAF2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FC8);
  }

  return result;
}

unint64_t sub_22FF34CC4()
{
  result = qword_27DAF2FD0;
  if (!qword_27DAF2FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2FD8, &qword_22FFBB428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FD0);
  }

  return result;
}

unint64_t sub_22FF34D2C()
{
  result = qword_27DAF2FE0;
  if (!qword_27DAF2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2FE0);
  }

  return result;
}

uint64_t sub_22FF34D80@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12C8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF2FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LogEntry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = xmmword_22FFB33B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for LogEntry(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t SignedObject.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v2 = type metadata accessor for SignedObject(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Signature(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

BOOL LogEntry.hasSlh.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(v0 + *(v4 + 40), v3, &qword_27DAF2338, &unk_22FFBB620);
  v5 = type metadata accessor for SignedObject(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2338, &unk_22FFBB620);
  return v6;
}

uint64_t LogEntry.slh.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(v1 + *(v6 + 40), v5, &qword_27DAF2338, &unk_22FFBB620);
  v7 = type metadata accessor for SignedObject(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for SignedObject);
  }

  *a1 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Signature(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

BOOL SignedObject.hasSignature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(v0 + *(v4 + 24), v3, &qword_27DAF2A48, &qword_22FFB9178);
  v5 = type metadata accessor for Signature(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2A48, &qword_22FFB9178);
  return v6;
}

uint64_t SignedObject.signature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2A48, &qword_22FFB9178);
  v7 = type metadata accessor for Signature(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for Signature);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2A48, &qword_22FFB9178);
  }

  return result;
}

unint64_t ProtocolVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 4;
  if (result != 999999999)
  {
    v2 = result;
  }

  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  v3 = result < 4 || result == 999999999;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t ProtocolVersion.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB58[result];
  }

  return result;
}

uint64_t sub_22FF3554C()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB58[result];
  }

  return result;
}

void sub_22FF35584(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF355A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03C58();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_22FF355F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFBDB58[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_22FFBDB58[v3];
  }

  return v2 == v3;
}

unint64_t Application.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35684(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03CAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Status.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 4)
  {
    switch(result)
    {
      case 5uLL:
        v2 = 1;
        result = 4;
        goto LABEL_15;
      case 6uLL:
        v2 = 1;
        result = 5;
        goto LABEL_15;
      case 7uLL:
        v2 = 1;
        result = 6;
        goto LABEL_15;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_15;
  }

  if (result < 2)
  {
    v2 = 1;
    goto LABEL_15;
  }

  if (result == 3)
  {
    v2 = 1;
    result = 2;
    goto LABEL_15;
  }

  if (result != 4)
  {
    goto LABEL_12;
  }

  v2 = 1;
  result = 3;
LABEL_15:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Status.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB20[result];
  }

  return result;
}

uint64_t sub_22FF357AC()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFBDB20[result];
  }

  return result;
}

void sub_22FF357E4(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFBDB20[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FF35808(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04D78();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t VRFType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 3;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t VRFType.rawValue.getter()
{
  v1 = 3;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF358CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 3)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF358F8()
{
  v1 = 3;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_22FF35928@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 3;
  if (*result == 3)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_22FF35958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 3;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_22FF3597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF46A04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_22FF359C8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

unint64_t LogType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4C33C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t MapType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t MapType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF35AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4C7C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t NodeType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF35B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF058DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void VRFWitness.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t VRFWitness.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t VRFWitness.output.getter()
{
  v1 = *(v0 + 16);
  sub_22FEA5608(v1, *(v0 + 24));
  return v1;
}

uint64_t VRFWitness.output.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VRFWitness.proof.getter()
{
  v1 = *(v0 + 32);
  sub_22FEA5608(v1, *(v0 + 40));
  return v1;
}

uint64_t VRFWitness.proof.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t VRFWitness.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = xmmword_22FFB33B0;
  type metadata accessor for VRFWitness(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void VRFPublicKey.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t VRFPublicKey.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Signature.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Signature.algorithm.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_22FF35F78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF36014(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF360F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF4BE68();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Signature.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  type metadata accessor for Signature(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF36190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SignedObject.object.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SignedObject.object.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_22FF362C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for SignedObject(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2A48, &qword_22FFB9178);
  v8 = type metadata accessor for Signature(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a2, type metadata accessor for Signature);
  }

  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2A48, &qword_22FFB9178);
  }

  return result;
}

uint64_t sub_22FF36438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signature(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v7, type metadata accessor for Signature);
  v8 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FF36190(v7, a2 + v8, type metadata accessor for Signature);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t SignedObject.signature.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2A48, &qword_22FFB9178);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for Signature);
  v4 = type metadata accessor for Signature(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SignedObject.signature.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Signature(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SignedObject(0) + 24);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2A48, &qword_22FFB9178);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = xmmword_22FFB33B0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2A48, &qword_22FFB9178);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for Signature);
  }

  return sub_22FF3684C;
}

Swift::Void __swiftcall SignedObject.clearSignature()()
{
  v1 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2A48, &qword_22FFB9178);
  v2 = type metadata accessor for Signature(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void LogHead.logType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t LogHead.logType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void LogHead.application.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t LogHead.application.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t LogHead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  type metadata accessor for LogHead(0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF36C2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for LogEntry(0);
  sub_22FEBF3A4(a1 + *(v7 + 40), v6, &qword_27DAF2338, &unk_22FFBB620);
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Signature(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF36DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v7, type metadata accessor for SignedObject);
  v8 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v7, a2 + v8, type metadata accessor for SignedObject);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t LogEntry.slh.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for SignedObject);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*LogEntry.slh.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for LogEntry(0) + 40);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Signature(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t sub_22FF37224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF3728C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall LogEntry.clearSlh()()
{
  v1 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2338, &unk_22FFBB620);
  v2 = type metadata accessor for SignedObject(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t LogEntry.hashesOfPeersInPathToRoot.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t LogEntry.nodeBytes.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

uint64_t LogEntry.nodeBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t LogEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogEntry(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LogEntry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEntry(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MapHead.mapHeadHash.getter()
{
  v1 = *(v0 + 8);
  sub_22FEA5608(v1, *(v0 + 16));
  return v1;
}

uint64_t MapHead.mapHeadHash.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void MapHead.application.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t MapHead.application.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t MapHead.changeLogHead.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(v1 + *(v6 + 52), v5, &qword_27DAF31A8, &qword_22FFBB630);
  v7 = type metadata accessor for LogHead(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for LogHead);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xC000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF31A8, &qword_22FFBB630);
  }

  return result;
}

uint64_t sub_22FF37868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogHead(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v7, type metadata accessor for LogHead);
  v8 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(a2 + v8, &qword_27DAF31A8, &qword_22FFBB630);
  sub_22FF36190(v7, a2 + v8, type metadata accessor for LogHead);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t MapHead.changeLogHead.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(v1 + v3, &qword_27DAF31A8, &qword_22FFBB630);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for LogHead);
  v4 = type metadata accessor for LogHead(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*MapHead.changeLogHead.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LogHead(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for MapHead(0) + 52);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF31A8, &qword_22FFBB630);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xC000000000000000;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    *(v14 + 72) = 0;
    *(v14 + 80) = 0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31A8, &qword_22FFBB630);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for LogHead);
  }

  return sub_22FF37C88;
}

BOOL MapHead.hasChangeLogHead.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for MapHead(0);
  sub_22FEBF3A4(v0 + *(v4 + 52), v3, &qword_27DAF31A8, &qword_22FFBB630);
  v5 = type metadata accessor for LogHead(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF31A8, &qword_22FFBB630);
  return v6;
}

Swift::Void __swiftcall MapHead.clearChangeLogHead()()
{
  v1 = *(type metadata accessor for MapHead(0) + 52);
  sub_22FEAEA34(v0 + v1, &qword_27DAF31A8, &qword_22FFBB630);
  v2 = type metadata accessor for LogHead(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void MapHead.mapType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t MapHead.mapType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_22FF37F54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF37FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MapHead.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_22FFB6370;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for MapHead(0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 52);
  v4 = type metadata accessor for LogHead(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t MapEntry.smh.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(v1 + *(v6 + 28), v5, &qword_27DAF2338, &unk_22FFBB620);
  v7 = type metadata accessor for SignedObject(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for SignedObject);
  }

  *a1 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Signature(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF38330@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for MapEntry(0);
  sub_22FEBF3A4(a1 + *(v7 + 28), v6, &qword_27DAF2338, &unk_22FFBB620);
  v8 = type metadata accessor for SignedObject(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF36190(v6, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Signature(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FF384DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v7, type metadata accessor for SignedObject);
  v8 = *(type metadata accessor for MapEntry(0) + 28);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(v7, a2 + v8, type metadata accessor for SignedObject);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t MapEntry.smh.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MapEntry(0) + 28);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FF36190(a1, v1 + v3, type metadata accessor for SignedObject);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*MapEntry.smh.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SignedObject(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for MapEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2338, &unk_22FFBB620);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Signature(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FF4F568;
}

uint64_t MapEntry.hashesOfPeersInPathToRoot.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22FF38A2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF38AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t MapEntry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22FFB33B0;
  v2 = type metadata accessor for MapEntry(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for SignedObject(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t InclusionProof.mapEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for InclusionProof(0) + 20));
  v7 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF31B0, &unk_22FFBB638);
  v8 = type metadata accessor for MapEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22FF36190(v5, a1, type metadata accessor for MapEntry);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for SignedObject(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF31B0, &unk_22FFBB638);
  }

  return result;
}

uint64_t sub_22FF38E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MapEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v10, type metadata accessor for MapEntry);
  v11 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF44578(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF36190(v10, v6, type metadata accessor for MapEntry);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF31B0, &unk_22FFBB638);
  return swift_endAccess();
}

uint64_t InclusionProof.mapEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF44578(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF36190(a1, v6, type metadata accessor for MapEntry);
  v10 = type metadata accessor for MapEntry(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF31B0, &unk_22FFBB638);
  return swift_endAccess();
}

void (*InclusionProof.mapEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31B0, &unk_22FFBB638) - 8) + 64);
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
  v9 = type metadata accessor for MapEntry(0);
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
  v15 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF31B0, &unk_22FFBB638);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 28);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF31B0, &unk_22FFBB638);
    }
  }

  else
  {
    sub_22FF36190(v8, v14, type metadata accessor for MapEntry);
  }

  return sub_22FF39454;
}

void sub_22FF39454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF37224(*(v2 + 120), *(v2 + 112), type metadata accessor for MapEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF44578(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v10, v14, type metadata accessor for MapEntry);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF31B0, &unk_22FFBB638);
    swift_endAccess();
    sub_22FF3728C(v9, type metadata accessor for MapEntry);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF44578(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF36190(v9, v14, type metadata accessor for MapEntry);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__mapEntry;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF31B0, &unk_22FFBB638);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t InclusionProof.index.getter()
{
  v1 = *(v0 + *(type metadata accessor for InclusionProof(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index;
  swift_beginAccess();
  v2 = *v1;
  sub_22FEA5608(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_22FF39770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for InclusionProof(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF397D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for InclusionProof(0) + 20);
  sub_22FEA5608(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FF44578(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v3;
  v8[1] = v4;
  return sub_22FEA55AC(v9, v10);
}

uint64_t InclusionProof.index.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v8 = sub_22FF44578(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  return sub_22FEA55AC(v10, v11);
}

void (*InclusionProof.index.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for InclusionProof(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF399F8;
}

void sub_22FF399F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v8 = sub_22FF44578(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v3;
    v11[1] = v5;
    sub_22FEA55AC(v12, v13);
    v14 = *(v2 + 72);
    v15 = *(v2 + 80);
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + v4);
    if ((v16 & 1) == 0)
    {
      v18 = *(v2 + 96);
      v19 = *(v2 + 88);
      type metadata accessor for InclusionProof._StorageClass(0);
      swift_allocObject();
      v17 = sub_22FF44578(v17);
      *(v19 + v18) = v17;
    }

    v20 = (v17 + OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__index);
    swift_beginAccess();
    v14 = *v20;
    v15 = v20[1];
    *v20 = v3;
    v20[1] = v5;
  }

  sub_22FEA55AC(v14, v15);

  free(v2);
}

uint64_t sub_22FF39B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF37224(a1, v10, type metadata accessor for LogEntry);
  v11 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF44578(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF36190(v10, v6, type metadata accessor for LogEntry);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t InclusionProof.perApplicationTreeEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for InclusionProof(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for InclusionProof._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF44578(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF36190(a1, v6, type metadata accessor for LogEntry);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation14InclusionProofP33_169C9B08F2DC833EDD0C19E1D431E7CF13_StorageClass__perApplicationTreeEntry;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}