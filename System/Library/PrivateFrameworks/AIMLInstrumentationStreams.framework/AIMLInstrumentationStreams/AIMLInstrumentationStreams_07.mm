uint64_t sub_23C615E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB720, qword_23C87B230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.decodeBiomeEventProto()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23C870FE4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-v4];
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1, 1, 1, v6);
  v12 = sub_23C871494();
  v13 = v8;
  v11 = 0;
  memset(&v10[16], 0, 32);
  sub_23C870FD4();
  sub_23C61622C();
  sub_23C8711E4();
  sub_23C585C34(a1, &qword_27E1F92B0, &qword_23C8734F0);
  v7(v5, 0, 1, v6);
  return sub_23C61632C(v5, a1);
}

unint64_t sub_23C61622C()
{
  result = qword_27E1F98A0;
  if (!qword_27E1F98A0)
  {
    type metadata accessor for TranscriptProtoEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98A0);
  }

  return result;
}

uint64_t sub_23C616284()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FB728);
  __swift_project_value_buffer(v0, qword_27E1FB728);
  sub_23C5A3FDC(0, &qword_2814FABB0, 0x277D86200);
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t sub_23C61632C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C6163E4()
{

  return swift_deallocClassInstance();
}

void *OrderedEvent.linkedComponentIdentifiers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB7C8, &qword_23C87B290);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - v5;
  v7 = sub_23C870CA4();
  v8 = sub_23C870CB4();
  if (!v7)
  {
    goto LABEL_17;
  }

  v32 = v7;
  sub_23C616814();
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB7D0, &qword_23C87B298);
  if (swift_dynamicCast())
  {
    sub_23C581A8C(&v31, v30);
    __swift_project_boxed_opaque_existential_0(v30, v30[3]);
    v10 = sub_23C870E44();
    if (v10)
    {
      if (*(v10 + 16))
      {
        (*(v1 + 16))(v4, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

        (*(v1 + 32))(v6, v4, v0);
        sub_23C870E64();
        v11 = v29[2];
        sub_23C870E54();

        (*(v1 + 8))(v6, v0);
        __swift_destroy_boxed_opaque_existential_0(v30);

        return v11;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v30);
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_17:
    return 0;
  }

  if (!v8)
  {
LABEL_25:

    return 0;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_25;
  }

  v16 = v15;
  v9 = v9;
  v17 = [v16 turnID];
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 turnID];

  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = [v14 metadata];
  if (!v20 || (v21 = v20, v22 = [v20 fingerprint], v21, !v22))
  {

LABEL_24:
    goto LABEL_25;
  }

  v23 = sub_23C870E34();
  objc_allocWithZone(v23);
  v24 = v22;
  v25 = sub_23C870E04();
  if (!v25)
  {

LABEL_23:
    goto LABEL_24;
  }

  v26 = v25;
  v27 = objc_allocWithZone(v23);
  v28 = sub_23C870E04();

  if (v28)
  {
    return v26;
  }

  return 0;
}

unint64_t sub_23C616814()
{
  result = qword_27E1F9E48;
  if (!qword_27E1F9E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9E48);
  }

  return result;
}

unint64_t sub_23C616874()
{
  result = qword_2814FAFA8[0];
  if (!qword_2814FAFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814FAFA8);
  }

  return result;
}

uint64_t sub_23C6168DC()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C616950(uint64_t a1)
{
  v2 = *v1;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v2);
  return sub_23C872124();
}

uint64_t sub_23C616994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C6169DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_23C616A44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - v5;
  v7 = sub_23C870B74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  if (v0[1])
  {
    v14 = MEMORY[0x277D837D0];
    *&v62 = 0xD000000000000012;
    *(&v62 + 1) = 0x800000023C8A91B0;
    sub_23C871CB4();
    v15 = v1[2];
    v16 = v1[3];
    v63 = v14;
    if (!v16)
    {
      v15 = 0x6E776F6E6B6E55;
    }

    v17 = 0xE700000000000000;
    if (v16)
    {
      v17 = v16;
    }

    *&v62 = v15;
    *(&v62 + 1) = v17;
    sub_23C59A4B0(&v62, v61);
  }

  else
  {
    v18 = *v0;
    *&v62 = 0x6E6F697461727564;
    *(&v62 + 1) = 0xEF73646E6F636553;
    sub_23C871CB4();
    v63 = MEMORY[0x277D839F8];
    *&v62 = v18;
    sub_23C59A4B0(&v62, v61);
  }

  v19 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v19;
  sub_23C593DBC(v61, v64, isUniquelyReferenced_nonNull_native);
  sub_23C600810(v64);
  v21 = v60;
  v22 = v1[5];
  if (v22)
  {
    v58 = v11;
    *&v62 = 0x656D6954646E65;
    *(&v62 + 1) = 0xE700000000000000;
    v23 = v22;
    v24 = MEMORY[0x277D837D0];
    sub_23C871CB4();
    result = sub_23C870CF4();
    if (result)
    {
      v26 = result;
      v27 = sub_23C870DD4();

      v63 = MEMORY[0x277D84D38];
      *&v62 = v27;
      sub_23C59A4B0(&v62, v61);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v21;
      sub_23C593DBC(v61, v64, v28);
      sub_23C600810(v64);
      v29 = v60;
      sub_23C870CC4();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_23C5FE4E4(v6);
      }

      else
      {
        (*(v8 + 32))(v13, v6, v7);
        *&v62 = 0x6449646E65;
        *(&v62 + 1) = 0xE500000000000000;
        sub_23C871CB4();
        v30 = sub_23C870B04();
        v63 = v24;
        *&v62 = v30;
        *(&v62 + 1) = v31;
        sub_23C59A4B0(&v62, v61);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v29;
        sub_23C593DBC(v61, v64, v32);
        sub_23C600810(v64);
        (*(v8 + 8))(v13, v7);
        v29 = v60;
      }

      v11 = v58;
      *&v62 = 0x65707954646E65;
      *(&v62 + 1) = 0xE700000000000000;
      v33 = MEMORY[0x277D837D0];
      sub_23C871CB4();
      result = sub_23C870CA4();
      if (result)
      {
        v34 = result;
        v35 = [result qualifiedMessageName];

        v36 = sub_23C871784();
        v38 = v37;

        v63 = v33;
        *&v62 = v36;
        *(&v62 + 1) = v38;
        sub_23C59A4B0(&v62, v61);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v29;
        sub_23C593DBC(v61, v64, v39);

        sub_23C600810(v64);
        v21 = v60;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v40 = v1[4];
  if (!v40)
  {
    return v21;
  }

  *&v62 = 0x6D69547472617473;
  *(&v62 + 1) = 0xE900000000000065;
  v41 = v40;
  v42 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CF4();
  if (!result)
  {
    goto LABEL_25;
  }

  v43 = result;
  v44 = sub_23C870DD4();

  v63 = MEMORY[0x277D84D38];
  *&v62 = v44;
  sub_23C59A4B0(&v62, v61);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v21;
  sub_23C593DBC(v61, v64, v45);
  sub_23C600810(v64);
  v46 = v59;
  v47 = v60;
  sub_23C870CC4();
  if ((*(v8 + 48))(v46, 1, v7) == 1)
  {
    sub_23C5FE4E4(v46);
  }

  else
  {
    (*(v8 + 32))(v11, v46, v7);
    *&v62 = 0x64497472617473;
    *(&v62 + 1) = 0xE700000000000000;
    sub_23C871CB4();
    v48 = sub_23C870B04();
    v63 = v42;
    *&v62 = v48;
    *(&v62 + 1) = v49;
    sub_23C59A4B0(&v62, v61);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v47;
    sub_23C593DBC(v61, v64, v50);
    sub_23C600810(v64);
    (*(v8 + 8))(v11, v7);
    v47 = v60;
  }

  *&v62 = 0x7079547472617473;
  *(&v62 + 1) = 0xE900000000000065;
  v51 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (result)
  {
    v52 = result;
    v53 = [result qualifiedMessageName];

    v54 = sub_23C871784();
    v56 = v55;

    v63 = v51;
    *&v62 = v54;
    *(&v62 + 1) = v56;
    sub_23C59A4B0(&v62, v61);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v47;
    sub_23C593DBC(v61, v64, v57);

    sub_23C600810(v64);
    return v60;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23C6171D8@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C601E20();
  v4 = v1;
  v5 = sub_23C624EB0(v3, v4);

  if (v5 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EED7610](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = sub_23C870CF4();

LABEL_9:
  v10 = sub_23C86E780();
  if (v10)
  {
    v11 = v10;
    v12 = sub_23C870CF4();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23C62A1DC(v9, v12);
  v15 = v14;

  v16 = sub_23C601E20();
  v17 = v4;
  v18 = sub_23C624EB0(v16, v17);

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    v20 = 0;
    goto LABEL_20;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EED7610](0, v18);
    goto LABEL_17;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v19 = *(v18 + 32);
LABEL_17:
  v20 = v19;

LABEL_20:
  v21 = sub_23C86E780();
  v22 = sub_23C601F9C();
  v47 = v15 & 1;
  if (v15)
  {
    if (v20)
    {
      v24 = 0x800000023C8A91F0;
      if (v21)
      {
        v25 = 0xD000000000000016;
      }

      else
      {
        v25 = 0x20676E697373694DLL;
      }

      if (!v21)
      {
        v24 = 0xEB00000000646E45;
      }
    }

    else
    {
      v24 = 0x800000023C8A91D0;
      v25 = 0x20676E697373694DLL;
      if (v21)
      {
        v24 = 0xED00007472617453;
      }

      else
      {
        v25 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  *&v30 = v13;
  BYTE8(v30) = v47;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  *&v32 = v20;
  *(&v32 + 1) = v21;
  *&v33 = 0;
  BYTE8(v33) = 0;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  v35 = xmmword_27E1FB880;
  v36 = v13;
  v37 = v47;
  v38 = v25;
  v39 = v24;
  v40 = v20;
  v41 = v21;
  v42 = 0;
  v43 = 0;
  v44 = v22;
  v45 = v23;
  v46 = xmmword_27E1FB880;

  sub_23C61FD0C(&v30, v29);
  result = sub_23C61FD68(&v36);
  v26 = v33;
  a1[2] = v32;
  a1[3] = v26;
  v27 = v35;
  a1[4] = v34;
  a1[5] = v27;
  v28 = v31;
  *a1 = v30;
  a1[1] = v28;
  return result;
}

uint64_t sub_23C6174F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = SiriTurn.mh.getter();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = v1;
  v8 = sub_23C624AF4(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_54;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_56;
  }

  for (i = *(v8 + 32); ; i = MEMORY[0x23EED7610](0, v8))
  {
    v10 = i;

    v11 = sub_23C870CF4();

LABEL_11:
    v6 = sub_23C601E20();
    v7 = v3;
    v12 = sub_23C624EB0(v6, v7);

    if (v12 >> 62)
    {
      if (!sub_23C871C34())
      {
LABEL_18:

        v15 = 0;
        goto LABEL_19;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EED7610](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        v21 = MEMORY[0x23EED7610](0, v2);
LABEL_34:
        v22 = v21;

        goto LABEL_37;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    v15 = sub_23C870CF4();

LABEL_19:
    v3 = sub_23C62A1DC(v11, v15);
    LOBYTE(v6) = v16;

    v11 = SiriTurn.mh.getter();
    if (!v11)
    {
      goto LABEL_29;
    }

    v17 = v7;
    v8 = sub_23C624AF4(v11, v17);

    if (v8 >> 62)
    {
      result = sub_23C871C34();
      if (!result)
      {
LABEL_28:

        v11 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_28;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_56:
      v19 = MEMORY[0x23EED7610](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v19 = *(v8 + 32);
    }

    v11 = v19;

LABEL_29:
    v20 = sub_23C601E20();
    v8 = v7;
    v2 = sub_23C624EB0(v20, v8);

    if (v2 >> 62)
    {
      break;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

LABEL_31:
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_52;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v2 + 32);
      goto LABEL_34;
    }

    __break(1u);
LABEL_54:
    ;
  }

  if (sub_23C871C34())
  {
    goto LABEL_31;
  }

LABEL_36:

  v22 = 0;
LABEL_37:
  v23 = sub_23C601F9C();
  v48 = v6 & 1;
  if (v6)
  {
    v25 = 0xD000000000000015;
    if (v11)
    {
      if (v22)
      {
        v25 = 0xD000000000000016;
      }

      else
      {
        v25 = 0x20676E697373694DLL;
      }

      v26 = 0xEB00000000646E45;
      if (v22)
      {
        v26 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v22)
      {
        v25 = 0x20676E697373694DLL;
      }

      v26 = 0xED00007472617453;
      if (!v22)
      {
        v26 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *&v31 = v3;
  BYTE8(v31) = v48;
  *&v32 = v25;
  *(&v32 + 1) = v26;
  *&v33 = v11;
  *(&v33 + 1) = v22;
  *&v34 = 0;
  BYTE8(v34) = 0;
  *&v35 = v23;
  *(&v35 + 1) = v24;
  v36 = xmmword_27E1FB8A0;
  v37 = v3;
  v38 = v48;
  v39 = v25;
  v40 = v26;
  v41 = v11;
  v42 = v22;
  v43 = 0;
  v44 = 0;
  v45 = v23;
  v46 = v24;
  v47 = xmmword_27E1FB8A0;

  sub_23C61FD0C(&v31, v30);
  result = sub_23C61FD68(&v37);
  v27 = v34;
  a1[2] = v33;
  a1[3] = v27;
  v28 = v36;
  a1[4] = v35;
  a1[5] = v28;
  v29 = v32;
  *a1 = v31;
  a1[1] = v29;
  return result;
}

uint64_t sub_23C617984@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = v4;
  v10 = SiriTurn.mh.getter();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = v4;
  v13 = sub_23C624AF4(v11, v12);

  if (v13 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = sub_23C870CF4();

LABEL_11:
  v18 = a1();
  if (v18)
  {
    v19 = v18;
    v20 = sub_23C870CF4();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_23C62A1DC(v17, v20);
  v23 = v22;

  v24 = SiriTurn.mh.getter();
  if (!v24)
  {
    goto LABEL_23;
  }

  v25 = v8;
  v26 = sub_23C624AF4(v24, v25);

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_22:

    v24 = 0;
    goto LABEL_23;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x23EED7610](0, v26);
    goto LABEL_20;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v27 = *(v26 + 32);
LABEL_20:
  v24 = v27;

LABEL_23:
  v28 = a1();
  v29 = sub_23C601F9C();
  v31 = *a2;
  v32 = *a3;
  v57 = v23 & 1;
  if (v23)
  {
    v33 = 0xD000000000000015;
    if (v24)
    {
      if (v28)
      {
        v33 = 0xD000000000000016;
      }

      else
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xEB00000000646E45;
      if (v28)
      {
        v34 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v28)
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xED00007472617453;
      if (!v28)
      {
        v34 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  *&v39 = v21;
  BYTE8(v39) = v57;
  *&v40 = v33;
  *(&v40 + 1) = v34;
  *&v41 = v24;
  *(&v41 + 1) = v28;
  *&v42 = 0;
  BYTE8(v42) = 0;
  *&v43 = v29;
  *(&v43 + 1) = v30;
  *&v44 = v31;
  *(&v44 + 1) = v32;
  v45 = v21;
  v46 = v57;
  v47 = v33;
  v48 = v34;
  v49 = v24;
  v50 = v28;
  v51 = 0;
  v52 = 0;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v56 = v32;

  sub_23C61FD0C(&v39, &v38);
  result = sub_23C61FD68(&v45);
  v35 = v42;
  a4[2] = v41;
  a4[3] = v35;
  v36 = v44;
  a4[4] = v43;
  a4[5] = v36;
  v37 = v40;
  *a4 = v39;
  a4[1] = v37;
  return result;
}

uint64_t sub_23C617CA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = SiriTurn.nl.getter();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = v1;
  v8 = sub_23C62596C(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EED7610](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = sub_23C870CF4();

LABEL_11:
  v12 = SiriTurn.nl.getter();
  if (!v12)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = v3;
  v15 = sub_23C625978(v13, v14);

  if (v15 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_14:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EED7610](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = sub_23C870CF4();

LABEL_21:
  v6 = sub_23C62A1DC(v11, v19);
  LOBYTE(v7) = v20;

  v2 = SiriTurn.nl.getter();
  if (!v2)
  {
    goto LABEL_30;
  }

  v21 = v3;
  v22 = sub_23C62596C(v2, v21);

  if (v22 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_24:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EED7610](0, v22);
        goto LABEL_27;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_27:
        v2 = v23;

        goto LABEL_30;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  v2 = 0;
LABEL_30:
  v24 = SiriTurn.nl.getter();
  if (v24)
  {
    v25 = v3;
    v8 = sub_23C625978(v24, v25);

    if (v8 >> 62)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_33:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = *(v8 + 32);
LABEL_36:
            v24 = v26;

            goto LABEL_39;
          }

LABEL_59:
          __break(1u);
          return result;
        }

LABEL_56:
        v26 = MEMORY[0x23EED7610](0, v8);
        goto LABEL_36;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_33;
      }
    }

    v24 = 0;
  }

LABEL_39:
  v27 = sub_23C601F9C();
  v52 = v7 & 1;
  if (v7)
  {
    if (v2)
    {
      v29 = 0x800000023C8A91F0;
      if (v24)
      {
        v30 = 0xD000000000000016;
      }

      else
      {
        v30 = 0x20676E697373694DLL;
      }

      if (!v24)
      {
        v29 = 0xEB00000000646E45;
      }
    }

    else
    {
      v29 = 0x800000023C8A91D0;
      v30 = 0x20676E697373694DLL;
      if (v24)
      {
        v29 = 0xED00007472617453;
      }

      else
      {
        v30 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  *&v35 = v6;
  BYTE8(v35) = v52;
  *&v36 = v30;
  *(&v36 + 1) = v29;
  *&v37 = v2;
  *(&v37 + 1) = v24;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *&v39 = v27;
  *(&v39 + 1) = v28;
  v40 = xmmword_27E1FB8C0;
  v41 = v6;
  v42 = v52;
  v43 = v30;
  v44 = v29;
  v45 = v2;
  v46 = v24;
  v47 = 0;
  v48 = 0;
  v49 = v27;
  v50 = v28;
  v51 = xmmword_27E1FB8C0;

  sub_23C61FD0C(&v35, v34);
  result = sub_23C61FD68(&v41);
  v31 = v38;
  a1[2] = v37;
  a1[3] = v31;
  v32 = v40;
  a1[4] = v39;
  a1[5] = v32;
  v33 = v36;
  *a1 = v35;
  a1[1] = v33;
  return result;
}

void *sub_23C618100@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C601E20();
  v4 = v3;
  v70 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v60 = v1;
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EED7610](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v2 = v8;
      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB838, 0x277D59650);
      v1 = v2;
      v10 = sub_23C870D44();
      if (v10)
      {
        v1 = v10;
        v11 = [v10 startedOrChanged];
        if (v11)
        {
          v12 = v11;

          v1 = &v70;
          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v7;
      if (v9 == i)
      {
        v13 = v70;
        v6 = MEMORY[0x277D84F90];
        v1 = v60;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_21;
    }

LABEL_29:

    i = 0;
    goto LABEL_30;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      goto LABEL_112;
    }

    v14 = *(v13 + 32);
  }

  i = v14;

LABEL_30:
  v15 = sub_23C601E20();
  v4 = v1;
  v1 = sub_23C624EB0(v15, v4);

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_45:

    if (i)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_45;
  }

LABEL_32:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_35;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v16 = *(v1 + 32);
LABEL_35:
  v17 = v16;

  if (i)
  {
    if (!v17)
    {
LABEL_46:
      v17 = i;
      goto LABEL_47;
    }

    i = i;
    v17 = v17;
    result = sub_23C870CF4();
    if (!result)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v19 = result;
    result = sub_23C870CF4();
    if (!result)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v20 = result;
    v70 = v19;
    *&v64 = result;
    sub_23C870DE4();
    sub_23C61FDBC();
    v21 = sub_23C871714();

    if (v21)
    {

      goto LABEL_46;
    }

LABEL_47:
    v22 = sub_23C870CF4();

    goto LABEL_49;
  }

  if (v17)
  {
    goto LABEL_47;
  }

LABEL_48:
  v22 = 0;
LABEL_49:
  v23 = sub_23C86E780();
  if (v23)
  {
    v24 = v23;
    v25 = sub_23C870CF4();
  }

  else
  {
    v25 = 0;
  }

  i = sub_23C62A1DC(v22, v25);
  LOBYTE(v2) = v26;

  v27 = sub_23C601E20();
  v28 = v27;
  v70 = v6;
  if (v27 >> 62)
  {
    goto LABEL_69;
  }

  for (j = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23C871C34())
  {
    v58 = v2;
    v59 = v4;
    v61 = i;
    v30 = 0;
    v4 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v31 = MEMORY[0x23EED7610](v30, v28);
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v2 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB838, 0x277D59650);
      v33 = sub_23C870D44();
      if (v33)
      {
        v34 = v33;
        v35 = [v33 startedOrChanged];
        if (v35)
        {
          v36 = v35;

          sub_23C871D54();
          i = v70[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v30;
      if (v2 == j)
      {
        v1 = v70;
        v4 = v59;
        i = v61;
        LOBYTE(v2) = v58;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_71:

  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_74:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*(v1 + 16))
        {
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v37 = *(v1 + 32);
        goto LABEL_77;
      }

LABEL_113:
      v37 = MEMORY[0x23EED7610](0, v1);
LABEL_77:
      v38 = v37;

      goto LABEL_80;
    }
  }

  else
  {
    result = *(v1 + 16);
    if (result)
    {
      goto LABEL_74;
    }
  }

  v38 = 0;
LABEL_80:
  v39 = sub_23C601E20();
  v40 = v4;
  v41 = sub_23C624EB0(v39, v40);

  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_82;
    }

LABEL_95:

    goto LABEL_96;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_95;
  }

LABEL_82:
  if ((v41 & 0xC000000000000001) == 0)
  {
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v41 + 32);
      goto LABEL_85;
    }

    goto LABEL_116;
  }

  v42 = MEMORY[0x23EED7610](0, v41);
LABEL_85:
  v43 = v42;

  if (!v38)
  {
    v38 = v43;
    goto LABEL_96;
  }

  if (v43)
  {
    v44 = v2;
    v45 = v38;
    v46 = v43;
    result = sub_23C870CF4();
    if (result)
    {
      v47 = result;
      result = sub_23C870CF4();
      if (result)
      {
        v48 = result;
        v70 = v47;
        *&v64 = result;
        sub_23C870DE4();
        sub_23C61FDBC();
        v49 = sub_23C871714();

        if (v49)
        {
        }

        else
        {

          v38 = v43;
        }

        LOBYTE(v2) = v44;
        goto LABEL_96;
      }

LABEL_120:
      __break(1u);
      return result;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

LABEL_96:
  v50 = sub_23C86E780();
  v51 = sub_23C601F9C();
  v81 = v2 & 1;
  if (v2)
  {
    if (v38)
    {
      v53 = 0x800000023C8A91F0;
      if (v50)
      {
        v54 = 0xD000000000000016;
      }

      else
      {
        v54 = 0x20676E697373694DLL;
      }

      if (!v50)
      {
        v53 = 0xEB00000000646E45;
      }
    }

    else
    {
      v53 = 0x800000023C8A91D0;
      v54 = 0x20676E697373694DLL;
      if (v50)
      {
        v53 = 0xED00007472617453;
      }

      else
      {
        v54 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v54 = 0;
    v53 = 0;
  }

  *&v64 = i;
  BYTE8(v64) = v81;
  *&v65 = v54;
  *(&v65 + 1) = v53;
  *&v66 = v38;
  *(&v66 + 1) = v50;
  *&v67 = 0;
  BYTE8(v67) = 0;
  *&v68 = v51;
  *(&v68 + 1) = v52;
  v69 = xmmword_27E1FB8D0;
  v70 = i;
  v71 = v81;
  v72 = v54;
  v73 = v53;
  v74 = v38;
  v75 = v50;
  v76 = 0;
  v77 = 0;
  v78 = v51;
  v79 = v52;
  v80 = xmmword_27E1FB8D0;

  sub_23C61FD0C(&v64, v63);
  result = sub_23C61FD68(&v70);
  v55 = v67;
  a1[2] = v66;
  a1[3] = v55;
  v56 = v69;
  a1[4] = v68;
  a1[5] = v56;
  v57 = v65;
  *a1 = v64;
  a1[1] = v57;
  return result;
}

uint64_t sub_23C61891C@<X0>(_OWORD *a1@<X8>)
{
  v6 = sub_23C601E20();
  v7 = v1;
  v8 = sub_23C625DA0(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_3;
    }

LABEL_8:

    v2 = 0;
    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EED7610](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v2 = sub_23C870CF4();

LABEL_9:
  v11 = sub_23C601E20();
  v12 = v7;
  v13 = sub_23C625DAC(v11, v12);

  if (v13 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_11;
    }

LABEL_16:

    v7 = 0;
    goto LABEL_17;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v14 = *(v13 + 32);
  }

  v7 = v14;

LABEL_17:
  v13 = sub_23C601E20();
  v3 = v12;
  v8 = sub_23C626170(v13, v3);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_19:
      if ((v8 & 0xC000000000000001) == 0)
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v15 = *(v8 + 32);
        goto LABEL_22;
      }

LABEL_79:
      v15 = MEMORY[0x23EED7610](0, v8);
LABEL_22:
      v16 = v15;

      if (v7)
      {
        if (v16)
        {

          v17 = 0;
          v16 = v7;
LABEL_31:

          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (v16)
      {
LABEL_30:
        v17 = sub_23C870CF4();
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if (v7)
  {
LABEL_29:
    v16 = v7;
    goto LABEL_30;
  }

LABEL_32:
  v17 = 0;
LABEL_33:
  v7 = sub_23C62A1DC(v2, v17);
  LOBYTE(v13) = v18;

  v2 = sub_23C601E20();
  v12 = v3;
  v11 = sub_23C625DA0(v2, v12);

  if (v11 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_35:
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_85;
        }

        v19 = *(v11 + 32);
        goto LABEL_38;
      }

LABEL_81:
      v19 = MEMORY[0x23EED7610](0, v11);
LABEL_38:
      v2 = v19;

      goto LABEL_41;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v2 = 0;
LABEL_41:
  v20 = sub_23C601E20();
  v8 = v12;
  v4 = sub_23C625DAC(v20, v8);

  if (v4 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_43:
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_87;
        }

        v22 = *(v4 + 32);
        goto LABEL_46;
      }

LABEL_83:
      v22 = MEMORY[0x23EED7610](0, v4);
LABEL_46:
      v11 = v22;

      goto LABEL_49;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_43;
    }
  }

  v11 = 0;
LABEL_49:
  v23 = sub_23C601E20();
  v24 = v8;
  v4 = sub_23C626170(v23, v24);

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_51;
    }

LABEL_60:

    if (!v11)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_60;
  }

LABEL_51:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v4 + 32);
      goto LABEL_54;
    }

LABEL_87:
    __break(1u);
    return result;
  }

LABEL_85:
  v25 = MEMORY[0x23EED7610](0, v4);
LABEL_54:
  v26 = v25;

  if (v11)
  {
    if (v26)
    {

LABEL_61:
      v11 = 0;
    }
  }

  else
  {
    v11 = v26;
    if (!v26)
    {
      goto LABEL_61;
    }
  }

LABEL_62:
  v27 = sub_23C601F9C();
  v52 = v13 & 1;
  if (v13)
  {
    v29 = 0xD000000000000015;
    if (v2)
    {
      if (v11)
      {
        v29 = 0xD000000000000016;
      }

      else
      {
        v29 = 0x20676E697373694DLL;
      }

      v30 = 0xEB00000000646E45;
      if (v11)
      {
        v30 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v11)
      {
        v29 = 0x20676E697373694DLL;
      }

      v30 = 0xED00007472617453;
      if (!v11)
      {
        v30 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  *&v35 = v7;
  BYTE8(v35) = v52;
  *&v36 = v29;
  *(&v36 + 1) = v30;
  *&v37 = v2;
  *(&v37 + 1) = v11;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *&v39 = v27;
  *(&v39 + 1) = v28;
  v40 = xmmword_27E1FB8E0;
  v41 = v7;
  v42 = v52;
  v43 = v29;
  v44 = v30;
  v45 = v2;
  v46 = v11;
  v47 = 0;
  v48 = 0;
  v49 = v27;
  v50 = v28;
  v51 = xmmword_27E1FB8E0;

  sub_23C61FD0C(&v35, v34);
  result = sub_23C61FD68(&v41);
  v31 = v38;
  a1[2] = v37;
  a1[3] = v31;
  v32 = v40;
  a1[4] = v39;
  a1[5] = v32;
  v33 = v36;
  *a1 = v35;
  a1[1] = v33;
  return result;
}

unint64_t sub_23C618ED0@<X0>(_OWORD *a1@<X8>)
{
  v2 = EventGraph.asr.getter();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_29;
  }

  v4 = v2;
  v73 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    v3 = v5 & 0xC000000000000001;
    v1 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v8 = MEMORY[0x23EED7610](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v11 = sub_23C870D44();
      if (v11)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        v12 = v73;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_23C871C34();
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_28:

LABEL_29:
    v1 = 0;
    goto LABEL_30;
  }

LABEL_20:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);
      goto LABEL_137;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v1 = sub_23C870CF4();

LABEL_30:
  v16 = EventGraph.asr.getter();
  if (v16)
  {
    v17 = v16;
    v73 = v3;
    swift_beginAccess();
    v18 = v17[2];
    if (v18 >> 62)
    {
      goto LABEL_58;
    }

    for (j = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v59 = v17;
      v62 = v1;
      v20 = 0;
      v1 = (v18 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x23EED7610](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v17 = v21;
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v23 = sub_23C870D44();
        if (v23 && (v24 = v23, v3 = [v23 isFinal], v24, (v3 & 1) != 0))
        {
          sub_23C871D54();
          v3 = v73[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v20;
        if (v22 == j)
        {
          v12 = v73;
          v3 = MEMORY[0x277D84F90];
          v17 = v59;
          v1 = v62;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_47:

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v25 = sub_23C871C34();
      if (v25)
      {
LABEL_50:
        v26 = __OFSUB__(v25, 1);
        v13 = v25 - 1;
        if (!v26)
        {
          if ((v12 & 0xC000000000000001) == 0)
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v13 < *(v12 + 16))
            {
              v27 = *(v12 + 8 * v13 + 32);
LABEL_55:
              v28 = v27;

              v29 = sub_23C870CF4();

              goto LABEL_62;
            }

            __break(1u);
            goto LABEL_141;
          }

LABEL_138:
          v27 = MEMORY[0x23EED7610](v13, v12);
          goto LABEL_55;
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    else
    {
      v25 = *(v12 + 16);
      if (v25)
      {
        goto LABEL_50;
      }
    }
  }

  v29 = 0;
LABEL_62:
  v17 = sub_23C62A1DC(v1, v29);
  LOBYTE(v18) = v30;

  v31 = EventGraph.asr.getter();
  if (v31)
  {
    v32 = v31;
    v73 = v3;
    swift_beginAccess();
    v33 = *(v32 + 16);
    if (v33 >> 62)
    {
      goto LABEL_87;
    }

    for (k = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v60 = v18;
      v63 = v17;
      v35 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x23EED7610](v35, v33);
        }

        else
        {
          if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v17 = v36;
        v18 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
        v37 = sub_23C870D44();
        if (v37)
        {

          sub_23C871D54();
          v3 = v73[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v35;
        if (v18 == k)
        {
          v12 = v73;
          v3 = MEMORY[0x277D84F90];
          v17 = v63;
          LOBYTE(v18) = v60;
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_78:

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_81:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*(v12 + 16))
          {
            __break(1u);
            goto LABEL_143;
          }

          v39 = *(v12 + 32);
          goto LABEL_84;
        }

LABEL_141:
        v39 = MEMORY[0x23EED7610](0, v12);
LABEL_84:
        v33 = v39;

        goto LABEL_91;
      }
    }

    else
    {
      result = *(v12 + 16);
      if (result)
      {
        goto LABEL_81;
      }
    }
  }

  v33 = 0;
LABEL_91:
  v40 = EventGraph.asr.getter();
  if (v40)
  {
    v73 = v3;
    swift_beginAccess();
    v41 = *(v40 + 16);
    if (v41 >> 62)
    {
      goto LABEL_119;
    }

    for (m = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
    {

      if (!m)
      {
        break;
      }

      v58 = v33;
      v61 = v18;
      v64 = v17;
      v43 = 0;
      v33 = v41 & 0xFFFFFFFFFFFFFF8;
      v18 = 0x277D569E8uLL;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x23EED7610](v43, v41);
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v17 = v44;
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v46 = sub_23C870D44();
        if (v46 && (v47 = v46, v48 = [v46 isFinal], v47, (v48 & 1) != 0))
        {
          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v43;
        if (v45 == m)
        {
          v12 = v73;
          v17 = v64;
          LOBYTE(v18) = v61;
          v33 = v58;
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_108:

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v49 = sub_23C871C34();
      if (v49)
      {
LABEL_111:
        v26 = __OFSUB__(v49, 1);
        result = v49 - 1;
        if (!v26)
        {
          if ((v12 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *(v12 + 16))
            {
              v50 = *(v12 + 8 * result + 32);
LABEL_116:
              v40 = v50;

              goto LABEL_122;
            }

            __break(1u);
            return result;
          }

LABEL_144:
          v50 = MEMORY[0x23EED7610](result, v12);
          goto LABEL_116;
        }

LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

    else
    {
      v49 = *(v12 + 16);
      if (v49)
      {
        goto LABEL_111;
      }
    }

    v40 = 0;
  }

LABEL_122:
  v51 = sub_23C601F9C();
  v84 = v18 & 1;
  if (v18)
  {
    if (v33)
    {
      v53 = 0x800000023C8A91F0;
      if (v40)
      {
        v54 = 0xD000000000000016;
      }

      else
      {
        v54 = 0x20676E697373694DLL;
      }

      if (!v40)
      {
        v53 = 0xEB00000000646E45;
      }
    }

    else
    {
      v53 = 0x800000023C8A91D0;
      v54 = 0x20676E697373694DLL;
      if (v40)
      {
        v53 = 0xED00007472617453;
      }

      else
      {
        v54 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v54 = 0;
    v53 = 0;
  }

  *&v67 = v17;
  BYTE8(v67) = v84;
  *&v68 = v54;
  *(&v68 + 1) = v53;
  *&v69 = v33;
  *(&v69 + 1) = v40;
  *&v70 = 0;
  BYTE8(v70) = 0;
  *&v71 = v51;
  *(&v71 + 1) = v52;
  v72 = xmmword_27E1FB980;
  v73 = v17;
  v74 = v84;
  v75 = v54;
  v76 = v53;
  v77 = v33;
  v78 = v40;
  v79 = 0;
  v80 = 0;
  v81 = v51;
  v82 = v52;
  v83 = xmmword_27E1FB980;

  sub_23C61FD0C(&v67, v66);
  result = sub_23C61FD68(&v73);
  v55 = v70;
  a1[2] = v69;
  a1[3] = v55;
  v56 = v72;
  a1[4] = v71;
  a1[5] = v56;
  v57 = v68;
  *a1 = v67;
  a1[1] = v57;
  return result;
}

uint64_t sub_23C619800@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = a1;
  v12 = a1();
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  v53 = v10;
  v68 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v51 = v13;
    v54 = a4;
    v56 = a5;
    v58 = a6;
    v16 = 0;
    v13 = v14 & 0xC000000000000001;
    a4 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v17 = MEMORY[0x23EED7610](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      a6 = v17;
      a5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v18 = sub_23C870D44();
      if (v18)
      {
        v19 = v18;
        v20 = [v18 ended];
        if (v20)
        {
          v21 = v20;

          sub_23C871D54();
          v6 = *(v68 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v16;
      if (a5 == i)
      {
        v22 = v68;
        a5 = v56;
        a6 = v58;
        a4 = v54;
        LOBYTE(v13) = v51;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_19:

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
    v10 = v53;
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v10 = v53;
  if (!*(v22 + 16))
  {
LABEL_30:

LABEL_31:
    v25 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x23EED7610](0, v22);
  }

  else
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v25 = sub_23C870CF4();

LABEL_32:
  v26 = sub_23C86E780();
  if (v26)
  {
    v27 = v26;
    v28 = sub_23C870CF4();
  }

  else
  {
    v28 = 0;
  }

  v6 = sub_23C62A1DC(v25, v28);
  LOBYTE(v13) = v29;

  v30 = v10();
  if (!v30)
  {
    goto LABEL_65;
  }

  v68 = MEMORY[0x277D84F90];
  v31 = v30;
  swift_beginAccess();
  v32 = *(v31 + 16);
  if (v32 >> 62)
  {
    goto LABEL_62;
  }

  for (j = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v50 = v13;
    v52 = v6;
    v55 = a4;
    v57 = a5;
    v59 = a6;
    a4 = 0;
    v13 = v32 & 0xC000000000000001;
    v6 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v34 = MEMORY[0x23EED7610](a4, v32);
      }

      else
      {
        if (a4 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v32 + 8 * a4 + 32);
      }

      a6 = v34;
      a5 = (a4 + 1);
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v35 = sub_23C870D44();
      if (v35)
      {
        v36 = v35;
        v37 = [v35 ended];
        if (v37)
        {
          v38 = v37;

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++a4;
      if (a5 == j)
      {
        v22 = v68;
        a5 = v57;
        a6 = v59;
        a4 = v55;
        v6 = v52;
        LOBYTE(v13) = v50;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_53:

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    result = *(v22 + 16);
    if (result)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_64:

LABEL_65:
    v41 = 0;
    goto LABEL_66;
  }

LABEL_56:
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v40 = *(v22 + 32);
    goto LABEL_59;
  }

LABEL_82:
  v40 = MEMORY[0x23EED7610](0, v22);
LABEL_59:
  v41 = v40;

LABEL_66:
  v42 = sub_23C86E780();
  v43 = *a4;
  v44 = *a5;
  v80 = v13 & 1;
  if (v13)
  {
    v45 = 0xD000000000000015;
    if (v41)
    {
      if (v42)
      {
        v45 = 0xD000000000000016;
      }

      else
      {
        v45 = 0x20676E697373694DLL;
      }

      v46 = 0xEB00000000646E45;
      if (v42)
      {
        v46 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v42)
      {
        v45 = 0x20676E697373694DLL;
      }

      v46 = 0xED00007472617453;
      if (!v42)
      {
        v46 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  *&v62 = v6;
  BYTE8(v62) = v80;
  *&v63 = v45;
  *(&v63 + 1) = v46;
  *&v64 = v41;
  *(&v64 + 1) = v42;
  *&v65 = 0;
  BYTE8(v65) = 0;
  v66 = 0uLL;
  *&v67 = v43;
  *(&v67 + 1) = v44;
  v68 = v6;
  v69 = v80;
  v70 = v45;
  v71 = v46;
  v72 = v41;
  v73 = v42;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = v43;
  v79 = v44;

  sub_23C61FD0C(&v62, v61);
  result = sub_23C61FD68(&v68);
  v47 = v65;
  a6[2] = v64;
  a6[3] = v47;
  v48 = v67;
  a6[4] = v66;
  a6[5] = v48;
  v49 = v63;
  *a6 = v62;
  a6[1] = v49;
  return result;
}

uint64_t sub_23C619DC0@<X0>(unint64_t a1@<X8>)
{
  v4 = EventGraph.uei.getter();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_26;
  }

  v6 = v4;
  v48 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v5 = *(v6 + 16);
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (i)
    {
      v39 = a1;
      v8 = 0;
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
      a1 = 0x277D5A7B8uLL;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EED7610](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
        v11 = sub_23C870D44();
        if (v11)
        {

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v8;
        if (v2 == i)
        {
          v12 = v48;
          a1 = v39;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_17:

    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = sub_23C871C34();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    v5 = MEMORY[0x277D84F90];
    if (v13)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EED7610](0, v12);
      }

      else
      {
        if (!*(v12 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        v14 = *(v12 + 32);
      }

      v15 = v14;

      v16 = sub_23C870CF4();
    }

    else
    {

LABEL_26:
      v16 = 0;
    }

    v17 = sub_23C86E780();
    if (v17)
    {
      v18 = v17;
      v19 = sub_23C870CF4();
    }

    else
    {
      v19 = 0;
    }

    v1 = sub_23C62A1DC(v16, v19);
    LOBYTE(v2) = v20;

    v21 = EventGraph.uei.getter();
    if (!v21)
    {
      goto LABEL_62;
    }

    v22 = v21;
    v38 = v2;
    v48 = v5;
    swift_beginAccess();
    v23 = *(v22 + 16);
    v2 = v23 >> 62 ? sub_23C871C34() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      break;
    }

    v37 = v1;
    v40 = a1;
    a1 = 0;
    v1 = 0x277D5A7B8uLL;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x23EED7610](a1, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v24 = *(v23 + 8 * a1 + 32);
      }

      v25 = v24;
      v26 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
      v27 = sub_23C870D44();
      if (v27)
      {

        sub_23C871D54();
        v5 = *(v48 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++a1;
      if (v26 == v2)
      {
        v12 = v48;
        a1 = v40;
        v1 = v37;
        goto LABEL_46;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_46:

  LOBYTE(v2) = v38;
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (!result)
    {
      goto LABEL_61;
    }

LABEL_49:
    if ((v12 & 0xC000000000000001) == 0)
    {
      if (!*(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = *(v12 + 32);
      goto LABEL_52;
    }

LABEL_79:
    v29 = MEMORY[0x23EED7610](0, v12);
LABEL_52:
    v30 = v29;

    goto LABEL_63;
  }

  result = *(v12 + 16);
  if (result)
  {
    goto LABEL_49;
  }

LABEL_61:

LABEL_62:
  v30 = 0;
LABEL_63:
  v31 = sub_23C86E780();
  v59 = v2 & 1;
  if (v2)
  {
    v32 = 0xD000000000000015;
    if (v30)
    {
      if (v31)
      {
        v32 = 0xD000000000000016;
      }

      else
      {
        v32 = 0x20676E697373694DLL;
      }

      v33 = 0xEB00000000646E45;
      if (v31)
      {
        v33 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v31)
      {
        v32 = 0x20676E697373694DLL;
      }

      v33 = 0xED00007472617453;
      if (!v31)
      {
        v33 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  *&v42 = v1;
  BYTE8(v42) = v59;
  *&v43 = v32;
  *(&v43 + 1) = v33;
  *&v44 = v30;
  *(&v44 + 1) = v31;
  *&v45 = 0;
  BYTE8(v45) = 0;
  v46 = 0uLL;
  v47 = xmmword_27E1FB910;
  v48 = v1;
  v49 = v59;
  v50 = v32;
  v51 = v33;
  v52 = v30;
  v53 = v31;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = xmmword_27E1FB910;

  sub_23C61FD0C(&v42, v41);
  result = sub_23C61FD68(&v48);
  v34 = v45;
  *(a1 + 32) = v44;
  *(a1 + 48) = v34;
  v35 = v47;
  *(a1 + 64) = v46;
  *(a1 + 80) = v35;
  v36 = v43;
  *a1 = v42;
  *(a1 + 16) = v36;
  return result;
}

uint64_t sub_23C61A330@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X8>)
{
  v11 = EventGraph.uei.getter();
  v12 = MEMORY[0x277D84F90];
  v69 = a3;
  if (!v11)
  {
    goto LABEL_29;
  }

  v81 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v65 = v11;
    v11 = 0;
    v12 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EED7610](v11, v13);
      }

      else
      {
        if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v13 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v17 = sub_23C870D44();
      if (v17)
      {

        sub_23C871D54();
        a3 = v81[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v81;
        a3 = v69;
        v12 = MEMORY[0x277D84F90];
        v11 = v65;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_20;
    }

LABEL_28:

    v11 = 0;
    goto LABEL_29;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EED7610](0, v18);
  }

  else
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      goto LABEL_135;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  v11 = sub_23C870CF4();

LABEL_29:
  v21 = a3();
  if (v21)
  {
    v22 = v21;
    v81 = v12;
    swift_beginAccess();
    i = *(v22 + 16);
    if (i >> 62)
    {
      goto LABEL_56;
    }

    for (j = *((i & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v64 = v22;
      v65 = v11;
      v24 = 0;
      v12 = i & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((i & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x23EED7610](v24, i);
        }

        else
        {
          if (v24 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v25 = *(i + 8 * v24 + 32);
        }

        v11 = v25;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a4, a5);
        v22 = v11;
        v27 = sub_23C870D44();
        if (v27)
        {
          v22 = v27;
          v28 = [v27 ended];
          if (v28)
          {
            v29 = v28;

            v22 = &v81;
            sub_23C871D54();
            a3 = v81[2];
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v24;
        if (v26 == j)
        {
          v13 = v81;
          a3 = v69;
          v12 = MEMORY[0x277D84F90];
          v22 = v64;
          v11 = v65;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_47:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_50:
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*(v13 + 16))
          {
            __break(1u);
            goto LABEL_137;
          }

          v30 = *(v13 + 32);
          goto LABEL_53;
        }

LABEL_135:
        v30 = MEMORY[0x23EED7610](0, v13);
LABEL_53:
        v31 = v30;

        v32 = sub_23C870CF4();

        goto LABEL_60;
      }
    }

    else if (*(v13 + 16))
    {
      goto LABEL_50;
    }
  }

  v32 = 0;
LABEL_60:
  v65 = sub_23C62A1DC(v11, v32);
  LOBYTE(v64) = v33;

  v34 = EventGraph.uei.getter();
  if (v34)
  {
    v81 = v12;
    v35 = v34;
    swift_beginAccess();
    v36 = *(v35 + 16);
    if (v36 >> 62)
    {
      goto LABEL_85;
    }

    for (k = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      a3 = 0;
      v12 = v36 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x23EED7610](a3, v36);
        }

        else
        {
          if (a3 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v38 = *(v36 + 8 * a3 + 32);
        }

        i = v38;
        v39 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v40 = sub_23C870D44();
        if (v40)
        {

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        a3 = (a3 + 1);
        if (v39 == k)
        {
          v22 = v81;
          a3 = v69;
          v12 = MEMORY[0x277D84F90];
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_76:

    if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_79:
        if ((v22 & 0xC000000000000001) == 0)
        {
          if (!*(v22 + 16))
          {
            __break(1u);
            goto LABEL_139;
          }

          v41 = *(v22 + 32);
          goto LABEL_82;
        }

LABEL_137:
        v41 = MEMORY[0x23EED7610](0, v22);
LABEL_82:
        i = v41;

        goto LABEL_89;
      }
    }

    else if (*(v22 + 16))
    {
      goto LABEL_79;
    }
  }

  i = 0;
LABEL_89:
  v42 = (a3)(v34);
  if (!v42)
  {
LABEL_119:
    v56 = 0;
    goto LABEL_120;
  }

  v43 = v42;
  v81 = v12;
  swift_beginAccess();
  v44 = *(v43 + 16);
  if (v44 >> 62)
  {
    goto LABEL_116;
  }

  for (m = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v73 = i;
    v46 = 0;
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x23EED7610](v46, v44);
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_115;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a4, a5);
      v50 = sub_23C870D44();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 ended];
        if (v52)
        {
          v53 = v52;

          sub_23C871D54();
          i = v81[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v46;
      if (v49 == m)
      {
        v22 = v81;
        i = v73;
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_107:

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    result = *(v22 + 16);
    if (result)
    {
      goto LABEL_110;
    }

    goto LABEL_118;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_118:

    goto LABEL_119;
  }

LABEL_110:
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v55 = *(v22 + 32);
    goto LABEL_113;
  }

LABEL_139:
  v55 = MEMORY[0x23EED7610](0, v22);
LABEL_113:
  v56 = v55;

LABEL_120:
  v57 = *a6;
  v58 = *a7;
  v93 = v64 & 1;
  if (v64)
  {
    if (i)
    {
      v59 = 0x800000023C8A91F0;
      if (v56)
      {
        v60 = 0xD000000000000016;
      }

      else
      {
        v60 = 0x20676E697373694DLL;
      }

      if (!v56)
      {
        v59 = 0xEB00000000646E45;
      }
    }

    else
    {
      v59 = 0x800000023C8A91D0;
      v60 = 0x20676E697373694DLL;
      if (v56)
      {
        v59 = 0xED00007472617453;
      }

      else
      {
        v60 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  *&v75 = v65;
  BYTE8(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v59;
  *&v77 = i;
  *(&v77 + 1) = v56;
  *&v78 = 0;
  BYTE8(v78) = 0;
  v79 = 0uLL;
  *&v80 = v57;
  *(&v80 + 1) = v58;
  v81 = v65;
  v82 = v93;
  v83 = v60;
  v84 = v59;
  v85 = i;
  v86 = v56;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = v57;
  v92 = v58;

  sub_23C61FD0C(&v75, v74);
  result = sub_23C61FD68(&v81);
  v61 = v78;
  a8[2] = v77;
  a8[3] = v61;
  v62 = v80;
  a8[4] = v79;
  a8[5] = v62;
  v63 = v76;
  *a8 = v75;
  a8[1] = v63;
  return result;
}

unint64_t sub_23C61AC18@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, unint64_t a6@<X8>)
{
  v10 = a1;
  v11 = v6;
  v13 = a1();
  v14 = MEMORY[0x277D84F90];
  v77 = v6;
  if (!v13)
  {
    goto LABEL_31;
  }

  v15 = v13;
  v87 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v15 + 16);
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v71 = v10;
    v7 = 0;
    v10 = v9 & 0xC000000000000001;
    v11 = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v10)
      {
        v17 = MEMORY[0x23EED7610](v7, v9);
      }

      else
      {
        if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v17 = *(v9 + 8 * v7 + 32);
      }

      v18 = v17;
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v19 = sub_23C870D44();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 ended];
        if (v21)
        {
          v22 = v21;

          sub_23C871D54();
          v14 = v87[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v7;
      if (v8 == i)
      {
        v23 = v87;
        v11 = v77;
        v14 = MEMORY[0x277D84F90];
        v10 = v71;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_23C871C34();
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_30:

LABEL_31:
    v7 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23EED7610](0, v23);
  }

  else
  {
    if (!*(v23 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v25 = *(v23 + 32);
  }

  v26 = v25;

  v7 = sub_23C870CF4();

LABEL_32:
  v27 = EventGraph.asr.getter();
  if (!v27)
  {
LABEL_62:
    v38 = 0;
    goto LABEL_63;
  }

  v28 = v27;
  v65 = v7;
  v87 = v14;
  swift_beginAccess();
  v29 = *(v28 + 16);
  if (v29 >> 62)
  {
    goto LABEL_59;
  }

  for (j = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v68 = a6;
    v72 = v10;
    v10 = 0;
    v8 = v29 & 0xC000000000000001;
    a6 = v29 & 0xFFFFFFFFFFFFFF8;
    v14 = 0x277D568E0uLL;
    while (1)
    {
      if (v8)
      {
        v31 = MEMORY[0x23EED7610](v10, v29);
      }

      else
      {
        if (v10 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v31 = *(v29 + 8 * v10 + 32);
      }

      v11 = v31;
      v32 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v33 = sub_23C870D44();
      if (v33)
      {

        sub_23C871D54();
        v9 = v87[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v10;
      if (v32 == j)
      {
        v23 = v87;
        a6 = v68;
        v10 = v72;
        v11 = v77;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_48:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v34 = *(v23 + 16);
    v7 = v65;
    if (v34)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v34 = sub_23C871C34();
  v7 = v65;
  if (!v34)
  {
LABEL_61:

    goto LABEL_62;
  }

LABEL_51:
  v35 = __OFSUB__(v34, 1);
  v24 = v34 - 1;
  if (v35)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_141:
    v36 = MEMORY[0x23EED7610](v24, v23);
    goto LABEL_56;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_143;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v36 = *(v23 + 8 * v24 + 32);
LABEL_56:
  v37 = v36;

  v38 = sub_23C870CF4();

LABEL_63:
  v8 = sub_23C62A1DC(v7, v38);
  LOBYTE(v9) = v39;

  v40 = (v10)();
  if (!v40)
  {
    goto LABEL_90;
  }

  v41 = v40;
  v87 = v14;
  swift_beginAccess();
  v10 = *(v41 + 16);
  if (v10 >> 62)
  {
    goto LABEL_120;
  }

  for (k = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
  {

    if (k)
    {
      v69 = v41;
      v73 = v8;
      v66 = v9;
      v9 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x23EED7610](v9, v10);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_117;
          }

          v43 = *(v10 + 8 * v9 + 32);
        }

        v44 = v43;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a2, a3);
        v41 = v44;
        v45 = sub_23C870D44();
        if (v45)
        {
          v41 = v45;
          v46 = [v45 ended];
          if (v46)
          {
            v47 = v46;

            v41 = &v87;
            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v9;
        if (v8 == k)
        {
          v23 = v87;
          v41 = v69;
          v8 = v73;
          LOBYTE(v9) = v66;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_81:

    if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *(v23 + 16);
    }

    v11 = v77;
    v14 = MEMORY[0x277D84F90];
    if (result)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
LABEL_144:
        v49 = MEMORY[0x23EED7610](0, v23);
      }

      else
      {
        if (!*(v23 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        v49 = *(v23 + 32);
      }

      k = v49;
    }

    else
    {

LABEL_90:
      k = 0;
    }

    v41 = v11;
    v50 = EventGraph.asr.getter();
    if (!v50)
    {
      goto LABEL_125;
    }

    a3 = k;
    v87 = v14;
    swift_beginAccess();
    v51 = v50[2];
    v52 = v51 >> 62 ? sub_23C871C34() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v52)
    {
      break;
    }

    a2 = v50;
    v67 = v9;
    v70 = a6;
    v74 = v8;
    a6 = 0;
    v8 = v51 & 0xC000000000000001;
    v9 = 0x277D568E0uLL;
    while (1)
    {
      if (v8)
      {
        v53 = MEMORY[0x23EED7610](a6, v51);
      }

      else
      {
        if (a6 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_119;
        }

        v53 = *(v51 + 8 * a6 + 32);
      }

      v10 = v53;
      v54 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v41 = v10;
      v55 = sub_23C870D44();
      if (v55)
      {

        v41 = &v87;
        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++a6;
      if (v54 == v52)
      {
        v41 = v87;
        a6 = v70;
        v8 = v74;
        LOBYTE(v9) = v67;
        goto LABEL_107;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_107:

  k = a3;
  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
    v56 = sub_23C871C34();
    if (!v56)
    {
      goto LABEL_124;
    }

LABEL_110:
    v35 = __OFSUB__(v56, 1);
    result = v56 - 1;
    if (!v35)
    {
      if ((v41 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v41 + 16))
        {
          v57 = *(v41 + 8 * result + 32);
LABEL_115:
          v50 = v57;

          goto LABEL_125;
        }

        __break(1u);
        return result;
      }

LABEL_147:
      v57 = MEMORY[0x23EED7610](result, v41);
      goto LABEL_115;
    }

LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v56 = *(v41 + 16);
  if (v56)
  {
    goto LABEL_110;
  }

LABEL_124:

  v50 = 0;
LABEL_125:
  v58 = *a4;
  v59 = *a5;
  v99 = v9 & 1;
  if (v9)
  {
    if (k)
    {
      v60 = 0x800000023C8A91F0;
      if (v50)
      {
        v61 = 0xD000000000000016;
      }

      else
      {
        v61 = 0x20676E697373694DLL;
      }

      if (!v50)
      {
        v60 = 0xEB00000000646E45;
      }
    }

    else
    {
      v60 = 0x800000023C8A91D0;
      v61 = 0x20676E697373694DLL;
      if (v50)
      {
        v60 = 0xED00007472617453;
      }

      else
      {
        v61 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v61 = 0;
    v60 = 0;
  }

  *&v81 = v8;
  BYTE8(v81) = v99;
  *&v82 = v61;
  *(&v82 + 1) = v60;
  *&v83 = k;
  *(&v83 + 1) = v50;
  *&v84 = 0;
  BYTE8(v84) = 0;
  v85 = 0uLL;
  *&v86 = v58;
  *(&v86 + 1) = v59;
  v87 = v8;
  v88 = v99;
  v89 = v61;
  v90 = v60;
  v91 = k;
  v92 = v50;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = v58;
  v98 = v59;

  sub_23C61FD0C(&v81, v80);
  result = sub_23C61FD68(&v87);
  v62 = v84;
  *(a6 + 32) = v83;
  *(a6 + 48) = v62;
  v63 = v86;
  *(a6 + 64) = v85;
  *(a6 + 80) = v63;
  v64 = v82;
  *a6 = v81;
  *(a6 + 16) = v64;
  return result;
}

uint64_t sub_23C61B530@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v65 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v60 - v5;
  v6 = EventGraph.uei.getter();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_31;
  }

  v73 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = v6[2];
  if (v8 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v63 = v3;
    v64 = v6;
    v10 = 0;
    v7 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x23EED7610](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v6 = v11;
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB830, 0x277D5ABF0);
      v12 = sub_23C870D44();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 ended];
        if (v14)
        {
          v15 = v14;

          sub_23C871D54();
          v3 = *(v73 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v10;
      if (v2 == i)
      {
        v16 = v73;
        v3 = v63;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

LABEL_30:

    v6 = 0;
    goto LABEL_31;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EED7610](0, v16);
  }

  else
  {
    if (!*(v16 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v6 = sub_23C870CF4();

LABEL_31:
  v19 = sub_23C61FFE8();
  if (v19)
  {
    v20 = v19;
    v21 = sub_23C870CF4();
  }

  else
  {
    v21 = 0;
  }

  v2 = sub_23C62A1DC(v6, v21);
  v23 = v22;

  v24 = EventGraph.uei.getter();
  LODWORD(v64) = v23;
  if (v24)
  {
    v25 = v24;
    v62 = v2;
    v73 = v7;
    swift_beginAccess();
    v26 = v25[2];
    if (v26 >> 62)
    {
      goto LABEL_61;
    }

    for (j = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v60 = v25;
      v63 = v3;
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x23EED7610](v28, v26);
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v25 = v29;
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB830, 0x277D5ABF0);
        v31 = sub_23C870D44();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 ended];
          if (v33)
          {
            v34 = v33;

            sub_23C871D54();
            v3 = *(v73 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v28;
        if (v30 == j)
        {
          v16 = v73;
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_52:

    v2 = v62;
    if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_55:
        if ((v16 & 0xC000000000000001) == 0)
        {
          if (!*(v16 + 16))
          {
            __break(1u);
            return result;
          }

          v36 = *(v16 + 32);
          goto LABEL_58;
        }

LABEL_93:
        v36 = MEMORY[0x23EED7610](0, v16);
LABEL_58:
        v37 = v36;

        goto LABEL_65;
      }
    }

    else
    {
      result = *(v16 + 16);
      if (result)
      {
        goto LABEL_55;
      }
    }
  }

  v37 = 0;
LABEL_65:
  v38 = sub_23C61FFE8();
  v39 = sub_23C620A78();
  if (v39)
  {
    v40 = v39;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v41 = sub_23C870D44();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 eventMetadata];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 requestId];

        if (!v45)
        {

          goto LABEL_74;
        }

        v46 = v61;
        sub_23C871AB4();

        v47 = v46;
        v48 = sub_23C870B74();
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v47, 1, v48) != 1)
        {
          v62 = v2;
          v57 = v47;
          v45 = sub_23C870B04();
          v50 = v58;
          v59 = v57;
          v2 = v62;
          (*(v49 + 8))(v59, v48);

          goto LABEL_75;
        }

        sub_23C5FE4E4(v47);
      }
    }
  }

  v45 = 0;
LABEL_74:
  v50 = 0;
LABEL_75:
  v84 = v64 & 1;
  if (v64)
  {
    v51 = 0xD000000000000015;
    if (v37)
    {
      if (v38)
      {
        v51 = 0xD000000000000016;
      }

      else
      {
        v51 = 0x20676E697373694DLL;
      }

      v52 = 0xEB00000000646E45;
      if (v38)
      {
        v52 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v38)
      {
        v51 = 0x20676E697373694DLL;
      }

      v52 = 0xED00007472617453;
      if (!v38)
      {
        v52 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  *&v67 = v2;
  BYTE8(v67) = v84;
  *&v68 = v51;
  *(&v68 + 1) = v52;
  *&v69 = v37;
  *(&v69 + 1) = v38;
  *&v70 = 0;
  BYTE8(v70) = 0;
  *&v71 = v45;
  *(&v71 + 1) = v50;
  v72 = xmmword_27E1FB930;
  v73 = v2;
  v74 = v84;
  v75 = v51;
  v76 = v52;
  v77 = v37;
  v78 = v38;
  v79 = 0;
  v80 = 0;
  v81 = v45;
  v82 = v50;
  v83 = xmmword_27E1FB930;

  sub_23C61FD0C(&v67, &v66);
  result = sub_23C61FD68(&v73);
  v53 = v70;
  v54 = v65;
  v65[2] = v69;
  v54[3] = v53;
  v55 = v72;
  v54[4] = v71;
  v54[5] = v55;
  v56 = v68;
  *v54 = v67;
  v54[1] = v56;
  return result;
}

uint64_t sub_23C61BC44@<X0>(_OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_23C61FFE8();
  if (v5)
  {
    v6 = v5;
    v7 = sub_23C870CF4();
  }

  else
  {
    v7 = 0;
  }

  v8 = EventGraph.orch.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = v3;
  v11 = sub_23C62617C(v9);

  if (v11 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EED7610](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  v15 = sub_23C870CF4();

LABEL_14:
  v16 = sub_23C62A1DC(v7, v15);
  v18 = v17;

  v19 = sub_23C61FFE8();
  v20 = EventGraph.orch.getter();
  if (v20)
  {
    v21 = v3;
    v22 = sub_23C62617C(v20);

    if (v22 >> 62)
    {
      result = sub_23C871C34();
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_17:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x23EED7610](0, v22);
          goto LABEL_20;
        }

        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v22 + 32);
LABEL_20:
          v20 = v23;

          goto LABEL_23;
        }

LABEL_40:
        __break(1u);
        return result;
      }
    }

    v20 = 0;
  }

LABEL_23:
  v47 = v18 & 1;
  if (v18)
  {
    v24 = 0xD000000000000015;
    if (v19)
    {
      if (v20)
      {
        v24 = 0xD000000000000016;
      }

      else
      {
        v24 = 0x20676E697373694DLL;
      }

      v25 = 0xEB00000000646E45;
      if (v20)
      {
        v25 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v20)
      {
        v24 = 0x20676E697373694DLL;
      }

      v25 = 0xED00007472617453;
      if (!v20)
      {
        v25 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *&v30 = v16;
  BYTE8(v30) = v47;
  *&v31 = v24;
  *(&v31 + 1) = v25;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  *&v33 = 0;
  BYTE8(v33) = 0;
  v34 = 0uLL;
  v35 = xmmword_27E1FB940;
  v36 = v16;
  v37 = v47;
  v38 = v24;
  v39 = v25;
  v40 = v19;
  v41 = v20;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = xmmword_27E1FB940;

  sub_23C61FD0C(&v30, v29);
  result = sub_23C61FD68(&v36);
  v26 = v33;
  a2[2] = v32;
  a2[3] = v26;
  v27 = v35;
  a2[4] = v34;
  a2[5] = v27;
  v28 = v31;
  *a2 = v30;
  a2[1] = v28;
  return result;
}

uint64_t sub_23C61BF44@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = EventGraph.orch.getter();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v1;
  v9 = sub_23C62617C(v7);

  if (v9 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    v7 = 0;
    goto LABEL_10;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EED7610](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  v7 = sub_23C870CF4();

LABEL_10:
  v13 = sub_23C86E780();
  if (v13)
  {
    v14 = v13;
    v15 = sub_23C870CF4();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_23C62A1DC(v7, v15);
  v18 = v17;

  v19 = EventGraph.orch.getter();
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    v22 = v2;
    v23 = sub_23C62617C(v20);

    if (v23 >> 62)
    {
      result = sub_23C871C34();
      v18 = v21;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v21;
      if (result)
      {
LABEL_16:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x23EED7610](0, v23);
          goto LABEL_19;
        }

        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v23 + 32);
LABEL_19:
          v25 = v24;

          goto LABEL_23;
        }

LABEL_53:
        __break(1u);
        return result;
      }
    }
  }

  v25 = 0;
LABEL_23:
  v26 = sub_23C86E780();
  v27 = sub_23C620A78();
  if (v27)
  {
    v28 = v27;
    v47 = v16;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v29 = sub_23C870D44();
    if (v29)
    {
      v30 = v29;
      v31 = [v29 eventMetadata];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 requestId];

        if (v33)
        {
          v46 = v18;
          sub_23C871AB4();

          v34 = sub_23C870B74();
          v35 = v6;
          v36 = *(v34 - 8);
          if ((*(v36 + 48))(v35, 1, v34) == 1)
          {
            sub_23C5FE4E4(v35);

            v33 = 0;
            v37 = 0;
          }

          else
          {
            v45 = v34;
            v33 = sub_23C870B04();
            v37 = v38;
            (*(v36 + 8))(v35, v45);
          }

          v16 = v47;
          LOBYTE(v18) = v46;
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    v33 = 0;
LABEL_32:
    v37 = 0;
    v16 = v47;
    goto LABEL_36;
  }

  v33 = 0;
  v37 = 0;
LABEL_36:
  v66 = v18 & 1;
  if (v18)
  {
    v39 = 0xD000000000000015;
    if (v25)
    {
      if (v26)
      {
        v39 = 0xD000000000000016;
      }

      else
      {
        v39 = 0x20676E697373694DLL;
      }

      v40 = 0xEB00000000646E45;
      if (v26)
      {
        v40 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v26)
      {
        v39 = 0x20676E697373694DLL;
      }

      v40 = 0xED00007472617453;
      if (!v26)
      {
        v40 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  *&v49 = v16;
  BYTE8(v49) = v66;
  *&v50 = v39;
  *(&v50 + 1) = v40;
  *&v51 = v25;
  *(&v51 + 1) = v26;
  *&v52 = 0;
  BYTE8(v52) = 0;
  *&v53 = v33;
  *(&v53 + 1) = v37;
  v54 = xmmword_27E1FB950;
  v55 = v16;
  v56 = v66;
  v57 = v39;
  v58 = v40;
  v59 = v25;
  v60 = v26;
  v61 = 0;
  v62 = 0;
  v63 = v33;
  v64 = v37;
  v65 = xmmword_27E1FB950;

  sub_23C61FD0C(&v49, &v48);
  result = sub_23C61FD68(&v55);
  v41 = v52;
  a1[2] = v51;
  a1[3] = v41;
  v42 = v54;
  a1[4] = v53;
  a1[5] = v42;
  v43 = v50;
  *a1 = v49;
  a1[1] = v43;
  return result;
}

uint64_t sub_23C61C45C@<X0>(unint64_t a1@<X8>)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = v55 - v7;
  v8 = EventGraph.orch.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = v1;
  v11 = sub_23C62617C(v9);

  if (v11 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23EED7610](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_107:
      v26 = MEMORY[0x23EED7610](0, v11);
LABEL_46:
      v59 = v26;

      goto LABEL_50;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = sub_23C870CF4();

LABEL_11:
  v15 = EventGraph.orch.getter();
  v3 = MEMORY[0x277D84F90];
  v61 = v4;
  if (!v15)
  {
LABEL_39:
    v22 = 0;
    goto LABEL_40;
  }

  v16 = v15;
  v69 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v16 + 16);
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v59 = v16;
    v60 = v14;
    v58 = a1;
    v14 = 0;
    a1 = v2 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v18 = MEMORY[0x23EED7610](v14, v2);
      }

      else
      {
        if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v18 = *(v2 + 8 * v14 + 32);
      }

      v4 = v18;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
      v19 = sub_23C870D44();
      if (v19)
      {

        sub_23C871D54();
        v3 = *(v69 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v14;
      if (v16 == i)
      {
        v11 = v69;
        a1 = v58;
        v14 = v60;
        v4 = v61;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_27:

  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!*(v11 + 16))
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_30:
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_109;
  }

  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_111;
  }

  for (j = *(v11 + 32); ; j = MEMORY[0x23EED7610](0, v11))
  {
    v21 = j;

    v22 = sub_23C870CF4();

LABEL_40:
    v2 = sub_23C62A1DC(v14, v22);
    LODWORD(v60) = v23;

    v24 = EventGraph.orch.getter();
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v14 = v4;
    v11 = sub_23C62617C(v25);

    if (v11 >> 62)
    {
      if (!sub_23C871C34())
      {
LABEL_48:

        break;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_107;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v11 + 32);
      goto LABEL_46;
    }

    __break(1u);
LABEL_109:
    ;
  }

  v59 = 0;
LABEL_50:
  v27 = EventGraph.orch.getter();
  if (v27)
  {
    v28 = v27;
    v69 = v3;
    swift_beginAccess();
    v29 = *(v28 + 16);
    if (v29 >> 62)
    {
      goto LABEL_75;
    }

    for (k = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v55[1] = v28;
      v56 = v2;
      v58 = a1;
      a1 = 0;
      v2 = v29 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x23EED7610](a1, v29);
        }

        else
        {
          if (a1 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v31 = *(v29 + 8 * a1 + 32);
        }

        v32 = v31;
        v28 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
        v33 = sub_23C870D44();
        if (v33)
        {

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++a1;
        if (v28 == k)
        {
          v11 = v69;
          a1 = v58;
          v2 = v56;
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_66:

    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_69:
        if ((v11 & 0xC000000000000001) == 0)
        {
          if (!*(v11 + 16))
          {
            __break(1u);
            return result;
          }

          v35 = *(v11 + 32);
          goto LABEL_72;
        }

LABEL_111:
        v35 = MEMORY[0x23EED7610](0, v11);
LABEL_72:
        v36 = v35;

        goto LABEL_79;
      }
    }

    else
    {
      result = *(v11 + 16);
      if (result)
      {
        goto LABEL_69;
      }
    }
  }

  v36 = 0;
LABEL_79:
  v37 = sub_23C620A78();
  if (!v37)
  {
LABEL_87:
    v43 = 0;
LABEL_88:
    v48 = 0;
    goto LABEL_89;
  }

  v38 = v37;
  sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
  v39 = sub_23C870D44();
  if (!v39)
  {
LABEL_86:

    goto LABEL_87;
  }

  v40 = v39;
  v41 = [v39 eventMetadata];
  if (!v41)
  {

    goto LABEL_86;
  }

  v42 = v41;
  v43 = [v41 requestId];

  if (!v43)
  {

    goto LABEL_88;
  }

  v56 = v2;
  v44 = a1;
  v45 = v57;
  sub_23C871AB4();

  v46 = sub_23C870B74();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_23C5FE4E4(v45);

    v43 = 0;
    v48 = 0;
  }

  else
  {
    v43 = sub_23C870B04();
    v48 = v54;
    (*(v47 + 8))(v45, v46);
  }

  a1 = v44;
  v2 = v56;
LABEL_89:
  v80 = v60 & 1;
  if (v60)
  {
    if (v59)
    {
      v49 = 0x800000023C8A91F0;
      if (v36)
      {
        v50 = 0xD000000000000016;
      }

      else
      {
        v50 = 0x20676E697373694DLL;
      }

      if (!v36)
      {
        v49 = 0xEB00000000646E45;
      }
    }

    else
    {
      v49 = 0x800000023C8A91D0;
      v50 = 0x20676E697373694DLL;
      if (v36)
      {
        v49 = 0xED00007472617453;
      }

      else
      {
        v50 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  *&v63 = v2;
  BYTE8(v63) = v80;
  *&v64 = v50;
  *(&v64 + 1) = v49;
  *&v65 = v59;
  *(&v65 + 1) = v36;
  *&v66 = 0;
  BYTE8(v66) = 0;
  *&v67 = v43;
  *(&v67 + 1) = v48;
  v68 = xmmword_27E1FB960;
  v69 = v2;
  v70 = v80;
  v71 = v50;
  v72 = v49;
  v73 = v59;
  v74 = v36;
  v75 = 0;
  v76 = 0;
  v77 = v43;
  v78 = v48;
  v79 = xmmword_27E1FB960;

  sub_23C61FD0C(&v63, &v62);
  result = sub_23C61FD68(&v69);
  v51 = v66;
  *(a1 + 32) = v65;
  *(a1 + 48) = v51;
  v52 = v68;
  *(a1 + 64) = v67;
  *(a1 + 80) = v52;
  v53 = v64;
  *a1 = v63;
  *(a1 + 16) = v53;
  return result;
}

unint64_t sub_23C61CC78@<X0>(_OWORD *a1@<X8>)
{
  v3 = EventGraph.asr.getter();
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    goto LABEL_29;
  }

  v5 = v3;
  v63 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v6 = v5[2];
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v53 = v5;
    v8 = 0;
    v1 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EED7610](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v5 = v9;
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v10 = sub_23C870D44();
      if (v10)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v8;
      if (v2 == i)
      {
        v11 = v63;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_17:

  v4 = MEMORY[0x277D84F90];
  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = sub_23C871C34();
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_28:

LABEL_29:
    v2 = 0;
    goto LABEL_30;
  }

LABEL_20:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EED7610](0, v11);
  }

  else
  {
    if (!*(v11 + 16))
    {
      __break(1u);
      goto LABEL_135;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  v2 = sub_23C870CF4();

LABEL_30:
  v15 = EventGraph.asr.getter();
  if (!v15)
  {
    goto LABEL_61;
  }

  v63 = v4;
  swift_beginAccess();
  v16 = v15[2];
  if (v16 >> 62)
  {
    goto LABEL_58;
  }

  for (j = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v52 = v15;
    v53 = v2;
    v2 = 0;
    v4 = v16 & 0xC000000000000001;
    v1 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v18 = MEMORY[0x23EED7610](v2, v16);
      }

      else
      {
        if (v2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v18 = *(v16 + 8 * v2 + 32);
      }

      v15 = v18;
      v19 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
      v20 = sub_23C870D44();
      if (v20 && (v21 = v20, v22 = [v20 isFinal], v21, (v22 & 1) != 0))
      {
        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v2;
      if (v19 == j)
      {
        v11 = v63;
        v4 = MEMORY[0x277D84F90];
        v2 = v53;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_47:

  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    v23 = sub_23C871C34();
    if (v23)
    {
LABEL_50:
      v24 = __OFSUB__(v23, 1);
      v12 = v23 - 1;
      if (!v24)
      {
        if ((v11 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *(v11 + 16))
          {
            v25 = *(v11 + 8 * v12 + 32);
LABEL_55:
            v1 = v25;

            v15 = sub_23C870CF4();

            goto LABEL_61;
          }

          __break(1u);
          goto LABEL_139;
        }

LABEL_136:
        v25 = MEMORY[0x23EED7610](v12, v11);
        goto LABEL_55;
      }

LABEL_135:
      __break(1u);
      goto LABEL_136;
    }
  }

  else
  {
    v23 = *(v11 + 16);
    if (v23)
    {
      goto LABEL_50;
    }
  }

  v15 = 0;
LABEL_61:
  v53 = sub_23C62A1DC(v2, v15);
  v52 = v26;

  v27 = EventGraph.asr.getter();
  if (!v27)
  {
    goto LABEL_89;
  }

  v63 = v4;
  swift_beginAccess();
  v28 = v27[2];
  if (v28 >> 62)
  {
    goto LABEL_86;
  }

  for (k = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
  {

    if (!k)
    {
      break;
    }

    v51 = v27;
    v1 = 0;
    v4 = v28 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x23EED7610](v1, v28);
      }

      else
      {
        if (v1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v30 = *(v28 + 8 * v1 + 32);
      }

      v27 = v30;
      v31 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v32 = sub_23C870D44();
      if (v32)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v1;
      if (v31 == k)
      {
        v11 = v63;
        v4 = MEMORY[0x277D84F90];
        v27 = v51;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_77:

  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_80:
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (!*(v11 + 16))
        {
          __break(1u);
          goto LABEL_141;
        }

        v34 = *(v11 + 32);
        goto LABEL_83;
      }

LABEL_139:
      v34 = MEMORY[0x23EED7610](0, v11);
LABEL_83:
      v27 = v34;

      goto LABEL_89;
    }
  }

  else
  {
    result = *(v11 + 16);
    if (result)
    {
      goto LABEL_80;
    }
  }

  v27 = 0;
LABEL_89:
  v35 = EventGraph.asr.getter();
  if (v35)
  {
    v63 = v4;
    swift_beginAccess();
    v36 = *(v35 + 16);
    if (v36 >> 62)
    {
      goto LABEL_117;
    }

    for (m = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
    {

      if (!m)
      {
        break;
      }

      v55 = v27;
      v38 = 0;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x23EED7610](v38, v36);
        }

        else
        {
          if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_116;
          }

          v39 = *(v36 + 8 * v38 + 32);
        }

        v27 = v39;
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v41 = sub_23C870D44();
        if (v41 && (v42 = v41, v43 = [v41 isFinal], v42, (v43 & 1) != 0))
        {
          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v38;
        if (v40 == m)
        {
          v1 = v63;
          v27 = v55;
          goto LABEL_106;
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      ;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_106:

    if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
    {
      v44 = sub_23C871C34();
      if (v44)
      {
LABEL_109:
        v24 = __OFSUB__(v44, 1);
        result = v44 - 1;
        if (!v24)
        {
          if ((v1 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *(v1 + 16))
            {
              v45 = *(v1 + 8 * result + 32);
LABEL_114:
              v35 = v45;

              goto LABEL_120;
            }

            __break(1u);
            return result;
          }

LABEL_142:
          v45 = MEMORY[0x23EED7610](result, v1);
          goto LABEL_114;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v44 = *(v1 + 16);
      if (v44)
      {
        goto LABEL_109;
      }
    }

    v35 = 0;
  }

LABEL_120:
  v74 = v52 & 1;
  if (v52)
  {
    if (v27)
    {
      v46 = 0x800000023C8A91F0;
      if (v35)
      {
        v47 = 0xD000000000000016;
      }

      else
      {
        v47 = 0x20676E697373694DLL;
      }

      if (!v35)
      {
        v46 = 0xEB00000000646E45;
      }
    }

    else
    {
      v46 = 0x800000023C8A91D0;
      v47 = 0x20676E697373694DLL;
      if (v35)
      {
        v46 = 0xED00007472617453;
      }

      else
      {
        v47 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  *&v57 = v53;
  BYTE8(v57) = v74;
  *&v58 = v47;
  *(&v58 + 1) = v46;
  *&v59 = v27;
  *(&v59 + 1) = v35;
  *&v60 = 0;
  BYTE8(v60) = 0;
  v61 = 0uLL;
  v62 = xmmword_27E1FB980;
  v63 = v53;
  v64 = v74;
  v65 = v47;
  v66 = v46;
  v67 = v27;
  v68 = v35;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = xmmword_27E1FB980;

  sub_23C61FD0C(&v57, v56);
  result = sub_23C61FD68(&v63);
  v48 = v60;
  a1[2] = v59;
  a1[3] = v48;
  v49 = v62;
  a1[4] = v61;
  a1[5] = v49;
  v50 = v58;
  *a1 = v57;
  a1[1] = v50;
  return result;
}

uint64_t sub_23C61D598@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, SEL *a3@<X2>, uint64_t (*a4)(void)@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v11 = EventGraph.uei.getter();
  v12 = MEMORY[0x277D84F90];
  v82 = a4;
  if (!v11)
  {
    goto LABEL_31;
  }

  v95 = MEMORY[0x277D84F90];
  v13 = v11;
  swift_beginAccess();
  v78 = v13;
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    a4 = (v14 & 0xC000000000000001);
    while (1)
    {
      if (a4)
      {
        v16 = MEMORY[0x23EED7610](v12, v14);
      }

      else
      {
        if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v19 = sub_23C870D44();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 *a3];
        if (v21)
        {
          v22 = v21;

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v12;
      if (v18 == i)
      {
        v23 = v95;
        a4 = v82;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_19:

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!*(v23 + 16))
  {
LABEL_30:

LABEL_31:
    v26 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x23EED7610](0, v23);
  }

  else
  {
    if (!*(v23 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = sub_23C870CF4();

LABEL_32:
  v27 = a4();
  if (v27)
  {
    v95 = v12;
    v28 = v27;
    swift_beginAccess();
    v77 = v28;
    v29 = *(v28 + 16);
    if (v29 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      v78 = v26;
      if (!j)
      {
        break;
      }

      v26 = 0;
      a4 = (v29 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          v31 = MEMORY[0x23EED7610](v26, v29);
        }

        else
        {
          if (v26 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v31 = *(v29 + 8 * v26 + 32);
        }

        v32 = v31;
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a5, a6);
        v34 = sub_23C870D44();
        if (v34)
        {
          v35 = v34;
          v36 = [v34 ended];
          if (v36)
          {
            v37 = v36;

            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v26;
        if (v33 == j)
        {
          v23 = v95;
          a4 = v82;
          v26 = v78;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_50:

    v12 = MEMORY[0x277D84F90];
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_53:
        if ((v23 & 0xC000000000000001) == 0)
        {
          if (!*(v23 + 16))
          {
            __break(1u);
            goto LABEL_142;
          }

          v38 = *(v23 + 32);
          goto LABEL_56;
        }

LABEL_140:
        v38 = MEMORY[0x23EED7610](0, v23);
LABEL_56:
        v39 = v38;

        v40 = sub_23C870CF4();

        v26 = v78;
        goto LABEL_63;
      }
    }

    else if (*(v23 + 16))
    {
      goto LABEL_53;
    }
  }

  v40 = 0;
LABEL_63:
  v78 = sub_23C62A1DC(v26, v40);
  v77 = v41;

  v42 = EventGraph.uei.getter();
  if (v42)
  {
    v43 = v42;
    v95 = v12;
    swift_beginAccess();
    v44 = *(v43 + 16);
    if (v44 >> 62)
    {
      goto LABEL_90;
    }

    for (k = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v46 = 0;
      a4 = (v44 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          v47 = MEMORY[0x23EED7610](v46, v44);
        }

        else
        {
          if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v47 = *(v44 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v50 = sub_23C870D44();
        if (v50)
        {
          v51 = v50;
          v52 = [v50 *a3];
          if (v52)
          {
            v53 = v52;

            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v46;
        if (v49 == k)
        {
          v23 = v95;
          a4 = v82;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_81:

    v12 = MEMORY[0x277D84F90];
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_84:
        if ((v23 & 0xC000000000000001) == 0)
        {
          if (!*(v23 + 16))
          {
            __break(1u);
            goto LABEL_144;
          }

          v54 = *(v23 + 32);
          goto LABEL_87;
        }

LABEL_142:
        v54 = MEMORY[0x23EED7610](0, v23);
LABEL_87:
        a1 = v54;

        goto LABEL_94;
      }
    }

    else if (*(v23 + 16))
    {
      goto LABEL_84;
    }
  }

  a1 = 0;
LABEL_94:
  v55 = (a4)(v42);
  if (!v55)
  {
LABEL_124:
    v69 = 0;
    goto LABEL_125;
  }

  v56 = v55;
  v95 = v12;
  swift_beginAccess();
  v57 = *(v56 + 16);
  if (v57 >> 62)
  {
    goto LABEL_121;
  }

  for (m = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v87 = a1;
    v59 = 0;
    a1 = &off_278BC1000;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x23EED7610](v59, v57);
      }

      else
      {
        if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v61 = v60;
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a5, a6);
      v63 = sub_23C870D44();
      if (v63)
      {
        v64 = v63;
        v65 = [v63 ended];
        if (v65)
        {
          v66 = v65;

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v59;
      if (v62 == m)
      {
        v23 = v95;
        a1 = v87;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_112:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    result = *(v23 + 16);
    if (result)
    {
      goto LABEL_115;
    }

    goto LABEL_123;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_115:
  if ((v23 & 0xC000000000000001) == 0)
  {
    if (!*(v23 + 16))
    {
      __break(1u);
      return result;
    }

    v68 = *(v23 + 32);
    goto LABEL_118;
  }

LABEL_144:
  v68 = MEMORY[0x23EED7610](0, v23);
LABEL_118:
  v69 = v68;

LABEL_125:
  v70 = *a7;
  v71 = *a8;
  v107 = v77 & 1;
  if (v77)
  {
    if (a1)
    {
      v72 = 0x800000023C8A91F0;
      if (v69)
      {
        v73 = 0xD000000000000016;
      }

      else
      {
        v73 = 0x20676E697373694DLL;
      }

      if (!v69)
      {
        v72 = 0xEB00000000646E45;
      }
    }

    else
    {
      v72 = 0x800000023C8A91D0;
      v73 = 0x20676E697373694DLL;
      if (v69)
      {
        v72 = 0xED00007472617453;
      }

      else
      {
        v73 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v73 = 0;
    v72 = 0;
  }

  *&v89 = v78;
  BYTE8(v89) = v107;
  *&v90 = v73;
  *(&v90 + 1) = v72;
  *&v91 = a1;
  *(&v91 + 1) = v69;
  *&v92 = 0;
  BYTE8(v92) = 0;
  v93 = 0uLL;
  *&v94 = v70;
  *(&v94 + 1) = v71;
  v95 = v78;
  v96 = v107;
  v97 = v73;
  v98 = v72;
  v99 = a1;
  v100 = v69;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = v70;
  v106 = v71;

  sub_23C61FD0C(&v89, v88);
  result = sub_23C61FD68(&v95);
  v74 = v92;
  a9[2] = v91;
  a9[3] = v74;
  v75 = v94;
  a9[4] = v93;
  a9[5] = v75;
  v76 = v90;
  *a9 = v89;
  a9[1] = v76;
  return result;
}

uint64_t sub_23C61DEBC@<X0>(_OWORD *a2@<X8>)
{
  v4 = sub_23C86E780();
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C870CF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = EventGraph.uei.getter();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_32;
  }

  v9 = v7;
  v51 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (v10 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v39 = v9;
    v41 = v6;
    v42 = a2;
    v12 = 0;
    v6 = (v10 & 0xC000000000000001);
    v9 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v13 = MEMORY[0x23EED7610](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v2 = v13;
      v8 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7F8, 0x277D5AC58);
      v14 = sub_23C870D44();
      if (v14)
      {

        sub_23C871D54();
        a2 = v51[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v12;
      if (v8 == i)
      {
        v15 = v51;
        a2 = v42;
        v8 = MEMORY[0x277D84F90];
        v9 = v39;
        v6 = v41;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!*(v15 + 16))
  {
LABEL_31:

LABEL_32:
    v18 = 0;
    goto LABEL_33;
  }

LABEL_23:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x23EED7610](0, v15);
  }

  else
  {
    if (!*(v15 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  v18 = sub_23C870CF4();

LABEL_33:
  v2 = sub_23C62A1DC(v6, v18);
  LOBYTE(v20) = v19;

  v6 = sub_23C86E780();
  v21 = EventGraph.uei.getter();
  if (v21)
  {
    v51 = v8;
    v22 = v21;
    swift_beginAccess();
    v23 = *(v22 + 16);
    if (v23 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {
      LOBYTE(v41) = v20;

      if (!j)
      {
        break;
      }

      v38 = v6;
      v40 = v2;
      v43 = a2;
      v25 = 0;
      v2 = (v23 & 0xC000000000000001);
      v6 = (v23 & 0xFFFFFFFFFFFFFF8);
      v20 = 0x277D5AC58uLL;
      while (1)
      {
        if (v2)
        {
          v26 = MEMORY[0x23EED7610](v25, v23);
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7F8, 0x277D5AC58);
        v29 = sub_23C870D44();
        if (v29)
        {

          sub_23C871D54();
          a2 = v51[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v25;
        if (v28 == j)
        {
          v9 = v51;
          a2 = v43;
          v6 = v38;
          v2 = v40;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_50:

    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_53:
        if ((v9 & 0xC000000000000001) == 0)
        {
          if (!*(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v32 = *(v9 + 32);
          goto LABEL_56;
        }

LABEL_79:
        v32 = MEMORY[0x23EED7610](0, v9);
LABEL_56:
        v30 = v32;

LABEL_62:
        LOBYTE(v20) = v41;
        goto LABEL_63;
      }
    }

    else
    {
      result = *(v9 + 16);
      if (result)
      {
        goto LABEL_53;
      }
    }

    v30 = 0;
    goto LABEL_62;
  }

  v30 = 0;
LABEL_63:
  v62 = v20 & 1;
  if (v20)
  {
    v33 = 0xD000000000000015;
    if (v6)
    {
      if (v30)
      {
        v33 = 0xD000000000000016;
      }

      else
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xEB00000000646E45;
      if (v30)
      {
        v34 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v30)
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xED00007472617453;
      if (!v30)
      {
        v34 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  *&v45 = v2;
  BYTE8(v45) = v62;
  *&v46 = v33;
  *(&v46 + 1) = v34;
  *&v47 = v6;
  *(&v47 + 1) = v30;
  *&v48 = 0;
  BYTE8(v48) = 0;
  v49 = 0uLL;
  v50 = xmmword_27E1FB9A0;
  v51 = v2;
  v52 = v62;
  v53 = v33;
  v54 = v34;
  v55 = v6;
  v56 = v30;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = xmmword_27E1FB9A0;

  sub_23C61FD0C(&v45, v44);
  result = sub_23C61FD68(&v51);
  v35 = v48;
  a2[2] = v47;
  a2[3] = v35;
  v36 = v50;
  a2[4] = v49;
  a2[5] = v36;
  v37 = v46;
  *a2 = v45;
  a2[1] = v37;
  return result;
}

uint64_t sub_23C61E3E4@<X0>(_OWORD *a2@<X8>)
{
  v4 = sub_23C86E780();
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C870CF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = SiriTurn.tts.getter();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = v7;
  v57 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (v10 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v45 = v9;
    v47 = v6;
    v48 = a2;
    v12 = 0;
    v6 = (v10 & 0xC000000000000001);
    v9 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v13 = MEMORY[0x23EED7610](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v2 = v13;
      v8 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7F0, 0x277D5B150);
      v14 = sub_23C870D44();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 startedOrChanged];
        if (v16)
        {
          v17 = v16;

          sub_23C871D54();
          a2 = v57[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v12;
      if (v8 == i)
      {
        v18 = v57;
        a2 = v48;
        v8 = MEMORY[0x277D84F90];
        v9 = v45;
        v6 = v47;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (!*(v18 + 16))
  {
LABEL_33:

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

LABEL_25:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EED7610](0, v18);
  }

  else
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  v21 = sub_23C870CF4();

LABEL_35:
  v2 = sub_23C62A1DC(v6, v21);
  LOBYTE(v23) = v22;

  v6 = sub_23C86E780();
  v24 = SiriTurn.tts.getter();
  if (v24)
  {
    v57 = v8;
    v25 = v24;
    swift_beginAccess();
    v26 = *(v25 + 16);
    if (v26 >> 62)
    {
      goto LABEL_63;
    }

    for (j = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {
      LOBYTE(v47) = v23;

      if (!j)
      {
        break;
      }

      v44 = v6;
      v46 = v2;
      v49 = a2;
      v28 = 0;
      v2 = (v26 & 0xC000000000000001);
      v6 = (v26 & 0xFFFFFFFFFFFFFF8);
      v23 = 0x277D5B150uLL;
      while (1)
      {
        if (v2)
        {
          v29 = MEMORY[0x23EED7610](v28, v26);
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7F0, 0x277D5B150);
        v32 = sub_23C870D44();
        if (v32)
        {
          v33 = v32;
          v34 = [v32 startedOrChanged];
          if (v34)
          {
            v35 = v34;

            sub_23C871D54();
            a2 = v57[2];
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v28;
        if (v31 == j)
        {
          v9 = v57;
          a2 = v49;
          v6 = v44;
          v2 = v46;
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:

    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_57:
        if ((v9 & 0xC000000000000001) == 0)
        {
          if (!*(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v38 = *(v9 + 32);
          goto LABEL_60;
        }

LABEL_83:
        v38 = MEMORY[0x23EED7610](0, v9);
LABEL_60:
        v36 = v38;

LABEL_66:
        LOBYTE(v23) = v47;
        goto LABEL_67;
      }
    }

    else
    {
      result = *(v9 + 16);
      if (result)
      {
        goto LABEL_57;
      }
    }

    v36 = 0;
    goto LABEL_66;
  }

  v36 = 0;
LABEL_67:
  v68 = v23 & 1;
  if (v23)
  {
    v39 = 0xD000000000000015;
    if (v6)
    {
      if (v36)
      {
        v39 = 0xD000000000000016;
      }

      else
      {
        v39 = 0x20676E697373694DLL;
      }

      v40 = 0xEB00000000646E45;
      if (v36)
      {
        v40 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v36)
      {
        v39 = 0x20676E697373694DLL;
      }

      v40 = 0xED00007472617453;
      if (!v36)
      {
        v40 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  *&v51 = v2;
  BYTE8(v51) = v68;
  *&v52 = v39;
  *(&v52 + 1) = v40;
  *&v53 = v6;
  *(&v53 + 1) = v36;
  *&v54 = 0;
  BYTE8(v54) = 0;
  v55 = 0uLL;
  v56 = xmmword_27E1FB9B0;
  v57 = v2;
  v58 = v68;
  v59 = v39;
  v60 = v40;
  v61 = v6;
  v62 = v36;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = xmmword_27E1FB9B0;

  sub_23C61FD0C(&v51, v50);
  result = sub_23C61FD68(&v57);
  v41 = v54;
  a2[2] = v53;
  a2[3] = v41;
  v42 = v56;
  a2[4] = v55;
  a2[5] = v42;
  v43 = v52;
  *a2 = v51;
  a2[1] = v43;
  return result;
}

uint64_t sub_23C61E9AC@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = EventGraph.asr.getter();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_31;
  }

  v11 = v9;
  v88 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (v12 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v10 = v12 & 0xC000000000000001;
    v6 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v14 = MEMORY[0x23EED7610](v5, v12);
      }

      else
      {
        if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v12 + 8 * v5 + 32);
      }

      v7 = v14;
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v16 = sub_23C870D44();
      if (v16)
      {
        v17 = v16;
        v18 = [v16 startedOrChanged];
        if (v18)
        {
          v19 = v18;

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v5;
      if (v15 == i)
      {
        v20 = v88;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!*(v20 + 16))
  {
LABEL_30:

LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x23EED7610](0, v20);
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v5 = sub_23C870CF4();

LABEL_32:
  v23 = EventGraph.asr.getter();
  if (v23)
  {
    v24 = v23;
    v88 = v10;
    swift_beginAccess();
    v25 = *(v24 + 16);
    if (v25 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v74 = v5;
      v5 = 0;
      v7 = (v25 & 0xC000000000000001);
      v6 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v7)
        {
          v27 = MEMORY[0x23EED7610](v5, v25);
        }

        else
        {
          if (v5 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v27 = *(v25 + 8 * v5 + 32);
        }

        v28 = v27;
        v29 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v30 = sub_23C870D44();
        if (v30)
        {
          v31 = v30;
          v32 = [v30 ended];
          if (v32)
          {
            v33 = v32;

            sub_23C871D54();
            v10 = *(v88 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v5;
        if (v29 == j)
        {
          v20 = v88;
          v10 = MEMORY[0x277D84F90];
          v5 = v74;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_50:

    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_53:
        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*(v20 + 16))
          {
            __break(1u);
            goto LABEL_142;
          }

          v34 = *(v20 + 32);
          goto LABEL_56;
        }

LABEL_140:
        v34 = MEMORY[0x23EED7610](0, v20);
LABEL_56:
        v35 = v34;

        v36 = sub_23C870CF4();

        goto LABEL_63;
      }
    }

    else if (*(v20 + 16))
    {
      goto LABEL_53;
    }
  }

  v36 = 0;
LABEL_63:
  v6 = sub_23C62A1DC(v5, v36);
  LOBYTE(v25) = v37;

  v38 = EventGraph.asr.getter();
  if (v38)
  {
    v39 = v38;
    v88 = v10;
    swift_beginAccess();
    v40 = *(v39 + 16);
    if (v40 >> 62)
    {
      goto LABEL_90;
    }

    for (k = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v72 = v25;
      v75 = v6;
      v6 = 0;
      v25 = v40 & 0xC000000000000001;
      v7 = (v40 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v25)
        {
          v42 = MEMORY[0x23EED7610](v6, v40);
        }

        else
        {
          if (v6 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v42 = *(v40 + 8 * v6 + 32);
        }

        v43 = v42;
        v44 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v45 = sub_23C870D44();
        if (v45)
        {
          v46 = v45;
          v47 = [v45 startedOrChanged];
          if (v47)
          {
            v48 = v47;

            sub_23C871D54();
            v10 = *(v88 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v6;
        if (v44 == k)
        {
          v20 = v88;
          v10 = MEMORY[0x277D84F90];
          v6 = v75;
          LOBYTE(v25) = v72;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_81:

    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_84:
        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*(v20 + 16))
          {
            __break(1u);
            goto LABEL_144;
          }

          v49 = *(v20 + 32);
          goto LABEL_87;
        }

LABEL_142:
        v49 = MEMORY[0x23EED7610](0, v20);
LABEL_87:
        v7 = v49;

        goto LABEL_94;
      }
    }

    else if (*(v20 + 16))
    {
      goto LABEL_84;
    }
  }

  v7 = 0;
LABEL_94:
  v50 = EventGraph.asr.getter();
  if (!v50)
  {
LABEL_124:
    v63 = 0;
    goto LABEL_125;
  }

  v88 = v10;
  v51 = v50;
  swift_beginAccess();
  v52 = *(v51 + 16);
  if (v52 >> 62)
  {
    goto LABEL_121;
  }

  for (m = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v71 = v7;
    v73 = v25;
    v76 = v6;
    v6 = 0;
    v7 = (v52 & 0xC000000000000001);
    while (1)
    {
      if (v7)
      {
        v54 = MEMORY[0x23EED7610](v6, v52);
      }

      else
      {
        if (v6 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v54 = *(v52 + 8 * v6 + 32);
      }

      v55 = v54;
      v56 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v57 = sub_23C870D44();
      if (v57)
      {
        v58 = v57;
        v59 = [v57 ended];
        if (v59)
        {
          v60 = v59;

          sub_23C871D54();
          v25 = *(v88 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v6;
      if (v56 == m)
      {
        v20 = v88;
        v6 = v76;
        LOBYTE(v25) = v73;
        v7 = v71;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_112:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    result = *(v20 + 16);
    if (result)
    {
      goto LABEL_115;
    }

    goto LABEL_123;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_115:
  if ((v20 & 0xC000000000000001) == 0)
  {
    if (!*(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v62 = *(v20 + 32);
    goto LABEL_118;
  }

LABEL_144:
  v62 = MEMORY[0x23EED7610](0, v20);
LABEL_118:
  v63 = v62;

LABEL_125:
  v64 = *a3;
  v65 = *a4;
  v100 = v25 & 1;
  if (v25)
  {
    if (v7)
    {
      v66 = 0x800000023C8A91F0;
      if (v63)
      {
        v67 = 0xD000000000000016;
      }

      else
      {
        v67 = 0x20676E697373694DLL;
      }

      if (!v63)
      {
        v66 = 0xEB00000000646E45;
      }
    }

    else
    {
      v66 = 0x800000023C8A91D0;
      v67 = 0x20676E697373694DLL;
      if (v63)
      {
        v66 = 0xED00007472617453;
      }

      else
      {
        v67 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v67 = 0;
    v66 = 0;
  }

  *&v82 = v6;
  BYTE8(v82) = v100;
  *&v83 = v67;
  *(&v83 + 1) = v66;
  *&v84 = v7;
  *(&v84 + 1) = v63;
  *&v85 = 0;
  BYTE8(v85) = 0;
  v86 = 0uLL;
  *&v87 = v64;
  *(&v87 + 1) = v65;
  v88 = v6;
  v89 = v100;
  v90 = v67;
  v91 = v66;
  v92 = v7;
  v93 = v63;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = v64;
  v99 = v65;

  sub_23C61FD0C(&v82, v81);
  result = sub_23C61FD68(&v88);
  v68 = v85;
  a5[2] = v84;
  a5[3] = v68;
  v69 = v87;
  a5[4] = v86;
  a5[5] = v69;
  v70 = v83;
  *a5 = v82;
  a5[1] = v70;
  return result;
}

double sub_23C61F2D0@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_23C61FFE8();
  if (v5)
  {
    v6 = v5;
    v7 = sub_23C870CF4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C620A78();
  if (v8)
  {
    v9 = v8;
    v10 = sub_23C870CF4();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23C62A1DC(v7, v10);
  v13 = v12;

  v14 = sub_23C61FFE8();
  v15 = sub_23C620A78();
  v16 = sub_23C620A78();
  if (v16)
  {
    v17 = v16;
    v35 = v11;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v18 = sub_23C870D44();
    if (!v18)
    {
LABEL_14:

      v22 = 0;
LABEL_15:
      v25 = 0;
      v11 = v35;
      goto LABEL_17;
    }

    v19 = v18;
    v20 = [v18 eventMetadata];
    if (!v20)
    {
LABEL_13:

      goto LABEL_14;
    }

    v21 = v20;
    v22 = [v20 requestId];

    if (!v22)
    {

      goto LABEL_15;
    }

    sub_23C871AB4();

    v23 = sub_23C870B74();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_23C5FE4E4(v4);
      goto LABEL_13;
    }

    v34 = v23;
    v22 = sub_23C870B04();
    v32 = v24;
    v25 = v33;
    (*(v32 + 8))(v4, v34);

    v11 = v35;
  }

  else
  {
    v22 = 0;
    v25 = 0;
  }

LABEL_17:
  v54 = v13 & 1;
  if (v13)
  {
    v26 = 0xD000000000000015;
    if (v14)
    {
      if (v15)
      {
        v26 = 0xD000000000000016;
      }

      else
      {
        v26 = 0x20676E697373694DLL;
      }

      v27 = 0xEB00000000646E45;
      if (v15)
      {
        v27 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v15)
      {
        v26 = 0x20676E697373694DLL;
      }

      v27 = 0xED00007472617453;
      if (!v15)
      {
        v27 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  *&v37 = v11;
  BYTE8(v37) = v54;
  *&v38 = v26;
  *(&v38 + 1) = v27;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v40 = 0;
  BYTE8(v40) = 0;
  *&v41 = v22;
  *(&v41 + 1) = v25;
  v42 = xmmword_27E1FB9E0;
  v43 = v11;
  v44 = v54;
  v45 = v26;
  v46 = v27;
  v47 = v14;
  v48 = v15;
  v49 = 0;
  v50 = 0;
  v51 = v22;
  v52 = v25;
  v53 = xmmword_27E1FB9E0;

  sub_23C61FD0C(&v37, &v36);
  sub_23C61FD68(&v43);
  v28 = v40;
  a1[2] = v39;
  a1[3] = v28;
  v29 = v42;
  a1[4] = v41;
  a1[5] = v29;
  result = *&v37;
  v31 = v38;
  *a1 = v37;
  a1[1] = v31;
  return result;
}

uint64_t sub_23C61F640@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v50 - v4;
  v5 = EventGraph.uei.getter();
  v6 = MEMORY[0x277D84F90];
  v52 = a1;
  v55 = v1;
  if (!v5)
  {
    goto LABEL_29;
  }

  v63 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v7 = v5[2];
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v54 = v5;
    v6 = 0;
    a1 = (v7 & 0xC000000000000001);
    while (1)
    {
      if (a1)
      {
        v9 = MEMORY[0x23EED7610](v6, v7);
      }

      else
      {
        if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v5 = v9;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
      v11 = sub_23C870D44();
      if (v11)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        v12 = v63;
        a1 = v52;
        v6 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_17:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_20;
    }

LABEL_28:

    v5 = 0;
    goto LABEL_29;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EED7610](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);
      goto LABEL_90;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v5 = sub_23C870CF4();

LABEL_29:
  v15 = sub_23C620A78();
  if (v15)
  {
    v16 = v15;
    v17 = sub_23C870CF4();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_23C62A1DC(v5, v17);
  v20 = v19;

  v21 = EventGraph.uei.getter();
  v54 = v18;
  v53 = v20;
  if (v21)
  {
    v22 = v21;
    v63 = v6;
    swift_beginAccess();
    v23 = v22[2];
    if (v23 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v50 = v22;
      v25 = 0;
      a1 = (v23 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x23EED7610](v25, v23);
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v22 = v26;
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
        v28 = sub_23C870D44();
        if (v28)
        {

          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v25;
        if (v27 == j)
        {
          v12 = v63;
          a1 = v52;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_48:

    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_51:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*(v12 + 16))
          {
            __break(1u);
            return result;
          }

          v30 = *(v12 + 32);
          goto LABEL_54;
        }

LABEL_90:
        v30 = MEMORY[0x23EED7610](0, v12);
LABEL_54:
        v31 = v30;

        goto LABEL_61;
      }
    }

    else
    {
      result = *(v12 + 16);
      if (result)
      {
        goto LABEL_51;
      }
    }
  }

  v31 = 0;
LABEL_61:
  v32 = sub_23C620A78();
  v33 = sub_23C620A78();
  if (!v33)
  {
LABEL_69:
    v39 = 0;
    goto LABEL_70;
  }

  v34 = v33;
  sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
  v35 = sub_23C870D44();
  if (!v35)
  {
LABEL_68:

    goto LABEL_69;
  }

  v36 = v35;
  v37 = [v35 eventMetadata];
  if (!v37)
  {

    goto LABEL_68;
  }

  v38 = v37;
  v39 = [v37 requestId];

  if (v39)
  {
    v40 = v51;
    sub_23C871AB4();

    v41 = sub_23C870B74();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      sub_23C5FE4E4(v40);

      v39 = 0;
      v43 = 0;
    }

    else
    {
      v39 = sub_23C870B04();
      v43 = v49;
      (*(v42 + 8))(v40, v41);
    }

    a1 = v52;
    goto LABEL_71;
  }

LABEL_70:
  v43 = 0;
LABEL_71:
  v74 = v53 & 1;
  if (v53)
  {
    v44 = 0xD000000000000015;
    if (v31)
    {
      if (v32)
      {
        v44 = 0xD000000000000016;
      }

      else
      {
        v44 = 0x20676E697373694DLL;
      }

      v45 = 0xEB00000000646E45;
      if (v32)
      {
        v45 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v32)
      {
        v44 = 0x20676E697373694DLL;
      }

      v45 = 0xED00007472617453;
      if (!v32)
      {
        v45 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  *&v57 = v54;
  BYTE8(v57) = v74;
  *&v58 = v44;
  *(&v58 + 1) = v45;
  *&v59 = v31;
  *(&v59 + 1) = v32;
  *&v60 = 0;
  BYTE8(v60) = 0;
  *&v61 = v39;
  *(&v61 + 1) = v43;
  v62 = xmmword_27E1FB9F0;
  v63 = v54;
  v64 = v74;
  v65 = v44;
  v66 = v45;
  v67 = v31;
  v68 = v32;
  v69 = 0;
  v70 = 0;
  v71 = v39;
  v72 = v43;
  v73 = xmmword_27E1FB9F0;

  sub_23C61FD0C(&v57, &v56);
  result = sub_23C61FD68(&v63);
  v46 = v60;
  a1[2] = v59;
  a1[3] = v46;
  v47 = v62;
  a1[4] = v61;
  a1[5] = v47;
  v48 = v58;
  *a1 = v57;
  a1[1] = v48;
  return result;
}

unint64_t sub_23C61FDBC()
{
  result = qword_27E1FB840;
  if (!qword_27E1FB840)
  {
    sub_23C870DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB840);
  }

  return result;
}

id SiriTurn.TRPCandidateStarted.getter()
{
  v1 = sub_23C601E20();
  v2 = v0;
  v3 = sub_23C625220(v1, v2);

  if (v3 >> 62)
  {
    goto LABEL_10;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    v5 = sub_23C601E20();
    v6 = v2;
    v4 = sub_23C6255E4(v5, v6);

    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_23:

    return 0;
  }

  while ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EED7610](0, v3);
    swift_unknownObjectRelease();

LABEL_5:
    v3 = sub_23C601E20();
    v2 = v2;
    v4 = sub_23C625220(v3, v2);

    if (v4 >> 62)
    {
      if (!sub_23C871C34())
      {
        goto LABEL_23;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    if (!sub_23C871C34())
    {
      goto LABEL_11;
    }
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_22:
  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v8 = MEMORY[0x23EED7610](0, v4);
LABEL_16:
    v9 = v8;

    return v9;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    v8 = *(v4 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_23C61FFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v74 - v6;
  MEMORY[0x28223BE20](v5);
  v75 = &v74 - v8;
  v83 = v0;
  v9 = sub_23C601E20();
  v10 = v9;
  v88 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_115;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v12 = MEMORY[0x277D84F90];
    v81 = v7;
    v82 = v4;
    if (!i)
    {
      break;
    }

    v7 = 0;
    v4 = (v10 & 0xC000000000000001);
    while (1)
    {
      if (v4)
      {
        v13 = MEMORY[0x23EED7610](v7, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_110;
        }

        v13 = *(v10 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB850, 0x277D597E0);
      v16 = sub_23C870D44();
      if (v16)
      {

        sub_23C871D54();
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v7;
      if (v15 == i)
      {
        v4 = v82;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    ;
  }

LABEL_15:

  v88 = sub_23C5A3E90(v17);
  sub_23C62103C(&v88, sub_23C621AF4, sub_23C621300);

  v18 = v88;
  v80 = v88;
  if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
  {
    v19 = sub_23C871C34();
    v18 = v80;
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_117:

    return 0;
  }

  v19 = *(v88 + 16);
  if (!v19)
  {
    goto LABEL_117;
  }

LABEL_18:
  v20 = 0;
  v79 = v18 & 0xC000000000000001;
  v76 = v18 + 32;
  v77 = v19;
  while (1)
  {
    if (v79)
    {
      v21 = MEMORY[0x23EED7610](v20, v18);
      v22 = __OFADD__(v20, 1);
      v23 = v20 + 1;
      if (v22)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_114;
      }

      v21 = *(v76 + 8 * v20);
      v22 = __OFADD__(v20, 1);
      v23 = v20 + 1;
      if (v22)
      {
        goto LABEL_111;
      }
    }

    v86 = v23;
    v24 = v21;
    v25 = sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v84 = v24;
    v85 = v25;
    v26 = sub_23C870D44();
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = v26;
    v28 = [v26 eventMetadata];
    if (!v28 || (v29 = v28, v30 = [v28 requestId], v29, !v30))
    {

      goto LABEL_33;
    }

    v31 = v75;
    sub_23C871AB4();

    v32 = v31;
    v33 = sub_23C870B74();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {

      sub_23C5FE4E4(v32);
LABEL_33:
      v78 = 0;
      v87 = 0;
      goto LABEL_34;
    }

    v78 = sub_23C870B04();
    v87 = v42;

    (*(v34 + 8))(v32, v33);
LABEL_34:
    v35 = sub_23C601E20();
    v36 = v35;
    v88 = v12;
    if (v35 >> 62)
    {
      v37 = sub_23C871C34();
      if (v37)
      {
LABEL_36:
        v38 = 0;
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x23EED7610](v38, v36);
          }

          else
          {
            if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v39 = *(v36 + 8 * v38 + 32);
          }

          v40 = v39;
          v7 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
          v41 = sub_23C870D44();
          if (v41)
          {

            sub_23C871D54();
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }

          ++v38;
          if (v7 == v37)
          {
            v4 = v82;
            v12 = MEMORY[0x277D84F90];
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_36;
      }
    }

LABEL_49:

    v88 = sub_23C5A3E90(v43);
    sub_23C62103C(&v88, sub_23C62142C, sub_23C6211E4);
    v44 = v81;

    v10 = v88;
    if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
    {
      if (!sub_23C871C34())
      {
LABEL_64:

        goto LABEL_65;
      }
    }

    else if (!*(v88 + 16))
    {
      goto LABEL_64;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x23EED7610](0, v10);
    }

    else
    {
      if (!*(v10 + 16))
      {
        goto LABEL_112;
      }

      v45 = *(v10 + 32);
    }

    v46 = v45;

    v47 = sub_23C870D44();
    if (v47)
    {
      v48 = v47;
      v49 = [v47 eventMetadata];
      if (v49 && (v10 = v49, v50 = [v49 requestId], v10, v50))
      {
        sub_23C871AB4();

        v51 = sub_23C870B74();
        v7 = *(v51 - 8);
        if ((*(v7 + 48))(v44, 1, v51) == 1)
        {

          sub_23C5FE4E4(v44);
        }

        else
        {
          sub_23C870B04();
          v10 = v52;

          v53 = *(v7 + 8);
          v7 += 8;
          v53(v44, v51);
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_65:
    v20 = v86;
    if (v87)
    {
      break;
    }

LABEL_20:
    v18 = v80;
    if (v20 == v77)
    {
      goto LABEL_117;
    }
  }

  v54 = sub_23C601E20();
  v55 = v54;
  v88 = v12;
  if (v54 >> 62)
  {
    v56 = sub_23C871C34();
    if (!v56)
    {
      goto LABEL_81;
    }

LABEL_68:
    v57 = 0;
    while (1)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x23EED7610](v57, v55);
      }

      else
      {
        if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v58 = *(v55 + 8 * v57 + 32);
      }

      v59 = v58;
      v7 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v60 = sub_23C870D44();
      if (v60)
      {

        sub_23C871D54();
        v10 = *(v88 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v57;
      if (v7 == v56)
      {
        v4 = v82;
        v12 = MEMORY[0x277D84F90];
        v20 = v86;
        goto LABEL_81;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:

    return v84;
  }

  v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
    goto LABEL_68;
  }

LABEL_81:

  v88 = sub_23C5A3E90(v61);
  sub_23C62103C(&v88, sub_23C62142C, sub_23C6211E4);

  v62 = v88;
  if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
  {
    if (!sub_23C871C34())
    {
LABEL_99:

      goto LABEL_100;
    }
  }

  else if (!*(v88 + 16))
  {
    goto LABEL_99;
  }

  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x23EED7610](0, v62);
  }

  else
  {
    if (!*(v62 + 16))
    {
      goto LABEL_113;
    }

    v63 = *(v62 + 32);
  }

  v64 = v63;

  v65 = sub_23C870D44();
  if (!v65)
  {

    goto LABEL_100;
  }

  v10 = v65;
  v66 = [v65 eventMetadata];
  if (!v66 || (v67 = v66, v68 = [v66 requestId], v67, !v68))
  {

    goto LABEL_100;
  }

  sub_23C871AB4();

  v69 = sub_23C870B74();
  v7 = *(v69 - 8);
  if ((*(v7 + 48))(v4, 1, v69) == 1)
  {

    sub_23C5FE4E4(v4);
LABEL_100:

    goto LABEL_20;
  }

  v70 = sub_23C870B04();
  v72 = v71;

  (*(v7 + 8))(v4, v69);
  v7 = v87;
  if (v78 == v70 && v87 == v72)
  {
    goto LABEL_106;
  }

  v10 = sub_23C872014();

  if ((v10 & 1) == 0)
  {

    v20 = v86;
    goto LABEL_20;
  }

  return v84;
}