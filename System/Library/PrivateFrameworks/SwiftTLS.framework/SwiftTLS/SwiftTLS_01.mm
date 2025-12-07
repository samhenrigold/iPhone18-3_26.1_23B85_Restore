uint64_t sub_26C0C44FC(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v39);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x28223BE20](v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PSK(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A830, &qword_26C14A520);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = *(v15 + 56);
  sub_26C0C4A20(a1, &v38 - v16);
  sub_26C0C4A20(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C0C4A20(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26C0C4B4C(&v17[v18], v5, type metadata accessor for RawEPSK);
      *v57 = *v11;
      *&v57[8] = *(v11 + 8);
      *v54 = *v5;
      v19 = *v54;
      v40 = *(v5 + 8);
      *&v54[8] = v40;
      sub_26C0BBAA4(*v57, *&v57[8]);
      sub_26C0BBAA4(v19, v40);
      LOBYTE(v19) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v57, v54);
      sub_26C0BB9B0(*v54, *&v54[8]);
      sub_26C0BB9B0(*v57, *&v57[8]);
      if (v19)
      {
        v20 = MEMORY[0x26D69B8D0](&v11[*(v39 + 20)], &v5[*(v39 + 20)]);
        sub_26C0C4AEC(v5, type metadata accessor for RawEPSK);
        if (v20)
        {
          v21 = type metadata accessor for RawEPSK;
          v22 = v11;
LABEL_13:
          sub_26C0C4AEC(v22, v21);
          sub_26C0C4AEC(v17, type metadata accessor for PSK);
          return 1;
        }
      }

      else
      {
        sub_26C0C4AEC(v5, type metadata accessor for RawEPSK);
      }

      v36 = type metadata accessor for RawEPSK;
      v37 = v11;
LABEL_18:
      sub_26C0C4AEC(v37, v36);
      sub_26C0C4AEC(v17, type metadata accessor for PSK);
      return 0;
    }

    v23 = type metadata accessor for RawEPSK;
    v24 = v11;
  }

  else
  {
    sub_26C0C4A20(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26C0C4B4C(&v17[v18], v7, type metadata accessor for ImportedPSK);
      v25 = *(v13 + 1);
      v50[0] = *v13;
      v50[1] = v25;
      v27 = *v13;
      v26 = *(v13 + 1);
      v50[2] = *(v13 + 2);
      v51 = *(v13 + 12);
      v46 = v27;
      v28 = *(v13 + 2);
      v47 = v26;
      v48 = v28;
      v49 = *(v13 + 12);
      v29 = *v7;
      v30 = *(v7 + 1);
      v53 = *(v7 + 12);
      v31 = *(v7 + 2);
      v52[1] = *(v7 + 1);
      v52[2] = v31;
      v32 = *v7;
      v52[0] = v29;
      v42 = v32;
      v43 = v30;
      v44 = *(v7 + 2);
      v45 = *(v7 + 12);
      sub_26C0C4BB4(v50, v41);
      sub_26C0C4BB4(v52, v41);
      v33 = sub_26C0C42E0(&v46, &v42);
      *v54 = v42;
      *&v54[16] = v43;
      v55 = v44;
      v56 = v45;
      sub_26C0C4BEC(v54);
      *v57 = v46;
      *&v57[16] = v47;
      v58 = v48;
      v59 = v49;
      sub_26C0C4BEC(v57);
      if (v33)
      {
        v34 = MEMORY[0x26D69B8D0](&v13[*(v40 + 20)], &v7[*(v40 + 20)]);
        sub_26C0C4AEC(v7, type metadata accessor for ImportedPSK);
        if (v34)
        {
          v21 = type metadata accessor for ImportedPSK;
          v22 = v13;
          goto LABEL_13;
        }
      }

      else
      {
        sub_26C0C4AEC(v7, type metadata accessor for ImportedPSK);
      }

      v36 = type metadata accessor for ImportedPSK;
      v37 = v13;
      goto LABEL_18;
    }

    v23 = type metadata accessor for ImportedPSK;
    v24 = v13;
  }

  sub_26C0C4AEC(v24, v23);
  sub_26C0C4A84(v17);
  return 0;
}

uint64_t sub_26C0C4A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0C4A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A830, &qword_26C14A520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0C4AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0C4B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0C4C1C(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v23[0] = *a1;
  v23[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v23[2] = a1[2];
  v24 = *(a1 + 12);
  v19 = v6;
  v20 = v5;
  v21 = a1[2];
  v22 = *(a1 + 12);
  v7 = *a2;
  v8 = a2[1];
  v26 = *(a2 + 12);
  v9 = a2[2];
  v25[1] = a2[1];
  v25[2] = v9;
  v10 = *a2;
  v25[0] = v7;
  v15 = v10;
  v16 = v8;
  v17 = a2[2];
  v18 = *(a2 + 12);
  sub_26C0C4BB4(v23, v29);
  sub_26C0C4BB4(v25, v29);
  v11 = sub_26C0C42E0(&v19, &v15);
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  v28 = v18;
  sub_26C0C4BEC(v27);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v30 = v22;
  sub_26C0C4BEC(v29);
  if (v11)
  {
    v12 = type metadata accessor for ImportedPSK(0);
    v13 = MEMORY[0x26D69B8D0](a1 + *(v12 + 20), a2 + *(v12 + 20));
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_26C0C4D40(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_26C0BBAA4(v6, v7);
  sub_26C0BBAA4(v4, v5);
  v2 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v6, &v4);
  sub_26C0BB9B0(v4, v5);
  sub_26C0BB9B0(v6, v7);
  if (v2)
  {
    type metadata accessor for RawEPSK(0);

    JUMPOUT(0x26D69B8D0);
  }

  return 0;
}

unint64_t sub_26C0C4E10()
{
  result = qword_28047A848;
  if (!qword_28047A848)
  {
    sub_26C148E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A848);
  }

  return result;
}

unint64_t sub_26C0C4E68()
{
  result = qword_28047A850;
  if (!qword_28047A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A850);
  }

  return result;
}

uint64_t sub_26C0C4ED0()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047A858);
  __swift_project_value_buffer(v0, qword_28047A858);
  return sub_26C148A8C();
}

uint64_t SwiftOfferedEPSK.external_identity.getter()
{
  v1 = *v0;
  sub_26C0BBAA4(*v0, *(v0 + 8));
  return v1;
}

uint64_t SwiftOfferedEPSK.context.getter()
{
  v1 = *(v0 + 16);
  sub_26C0BB37C(v1, *(v0 + 24));
  return v1;
}

uint64_t SwiftOfferedEPSK.init(external_identity:context:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = a1[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v4 >> 32;
  }

  else
  {
    v8 = BYTE6(v5);
  }

  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = sub_26C14889C();
    v14 = v13;
    result = sub_26C0BB9B0(v4, v5);
    if (v10 >> 60 == 15)
    {
      v15 = 0;
      v16 = 0xF000000000000000;
LABEL_20:
      *a3 = v12;
      a3[1] = v14;
      a3[2] = v15;
      a3[3] = v16;
      return result;
    }

    v17 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v9 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = v9 >> 32;
    }

    else
    {
      v18 = BYTE6(v10);
    }

    if (v18 >= v11)
    {
      v15 = sub_26C14889C();
      v16 = v19;
      result = sub_26C0BB344(v9, v10);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerHandshakeStateMachine.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = xmmword_26C14A540;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v24 = 0;
  MEMORY[0x26D69C3B0](&v24, 8);
  v8 = v24;
  v24 = 0;
  MEMORY[0x26D69C3B0](&v24, 8);
  v9 = v24;
  v24 = 0;
  MEMORY[0x26D69C3B0](&v24, 8);
  v10 = v24;
  v24 = 0;
  MEMORY[0x26D69C3B0](&v24, 8);
  v11 = v24;
  v12 = type metadata accessor for ServerHandshakeStateMachine(0);
  v13 = (a2 + v12[8]);
  *v13 = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  sub_26C0CF4F4(a1, a2 + v12[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v14 = a2 + v12[6];
  sub_26C0CF4F4(a1, v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF4F4(v7, v14, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v15 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v14 + v15[6]) = 0;
  v16 = (v14 + v15[7]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v14 + v15[8]);
  *v17 = 0;
  v17[1] = 0;
  LOBYTE(v5) = v7[*(v5 + 44)];
  sub_26C0CF494(v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v14 + v15[9]) = v5;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v18 = sub_26C148A9C();
  __swift_project_value_buffer(v18, qword_28047A858);
  v19 = sub_26C148A7C();
  v20 = sub_26C148FEC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26C0B5000, v19, v20, "server state machine initialized", v21, 2u);
    MEMORY[0x26D69C3A0](v21, -1, -1);
  }

  return sub_26C0CF494(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v7 = v6;
  v90 = a3;
  v12 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  MEMORY[0x28223BE20](v12);
  v87 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImportedPSK(0);
  v92 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v97);
  v96 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for GeneralEPSK(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v86 - v22;
  v95 = type metadata accessor for EPSK(0);
  MEMORY[0x28223BE20](v95);
  v25 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a6 = xmmword_26C14A540;
  *(a6 + 16) = 0;
  v89 = a6;
  *(a6 + 24) = 0;
  v111 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  v88 = v12;
  v105 = v26;
  v91 = a4;
  v99 = a2;
  if (v26)
  {
    v27 = 0;
    v104 = *(a4 + *(v12 + 40));
    v103 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v94 = xmmword_26C14A550;
    v100 = a1;
    v101 = v23;
    v102 = v25;
    while (v27 < *(a1 + 16))
    {
      sub_26C0CF4F4(v103 + *(v23 + 72) * v27, v25, type metadata accessor for EPSK);
      v108 = v27;
      if (v104)
      {
        v107 = v7;
        if (qword_28047A638 != -1)
        {
          swift_once();
        }

        v28 = a2;
        v29 = sub_26C148A9C();
        __swift_project_value_buffer(v29, qword_28047A858);
        v30 = sub_26C148A7C();
        v31 = sub_26C148FFC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_26C0B5000, v30, v31, "raw epsk added to server", v32, 2u);
          MEMORY[0x26D69C3A0](v32, -1, -1);
        }

        v33 = *v25;
        v34 = v25[1];
        v35 = v25[2];
        v36 = *(v95 + 20);
        v37 = *(v97 + 20);
        v38 = sub_26C148BDC();
        v39 = v25;
        v40 = v96;
        (*(*(v38 - 8) + 16))(v96 + v37, v39 + v36, v38);
        *v40 = v33;
        v40[1] = v34;
        v40[2] = v35;
        sub_26C0CF42C(v40, v106, type metadata accessor for RawEPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v41 = v111;
        sub_26C0BBAA4(v33, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_26C0CE6E0(0, v41[2] + 1, 1, v41, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
        }

        a2 = v28;
        v43 = v41[2];
        v42 = v41[3];
        a1 = v100;
        v7 = v107;
        v25 = v102;
        if (v43 >= v42 >> 1)
        {
          v41 = sub_26C0CE6E0((v42 > 1), v43 + 1, 1, v41, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
        }

        sub_26C0CF494(v25, type metadata accessor for EPSK);
        v41[2] = v43 + 1;
        sub_26C0CF42C(v106, v41 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v43, type metadata accessor for GeneralEPSK);
        v111 = v41;
      }

      else
      {
        if (qword_28047A638 != -1)
        {
          swift_once();
        }

        v44 = sub_26C148A9C();
        __swift_project_value_buffer(v44, qword_28047A858);
        v45 = sub_26C148A7C();
        v46 = sub_26C148FFC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_26C0B5000, v45, v46, "server importing epsk", v47, 2u);
          MEMORY[0x26D69C3A0](v47, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
        inited = swift_initStackObject();
        *(inited + 16) = v94;
        if (qword_28047A630 != -1)
        {
          swift_once();
        }

        v49 = qword_280480308;
        *(inited + 32) = word_280480300;
        *(inited + 40) = v49;
        v50 = sub_26C0C24AC(inited, &v109);
        swift_setDeallocating();
        if (v7)
        {

          sub_26C0CEB1C(a2, v90);
          sub_26C0CF494(v91, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          sub_26C0CF494(v25, type metadata accessor for EPSK);

          v84 = v110;
          v85 = v86;
          *v86 = v109;
          *(v85 + 16) = v84;
          return sub_26C0BB344(*v89, *(v89 + 8));
        }

        v51 = *(v50 + 16);
        if (v51)
        {
          v107 = 0;
          *&v109 = MEMORY[0x277D84F90];
          sub_26C0CEB2C(0, v51, 0);
          v52 = v109;
          v53 = *(v92 + 80);
          v98 = v50;
          v54 = v50 + ((v53 + 32) & ~v53);
          v55 = *(v92 + 72);
          v56 = v93;
          do
          {
            sub_26C0CF4F4(v54, v56, type metadata accessor for ImportedPSK);
            sub_26C0CF42C(v56, v21, type metadata accessor for ImportedPSK);
            type metadata accessor for PSK(0);
            swift_storeEnumTagMultiPayload();
            *&v109 = v52;
            v58 = *(v52 + 16);
            v57 = *(v52 + 24);
            if (v58 >= v57 >> 1)
            {
              sub_26C0CEB2C((v57 > 1), v58 + 1, 1);
              v56 = v93;
              v52 = v109;
            }

            *(v52 + 16) = v58 + 1;
            sub_26C0CF42C(v21, v52 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v58, type metadata accessor for GeneralEPSK);
            v54 += v55;
            --v51;
          }

          while (v51);

          v7 = v107;
          a1 = v100;
        }

        else
        {

          v52 = MEMORY[0x277D84F90];
        }

        sub_26C0C6150(v52);
        v25 = v102;
        sub_26C0CF494(v102, type metadata accessor for EPSK);
        a2 = v99;
      }

      v27 = v108 + 1;
      v23 = v101;
      if (v108 + 1 == v105)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_30:

  if (qword_28047A638 != -1)
  {
LABEL_40:
    swift_once();
  }

  v59 = sub_26C148A9C();
  __swift_project_value_buffer(v59, qword_28047A858);
  v60 = v111;

  v61 = sub_26C148A7C();
  v62 = sub_26C148FFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = v60[2];

    _os_log_impl(&dword_26C0B5000, v61, v62, "server has %ld epsks", v63, 0xCu);
    MEMORY[0x26D69C3A0](v63, -1, -1);
  }

  else
  {
  }

  *&v109 = 0;
  MEMORY[0x26D69C3B0](&v109, 8);
  v64 = v109;
  *&v109 = 0;
  MEMORY[0x26D69C3B0](&v109, 8);
  v65 = v109;
  *&v109 = 0;
  MEMORY[0x26D69C3B0](&v109, 8);
  v66 = v109;
  *&v109 = 0;
  MEMORY[0x26D69C3B0](&v109, 8);
  v67 = v109;
  v68 = type metadata accessor for ServerHandshakeStateMachine(0);
  v69 = v89;
  v70 = (v89 + v68[8]);
  *v70 = v64;
  v70[1] = v65;
  v70[2] = v66;
  v70[3] = v67;
  v71 = v91;
  sub_26C0CF4F4(v91, v69 + v68[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v72 = v69 + v68[6];
  v73 = v87;
  sub_26C0CF4F4(v71, v87, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF4F4(v73, v72, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v74 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v72 + v74[6]) = v60;
  v75 = (v72 + v74[7]);
  v76 = v99;
  v77 = v90;
  *v75 = v99;
  v75[1] = v77;
  v78 = (v72 + v74[8]);
  *v78 = 0;
  v78[1] = 0;
  v79 = *(v73 + *(v88 + 36));
  sub_26C0CEB4C(v76, v77);
  sub_26C0CF494(v73, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v72 + v74[9]) = v79;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v80 = sub_26C148A7C();
  v81 = sub_26C148FEC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_26C0B5000, v80, v81, "server state machine initialized with epsks", v82, 2u);
    MEMORY[0x26D69C3A0](v82, -1, -1);

    sub_26C0CEB1C(v76, v77);
  }

  else
  {
    sub_26C0CEB1C(v76, v77);
  }

  return sub_26C0CF494(v71, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t sub_26C0C6040(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_26C148F6C();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_26C0CDAAC(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_26C14909C();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0C6150(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26C0CE6E0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for GeneralEPSK(0);
  if (v8 < v2)
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
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26C0C62A0(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_26C0CDAAC(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  result = sub_26C0CDAAC((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 3) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    v7[v26] = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_26C0C6450(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26C0CD87C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C0C6548(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_26C0CDAAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_26C14A540;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v7 = sub_26C148A9C();
  __swift_project_value_buffer(v7, qword_28047A858);

  v8 = sub_26C148A7C();
  v9 = sub_26C148FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1[2];

    _os_log_impl(&dword_26C0B5000, v8, v9, "server has %ld pake records", v10, 0xCu);
    MEMORY[0x26D69C3A0](v10, -1, -1);
  }

  else
  {
  }

  v32 = 0;
  MEMORY[0x26D69C3B0](&v32, 8);
  v11 = v32;
  v32 = 0;
  MEMORY[0x26D69C3B0](&v32, 8);
  v12 = v32;
  v32 = 0;
  MEMORY[0x26D69C3B0](&v32, 8);
  v13 = v32;
  v32 = 0;
  MEMORY[0x26D69C3B0](&v32, 8);
  v14 = v32;
  v15 = type metadata accessor for ServerHandshakeStateMachine(0);
  v16 = (a3 + v15[8]);
  *v16 = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v17 = v31;
  sub_26C0CF4F4(v31, a3 + v15[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v18 = a3 + v15[6];
  sub_26C0CF4F4(v17, v6, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v19 = sub_26C0ED6B8(a1);
  v21 = v20;
  sub_26C0CF4F4(v6, v18, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v22 = type metadata accessor for ServerHandshakeState.IdleState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v18 + v22[6]) = 0;
  v23 = (v18 + v22[7]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v18 + v22[8]);
  *v24 = v19;
  v24[1] = v21;
  LOBYTE(v19) = v6[*(v30 + 36)];
  sub_26C0CF494(v6, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v18 + v22[9]) = v19;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v25 = sub_26C148A7C();
  v26 = sub_26C148FEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26C0B5000, v25, v26, "server state machine initialized with pake records", v27, 2u);
    MEMORY[0x26D69C3A0](v27, -1, -1);
  }

  return sub_26C0CF494(v17, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

void ServerHandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (qword_28047A638 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = sub_26C148A9C();
  __swift_project_value_buffer(v9, qword_28047A858);
  v10 = sub_26C148A7C();
  v11 = sub_26C148FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_26C0B5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x26D69C3A0](v12, -1, -1);
  }

  sub_26C0E0B74(a1);
}

uint64_t sub_26C0C6B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v40 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v43 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v43);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v15 = sub_26C148A9C();
  __swift_project_value_buffer(v15, qword_28047A858);
  v16 = sub_26C148A7C();
  v17 = sub_26C148FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v12;
    v19 = a2;
    v20 = v14;
    v21 = a1;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26C0B5000, v16, v17, "server attempting step handshake", v18, 2u);
    v23 = v22;
    a1 = v21;
    v14 = v20;
    a2 = v19;
    v5 = v3;
    v12 = v39;
    MEMORY[0x26D69C3A0](v23, -1, -1);
  }

  v24 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v6 + *(v24 + 24), v14, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v33 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v33 - 8) + 56))(a2, 2, 2, v33);
LABEL_29:
        v34 = type metadata accessor for ServerHandshakeState;
LABEL_30:
        v30 = v34;
        return sub_26C0CF494(v14, v30);
      }

      sub_26C0C92D8(&v41, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v26 = "sending server certificate verify";
        v27 = sub_26C0EFF3C;
      }

      else
      {
        v26 = "sending server finished";
        v27 = sub_26C0F0228;
      }

      sub_26C0C9098(&v41, v26, v27, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_26C0C7BFC(&v41, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_26C0C70E0(&v41, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26C0C88F0(&v41, a2);
    if (!v5)
    {
      goto LABEL_29;
    }

LABEL_23:
    v28 = v42;
    *a1 = v41;
    *(a1 + 16) = v28;
    v29 = type metadata accessor for ServerHandshakeState;
    goto LABEL_24;
  }

  sub_26C0CF4F4(v14, v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v31 = v40;
  if (v12[*(v40 + 40)] == 1)
  {
    sub_26C0C9098(&v41, "sending server finished", sub_26C0F0228, a2);
    if (v5)
    {
      v32 = v12;
LABEL_37:
      sub_26C0CF494(v32, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v30 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v37 = v42;
      *a1 = v41;
      *(a1 + 16) = v37;
      return sub_26C0CF494(v14, v30);
    }

    v38 = v12;
    goto LABEL_41;
  }

  sub_26C0CF494(v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  sub_26C0CF4F4(v14, v10, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  if ((v10[*(v31 + 48) + 2] & 1) == 0)
  {
    sub_26C0C9098(&v41, "sending server finished", sub_26C0F0228, a2);
    if (v5)
    {
      v32 = v10;
      goto LABEL_37;
    }

    v38 = v10;
LABEL_41:
    sub_26C0CF494(v38, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v30 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    return sub_26C0CF494(v14, v30);
  }

  sub_26C0CF494(v10, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  sub_26C0C9098(&v41, "sending server certificate", sub_26C0EFC50, a2);
  if (!v5)
  {
    v34 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    goto LABEL_30;
  }

  v36 = v42;
  *a1 = v41;
  *(a1 + 16) = v36;
  v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_24:
  v30 = v29;
  return sub_26C0CF494(v14, v30);
}

void sub_26C0C70E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v57 - v5;
  v6 = sub_26C148BDC();
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v63);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ServerHandshakeState.IdleState(0);
  MEMORY[0x28223BE20](v65);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - v13;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v15 = sub_26C148A9C();
  v69 = __swift_project_value_buffer(v15, qword_28047A858);
  v16 = sub_26C148A7C();
  v17 = sub_26C148FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = v6;
    v20 = v10;
    v21 = v14;
    v22 = a2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26C0B5000, v16, v17, "server expecting client hello", v23, 2u);
    v24 = v23;
    a2 = v22;
    v14 = v21;
    v10 = v20;
    v6 = v19;
    a1 = v18;
    MEMORY[0x26D69C3A0](v24, -1, -1);
  }

  if (v70[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v89);
  }

  else
  {
    v25 = v105;
    sub_26C0DE9B4(v70, v70, &v87, &v89);
    if (v25)
    {
      v26 = v88[0];
      *a1 = v87;
      *(a1 + 16) = v26;
      return;
    }

    v105 = 0;
  }

  v85[6] = v95;
  v85[7] = v96;
  v85[2] = v91;
  v85[3] = v92;
  v85[4] = v93;
  v85[5] = v94;
  v85[0] = v89;
  v85[1] = v90;
  *&v88[80] = v95;
  *&v88[96] = v96;
  *&v88[16] = v91;
  *&v88[32] = v92;
  *&v88[48] = v93;
  *&v88[64] = v94;
  v86 = v97;
  v88[112] = v97;
  v87 = v89;
  *v88 = v90;
  if (sub_26C0CF284(&v87) != 1)
  {
    if (v88[112])
    {
      v77 = *&v88[72];
      v78[0] = *&v88[88];
      *(v78 + 9) = *&v88[97];
      v73 = *&v88[8];
      v74 = *&v88[24];
      v75 = *&v88[40];
      v76 = *&v88[56];
      sub_26C0BF530(&v88[8], &v79);
      sub_26C0CCF90(&v73);
      v83 = v77;
      v84[0] = v78[0];
      *(v84 + 9) = *(v78 + 9);
      v79 = v73;
      v80 = v74;
      v81 = v75;
      v82 = v76;
      sub_26C0BF5D0(&v79);
      *a1 = xmmword_26C14A560;
      *(a1 + 16) = 2;
      v73 = xmmword_26C14A560;
      LOBYTE(v74) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
      return;
    }

    v58 = a2;
    v102 = *&v88[72];
    v103 = *&v88[88];
    v104 = *&v88[104];
    v98 = *&v88[8];
    v99 = *&v88[24];
    v100 = *&v88[40];
    v101 = *&v88[56];
    v79 = *&v88[8];
    v80 = *&v88[24];
    v81 = *&v88[40];
    v82 = *&v88[56];
    *(v84 + 9) = *&v88[97];
    v83 = *&v88[72];
    v84[0] = *&v88[88];
    sub_26C0CF298(&v79, &v73);
    v31 = sub_26C148A7C();
    v32 = sub_26C148FEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26C0B5000, v31, v32, "server got client hello", v33, 2u);
      MEMORY[0x26D69C3A0](v33, -1, -1);
    }

    v60 = a1;

    v34 = v87;
    v35 = *v88;
    v59 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
    v36 = v67;
    sub_26C0CF4F4(v70 + v59, v67, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26C0BBAA4(v34, *(&v34 + 1));
      sub_26C0CF494(v36, type metadata accessor for ServerHandshakeState);
      __break(1u);
    }

    else
    {
      sub_26C0CF42C(v36, v10, type metadata accessor for ServerHandshakeState.IdleState);
      v73 = v34;
      *&v74 = v35;
      v69 = v34;
      sub_26C0BBAA4(v34, *(&v34 + 1));
      v67 = *(&v34 + 1);
      v37 = v66;
      v38 = v105;
      sub_26C0F0D8C(v10);
      if (v38)
      {
        sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0BF5D0(&v88[8]);
        sub_26C0CF494(v10, type metadata accessor for ServerHandshakeState.IdleState);
        sub_26C0BB9B0(v69, v67);
        v39 = v72;
        v40 = v60;
        *v60 = v71;
        *(v40 + 16) = v39;
        return;
      }

      v41 = v69;
      v105 = 0;
      v42 = v70;
      v43 = v59;
      sub_26C0CF494(v70 + v59, type metadata accessor for ServerHandshakeState);
      sub_26C0CF4F4(v37, v42 + v43, type metadata accessor for ServerHandshakeState.ClientHelloState);
      swift_storeEnumTagMultiPayload();
      if ((*(v37 + *(v63 + 80)) & 1) == 0)
      {
        sub_26C0BF5D0(&v88[8]);
        sub_26C0BB9B0(v41, v67);
        sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
        sub_26C0CF494(v10, type metadata accessor for ServerHandshakeState.IdleState);
        v48 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v48 - 1) + 56))(v14, 1, 1, v48);
LABEL_25:
        type metadata accessor for PartialHandshakeResult(0);
        v53 = (*(v48 - 1) + 48);
        v54 = (*v53)(v14, 1, v48);
        v55 = (v53 + 1);
        v56 = v58;
        if (v54 == 1)
        {
          sub_26C0CF5C4(v14, &qword_28047A938, &qword_26C14A7E0);
          (*v55)(v56, 1, 2, v48);
        }

        else
        {
          sub_26C0CF42C(v14, v58, type metadata accessor for PartialHandshakeResult);
          (*v55)(v56, 0, 2, v48);
        }

        return;
      }

      v70 = v10;
      v44 = v61;
      sub_26C0CD274(v61);
      v45 = v64;
      if ((*(v64 + 48))(v44, 1, v6) != 1)
      {
        sub_26C0BF5D0(&v88[8]);
        sub_26C0BB9B0(v41, v67);
        sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v46 = *(v45 + 32);
        v64 = v45 + 32;
        v47 = v62;
        v46(v62, v44, v6);
        v48 = type metadata accessor for PartialHandshakeResult(0);
        v69 = v6;
        v49 = v48[5];
        v50 = type metadata accessor for EncryptionLevel(0);
        v51 = *(*(v50 - 8) + 56);
        v51(&v14[v49], 1, 1, v50);
        v52 = v48[6];
        v46(&v14[v52], v47, v69);
        swift_storeEnumTagMultiPayload();
        v51(&v14[v52], 0, 1, v50);
        *v14 = xmmword_26C14A540;
        *(v14 + 2) = 0;
        *&v14[v48[7]] = xmmword_26C14A540;
        sub_26C0CF494(v70, type metadata accessor for ServerHandshakeState.IdleState);
        (*(*(v48 - 1) + 56))(v14, 0, 1, v48);
        goto LABEL_25;
      }
    }

    __break(1u);
    return;
  }

  v27 = sub_26C148A7C();
  v28 = sub_26C148FFC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26C0B5000, v27, v28, "incomplete message, waiting for more data", v29, 2u);
    MEMORY[0x26D69C3A0](v29, -1, -1);
  }

  v30 = type metadata accessor for PartialHandshakeResult(0);
  (*(*(v30 - 8) + 56))(a2, 2, 2, v30);
}

uint64_t sub_26C0C7BFC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v91 = a2;
  v112 = *MEMORY[0x277D85DE8];
  v90 = type metadata accessor for PartialHandshakeResult(0);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v101 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v89 - v4;
  v98 = type metadata accessor for PAKEServerState(0);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v92 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v89 - v9;
  v93 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v11 = *(v93 - 8);
  v12 = MEMORY[0x28223BE20](v93);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v89 - v15;
  v16 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v103);
  v104 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v20 = sub_26C148A9C();
  __swift_project_value_buffer(v20, qword_28047A858);
  v21 = sub_26C148A7C();
  v22 = sub_26C148FEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26C0B5000, v21, v22, "sending server hello", v23, 2u);
    MEMORY[0x26D69C3A0](v23, -1, -1);
  }

  v96 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v105 + *(v96 + 24), v18, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v104;
    sub_26C0CF42C(v18, v104, type metadata accessor for ServerHandshakeState.ClientHelloState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C8, &qword_26C14A770);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26C14A550;
    v106 = 1;
    *(v25 + 32) = 1027;
    *(v25 + 40) = 1;
    *(v25 + 112) = 32;
    v26 = v103;
    sub_26C0CF314(v24 + *(v103 + 44), v10, &qword_28047A960, "L6");
    if ((*(v11 + 48))(v10, 1, v93) == 1)
    {
      sub_26C0CF5C4(v10, &qword_28047A960, "L6");
    }

    else
    {
      v35 = v94;
      sub_26C0CF42C(v10, v94, type metadata accessor for GeneratedEphemeralPrivateKey);
      sub_26C0CF4F4(v35, v14, type metadata accessor for GeneratedEphemeralPrivateKey);
      v36 = qword_26C14A848[swift_getEnumCaseMultiPayload()];
      sub_26C0CF494(v14, type metadata accessor for GeneratedEphemeralPrivateKey);
      v37 = sub_26C0DB5E8();
      v39 = v37;
      v40 = 0;
      v41 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v40 = *(v37 + 16);
        }
      }

      else if (v41)
      {
        v40 = v37;
      }

      v45 = *(v25 + 16);
      v44 = *(v25 + 24);
      if (v45 >= v44 >> 1)
      {
        v87 = v38;
        v88 = sub_26C0CD87C((v44 > 1), v45 + 1, 1, v25);
        v38 = v87;
        v25 = v88;
      }

      v46 = v38 | 0x1000000000000000;
      sub_26C0CF494(v94, type metadata accessor for GeneratedEphemeralPrivateKey);
      *(v25 + 16) = v45 + 1;
      v47 = v25 + 88 * v45;
      *(v47 + 32) = v36;
      *(v47 + 40) = v39;
      *(v47 + 48) = v46;
      *(v47 + 56) = v40;
      *(v47 + 112) = 64;
      v24 = v104;
      v26 = v103;
    }

    v48 = v95;
    sub_26C0CF314(v24 + v26[18], v95, &qword_28047A890, &qword_26C14A5C0);
    v49 = type metadata accessor for GeneralEPSK(0);
    v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
    sub_26C0CF5C4(v48, &qword_28047A890, &qword_26C14A5C0);
    if (v50 != 1)
    {
      v51 = *(v24 + v26[19]);
      v53 = *(v25 + 16);
      v52 = *(v25 + 24);
      if (v53 >= v52 >> 1)
      {
        v25 = sub_26C0CD87C((v52 > 1), v53 + 1, 1, v25);
      }

      v110[0] = 1;
      *(v25 + 16) = v53 + 1;
      v54 = v25 + 88 * v53;
      *(v54 + 32) = v51;
      *(v54 + 40) = 0;
      *(v54 + 48) = v110[0];
      *(v54 + 112) = -96;
    }

    v55 = v105;
    v56 = v99;
    sub_26C0CF314(v24 + v26[21], v99, &qword_28047A888, &qword_26C14A5B8);
    v57 = v98;
    if ((*(v97 + 48))(v56, 1, v98) == 1)
    {
      sub_26C0CF5C4(v56, &qword_28047A888, &qword_26C14A5B8);
    }

    else
    {
      v58 = v92;
      sub_26C0CF42C(v56, v92, type metadata accessor for PAKEServerState);
      v59 = (v58 + *(v57 + 24));
      v60 = v59[2];
      if (v60 >> 60 == 15)
      {
        sub_26C0CF494(v58, type metadata accessor for PAKEServerState);
        v55 = v105;
      }

      else
      {
        v61 = *v59;
        v62 = v59[1];
        v63 = v59[3];
        v64 = v59[4];
        v65 = v59[5];
        v66 = v59[6];
        v67 = v59[7];
        v68 = v59[8];
        v69 = v59[9];
        v99 = v61;
        *v110 = v61;
        *&v110[8] = v62;
        *&v110[16] = v60;
        *&v110[24] = v63;
        *&v110[32] = v64;
        *&v110[40] = v65;
        v98 = v65;
        v97 = v66;
        *&v110[48] = v66;
        *&v110[56] = v67;
        v95 = v67;
        v94 = v68;
        *&v110[64] = v68;
        *&v110[72] = v69;
        v93 = v69;
        sub_26C0CF3D0(v110, v107);
        v71 = *(v25 + 16);
        v70 = *(v25 + 24);
        if (v71 >= v70 >> 1)
        {
          v25 = sub_26C0CD87C((v70 > 1), v71 + 1, 1, v25);
        }

        LOBYTE(v107[0]) = 1;
        sub_26C0CF494(v92, type metadata accessor for PAKEServerState);
        *(v25 + 16) = v71 + 1;
        v72 = v25 + 88 * v71;
        *(v72 + 32) = v99;
        *(v72 + 40) = v62;
        *(v72 + 48) = v60;
        *(v72 + 56) = v63;
        v73 = v98;
        *(v72 + 64) = v64;
        *(v72 + 72) = v73;
        v74 = v95;
        *(v72 + 80) = v97;
        *(v72 + 88) = v74;
        v75 = v93;
        *(v72 + 96) = v94;
        *(v72 + 104) = v75;
        *(v72 + 112) = -63;
        v55 = v105;
        v24 = v104;
        v26 = v103;
      }
    }

    v76 = (v55 + *(v96 + 32));
    v77 = v24 + v26[14];
    v78 = v26[6];
    v79 = v76[1];
    *&v110[8] = *v76;
    *&v110[24] = v79;
    v80 = *(v77 + 16);
    *&v110[40] = *v77;
    v81 = *(v77 + 32);
    LOWORD(v77) = *(v24 + v78);
    *v110 = 771;
    *&v110[56] = v80;
    *&v110[72] = v81;
    LOWORD(v111) = v77;
    BYTE2(v111) = 0;
    *(&v111 + 1) = v25;
    v82 = v101;
    v83 = v100;
    sub_26C0EF0D8(v110, &v108, v101);
    v107[2] = *&v110[32];
    v107[3] = *&v110[48];
    v107[4] = *&v110[64];
    v107[5] = v111;
    v107[0] = *v110;
    v107[1] = *&v110[16];
    sub_26C0CF37C(v107);
    if (v83)
    {
      result = sub_26C0CF494(v24, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v84 = v109;
      v85 = v102;
      *v102 = v108;
      *(v85 + 16) = v84;
    }

    else
    {
      sub_26C0CF494(v24, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v86 = v91;
      sub_26C0CF42C(v82, v91, type metadata accessor for PartialHandshakeResult);
      return (*(v89 + 56))(v86, 0, 2, v90);
    }
  }

  else
  {
    sub_26C0CF494(v18, type metadata accessor for ServerHandshakeState);
    v27 = ServerHandshakeStateMachine.stateDescription.getter();
    v29 = v28;
    v30 = sub_26C148A7C();
    v31 = sub_26C14900C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v110 = v33;
      *v32 = 136315138;
      v34 = sub_26C0E5DE8(v27, v29, v110);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_26C0B5000, v30, v31, "invalid state for handleReadClientHello: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D69C3A0](v33, -1, -1);
      MEMORY[0x26D69C3A0](v32, -1, -1);
    }

    else
    {
    }

    v42 = v102;
    *v102 = xmmword_26C14A570;
    *(v42 + 16) = 2;
    *v110 = xmmword_26C14A570;
    v110[16] = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0C88F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = v2;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v72 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v72);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v12 = sub_26C148A9C();
  __swift_project_value_buffer(v12, qword_28047A858);
  v13 = sub_26C148A7C();
  v14 = sub_26C148FEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v11;
    v16 = v9;
    v17 = a1;
    v18 = v4;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26C0B5000, v13, v14, "sending server EE", v19, 2u);
    v20 = v19;
    v4 = v18;
    a1 = v17;
    v9 = v16;
    v11 = v15;
    MEMORY[0x26D69C3A0](v20, -1, -1);
  }

  v21 = type metadata accessor for ServerHandshakeStateMachine(0);
  v22 = *(v21 + 24);
  sub_26C0CF4F4(v4 + v22, v8, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C0CF42C(v8, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
    if (v11[v9[12] + 2] == 1)
    {
      v23 = sub_26C0CD87C(0, 1, 1, MEMORY[0x277D84F90]);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v23 = sub_26C0CD87C((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v26;
      v27 = &v23[88 * v25];
      *(v27 + 4) = &unk_287CC9A98;
      v27[112] = 16;
      v28 = &v11[v9[14]];
      if ((v28[1] & 1) == 0)
      {
        *&v72 = v22;
        v29 = *v28;
        v30 = *(v23 + 3);
        v31 = v25 + 2;
        if (v31 > (v30 >> 1))
        {
          v23 = sub_26C0CD87C((v30 > 1), v31, 1, v23);
        }

        LOBYTE(v73) = 1;
        *(v23 + 2) = v31;
        v32 = &v23[88 * v26];
        *(v32 + 4) = v29;
        v32[40] = v73;
        v32[112] = 112;
        v22 = v72;
      }
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v42 = &v11[v9[8]];
    v43 = *(v42 + 1);
    if (v43)
    {
      *&v72 = v22;
      v67 = v4;
      v44 = *v42;

      v45 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_26C0CD87C(0, *(v23 + 2) + 1, 1, v23);
      }

      v47 = *(v23 + 2);
      v46 = *(v23 + 3);
      if (v47 >= v46 >> 1)
      {
        v23 = sub_26C0CD87C((v46 > 1), v47 + 1, 1, v23);
      }

      LOBYTE(v73) = 1;
      *(v23 + 2) = v47 + 1;
      v48 = &v23[88 * v47];
      *(v48 + 4) = v44;
      *(v48 + 5) = v43;
      v48[48] = v73;
      v48[112] = 48;
      a1 = v45;
      v4 = v67;
    }

    v49 = v4 + *(v21 + 36);
    v50 = (v49 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24));
    v51 = v50[1];
    if (v51 >> 60 != 15)
    {
      v72 = *(v50 + 1);
      v52 = *v50;
      sub_26C0BBAA4(*v50, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_26C0CD87C(0, *(v23 + 2) + 1, 1, v23);
      }

      v54 = *(v23 + 2);
      v53 = *(v23 + 3);
      v55 = v72;
      if (v54 >= v53 >> 1)
      {
        v65 = sub_26C0CD87C((v53 > 1), v54 + 1, 1, v23);
        v55 = v72;
        v23 = v65;
      }

      *(v23 + 2) = v54 + 1;
      v56 = &v23[88 * v54];
      *(v56 + 4) = v52;
      *(v56 + 40) = v55;
      v56[112] = 0x80;
    }

    if (v11[v9[11]] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_26C0CD87C(0, *(v23 + 2) + 1, 1, v23);
      }

      v58 = *(v23 + 2);
      v57 = *(v23 + 3);
      if (v58 >= v57 >> 1)
      {
        v23 = sub_26C0CD87C((v57 > 1), v58 + 1, 1, v23);
      }

      LOBYTE(v73) = 1;
      *(v23 + 2) = v58 + 1;
      v59 = &v23[88 * v58];
      *(v59 + 8) = 0;
      v59[36] = v73;
      v59[112] = 80;
    }

    v60 = v75;
    v61 = v71;
    sub_26C0EF6DC(v23, &v73, v75);
    sub_26C0CF494(v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
    if (v61)
    {

      v63 = v74;
      *a1 = v73;
      *(a1 + 16) = v63;
    }

    else
    {

      v64 = v70;
      sub_26C0CF42C(v60, v70, type metadata accessor for PartialHandshakeResult);
      return (*(v68 + 56))(v64, 0, 2, v69);
    }
  }

  else
  {
    v33 = a1;
    sub_26C0CF494(v8, type metadata accessor for ServerHandshakeState);
    v34 = ServerHandshakeStateMachine.stateDescription.getter();
    v36 = v35;
    v37 = sub_26C148A7C();
    v38 = sub_26C14900C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v73 = v40;
      *v39 = 136315138;
      v41 = sub_26C0E5DE8(v34, v36, &v73);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_26C0B5000, v37, v38, "invalid state for sendServerEncryptedExtensions: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D69C3A0](v40, -1, -1);
      MEMORY[0x26D69C3A0](v39, -1, -1);
    }

    else
    {
    }

    *v33 = xmmword_26C14A570;
    *(v33 + 16) = 2;
    v73 = xmmword_26C14A570;
    v74 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0C9098@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v7 = v4;
  v9 = type metadata accessor for PartialHandshakeResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v13 = sub_26C148A9C();
  __swift_project_value_buffer(v13, qword_28047A858);
  v14 = sub_26C148A7C();
  v15 = sub_26C148FEC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v9;
    v17 = a3;
    v18 = v10;
    v19 = a4;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26C0B5000, v14, v15, v25, v16, 2u);
    v21 = v20;
    a4 = v19;
    v10 = v18;
    a3 = v17;
    v7 = v4;
    v9 = v24;
    MEMORY[0x26D69C3A0](v21, -1, -1);
  }

  type metadata accessor for ServerHandshakeStateMachine(0);
  result = a3(&v26);
  if (v7)
  {
    v23 = v27;
    *a1 = v26;
    *(a1 + 16) = v23;
  }

  else
  {
    sub_26C0CF42C(v12, a4, type metadata accessor for PartialHandshakeResult);
    return (*(v10 + 56))(a4, 0, 2, v9);
  }

  return result;
}

void sub_26C0C92D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_26C148BDC();
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PartialHandshakeResult(0);
  v70 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v16 = sub_26C148A9C();
  v71 = __swift_project_value_buffer(v16, qword_28047A858);
  v17 = sub_26C148A7C();
  v18 = sub_26C148FFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v62 = v6;
    v20 = v10;
    v21 = v7;
    v22 = a1;
    v23 = v14;
    v24 = a2;
    v25 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26C0B5000, v17, v18, "server expecting client finished", v19, 2u);
    v26 = v25;
    a2 = v24;
    v14 = v23;
    a1 = v22;
    v7 = v21;
    v10 = v20;
    v6 = v62;
    MEMORY[0x26D69C3A0](v26, -1, -1);
  }

  if (v72[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v89);
  }

  else
  {
    v27 = v98;
    sub_26C0DE9B4(v72, v72, &v87, &v89);
    if (v27)
    {
      v28 = v88[0];
      v29 = v87;
LABEL_21:
      *a1 = v29;
      *(a1 + 16) = v28;
      return;
    }

    v98 = 0;
  }

  v85[6] = v95;
  v85[7] = v96;
  v85[2] = v91;
  v85[3] = v92;
  v85[4] = v93;
  v85[5] = v94;
  v85[0] = v89;
  v85[1] = v90;
  *&v88[80] = v95;
  *&v88[96] = v96;
  *&v88[16] = v91;
  *&v88[32] = v92;
  *&v88[48] = v93;
  *&v88[64] = v94;
  v86 = v97;
  v88[112] = v97;
  v87 = v89;
  *v88 = v90;
  if (sub_26C0CF284(&v87) == 1)
  {
    v30 = sub_26C148A7C();
    v31 = sub_26C148FFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26C0B5000, v30, v31, "incomplete message, waiting for more data", v32, 2u);
      MEMORY[0x26D69C3A0](v32, -1, -1);
    }

    v33 = 2;
LABEL_14:
    (*(v70 + 56))(a2, v33, 2, v14);
    return;
  }

  if (v88[112] == 6)
  {
    v57 = a2;
    v59 = *&v88[24];
    v60 = *&v88[16];
    v61 = *&v88[8];
    v62 = v10;
    sub_26C0BBAA4(*&v88[8], *&v88[16]);
    v34 = sub_26C148A7C();
    v35 = sub_26C148FEC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26C0B5000, v34, v35, "server got message expecting finished", v36, 2u);
      MEMORY[0x26D69C3A0](v36, -1, -1);
    }

    v37 = v87;
    v38 = *v88;
    v58 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
    v39 = v67;
    sub_26C0CF4F4(v72 + v58, v67, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v40 = v39;
      v41 = v66;
      sub_26C0CF42C(v40, v66, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      *&v77 = v61;
      *(&v77 + 1) = v60;
      *&v78 = v59;
      v75 = v37;
      v76 = v38;
      sub_26C0BF530(&v88[8], v83);
      sub_26C0BBAA4(v37, *(&v37 + 1));
      v42 = v62;
      v43 = v98;
      sub_26C0F7398(v41, &v77, &v75, &v73, v62);
      if (v43)
      {
        sub_26C0BF5D0(&v88[8]);
        sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v41, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        sub_26C0BB9B0(v37, *(&v37 + 1));
        sub_26C0BF5D0(&v88[8]);
        v28 = v74;
        v29 = v73;
        goto LABEL_21;
      }

      v67 = *(&v37 + 1);
      v98 = 0;
      v44 = v58;
      v45 = v72;
      sub_26C0CF494(v72 + v58, type metadata accessor for ServerHandshakeState);
      sub_26C0CF4F4(v42, v45 + v44, type metadata accessor for ServerHandshakeState.ReadyState);
      swift_storeEnumTagMultiPayload();
      sub_26C0CD4A0(v6);
      if ((*(v69 + 48))(v6, 1, v7) != 1)
      {
        sub_26C0BB9B0(v37, v67);
        sub_26C0BF5D0(&v88[8]);
        sub_26C0CF494(v42, type metadata accessor for ServerHandshakeState.ReadyState);
        sub_26C0CF494(v41, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v46 = *(v69 + 32);
        v69 += 32;
        v72 = v46;
        v47 = v63;
        (v46)(v63, v6, v7);
        v48 = *(v14 + 20);
        v49 = type metadata accessor for EncryptionLevel(0);
        v50 = v14;
        v51 = *(*(v49 - 8) + 56);
        v52 = v64;
        v51(&v64[v48], 1, 1, v49);
        v53 = *(v50 + 24);
        (v72)(v52 + v53, v47, v7);
        swift_storeEnumTagMultiPayload();
        v51((v52 + v53), 0, 1, v49);
        v14 = v50;
        *v52 = xmmword_26C14A540;
        *(v52 + 16) = 0;
        *(v52 + *(v50 + 28)) = xmmword_26C14A540;
        v54 = sub_26C148A7C();
        v55 = sub_26C14901C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_26C0B5000, v54, v55, "server completed TLS handshake", v56, 2u);
          MEMORY[0x26D69C3A0](v56, -1, -1);
        }

        sub_26C0BF5D0(&v88[8]);

        sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
        a2 = v57;
        sub_26C0CF42C(v52, v57, type metadata accessor for PartialHandshakeResult);
        v33 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      sub_26C0BF530(&v88[8], v83);
      sub_26C0BBAA4(v37, *(&v37 + 1));
      sub_26C0CF494(v39, type metadata accessor for ServerHandshakeState);
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v81 = *&v88[72];
    v82[0] = *&v88[88];
    *(v82 + 9) = *&v88[97];
    v77 = *&v88[8];
    v78 = *&v88[24];
    v79 = *&v88[40];
    v80 = *&v88[56];
    sub_26C0BF530(&v88[8], v83);
    sub_26C0CCF90(&v77);
    v83[4] = v81;
    v84[0] = v82[0];
    *(v84 + 9) = *(v82 + 9);
    v83[0] = v77;
    v83[1] = v78;
    v83[2] = v79;
    v83[3] = v80;
    sub_26C0BF5D0(v83);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v77 = xmmword_26C14A560;
    LOBYTE(v78) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0CF5C4(v85, &qword_28047A940, &qword_26C14A7E8);
  }
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = v2;
  v31 = a2;
  v4 = type metadata accessor for ServerHandshakeStateMachine.StepResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (qword_28047A638 != -1)
    {
      swift_once();
    }

    v7 = sub_26C148A9C();
    __swift_project_value_buffer(v7, qword_28047A858);
    v8 = sub_26C148A7C();
    v9 = sub_26C148FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26C0B5000, v8, v9, "server attempting process step", v10, 2u);
      MEMORY[0x26D69C3A0](v10, -1, -1);
    }

    sub_26C0C6B10(&v28, v6);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v11 = type metadata accessor for PartialHandshakeResult(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v6, 2, v11);
    if (v13 != 1)
    {
      if (v13)
      {
        v15 = 1;
        v14 = v31;
      }

      else
      {
        v14 = v31;
        sub_26C0CF42C(v6, v31, type metadata accessor for PartialHandshakeResult);
        v15 = 0;
      }

      return (*(v12 + 56))(v14, v15, 1, v11);
    }
  }

  v16 = v28;
  v17 = v29;
  v18 = v30;
  sub_26C0CF018(v28, v29, v30);
  v19 = sub_26C148A7C();
  v20 = sub_26C14900C();
  sub_26C0CF030(v16, v17, v18);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v17;
    *(v23 + 16) = v18;
    sub_26C0CF018(v16, v17, v18);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_26C0B5000, v19, v20, "processing message failed due to error %@", v21, 0xCu);
    sub_26C0CF5C4(v22, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v22, -1, -1);
    MEMORY[0x26D69C3A0](v21, -1, -1);
  }

  v25 = v27;
  *v27 = v16;
  v25[1] = v17;
  *(v25 + 16) = v18;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t ServerHandshakeStateMachine.peerQUICTransportParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v47 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v42);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v48 + *(v19 + 24), v18, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = v45;
        sub_26C0CF42C(v18, v45, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v34 = &v15[*(v44 + 24)];
        v24 = *v34;
        v25 = v34[1];
        v26 = v34[2];
        sub_26C0BB37C(*v34, v25);
        v35 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v15 = v47;
        sub_26C0CF42C(v18, v47, type metadata accessor for ServerHandshakeState.ReadyState);
        v40 = &v15[*(ready + 24)];
        v24 = *v40;
        v25 = v40[1];
        v26 = v40[2];
        sub_26C0BB37C(*v40, v25);
        v35 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v18, v6, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v23 = &v6[*(v4 + 28)];
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        sub_26C0BB37C(*v23, v25);
        v27 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v28 = v6;
LABEL_18:
        result = sub_26C0CF494(v28, v27);
        v41 = v49;
        *v49 = v24;
        v41[1] = v25;
        v41[2] = v26;
        return result;
      }

      v15 = v43;
      sub_26C0CF42C(v18, v43, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v37 = &v15[*(v42 + 24)];
      v24 = *v37;
      v25 = v37[1];
      v26 = v37[2];
      sub_26C0BB37C(*v37, v25);
      v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

LABEL_17:
    v27 = v35;
    v28 = v15;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = v49;
      *v49 = xmmword_26C14A540;
      v21[2] = 0;
      return sub_26C0CF494(v18, type metadata accessor for ServerHandshakeState);
    }

    sub_26C0CF42C(v18, v15, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v36 = &v15[*(v13 + 60)];
    v24 = *v36;
    v25 = v36[1];
    v26 = v36[2];
    sub_26C0BB37C(*v36, v25);
    v35 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26C0CF42C(v18, v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v29 = &v12[*(v10 + 28)];
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    sub_26C0BB37C(*v29, v31);
    result = sub_26C0CF494(v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v33 = v49;
    *v49 = v30;
  }

  else
  {
    sub_26C0CF42C(v18, v9, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v38 = &v9[*(v7 + 28)];
    v39 = *v38;
    v31 = v38[1];
    v32 = v38[2];
    sub_26C0BB37C(*v38, v31);
    result = sub_26C0CF494(v9, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v33 = v49;
    *v49 = v39;
  }

  v33[1] = v31;
  v33[2] = v32;
  return result;
}

uint64_t ServerHandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v30 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = *&v5[*(v26 + 36)];
        v22 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v23 = v5;
      }

      else
      {
        sub_26C0CF42C(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = *&v3[*(v27 + 32)];
        v22 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v23 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      sub_26C0CF42C(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = *&v8[*(v29 + 32)];
      v24 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      sub_26C0CF42C(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = *&v8[*(ready + 32)];
      v24 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = *&v11[*(v9 + 36)];
      v22 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v23 = v11;
LABEL_17:
      sub_26C0CF494(v23, v22);
      v21 = 0;
      return v20 | (v21 << 16);
    }

    sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = *&v8[*(v6 + 36)];
    v24 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v22 = v24;
    v23 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = *&v14[*(v12 + 24)];
    v22 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v23 = v14;
    goto LABEL_17;
  }

  sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
  v20 = 0;
  v21 = 1;
  return v20 | (v21 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedPAKE.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v33 = &v31 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v32);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v35 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_26C0CF42C(v17, v2, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v26 = &v2[*(v32 + 40)];
      v21 = *v26;
      v22 = v26[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v25 = v2;
    }

    else
    {
      v28 = v33;
      sub_26C0CF42C(v17, v33, type metadata accessor for ServerHandshakeState.ReadyState);
      v29 = v28 + *(ready + 40);
      v21 = *v29;
      v22 = *(v29 + 2);
      v24 = type metadata accessor for ServerHandshakeState.ReadyState;
      v25 = v28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
        sub_26C0CF314(&v14[*(v12 + 84)], v11, &qword_28047A888, &qword_26C14A5B8);
        sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v20 = type metadata accessor for PAKEServerState(0);
        if ((*(*(v20 - 8) + 48))(v11, 1, v20) != 1)
        {
          v21 = *&v11[*(v20 + 32)];
          sub_26C0CF494(v11, type metadata accessor for PAKEServerState);
          v22 = 0;
          return v21 | (v22 << 16);
        }

        sub_26C0CF5C4(v11, &qword_28047A888, &qword_26C14A5B8);
        goto LABEL_8;
      }

LABEL_7:
      sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
LABEL_8:
      v21 = 0;
      v22 = 1;
      return v21 | (v22 << 16);
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v23 = &v8[*(v6 + 48)];
      v21 = *v23;
      v22 = v23[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v25 = v8;
    }

    else
    {
      sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v27 = &v5[*(v3 + 48)];
      v21 = *v27;
      v22 = v27[2];
      v24 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v25 = v5;
    }
  }

  sub_26C0CF494(v25, v24);
  if (v22)
  {
    v21 = 0;
  }

  return v21 | (v22 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v27 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v29 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_26C0CF42C(v17, v2, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v21 = v2[*(v26 + 48)];
      v22 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v23 = v2;
    }

    else
    {
      v24 = v27;
      sub_26C0CF42C(v17, v27, type metadata accessor for ServerHandshakeState.ReadyState);
      v21 = *(v24 + *(ready + 48));
      v22 = type metadata accessor for ServerHandshakeState.ReadyState;
      v23 = v24;
    }

LABEL_13:
    sub_26C0CF494(v23, v22);
    return v21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v21 = v8[*(v6 + 40)];
      v22 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v23 = v8;
    }

    else
    {
      sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v21 = v5[*(v3 + 40)];
      v22 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v23 = v5;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
    return 0;
  }

  sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
  sub_26C0CF314(&v14[*(v12 + 72)], v11, &qword_28047A890, &qword_26C14A5C0);
  sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v20 = type metadata accessor for GeneralEPSK(0);
  v21 = (*(*(v20 - 8) + 48))(v11, 1, v20) != 1;
  sub_26C0CF5C4(v11, &qword_28047A890, &qword_26C14A5C0);
  return v21;
}

uint64_t ServerHandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 48)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        sub_26C0CF42C(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 44)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      sub_26C0CF42C(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 52)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      sub_26C0CF42C(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 52)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 60)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      sub_26C0CF494(v22, v21);
      return v20;
    }

    sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 56)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 68)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 52)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        sub_26C0CF42C(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 48)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      sub_26C0CF42C(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 60)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      sub_26C0CF42C(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 56)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 68)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      sub_26C0CF494(v22, v21);
      return v20;
    }

    sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 64)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 92)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v42 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v43 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v14 = v40;
        sub_26C0CF42C(v17, v40, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v24 = &v14[*(v39 + 44)];
        if (v24[2])
        {
          v25 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
LABEL_23:
          v20 = v25;
          v21 = v14;
          goto LABEL_24;
        }

        v49 = *v24;
        v31 = NamedGroup.metadataDescription.getter();
        v35 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v14 = v42;
        sub_26C0CF42C(v17, v42, type metadata accessor for ServerHandshakeState.ReadyState);
        v29 = &v14[*(ready + 44)];
        if (v29[2])
        {
          v25 = type metadata accessor for ServerHandshakeState.ReadyState;
          goto LABEL_23;
        }

        v50 = *v29;
        v31 = NamedGroup.metadataDescription.getter();
        v35 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v22 = &v5[*(v3 + 44)];
        if (v22[2])
        {
          v20 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
          v21 = v5;
          goto LABEL_24;
        }

        v47 = *v22;
        v31 = NamedGroup.metadataDescription.getter();
        v32 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v33 = v5;
        goto LABEL_33;
      }

      v14 = v38;
      sub_26C0CF42C(v17, v38, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v27 = &v14[*(v37 + 40)];
      if (v27[2])
      {
        v25 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        goto LABEL_23;
      }

      v48 = *v27;
      v31 = NamedGroup.metadataDescription.getter();
      v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for ServerHandshakeState;
      v21 = v17;
LABEL_24:
      sub_26C0CF494(v21, v20);
      return 0;
    }

    sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v26 = &v14[*(v12 + 28)];
    if (v26[2])
    {
      v25 = type metadata accessor for ServerHandshakeState.ClientHelloState;
      goto LABEL_23;
    }

    v44 = *v26;
    v31 = NamedGroup.metadataDescription.getter();
    v35 = type metadata accessor for ServerHandshakeState.ClientHelloState;
LABEL_32:
    v32 = v35;
    v33 = v14;
LABEL_33:
    sub_26C0CF494(v33, v32);
    return v31;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = &v8[*(v6 + 52)];
    if (v28[2])
    {
      v20 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v21 = v8;
      goto LABEL_24;
    }

    v46 = *v28;
    v31 = NamedGroup.metadataDescription.getter();
    v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    v33 = v8;
    goto LABEL_33;
  }

  sub_26C0CF42C(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v23 = &v11[*(v9 + 52)];
  if (v23[2])
  {
    v20 = type metadata accessor for ServerHandshakeState.ServerHelloState;
    v21 = v11;
    goto LABEL_24;
  }

  v45 = *v23;
  v34 = NamedGroup.metadataDescription.getter();
  sub_26C0CF494(v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
  return v34;
}

uint64_t ServerHandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  v30 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v32 + *(v18 + 24), v17, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v17, v5, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v20 = v5[*(v26 + 40)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v22 = v5;
      }

      else
      {
        sub_26C0CF42C(v17, v3, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v20 = v3[*(v27 + 36)];
        v21 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v22 = v3;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v8 = v28;
      sub_26C0CF42C(v17, v28, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v20 = v8[*(v29 + 36)];
      v23 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v8 = v30;
      sub_26C0CF42C(v17, v30, type metadata accessor for ServerHandshakeState.ReadyState);
      v20 = v8[*(ready + 36)];
      v23 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v17, v11, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v20 = v11[*(v9 + 44)];
      v21 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v22 = v11;
LABEL_17:
      sub_26C0CF494(v22, v21);
      return v20;
    }

    sub_26C0CF42C(v17, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v20 = v8[*(v6 + 44)];
    v23 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v21 = v23;
    v22 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v17, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v20 = v14[*(v12 + 80)];
    v21 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v22 = v14;
    goto LABEL_17;
  }

  sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState);
  return 2;
}

uint64_t ServerHandshakeStateMachine.stateDescription.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1701602409;
  v7 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v7 = 0x726F467964616572;
  }

  v8 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v8 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v7 = v8;
  }

  v9 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v9 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v6 = v9;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  sub_26C0CF494(v3, type metadata accessor for ServerHandshakeState);
  return v10;
}

BOOL ServerHandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  v5 = swift_getEnumCaseMultiPayload() > 6;
  sub_26C0CF494(v3, type metadata accessor for ServerHandshakeState);
  return v5;
}

uint64_t ServerHandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v4 + 24), v3, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v0 + 24);
  }

  sub_26C0CF494(v3, type metadata accessor for ServerHandshakeState);
  return v5;
}

void sub_26C0CCF90(uint64_t a1)
{
  v1 = *(a1 + 104);
  type metadata accessor for ServerHandshakeStateMachine(0);
  v2 = sub_26C0EEF0C();
  v4 = 0x6548746E65696C63;
  v5 = 0xE800000000000000;
  v6 = 0x64656873696E6966;
  if (v1 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000026C15A4C0;
  }

  v7 = 0xEB00000000657461;
  v8 = 0x6369666974726563;
  if (v1 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000026C15A4E0;
  }

  if (v1 <= 5)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000026C15A520;
  v10 = 0xD000000000000012;
  if (v1 == 2)
  {
    v10 = 0xD000000000000013;
  }

  else
  {
    v9 = 0x800000026C15A500;
  }

  if (v1)
  {
    v4 = 0x6548726576726573;
  }

  if (v1 <= 1)
  {
    v9 = 0xEB000000006F6C6CLL;
  }

  else
  {
    v4 = v10;
  }

  v11 = v1 <= 3;
  if (v1 <= 3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v14 = v2;
  v15 = v3;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v16 = sub_26C148A9C();
  __swift_project_value_buffer(v16, qword_28047A858);

  oslog = sub_26C148A7C();
  v17 = sub_26C14900C();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    v20 = sub_26C0E5DE8(v12, v13, &v23);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    v21 = sub_26C0E5DE8(v14, v15, &v23);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_26C0B5000, oslog, v17, "unexpected message %s in state %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v19, -1, -1);
    MEMORY[0x26D69C3A0](v18, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26C0CD274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_26C0CF314(v2, &v16 - v8, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v9, v6, &qword_28047A948, &qword_26C14A7F0);
      v11 = *(v4 + 44);
      v12 = sub_26C148BDC();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, &v6[v11], v12);
      sub_26C0CF5C4(v6, &qword_28047A948, &qword_26C14A7F0);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    sub_26C0CF5C4(v9, &qword_28047A870, &qword_26C14A5A0);
  }

  v15 = sub_26C148BDC();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_26C0CD4A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_26C0CF314(v2, &v21 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v12, v6, &qword_28047A968, &unk_26C14A810);
      v14 = sub_26C148BDC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v6, v14);
      sub_26C0CF5C4(v6, &qword_28047A968, &unk_26C14A810);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v17 = sub_26C148BDC();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  sub_26C0CF55C(v12, v9, &qword_28047A970, "DG");
  v18 = *(v7 + 48);
  v19 = sub_26C148BDC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a1, &v9[v18], v19);
  sub_26C0CF5C4(v9, &qword_28047A970, "DG");
  return (*(v20 + 56))(a1, 0, 1, v19);
}

uint64_t sub_26C0CD7D0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26C0CD81C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_26C0CD87C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C8, &qword_26C14A770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CD9A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A928, &unk_26C14A7D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CDAAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26C0CDBF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A978, &qword_26C14A820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26C0CDCF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A950, &qword_26C14A7F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26C0CDDF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A958, &unk_26C14A800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CDF10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A910, &qword_26C14A7B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CE01C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A908, &qword_26C14A7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CE13C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8A8, &qword_26C14A748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CE248(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8E0, &qword_26C14A788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26C0CE39C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_26C0CE4AC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26C0CE5CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_26C0CE6E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_26C0CE8BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8B0, &unk_26C14A750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C0CE9F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26C0CEA20(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_26C0CEA40(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26C0CEA50(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26C0CEB1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_26C0CEB2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C0CEB9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26C0CEB4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_26C0CEB5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C0CED74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C0CEB7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C0CEE70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26C0CEB9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A988, &qword_26C14A830);
  v10 = *(type metadata accessor for GeneralEPSK(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeneralEPSK(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26C0CED74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A980, &qword_26C14A828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26C0CEE70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8D0, &qword_26C14A778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26C0CEF7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26C148FAC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D69BCC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26C0CF018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_26C0CF030(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0CF070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0CF0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0CF14C(uint64_t a1)
{
  result = type metadata accessor for ServerHandshakeState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C0CF228(uint64_t a1)
{
  v1 = type metadata accessor for PartialHandshakeResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_26C0CF284(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_26C0CF2F4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_26C0CF314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C0CF42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0CF494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0CF4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0CF55C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C0CF5C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

void PartialHandshakeResult.handshakeBytesToSend.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  sub_26C0BB37C(v2, v3);
}

__n128 PartialHandshakeResult.handshakeBytesToSend.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_26C0BB344(*v1, v1[1]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return sub_26C0CF768(v3, a1);
}

uint64_t sub_26C0CF768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return sub_26C0CF81C(a1, v3);
}

uint64_t sub_26C0CF81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return sub_26C0CF768(v3, a1);
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return sub_26C0CF81C(a1, v3);
}

uint64_t PartialHandshakeResult.sessionTicket.getter()
{
  v1 = v0 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  v2 = *v1;
  sub_26C0BB37C(*v1, *(v1 + 8));
  return v2;
}

uint64_t PartialHandshakeResult.sessionTicket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  result = sub_26C0BB344(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t EncryptionLevel.description.getter()
{
  v1 = type metadata accessor for EncryptionLevel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0CFBBC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_26C148BDC();
  (*(*(v5 - 8) + 8))(v3, v5);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0x6B616873646E6168;
    }

    v7 = 0x63696C707061;
  }

  else
  {
    v7 = 0x44796C726165;
  }

  return v7 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
}

uint64_t sub_26C0CFBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26C0CFC48(uint64_t a1)
{
  sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
  if (v1 <= 0x3F)
  {
    sub_26C0CFD04(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281592480, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26C0CFD04(uint64_t a1)
{
  if (!qword_281591618[0])
  {
    type metadata accessor for EncryptionLevel(255);
    v1 = sub_26C14902C();
    if (!v2)
    {
      atomic_store(v1, qword_281591618);
    }
  }
}

void sub_26C0CFD5C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26C14902C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26C0CFDA8(uint64_t a1)
{
  sub_26C0CFE0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_26C0CFE0C()
{
  if (!qword_281590340)
  {
    v0 = sub_26C148BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_281590340);
    }
  }
}

uint64_t sub_26C0CFEBC(uint64_t a1)
{
  result = type metadata accessor for PeerCertificateBundle.Bundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C0CFF50(uint64_t a1)
{
  v1 = sub_26C148E2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_26C0CFFA8()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047A9A0);
  __swift_project_value_buffer(v0, qword_28047A9A0);
  return sub_26C148A8C();
}

uint64_t sub_26C0D0028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v6 = a1;
  v8 = a1;
  v9 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  if (v8 != 2)
  {
    sub_26C0BB9B0(*a2, a2[1]);

    if (v6)
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v23 = sub_26C148A9C();
      __swift_project_value_buffer(v23, qword_28047A9A0);
      v24 = sub_26C148A7C();
      v25 = sub_26C14900C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v57 = v27;
        *v26 = 136315138;
        v28 = sub_26C0DA5DC(v6);
        v30 = sub_26C0E5DE8(v28, v29, &v57);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_26C0B5000, v24, v25, "unsupported certificate type from peer: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x26D69C3A0](v27, -1, -1);
        MEMORY[0x26D69C3A0](v26, -1, -1);
      }

      v31 = xmmword_26C14A560;
    }

    else
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v37 = sub_26C148A9C();
      __swift_project_value_buffer(v37, qword_28047A9A0);
      v38 = sub_26C148A7C();
      v39 = sub_26C14900C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_26C0B5000, v38, v39, "invalid attempt to negotiate x.509 auth", v40, 2u);
        MEMORY[0x26D69C3A0](v40, -1, -1);
      }

      v31 = xmmword_26C14A8E0;
    }

    goto LABEL_25;
  }

  if (v14[2] != 1)
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v32 = sub_26C148A9C();
    __swift_project_value_buffer(v32, qword_28047A9A0);
    sub_26C0BBAA4(v12, v13);

    v33 = sub_26C148A7C();
    v34 = sub_26C14900C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = v14[2];
      sub_26C0BB9B0(v12, v13);

      *(v35 + 4) = v36;
      sub_26C0BB9B0(v12, v13);

      _os_log_impl(&dword_26C0B5000, v33, v34, "invalid number of public key entries: %ld", v35, 0xCu);
      MEMORY[0x26D69C3A0](v35, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v12, v13);

      sub_26C0BB9B0(v12, v13);
    }

    v31 = xmmword_26C14A8F0;
LABEL_25:
    v41 = v59;
    *v59 = v31;
    *(v41 + 16) = 2;
    v57 = v31;
    v58 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  *&v56 = a4;
  v15 = v14[5];
  v16 = v14[6];
  v17 = v14[7];
  v18 = v14[4];
  sub_26C0BBAA4(v18, v15);

  sub_26C0BB9B0(v12, v13);

  if (*(v17 + 16))
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v19 = sub_26C148A9C();
    __swift_project_value_buffer(v19, qword_28047A9A0);
    sub_26C0BBAA4(v18, v15);

    v20 = sub_26C148A7C();
    v21 = sub_26C14900C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(v17 + 16);
      sub_26C0BB9B0(v18, v15);

      _os_log_impl(&dword_26C0B5000, v20, v21, "invalid number of extensions: %ld", v22, 0xCu);
      MEMORY[0x26D69C3A0](v22, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v18, v15);
    }

    v50 = v59;
    *v59 = xmmword_26C14A8F0;
    *(v50 + 16) = 2;
    v57 = xmmword_26C14A8F0;
    v58 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v18, v15);
  }

  else
  {
    v55 = v16;
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v43 = sub_26C148A9C();
    __swift_project_value_buffer(v43, qword_28047A9A0);
    v44 = sub_26C148A7C();
    v45 = sub_26C148FFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26C0B5000, v44, v45, "constructing public key from peer bytes", v46, 2u);
      MEMORY[0x26D69C3A0](v46, -1, -1);
    }

    v47 = v15 >> 62;
    v48 = v56;
    if ((v15 >> 62) > 1)
    {
      result = v55;
      if (v47 == 2)
      {
        v49 = *(v18 + 24);
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      if (v47)
      {
        v49 = v18 >> 32;
      }

      else
      {
        v49 = BYTE6(v15);
      }

      result = v55;
    }

    if (v49 < result)
    {
      __break(1u);
    }

    else
    {
      *&v57 = sub_26C14889C();
      *(&v57 + 1) = v51;
      sub_26C0D3AE8();
      sub_26C148DEC();
      if (v4)
      {

        v56 = xmmword_26C14A900;
        v57 = xmmword_26C14A900;
        v58 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v18, v15);

        v52 = v59;
        *v59 = v56;
        *(v52 + 16) = 2;
      }

      else
      {
        sub_26C0BB9B0(v18, v15);

        v53 = sub_26C148E2C();
        (*(*(v53 - 8) + 56))(v11, 0, 1, v53);
        return sub_26C0D3B3C(v11, v48);
      }
    }
  }

  return result;
}

void *sub_26C0D07CC(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v68 = a4;
  v66 = a3;
  v62 = a2;
  v6 = sub_26C148DBC();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C148E2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v17 = a1[1];
  v16 = a1[2];
  v18 = a1[3];
  sub_26C0D37A0(v4, v14);
  result = (*(v9 + 48))(v14, 1, v8);
  if (result != 1)
  {
    v20 = *(v9 + 32);
    v73 = v11;
    v20(v11, v14, v8);
    v21 = v8;
    if (v15 != 1027)
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v30 = sub_26C148A9C();
      __swift_project_value_buffer(v30, qword_28047A9A0);
      sub_26C0BBAA4(v17, v16);
      v31 = sub_26C148A7C();
      v32 = sub_26C14900C();
      sub_26C0BB9B0(v17, v16);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = v21;
        v35 = swift_slowAlloc();
        *&v71 = v35;
        *v33 = 136315138;
        v36 = sub_26C0D7D74(v15);
        v38 = sub_26C0E5DE8(v36, v37, &v71);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_26C0B5000, v31, v32, "unsupported algorithm from peer: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v39 = v35;
        v21 = v34;
        MEMORY[0x26D69C3A0](v39, -1, -1);
        MEMORY[0x26D69C3A0](v33, -1, -1);
      }

      v24 = v73;
      v40 = v68;
      *v68 = xmmword_26C14A8E0;
      *(v40 + 16) = 2;
      v71 = xmmword_26C14A8E0;
      LOBYTE(v72) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      (*(v9 + 8))(v24, v21);
      return (v24 & 1);
    }

    v60[1] = v4;
    v61 = v8;
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v22 = sub_26C148A9C();
    v23 = __swift_project_value_buffer(v22, qword_28047A9A0);
    v24 = sub_26C148A7C();
    v25 = sub_26C148FFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26C0B5000, v24, v25, "validating signature from peer server", v26, 2u);
      MEMORY[0x26D69C3A0](v26, -1, -1);
    }

    LOBYTE(v24) = v66;
    v27 = v67;
    result = sub_26C0D257C(&v69, &v71);
    if (v27)
    {
      (*(v9 + 8))(v73, v61);
      v28 = v70;
      v29 = v68;
      *v68 = v69;
      *(v29 + 16) = v28;
      return (v24 & 1);
    }

    v41 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v41 == 2)
      {
        v42 = *(v17 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v41)
    {
      v42 = v17 >> 32;
    }

    else
    {
      v42 = BYTE6(v16);
    }

    *&v67 = v23;
    if (v42 < v18)
    {
      __break(1u);
    }

    else
    {
      v44 = *(&v71 + 1);
      v43 = v71;
      v45 = v72;
      *&v71 = sub_26C14889C();
      *(&v71 + 1) = v46;
      sub_26C0BE710();
      v47 = v65;
      result = sub_26C148DAC();
      v48 = v44 >> 62;
      v49 = v73;
      if ((v44 >> 62) > 1)
      {
        v50 = v43;
        if (v48 == 2)
        {
          v51 = *(v43 + 24);
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v50 = v43;
        if (v48)
        {
          v51 = v43 >> 32;
        }

        else
        {
          v51 = BYTE6(v44);
        }
      }

      if (v51 >= v45)
      {
        *&v71 = sub_26C14889C();
        *(&v71 + 1) = v52;
        v53 = sub_26C148DCC();
        sub_26C0BB9B0(v71, *(&v71 + 1));
        v24 = sub_26C148A7C();
        if (v53)
        {
          v54 = sub_26C148FFC();
          if (os_log_type_enabled(v24, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_26C0B5000, v24, v54, "validation succeeded", v55, 2u);
            MEMORY[0x26D69C3A0](v55, -1, -1);
          }

          LOBYTE(v24) = sub_26C0D0F0C(v62);
        }

        else
        {
          v56 = sub_26C14900C();
          if (os_log_type_enabled(v24, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_26C0B5000, v24, v56, "signature validation failed", v57, 2u);
            MEMORY[0x26D69C3A0](v57, -1, -1);
          }

          LOBYTE(v24) = 0;
        }

        v59 = v63;
        v58 = v64;
        sub_26C0BB9B0(v50, v44);
        (*(v59 + 8))(v47, v58);
        (*(v9 + 8))(v49, v61);
        return (v24 & 1);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0D0F0C(uint64_t a1)
{
  v2 = v1;
  v70[3] = *MEMORY[0x277D85DE8];
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  v11 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D37A0(v2, v13);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    goto LABEL_69;
  }

  (*(v5 + 32))(v10, v13, v4);
  v14 = *(a1 + 16);
  if (!v14)
  {
    v56 = 0;
    (*(v5 + 8))(v10, v4);
    return v56;
  }

  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v15 = v17;
  v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v19 = *(v16 + 56);
  v66 = 0;
  v67 = v19;
  v68 = v16;
  v20 = (v16 - 8);
  v63 = v10;
  v64 = v4;
  v62 = v17;
  for (i = v17(v8, v18, v4); ; i = v15(v8, v18, v4))
  {
    v23 = MEMORY[0x26D69BB30](i);
    v25 = v24;
    v26 = MEMORY[0x26D69BB30]();
    v28 = v25 >> 62;
    v29 = v27 >> 62;
    if (v25 >> 62 == 3)
    {
      v30 = 0;
      if (!v23 && v25 == 0xC000000000000000 && v27 >> 62 == 3)
      {
        v30 = 0;
        if (!v26 && v27 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v57 = 0;
          v58 = 0xC000000000000000;
          goto LABEL_58;
        }
      }

LABEL_25:
      if (v29 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        v30 = BYTE6(v25);
        if (v29 > 1)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      LODWORD(v30) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_64;
      }

      v30 = v30;
      goto LABEL_25;
    }

    if (v28 == 2)
    {
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_63;
      }

      goto LABEL_25;
    }

    v30 = 0;
    if (v29 > 1)
    {
LABEL_31:
      if (v29 != 2)
      {
        if (!v30)
        {
          break;
        }

LABEL_5:
        sub_26C0BB9B0(v26, v27);
        sub_26C0BB9B0(v23, v25);
        v22 = *v20;
        (*v20)(v8, v4);
        goto LABEL_6;
      }

      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      v33 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v33)
      {
        goto LABEL_62;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (!v29)
    {
      v34 = BYTE6(v27);
      goto LABEL_33;
    }

    LODWORD(v34) = HIDWORD(v26) - v26;
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    v34 = v34;
LABEL_33:
    if (v30 != v34)
    {
      goto LABEL_5;
    }

    if (v30 < 1)
    {
      break;
    }

    if (v28 > 1)
    {
      v41 = v26;
      v65 = v27;
      if (v28 != 2)
      {
        memset(v70, 0, 14);
        v38 = v65;
        v55 = v66;
        sub_26C0BE04C(v70, v26, v65, &v69);
        v66 = v55;
        v40 = v41;
        goto LABEL_51;
      }

      v42 = *(v23 + 16);
      v61 = *(v23 + 24);
      v43 = sub_26C1487BC();
      if (v43)
      {
        v44 = sub_26C1487EC();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_67;
        }

        v43 += v42 - v44;
      }

      if (__OFSUB__(v61, v42))
      {
        goto LABEL_66;
      }

      sub_26C1487DC();
      v45 = v43;
      v47 = v65;
      v46 = v66;
      sub_26C0BE04C(v45, v41, v65, v70);
      v66 = v46;
      v48 = v41;
    }

    else
    {
      if (!v28)
      {
        v70[0] = v23;
        LOWORD(v70[1]) = v25;
        BYTE2(v70[1]) = BYTE2(v25);
        BYTE3(v70[1]) = BYTE3(v25);
        BYTE4(v70[1]) = BYTE4(v25);
        BYTE5(v70[1]) = BYTE5(v25);
        v37 = v26;
        v38 = v27;
        v39 = v66;
        sub_26C0BE04C(v70, v26, v27, &v69);
        v66 = v39;
        v40 = v37;
LABEL_51:
        sub_26C0BB9B0(v40, v38);
        sub_26C0BB9B0(v23, v25);
        v54 = v69;
        goto LABEL_52;
      }

      if (v23 >> 32 < v23)
      {
        goto LABEL_65;
      }

      v61 = v26;
      v65 = v27;
      v49 = sub_26C1487BC();
      if (v49)
      {
        v50 = sub_26C1487EC();
        if (__OFSUB__(v23, v50))
        {
          goto LABEL_68;
        }

        v49 += v23 - v50;
      }

      sub_26C1487DC();
      v51 = v49;
      v52 = v61;
      v47 = v65;
      v53 = v66;
      sub_26C0BE04C(v51, v61, v65, v70);
      v66 = v53;
      v48 = v52;
    }

    sub_26C0BB9B0(v48, v47);
    sub_26C0BB9B0(v23, v25);
    v54 = v70[0];
LABEL_52:
    v22 = *v20;
    v4 = v64;
    (*v20)(v8, v64);
    v15 = v62;
    if (v54)
    {
      v56 = 1;
      v10 = v63;
      goto LABEL_59;
    }

    v10 = v63;
LABEL_6:
    v18 += v67;
    if (!--v14)
    {
      v56 = 0;
      goto LABEL_59;
    }
  }

  sub_26C0BB9B0(v26, v27);
  v57 = v23;
  v58 = v25;
LABEL_58:
  sub_26C0BB9B0(v57, v58);
  v22 = *v20;
  (*v20)(v8, v4);
  v56 = 1;
LABEL_59:
  v22(v10, v4);
  return v56;
}

uint64_t sub_26C0D1520(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = sub_26C148E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D37A0(a1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    LOBYTE(v23) = 1;
    v26 = MEMORY[0x277D838B0];
    v27 = MEMORY[0x277CC9C18];
    v24 = &v23;
    v25 = (&v23 + 1);
    __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
    sub_26C14888C();
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  (*(v3 + 32))(v5, v8, v2);
  LOBYTE(v23) = 0;
  v10 = MEMORY[0x277D838B0];
  v11 = MEMORY[0x277CC9C18];
  v26 = MEMORY[0x277D838B0];
  v27 = MEMORY[0x277CC9C18];
  v24 = &v23;
  v25 = (&v23 + 1);
  __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
  sub_26C14888C();
  v12 = __swift_destroy_boxed_opaque_existential_1(&v24);
  v13 = MEMORY[0x26D69BB30](v12);
  v15 = v13;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_14;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
LABEL_12:
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    LODWORD(v18) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      __break(1u);
    }

    v18 = v18;
    goto LABEL_12;
  }

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = BYTE6(v14);
LABEL_15:
  v26 = v10;
  v27 = v11;
  v23 = bswap64(v18);
  v24 = &v23;
  v25 = &v24;
  __swift_project_boxed_opaque_existential_1(&v24, v10);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  sub_26C0E1E48(v15, v16);
  sub_26C0BB9B0(v15, v16);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26C0D1800@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9F0, &qword_26C14A9C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_26C1368E8();
  if ((v17 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  if (v17 == 1)
  {
    (*(v5 + 56))(a2, 1, 1, v4);
LABEL_18:
    v29 = type metadata accessor for PeerCertificateBundle(0);
    return (*(*(v29 - 8) + 56))(a2, 0, 1, v29);
  }

  if (v17)
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v23 = sub_26C148A9C();
    __swift_project_value_buffer(v23, qword_28047A9A0);
    v24 = sub_26C148A7C();
    v25 = sub_26C14900C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26C0B5000, v24, v25, "invalid serialized session", v26, 2u);
      MEMORY[0x26D69C3A0](v26, -1, -1);
    }

    v27 = v39;
    *v39 = xmmword_26C14A910;
    *(v27 + 16) = 2;
    v37 = xmmword_26C14A910;
    LOBYTE(v38) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  result = sub_26C136A68();
  if (v19)
  {
LABEL_7:
    v21 = *(v5 + 56);
    v21(v16, 1, 1, v4);
LABEL_8:
    sub_26C0CF55C(v16, v14, &qword_28047A9F0, &qword_26C14A9C0);
    if ((*(v5 + 48))(v14, 1, v4) == 1)
    {
      sub_26C0CF5C4(v14, &qword_28047A9F0, &qword_26C14A9C0);
LABEL_10:
      v22 = type metadata accessor for PeerCertificateBundle(0);
      return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    }

    v28 = *(v5 + 32);
    v28(v8, v14, v4);
    v28(a2, v8, v4);
    v21(a2, 0, 1, v4);
    goto LABEL_18;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = sub_26C0DE248(result, &v37);
  v20 = *(&v37 + 1);
  if (*(&v37 + 1) >> 60 == 15)
  {
    goto LABEL_7;
  }

  v30 = *(&v37 + 1) >> 62;
  if ((*(&v37 + 1) >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v37 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v37 >> 32;
  }

  else
  {
    v31 = BYTE14(v37);
  }

  if (v31 < v38)
  {
    goto LABEL_31;
  }

  v35 = v37;
  *&v36 = v38;
  *&v37 = sub_26C14889C();
  *(&v37 + 1) = v32;
  sub_26C148E0C();
  if (!v2)
  {
    sub_26C0BB344(v35, v20);
    (*(v5 + 32))(v16, v10, v4);
    v21 = *(v5 + 56);
    v21(v16, 0, 1, v4);
    goto LABEL_8;
  }

  sub_26C0BB344(v35, v20);
  v36 = xmmword_26C14A900;
  v37 = xmmword_26C14A900;
  LOBYTE(v38) = 2;
  sub_26C0BBAF8();
  result = swift_willThrowTypedImpl();
  v33 = v39;
  *v39 = v36;
  *(v33 + 16) = 2;
  return result;
}

unint64_t sub_26C0D1D1C(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (swift_dynamicCast())
  {
    sub_26C0D3CB0(v45, &v47);
    v5 = __swift_project_boxed_opaque_existential_1(&v47, v48);
    MEMORY[0x28223BE20](v5);
    v39 = v2;
    sub_26C14880C();
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_26C0CF5C4(v45, &qword_28047A9E0, &qword_26C14A9B0);
  result = sub_26C0D3484(a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_8:
  v8 = *v2;
  v9 = v2[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10 != 2)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v13 = v8 + 16;
  v8 = *(v8 + 16);
  v11 = *(v13 + 8);
  v12 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
  }

LABEL_18:
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_74;
  }

  if ((v11 + v7) < v11)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v14 = sub_26C14886C();
  MEMORY[0x28223BE20](v14);
  v38[2] = v12;
  v38[3] = v7;
  v39 = v44;
  v15 = sub_26C0D2B5C(sub_26C0D3C74, v38);
  v19 = v16;
  if (v18 != v7)
  {
    v31 = 0;
    v32 = *v2;
    v33 = v2[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v31 = *(v32 + 16);
      }
    }

    else if (v34)
    {
      v31 = v32;
    }

    v35 = __OFADD__(v31, v12);
    v36 = v31 + v12;
    if (!v35)
    {
      if (!__OFADD__(v36, v18))
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v37 = *(v32 + 24);
          }

          else
          {
            v37 = 0;
          }
        }

        else if (v34)
        {
          v37 = v32 >> 32;
        }

        else
        {
          v37 = BYTE6(v33);
        }

        if (v37 >= v36 + v18)
        {
          sub_26C14887C();
        }

        goto LABEL_78;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v20 = v15;
  v21 = v17;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  *(v45 + 7) = 0;
  *&v45[0] = 0;
  if (4 * v22 != v17 >> 14)
  {
    LOBYTE(v23) = 0;
    v24 = (v15 >> 59) & 1;
    if ((v16 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v40 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v41 = v16 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v26 = v21 & 0xC;
      v27 = v21;
      if (v26 == v25)
      {
        v27 = sub_26C0CEF7C(v21, v20, v19);
      }

      v28 = v27 >> 16;
      if (v27 >> 16 >= v22)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v7 = sub_26C148F6C();
        goto LABEL_8;
      }

      if ((v19 & 0x1000000000000000) != 0)
      {
        v30 = sub_26C148F9C();
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        *&v47 = v20;
        *(&v47 + 1) = v41;
        v30 = *(&v47 + v28);
        if (v26 != v25)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v29 = v40;
        if ((v20 & 0x1000000000000000) == 0)
        {
          v29 = sub_26C1490AC();
        }

        v30 = *(v29 + v28);
        if (v26 != v25)
        {
LABEL_40:
          if ((v19 & 0x1000000000000000) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        }
      }

      v21 = sub_26C0CEF7C(v21, v20, v19);
      if ((v19 & 0x1000000000000000) != 0)
      {
LABEL_44:
        if (v22 <= v21 >> 16)
        {
          goto LABEL_71;
        }

        v21 = sub_26C148F7C();
        goto LABEL_46;
      }

LABEL_41:
      v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
      *(v45 + v23) = v30;
      v23 = v23 + 1;
      if ((v23 >> 8))
      {
        goto LABEL_70;
      }

      if (v23 == 14)
      {
        *&v47 = *&v45[0];
        *(&v47 + 6) = *(v45 + 6);
        sub_26C14888C();
        LOBYTE(v23) = 0;
      }

      if (4 * v22 == v21 >> 14)
      {
        if (v23)
        {
          *&v47 = *&v45[0];
          *(&v47 + 6) = *(v45 + 6);
          sub_26C14888C();
        }
      }
    }
  }
}

uint64_t sub_26C0D21F8(uint64_t a1, char a2)
{
  v34[5] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = a2;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9E8, &qword_26C14A9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (swift_dynamicCast())
  {
    sub_26C0D3CB0(v32, v34);
    v4 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    MEMORY[0x28223BE20](v4);
    v27 = v2;
    sub_26C14880C();
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_26C0CF5C4(v32, &qword_28047A9E0, &qword_26C14A9B0);
  v6 = *v2;
  v7 = v2[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    v10 = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v9 = *(v11 + 8);
    v10 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    v10 = BYTE6(v7);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_52;
  }

  v10 = HIDWORD(v6) - v6;
  v9 = v6 >> 32;
LABEL_12:
  if (__OFADD__(v9, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v9 + a1 < v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = sub_26C14886C();
  MEMORY[0x28223BE20](v12);
  v26[2] = v10;
  v26[3] = a1;
  v27 = &v30;
  result = sub_26C0D2F00(sub_26C0D3D80, v26);
  if (v15 == a1)
  {
    memset(v34, 0, 15);
    if (v14 != result)
    {
      if ((v14 & 0x8000000000000000) == 0 && v14 < result)
      {
        v16 = v13;
        LOBYTE(v17) = 0;
        for (i = v14 - result + 1; i != 1; ++i)
        {
          *(v34 + v17) = v16;
          v17 = v17 + 1;
          if ((v17 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v17 == 14)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            result = sub_26C14888C();
            if (!i)
            {
              return result;
            }

            LOBYTE(v17) = 0;
          }

          else if (!i)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            return sub_26C14888C();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 0;
    v20 = *v2;
    v21 = v2[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v19 = *(v20 + 16);
      }
    }

    else if (v22)
    {
      v19 = v20;
    }

    v23 = __OFADD__(v19, v10);
    v24 = v19 + v10;
    if (v23)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v24, v15))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v22)
    {
      v25 = v20 >> 32;
    }

    else
    {
      v25 = BYTE6(v21);
    }

    if (v25 < v24 + v15)
    {
      goto LABEL_51;
    }

    return sub_26C14887C();
  }

  return result;
}

uint64_t sub_26C0D257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_26C0D3BA0(v4, &v21 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v14, v8, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0D28AC(a2);
      return sub_26C0CF5C4(v8, &qword_28047A9C8, &qword_26C14D2A0);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v16 = sub_26C148A9C();
  __swift_project_value_buffer(v16, qword_28047AD78);
  sub_26C0D3BA0(v4, v12);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 1)
  {
    if (v17)
    {
      v19 = 0x6B616873646E6168;
    }

    else
    {
      v19 = 0x636553796C726165;
    }

    if (v17)
    {
      v18 = 0xEF74657263655365;
    }

    else
    {
      v18 = 0xEB00000000746572;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0xEC00000074657263;
    v19 = 0x655372657473616DLL;
  }

  else
  {
    if (v17 != 3)
    {
      v18 = 0xE400000000000000;
      v19 = 1701602409;
      goto LABEL_21;
    }

    v18 = 0xEA00000000007374;
    v19 = 0x65726365536C6C61;
  }

  sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_21:
  sub_26C125B0C(v19, v18, 0xD00000000000001DLL, 0x800000026C15A560);

  *a1 = xmmword_26C14A570;
  *(a1 + 16) = 2;
  v21 = xmmword_26C14A570;
  v22 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0D28AC@<X0>(uint64_t a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = sub_26C148B6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v14 = xmmword_26C14A1B0;
  *&v14[16] = 0;
  sub_26C0D21F8(64, 32);
  sub_26C0D1D1C(0xD000000000000021, 0x800000026C15A580);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    sub_26C148F6C();
  }

  v12 = 0;
  v13[3] = MEMORY[0x277D838B0];
  v13[4] = MEMORY[0x277CC9C18];
  v13[0] = &v12;
  v13[1] = v13;
  __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26C148E9C();
  sub_26C0D3C2C(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  v6 = sub_26C148B2C();
  MEMORY[0x28223BE20](v6);
  *&v11[-16] = v14;
  sub_26C0D3C2C(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  sub_26C14880C();
  (*(v3 + 8))(v5, v2);
  v7 = *v14;
  *a1 = *v14;
  v8 = *&v14[8];
  *(a1 + 8) = *&v14[8];
  v9 = v8;
  sub_26C0BBAA4(v7, v8);
  return sub_26C0BB9B0(v7, v9);
}

char *sub_26C0D2B5C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_26C0BB9B0(v7, v6);
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

    sub_26C0BB9B0(v7, v6);
    *v4 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C1487BC() && __OFSUB__(v7, sub_26C1487EC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26C1487FC();
      swift_allocObject();
      v14 = sub_26C14879C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26C0D3318(v7, v7 >> 32, a1);

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

    sub_26C0BB9B0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    sub_26C14881C();
    result = sub_26C0D3318(*(v17 + 2), *(v17 + 3), a1);
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

char *sub_26C0D2F00(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v20 = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26C0BB9B0(v7, v6);
      v17[0] = v7;
      LOWORD(v17[1]) = v6;
      BYTE2(v17[1]) = BYTE2(v6);
      BYTE3(v17[1]) = BYTE3(v6);
      BYTE4(v17[1]) = BYTE4(v6);
      BYTE5(v17[1]) = BYTE5(v6);
      BYTE6(v17[1]) = BYTE6(v6);
      result = a1(&v18, v17, v17 + BYTE6(v6));
      if (!v3)
      {
        result = v18;
      }

      v10 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
      *v4 = v17[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26C0BB9B0(v7, v6);
    *v4 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C1487BC() && __OFSUB__(v7, sub_26C1487EC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26C1487FC();
      swift_allocObject();
      v14 = sub_26C14879C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26C0D33CC(v7, v7 >> 32, a1);

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

    sub_26C0BB9B0(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    sub_26C14881C();
    result = sub_26C0D33CC(*(v18 + 2), *(v18 + 3), a1);
    v11 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v11;
      return result;
    }

    *v4 = v18;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v17, 0, 15);
  result = a1(&v18, v17, v17);
  if (!v3)
  {
    return v18;
  }

  return result;
}

void *sub_26C0D32AC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_26C0D3318(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C1487EC();
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

  v12 = sub_26C1487DC();
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

char *sub_26C0D33CC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C1487EC();
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

  v12 = sub_26C1487DC();
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

unint64_t sub_26C0D3484(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_26C1490AC();
    }

    sub_26C14888C();
  }

  return v2 >> 60;
}

uint64_t sub_26C0D3518(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9B8, &qword_26C14A9A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = *(v12 + 56);
  sub_26C0D37A0(a1, &v28 - v13);
  sub_26C0D37A0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  LODWORD(a2) = v16(v14, 1, v4);
  result = v16(&v14[v15], 1, v4);
  if (a2 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    sub_26C0D3804(&v14[v15]);
  }

  else if (result == 1)
  {
    (*(v5 + 8))(v14, v4);
  }

  else
  {
    v18 = *(v5 + 32);
    v18(v10, v14, v4);
    v19 = (v18)(v8, &v14[v15], v4);
    v20 = MEMORY[0x26D69BB30](v19);
    v22 = v21;
    v23 = MEMORY[0x26D69BB30]();
    v25 = v24;
    v26 = sub_26C0E6464(v20, v22, v23, v24);
    sub_26C0BB9B0(v23, v25);
    sub_26C0BB9B0(v20, v22);
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v10, v4);
    if (v26)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_26C0D37A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3804(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_26C0D3860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9B8, &qword_26C14A9A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = *(v12 + 56);
  sub_26C0D37A0(a1, &v29 - v13);
  sub_26C0D37A0(a2, &v14[v15]);
  v16 = v5[6];
  LODWORD(a2) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  if (a2 != 1)
  {
    if (v17 != 1)
    {
      v19 = v5[4];
      v19(v10, v14, v4);
      v20 = (v19)(v8, &v14[v15], v4);
      v21 = MEMORY[0x26D69BB30](v20);
      v23 = v22;
      v24 = MEMORY[0x26D69BB30]();
      v26 = v25;
      v18 = sub_26C0E6464(v21, v23, v24, v25);
      sub_26C0BB9B0(v24, v26);
      sub_26C0BB9B0(v21, v23);
      v27 = v5[1];
      v27(v8, v4);
      v27(v10, v4);
      return v18;
    }

    (v5[1])(v14, v4);
    return 0;
  }

  if (v17 != 1)
  {
    sub_26C0D3804(&v14[v15]);
    return 0;
  }

  return 1;
}

unint64_t sub_26C0D3AE8()
{
  result = qword_28047A9C0;
  if (!qword_28047A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A9C0);
  }

  return result;
}

uint64_t sub_26C0D3B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C0D3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C0D3CE4(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_26C0D3CB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26C0D3CE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26C14909C();
  if ((v5 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26C0D3D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C0D3DC4(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_26C0D3DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

_WORD *sub_26C0D3F1C@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_26C0D3FB4()
{
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t sub_26C0D4028(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

unint64_t PAKEScheme.description.getter()
{
  result = 0xD000000000000010;
  v2 = *v0;
  if (v2 == 0xFFFF)
  {
    return 0xD000000000000013;
  }

  if (v2 != 32150)
  {
    sub_26C14908C();

    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD000000000000015;
  }

  return result;
}

unint64_t sub_26C0D4168()
{
  result = qword_28047A9F8;
  if (!qword_28047A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A9F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NamedGroup(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for NamedGroup(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
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

uint64_t sub_26C0D42FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0D431C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_26C0D4360()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AA00);
  __swift_project_value_buffer(v0, qword_28047AA00);
  return sub_26C148A8C();
}

double sub_26C0D43E0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v16 = 0u;
      v17 = 0u;
      sub_26C0D4564(a1, a2, &v16, v18);
      sub_26C0BB9B0(a1, a2);
      v11 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v7 = v7;
LABEL_10:
  if (v7 > 32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = 0u;
  v17 = 0u;
  sub_26C0D4564(a1, a2, &v16, v18);
  if (v6 == 2)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    sub_26C0BB9B0(a1, a2);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6 != 1)
  {
LABEL_19:
    sub_26C0BB9B0(a1, a2);
    v11 = BYTE6(a2);
    goto LABEL_20;
  }

  sub_26C0BB9B0(a1, a2);
  LODWORD(v11) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_23;
  }

  v11 = v11;
LABEL_20:
  result = *&v16;
  v15 = v17;
  *a3 = v16;
  *(a3 + 16) = v15;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_26C0D4564(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA30, qword_26C14ABB8);
  result = MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  v17 = a1;
  v18 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  *&v15[-32] = &v17;
  *&v15[-24] = a3;
  *&v15[-16] = a4;
  *&v15[-8] = a3;
  result = sub_26C0D4EAC(sub_26C0D5044, &v15[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  sub_26C0BBAA4(v17, v18);
LABEL_8:
  sub_26C1488EC();
  sub_26C1488DC();
  sub_26C0D5064();
  result = sub_26C14903C();
  v13 = 0;
  if (v16)
  {
LABEL_12:
    *&v11[*(v8 + 36)] = v13;
    return sub_26C0D50BC(v11);
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      *(a3 + v14) = v15[6];
      result = sub_26C14903C();
      ++v14;
      if (v16 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C0D472C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v5);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

uint64_t sub_26C0D47BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x26D69BEF0](v0[4]);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  return MEMORY[0x26D69BF30](v4);
}

uint64_t sub_26C0D4820(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v6);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  MEMORY[0x26D69BF30](v5);
  return sub_26C14920C();
}

unint64_t sub_26C0D48F0()
{
  result = qword_28047AA18;
  if (!qword_28047AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA18);
  }

  return result;
}

unint64_t sub_26C0D4944(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v23[0]) = 0;
  v26 = MEMORY[0x277D838B0];
  v27 = MEMORY[0x277CC9C18];
  v25[0] = v23;
  v25[1] = v23 + 1;
  __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = sub_26C0DBAC8(*(a1 + 32), v23, v24);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA20, &qword_26C14ABB0);
  v26 = v15;
  v27 = sub_26C0D4DFC();
  v16 = swift_allocObject();
  v25[0] = v16;
  v16[2] = v8;
  v16[3] = v10;
  v16[4] = v12;
  v16[5] = v14;
  v17 = __swift_project_boxed_opaque_existential_1(v25, v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = v18[1];
  v24[0] = *v18;
  v24[1] = v19;
  sub_26C14919C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v20 = v14 - v12;
  if (!v12)
  {
    v20 = 0;
  }

  if (v8 < 0 || v20 < v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < 0 || v20 < v10)
  {
    goto LABEL_17;
  }

  v21 = v10 - v8;
  if (v10 - v8 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v21 > 0xFF)
  {
    goto LABEL_19;
  }

  sub_26C100778(v10 - v8, v6);
  return v21 + 1;
}

void sub_26C0D4B74(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    if (v8)
    {
      v9 = v5 >> 32;
    }
  }

  v10 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v10 <= 32)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v16 = *(v5 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = BYTE6(v6);
      v16 = v5 >> 32;
      if (!v8)
      {
        v16 = v15;
      }
    }

    if (__OFSUB__(v16, v7))
    {
      __break(1u);
    }

    else
    {
      sub_26C0DE248(v16 - v7, &v25);
      v17 = *(&v25 + 1);
      if (*(&v25 + 1) >> 60 == 15)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v18 = v25;
      v19 = *(&v25 + 1) >> 62;
      if ((*(&v25 + 1) >> 62) > 1)
      {
        if (v19 == 2)
        {
          v20 = *(v25 + 24);
        }

        else
        {
          v20 = 0;
        }
      }

      else if (v19)
      {
        v20 = v25 >> 32;
      }

      else
      {
        v20 = BYTE14(v25);
      }

      if (v20 >= v26)
      {
        v21 = sub_26C14889C();
        v23 = v22;
        sub_26C0BB344(v18, v17);
        sub_26C0D43E0(v21, v23, v27);
        v24 = v27[1];
        *a3 = v27[0];
        *(a3 + 16) = v24;
        *(a3 + 32) = v28;
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (qword_28047A648 != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = sub_26C148A9C();
  __swift_project_value_buffer(v11, qword_28047AA00);
  v12 = sub_26C148A7C();
  v13 = sub_26C14900C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_26C0B5000, v12, v13, "reading legacy session id: too many bytes %ld, but expected <= 32", v14, 0xCu);
    MEMORY[0x26D69C3A0](v14, -1, -1);
  }

  *a2 = xmmword_26C149860;
  *(a2 + 16) = 2;
  v25 = xmmword_26C149860;
  LOBYTE(v26) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
}

unint64_t sub_26C0D4DFC()
{
  result = qword_28047AA28;
  if (!qword_28047AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AA20, &qword_26C14ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA28);
  }

  return result;
}

uint64_t sub_26C0D4E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0D4EAC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_26C0D5124(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_26C0D5000(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

void *sub_26C0D5044(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

unint64_t sub_26C0D5064()
{
  result = qword_28047AA38;
  if (!qword_28047AA38)
  {
    sub_26C1488DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA38);
  }

  return result;
}

uint64_t sub_26C0D50BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA30, qword_26C14ABB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0D5124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_26C1487DC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26C0D5000(v8, v14, a4) & 1;
}

uint64_t sub_26C0D51CC()
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D526C(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D52F0(__int16 a1)
{
  if (a1 != 3)
  {
LABEL_10:
    sub_26C14908C();

    v2 = sub_26C14911C();
    MEMORY[0x26D69BC90](v2);

    MEMORY[0x26D69BC90](0x3A726F6E696D202CLL, 0xE900000000000020);
    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  if (HIBYTE(a1) <= 1u)
  {
    if (HIBYTE(a1))
    {
      if (HIBYTE(a1) == 1)
      {
        return 0x303176736C742ELL;
      }

      goto LABEL_10;
    }

    return 0x33766C73732ELL;
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 2u:
        return 0x313176736C742ELL;
      case 3u:
        return 0x323176736C742ELL;
      case 4u:
        return 0x333176736C742ELL;
      default:
        goto LABEL_10;
    }
  }
}

unint64_t sub_26C0D54B8()
{
  result = qword_28047AA40;
  if (!qword_28047AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA40);
  }

  return result;
}

uint64_t sub_26C0D557C()
{
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D55F0(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t HandshakeType.description.getter()
{
  v1 = *v0;
  if (v1 <= 0xA)
  {
    if (*v0 <= 3u)
    {
      if (v1 == 1)
      {
        return 0x48746E65696C632ELL;
      }

      if (v1 == 2)
      {
        return 0x487265767265732ELL;
      }
    }

    else
    {
      switch(v1)
      {
        case 4u:
          return 0xD000000000000011;
        case 5u:
          return 0x6145664F646E652ELL;
        case 8u:
          return 0xD000000000000014;
      }
    }
  }

  else if (*v0 > 0x13u)
  {
    switch(v1)
    {
      case 0x14u:
        return 0x656873696E69662ELL;
      case 0x18u:
        return 0x6164705579656B2ELL;
      case 0xFEu:
        return 0x6567617373656D2ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 0xBu:
        return 0x696669747265632ELL;
      case 0xDu:
        return 0xD000000000000013;
      case 0xFu:
        return 0xD000000000000012;
    }
  }

  sub_26C14908C();

  v3 = sub_26C14911C();
  MEMORY[0x26D69BC90](v3);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26C0D589C()
{
  result = qword_28047AA48;
  if (!qword_28047AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeType(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for HandshakeType(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t NamedGroup.metadataDescription.getter()
{
  v1 = *v0;
  if (v1 > 0x1C)
  {
    if (v1 != 29)
    {
      if (v1 == 4588)
      {
        return 0x4C4D393135353258;
      }

      goto LABEL_8;
    }

    return 0x393135353258;
  }

  else
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 0x3438332D50;
      }

LABEL_8:
      sub_26C14908C();

      v3 = sub_26C14911C();
      MEMORY[0x26D69BC90](v3);

      MEMORY[0x26D69BC90](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x3635322D50;
  }
}

uint64_t NamedGroup.description.getter()
{
  v1 = *v0;
  if (v1 > 0x1C)
  {
    if (v1 != 29)
    {
      if (v1 == 4588)
      {
        return 0x4D3931353532782ELL;
      }

      goto LABEL_8;
    }

    return 0x3931353532782ELL;
  }

  else
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 0x343833706365732ELL;
      }

LABEL_8:
      sub_26C14908C();

      v3 = sub_26C14911C();
      MEMORY[0x26D69BC90](v3);

      MEMORY[0x26D69BC90](41, 0xE100000000000000);
      return 0xD000000000000015;
    }

    return 0x363532706365732ELL;
  }
}

unint64_t sub_26C0D5CBC()
{
  result = qword_28047AA50;
  if (!qword_28047AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA50);
  }

  return result;
}

SwiftTLS::knownTLSAlert_optional __swiftcall knownTLSAlert.init(rawValue:)(SwiftTLS::knownTLSAlert_optional rawValue)
{
  value = SwiftTLS_knownTLSAlert_certificateUnknown;
  switch(rawValue.value)
  {
    case 0:
      goto LABEL_23;
    case 0xA:
      rawValue.value = SwiftTLS_knownTLSAlert_unexpectedMessage;
      goto LABEL_23;
    case 0x14:
      rawValue.value = SwiftTLS_knownTLSAlert_badRecordMac;
      goto LABEL_23;
    case 0x16:
      rawValue.value = SwiftTLS_knownTLSAlert_recordOverflow;
      goto LABEL_23;
    case 0x28:
      rawValue.value = SwiftTLS_knownTLSAlert_handshakeFailure;
      goto LABEL_23;
    case 0x2A:
      rawValue.value = SwiftTLS_knownTLSAlert_badCertificate;
      goto LABEL_23;
    case 0x2B:
      rawValue.value = SwiftTLS_knownTLSAlert_unsupportedCertificate;
      goto LABEL_23;
    case 0x2C:
      rawValue.value = SwiftTLS_knownTLSAlert_certificateRevoked;
      goto LABEL_23;
    case 0x2D:
      rawValue.value = SwiftTLS_knownTLSAlert_certificateExpired;
LABEL_23:
      value = rawValue.value;
      goto LABEL_24;
    case 0x2E:
LABEL_24:
      *v1 = value;
      break;
    case 0x2F:
      *v1 = SwiftTLS_knownTLSAlert_illegalParameter;
      break;
    case 0x30:
      *v1 = SwiftTLS_knownTLSAlert_unknownCA;
      break;
    case 0x31:
      *v1 = SwiftTLS_knownTLSAlert_accessDenied;
      break;
    case 0x32:
      *v1 = SwiftTLS_knownTLSAlert_decodeError;
      break;
    case 0x33:
      *v1 = SwiftTLS_knownTLSAlert_decryptError;
      break;
    case 0x46:
      *v1 = SwiftTLS_knownTLSAlert_protocolVersion;
      break;
    case 0x47:
      *v1 = SwiftTLS_knownTLSAlert_insufficientSecurity;
      break;
    case 0x50:
      *v1 = SwiftTLS_knownTLSAlert_internalError;
      break;
    case 0x56:
      *v1 = SwiftTLS_knownTLSAlert_inappropriateFallback;
      break;
    case 0x5A:
      *v1 = SwiftTLS_knownTLSAlert_userCanceled;
      break;
    case 0x6D:
      *v1 = SwiftTLS_knownTLSAlert_missingExtension;
      break;
    case 0x6E:
      *v1 = SwiftTLS_knownTLSAlert_unsupportedExtension;
      break;
    case 0x70:
      *v1 = SwiftTLS_knownTLSAlert_unrecognizedName;
      break;
    case 0x71:
      *v1 = SwiftTLS_knownTLSAlert_badCertificateStatusResponse;
      break;
    case 0x73:
      *v1 = SwiftTLS_knownTLSAlert_unknownPskIdentity;
      break;
    case 0x74:
      *v1 = SwiftTLS_knownTLSAlert_certificateRequired;
      break;
    case 0x78:
      *v1 = SwiftTLS_knownTLSAlert_noApplicationProtocol;
      break;
    default:
      *v1 = SwiftTLS_knownTLSAlert_unknownDefault;
      break;
  }

  return rawValue;
}

uint64_t sub_26C0D5EB0()
{
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D5F38(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t Alert.hashValue.getter()
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t Alert.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_28047A650 != -1)
  {
    swift_once();
  }

  if (word_280480310 == v1 && HIBYTE(word_280480310) == v2)
  {
    return 0x6F6E2065736F6C63;
  }

  if (qword_28047A658 != -1)
  {
    swift_once();
  }

  if (word_280480312 == v1 && HIBYTE(word_280480312) == v2)
  {
    return 0xD000000000000012;
  }

  if (qword_28047A660 != -1)
  {
    swift_once();
  }

  if (word_280480314 == v1 && HIBYTE(word_280480314) == v2)
  {
    return 0x6F63657220646162;
  }

  if (qword_28047A668 != -1)
  {
    swift_once();
  }

  if (word_280480316 == v1 && HIBYTE(word_280480316) == v2)
  {
    return 0x6F2064726F636572;
  }

  if (qword_28047A670 != -1)
  {
    swift_once();
  }

  if (word_280480318 == v1 && HIBYTE(word_280480318) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A678 != -1)
  {
    swift_once();
  }

  if (word_28048031A == v1 && HIBYTE(word_28048031A) == v2)
  {
    return 0x7472656320646162;
  }

  if (qword_28047A680 != -1)
  {
    swift_once();
  }

  if (word_28048031C == v1 && HIBYTE(word_28048031C) == v2)
  {
    return 0xD000000000000017;
  }

  if (qword_28047A688 != -1)
  {
    swift_once();
  }

  if (word_28048031E == v1 && HIBYTE(word_28048031E) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A690 != -1)
  {
    swift_once();
  }

  if (word_280480320 == v1 && HIBYTE(word_280480320) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A698 != -1)
  {
    swift_once();
  }

  if (word_280480322 == v1 && HIBYTE(word_280480322) == v2)
  {
    return 0xD000000000000013;
  }

  if (qword_28047A6A0 != -1)
  {
    swift_once();
  }

  if (word_280480324 == v1 && HIBYTE(word_280480324) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A6A8 != -1)
  {
    swift_once();
  }

  if (word_280480326 == v1 && HIBYTE(word_280480326) == v2)
  {
    return 0x206E776F6E6B6E75;
  }

  if (qword_28047A6B0 != -1)
  {
    swift_once();
  }

  if (word_280480328 == v1 && HIBYTE(word_280480328) == v2)
  {
    return 0x6420737365636361;
  }

  if (qword_28047A6B8 != -1)
  {
    swift_once();
  }

  if (word_28048032A == v1 && HIBYTE(word_28048032A) == v2)
  {
    return 0x652065646F636564;
  }

  if (qword_28047A6C0 != -1)
  {
    swift_once();
  }

  if (word_28048032C == v1 && HIBYTE(word_28048032C) == v2)
  {
    return 0x2074707972636564;
  }

  if (qword_28047A6C8 != -1)
  {
    swift_once();
  }

  if (word_28048032E == v1 && HIBYTE(word_28048032E) == v2)
  {
    return 0xD000000000000010;
  }

  if (qword_28047A6D0 != -1)
  {
    swift_once();
  }

  if (word_280480330 == v1 && HIBYTE(word_280480330) == v2)
  {
    return 0xD000000000000015;
  }

  if (qword_28047A6D8 != -1)
  {
    swift_once();
  }

  if (word_280480332 == v1 && HIBYTE(word_280480332) == v2)
  {
    return 0x6C616E7265746E69;
  }

  if (qword_28047A6E0 != -1)
  {
    swift_once();
  }

  if (word_280480334 == v1 && HIBYTE(word_280480334) == v2)
  {
    return 0xD000000000000016;
  }

  if (qword_28047A6E8 != -1)
  {
    swift_once();
  }

  if (word_280480336 == v1 && HIBYTE(word_280480336) == v2)
  {
    return 0x6E61632072657375;
  }

  if (qword_28047A6F0 != -1)
  {
    swift_once();
  }

  if (word_280480338 == v1 && HIBYTE(word_280480338) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A6F8 != -1)
  {
    swift_once();
  }

  if (word_28048033A == v1 && HIBYTE(word_28048033A) == v2)
  {
    return 0xD000000000000015;
  }

  if (qword_28047A700 != -1)
  {
    swift_once();
  }

  if (word_28048033C == v1 && HIBYTE(word_28048033C) == v2)
  {
    return 0xD000000000000011;
  }

  if (qword_28047A708 != -1)
  {
    swift_once();
  }

  if (word_28048033E == v1 && HIBYTE(word_28048033E) == v2)
  {
    return 0xD00000000000001FLL;
  }

  if (qword_28047A710 != -1)
  {
    swift_once();
  }

  if (word_280480340 == v1 && HIBYTE(word_280480340) == v2)
  {
    return 0xD000000000000014;
  }

  if (qword_28047A718 != -1)
  {
    swift_once();
  }

  if (word_280480342 == v1 && HIBYTE(word_280480342) == v2)
  {
    return 0xD000000000000014;
  }

  if (qword_28047A720 != -1)
  {
    swift_once();
  }

  if (word_280480344 == v1 && HIBYTE(word_280480344) == v2)
  {
    return 0xD000000000000017;
  }

  sub_26C14908C();

  v6 = sub_26C14911C();
  MEMORY[0x26D69BC90](v6);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000013;
}