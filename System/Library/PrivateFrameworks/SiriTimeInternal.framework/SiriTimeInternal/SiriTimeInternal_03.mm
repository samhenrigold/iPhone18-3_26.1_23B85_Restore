unint64_t sub_26931D52C()
{
  result = qword_2803088A0;
  if (!qword_2803088A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803088A0);
  }

  return result;
}

uint64_t TimerSnippetModel.timers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TimerSnippetModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088A8, &qword_269331248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931D7EC();
  sub_26932DF80();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
    sub_26931DA0C(&qword_2803088C0, &qword_2803088C8, &protocol conformance descriptor for SiriTimerSnippetModel, MEMORY[0x277D83978]);
    sub_26932DD00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_26931D7EC()
{
  result = qword_2803088B0;
  if (!qword_2803088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803088B0);
  }

  return result;
}

uint64_t TimerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088D0, &qword_269331258);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931D7EC();

  sub_26932DF90();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  sub_26931DA0C(&qword_2803088D8, &qword_2803088E0, &protocol conformance descriptor for SiriTimerSnippetModel, MEMORY[0x277D83948]);
  sub_26932DDA0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26931DA0C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803088B8, &qword_269331250);
    sub_26931CB98(a2, type metadata accessor for SiriTimerSnippetModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26931DABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26931DB40(uint64_t a1)
{
  v2 = sub_26931D7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931DB7C(uint64_t a1)
{
  v2 = sub_26931D7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTimerSnippetModel.timerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriTimerSnippetModel.timerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.directInvocationUri.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SiriTimerSnippetModel.directInvocationUri.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.directInvocationPayload.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SiriTimerSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriTimerSnippetModel(0) + 28);

  return sub_2692EF644(a1, v3);
}

uint64_t SiriTimerSnippetModel.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriTimerSnippetModel(0) + 32));

  return v1;
}

uint64_t SiriTimerSnippetModel.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriTimerSnippetModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriTimerSnippetModel.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.remainingTime.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.state.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SiriTimerSnippetModel(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.init(timerIdentifier:directInvocation:label:duration:remainingTime:state:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v52 = a8;
  v51 = a7;
  v49 = a5;
  v50 = a6;
  v47 = a13;
  v48 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308470, &unk_26932FA20);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v41[-v21];
  v23 = type metadata accessor for SiriTimerSnippetModel(0);
  v24 = v23[7];
  v25 = sub_26932BED0();
  v26 = *(*(v25 - 8) + 56);
  v46 = v24;
  v26(&a9[v24], 1, 1, v25);
  *a9 = a1;
  *(a9 + 1) = a2;
  v45 = a3;
  sub_2692E3B90(a3, v22, &qword_280308470, &unk_26932FA20);
  v27 = sub_26932C6C0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    sub_2692EB48C(v22, &qword_280308470, &unk_26932FA20);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = sub_26932C6A0();
    v31 = v32;
    (*(v28 + 8))(v22, v27);
  }

  v44 = a12;
  v43 = a11;
  v42 = a10;
  *(a9 + 2) = v30;
  *(a9 + 3) = v31;
  v33 = v45;
  sub_2692E3B90(v45, v20, &qword_280308470, &unk_26932FA20);
  if (v29(v20, 1, v27) == 1)
  {
    sub_2692EB48C(v33, &qword_280308470, &unk_26932FA20);
    sub_2692EB48C(v20, &qword_280308470, &unk_26932FA20);
    v34 = 0;
  }

  else
  {
    v34 = sub_26932C6B0();
    sub_2692EB48C(v33, &qword_280308470, &unk_26932FA20);
    (*(v28 + 8))(v20, v27);
  }

  v35 = &a9[v23[8]];
  v36 = &a9[v23[9]];
  v37 = &a9[v23[10]];
  v38 = &a9[v23[11]];
  *(a9 + 4) = v34;
  result = sub_2692EF644(v47, &a9[v46]);
  v40 = v49;
  *v35 = v48;
  *(v35 + 1) = v40;
  *v36 = v50;
  v36[8] = v51 & 1;
  *v37 = v52;
  v37[8] = v42 & 1;
  *v38 = v43;
  v38[8] = v44 & 1;
  return result;
}

uint64_t SiriTimerSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F8, &qword_269331270);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for SiriTimerSnippetModel(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 4) = 0;
  v16 = *(v13 + 28);
  v17 = sub_26932BED0();
  v18 = *(*(v17 - 8) + 56);
  v19 = v15;
  v58 = v16;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB34();
  v21 = v57;
  sub_26932DF80();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_2692EB48C(v19 + v58, &qword_2803086A0, &unk_26932FB40);
  }

  else
  {
    v57 = v17;
    v22 = v56;
    v65 = 0;
    v23 = sub_26932DCA0();
    if (v24)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = 0xE000000000000000;
    if (v24)
    {
      v27 = v24;
    }

    *v19 = v26;
    v19[1] = v27;
    v64 = 1;
    v28 = sub_26932DCA0();
    v30 = v29;
    v19[2] = v28;
    v19[3] = v29;
    v63 = 3;
    v31 = sub_26932DCA0();
    v32 = (v19 + v12[8]);
    *v32 = v31;
    v32[1] = v33;
    v62 = 4;
    v34 = sub_26932DCC0();
    v35 = v19 + v12[9];
    *v35 = v34;
    v35[8] = v36 & 1;
    v61 = 5;
    v37 = sub_26932DCC0();
    v38 = v19 + v12[10];
    *v38 = v37;
    v38[8] = v39 & 1;
    v60 = 6;
    v40 = sub_26932DCD0();
    v49 = v30;
    v41 = v19 + v12[11];
    *v41 = v40;
    v41[8] = v42 & 1;
    v59 = 7;
    sub_26931CB98(&qword_280308398, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v43 = v55;
    sub_26932DCE0();
    v57 = v11;
    sub_2692EF644(v43, v19 + v58);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26931EB88();
    v44 = v53;
    sub_26932DF80();
    v46 = v51;
    v45 = v52;
    (*(v51 + 56))(v44, 0, 1, v52);
    v47 = v50;
    (*(v46 + 32))(v50, v44, v45);
    v48 = sub_26931EC44(v47);
    (*(v46 + 8))(v47, v45);
    (*(v22 + 8))(v57, v9);
    v19[4] = v48;
    sub_26931EBDC(v19, v54, type metadata accessor for SiriTimerSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return sub_26931CA7C(v19, type metadata accessor for SiriTimerSnippetModel);
  }
}

unint64_t sub_26931EB34()
{
  result = qword_280308900;
  if (!qword_280308900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308900);
  }

  return result;
}

unint64_t sub_26931EB88()
{
  result = qword_280308908;
  if (!qword_280308908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308908);
  }

  return result;
}

uint64_t sub_26931EBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26931EC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v103 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v105 = &v103 - v7;
  v8 = sub_2692ED51C(MEMORY[0x277D84F90]);
  v117 = v8;
  v9 = sub_26932DD10();
  v10 = v9;
  v110 = *(v9 + 16);
  if (!v110)
  {

    return v8;
  }

  v108 = v4;
  v11 = 0;
  v106 = (v6 + 56);
  v104 = (v6 + 32);
  v103 = (v6 + 8);
  v12 = (v9 + 56);
  v111 = a1;
  v107 = v5;
  v109 = v9;
  while (v11 < *(v10 + 16))
  {
    v19 = *(v12 - 3);
    v18 = *(v12 - 2);
    v20 = *(v12 - 1);
    v21 = *v12;
    *&v114 = v19;
    *(&v114 + 1) = v18;
    v115 = v20;
    LOBYTE(v116) = v21;

    v22 = sub_26932DCD0();
    if ((v23 & 1) == 0)
    {
      v116 = MEMORY[0x277D83B88];
      *&v114 = v22;
      sub_2692ED64C(&v114, &v113);
      v40 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v40;
      v42 = sub_269324148(v19, v18);
      v44 = v40[2];
      v45 = (v43 & 1) == 0;
      v16 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v16)
      {
        goto LABEL_73;
      }

      v47 = v43;
      if (v40[3] >= v46)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_36;
        }

        v88 = v42;
        sub_269324810();
        v42 = v88;
        if (v47)
        {
LABEL_37:
          v79 = v42;

          v80 = v112;
          v81 = (v112[7] + 32 * v79);
          goto LABEL_47;
        }
      }

      else
      {
        sub_2693244EC(v46, isUniquelyReferenced_nonNull_native);
        v42 = sub_269324148(v19, v18);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_82;
        }

LABEL_36:
        if (v47)
        {
          goto LABEL_37;
        }
      }

      v89 = v112;
      v112[(v42 >> 6) + 8] |= 1 << v42;
      v90 = (v89[6] + 16 * v42);
      *v90 = v19;
      v90[1] = v18;
      sub_2692ED64C(&v113, (v89[7] + 32 * v42));
      v91 = v89[2];
      v16 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v16)
      {
        goto LABEL_78;
      }

      goto LABEL_63;
    }

    *&v114 = v19;
    *(&v114 + 1) = v18;
    v115 = v20;
    LOBYTE(v116) = v21;
    v24 = sub_26932DCC0();
    if ((v25 & 1) == 0)
    {
      v116 = MEMORY[0x277D839F8];
      *&v114 = v24;
      sub_2692ED64C(&v114, &v113);
      v61 = v117;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v61;
      v64 = sub_269324148(v19, v18);
      v65 = v61[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_76;
      }

      v68 = v63;
      if (v61[3] < v67)
      {
        sub_2693244EC(v67, v62);
        v69 = sub_269324148(v19, v18);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_82;
        }

        v64 = v69;
        if ((v68 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_46:

        v80 = v112;
        v81 = (v112[7] + 32 * v64);
LABEL_47:
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        sub_2692ED64C(&v113, v81);
        v117 = v80;
LABEL_64:
        v10 = v109;
        goto LABEL_5;
      }

      if (v62)
      {
        if (v63)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_269324810();
        if (v68)
        {
          goto LABEL_46;
        }
      }

LABEL_62:
      v89 = v112;
      v112[(v64 >> 6) + 8] |= 1 << v64;
      v97 = (v89[6] + 16 * v64);
      *v97 = v19;
      v97[1] = v18;
      sub_2692ED64C(&v113, (v89[7] + 32 * v64));
      v98 = v89[2];
      v16 = __OFADD__(v98, 1);
      v92 = v98 + 1;
      if (v16)
      {
        goto LABEL_81;
      }

LABEL_63:
      v89[2] = v92;
      v117 = v89;
      goto LABEL_64;
    }

    *&v114 = v19;
    *(&v114 + 1) = v18;
    v115 = v20;
    LOBYTE(v116) = v21;
    v26 = sub_26932DCA0();
    if (!v27)
    {
      *&v114 = v19;
      *(&v114 + 1) = v18;
      v115 = v20;
      LOBYTE(v116) = v21;
      v28 = sub_26932DCB0();
      if (v28 == 2)
      {
        *&v114 = v19;
        *(&v114 + 1) = v18;
        v115 = v20;
        LOBYTE(v116) = v21;
        sub_26931EB88();
        v38 = v108;
        v39 = v107;
        sub_26932DC80();
        (*v106)(v38, 0, 1, v39);
        v49 = v105;
        (*v104)(v105, v38, v39);
        v50 = sub_26931EC44(v49);
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
        *&v114 = v50;
        sub_2692ED64C(&v114, &v113);
        v51 = v117;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v112 = v51;
        v53 = sub_269324148(v19, v18);
        v55 = v51[2];
        v56 = (v54 & 1) == 0;
        v16 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v16)
        {
          goto LABEL_75;
        }

        v58 = v54;
        v59 = v39;
        if (v51[3] < v57)
        {
          sub_2693244EC(v57, v52);
          v53 = sub_269324148(v19, v18);
          v10 = v109;
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_82;
          }

          goto LABEL_42;
        }

        v10 = v109;
        if (v52)
        {
LABEL_42:
          if (v58)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v94 = v53;
          sub_269324810();
          v53 = v94;
          if (v58)
          {
LABEL_43:
            v82 = v53;

            v83 = v112;
            v84 = (v112[7] + 32 * v82);
            __swift_destroy_boxed_opaque_existential_1Tm(v84);
            sub_2692ED64C(&v113, v84);
            (*v103)(v105, v59);
            v117 = v83;
            goto LABEL_5;
          }
        }

        v13 = v112;
        v112[(v53 >> 6) + 8] |= 1 << v53;
        v95 = (v13[6] + 16 * v53);
        *v95 = v19;
        v95[1] = v18;
        sub_2692ED64C(&v113, (v13[7] + 32 * v53));
        (*v103)(v105, v59);
        v96 = v13[2];
        v16 = __OFADD__(v96, 1);
        v17 = v96 + 1;
        if (v16)
        {
          goto LABEL_80;
        }

        goto LABEL_4;
      }

      v116 = MEMORY[0x277D839B0];
      LOBYTE(v114) = v28 & 1;
      sub_2692ED64C(&v114, &v113);
      v71 = v117;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v71;
      v31 = sub_269324148(v19, v18);
      v74 = v71[2];
      v75 = (v73 & 1) == 0;
      v16 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v16)
      {
        goto LABEL_77;
      }

      v77 = v73;
      if (v71[3] < v76)
      {
        sub_2693244EC(v76, v72);
        v31 = sub_269324148(v19, v18);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_82;
        }

        goto LABEL_49;
      }

      if (v72)
      {
LABEL_49:
        if (v77)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v99 = v31;
        sub_269324810();
        v31 = v99;
        if (v77)
        {
LABEL_50:
          v85 = v31;

          v86 = v112;
          v87 = (v112[7] + 32 * v85);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          sub_2692ED64C(&v113, v87);
          v117 = v86;
          goto LABEL_5;
        }
      }

      v13 = v112;
      v112[(v31 >> 6) + 8] |= 1 << v31;
      v100 = (v13[6] + 16 * v31);
      *v100 = v19;
      v100[1] = v18;
      sub_2692ED64C(&v113, (v13[7] + 32 * v31));
      v101 = v13[2];
      v16 = __OFADD__(v101, 1);
      v17 = v101 + 1;
      if (v16)
      {
        __break(1u);
LABEL_69:

        return v117;
      }

      goto LABEL_4;
    }

    v116 = MEMORY[0x277D837D0];
    *&v114 = v26;
    *(&v114 + 1) = v27;
    sub_2692ED64C(&v114, &v113);
    v29 = v117;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v29;
    v31 = sub_269324148(v19, v18);
    v33 = v29[2];
    v34 = (v32 & 1) == 0;
    v16 = __OFADD__(v33, v34);
    v35 = v33 + v34;
    if (v16)
    {
      goto LABEL_74;
    }

    v36 = v32;
    if (v29[3] >= v35)
    {
      if ((v30 & 1) == 0)
      {
        v93 = v31;
        sub_269324810();
        v31 = v93;
        if (v36)
        {
          goto LABEL_50;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_2693244EC(v35, v30);
      v31 = sub_269324148(v19, v18);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_82;
      }
    }

    if (v36)
    {
      goto LABEL_50;
    }

LABEL_3:
    v13 = v112;
    v112[(v31 >> 6) + 8] |= 1 << v31;
    v14 = (v13[6] + 16 * v31);
    *v14 = v19;
    v14[1] = v18;
    sub_2692ED64C(&v113, (v13[7] + 32 * v31));
    v15 = v13[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_79;
    }

LABEL_4:
    v13[2] = v17;
    v117 = v13;
LABEL_5:
    ++v11;
    v12 += 32;
    if (v110 == v11)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  __break(1u);
LABEL_82:
  result = sub_26932DF40();
  __break(1u);
  return result;
}

uint64_t SiriTimerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308918, &qword_269331280);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB34();
  sub_26932DF90();
  LOBYTE(v28) = 0;
  v10 = v27;
  sub_26932DD60();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v24 = v5;
  v27 = v7;
  v28 = *(v1 + 16);
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308920, &qword_269331288);
  sub_26931FDD0(&qword_280308928, &qword_280308920, &qword_269331288);
  sub_26932DDA0();
  v23 = type metadata accessor for SiriTimerSnippetModel(0);
  v28 = *(v1 + v23[8]);
  v29 = 3;
  sub_26932DDA0();
  v12 = v27;
  v13 = (v1 + v23[9]);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *&v28 = v14;
  BYTE8(v28) = v13;
  v29 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308930, &unk_269331290);
  sub_26931FDD0(&qword_280308938, &qword_280308930, &unk_269331290);
  sub_26932DDA0();
  v15 = (v1 + v23[10]);
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  *&v28 = v16;
  BYTE8(v28) = v15;
  v29 = 5;
  sub_26932DDA0();
  v17 = (v1 + v23[11]);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  *&v28 = v18;
  BYTE8(v28) = v17;
  v29 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308550, &qword_269330498);
  sub_26931FDD0(&qword_280308940, &qword_280308550, &qword_269330498);
  sub_26932DDA0();
  LOBYTE(v28) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  sub_26931FE38();
  sub_26932DDA0();
  v19 = *(v1 + 32);
  if (!v19)
  {
    return (*(v12 + 8))(v9, v6);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931EB88();
  v20 = v9;
  v21 = v24;
  sub_26932DF90();
  sub_26931FEEC(v21, v19);
  (*(v25 + 8))(v21, v26);
  return (*(v12 + 8))(v20, v6);
}

uint64_t sub_26931FDD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26931FE38()
{
  result = qword_280308948;
  if (!qword_280308948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803086A0, &unk_26932FB40);
    sub_26931CB98(&qword_280308370, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308948);
  }

  return result;
}

void sub_26931FEEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - v7);
  v9 = a2 + 64;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = (v6 + 8);

  v14 = 0;
  v31 = v8;
  v32 = v13;
  v44 = v5;
  while (v12)
  {
    v15 = v14;
LABEL_9:
    v16 = (*(a2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v5 = *v16;
    v17 = v16[1];
    v8 = &qword_269331FB0;
    if (*(a2 + 16))
    {

      v18 = v17;
      v19 = sub_269324148(v5, v17);
      if (v20)
      {
        sub_2692DDEB4(*(a2 + 56) + 32 * v19, &v42);
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v18 = v17;
    }

    v12 &= v12 - 1;
    sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
    if (v41)
    {
      if (swift_dynamicCast())
      {
        v21 = v3;
        v22 = a2;
        v38 = v5;
        v39 = v18;
        v40 = 0;
        LOBYTE(v41) = 1;
        sub_26932DD60();
        if (v21)
        {
          sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);

          return;
        }

        v8 = &qword_2803086F8;
        sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);

        goto LABEL_18;
      }
    }

    else
    {
      sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
    if (v41)
    {
      if (swift_dynamicCast())
      {
        v38 = v5;
        v39 = v18;
        v40 = 0;
        LOBYTE(v41) = 1;
        sub_26932DD90();
        if (v3)
        {
          goto LABEL_48;
        }

LABEL_33:
        sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);

        goto LABEL_34;
      }
    }

    else
    {
      sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
    if (v41)
    {
      if (swift_dynamicCast())
      {
        v38 = v5;
        v39 = v18;
        v40 = 0;
        LOBYTE(v41) = 1;
        sub_26932DD80();
        if (v3)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    else
    {
      sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
    if (v41)
    {
      if (swift_dynamicCast())
      {
        v38 = v5;
        v39 = v18;
        v40 = 0;
        LOBYTE(v41) = 1;
        sub_26932DD70();
        if (v3)
        {
LABEL_48:
          sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);

LABEL_49:

          return;
        }

        goto LABEL_33;
      }
    }

    else
    {
      sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
    }

    sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
    if (!v41)
    {
      sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
      goto LABEL_41;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
    if (swift_dynamicCast())
    {
      v28 = a2;
      v29 = v3;
      v23 = v34;
      v38 = v5;
      v39 = v18;
      v40 = 0;
      LOBYTE(v41) = 1;
      sub_26931EB88();
      v8 = v31;
      v5 = v44;
      sub_26932DD40();

      v24 = v29;
      sub_26931FEEC(v8, v23);
      v3 = v24;
      if (v24)
      {
        goto LABEL_52;
      }

      (*v30)(v8, v5);
      sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
      v14 = v15;
      a2 = v28;
      v13 = v32;
    }

    else
    {
LABEL_41:
      sub_2692E3B90(&v42, &v38, &qword_2803086F8, &qword_269331FB0);
      if (v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308AD0, &qword_269331FB8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_46;
        }

        v29 = v3;
        v22 = a2;
        v25 = v34;
        v34 = v5;
        v35 = v18;
        v36 = 0;
        v37 = 1;
        sub_26932DD30();

        v26 = v29;
        sub_269320680(&v38, v25);
        if (v26)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v38);
          sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        v8 = &qword_2803086F8;
        sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
LABEL_18:
        v14 = v15;
        a2 = v22;
        v3 = 0;
        v13 = v32;
      }

      else
      {
        sub_2692EB48C(&v38, &qword_2803086F8, &qword_269331FB0);
LABEL_46:
        v38 = v5;
        v39 = v18;
        v40 = 0;
        LOBYTE(v41) = 1;
        sub_26932DDB0();
        sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);

        if (v3)
        {
          goto LABEL_49;
        }

LABEL_34:
        v14 = v15;
        v13 = v32;
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_49;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_52:

  (*v30)(v8, v5);
  sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
}

uint64_t sub_269320680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308910, &qword_269331278);
  result = MEMORY[0x28223BE20](v6);
  v10 = *(a2 + 16);
  if (!v10)
  {
    return result;
  }

  v19 = v17 - v9;
  v20 = result;
  v11 = a2 + 32;
  v18 = (v8 + 8);
  while (1)
  {
    sub_2692DDEB4(v11, v23);
    sub_2692DDEB4(v23, v21);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_26932DE90();
      __swift_destroy_boxed_opaque_existential_1Tm(v23);

      if (v3)
      {
        return result;
      }

      goto LABEL_4;
    }

    sub_2692DDEB4(v23, v21);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v12 = v3;
      sub_26932DEC0();
LABEL_12:
      v3 = v12;
      goto LABEL_13;
    }

    sub_2692DDEB4(v23, v21);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v12 = v3;
      sub_26932DEB0();
      goto LABEL_12;
    }

    sub_2692DDEB4(v23, v21);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      v12 = v3;
      sub_26932DEA0();
      goto LABEL_12;
    }

    sub_2692DDEB4(v23, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
    if (!swift_dynamicCast())
    {
      break;
    }

    v13 = v22;
    v14 = *(a1 + 24);
    v17[1] = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v14);
    sub_26931EB88();
    v15 = v19;
    sub_26932DE70();
    sub_26931FEEC(v15, v13);

    (*v18)(v15, v20);
LABEL_13:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
    if (v3)
    {
      return result;
    }

LABEL_4:
    v11 += 32;
    if (!--v10)
    {
      return result;
    }
  }

  sub_2692DDEB4(v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308AD0, &qword_269331FB8);
  if (!swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_26932DED0();
    if (v3)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    goto LABEL_21;
  }

  v16 = v22;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_26932DE80();
  sub_269320680(v21, v16);
  if (!v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_21:
    result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

char *sub_269320AD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088E8, &qword_269331260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088F0, &qword_269331268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_26932DE50() & 1) == 0)
  {
    v24 = (v6 + 32);
    v9 = MEMORY[0x277D84F90];
    v23 = (v6 + 8);
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = sub_26932DE10();
      if (v12)
      {
        v26 = MEMORY[0x277D837D0];
        *&v25 = v11;
        *(&v25 + 1) = v12;
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v13 = sub_26932DE40();
        if ((v14 & 1) == 0)
        {
          v21 = MEMORY[0x277D83B88];
LABEL_20:
          v26 = v21;
          *&v25 = v13;
          goto LABEL_22;
        }

        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v13 = sub_26932DE30();
        if ((v15 & 1) == 0)
        {
          v21 = MEMORY[0x277D839F8];
          goto LABEL_20;
        }

        __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
        v16 = sub_26932DE20();
        if (v16 == 2)
        {
          __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_26931EB88();
          sub_26932DDF0();
          (*(v6 + 56))(v4, 0, 1, v5);
          (*v24)(v8, v4, v5);
          v17 = sub_26931EC44(v8);
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803089C0, "\n_");
          *&v25 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2692E35C4(0, *(v9 + 2) + 1, 1, v9);
          }

          v19 = *(v9 + 2);
          v18 = *(v9 + 3);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v9 = sub_2692E35C4((v18 > 1), v19 + 1, 1, v9);
          }

          (*v23)(v8, v5);
          goto LABEL_6;
        }

        v26 = MEMORY[0x277D839B0];
        LOBYTE(v25) = v16 & 1;
      }

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2692E35C4(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v22 = *(v9 + 3);
      v20 = v19 + 1;
      if (v19 >= v22 >> 1)
      {
        v9 = sub_2692E35C4((v22 > 1), v19 + 1, 1, v9);
      }

LABEL_6:
      *(v9 + 2) = v20;
      sub_2692ED64C(&v25, &v9[32 * v19 + 32]);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_26932DE50())
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2693210CC()
{
  v1 = *v0;
  v2 = 0x65644972656D6974;
  v3 = 0x6574617473;
  if (v1 != 6)
  {
    v3 = 0x74756F68636E7570;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 4)
  {
    v4 = 0x6E696E69616D6572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2693211EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_269324C30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_269321220(uint64_t a1)
{
  v2 = sub_26931EB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26932125C(uint64_t a1)
{
  v2 = sub_26931EB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2693212C8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2693212F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_269321318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26932DDD0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_269321374(uint64_t a1)
{
  v2 = sub_26931EB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693213B0(uint64_t a1)
{
  v2 = sub_26931EB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerSelectorModel.timers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*TimerSelectorModel.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TimerSelectorModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692EEF28;
}

uint64_t TimerSelectorModel.init(timers:header:)@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  *a4 = a1;
  type metadata accessor for TimerSelectorModel(0);
  return sub_26932C100();
}

uint64_t sub_269321584()
{
  if (*v0)
  {
    return 0x726564616568;
  }

  else
  {
    return 0x7372656D6974;
  }
}

uint64_t sub_2693215B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7372656D6974 && a2 == 0xE600000000000000;
  if (v6 || (sub_26932DF00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26932DF00();

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

uint64_t sub_269321690(uint64_t a1)
{
  v2 = sub_26932191C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2693216CC(uint64_t a1)
{
  v2 = sub_26932191C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerSelectorModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308950, &qword_2693312A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26932191C();
  sub_26932DF90();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  sub_26931DA0C(&qword_2803088D8, &qword_2803088E0, &protocol conformance descriptor for SiriTimerSnippetModel, MEMORY[0x277D83948]);
  sub_26932DDA0();
  if (!v2)
  {
    type metadata accessor for TimerSelectorModel(0);
    v10[6] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    sub_2692F0798(&qword_280308350, MEMORY[0x277D637D0]);
    sub_26932DDA0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26932191C()
{
  result = qword_280308958;
  if (!qword_280308958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308958);
  }

  return result;
}

uint64_t TimerSelectorModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308960, &qword_2693312B0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TimerSelectorModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26932191C();
  sub_26932DF80();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803088B8, &qword_269331250);
  v28 = 0;
  sub_26931DA0C(&qword_2803088C0, &qword_2803088C8, &protocol conformance descriptor for SiriTimerSnippetModel, MEMORY[0x277D83978]);
  v14 = v26;
  sub_26932DD00();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_2692F0798(&qword_280308388, MEMORY[0x277D637E0]);
  sub_26932DD00();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_26931EBDC(v16, v23, type metadata accessor for TimerSelectorModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_26931CA7C(v16, type metadata accessor for TimerSelectorModel);
}

uint64_t TimerConfirmationModel.yesLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v1;
}

uint64_t sub_269321D74(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.yesLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t sub_269321EAC(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v2;
}

void *sub_269321F08@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_269321F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t sub_269322000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.noLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TimerConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t TimerConfirmationModel.invocationVerbValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimerConfirmationModel(0) + 24));

  return v1;
}

uint64_t TimerConfirmationModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TimerConfirmationModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TimerConfirmationModel.text.getter()
{
  type metadata accessor for TimerConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v1;
}

void *sub_26932221C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TimerConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_269322284(void *a1)
{
  type metadata accessor for TimerConfirmationModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t TimerConfirmationModel.text.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimerConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*TimerConfirmationModel.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TimerConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

uint64_t TimerConfirmationModel.init(yesLabel:noLabel:invocationVerbValue:text:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  sub_26932C100();
  v12 = type metadata accessor for TimerConfirmationModel(0);
  sub_26932C100();
  v13 = (a9 + *(v12 + 24));
  *v13 = a5;
  v13[1] = a6;
  return sub_26932C100();
}

unint64_t sub_2693224A8()
{
  v1 = 0x6C6562614C736579;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x6C6562614C6F6ELL;
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

uint64_t sub_269322520@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_269324EDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_269322554(uint64_t a1)
{
  v2 = sub_2693227F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269322590(uint64_t a1)
{
  v2 = sub_2693227F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerConfirmationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308968, &qword_2693312B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693227F4();
  sub_26932DF90();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_2692F0798(&qword_280308350, MEMORY[0x277D637D0]);
  sub_26932DDA0();
  if (!v1)
  {
    type metadata accessor for TimerConfirmationModel(0);
    v11 = 1;
    sub_26932DDA0();
    v10 = 2;
    sub_26932DD60();
    v9 = 3;
    sub_26932DDA0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2693227F4()
{
  result = qword_280308970;
  if (!qword_280308970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308970);
  }

  return result;
}

uint64_t TimerConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v37 = *(v39 - 8);
  v3 = MEMORY[0x28223BE20](v39);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308978, &qword_2693312C0);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TimerConfirmationModel(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2693227F4();
  v42 = v12;
  v16 = v43;
  sub_26932DF80();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v8;
  v33 = v5;
  v34 = v13;
  v43 = a1;
  v35 = v15;
  v47 = 0;
  v18 = sub_2692F0798(&qword_280308388, MEMORY[0x277D637E0]);
  v20 = v38;
  v19 = v39;
  v21 = v41;
  sub_26932DD00();
  v22 = *(v37 + 32);
  v22(v35, v20, v19);
  v46 = 1;
  v23 = v17;
  sub_26932DD00();
  v32 = v18;
  v24 = v35;
  v22(&v35[*(v34 + 20)], v23, v19);
  v45 = 2;
  v38 = 0;
  v25 = sub_26932DCF0();
  v26 = v22;
  v27 = v33;
  v28 = v34;
  v29 = (v24 + *(v34 + 24));
  *v29 = v25;
  v29[1] = v30;
  v44 = 3;
  sub_26932DD00();
  (*(v40 + 8))(v42, v21);
  v26(v24 + *(v28 + 28), v27, v19);
  sub_26931EBDC(v24, v36, type metadata accessor for TimerConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return sub_26931CA7C(v24, type metadata accessor for TimerConfirmationModel);
}

uint64_t sub_269322F94(uint64_t a1)
{
  result = type metadata accessor for TimerSelectorModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimerConfirmationModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269323020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_269323068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2693230DC(uint64_t a1)
{
  sub_269323418(319, &qword_2803089B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_269323250(319);
    if (v2 <= 0x3F)
    {
      sub_2693233B4(319, &qword_2803083E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_269323418(319, &qword_2803089C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_269323418(319, &qword_2803089D0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269323250(uint64_t a1)
{
  if (!qword_2803089B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803089C0, "\n_");
    v1 = sub_26932DA40();
    if (!v2)
    {
      atomic_store(v1, &qword_2803089B8);
    }
  }
}

void sub_2693232DC(uint64_t a1)
{
  sub_2693233B4(319, &qword_2803089E8, type metadata accessor for SiriTimerSnippetModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_269323418(319, &qword_2803083D0, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2693233B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269323418(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269323490(uint64_t a1)
{
  sub_269323418(319, &qword_2803083D0, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SiriTimerSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimerSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269323698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2693236E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269323788()
{
  result = qword_280308A00;
  if (!qword_280308A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A00);
  }

  return result;
}

unint64_t sub_2693237E0()
{
  result = qword_280308A08;
  if (!qword_280308A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A08);
  }

  return result;
}

unint64_t sub_269323838()
{
  result = qword_280308A10;
  if (!qword_280308A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A10);
  }

  return result;
}

unint64_t sub_269323890()
{
  result = qword_280308A18;
  if (!qword_280308A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A18);
  }

  return result;
}

unint64_t sub_2693238E8()
{
  result = qword_280308A20;
  if (!qword_280308A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A20);
  }

  return result;
}

unint64_t sub_269323940()
{
  result = qword_280308A28;
  if (!qword_280308A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A28);
  }

  return result;
}

unint64_t sub_269323998()
{
  result = qword_280308A30;
  if (!qword_280308A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A30);
  }

  return result;
}

unint64_t sub_2693239F0()
{
  result = qword_280308A38;
  if (!qword_280308A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A38);
  }

  return result;
}

unint64_t sub_269323A48()
{
  result = qword_280308A40;
  if (!qword_280308A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A40);
  }

  return result;
}

unint64_t sub_269323AA0()
{
  result = qword_280308A48;
  if (!qword_280308A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A48);
  }

  return result;
}

unint64_t sub_269323AF8()
{
  result = qword_280308A50;
  if (!qword_280308A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A50);
  }

  return result;
}

unint64_t sub_269323B50()
{
  result = qword_280308A58;
  if (!qword_280308A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A58);
  }

  return result;
}

unint64_t sub_269323BA8()
{
  result = qword_280308A60;
  if (!qword_280308A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A60);
  }

  return result;
}

unint64_t sub_269323C00()
{
  result = qword_280308A68;
  if (!qword_280308A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A68);
  }

  return result;
}

unint64_t sub_269323C58()
{
  result = qword_280308A70;
  if (!qword_280308A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A70);
  }

  return result;
}

unint64_t sub_269323CB0()
{
  result = qword_280308A78;
  if (!qword_280308A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A78);
  }

  return result;
}

unint64_t sub_269323D08()
{
  result = qword_280308A80;
  if (!qword_280308A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A80);
  }

  return result;
}

unint64_t sub_269323D60()
{
  result = qword_280308A88;
  if (!qword_280308A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A88);
  }

  return result;
}

unint64_t sub_269323DB8()
{
  result = qword_280308A90;
  if (!qword_280308A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A90);
  }

  return result;
}

unint64_t sub_269323E10()
{
  result = qword_280308A98;
  if (!qword_280308A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308A98);
  }

  return result;
}

unint64_t sub_269323E68()
{
  result = qword_280308AA0;
  if (!qword_280308AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AA0);
  }

  return result;
}

unint64_t sub_269323EC0()
{
  result = qword_280308AA8;
  if (!qword_280308AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AA8);
  }

  return result;
}

unint64_t sub_269323F18()
{
  result = qword_280308AB0;
  if (!qword_280308AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AB0);
  }

  return result;
}

unint64_t sub_269323F70()
{
  result = qword_280308AB8;
  if (!qword_280308AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AB8);
  }

  return result;
}

unint64_t sub_269323FC8()
{
  result = qword_280308AC0;
  if (!qword_280308AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AC0);
  }

  return result;
}

unint64_t sub_269324020()
{
  result = qword_280308AC8;
  if (!qword_280308AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308AC8);
  }

  return result;
}

unint64_t sub_269324074(uint64_t a1)
{
  sub_26932D260();
  v2 = MEMORY[0x277D563F8];
  sub_26931CB98(&qword_280308AE0, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  v3 = sub_26932D740();
  return sub_26932434C(a1, v3, MEMORY[0x277D563F8], &qword_280308AE8, v2, MEMORY[0x277D56408]);
}

unint64_t sub_269324148(uint64_t a1, uint64_t a2)
{
  sub_26932DF50();
  sub_26932D7D0();
  v4 = sub_26932DF70();

  return sub_269324294(a1, a2, v4);
}

unint64_t sub_2693241C0(uint64_t a1)
{
  sub_26932BFA0();
  v2 = MEMORY[0x277CC95F0];
  sub_26931CB98(&qword_2814B2658, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_26932D740();
  return sub_26932434C(a1, v3, MEMORY[0x277CC95F0], &qword_2814B2650, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_269324294(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26932DF00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26932434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_26931CB98(v23, v24, v25);
      v19 = sub_26932D750();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void sub_2693244EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
  v34 = v4;
  v6 = sub_26932DC40();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_2692ED64C(v24, v35);
      }

      else
      {
        sub_2692DDEB4(v24, v35);
      }

      sub_26932DF50();
      sub_26932D7D0();
      v25 = sub_26932DF70();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_2692ED64C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

_OWORD *sub_2693247A4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2692ED64C(a4, (a5[7] + 32 * a1));
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

void sub_269324810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
  v2 = *v0;
  v3 = sub_26932DC30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2692DDEB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2692ED64C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_2693249B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_269324148(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_2693244EC(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_269324148(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_26932DF40();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_269324810();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2693247A4(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_2692ED64C((v12[7] + 32 * v13), a4);
  result = sub_2692ED64C(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t sub_269324B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C754D72656D6974 && a2 == 0xEA00000000006974;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C655372656D6974 && a2 == 0xED0000726F746365 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002693367C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26932DF00();

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

uint64_t sub_269324C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644972656D6974 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002693367E0 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000269336800 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467 || (sub_26932DF00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 7;
  }

  else
  {
    v6 = sub_26932DF00();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_269324EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000269336820 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26932DF00();

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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2693250B0()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308AF0);
  v1 = __swift_project_value_buffer(v0, qword_280308AF0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UnsupportedAppNotInstalledFlow.init(domain:patternExecutor:legacyBuilder:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  sub_2692DB324(a2, a4);
  *(a4 + 40) = v6;

  return sub_2692DB324(a3, a4 + 48);
}

uint64_t UnsupportedAppNotInstalledFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  sub_26932522C();

  return sub_26932C1F0();
}

unint64_t sub_26932522C()
{
  result = qword_280308B08;
  if (!qword_280308B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308B08);
  }

  return result;
}

uint64_t UnsupportedAppNotInstalledFlow.execute()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_26932C610();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_26932C470();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_26932BFA0();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_26932D6B0();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for SiriTimeMeasurement(0);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  v2[24] = swift_task_alloc();
  v7 = sub_26932C390();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26932553C, 0, 0);
}

uint64_t sub_26932553C()
{
  if (qword_280307CB8 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = __swift_project_value_buffer(*(v0 + 152), qword_280308AF0);
  v1 = sub_26932D690();
  v2 = sub_26932D9B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2692D8000, v1, v2, "In UnsupportedClockAppNotInstalledFlow.execute()", v3, 2u);
    MEMORY[0x26D639280](v3, -1, -1);
  }

  v4 = *(v0 + 72);

  sub_26932C360();
  if (qword_2814B2520)
  {
    v5 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v5 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v5;
  }

  v6 = *(v0 + 192);
  sub_26932D400();
  sub_2692EB3E4(v5 + 16, v0 + 16);

  v7 = sub_26932D3F0();
  *(v0 + 256) = v7;
  v8 = AppInstallUtil.isAppInstalled.getter();
  AppInstallUtil.appStorePunchout(installOnly:)((v8 & 1) == 0, v6);
  if (SiriTimeFeatureFlagsImpl.isConfirmationsResponseFrameworkEnabled()())
  {
    v9 = *(v0 + 184);
    v35 = v7;
    v36 = *(v0 + 192);
    v10 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v33 = *(v0 + 168);
    v34 = *(v0 + 72);
    v31 = *(v0 + 128);
    v32 = *(v11 + 16);
    v32();
    v30 = mach_absolute_time();
    *(v9 + v10[7]) = xmmword_26932EEB0;
    *(v9 + v10[8]) = 0x7FEFFFFFFFFFFFFFLL;
    v29 = v10[9];
    sub_26932BF90();
    v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v16 = sub_26932BF70();
    v17 = [v15 initWithNSUUID_];

    (*(v14 + 8))(v13, v31);
    *(v9 + v29) = v17;
    *(v9 + 8) = 30;
    (v32)(v9 + v10[6], v33, v12);
    *v9 = v30;
    sub_26931A2C8();
    (*(v11 + 8))(v33, v12);
    v18 = v34[3];
    v19 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v18);
    v20 = swift_task_alloc();
    *(v0 + 264) = v20;
    *(v20 + 16) = v36;
    *(v20 + 24) = v35;
    v37 = (*(v19 + 8) + **(v19 + 8));
    v21 = swift_task_alloc();
    *(v0 + 272) = v21;
    *v21 = v0;
    v21[1] = sub_269325A6C;

    return v37(sub_269326DFC, v20, v18, v19);
  }

  else
  {
    v23 = *(v0 + 72);
    v24 = v23[9];
    v25 = v23[10];
    __swift_project_boxed_opaque_existential_1(v23 + 6, v24);
    *(v0 + 344) = *(v4 + 40);
    v38 = (*(v25 + 8) + **(v25 + 8));
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_26932654C;
    v27 = *(v0 + 240);
    v28 = *(v0 + 64);

    return v38(v28, v0 + 344, v7, v27, v24, v25);
  }
}

uint64_t sub_269325A6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_269326774;
  }

  else
  {
    v4 = sub_269325BA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269325BA0()
{
  v47 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  sub_26932C460();
  v6 = *(v5 + 16);
  v6(v2, v1, v4);
  sub_26932C380();
  sub_269326E04();
  LOBYTE(v2) = sub_26932D750();
  v7 = *(v5 + 8);
  v0[37] = v7;
  v0[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  if (v2)
  {
    v7(v0[29], v0[25]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[19], qword_2814B2430);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
      _os_log_impl(&dword_2692D8000, v8, v9, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v11, -1, -1);
      MEMORY[0x26D639280](v10, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v12 = v0[28];
  v13 = v0[25];
  sub_26932C370();
  v14 = sub_26932D750();
  v7(v12, v13);
  v15 = v0[29];
  if (v14)
  {
    v7(v0[29], v0[25]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[19], qword_2814B2430);
    v8 = sub_26932D690();
    v16 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
      _os_log_impl(&dword_2692D8000, v8, v16, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v18, -1, -1);
      MEMORY[0x26D639280](v17, -1, -1);
    }

    goto LABEL_6;
  }

  v19 = v0[28];
  v20 = v0[25];
  sub_26932C360();
  sub_26932D750();
  v7(v19, v20);
  v7(v15, v20);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v21 = v0[30];
  v22 = v0[27];
  v23 = v0[25];
  __swift_project_value_buffer(v0[19], qword_2814B2430);
  v6(v22, v21, v23);
  v24 = sub_26932D690();
  v25 = sub_26932D9B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[27];
    v27 = v0[28];
    v28 = v0[25];
    v44 = v25;
    v29 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v29 = 136315650;
    v6(v27, v26, v28);
    v30 = sub_26932D790();
    log = v24;
    v31 = v6;
    v33 = v32;
    v7(v26, v28);
    v34 = sub_2692DD5A8(v30, v33, &v46);
    v6 = v31;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v46);
    _os_log_impl(&dword_2692D8000, log, v44, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v45, -1, -1);
    MEMORY[0x26D639280](v29, -1, -1);
  }

  else
  {
    v35 = v0[27];
    v36 = v0[25];

    v7(v35, v36);
  }

LABEL_18:
  v37 = v0[15];
  v6(v0[28], v0[30], v0[25]);
  v38 = swift_task_alloc();
  *(v38 + 16) = v37;
  *(v38 + 24) = 0u;
  *(v38 + 40) = 0u;
  sub_26932C5A0();

  v39 = swift_task_alloc();
  v0[39] = v39;
  *v39 = v0;
  v39[1] = sub_269326294;
  v40 = v0[23];
  v41 = v0[12];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v41, v40);
}

uint64_t sub_269326294(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 320) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2693263F4, 0, 0);
}

uint64_t sub_2693263F4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  sub_26932C410();

  (*(v4 + 8))(v3, v5);

  sub_2692EB4EC(v2);
  v6 = *(v0 + 192);
  (*(v0 + 296))(*(v0 + 240), *(v0 + 200));
  sub_269326CF4(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26932654C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2693269B8;
  }

  else
  {
    v2 = sub_269326660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269326660()
{
  v1 = v0[26];

  v2 = v0[24];
  (*(v1 + 8))(v0[30], v0[25]);
  sub_269326CF4(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_269326774()
{
  v16 = v0;
  sub_2692EB4EC(v0[23]);
  v1 = v0[36];
  v2 = v1;
  v3 = sub_26932D690();
  v4 = sub_26932D9A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v0[7] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v8 = sub_26932D790();
    v10 = sub_2692DD5A8(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2692D8000, v3, v4, "Error executing DialogEngine: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D639280](v6, -1, -1);
    MEMORY[0x26D639280](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[26];
  sub_26932C420();

  v12 = v0[24];
  (*(v11 + 8))(v0[30], v0[25]);
  sub_269326CF4(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2693269B8()
{
  v16 = v0;
  v1 = v0[42];
  v2 = v1;
  v3 = sub_26932D690();
  v4 = sub_26932D9A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v0[7] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v8 = sub_26932D790();
    v10 = sub_2692DD5A8(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2692D8000, v3, v4, "Error executing DialogEngine: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D639280](v6, -1, -1);
    MEMORY[0x26D639280](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[26];
  sub_26932C420();

  v12 = v0[24];
  (*(v11 + 8))(v0[30], v0[25]);
  sub_269326CF4(v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_269326BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_26932737C(a2, &v14 - v5);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(v10 + 40);

  return v11(v12, v9, v10);
}

uint64_t sub_269326CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269326D60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2692DDD10;

  return UnsupportedAppNotInstalledFlow.execute()(a1);
}

unint64_t sub_269326E04()
{
  result = qword_2814B2648;
  if (!qword_2814B2648)
  {
    sub_26932C390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2648);
  }

  return result;
}

uint64_t dispatch thunk of UnsupportedAppPatternExecutor.appNotInstalledPatternExecution(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_269327064;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_269327064(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of UnsupportedAppNotInstalledLegacyDialogBuilder.generatePunchout(domain:device:dialogPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2692DDD10;

  return v15(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2693272D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_269327318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26932737C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SiriTimeLog.logger(category:)(uint64_t a1, uint64_t a2)
{

  return sub_26932D6A0();
}

uint64_t static SiriTimeLog.osLogObject(category:)(uint64_t a1, uint64_t a2)
{
  sub_2693274C0();

  return sub_26932DA20();
}

unint64_t sub_2693274C0()
{
  result = qword_2814B2310;
  if (!qword_2814B2310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2310);
  }

  return result;
}

uint64_t sub_26932750C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2760);
  __swift_project_value_buffer(v0, qword_2814B2760);
  return sub_26932D6A0();
}

uint64_t sub_2693275FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26932D6B0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26932D6A0();
}

uint64_t sub_269327698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26932D6B0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_269327730()
{
  sub_2693274C0();
  result = sub_26932DA20();
  qword_280308B28 = result;
  return result;
}

id static SiriTimeLog.siriTimeFrameworkOSLogObject.getter()
{
  if (qword_280307CD8 != -1)
  {
    swift_once();
  }

  v1 = qword_280308B28;

  return v1;
}

uint64_t PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_26932C390();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_26932C610();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269327940, 0, 0);
}

uint64_t sub_269327940()
{
  v49 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v0[11], v0[3], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5)
  {
    v6(v0[11], v0[7]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2814B2430);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v9, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v11, -1, -1);
      MEMORY[0x26D639280](v10, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v12 = v0[10];
  v13 = v0[7];
  sub_26932C370();
  v14 = sub_26932D750();
  v6(v12, v13);
  v15 = v0[11];
  if (v14)
  {
    v6(v0[11], v0[7]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v16 = sub_26932D6B0();
    __swift_project_value_buffer(v16, qword_2814B2430);
    v8 = sub_26932D690();
    v17 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v17, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v19, -1, -1);
      MEMORY[0x26D639280](v18, -1, -1);
    }

    goto LABEL_6;
  }

  v20 = v0[10];
  v21 = v0[7];
  sub_26932C360();
  sub_26932D750();
  v6(v20, v21);
  v6(v15, v21);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v22 = v0[9];
  v23 = v0[7];
  v24 = v0[3];
  v25 = sub_26932D6B0();
  __swift_project_value_buffer(v25, qword_2814B2430);
  v4(v22, v24, v23);
  v26 = sub_26932D690();
  v27 = sub_26932D9B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[9];
    v29 = v0[10];
    v30 = v0[7];
    v46 = v27;
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v31 = 136315650;
    v4(v29, v28, v30);
    v32 = sub_26932D790();
    log = v26;
    v33 = v4;
    v35 = v34;
    v6(v28, v30);
    v36 = sub_2692DD5A8(v32, v35, &v48);
    v4 = v33;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    _os_log_impl(&dword_2692D8000, log, v46, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v47, -1, -1);
    MEMORY[0x26D639280](v31, -1, -1);
  }

  else
  {
    v37 = v0[9];
    v38 = v0[7];

    v6(v37, v38);
  }

LABEL_18:
  v39 = v0[4];
  v4(v0[10], v0[3], v0[7]);
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  sub_26932C5A0();

  v41 = swift_task_alloc();
  v0[15] = v41;
  *v41 = v0;
  v41[1] = sub_26932801C;
  v42 = v0[14];
  v43 = v0[5];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v42, v43);
}

uint64_t sub_26932801C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_26932817C, 0, 0);
}

uint64_t sub_26932817C()
{
  sub_26932C410();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269328228()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308B30);
  v1 = __swift_project_value_buffer(v0, qword_280308B30);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t PatternExecutionResult.generatePatternOutput(manifest:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2692DDD10;

  return OutputGenerationManifest.generatePatternOutput(result:measure:)(a1, v3, a3);
}

uint64_t OutputGenerationManifest.generatePatternOutput(result:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_26932C390();
  v4[7] = swift_task_alloc();
  v5 = sub_26932C610();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328498, 0, 0);
}

uint64_t sub_269328498()
{
  v34 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308B30);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v10)
  {
    v14 = v0[3];
    v30 = v0[8];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v15 = 136315394;
    v16 = [v14 patternId];
    v17 = sub_26932D770();
    v19 = v18;

    v20 = sub_2692DD5A8(v17, v19, &v33);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_26932C590();
    v21 = sub_26932D790();
    v23 = v22;
    (*(v12 + 8))(v11, v30);
    v24 = sub_2692DD5A8(v21, v23, &v33);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2692D8000, v8, v9, "generatePatternOutput #Response output for pattern %s, dialogPhase: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v31, -1, -1);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  sub_26932C490();
  swift_allocObject();
  v0[11] = sub_26932C480();
  v32 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v25 = swift_task_alloc();
  v0[12] = v25;
  *v25 = v0;
  v25[1] = sub_26932879C;
  v26 = v0[5];
  v27 = v0[2];
  v28 = v0[3];

  return v32(v27, v28, v26);
}

uint64_t sub_26932879C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26932893C;
  }

  else
  {

    v2 = sub_2693288B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2693288B8()
{
  SiriTimeMeasurement.logDelta()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26932893C()
{

  v1 = sub_26932BE80();
  sub_26931B26C(v1, 0, 0, 128);

  SiriTimeMeasurement.logDelta()();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 96) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_26932C610();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328AC0, 0, 0);
}

uint64_t sub_269328AC0()
{
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(*(v0 + 24), *(v0 + 32), 0, 0, 0, 0, *(v0 + 96), *(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_269328B80;
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);

  return OutputGenerationManifest.generatePatternOutput(result:measure:)(v4, v2, v3);
}

uint64_t sub_269328B80()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269328D28, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_269328D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PatternExecutionResult.generateStandardPatternResponse(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_26932C390();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v7 = sub_26932C610();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269328EC8, 0, 0);
}

uint64_t sub_269328EC8()
{
  v49 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v3 + 16);
  v4(v0[17], v0[9], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5)
  {
    v6(v0[17], v0[13]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2814B2430);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v9, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v11, -1, -1);
      MEMORY[0x26D639280](v10, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v12 = v0[16];
  v13 = v0[13];
  sub_26932C370();
  v14 = sub_26932D750();
  v6(v12, v13);
  v15 = v0[17];
  if (v14)
  {
    v6(v0[17], v0[13]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v16 = sub_26932D6B0();
    __swift_project_value_buffer(v16, qword_2814B2430);
    v8 = sub_26932D690();
    v17 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v17, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v19, -1, -1);
      MEMORY[0x26D639280](v18, -1, -1);
    }

    goto LABEL_6;
  }

  v20 = v0[16];
  v21 = v0[13];
  sub_26932C360();
  sub_26932D750();
  v6(v20, v21);
  v6(v15, v21);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v22 = v0[15];
  v23 = v0[13];
  v24 = v0[9];
  v25 = sub_26932D6B0();
  __swift_project_value_buffer(v25, qword_2814B2430);
  v4(v22, v24, v23);
  v26 = sub_26932D690();
  v27 = sub_26932D9B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[15];
    v29 = v0[16];
    v30 = v0[13];
    v46 = v27;
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v31 = 136315650;
    v4(v29, v28, v30);
    v32 = sub_26932D790();
    log = v26;
    v33 = v4;
    v35 = v34;
    v6(v28, v30);
    v36 = sub_2692DD5A8(v32, v35, &v48);
    v4 = v33;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    _os_log_impl(&dword_2692D8000, log, v46, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v47, -1, -1);
    MEMORY[0x26D639280](v31, -1, -1);
  }

  else
  {
    v37 = v0[15];
    v38 = v0[13];

    v6(v37, v38);
  }

LABEL_18:
  v39 = v0[10];
  v4(v0[16], v0[9], v0[13]);
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  sub_26932C5A0();

  v41 = swift_task_alloc();
  v0[21] = v41;
  *v41 = v0;
  v41[1] = sub_2693295A8;
  v43 = v0[11];
  v42 = v0[12];

  return OutputGenerationManifest.generatePatternOutput(result:measure:)((v0 + 2), v42, v43);
}

uint64_t sub_2693295A8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2693297B4;
  }

  else
  {
    v5 = sub_269329718;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269329718()
{
  v1 = *(v0 + 64);
  sub_2692DB324((v0 + 16), v1);
  *(v1 + 40) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2693297B4()
{
  v17 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_280308B30);
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[7] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v10 = sub_26932D790();
    v12 = sub_2692DD5A8(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2692D8000, v4, v5, "Failed to generate #Response response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D639280](v8, -1, -1);
    MEMORY[0x26D639280](v7, -1, -1);
  }

  v13 = v0[8];
  *v13 = v0[22];
  *(v13 + 40) = 1;

  v14 = v0[1];

  return v14();
}

uint64_t PatternExecutionResult.generateFlow(manifest:measure:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_26932C390();
  v3[7] = swift_task_alloc();
  v4 = sub_26932C610();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269329A9C, 0, 0);
}

uint64_t sub_269329A9C()
{
  v33 = v0;
  if (qword_280307CE0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308B30);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v10)
  {
    v14 = v0[5];
    v30 = v0[8];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v15 = 136315394;
    v16 = [v14 patternId];
    v17 = sub_26932D770();
    v19 = v18;

    v20 = sub_2692DD5A8(v17, v19, v32);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_26932C590();
    v21 = sub_26932D790();
    v23 = v22;
    (*(v12 + 8))(v11, v30);
    v24 = sub_2692DD5A8(v21, v23, v32);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2692D8000, v8, v9, "generateFlowPatternResponse #Response flow response for pattern %s, dialogPhase: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v31, -1, -1);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  sub_26932C580();
  v25 = sub_26932C490();
  swift_allocObject();
  v26 = sub_26932C480();
  v32[3] = v25;
  v32[4] = MEMORY[0x277D5BD58];
  v32[0] = v26;
  sub_26932C1C0();
  swift_allocObject();
  v0[2] = sub_26932C1B0();
  v27 = sub_26932C1D0();
  SiriTimeMeasurement.logDelta()();

  v28 = v0[1];

  return v28(v27);
}

uint64_t PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26932C390();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_26932C610();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269329F20, 0, 0);
}

uint64_t sub_269329F20()
{
  v49 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v3 + 16);
  v4(v0[10], v0[2], v2);
  sub_26932C380();
  sub_269326E04();
  v5 = sub_26932D750();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5)
  {
    v6(v0[10], v0[6]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2814B2430);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v9, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v11, -1, -1);
      MEMORY[0x26D639280](v10, -1, -1);
    }

LABEL_6:

    goto LABEL_18;
  }

  v12 = v0[9];
  v13 = v0[6];
  sub_26932C370();
  v14 = sub_26932D750();
  v6(v12, v13);
  v15 = v0[10];
  if (v14)
  {
    v6(v0[10], v0[6]);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v16 = sub_26932D6B0();
    __swift_project_value_buffer(v16, qword_2814B2430);
    v8 = sub_26932D690();
    v17 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
      _os_log_impl(&dword_2692D8000, v8, v17, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v19, -1, -1);
      MEMORY[0x26D639280](v18, -1, -1);
    }

    goto LABEL_6;
  }

  v20 = v0[9];
  v21 = v0[6];
  sub_26932C360();
  sub_26932D750();
  v6(v20, v21);
  v6(v15, v21);
  if (qword_2814B2428 != -1)
  {
    swift_once();
  }

  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[2];
  v25 = sub_26932D6B0();
  __swift_project_value_buffer(v25, qword_2814B2430);
  v4(v22, v24, v23);
  v26 = sub_26932D690();
  v27 = sub_26932D9B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[6];
    v46 = v27;
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v31 = 136315650;
    v4(v29, v28, v30);
    v32 = sub_26932D790();
    log = v26;
    v33 = v4;
    v35 = v34;
    v6(v28, v30);
    v36 = sub_2692DD5A8(v32, v35, &v48);
    v4 = v33;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_2692DD5A8(7104878, 0xE300000000000000, &v48);
    _os_log_impl(&dword_2692D8000, log, v46, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v47, -1, -1);
    MEMORY[0x26D639280](v31, -1, -1);
  }

  else
  {
    v37 = v0[8];
    v38 = v0[6];

    v6(v37, v38);
  }

LABEL_18:
  v39 = v0[3];
  v4(v0[9], v0[2], v0[6]);
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  sub_26932C5A0();

  v41 = swift_task_alloc();
  v0[14] = v41;
  *v41 = v0;
  v41[1] = sub_26932A5FC;
  v42 = v0[13];
  v43 = v0[4];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v42, v43);
}

uint64_t sub_26932A5FC(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v116 = a6;
  v117 = a4;
  v109 = a2;
  v110 = a5;
  v115 = a3;
  v111 = a8;
  v10 = sub_26932C390();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v107 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v107 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  v23 = *(v11 + 16);
  v113 = a1;
  v114 = v11 + 16;
  v112 = v23;
  v23(&v107 - v21, a1, v10);
  sub_26932C380();
  sub_269326E04();
  LOBYTE(a1) = sub_26932D750();
  v24 = *(v11 + 8);
  v24(v20, v10);
  if (a1)
  {
    v24(v22, v10);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v25 = sub_26932D6B0();
    __swift_project_value_buffer(v25, qword_2814B2430);
    v26 = v116;

    v27 = v117;

    v28 = sub_26932D690();
    v29 = sub_26932D9B0();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v115;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v118[0] = v33;
      *v32 = 136315394;
      if (v27)
      {
        v34 = v115;
      }

      else
      {
        v34 = 7104878;
      }

      if (v27)
      {
        v35 = v117;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_2692DD5A8(v34, v35, v118);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = v110;
      if (v116)
      {
        v38 = v110;
      }

      else
      {
        v38 = 7104878;
      }

      v26 = v116;
      if (v116)
      {
        v39 = v116;
      }

      else
      {
        v39 = 0xE300000000000000;
      }

      v40 = sub_2692DD5A8(v38, v39, v118);
      v27 = v117;

      *(v32 + 14) = v40;
      v31 = v115;
      _os_log_impl(&dword_2692D8000, v28, v29, "Creating manifest for clarification dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v33, -1, -1);
      MEMORY[0x26D639280](v32, -1, -1);

      goto LABEL_36;
    }

LABEL_35:

    v37 = v110;
LABEL_36:
    v53 = v112(v20, v113, v10);
    MEMORY[0x28223BE20](v53);
    *(&v107 - 6) = v109;
    *(&v107 - 5) = v31;
    *(&v107 - 4) = v27;
    *(&v107 - 3) = v37;
    *(&v107 - 2) = v26;
    return sub_26932C5A0();
  }

  sub_26932C370();
  v41 = sub_26932D750();
  v24(v20, v10);
  if (v41)
  {
    v24(v22, v10);
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v42 = sub_26932D6B0();
    __swift_project_value_buffer(v42, qword_2814B2430);
    v26 = v116;

    v27 = v117;

    v28 = sub_26932D690();
    v43 = sub_26932D9B0();

    v44 = os_log_type_enabled(v28, v43);
    v31 = v115;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v118[0] = v46;
      *v45 = 136315394;
      if (v27)
      {
        v47 = v115;
      }

      else
      {
        v47 = 7104878;
      }

      if (v27)
      {
        v48 = v117;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v49 = sub_2692DD5A8(v47, v48, v118);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v37 = v110;
      if (v116)
      {
        v50 = v110;
      }

      else
      {
        v50 = 7104878;
      }

      v26 = v116;
      if (v116)
      {
        v51 = v116;
      }

      else
      {
        v51 = 0xE300000000000000;
      }

      v52 = sub_2692DD5A8(v50, v51, v118);
      v27 = v117;

      *(v45 + 14) = v52;
      v31 = v115;
      _os_log_impl(&dword_2692D8000, v28, v43, "Creating manifest for confirmation dialog phase with listenAfterSpeaking = true, sessionID %s, responseViewId %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v46, -1, -1);
      MEMORY[0x26D639280](v45, -1, -1);

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  sub_26932C360();
  v54 = sub_26932D750();
  v24(v20, v10);
  v24(v22, v10);
  v55 = v117;
  if ((v54 & 1) == 0 || (a7 & 1) == 0)
  {
    goto LABEL_60;
  }

  if (qword_2814B2520)
  {
    v56 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v56 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v56;
  }

  sub_2692EB3E4(v56 + 16, v118);

  __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  v57 = sub_26932C340();
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  if (v57)
  {
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v58 = sub_26932D6B0();
    __swift_project_value_buffer(v58, qword_2814B2430);
    v59 = v112;
    v112(v17, v113, v10);

    v60 = sub_26932D690();
    v61 = sub_26932D9B0();

    v108 = v61;
    v62 = v61;
    v63 = v60;
    if (os_log_type_enabled(v60, v62))
    {
      v64 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v118[0] = v107;
      *v64 = 136315650;
      v112(v20, v17, v10);
      v65 = sub_26932D790();
      v67 = v66;
      v24(v17, v10);
      v68 = sub_2692DD5A8(v65, v67, v118);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = v115;
      if (v117)
      {
        v70 = v115;
      }

      else
      {
        v70 = 7104878;
      }

      if (v117)
      {
        v71 = v117;
      }

      else
      {
        v71 = 0xE300000000000000;
      }

      v72 = sub_2692DD5A8(v70, v71, v118);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      v73 = v116;
      v74 = v110;
      if (v116)
      {
        v75 = v110;
      }

      else
      {
        v75 = 7104878;
      }

      if (v116)
      {
        v76 = v116;
      }

      else
      {
        v76 = 0xE300000000000000;
      }

      v55 = v117;

      v77 = sub_2692DD5A8(v75, v76, v118);

      *(v64 + 24) = v77;
      _os_log_impl(&dword_2692D8000, v63, v108, "Using default dialog manifest with assistant dismissal for %s with session ID %s, responseViewId %s", v64, 0x20u);
      v78 = v107;
      swift_arrayDestroy();
      MEMORY[0x26D639280](v78, -1, -1);
      v79 = v64;
      v59 = v112;
      MEMORY[0x26D639280](v79, -1, -1);

      v80 = v73;
    }

    else
    {

      v24(v17, v10);
      v69 = v115;
      v80 = v116;
      v74 = v110;
    }

    v105 = v59(v20, v113, v10);
    MEMORY[0x28223BE20](v105);
    *(&v107 - 6) = v109;
    *(&v107 - 5) = v69;
    *(&v107 - 4) = v55;
    *(&v107 - 3) = v74;
    *(&v107 - 2) = v80;
  }

  else
  {
LABEL_60:
    if (qword_2814B2428 != -1)
    {
      swift_once();
    }

    v81 = sub_26932D6B0();
    __swift_project_value_buffer(v81, qword_2814B2430);
    v82 = v112;
    v112(v14, v113, v10);

    v83 = sub_26932D690();
    v84 = sub_26932D9B0();

    v108 = v84;
    v85 = v84;
    v86 = v83;
    if (os_log_type_enabled(v83, v85))
    {
      v87 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v118[0] = v107;
      *v87 = 136315650;
      v112(v20, v14, v10);
      v88 = sub_26932D790();
      v90 = v89;
      v24(v14, v10);
      v91 = sub_2692DD5A8(v88, v90, v118);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v92 = v115;
      if (v117)
      {
        v93 = v115;
      }

      else
      {
        v93 = 7104878;
      }

      if (v117)
      {
        v94 = v117;
      }

      else
      {
        v94 = 0xE300000000000000;
      }

      v95 = sub_2692DD5A8(v93, v94, v118);

      *(v87 + 14) = v95;
      *(v87 + 22) = 2080;
      v96 = v116;
      v97 = v110;
      if (v116)
      {
        v98 = v110;
      }

      else
      {
        v98 = 7104878;
      }

      if (v116)
      {
        v99 = v116;
      }

      else
      {
        v99 = 0xE300000000000000;
      }

      v55 = v117;

      v100 = sub_2692DD5A8(v98, v99, v118);

      *(v87 + 24) = v100;
      v101 = v86;
      _os_log_impl(&dword_2692D8000, v86, v108, "Using default dialog manifest for %s with session ID %s, responseViewId %s", v87, 0x20u);
      v102 = v107;
      swift_arrayDestroy();
      MEMORY[0x26D639280](v102, -1, -1);
      v103 = v87;
      v82 = v112;
      MEMORY[0x26D639280](v103, -1, -1);
    }

    else
    {

      v24(v14, v10);
      v92 = v115;
      v96 = v116;
      v97 = v110;
    }

    v104 = v82(v20, v113, v10);
    MEMORY[0x28223BE20](v104);
    *(&v107 - 6) = v109;
    *(&v107 - 5) = v92;
    *(&v107 - 4) = v55;
    *(&v107 - 3) = v97;
    *(&v107 - 2) = v96;
  }

  return sub_26932C5A0();
}

uint64_t sub_26932B568()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2430);
  v1 = __swift_project_value_buffer(v0, qword_2814B2430);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26932B630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_26932C3B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C5F0();
  (*(v11 + 104))(v13, *MEMORY[0x277D5BC50], v10);
  sub_26932C5B0();
  v14 = sub_26932C470();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a2, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}

uint64_t sub_26932B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_26932C5F0();
  v10 = sub_26932C470();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}

uint64_t sub_26932B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_26932C470();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_26932C5D0();

  sub_26932C600();

  sub_26932C5C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26932EA80;
  *(v12 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  return sub_26932C5E0();
}

uint64_t sub_26932BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308B48, &qword_269332168);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_26932C470();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_26932C5D0();

  sub_26932C600();

  return sub_26932C5C0();
}