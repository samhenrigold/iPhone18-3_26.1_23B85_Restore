uint64_t sub_22C3D9564()
{
  v1 = v0;
  v2 = sub_22C90952C();
  sub_22C369824();
  v57 = v3;
  MEMORY[0x28223BE20](v4);
  v56 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v55 = v53 - v12;
  sub_22C369930();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v53 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v53 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v53 - v23;
  v26 = *(v25 + 2);
  v27 = v1;
  v28 = v25;
  v26(v53 - v23, v27, v6);
  v29 = (*(v28 + 11))(v24, v6);
  if (v29 == *MEMORY[0x277D72AD0])
  {
    v26(v10, v24, v6);
    (*(v28 + 12))(v10, v6);
    v30 = swift_projectBox();
    v31 = v57;
    if ((*(v57 + 11))(v30, v2) != *MEMORY[0x277D72D50])
    {

      v36 = 0;
      goto LABEL_11;
    }

    v32 = v56;
    (*(v31 + 2))(v56, v30, v2);
    (*(v31 + 12))(v32, v2);
    v33 = sub_22C9094EC();
    v34 = swift_projectBox();
    v35 = (*(*(v33 - 8) + 88))(v34, v33);
    if (v35 == *MEMORY[0x277D72CE0])
    {

      v36 = 1;
LABEL_11:
      (*(v28 + 1))(v24, v6);
      return v36 & 1;
    }

    v36 = v35 == *MEMORY[0x277D72C88];

LABEL_10:

    goto LABEL_11;
  }

  v57 = v24;
  if (v29 == *MEMORY[0x277D72AB0] || v29 == *MEMORY[0x277D72AE8])
  {
    v24 = v57;
    v26(v22, v57, v6);
    (*(v28 + 12))(v22, v6);
    v37 = swift_projectBox();
    v26(v19, v37, v6);
    v36 = sub_22C3D9564();
    (*(v28 + 1))(v19, v6);
    goto LABEL_10;
  }

  if (v29 != *MEMORY[0x277D72AD8])
  {
    v36 = 0;
    v24 = v57;
    goto LABEL_11;
  }

  v26(v16, v57, v6);
  v56 = v28;
  v39 = v28 + 96;
  (*(v28 + 12))(v16, v6);
  v53[0] = *v16;
  v40 = *(v53[0] + 16);
  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 56);
  v45 = (v42 + 63) >> 6;
  v53[1] = v39 - 88;
  v54 = v40;

  v46 = 0;
  v47 = v56;
  while (v44)
  {
    v48 = v46;
    v49 = v26;
LABEL_23:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = v55;
    v49(v55, *(v54 + 48) + *(v47 + 9) * (v50 | (v48 << 6)), v6);
    v52 = sub_22C3D9564();
    result = (*(v47 + 1))(v51, v6);
    if (v52)
    {

      v36 = 1;
LABEL_27:
      v28 = v56;
      v24 = v57;
      goto LABEL_11;
    }
  }

  v49 = v26;
  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v45)
    {

      v36 = 0;
      goto LABEL_27;
    }

    v44 = *(v41 + 8 * v48);
    ++v46;
    if (v44)
    {
      v46 = v48;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3D9B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAF60, &qword_22C90D808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3D9B7C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAF60, &qword_22C90D808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3D9C38()
{
  result = qword_27D9BB6E0;
  if (!qword_27D9BB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6E0);
  }

  return result;
}

__n128 sub_22C3D9C8C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C3D9C98(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3D9CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringExprsAreQuotesRequirement.AlignmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C3D9E0C()
{
  result = qword_27D9BB6E8;
  if (!qword_27D9BB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6E8);
  }

  return result;
}

unint64_t sub_22C3D9E60()
{
  result = qword_27D9BB6F0;
  if (!qword_27D9BB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB6F0);
  }

  return result;
}

_BYTE *sub_22C3D9EC4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *sub_22C3D9F74@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 56))(v11);
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
  v5 = sub_22C90B6AC();
  result = sub_22C3DBC40(v5, &v14, v12);
  if (!v3)
  {
    v10 = v13;
    v7 = v13;
    v8 = sub_22C374168(v12, v13);
    *(a3 + 24) = v10;
    v9 = sub_22C36D548(a3);
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    return sub_22C36FF94(v12);
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.GMSUtilities.runEmptyRequestAndGetModelInformation(locale:queryableToolbox:)(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v2[30] = swift_task_alloc();
  type metadata accessor for FullPlannerPreferences(0);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DA18C, 0, 0);
}

uint64_t sub_22C3DA18C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  FullPlannerPreferences.init()(v2);
  v6 = sub_22C90077C();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  sub_22C57689C();
  v7 = sub_22C90876C();
  sub_22C369ACC(v7);
  v8 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C369ACC(v8);
  sub_22C3DA748(v2, v1 + v4[10]);
  *(v1 + v4[5]) = v3;
  v9 = (v1 + v4[8]);
  *v9 = 0;
  v9[1] = 0;

  sub_22C4DE060(6u, v1, (v0 + 16));
  sub_22C3731C0(*(v0 + 240));
  v10 = *(v0 + 48);
  sub_22C36D1E4(v0 + 16, *(v0 + 40));
  sub_22C3D9F74(v10, v0 + 56);
  sub_22C378A4C(v0 + 56, v0 + 136);
  sub_22C3A5908(&qword_27D9BB6F8, &qword_22C90FCF8);
  sub_22C3A5908(&qword_27D9BB700, &qword_22C90FD00);
  if (swift_dynamicCast())
  {
    sub_22C36C730((v0 + 176), v0 + 96);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    sub_22C374168((v0 + 96), v11);
    v18 = (*(v12 + 8) + **(v12 + 8));
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_22C3DA4E8;

    return v18(v11, v12);
  }

  else
  {
    v15 = *(v0 + 248);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    sub_22C3DA80C(v0 + 176);
    sub_22C3DA874();
    swift_allocError();
    swift_willThrow();
    sub_22C36FF94((v0 + 56));
    sub_22C36A730();
    sub_22C3DA7AC(v15, v16);
    sub_22C36FF94((v0 + 16));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22C3DA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  *(*v9 + 264) = v8;

  if (v8)
  {
    v13 = sub_22C3DA6B4;
  }

  else
  {
    *(v12 + 272) = a2;
    *(v12 + 280) = a1;
    v13 = sub_22C3DA61C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22C3DA61C()
{
  v1 = v0[31];
  sub_22C36FF94(v0 + 7);
  sub_22C36A730();
  sub_22C3DA7AC(v1, v2);
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 2);

  v3 = v0[1];
  v5 = v0[34];
  v4 = v0[35];

  return v3(v4, v5);
}

uint64_t sub_22C3DA6B4()
{
  v1 = v0[31];
  sub_22C36FF94(v0 + 7);
  sub_22C36A730();
  sub_22C3DA7AC(v1, v2);
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22C3DA748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3DA7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22C3DA80C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB708, &qword_22C90FD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3DA874()
{
  result = qword_27D9BB710;
  if (!qword_27D9BB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB710);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.GMSUtilities.GMSUtilitiesError.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

unint64_t sub_22C3DA970()
{
  result = qword_27D9BB718;
  if (!qword_27D9BB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB718);
  }

  return result;
}

_BYTE *sub_22C3DA9DC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.getPromptGrammarGenerator(preferences:locale:queryableToolbox:toolsOverride:baseGrammar:structuredSearchToolDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a7;
  v52 = a6;
  v49 = a5;
  v48 = a4;
  v53 = a3;
  v47 = a2;
  v46 = a8;
  v10 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v43 - v12);
  v14 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  v67 = &v43 - v16;
  v17 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = sub_22C90077C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  result = sub_22C4DE310();
  if (!v8)
  {
    v30 = *(v22 + 16);
    v45 = result;
    v30(v24, v47, v21);
    v44 = v20;
    sub_22C3DB138(v48, v20, &qword_27D9BB730, &unk_22C90FE30);
    v31 = sub_22C90876C();
    sub_22C36C640(v67, 1, 1, v31);
    v32 = v52;
    v48 = 0;
    v33 = v49;
    if (!v52)
    {
      v33 = 0;
    }

    v49 = v33;
    v34 = v52 ? 0 : 0x3000000000000007;
    v35 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
    sub_22C3DB138(v50, v13 + *(v35 + 20), &qword_27D9BB738, &unk_22C9185A0);
    *v13 = v49;
    v13[1] = v32;
    v13[2] = v34;
    v13[3] = 0;
    sub_22C36C640(v13, 0, 1, v35);
    sub_22C3DA748(v51, &v28[v25[10]]);
    (*(v22 + 32))(v28, v24, v21);
    *&v28[v25[5]] = v53;
    sub_22C3DB08C(v44, &v28[v25[6]], &qword_27D9BB730, &unk_22C90FE30);
    sub_22C3DB08C(v67, &v28[v25[7]], &qword_27D9BB728, &qword_22C911230);
    v36 = &v28[v25[8]];
    *v36 = 0;
    *(v36 + 1) = 0;
    sub_22C3DB08C(v13, &v28[v25[9]], &qword_27D9BB720, &unk_22C90FE20);

    v37 = v48;
    sub_22C4DE060(v45, v28, &v64);
    result = sub_22C3DB0DC(v28);
    if (!v37)
    {
      v38 = v65;
      v39 = v66;
      sub_22C36D1E4(&v64, v65);
      (*(v39 + 96))(v57, v38, v39);
      if (v58)
      {
        v54[0] = *&v57[0];
        sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
        swift_willThrowTypedImpl();
        return sub_22C36FF94(&v64);
      }

      sub_22C36C730(v57, &v59);
      sub_22C3A5908(&qword_27D9BB740, &qword_22C90FE48);
      sub_22C3A5908(&qword_27D9BB748, &qword_22C90FE50);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v63 = 0;
        memset(v62, 0, sizeof(v62));
      }

      sub_22C3DB138(v62, v54, &qword_27D9BB750, &qword_22C90FE58);
      v40 = v55;
      if (v55)
      {
        v41 = v56;
        sub_22C374168(v54, v55);
        (*(v41 + 8))(&v59, v40, v41);
        sub_22C36FF94(v54);
        if (*(&v60 + 1))
        {
          sub_22C36C730(&v59, v57);
          sub_22C36C730(v57, v46);
LABEL_17:
          sub_22C36DD28(v62, &qword_27D9BB750, &qword_22C90FE58);
          return sub_22C36FF94(&v64);
        }
      }

      else
      {
        sub_22C36DD28(v54, &qword_27D9BB750, &qword_22C90FE58);
        v59 = 0u;
        v60 = 0u;
        v61 = 0;
      }

      sub_22C36DD28(&v59, &qword_27D9BB758, &qword_22C90FE60);
      v42 = v46;
      *(v46 + 32) = 0;
      *v42 = 0u;
      v42[1] = 0u;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_22C3DB08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22C3DB0DC(uint64_t a1)
{
  v2 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3DB138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t FullPlannerCLISupport.IFTool.CLIGrammarGenerator.generateGrammar(grammarComponents:quotableStrings:)()
{
  sub_22C369980();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v5);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DB220, 0, 0);
}

uint64_t sub_22C3DB220()
{
  v1 = v0;
  v2 = v0[19];
  sub_22C378A4C(v0[20], (v0 + 12));
  v47 = v0[16];
  v48 = v0[15];
  sub_22C374168(v0 + 12, v48);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v49 = v0;
  if (v3)
  {
    v5 = v0[19];
    v59 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v3, 0);
    v6 = (v5 + 40);
    v4 = v59;
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = 4;
      *(v10 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v10 + 32) = v11;
      v13 = *(v59 + 16);
      v12 = *(v59 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_22C3B63D4(v12 > 1, v13 + 1, 1);
      }

      *(v59 + 16) = v13 + 1;
      *(v59 + 8 * v13 + 32) = v10 | 0xA000000000000000;
      v6 += 2;
      --v3;
    }

    while (v3);
    v1 = v49;
  }

  v14 = v1[18];
  v15 = sub_22C3DB9E8(v4, &unk_283FB26A0, &qword_27D9BB768, &unk_22C912C90);

  sub_22C369AEC();
  v16 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v46 = v16;
    v20 = v1[18];
    v58 = MEMORY[0x277D84F90];
    sub_22C3B67A4(0, v18, 0);
    v21 = 0;
    v19 = v58;
    v50 = v18;
    v51 = v20 + 32;
    v22 = v18;
    do
    {
      v23 = (v51 + 40 * v21);
      v24 = v23[3];
      v25 = v23[4];
      v26 = *(v25 + 16);
      v55 = *v23;
      v56 = v23[2];
      v54 = v23[1];
      if (v26)
      {
        v53 = v19;
        v60 = MEMORY[0x277D84F90];

        v52 = v24;

        sub_22C3B63D4(0, v26, 0);
        v27 = v60;
        v28 = (v25 + 40);
        do
        {
          v30 = *(v28 - 1);
          v29 = *v28;
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v29;
          v33 = *(v60 + 16);
          v32 = *(v60 + 24);

          if (v33 >= v32 >> 1)
          {
            sub_22C3B63D4(v32 > 1, v33 + 1, 1);
          }

          *(v60 + 16) = v33 + 1;
          *(v60 + 8 * v33 + 32) = v31;
          v28 += 2;
          --v26;
        }

        while (v26);
        v24 = v52;
        v19 = v53;
        v22 = v50;
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }

      v35 = *(v19 + 16);
      v34 = *(v19 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22C3B67A4(v34 > 1, v35 + 1, 1);
      }

      ++v21;
      *(v19 + 16) = v35 + 1;
      v36 = (v19 + 40 * v35);
      v36[4] = v55;
      v36[5] = v54;
      v36[6] = v56;
      v36[7] = v24;
      v36[8] = v27;
    }

    while (v21 != v22);
    v1 = v49;
    v16 = v46;
  }

  v37 = v1[21];
  v1[10] = &type metadata for AFMTokenProvider_v1_0;
  v1[11] = &off_283FB8258;
  v38 = swift_allocObject();
  v1[7] = v38;
  v38[2] = 0;
  v38[3] = 0xE000000000000000;
  v38[4] = 0x6E655F6E7275743CLL;
  v38[5] = 0xEB00000000203E64;
  v38[6] = 8202;
  v38[7] = 0xE200000000000000;
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  type metadata accessor for _PromptMapper._ToolPromptMap(0);
  sub_22C3DBAD0();
  v39 = sub_22C909F0C();
  v40 = sub_22C906D3C();
  sub_22C36C640(v37, 1, 1, v40);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v41 = sub_22C480800(v37);
  v1[2] = v16 | 0x6000000000000000;
  v1[3] = v39;
  v42 = MEMORY[0x277D84FA0];
  v1[4] = v19;
  v1[5] = v42;
  v1[6] = v41;
  v57 = (*(v47 + 8) + **(v47 + 8));
  v43 = swift_task_alloc();
  v1[22] = v43;
  *v43 = v1;
  v43[1] = sub_22C3DB7C0;
  v44 = v1[17];

  return v57(v44, v1 + 2, v48, v47);
}

uint64_t sub_22C3DB7C0()
{
  sub_22C369980();
  v2 = *v1;
  *(v2 + 184) = v0;

  sub_22C3DBB34(v2 + 16);
  if (v0)
  {
    v3 = sub_22C3DB944;
  }

  else
  {
    v3 = sub_22C3DB8D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C3DB8D8()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22C3DB944()
{
  sub_22C369980();
  sub_22C36FF94((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22C3DB9E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v12 = MEMORY[0x277D84F90];
    sub_22C90B01C();
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      sub_22C3A5908(a3, a4);
      sub_22C369AEC();
      *(swift_allocObject() + 16) = v10;

      sub_22C90AFEC();
      sub_22C90B02C();
      sub_22C90B03C();
      sub_22C90AFFC();
      --v4;
    }

    while (v4);
    v5 = v12;
  }

  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

unint64_t sub_22C3DBAD0()
{
  result = qword_27D9BB778;
  if (!qword_27D9BB778)
  {
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB778);
  }

  return result;
}

uint64_t sub_22C3DBBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3DBBE4(uint64_t result, int a2, int a3)
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

uint64_t sub_22C3DBC40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t static FullPlannerCLISupport.IFTool.getPromptRenderer(promptVersion:locale:queryableToolbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v15 = sub_22C4DE908(a1, a2);
    if (v15 == 6)
    {
      sub_22C3DD0D8();
      swift_allocError();
      *v16 = 0;
      v16[1] = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v15 = 6;
  }

  sub_22C90077C();
  sub_22C36985C();
  (*(v18 + 16))(v14, a3);
  v19 = sub_22C906A5C();
  sub_22C369AF8(v19);
  v20 = sub_22C90876C();
  sub_22C369AF8(v20);
  v21 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C369AF8(v21);
  FullPlannerPreferences.init()(&v14[v11[10]]);
  *&v14[v11[5]] = a4;
  v22 = &v14[v11[8]];
  *v22 = 0;
  *(v22 + 1) = 0;

  sub_22C4DE060(v15, v14, v26);
  result = sub_22C3DB0DC(v14);
  if (!v5)
  {
    sub_22C378A4C(v26, v25);
    v23 = _s14descr283FAC5B1V18CLIPromptGeneratorCMa();
    v24 = swift_allocObject();
    sub_22C36C730(v25, v24 + 16);
    a5[3] = v23;
    a5[4] = &off_283FB2770;
    *a5 = v24;
    return sub_22C36FF94(v26);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.CLIPromptRendererError.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3DBFD4(uint64_t a1)
{
  v2 = sub_22C3DD518();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3DC010(uint64_t a1)
{
  v2 = sub_22C3DD518();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C3DC04C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22C3DC06C, 0, 0);
}

uint64_t sub_22C3DC06C()
{
  v1 = v0[6];
  swift_beginAccess();
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  sub_22C36D1E4(v1 + 16, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22C3DC140;
  v5 = v0[5];

  return sub_22C3DC300(v5, v3, v2);
}

uint64_t sub_22C3DC140(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v7 = v6;
  v8 = *v3;
  sub_22C369970();
  *v9 = v8;
  *(v7 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_22C3DC2A0, 0, 0);
  }

  else
  {
    swift_endAccess();
    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_22C3DC2A0()
{
  swift_endAccess();
  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3DC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[45] = sub_22C587C84(0);
  v4[46] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[47] = AssociatedTypeWitness;
  v8 = type metadata accessor for PlannerPromptGeneratorOutput(0, AssociatedTypeWitness, v6, v7);
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v9 = sub_22C90880C();
  v4[53] = v9;
  v4[54] = *(v9 - 8);
  v4[55] = swift_task_alloc();
  v10 = sub_22C9087BC();
  v4[56] = v10;
  v4[57] = *(v10 - 8);
  v4[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3DC4FC, 0, 0);
}

uint64_t sub_22C3DC4FC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  (*(*(v0 + 432) + 16))(*(v0 + 440), *(v0 + 328), *(v0 + 424));
  sub_22C90879C();
  (*(v2 + 48))(v3, v2);
  *(v0 + 320) = v1;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
  v4 = sub_22C90B6AC();
  sub_22C3DBC40(v4, v0 + 312, v0 + 272);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  sub_22C374168((v0 + 272), v7);
  v9 = sub_22C9073DC();
  *(v0 + 472) = v9;
  sub_22C36C640(v5, 1, 1, v9);
  *(v0 + 268) = v6[5];
  sub_22C90068C();
  v10 = v6[6];
  *(v0 + 496) = v10;
  v11 = sub_22C90451C();
  sub_22C36C640(v5 + v10, 1, 1, v11);
  *(v0 + 500) = v6[7];
  sub_22C90068C();
  *(v0 + 504) = v6[8];
  sub_22C90068C();
  *(v0 + 508) = v6[9];
  sub_22C90068C();
  v17 = (*(v8 + 16) + **(v8 + 16));
  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  *v12 = v0;
  v12[1] = sub_22C3DC808;
  v13 = *(v0 + 464);
  v14 = *(v0 + 416);
  v15 = *(v0 + 368);

  return v17(v14, v13, v15, v7, v8);
}

uint64_t sub_22C3DC808()
{
  sub_22C369A3C();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v3 + 488) = v0;

  if (v0)
  {
    v6 = sub_22C3DCD98;
  }

  else
  {
    v7 = *(v3 + 368);
    if (sub_22C370B74(v7, 1, *(v3 + 472)) != 1)
    {
      sub_22C90069C();
      sub_22C36985C();
      (*(v8 + 8))(v7);
      v7 = *(v3 + 368);
    }

    v9 = *(v3 + 508);
    v10 = *(v3 + 504);
    v11 = *(v3 + 500);
    v12 = *(v3 + 496);
    v13 = *(v3 + 268);
    v14 = sub_22C90069C();
    sub_22C36985C();
    v16 = *(v15 + 8);
    v16(v7 + v13, v14);
    sub_22C3DD4B0(v7 + v12);
    v16(v7 + v11, v14);
    v16(v7 + v10, v14);
    v16(v7 + v9, v14);
    v6 = sub_22C3DCA0C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22C3DCA0C()
{
  v1 = *(v0[49] + 16);
  v1(v0[51], v0[52], v0[48]);
  sub_22C3A5908(&qword_27D9BB7A8, &qword_22C910150);
  if (swift_dynamicCast())
  {
    v3 = v0[57];
    v2 = v0[58];
    v4 = v0[56];
    (*(v0[49] + 8))(v0[52], v0[48]);
    (*(v3 + 8))(v2, v4);
    v5 = v0[17];
    v16 = v0[16];

LABEL_5:

    sub_22C36FF94(v0 + 34);

    v13 = v0[1];

    return v13(v16, v5);
  }

  v1(v0[50], v0[52], v0[48]);
  sub_22C3A5908(&qword_27D9BB7B0, &qword_22C910158);
  v6 = swift_dynamicCast();
  v8 = v0[57];
  v7 = v0[58];
  v9 = v0[56];
  v10 = v0[52];
  v11 = v0[48];
  v12 = v0[49];
  if (v6)
  {
    (*(v12 + 8))(v0[52], v0[48]);
    (*(v8 + 8))(v7, v9);
    v5 = v0[3];
    v16 = v0[2];

    goto LABEL_5;
  }

  sub_22C3DD188();
  swift_allocError();
  swift_willThrow();
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);
  sub_22C36FF94(v0 + 34);

  sub_22C369A24();

  return v15();
}

uint64_t sub_22C3DCD98()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 368);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  if (sub_22C370B74(v2, 1, v1) != 1)
  {
    v3 = *(v0 + 368);
    sub_22C90069C();
    sub_22C36985C();
    (*(v4 + 8))(v3);
  }

  v5 = *(v0 + 508);
  v6 = *(v0 + 504);
  v7 = *(v0 + 500);
  v8 = *(v0 + 496);
  v9 = *(v0 + 268);
  v10 = *(v0 + 368);
  v11 = sub_22C90069C();
  sub_22C36985C();
  v13 = *(v12 + 8);
  v13(v10 + v9, v11);
  sub_22C3DD4B0(v10 + v8);
  v13(v10 + v7, v11);
  v13(v10 + v6, v11);
  v13(v10 + v5, v11);
  v14 = sub_22C36FF94((v0 + 272));
  sub_22C3DD56C(v14, v15, v16, v17, v18, v19, v20, v21);

  sub_22C369A24();

  return v22();
}

uint64_t sub_22C3DCF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3DCFD4;

  return sub_22C3DC04C(a1);
}

uint64_t sub_22C3DCFD4(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

unint64_t sub_22C3DD0D8()
{
  result = qword_27D9BB788;
  if (!qword_27D9BB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB788);
  }

  return result;
}

unint64_t sub_22C3DD130()
{
  result = qword_27D9BB790;
  if (!qword_27D9BB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB790);
  }

  return result;
}

unint64_t sub_22C3DD188()
{
  result = qword_27D9BB798;
  if (!qword_27D9BB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB798);
  }

  return result;
}

_BYTE *_s14descr283FAC5B1V22CLIPromptRendererErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of FullPlannerCLISupport.IFTool.CLIPromptGenerating.generatePrompt(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3DD3B0;

  return v9(a1, a2, a3);
}

uint64_t sub_22C3DD3B0(uint64_t a1, uint64_t a2)
{
  sub_22C369A3C();
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t sub_22C3DD4B0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3DD518()
{
  result = qword_27D9BB7B8;
  if (!qword_27D9BB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7B8);
  }

  return result;
}

uint64_t sub_22C3DD56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

unint64_t static FullPlannerCLISupport.IFTool.validateModelResponse(preferences:locale:queryableToolbox:modelResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a3;
  v44 = a2;
  v9 = sub_22C902D3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C4DE310();
  if (!v5)
  {
    v41 = v12;
    v42 = a4;
    v43 = a5;
    v39 = v9;
    v40 = v10;
    v18 = result;
    sub_22C90077C();
    sub_22C36985C();
    (*(v19 + 16))(v16, v44);
    sub_22C906A5C();
    sub_22C36A748();
    sub_22C36C640(v20, v21, v22, v23);
    sub_22C90876C();
    sub_22C36A748();
    sub_22C36C640(v24, v25, v26, v27);
    type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
    sub_22C36A748();
    sub_22C36C640(v28, v29, v30, v31);
    sub_22C3DA748(a1, &v16[v13[10]]);
    *&v16[v13[5]] = v53;
    v32 = &v16[v13[8]];
    *v32 = 0;
    *(v32 + 1) = 0;

    sub_22C4DE060(v18, v16, v50);
    sub_22C3DB0DC(v16);
    v33 = v51;
    v34 = v52;
    sub_22C36D1E4(v50, v51);
    (*(v34 + 64))(v48, v33, v34);
    if (v49)
    {
      swift_willThrow();
    }

    else
    {
      sub_22C36C730(v48, v45);
      v35 = v46;
      v36 = v47;
      sub_22C374168(v45, v46);
      v37 = v41;
      (*(v36 + 8))(v42, v43, v35, v36);
      (*(v40 + 8))(v37, v39);
      sub_22C36FF94(v45);
    }

    return sub_22C36FF94(v50);
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.modelResponseToPlanValue(preferences:locale:queryableToolbox:modelResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = sub_22C587C84(0);
  v6[32] = v7;
  sub_22C369914(v7);
  v6[33] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v8);
  v6[34] = sub_22C3699D4();
  v9 = sub_22C90069C();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = sub_22C3699D4();
  v10 = sub_22C90880C();
  sub_22C369914(v10);
  v6[38] = sub_22C3699D4();
  v11 = sub_22C9087BC();
  v6[39] = v11;
  v6[40] = *(v11 - 8);
  v6[41] = sub_22C3699D4();
  v12 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v6[42] = v12;
  sub_22C369914(v12);
  v6[43] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C3DDA5C, 0, 0);
}

uint64_t sub_22C3DDA5C()
{
  v1 = sub_22C4DE310();
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);
  sub_22C90077C();
  sub_22C36985C();
  (*(v7 + 16))(v2, v5);
  sub_22C906A5C();
  sub_22C36A748();
  sub_22C36C640(v8, v9, v10, v11);
  sub_22C90876C();
  sub_22C36A748();
  sub_22C36C640(v12, v13, v14, v15);
  type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v19);
  sub_22C3DA748(v6, v2 + v3[10]);
  *(v2 + v3[5]) = v4;
  v20 = (v2 + v3[8]);
  *v20 = 0;
  v20[1] = 0;

  sub_22C4DE060(v1, v2, (v0 + 120));
  sub_22C3DB0DC(*(v0 + 344));
  v21 = *(v0 + 144);
  v22 = *(v0 + 152);
  sub_22C36D1E4(v0 + 120, v21);
  (*(v22 + 104))(v21, v22);
  if (*(v0 + 112))
  {
    *(v0 + 200) = *(v0 + 72);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94((v0 + 120));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    sub_22C36C730((v0 + 72), v0 + 160);
    sub_22C90068C();
    sub_22C9087EC();
    sub_22C90879C();
    sub_22C374168((v0 + 160), *(v0 + 184));
    sub_22C56F0A0((v0 + 16));
    sub_22C906D3C();
    sub_22C36A748();
    sub_22C36C640(v27, v28, v29, v30);
    type metadata accessor for RenderingState(0);
    swift_allocObject();
    *(v0 + 352) = sub_22C480800(v25);
    *(v0 + 360) = sub_22C9073DC();
    sub_22C36A748();
    sub_22C36C640(v31, v32, v33, v34);
    *(v0 + 116) = v26[5];
    sub_22C90068C();
    *(v0 + 400) = v26[6];
    sub_22C90451C();
    sub_22C36A748();
    sub_22C36C640(v35, v36, v37, v38);
    *(v0 + 404) = v26[7];
    sub_22C90068C();
    *(v0 + 408) = v26[8];
    sub_22C90068C();
    *(v0 + 412) = v26[9];
    sub_22C90068C();
    v39 = swift_task_alloc();
    *(v0 + 368) = v39;
    *v39 = v0;
    v39[1] = sub_22C3DDE40;

    return sub_22C4211E0();
  }
}

uint64_t sub_22C3DDE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  *(*v9 + 376) = v8;

  if (v8)
  {

    sub_22C3DE2C8(v12 + 16);
    v13 = sub_22C3DE050;
  }

  else
  {
    v14 = *(v12 + 360);
    v15 = *(v12 + 288);
    v16 = *(v12 + 264);

    sub_22C3DE2C8(v12 + 16);
    v17 = sub_22C370B74(v16, 1, v14);
    v18 = *(v15 + 8);
    v27 = a1;
    if (v17 != 1)
    {
      v18(*(v12 + 264), *(v12 + 280));
    }

    v26 = *(v12 + 412);
    v19 = *(v12 + 408);
    v20 = *(v12 + 404);
    v21 = *(v12 + 400);
    v22 = *(v12 + 116);
    v23 = *(v12 + 280);
    v24 = *(v12 + 264);
    *(v12 + 384) = a3;
    *(v12 + 392) = v27;
    v18(v24 + v22, v23);
    sub_22C3DD4B0(v24 + v21);
    v18(v24 + v20, v23);
    v18(v24 + v19, v23);
    v18(v24 + v26, v23);
    v13 = sub_22C3DE1CC;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22C3DE050()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v4 = sub_22C370B74(v3, 1, v1);
  v5 = *(v2 + 8);
  if (v4 != 1)
  {
    v5(*(v0 + 264), *(v0 + 280));
  }

  v6 = *(v0 + 412);
  v7 = *(v0 + 408);
  v8 = *(v0 + 404);
  v9 = *(v0 + 400);
  v10 = *(v0 + 280);
  v11 = *(v0 + 264);
  v5(v11 + *(v0 + 116), v10);
  sub_22C3DD4B0(v11 + v9);
  v5(v11 + v8, v10);
  v5(v11 + v7, v10);
  v5(v11 + v6, v10);
  sub_22C36FF94((v0 + 160));
  sub_22C36FF94((v0 + 120));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22C3DE1CC()
{
  v1 = v0[49];
  v2 = v0[26];
  (*(v0[40] + 8))(v0[41], v0[39]);

  *v2 = 0;
  v2[1] = 0;
  v2[2] = v1;
  sub_22C36FF94(v0 + 20);
  sub_22C36FF94(v0 + 15);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22C3DE31C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90B21C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3DE370(char a1)
{
  if (a1)
  {
    return 0x65747441666C6573;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_22C3DE3D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C3DE31C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C3DE404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3DE370(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C3DE4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C3DE5A4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22C3DE5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3DE4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3DE600(uint64_t a1)
{
  v2 = sub_22C3DE800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3DE63C(uint64_t a1)
{
  v2 = sub_22C3DE800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerCLISupport.IFTool.TGToolInterop.CodableContent.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9BB7C0, &qword_22C910168);
  sub_22C369824();
  v11 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  sub_22C374168(a1, a1[3]);
  sub_22C3DE800();
  sub_22C90B6CC();
  v15 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_22C3DE854();
    sub_22C90B41C();
  }

  return (*(v11 + 8))(v8, v4);
}

unint64_t sub_22C3DE800()
{
  result = qword_27D9BB7C8;
  if (!qword_27D9BB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7C8);
  }

  return result;
}

unint64_t sub_22C3DE854()
{
  result = qword_27D9BB7D0;
  if (!qword_27D9BB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7D0);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.TGToolInterop.CodableContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BB7D8, &qword_22C910170);
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C374168(a1, a1[3]);
  sub_22C3DE800();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v6 = sub_22C90B2DC();
  v8 = v7;
  sub_22C3DEA78();
  sub_22C90B32C();
  v9 = sub_22C36A754();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  sub_22C36FF94(a1);
}

unint64_t sub_22C3DEA78()
{
  result = qword_27D9BB7E0;
  if (!qword_27D9BB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7E0);
  }

  return result;
}

_BYTE *_s14descr283FAC5B1V13TGToolInteropOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C3DEBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3DEBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22C3DEC3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C3DED1C()
{
  result = qword_27D9BB7E8;
  if (!qword_27D9BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7E8);
  }

  return result;
}

unint64_t sub_22C3DED74()
{
  result = qword_27D9BB7F0;
  if (!qword_27D9BB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7F0);
  }

  return result;
}

unint64_t sub_22C3DEDCC()
{
  result = qword_27D9BB7F8;
  if (!qword_27D9BB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7F8);
  }

  return result;
}

unint64_t sub_22C3DEE24()
{
  result = qword_27D9BB800;
  if (!qword_27D9BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB800);
  }

  return result;
}

unint64_t sub_22C3DEE78()
{
  result = qword_27D9BB808;
  if (!qword_27D9BB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB808);
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.getCLIToolRenderer(locale:queryableToolbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C369838();
  v15 = v14 - v13;
  FullPlannerPreferences.init()(v14 - v13);
  v16 = sub_22C4DE310();
  if (v3)
  {
    sub_22C36A764();
    return sub_22C3E0180(v15, v22);
  }

  v17 = v16;
  sub_22C90077C();
  sub_22C36985C();
  (*(v18 + 16))(v11, a1);
  sub_22C57689C();
  v19 = sub_22C90876C();
  sub_22C386F58(v19);
  v20 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C386F58(v20);
  sub_22C3DA748(v15, v11 + v7[10]);
  *(v11 + v7[5]) = a2;
  v21 = (v11 + v7[8]);
  *v21 = 0;
  v21[1] = 0;

  sub_22C4DE060(v17, v11, v41);
  sub_22C3E0180(v11, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
  sub_22C36D1E4(v41, v41[3]);
  v24 = sub_22C3E0290();
  v25(v24);
  if ((v32[0] & 1) == 0)
  {
    sub_22C36C730(v31, v38);
    sub_22C3A5908(&qword_27D9BB740, &qword_22C90FE48);
    sub_22C3A5908(&qword_27D9BB748, &qword_22C90FE50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    sub_22C3DF278(v39, v33);
    if (v34)
    {
      sub_22C374168(v33, v34);
      v27 = sub_22C3E0290();
      v28(v27);
      sub_22C36A764();
      sub_22C3E0180(v15, v29);
      sub_22C378A4C(v32, &v35);
      sub_22C3DF2E8(v31);
      sub_22C36FF94(v33);
      if (*(&v36 + 1))
      {
        sub_22C36C730(&v35, v38);
        sub_22C36C730(v38, a3);
LABEL_13:
        sub_22C36DD28(v39, &qword_27D9BB750, &qword_22C90FE58);
        return sub_22C36FF94(v41);
      }
    }

    else
    {
      sub_22C36A764();
      sub_22C3E0180(v15, v30);
      sub_22C36DD28(v33, &qword_27D9BB750, &qword_22C90FE58);
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
    }

    sub_22C36DD28(&v35, &qword_27D9BB810, &unk_22C910420);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_13;
  }

  *&v35 = *&v31[0];
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  swift_willThrowTypedImpl();
  sub_22C36A764();
  sub_22C3E0180(v15, v26);
  return sub_22C36FF94(v41);
}

uint64_t sub_22C3DF278(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB750, &qword_22C90FE58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *FullPlannerCLISupport.IFTool.CLIToolEntryRenderer.render(_:shouldReformatOutput:)(unint64_t a1, int a2)
{
  v124 = a2;
  v119 = a1;
  v2 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22C369838();
  v117 = v4 - v3;
  v5 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C3698F8(&v104 - v6);
  v111 = sub_22C908A7C();
  sub_22C369824();
  v109 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v106 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698F8(&v104 - v11);
  v108 = sub_22C908DAC();
  sub_22C369824();
  v107 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C3698F8(v15 - v14);
  v16 = sub_22C908D6C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C908EAC();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v118 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  v31 = sub_22C908ABC();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v37 = (v36 - v35);
  v112 = type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v116 = (v40 - v39);
  (*(v33 + 16))(v37, v119, v31);
  v41 = (*(v33 + 88))(v37, v31);
  if (v41 == *MEMORY[0x277D1E8E0])
  {
    v42 = sub_22C38B7D4();
    v43(v42);
    v110 = v25;
    v44 = *(v25 + 32);
    v111 = v23;
    v108 = v25 + 32;
    v107 = v44;
    v44(v30, v37, v23);
    v109 = v30;
    v45 = sub_22C908DEC();
    v46 = 0;
    v47 = *(v45 + 16);
    v118 = v18 + 16;
    v119 = v47;
    v48 = *MEMORY[0x277D72188];
    v49 = *MEMORY[0x277D72178];
    v50 = (v18 + 8);
    while (1)
    {
      if (v119 == v46)
      {
        v46 = v119;
        goto LABEL_15;
      }

      v51 = v45;
      (*(v18 + 16))(v22, v45 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v46, v16);
      v52 = (*(v18 + 88))(v22, v16);
      if (v52 == v48)
      {
        break;
      }

      if (v52 == v49)
      {
        goto LABEL_14;
      }

      (*v50)(v22, v16);
      ++v46;
      v45 = v51;
    }

    (*v50)(v22, v16);
LABEL_14:
    v45 = v51;
LABEL_15:
    v70 = *(v45 + 16);
    v69 = v124;
    v56 = v116;
    v71 = v111;
    v72 = v110;
    v73 = v109;
    if (v46 == v70)
    {

      sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
      (*(v72 + 16))(v56, v73, v71);
      sub_22C9036EC();
      sub_22C36985C();
      v74 = sub_22C36D390();
      v75(v74);
      sub_22C9037DC();
      *&v121[0] = MEMORY[0x277D84F90];
      sub_22C3E00C4();
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      v76 = sub_22C3E011C();
      sub_22C36BB6C(v76, v77, v76);
      (*(v72 + 8))(v73, v71);
      sub_22C37153C();
LABEL_20:
      swift_storeEnumTagMultiPayload();
LABEL_24:
      v61 = v117;
      goto LABEL_25;
    }

    if (v46 >= v70)
    {
      __break(1u);
    }

    else if (!sub_22C4AF1C0())
    {

      sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
      v78 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_22C90F800;
      v107(v79 + v78, v73, v71);
      *v56 = v79;
      goto LABEL_20;
    }

    __break(1u);
LABEL_36:
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  if (v41 == *MEMORY[0x277D1E8C8])
  {
    v53 = sub_22C38B7D4();
    v54(v53);
    v55 = v118;
    (*(v25 + 32))(v118, v37, v23);
    sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
    v56 = v116;
    (*(v25 + 16))(v116, v55, v23);
    sub_22C9036EC();
    sub_22C36985C();
    v57 = sub_22C36D390();
    v58(v57);
    sub_22C9037DC();
    *&v121[0] = MEMORY[0x277D84F90];
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    v59 = sub_22C3E011C();
    sub_22C36BB6C(v59, v60, v59);
    (*(v25 + 8))(v55, v23);
    sub_22C37153C();
    swift_storeEnumTagMultiPayload();
    v61 = v117;
  }

  else
  {
    v56 = v116;
    v61 = v117;
    if (v41 != *MEMORY[0x277D1E8D0])
    {
      if (v41 == *MEMORY[0x277D1E8D8])
      {
        v80 = sub_22C38B7D4();
        v81(v80);
        v82 = v109;
        v83 = v110;
        v84 = v111;
        (*(v109 + 4))(v110, v37, v111);
        v85 = v106;
        v82[2](v106, v83, v84);
        if ((v82[11])(v85, v84) == *MEMORY[0x277D1E8B8])
        {
          (v82[12])(v85, v84);
          v86 = v118;
          (*(v25 + 32))(v118, v85, v23);
          sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
          (*(v25 + 16))(v56, v86, v23);
          sub_22C9036EC();
          sub_22C36985C();
          v87 = sub_22C36D390();
          v88(v87);
          sub_22C9037DC();
          *&v121[0] = MEMORY[0x277D84F90];
          sub_22C3E00C4();
          sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
          v89 = sub_22C3E011C();
          sub_22C36BB6C(v89, v90, v89);
          (*(v25 + 8))(v86, v23);
          (v82[1])(v110, v111);
          sub_22C37153C();
          swift_storeEnumTagMultiPayload();
          v69 = v124;
          goto LABEL_24;
        }
      }

      goto LABEL_36;
    }

    v62 = sub_22C38B7D4();
    v63(v62);
    v64 = v107;
    v65 = v105;
    v66 = v108;
    (*(v107 + 4))(v105, v37, v108);
    sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
    sub_22C908D7C();
    sub_22C9036EC();
    sub_22C36985C();
    v67 = sub_22C36D390();
    v68(v67);
    sub_22C9037DC();
    *&v121[0] = MEMORY[0x277D84F90];
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3E011C();
    sub_22C90AE4C();
    (*(v64 + 1))(v65, v66);
    sub_22C37153C();
    swift_storeEnumTagMultiPayload();
  }

  v69 = v124;
LABEL_25:
  v91 = v113[3];
  v92 = v113[4];
  sub_22C374168(v113, v91);
  v93 = sub_22C4B9B90(MEMORY[0x277D84F90]);
  v94 = sub_22C906D3C();
  v95 = v114;
  sub_22C36C640(v114, 1, 1, v94);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v96 = sub_22C480800(v95);
  v97 = v115;
  (*(v92 + 16))(v121, v56, v93, v96, v91, v92);
  if (v97)
  {
    sub_22C3731E4();
  }

  else
  {

    v120[0] = v121[0];
    v120[1] = v121[1];
    v120[2] = v122;
    v120[3] = v123;
    v98 = *&v121[0];
    if (BYTE8(v122))
    {
      v125 = v121[0];
      sub_22C3E01D8();
      v93 = &unk_283FB5838;
      swift_willThrowTypedImpl();
      swift_allocError();
      *v99 = v98;
      sub_22C3E022C(v120);
      sub_22C3731E4();
    }

    else
    {

      FullPlannerPreferences.init()(v61);
      v93 = sub_22C49FB90(v98, v61);
      v102 = v101;
      sub_22C36A764();
      sub_22C3E0180(v61, v103);

      if (v69)
      {
        v93 = sub_22C3F9740(v93, v102);

        sub_22C3E022C(v120);

        sub_22C3731E4();
      }

      else
      {
        sub_22C3731E4();

        sub_22C3E022C(v120);
      }
    }
  }

  return v93;
}

unint64_t sub_22C3E00C4()
{
  result = qword_27D9BB820;
  if (!qword_27D9BB820)
  {
    sub_22C9037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB820);
  }

  return result;
}

unint64_t sub_22C3E011C()
{
  result = qword_27D9BB830;
  if (!qword_27D9BB830)
  {
    sub_22C3AC1A0(&qword_27D9BB828, &unk_22C912AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB830);
  }

  return result;
}

uint64_t sub_22C3E0180(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C3E01D8()
{
  result = qword_27D9BB838;
  if (!qword_27D9BB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB838);
  }

  return result;
}

uint64_t sub_22C3E02A4()
{
  v0 = sub_22C8FFEFC();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22C8FFF5C();
  swift_allocObject();
  v1 = sub_22C8FFF4C();

  sub_22C8FFEDC();
  sub_22C8FFF0C();

  qword_27D9BB840 = v1;
  return result;
}

uint64_t FullPlannerDBToolAlias.databaseValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90A17C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_22C369838();
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 32);
  if (qword_27D9BA5E8 != -1)
  {
    v30 = v1[1];
    v31 = *v1;
    swift_once();
    v12 = v30;
    v11 = v31;
  }

  v32 = v11;
  v33 = v12;
  LOBYTE(v34) = v13;
  sub_22C3E0650();
  v18 = sub_22C8FFF3C();
  v20 = v19;
  sub_22C90A15C();
  v21 = sub_22C90A13C();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    sub_22C38B120(v18, v20);
    *a1 = v23;
    a1[1] = v24;
    v17 = MEMORY[0x277D78288];
  }

  else
  {
    sub_22C90735C();
    sub_22C3A5F00();
    v28 = swift_allocError();
    *v29 = v32;
    *(v29 + 16) = v33;
    *(v29 + 32) = v34;
    swift_willThrow();
    sub_22C38B120(v18, v20);
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "Unable to encode tool rendering information - tools may not be indexed for FullPlanner usage.", v16, 2u);
      sub_22C370510();
    }

    (*(v5 + 8))(v9, v3);
    v17 = MEMORY[0x277D78278];
  }

  v25 = *v17;
  v26 = sub_22C9014CC();
  return (*(*(v26 - 8) + 104))(a1, v25, v26);
}

unint64_t sub_22C3E0650()
{
  result = qword_27D9BB848;
  if (!qword_27D9BB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB848);
  }

  return result;
}

uint64_t sub_22C3E06A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6F6F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022C92FF90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C3E0774(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656D614E6C6F6F74;
  }
}

uint64_t sub_22C3E07B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3E0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3E06A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3E085C(uint64_t a1)
{
  v2 = sub_22C3E1590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0898(uint64_t a1)
{
  v2 = sub_22C3E1590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3E08D8(uint64_t a1)
{
  v2 = sub_22C3E15E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0914(uint64_t a1)
{
  v2 = sub_22C3E15E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3E0954(uint64_t a1)
{
  v2 = sub_22C3E1638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0990(uint64_t a1)
{
  v2 = sub_22C3E1638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerDBToolAlias.encode(to:)(void *a1)
{
  sub_22C3A5908(&qword_27D9BB850, &qword_22C910480);
  sub_22C369824();
  v25 = v4;
  v26 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - v6;
  sub_22C3A5908(&qword_27D9BB858, &qword_22C910488);
  sub_22C369824();
  v29 = v8;
  v30 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = sub_22C3A5908(&qword_27D9BB860, &qword_22C910490);
  sub_22C369824();
  v14 = v13;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v27 = v1[1];
  v28 = v18;
  v19 = *(v1 + 32);
  sub_22C374168(a1, a1[3]);
  sub_22C3E1590();
  sub_22C90B6CC();
  if (v19 == 255)
  {
    LOBYTE(v31) = 1;
    sub_22C3E15E4();
    v22 = v24;
    sub_22C36BB8C();
    sub_22C90B36C();
    (*(v25 + 8))(v22, v26);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_22C3E1638();
    sub_22C36BB8C();
    sub_22C90B36C();
    v32 = v27;
    v31 = v28;
    v33 = v19 & 1;
    sub_22C3E168C();
    v20 = v30;
    sub_22C90B41C();
    (*(v29 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v17, v12);
}

void FullPlannerDBToolAlias.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_22C3A5908(&qword_27D9BB888, &qword_22C910498);
  sub_22C369824();
  v50 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v45[-v5];
  v7 = sub_22C3A5908(&qword_27D9BB890, &qword_22C9104A0);
  sub_22C369824();
  v51 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-v10];
  v12 = sub_22C3A5908(&qword_27D9BB898, &qword_22C9104A8);
  sub_22C369824();
  v52 = v13;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-v15];
  sub_22C374168(a1, a1[3]);
  sub_22C3E1590();
  v17 = v58;
  sub_22C90B6BC();
  if (v17)
  {
    goto LABEL_8;
  }

  v48 = v6;
  v49 = v11;
  v58 = a1;
  v47 = v7;
  v18 = v53;
  v19 = v54;
  v20 = sub_22C90B34C();
  sub_22C3E16E0(v20, 0);
  v25 = v21;
  if (v23 == v24 >> 1)
  {
    goto LABEL_7;
  }

  if (v23 >= (v24 >> 1))
  {
    __break(1u);
    return;
  }

  v46 = *(v22 + v23);
  v26 = sub_22C3E1EA4(v23 + 1, v24 >> 1, v21, v22, v23, v24);
  v28 = v27;
  v30 = v29;
  swift_unknownObjectRelease();
  v25 = v26;
  if (v28 != v30 >> 1)
  {
LABEL_7:
    v54 = v25;
    v32 = sub_22C90AFBC();
    swift_allocError();
    v34 = v33;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v34 = &type metadata for FullPlannerDBToolAlias;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = sub_22C369B18();
    v36(v35, v12);
    a1 = v58;
LABEL_8:
    sub_22C36FF94(a1);
    return;
  }

  if (v46)
  {
    LOBYTE(v55) = 1;
    sub_22C3E15E4();
    v31 = v48;
    sub_22C36BB8C();
    sub_22C90B24C();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v31, v18);
    v37 = sub_22C369B18();
    v38(v37, v12);
    v39 = 0uLL;
    v40 = -1;
    v41 = 0uLL;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_22C3E1638();
    sub_22C36BB8C();
    sub_22C90B24C();
    sub_22C3E1758();
    sub_22C90B32C();
    v42 = v52;
    swift_unknownObjectRelease();
    v43 = sub_22C388548();
    v44(v43);
    (*(v42 + 8))(v16, v12);
    v39 = v55;
    v41 = v56;
    v40 = v57;
  }

  *v19 = v39;
  *(v19 + 16) = v41;
  *(v19 + 32) = v40;
  sub_22C36FF94(v58);
}

double FullPlannerToolboxDelegate.toolDefinitionCustomMapping(toolDefinition:)(void *a1)
{
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v7 = sub_22C371550();
  sub_22C4DE3B8(v7);
  if (a1)
  {
    sub_22C903F7C();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      sub_22C370510();
    }

    (*(v5 + 8))(v1, v3);
    return sub_22C372600();
  }

  return result;
}

double FullPlannerToolboxDelegate.assistantSchemaCustomMapping(assistantSchemaIdentifier:assistantToolSchemaDefinition:)(void *a1)
{
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v7 = sub_22C371550();
  sub_22C4DE634(v7);
  if (a1)
  {
    sub_22C903F7C();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      sub_22C370510();
    }

    (*(v5 + 8))(v1, v3);
    return sub_22C372600();
  }

  return result;
}

uint64_t FullPlannerToolboxDelegate.versionIdentifier.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();

  MEMORY[0x2318B7850](95, 0xE100000000000000);

  v0 = sub_22C90B47C();
  v2 = v1;

  MEMORY[0x2318B7850](v0, v2);

  return v4;
}

unint64_t sub_22C3E1590()
{
  result = qword_27D9BB868;
  if (!qword_27D9BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB868);
  }

  return result;
}

unint64_t sub_22C3E15E4()
{
  result = qword_27D9BB870;
  if (!qword_27D9BB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB870);
  }

  return result;
}

unint64_t sub_22C3E1638()
{
  result = qword_27D9BB878;
  if (!qword_27D9BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB878);
  }

  return result;
}

unint64_t sub_22C3E168C()
{
  result = qword_27D9BB880;
  if (!qword_27D9BB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB880);
  }

  return result;
}

void sub_22C3E16E0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22C37320C();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_22C3E171C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22C37320C();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22C3E1758()
{
  result = qword_27D9BB8A0;
  if (!qword_27D9BB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8A0);
  }

  return result;
}

uint64_t sub_22C3E17AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3E1814()
{
  result = qword_27D9BB8B0;
  if (!qword_27D9BB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8B0);
  }

  return result;
}

uint64_t sub_22C3E1874(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_22C3E1888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C3E189C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3E18E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_22C3E1930(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for FullPlannerToolboxDelegate(uint64_t a1)
{
  result = qword_27D9BB8B8;
  if (!qword_27D9BB8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C3E19E0(uint64_t a1)
{
  result = type metadata accessor for FullPlannerPreferences(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerDBToolAlias.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerDBToolAlias.ToolNameCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C3E1BE8()
{
  result = qword_27D9BB8C8;
  if (!qword_27D9BB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8C8);
  }

  return result;
}

unint64_t sub_22C3E1C40()
{
  result = qword_27D9BB8D0;
  if (!qword_27D9BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8D0);
  }

  return result;
}

unint64_t sub_22C3E1C98()
{
  result = qword_27D9BB8D8;
  if (!qword_27D9BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8D8);
  }

  return result;
}

unint64_t sub_22C3E1CF0()
{
  result = qword_27D9BB8E0;
  if (!qword_27D9BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8E0);
  }

  return result;
}

unint64_t sub_22C3E1D48()
{
  result = qword_27D9BB8E8;
  if (!qword_27D9BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8E8);
  }

  return result;
}

unint64_t sub_22C3E1DA0()
{
  result = qword_27D9BB8F0;
  if (!qword_27D9BB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8F0);
  }

  return result;
}

unint64_t sub_22C3E1DF8()
{
  result = qword_27D9BB8F8;
  if (!qword_27D9BB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8F8);
  }

  return result;
}

unint64_t sub_22C3E1E50()
{
  result = qword_27D9BB900;
  if (!qword_27D9BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB900);
  }

  return result;
}

uint64_t sub_22C3E1EA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22C3E1F28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullPlannerHydrationArbiter.shouldHydrateExecutionOutput()()
{
  v1 = sub_22C9063DC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  if ((sub_22C903E8C() & 1) == 0)
  {
    return 0;
  }

  if (sub_22C3E20D0())
  {
    return 1;
  }

  v9 = sub_22C4DE310();
  if (v0)
  {

    sub_22C903F7C();
    v10 = sub_22C9063CC();
    v11 = sub_22C90AACC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22C366000, v10, v11, "Couldn't load FullPlannerPreferences. Not requesting to hydrate execution output", v12, 2u);
      MEMORY[0x2318B9880](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
    return 0;
  }

  return v9 < 4u;
}

BOOL sub_22C3E20D0()
{
  swift_getKeyPath();
  sub_22C901F3C();

  v0 = sub_22C90B21C();

  return v0 < 2;
}

uint64_t FullPlannerHydrationArbiter.shouldHydrate(_:)(uint64_t a1)
{
  v2 = sub_22C9063DC();
  sub_22C369824();
  v44 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C90952C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  if (sub_22C3E20D0())
  {
    v21 = 1;
    return v21 & 1;
  }

  v42 = v2;
  v43 = a1;
  sub_22C90391C();
  v22 = sub_22C9093BC();
  if (sub_22C370B74(v20, 1, v22) != 1)
  {
    sub_22C90935C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 8);
    v40[1] = v23 + 8;
    v41 = v24;
    v24(v20, v22);
    v25 = sub_22C9094BC();
    v27 = v26;
    v40[0] = *(v10 + 8);
    (v40[0])(v14, v8);
    if (v25 == 0xD000000000000019 && 0x800000022C92E340 == v27)
    {
    }

    else
    {
      v29 = sub_22C90B4FC();

      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_22C90391C();
    if (sub_22C370B74(v18, 1, v22) != 1)
    {
      sub_22C90935C();
      v41(v18, v22);
      TypeIdentifier.selfLoggingTypeName.getter();
      v35 = v34;
      v37 = v36;
      (v40[0])(v14, v8);
      if (v35 == 0x746E457465737341 && v37 == 0xEB00000000797469)
      {

        v21 = 0;
        return v21 & 1;
      }

      v39 = sub_22C90B4FC();

      v21 = 0;
      if (v39)
      {
        return v21 & 1;
      }

      goto LABEL_14;
    }

    v20 = v18;
  }

  sub_22C3E259C(v20);
LABEL_14:
  if (sub_22C50D9B8())
  {
    sub_22C903F7C();
    v30 = sub_22C9063CC();
    v31 = sub_22C90AACC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22C366000, v30, v31, "FullPlannerHydrationArbiter: entity hydration should be performed as the type is one rendered in the prompt", v32, 2u);
      MEMORY[0x2318B9880](v32, -1, -1);
    }

    (*(v44 + 8))(v7, v42);
  }

  v21 = sub_22C50D9B8();
  return v21 & 1;
}

uint64_t sub_22C3E259C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3E2684(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C3A4FC0(v3, *v1);
  return sub_22C90B66C();
}

uint64_t sub_22C3E26E4(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C38C740(v3, *v1);
  return sub_22C90B66C();
}

uint64_t sub_22C3E2748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v9 = sub_22C901FAC();
  v50 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v40 = a4;
  v15 = *(a4 + 16);
  v52 = v37 - v13;
  if (v15)
  {
    v51 = MEMORY[0x277D84F90];

    sub_22C3B6F24(0, v15, 0);
    v16 = v51;
    v17 = *(v51 + 16);
    do
    {
      v51 = v16;
      v18 = *(v16 + 24);
      if (v17 >= v18 >> 1)
      {
        sub_22C3B6F24(v18 > 1, v17 + 1, 1);
        v16 = v51;
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + v17++ + 32) = 0;
      --v15;
    }

    while (v15);
    v14 = v52;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v46 = v19 + 2;
  v47 = v19;
  v19[3] = a3;
  v19[4] = v16;
  v20 = swift_allocObject();
  v42 = v20;
  *(v20 + 16) = a1;
  v37[1] = v20 + 16;
  v21 = *(a3 + 16);
  if (!v21)
  {
    goto LABEL_28;
  }

  v38 = a2;
  v39 = a3;
  v22 = v50 + 16;
  v50 = *(v50 + 16);
  v45 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v44 = a3 + v45;
  v23 = (v22 - 8);
  v24 = *(v22 + 56);

  while (1)
  {
    v49 = v21 - 1;
    (v50)(v14, v44 + v24 * (v21 - 1), v9);
    swift_beginAccess();
    v26 = v47[2];
    v25 = v47[3];
    v48 = v47[4];
    v27 = v25 + v45;
    v28 = *(v25 + 16);
    if (!v26)
    {
      for (i = 0; v28 != i; ++i)
      {
        (v50)(v12, v27, v9);
        sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v33 = sub_22C90A0BC();
        (*v23)(v12, v9);
        if (v33)
        {
          goto LABEL_18;
        }

        v27 += v24;
      }

LABEL_12:
      swift_endAccess();
LABEL_20:
      v14 = v52;
      goto LABEL_21;
    }

    sub_22C7DBC48();
    i = v29;
    v32 = v31;

    if (v32)
    {
      goto LABEL_12;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_18:
    if (i >= *(v48 + 16))
    {
      goto LABEL_27;
    }

    v34 = *(v48 + i + 32);
    swift_endAccess();
    if (v34)
    {
      goto LABEL_20;
    }

    v14 = v52;
    v35 = v43;
    sub_22C3E2BA4(v52, v47, v38, v39, v40, v41, v42);
    v43 = v35;
    if (v35)
    {
      (*v23)(v14, v9);

      return v34;
    }

LABEL_21:
    (*v23)(v14, v9);
    v21 = v49;
    if (!v49)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

LABEL_29:
  swift_beginAccess();
  v34 = *(v42 + 16);

  return v34;
}

void sub_22C3E2BA4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v75 = a5;
  v76 = a7;
  v77 = a3;
  v78 = a4;
  v12 = sub_22C9070DC();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C901FAC();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  v82 = v21;
  v22 = *(v21 + 16);
  v88 = v21 + 16;
  v87 = v22;
  v22(&v68 - v19, a1, v15);
  swift_beginAccess();
  v86 = a2;
  sub_22C7C650C();
  swift_endAccess();
  v23 = *(a6 + 16);
  v74 = a6;
  if (v23 && (sub_22C628274(), (v25 & 1) != 0))
  {
    v26 = (*(a6 + 56) + 16 * v24);
    v27 = v26[1];
    v73 = *v26;
  }

  else
  {
    sub_22C7F5258();
    v73 = v28;
    v27 = v29;
  }

  v69 = v14;
  v72 = a1;
  v79 = v8;
  v30 = *(v27 + 16);
  if (v30)
  {
    v31 = 0;
    v85 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v80 = v27;
    v81 = v27 + v85;
    v32 = (v82 + 8);
    while (1)
    {
      if (v31 >= v30)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v33 = *(v82 + 72);
      v84 = v31;
      v87(v18, v81 + v33 * v31, v15);
      v34 = v86;
      swift_beginAccess();
      v36 = v34[2];
      v35 = v34[3];
      v83 = v34[4];
      v37 = v35 + v85;
      v38 = *(v35 + 16);
      if (!v36)
      {
        break;
      }

      sub_22C7DBC48();
      j = v39;
      v42 = v41;

      if (v42)
      {
        goto LABEL_10;
      }

      if ((j & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

LABEL_16:
      if (j >= *(v83 + 16))
      {
        goto LABEL_37;
      }

      v44 = *(v83 + j + 32);
      swift_endAccess();
      if (v44 == 1)
      {
        type metadata accessor for FullPlannerError(0);
        sub_22C3E340C(qword_27D9BB910, type metadata accessor for FullPlannerError, &protocol conformance descriptor for FullPlannerError);
        swift_allocError();
        v66 = v65;
        v67 = sub_22C901E8C();
        sub_22C36C640(v66, 6, 15, v67);
        swift_willThrow();

        (*v32)(v18, v15);
        return;
      }

LABEL_18:
      v45 = v86;
      swift_beginAccess();
      v47 = v45[2];
      v46 = v45[3];
      v83 = v45[4];
      v48 = v46 + v85;
      v49 = *(v46 + 16);
      if (!v47)
      {
        for (i = 0; v49 != i; ++i)
        {
          v87(v20, v48, v15);
          sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
          v54 = sub_22C90A0BC();
          (*v32)(v20, v15);
          if (v54)
          {
            goto LABEL_26;
          }

          v48 += v33;
        }

LABEL_20:
        swift_endAccess();
        goto LABEL_29;
      }

      sub_22C7DBC48();
      i = v50;
      v53 = v52;

      if (v53)
      {
        goto LABEL_20;
      }

      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

LABEL_26:
      if (i >= *(v83 + 16))
      {
        goto LABEL_39;
      }

      v55 = *(v83 + i + 32);
      swift_endAccess();
      if (!v55)
      {
        v56 = v79;
        sub_22C3E2BA4(v18, v86, v77, v78, v75, v74, v76);
        v79 = v56;
        if (v56)
        {
          (*v32)(v18, v15);

          return;
        }
      }

LABEL_29:
      v31 = v84 + 1;
      (*v32)(v18, v15);
      v30 = *(v80 + 16);
      if (v31 == v30)
      {
        goto LABEL_30;
      }
    }

    for (j = 0; v38 != j; ++j)
    {
      v87(v20, v37, v15);
      sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
      v43 = sub_22C90A0BC();
      (*v32)(v20, v15);
      if (v43)
      {
        goto LABEL_16;
      }

      v37 += v33;
    }

LABEL_10:
    swift_endAccess();
    goto LABEL_18;
  }

LABEL_30:

  MEMORY[0x28223BE20](v57);
  v58 = v78;
  *(&v68 - 4) = v77;
  *(&v68 - 3) = v58;
  v59 = v72;
  *(&v68 - 2) = v72;
  v60 = v79;
  v61 = sub_22C7D5C98(sub_22C3E33E8, (&v68 - 6), v58);
  if (v62)
  {
    goto LABEL_40;
  }

  v63 = v69;
  sub_22C4054D0(v61, v75);
  v64 = v76;
  swift_beginAccess();
  sub_22C3E3338((v64 + 16), v63);
  swift_endAccess();
  (*(v70 + 8))(v63, v71);
  if (!v60)
  {
    v87(v20, v59, v15);
    swift_beginAccess();
    sub_22C7C650C();
    swift_endAccess();
  }
}

uint64_t sub_22C3E3338(uint64_t *a1, uint64_t a2)
{
  sub_22C3D0F68();
  v4 = *(*a1 + 16);
  sub_22C3D112C(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = sub_22C9070DC();
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *a1 = v5;
  return result;
}

uint64_t sub_22C3E340C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_22C3E3454(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C3E3538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_22C3E3598(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GraphUtilities.GraphUtilitiesError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C3E3798()
{
  result = qword_27D9BBA98;
  if (!qword_27D9BBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBA98);
  }

  return result;
}

uint64_t sub_22C3E38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C3E392C(uint64_t a1)
{
  if (!qword_27D9BBAC8)
  {
    sub_22C9089DC();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BBAC8);
    }
  }
}

uint64_t sub_22C3E3984()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C9063DC();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_22C90634C();
  v1[18] = v8;
  sub_22C3699B8(v8);
  v1[19] = v9;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v10 = sub_22C90636C();
  v1[22] = v10;
  sub_22C3699B8(v10);
  v1[23] = v11;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = sub_22C3A5908(&qword_27D9BBB40, &unk_22C910E10);
  v1[26] = v12;
  sub_22C3699B8(v12);
  v1[27] = v13;
  v1[28] = sub_22C3699D4();
  v14 = type metadata accessor for PlannerServiceContext(0);
  sub_22C3699B8(v14);
  v1[29] = v15;
  v1[30] = *(v16 + 64);
  v1[31] = sub_22C3699D4();
  v17 = sub_22C9087BC();
  v1[32] = v17;
  sub_22C3699B8(v17);
  v1[33] = v18;
  v1[34] = *(v19 + 64);
  v1[35] = sub_22C3699D4();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v1[36] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C3E3C40()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v17 = *(v0 + 232);
  v18 = *(v0 + 272);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  type metadata accessor for MediatorControlChannel(0);
  v9 = swift_allocObject();
  *(v0 + 296) = v9;
  sub_22C3E5554();
  v10 = sub_22C90A75C();
  sub_22C36C640(v1, 1, 1, v10);
  sub_22C378A4C(v8, v0 + 16);
  (*(v3 + 16))(v2, v7, v5);
  sub_22C3E5F4C(v6, v4);
  v11 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v12 = (v18 + *(v17 + 80) + v11) & ~*(v17 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v9;
  sub_22C36C730((v0 + 16), (v13 + 40));
  (*(v3 + 32))(&v13[v11], v2, v5);
  sub_22C3E5FB0(v4, &v13[v12]);

  sub_22C82B678();
  *(v0 + 304) = v14;
  sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  sub_22C90A78C();
  *(v0 + 312) = 0;
  v15 = swift_task_alloc();
  *(v0 + 320) = v15;
  *v15 = v0;
  sub_22C369B28(v15);
  sub_22C36BB08();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_22C3E3E5C()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C3E3F44()
{
  v67 = v0;
  if (*(v0 + 56))
  {
    v65 = *(v0 + 56);
    v1 = *(v0 + 192);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v62 = *(v2 + 8);
    v62(v1, v3);
    v4 = sub_22C90635C();
    v5 = sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v7, "Mediator.handle - process checkpoint", "", v6, 2u);
      sub_22C3699EC();
    }

    v8 = *(v0 + 200);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);

    (*(v12 + 16))(v11, v10, v13);
    sub_22C9063AC();
    swift_allocObject();
    v64 = sub_22C90639C();
    (*(v12 + 8))(v10, v13);
    v62(v8, v9);
    sub_22C903F7C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AABC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "[Mediator] Checkpoint received - processing...", v16, 2u);
      sub_22C3699EC();
    }

    v17 = *(v0 + 312);
    v18 = *(v0 + 136);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);

    v21 = *(v19 + 8);
    v21(v18, v20);
    v22 = sub_22C3E5004(v65 + 16);
    if (v17)
    {
      v23 = *(v0 + 216);
      v24 = *(v0 + 224);
      v25 = *(v0 + 208);

      sub_22C3E4D18(v64);

      (*(v23 + 8))(v24, v25);

      sub_22C369A24();
      goto LABEL_18;
    }

    v33 = v22;
    sub_22C903F7C();
    v34 = sub_22C9063CC();
    v35 = sub_22C90AABC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 128);
    v38 = *(v0 + 104);
    if (v36)
    {
      v60 = *(v0 + 128);
      v39 = swift_slowAlloc();
      v40 = v38;
      v41 = swift_slowAlloc();
      v66 = v41;
      *v39 = 136315138;
      *(v0 + 352) = v33 & 1;
      v42 = sub_22C90A1AC();
      v44 = sub_22C36F9F4(v42, v43, &v66);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_22C366000, v34, v35, "[Mediator] Checkpoint processed - decision: %s", v39, 0xCu);
      sub_22C36FF94(v41);
      sub_22C3699EC();
      sub_22C3699EC();

      v45 = v60;
      v46 = v40;
    }

    else
    {

      v45 = v37;
      v46 = v38;
    }

    v21(v45, v46);
    if (v33)
    {

      sub_22C903F7C();
      v47 = sub_22C9063CC();
      v48 = sub_22C90AADC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_22C366000, v47, v48, "[Mediator] NOTE: Requesting task cancellation on worker running FullPlanner", v49, 2u);
        sub_22C3699EC();
      }

      v50 = *(v0 + 216);
      v61 = *(v0 + 208);
      v63 = *(v0 + 224);
      v51 = *(v0 + 120);
      v52 = *(v0 + 104);
      v53 = *(v0 + 64);

      v21(v51, v52);
      sub_22C3E51BC();
      v54 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
      sub_22C90A7CC();
      sub_22C36C640(v53, 1, 1, v54);
      sub_22C3E4D18(v64);

      (*(v50 + 8))(v63, v61);
      sub_22C371568();

      sub_22C369A24();
LABEL_18:
      sub_22C375E04();

      __asm { BRAA            X1, X16 }
    }

    sub_22C3E4D18(v64);

    *(v0 + 312) = 0;
    v57 = swift_task_alloc();
    *(v0 + 320) = v57;
    *v57 = v0;
    sub_22C369B28(v57);
    sub_22C36BB08();
    sub_22C375E04();

    return MEMORY[0x2822003E8]();
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    sub_22C3E51BC();
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *(v0 + 336) = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v26 = v0;
    v26[1] = sub_22C3E46B8;
    sub_22C375E04();

    return MEMORY[0x282200430](v27, v28, v29, v30, v31);
  }
}

uint64_t sub_22C3E46B8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 344) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3E47B8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 64);

  sub_22C36C640(v2, 0, 1, v1);
  sub_22C371568();

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C3E48B8()
{

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3E49B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22C3E49E0, 0, 0);
}

uint64_t sub_22C3E49E0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  sub_22C374168(v1, v3);
  v10 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_22C3E4B20;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];

  return v10(v8, v6, v7, v2, v3, v4);
}

uint64_t sub_22C3E4B20()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 64) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3E4C20()
{
  sub_22C369980();
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3E4C9C()
{
  sub_22C369980();
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3E4D18(uint64_t a1)
{
  v1 = sub_22C90637C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C90634C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "Mediator.handle - process checkpoint", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C3E5004(uint64_t a1)
{
  v22 = sub_22C901B7C();
  result = MEMORY[0x28223BE20](v22);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v19[1] = v2;
  v10 = 0;
  v20 = (v5 + 8);
  v11 = &unk_27D9BBB50;
  v12 = &type metadata for EndPromptGenerationCheckpoint;
  v13 = &unk_22C910E30;
  while (v10 < *(v8 + 16))
  {
    sub_22C378A4C(a1, v21);
    sub_22C3A5908(v11, v13);
    result = swift_dynamicCast();
    if (result)
    {
      sub_22C901B8C();
      v14 = v13;
      v15 = v12;
      v16 = v11;
      v17 = sub_22C901B6C();
      result = (*v20)(v7, v22);
      v18 = v17 <= 10;
      v11 = v16;
      v12 = v15;
      v13 = v14;
      if (!v18)
      {
        return 1;
      }
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3E51BC()
{
  v1 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = sub_22C3A5908(&qword_27D9BBB58, &qword_22C910E38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream, v1);
  sub_22C3E6170();
  sub_22C90B23C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t _s30IntelligenceFlowPlannerRuntime24ResponseValidationAssetsCfD_0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22C3E53E4()
{
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation, v2);
  sub_22C90A6EC();
  v7 = *(v3 + 8);
  v7(v5, v2);
  sub_22C36FF94((v1 + 16));
  v7((v1 + v6), v2);
  return v1;
}

uint64_t sub_22C3E5500()
{
  sub_22C3E53E4();

  return swift_deallocClassInstance();
}

uint64_t sub_22C3E5554()
{
  v0 = sub_22C3A5908(&qword_27D9BBB68, &qword_22C910E48);
  sub_22C369824();
  v2 = v1;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = v21 - v4;
  v6 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v18 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C36C640(v17, 1, 1, v18);
  v21[4] = v17;
  type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest(0);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v0);
  v19 = v21[1];
  sub_22C90A7AC();
  (*(v8 + 32))(v19 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream, v11, v6);
  sub_22C3E61DC(v17, v15);
  result = sub_22C370B74(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 32))(v19 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation, v15, v18);
    sub_22C3E624C(v17);
    return v19;
  }

  return result;
}

uint64_t sub_22C3E5810(uint64_t a1, uint64_t a2)
{
  sub_22C3E624C(a2);
  v4 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_22C36C640(a2, 0, 1, v4);
}

uint64_t sub_22C3E58B0()
{
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C369824();
  v4 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation;
  (*(v4 + 16))(&v13 - v6, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation, v2);
  sub_22C90A77C();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream;
  v11 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v9((v1 + v8), v2);
  return v1;
}

uint64_t sub_22C3E5A00()
{
  sub_22C3E58B0();

  return swift_deallocClassInstance();
}

void sub_22C3E5A80(uint64_t a1)
{
  sub_22C3E5BC8(319, &qword_27D9BBAF0, type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_22C3E5BC8(319, &qword_27D9BBAF8, type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C3E5BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22C3E5C34(uint64_t a1)
{
  sub_22C3E5CD0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22C3E5CD0()
{
  if (!qword_27D9BBB18)
  {
    v0 = sub_22C90A6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BBB18);
    }
  }
}

uint64_t sub_22C3E5D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB20, &qword_22C910DE8);
  sub_22C369824();
  v6 = v5;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  sub_22C369824();
  v12 = v11;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_22C378A4C(a2, v19);
  (*(v12 + 16))(v15, a1, v10);
  type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest(0);
  v16 = swift_allocObject();
  sub_22C36C730(v19, v16 + 16);
  (*(v12 + 32))(v16 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation, v15, v10);
  *&v19[0] = v16;

  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A76C();

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_22C3E5F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E5FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerServiceContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E6014(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C9087BC();
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for PlannerServiceContext(0) - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22C382AF4;

  return sub_22C3E49B8(a1, v12, v13, v14, (v1 + 5), v1 + v7, v1 + v11);
}

unint64_t sub_22C3E6170()
{
  result = qword_27D9BBB60;
  if (!qword_27D9BBB60)
  {
    sub_22C3AC1A0(&qword_27D9BBB38, &qword_22C910E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBB60);
  }

  return result;
}

uint64_t sub_22C3E61DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E624C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MediatorDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C3E63D8(uint64_t a1)
{
  sub_22C3E5BC8(319, &qword_27D9BBB88, MEMORY[0x277D1E890], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_22C3E6464()
{
  result = qword_27D9BBB90;
  if (!qword_27D9BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBB90);
  }

  return result;
}

uint64_t sub_22C3E64B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C90046C();
  sub_22C369824();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  sub_22C378A4C(a1, (a3 + 1));
  v16 = sub_22C90A75C();
  sub_22C36C640(v15, 1, 1, v16);
  (*(v8 + 16))(v12, a2, v6);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v17, v12, v6);
  sub_22C82B8D0(0, 0, v15, &unk_22C910F10, v18);
  v20 = v19;
  (*(v8 + 8))(a2, v6);
  result = sub_22C36FF94(a1);
  *a3 = v20;
  return result;
}

uint64_t sub_22C3E669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_22C90046C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_22C909BFC();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E67B8, 0, 0);
}

uint64_t sub_22C3E67B8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v0[10] = sub_22C909B4C();
  (*(v2 + 104))(v1, *MEMORY[0x277D22D80], v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_22C3E68D0;
  v9 = v0[9];
  v10 = v0[6];

  return MEMORY[0x282181830](v9, v10);
}

uint64_t sub_22C3E68D0()
{
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v5[12] = v3;
  v5[13] = v0;

  if (v0)
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v14 = (*MEMORY[0x277D22D58] + MEMORY[0x277D22D58]);
    v12 = swift_task_alloc();
    v5[14] = v12;
    *v12 = v7;
    v12[1] = sub_22C3E6A54;

    return v14();
  }
}

uint64_t sub_22C3E6A54()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3E6B50()
{
  sub_22C369980();
  v1 = v0[12];
  v2 = v0[2];
  v3 = MEMORY[0x277D22D68];
  v2[3] = v0[10];
  v2[4] = v3;
  *v2 = v1;

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C3E6BD0()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3E6C38()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3E6CA8()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *(sub_22C90046C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22C382AF4;

  return sub_22C3E669C(v3, v6, v7, v0 + v5);
}

__n128 sub_22C3E6D94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22C3E6DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3E6DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C3E6E44()
{
  sub_22C374168((v0 + 8), *(v0 + 32));
  v1 = sub_22C36BAFC();
  return v2(v1);
}

uint64_t sub_22C3E6E94()
{
  sub_22C374168((v0 + 8), *(v0 + 32));
  v1 = sub_22C36BAFC();
  return v2(v1);
}

uint64_t sub_22C3E6EE4()
{
  sub_22C369980();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v1[32] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C3699B8(v6);
  v1[37] = v7;
  v1[38] = *(v8 + 64);
  v1[39] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v1[40] = swift_task_alloc();
  v9 = type metadata accessor for CompletionPromptProperty(0);
  v1[41] = v9;
  sub_22C3699B8(v9);
  v1[42] = v10;
  v1[43] = swift_task_alloc();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C3E7034()
{
  sub_22C369980();
  v1 = **(v0 + 288);
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_22C3E70D4;

  return sub_22C3E7A8C(v0 + 16, v1);
}

uint64_t sub_22C3E70D4()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C3E71B8()
{
  sub_22C3E8FB4(v0 + 16, v0 + 96, &qword_27D9BBB98, &qword_22C910F98);
  if (*(v0 + 120))
  {
    sub_22C36C730((v0 + 96), v0 + 56);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = sub_22C374168((v0 + 56), v3);
    v5 = swift_task_alloc();
    *(v0 + 360) = v5;
    *v5 = v0;
    v5[1] = sub_22C3E740C;
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v9 = *(v0 + 256);

    return sub_22C3E91F0(v9, v7, v4, v8, v6, v3, v2);
  }

  else
  {
    sub_22C36DD28(v0 + 96, &qword_27D9BBB98, &qword_22C910F98);
    v11 = *(v0 + 344);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    *v11 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    sub_22C374168((v12 + 8), *(v12 + 32));
    v14 = sub_22C3A5908(&qword_27D9BBBA0, &qword_22C910FA0);
    v15 = sub_22C3749B0(v14);
    *(v15 + 16) = xmmword_22C90F800;
    sub_22C3E8EF4(v11, v15 + v1);

    v16 = sub_22C3CE27C(v15);
    sub_22C372614(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28, v13);
    v24 = swift_task_alloc();
    *(v0 + 384) = v24;
    *v24 = v0;
    v25 = sub_22C37321C(v24);

    return v26(v25);
  }
}

uint64_t sub_22C3E740C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C3E74F8()
{
  sub_22C36FF94(v0 + 7);
  v2 = v0[43];
  v4 = v0[35];
  v3 = v0[36];
  *v2 = v0[46];
  swift_storeEnumTagMultiPayload();
  sub_22C374168((v3 + 8), *(v3 + 32));
  v5 = sub_22C3A5908(&qword_27D9BBBA0, &qword_22C910FA0);
  v6 = sub_22C3749B0(v5);
  *(v6 + 16) = xmmword_22C90F800;
  sub_22C3E8EF4(v2, v6 + v1);

  v7 = sub_22C3CE27C(v6);
  sub_22C372614(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v4);
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v16 = sub_22C37321C(v15);

  return v17(v16);
}

uint64_t sub_22C3E7668()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v8[49] = v6;
  v8[50] = v7;
  v8[51] = v9;
  v8[52] = v10;
  v8[53] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C3E778C()
{
  sub_22C3E8FB4(v0 + 16, v0 + 176, &qword_27D9BBB98, &qword_22C910F98);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 400);
    v25 = *(v0 + 392);
    v26 = *(v0 + 408);
    v27 = *(v0 + 344);
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v24 = *(v0 + 256);
    sub_22C36C730((v0 + 176), v0 + 136);
    v9 = *(sub_22C587C84(0) + 24);
    v10 = sub_22C90A75C();
    sub_22C36C640(v3, 1, 1, v10);
    sub_22C3E8FB4(v8 + v9, v4, &qword_27D9BB7A0, &qword_22C9110D0);
    sub_22C378A4C(v0 + 136, v0 + 216);
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_22C3E9014(v4, v14 + v11);
    sub_22C36C730((v0 + 216), v14 + v12);
    v15 = (v14 + v13);
    *v15 = v24;
    v15[1] = v7;
    v16 = (v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v25;
    v16[1] = v2;
    v16[2] = v26;
    v16[3] = v1;

    sub_22C5809B8();

    sub_22C36FF94((v0 + 136));
    sub_22C3E8F58(v27);
    v17 = v0 + 16;
  }

  else
  {
    sub_22C3E8F58(*(v0 + 344));
    sub_22C36DD28(v0 + 16, &qword_27D9BBB98, &qword_22C910F98);
    v17 = v0 + 176;
  }

  sub_22C36DD28(v17, &qword_27D9BBB98, &qword_22C910F98);

  v18 = *(v0 + 8);
  v19 = *(v0 + 408);
  v20 = *(v0 + 416);
  v21 = *(v0 + 392);
  v22 = *(v0 + 400);

  return v18(v21, v22, v19, v20);
}

uint64_t sub_22C3E79F0()
{
  sub_22C36FB38();
  sub_22C3E8F58(*(v0 + 344));
  sub_22C36DD28(v0 + 16, &qword_27D9BBB98, &qword_22C910F98);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C3E7A8C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_22C9063DC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E7B58, 0, 0);
}

uint64_t sub_22C3E7B58()
{
  sub_22C36D5EC();
  v1 = v0[9];
  if (v1)
  {

    sub_22C903F7C();
    v2 = sub_22C9063CC();
    v3 = sub_22C90AACC();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      sub_22C3765C4(&dword_22C366000, v4, v5, "Waiting for LLMCacheManager.init, LLMCacheManager.warmup to finish");
      sub_22C3699EC();
    }

    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];

    v9 = *(v8 + 8);
    v0[14] = v9;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v0[15] = v10;
    v11 = sub_22C3A5908(&qword_27D9BBBA8, &unk_22C910FC0);
    v12 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v10 = v0;
    v10[1] = sub_22C3E7D24;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 2, v1, v11, v12, v13);
  }

  else
  {
    v14 = v0[8];
    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;

    sub_22C369A24();

    return v15();
  }
}

uint64_t sub_22C3E7D24()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C3E7E08()
{
  sub_22C36D5EC();
  if (*(v0 + 56))
  {
    v1 = *(v0 + 16);
    sub_22C903F7C();
    v2 = v1;
    v3 = sub_22C9063CC();
    v4 = sub_22C90AADC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_22C366000, v3, v4, "LLMCacheManager failed to set up: %@", v5, 0xCu);
      sub_22C36DD28(v6, &qword_27D9BB158, qword_22C910FD0);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {
    }

    v10 = *(v0 + 64);
    (*(v0 + 112))(*(v0 + 96), *(v0 + 80));
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  else
  {
    v9 = *(v0 + 64);

    sub_22C36C730((v0 + 16), v9);
  }

  sub_22C369A24();

  return v11();
}

uint64_t sub_22C3E7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v18;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_22C9063DC();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = sub_22C90696C();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v11 = sub_22C90659C();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v12 = sub_22C90652C();
  v8[17] = v12;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();
  v13 = sub_22C909BEC();
  v8[20] = v13;
  v8[21] = *(v13 - 8);
  v8[22] = swift_task_alloc();
  v14 = sub_22C9068DC();
  v8[23] = v14;
  v8[24] = *(v14 - 8);
  v8[25] = swift_task_alloc();
  v15 = sub_22C90069C();
  v8[26] = v15;
  v8[27] = *(v15 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E82C8, 0, 0);
}

uint64_t sub_22C3E82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = *(v18 + 224);
  v20 = *(v18 + 216);
  v41 = *(v18 + 232);
  v42 = *(v18 + 208);
  v22 = *(v18 + 192);
  v21 = *(v18 + 200);
  v23 = *(v18 + 184);
  v46 = *(v18 + 176);
  v47 = *(v18 + 48);
  v43 = *(v18 + 40);
  v44 = *(v18 + 56);
  v45 = *(v18 + 32);
  v24 = *(v18 + 24);
  *(v18 + 240) = sub_22C9076EC();
  v25 = *MEMORY[0x277D1E1B0];
  *(v18 + 304) = v25;
  *(v18 + 248) = sub_22C90796C();
  sub_22C36985C();
  v27 = *(v26 + 104);
  *(v18 + 256) = v27;
  *(v18 + 264) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v27(v21, v25);
  v28 = sub_22C386F78();
  v29(v28);
  sub_22C90068C();
  sub_22C9076CC();
  v30 = *(v20 + 8);
  *(v18 + 272) = v30;
  *(v18 + 280) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v19, v42);
  (*(v22 + 8))(v21, v23);
  sub_22C374168(v24, v24[3]);
  (*(v20 + 16))(v19, v41, v42);

  sub_22C909BDC();
  v31 = swift_task_alloc();
  *(v18 + 288) = v31;
  *v31 = v18;
  v31[1] = sub_22C3E84E4;
  sub_22C375E04();

  return MEMORY[0x282181848](v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_22C3E84E4()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 296) = v0;

  v7 = sub_22C36BAFC();
  v8(v7);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3E8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = *(v14 + 232);
  v18 = *(v14 + 144);
  v17 = *(v14 + 152);
  v19 = *(v14 + 136);
  (*(v14 + 256))(v17, *(v14 + 304), *(v14 + 248));
  (*(v18 + 104))(v17, *MEMORY[0x277D1D9E8], v19);
  sub_22C9076AC();
  sub_22C36D614();
  v31 = *(v14 + 104);
  v32 = *(v14 + 80);
  v20 = sub_22C388E7C();
  v21(v20);
  v15(v16, v19);

  sub_22C369A24();
  sub_22C36D5F8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_22C3E875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = *(v14 + 120);
  v15 = *(v14 + 128);
  v18 = *(v14 + 104);
  v17 = *(v14 + 112);
  v19 = *(v14 + 96);
  v39 = *(v14 + 88);
  v20 = *(v14 + 80);
  (*(v14 + 256))(v15, *(v14 + 304), *(v14 + 248));
  v21 = sub_22C386F78();
  v22(v21);
  sub_22C9002FC();
  sub_22C90695C();
  sub_22C9076BC();
  (*(v19 + 8))(v18, v39);
  (*(v16 + 8))(v15, v17);
  sub_22C903F7C();
  v23 = sub_22C9063CC();
  LOBYTE(v19) = sub_22C90AADC();
  v24 = os_log_type_enabled(v23, v19);
  v25 = *(v14 + 296);
  if (v24)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    sub_22C3765C4(&dword_22C366000, v26, v27, "Failed to insert the LLM response to the plan cache. Continuing.");
    sub_22C3699EC();
  }

  sub_22C36D614();
  v40 = *(v14 + 128);
  v41 = *(v14 + 104);
  v28 = sub_22C388E7C();
  v29(v28);
  v20(v25, v15);

  sub_22C369A24();
  sub_22C36D5F8();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v40, v41, a12, a13, a14);
}

uint64_t sub_22C3E8944()
{
  *(v1 + 16) = v0;
  v2 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C3E896C()
{
  sub_22C36D5EC();
  v1 = *(v0 + 16);
  v2 = v1[5];
  sub_22C374168(v1 + 1, v1[4]);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22C3E8A8C;
  v4 = sub_22C36BAFC();

  return v6(v4);
}

uint64_t sub_22C3E8A8C()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3E8B94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3E8C50;

  return sub_22C3E6EE4();
}

uint64_t sub_22C3E8C50()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_22C369A3C();
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;

  v16 = *(v10 + 8);
  if (!v0)
  {
    v12 = v9;
    v13 = v7;
    v14 = v5;
    v15 = v3;
  }

  return v16(v12, v13, v14, v15);
}

uint64_t sub_22C3E8D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3E8DF4;

  return sub_22C3E8944();
}

uint64_t sub_22C3E8DF4()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3E8EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E8F58(uint64_t a1)
{
  v2 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3E8FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C36985C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C3E9014(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E9084()
{
  sub_22C37F038();
  v1 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C3699B8(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_22C382AF4;
  sub_22C36D5F8();

  return sub_22C3E7FC4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22C3E91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a4;
  v7[2] = a1;
  v9 = sub_22C909B8C();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  v10 = sub_22C90652C();
  v7[10] = v10;
  v7[11] = *(v10 - 8);
  v7[12] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v7[13] = v11;
  v7[14] = *(v11 - 8);
  v7[15] = swift_task_alloc();
  v12 = sub_22C90696C();
  v7[16] = v12;
  v7[17] = *(v12 - 8);
  v7[18] = swift_task_alloc();
  v13 = sub_22C90659C();
  v7[19] = v13;
  v7[20] = *(v13 - 8);
  v7[21] = swift_task_alloc();
  v14 = sub_22C909BCC();
  v7[22] = v14;
  v7[23] = *(v14 - 8);
  v7[24] = swift_task_alloc();
  v15 = sub_22C909C0C();
  v7[25] = v15;
  v7[26] = *(v15 - 8);
  v7[27] = swift_task_alloc();
  v16 = sub_22C909BAC();
  v7[28] = v16;
  v7[29] = *(v16 - 8);
  v7[30] = swift_task_alloc();
  v17 = sub_22C9068DC();
  v7[31] = v17;
  v7[32] = *(v17 - 8);
  v7[33] = swift_task_alloc();
  v18 = sub_22C90069C();
  v7[34] = v18;
  v7[35] = *(v18 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v19 = *(a6 - 8);
  v7[38] = v19;
  v7[39] = swift_task_alloc();
  (*(v19 + 16))();

  return MEMORY[0x2822009F8](sub_22C3E9680, 0, 0);
}

uint64_t sub_22C3E9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = *(v18 + 288);
  v20 = *(v18 + 280);
  v39 = *(v18 + 296);
  v40 = *(v18 + 272);
  v22 = *(v18 + 256);
  v21 = *(v18 + 264);
  v23 = *(v18 + 248);
  v24 = *(v18 + 208);
  v41 = *(v18 + 216);
  v42 = *(v18 + 200);
  v43 = *(v18 + 24);
  v44 = *(v18 + 16);
  v45 = *(v18 + 240);
  *(v18 + 320) = sub_22C9076EC();
  v25 = *MEMORY[0x277D1E1B8];
  *(v18 + 384) = v25;
  *(v18 + 328) = sub_22C90796C();
  sub_22C36985C();
  v27 = *(v26 + 104);
  *(v18 + 336) = v27;
  *(v18 + 344) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v27(v21, v25);
  (*(v22 + 104))(v21, *MEMORY[0x277D1DCB0], v23);
  *(v18 + 388) = *(sub_22C587C84(0) + 24);
  sub_22C90068C();
  sub_22C9076CC();
  v28 = *(v20 + 8);
  *(v18 + 352) = v28;
  *(v18 + 360) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v19, v40);
  (*(v22 + 8))(v21, v23);
  (*(v24 + 104))(v41, *MEMORY[0x277D22D88], v42);
  (*(v20 + 16))(v19, v39, v40);

  sub_22C909B9C();
  v29 = swift_task_alloc();
  *(v18 + 368) = v29;
  *v29 = v18;
  v29[1] = sub_22C3E98BC;
  sub_22C375E04();

  return MEMORY[0x282181840](v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, a16, a17, a18);
}

uint64_t sub_22C3E98BC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 376) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3E99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v20 = *(v18 + 184);
  v19 = *(v18 + 192);
  v21 = *(v18 + 176);
  v22 = sub_22C909BBC();
  (*(v20 + 8))(v19, v21);
  v27 = *(v22 + 16);
  if (v27)
  {
    v28 = *(v18 + 64);
    v71 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v27, 0, v23, v24, v25, v26);
    v29 = v71;
    v30 = *(v28 + 16);
    v28 += 16;
    v31 = v22 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v64 = *(v28 + 56);
    v67 = v30;
    v32 = (v28 - 8);
    do
    {
      v33 = *(v18 + 72);
      v34 = *(v18 + 56);
      v67(v33, v31, v34);
      v35 = sub_22C909B7C();
      v37 = v36;
      (*v32)(v33, v34);
      a15 = v29;
      v43 = *(v29 + 16);
      v42 = *(v29 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22C3B5E2C(v42 > 1, v43 + 1, 1, v38, v39, v40, v41);
      }

      *(v29 + 16) = v43 + 1;
      v44 = v29 + 16 * v43;
      *(v44 + 32) = v35;
      *(v44 + 40) = v37;
      v31 += v64;
      --v27;
    }

    while (v27);
  }

  v68 = *(v18 + 352);
  v45 = *(v18 + 296);
  v46 = *(v18 + 232);
  v62 = *(v18 + 240);
  v65 = *(v18 + 272);
  v61 = *(v18 + 224);
  v47 = *(v18 + 88);
  v48 = *(v18 + 96);
  v49 = *(v18 + 80);
  (*(v18 + 336))(v48, *(v18 + 384), *(v18 + 328));
  (*(v47 + 104))(v48, *MEMORY[0x277D1D9E8], v49);
  sub_22C9076AC();
  (*(v47 + 8))(v48, v49);
  (*(v46 + 8))(v62, v61);
  v68(v45, v65);
  v63 = *(v18 + 144);
  v66 = *(v18 + 120);
  v69 = *(v18 + 96);
  v70 = *(v18 + 72);
  v50 = sub_22C388E7C();
  v51(v50);

  sub_22C375E04();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, v61, v63, v66, v69, v70, a15, a16, a17, a18);
}

uint64_t sub_22C3E9CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = *(v14 + 160);
  v15 = *(v14 + 168);
  v18 = *(v14 + 144);
  v17 = *(v14 + 152);
  v19 = *(v14 + 136);
  v44 = *(v14 + 128);
  (*(v14 + 336))(v15, *(v14 + 384), *(v14 + 328));
  v20 = sub_22C386F78();
  v21(v20);
  sub_22C9002FC();
  sub_22C90695C();
  sub_22C9076BC();
  (*(v19 + 8))(v18, v44);
  (*(v16 + 8))(v15, v17);
  sub_22C903F7C();
  v22 = sub_22C9063CC();
  v23 = sub_22C90AADC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22C366000, v22, v23, "Failed to read from plan cache. Continuing with no drafts.", v24, 2u);
    sub_22C3699EC();
  }

  v25 = *(v14 + 376);
  v47 = *(v14 + 352);
  v45 = *(v14 + 296);
  v26 = *(v14 + 272);
  v28 = *(v14 + 232);
  v27 = *(v14 + 240);
  v29 = *(v14 + 224);
  v30 = *(v14 + 112);
  v31 = *(v14 + 120);
  v32 = *(v14 + 104);

  (*(v30 + 8))(v31, v32);
  (*(v28 + 8))(v27, v29);
  v47(v45, v26);
  v46 = *(v14 + 120);
  v48 = *(v14 + 96);
  v49 = *(v14 + 72);
  v33 = sub_22C388E7C();
  v34(v33);

  sub_22C36D5F8();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, v46, v48, v49, a12, a13, a14);
}

uint64_t sub_22C3E9F60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C3E9FA0(uint64_t result, int a2, int a3)
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

uint64_t sub_22C3EA008()
{
  sub_22C3715A0();
  v0 = sub_22C372650();
  return v1(v0);
}

uint64_t sub_22C3EA044()
{
  sub_22C3715A0();
  v0 = sub_22C372650();
  return v1(v0);
}

uint64_t sub_22C3EA080()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v6);
  v1[12] = sub_22C3699D4();
  v7 = sub_22C90069C();
  v1[13] = v7;
  sub_22C3699B8(v7);
  v1[14] = v8;
  v1[15] = sub_22C3699D4();
  v9 = sub_22C909D9C();
  v1[16] = v9;
  sub_22C3699B8(v9);
  v1[17] = v10;
  v1[18] = sub_22C3699D4();
  v11 = sub_22C9063DC();
  v1[19] = v11;
  sub_22C3699B8(v11);
  v1[20] = v12;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v13 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_22C3EA204(uint64_t a1)
{
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Running completion request using TokenGeneration", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v1[20];
  v6 = v1[18];
  v7 = v1[14];
  v23 = v1[13];
  v24 = v1[15];
  v25 = v1[12];
  v8 = v1[11];
  v9 = v1[8];
  v22 = v1[9];
  v10 = v1[7];

  v1[23] = *(v5 + 8);
  v11 = sub_22C36D264();
  v12(v11);
  sub_22C3F9B04(v10, v9, v6);
  sub_22C378A4C(v8, (v1 + 2));
  sub_22C374168(v1 + 2, v1[5]);
  v13 = sub_22C587C84(0);
  (*(v7 + 16))(v24, v22 + *(v13 + 36), v23);
  sub_22C3ECF48(v22 + *(v13 + 24), v25);
  v14 = sub_22C90451C();
  v15 = sub_22C370B74(v25, 1, v14);
  v16 = v1[12];
  if (v15 == 1)
  {
    sub_22C36DD28(v1[12], &qword_27D9BB7A0, &qword_22C9110D0);
    v17 = 0;
  }

  else
  {
    sub_22C90448C();
    v17 = v18;
    (*(*(v14 - 8) + 8))(v16, v14);
  }

  v1[24] = v17;
  v19 = swift_task_alloc();
  v1[25] = v19;
  *v19 = v1;
  v19[1] = sub_22C3EA4F0;
  sub_22C36EC40();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_22C3EA4F0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  *v12 = *v1;
  v11[26] = v0;

  v13 = v10[15];
  v14 = v10[14];
  v15 = v10[13];
  if (!v0)
  {
    v11[27] = v3;
    v11[28] = v5;
    v11[29] = v7;
    v11[30] = v9;
  }

  (*(v14 + 8))(v13, v15);

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C3EA694()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_22C36FF94(v0 + 2);

  v1 = v0[1];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_22C3EA75C()
{
  v1 = v0[26];
  sub_22C36FF94(v0 + 2);
  sub_22C903F7C();
  v2 = v1;
  v3 = sub_22C9063CC();
  v4 = sub_22C90AADC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = sub_22C36FB44();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_22C3CA698(&dword_22C366000, v10, v11, "Error during GMS inference request: %@");
    sub_22C36DD28(v7, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v12 = v0[26];
  v13 = v0[23];

  v14 = sub_22C36D264();
  v13(v14);
  v15 = sub_22C3EA98C(v12);
  v16 = v0[26];
  if (v15)
  {
    type metadata accessor for FullPlannerError(0);
    sub_22C371588();
    v19 = sub_22C3ED0B4(v17, v18, &protocol conformance descriptor for FullPlannerError);
    sub_22C3700B4(v19);
    v20 = v16;
    sub_22C901E9C();
    v21 = sub_22C901E8C();
    sub_22C3ED274(v21);
  }

  else
  {
    swift_willThrow();
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_22C369A24();

  return v22();
}

BOOL sub_22C3EA98C(void *a1)
{
  v2 = sub_22C90348C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_22C90195C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  v29 = a1;
  v22 = a1;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v18, v21, v12);
    v23 = (*(v14 + 88))(v18, v12) == *MEMORY[0x277D71AB0];
    (*(v14 + 8))(v18, v12);
  }

  else
  {

    v29 = a1;
    v24 = a1;
    if (!swift_dynamicCast())
    {

      return 0;
    }

    (*(v4 + 32))(v8, v11, v2);
    v23 = (*(v4 + 88))(v8, v2) == *MEMORY[0x277D29D68];
    v25 = sub_22C3ED264();
    v26(v25);
  }

  return v23;
}

uint64_t sub_22C3EAC34()
{
  sub_22C369980();
  v1[2] = v0;
  v2 = sub_22C587C84(0);
  v1[3] = v2;
  sub_22C369914(v2);
  v1[4] = sub_22C3699D4();
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C3EACB0()
{
  v1 = *(v0 + 24);
  v2 = sub_22C9073DC();
  sub_22C36D628(v2);
  *(v0 + 92) = v1[6];
  v3 = sub_22C90451C();
  sub_22C379F24(v3);
  *(v0 + 100) = v1[8];
  sub_22C90068C();
  *(v0 + 104) = v1[9];
  sub_22C90068C();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22C3EADA0;

  return sub_22C3EA080();
}

uint64_t sub_22C3EADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C37F044();
  v16 = v15;
  v17 = *v11;
  sub_22C369970();
  *v18 = v17;
  v16[7] = v10;

  if (!v10)
  {
    v19 = v16[4];
    if (sub_22C370B74(v19, 1, v16[5]) != 1)
    {
      sub_22C90069C();
      sub_22C36985C();
      (*(v20 + 8))(v19);
      v19 = v16[4];
    }

    v21 = sub_22C386F88();
    sub_22C36985C();
    v23 = *(v22 + 8);
    v23(v19 + v9, v21);
    sub_22C36DD28(v19 + v12, &qword_27D9BB7A0, &qword_22C9110D0);
    v23(v19 + v14, v21);
    v23(v19 + v13, v21);
    v23(v19 + a9, v21);
  }

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22C3EAF80()
{
  sub_22C369980();

  v1 = v0[1];
  v3 = v0[8];
  v2 = v0[9];

  return v1(v2, v3);
}

uint64_t sub_22C3EAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 32);
  if (sub_22C370B74(v13, 1, *(v12 + 40)) != 1)
  {
    sub_22C90069C();
    sub_22C36985C();
    (*(v14 + 8))(v13);
    v13 = *(v12 + 32);
  }

  v16 = *(v12 + 100);
  v15 = *(v12 + 104);
  v18 = *(v12 + 92);
  v17 = *(v12 + 96);
  v19 = *(v12 + 88);
  v20 = sub_22C90069C();
  sub_22C36985C();
  v22 = *(v21 + 8);
  v22(v13 + v19, v20);
  sub_22C36DD28(v13 + v18, &qword_27D9BB7A0, &qword_22C9110D0);
  v22(v13 + v17, v20);
  v22(v13 + v16, v20);
  v22(v13 + v15, v20);

  sub_22C369A24();
  sub_22C372034();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C3EB13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3EB1F8;

  return sub_22C3EA080();
}

uint64_t sub_22C3EB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  sub_22C369970();
  *v11 = v10;

  v16 = *(v10 + 8);
  if (!v4)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
  }

  return v16(v12, v13, v14, v15);
}

uint64_t sub_22C3EB318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3EB3A4;

  return sub_22C3EAC34();
}

uint64_t sub_22C3EB3A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_22C369970();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_22C3EB4AC()
{
  sub_22C382EF8();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v5 = v1 == v2 && 0x800000022C92E300 == v0;
  if (v5 || (sub_22C377328(v4, 0x800000022C92E300) & 1) != 0)
  {
    return v2 - 39;
  }

  sub_22C903F7C();

  v7 = sub_22C9063CC();
  v8 = sub_22C90AADC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_22C36FB44();
    v14 = swift_slowAlloc();
    *(v9 + 4) = sub_22C37B948(4.8149e-34);
    sub_22C385538(&dword_22C366000, v10, v11, "Unable to find the PromptTemplatePrefix for key %s");
    sub_22C36FF94(v14);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v12 = sub_22C3ED264();
  v13(v12);
  return 0;
}

uint64_t sub_22C3EB640()
{
  sub_22C382EF8();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v5 = v1 == v2 && 0x800000022C92E300 == v0;
  if (v5 || (sub_22C377328(v4, 0x800000022C92E300) & 1) != 0)
  {
    sub_22C3A5908(&qword_27D9BBBE0, &unk_22C911100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v1;
    *(inited + 40) = v0;
    *(inited + 56) = 35;
    *(inited + 64) = 2;
  }

  else
  {
    sub_22C903F7C();

    v7 = sub_22C9063CC();
    v8 = sub_22C90AADC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_22C36FB44();
      v15 = swift_slowAlloc();
      *(v9 + 4) = sub_22C37B948(4.8149e-34);
      sub_22C385538(&dword_22C366000, v10, v11, "Unable to find the PromptTemplatePrefix for key %s");
      sub_22C36FF94(v15);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v12 = sub_22C3ED264();
    v13(v12);
  }

  return sub_22C909F0C();
}

uint64_t sub_22C3EB848(uint64_t a1)
{
  v2 = sub_22C3ED200();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3EB884(uint64_t a1)
{
  v2 = sub_22C3ED200();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C3EB8DC()
{
  sub_22C369980();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v6);
  v1[23] = sub_22C3699D4();
  v7 = sub_22C90069C();
  v1[24] = v7;
  sub_22C3699B8(v7);
  v1[25] = v8;
  v1[26] = sub_22C3699D4();
  v9 = sub_22C909D9C();
  v1[27] = v9;
  sub_22C3699B8(v9);
  v1[28] = v10;
  v1[29] = sub_22C3699D4();
  v11 = sub_22C90444C();
  v1[30] = v11;
  sub_22C3699B8(v11);
  v1[31] = v12;
  v1[32] = sub_22C3699D4();
  v13 = sub_22C9063DC();
  v1[33] = v13;
  sub_22C3699B8(v13);
  v1[34] = v14;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_22C3EBAAC(uint64_t a1)
{
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Running completion request using templated TokenGeneration", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v1[36];
  v6 = v1[33];
  v7 = v1[34];
  v8 = v1[32];
  v9 = v1[22];
  v11 = v1[18];
  v10 = v1[19];

  v12 = *(v7 + 8);
  v1[37] = v12;
  v12(v5, v6);
  v13 = sub_22C3EC41C(v8, v11, v10, *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64));
  v14 = v1[26];
  v16 = v1[28];
  v15 = v1[29];
  v17 = v1[27];
  v18 = v1[25];
  v19 = v1[22];
  v34 = v1[24];
  v35 = v1[23];
  v20 = v1[20];
  sub_22C3F9B04(v13, v21, v15);

  sub_22C378A4C(v19, (v1 + 13));
  sub_22C374168(v1 + 13, v1[16]);
  sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v23 = MEMORY[0x277D42E20];
  *(inited + 72) = v17;
  *(inited + 80) = v23;
  v24 = sub_22C36D548((inited + 48));
  (*(v16 + 16))(v24, v15, v17);
  sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
  v1[38] = sub_22C909F0C();
  v25 = sub_22C587C84(0);
  (*(v18 + 16))(v14, v20 + *(v25 + 36), v34);
  sub_22C3ECF48(v20 + *(v25 + 24), v35);
  v26 = sub_22C90451C();
  v27 = sub_22C370B74(v35, 1, v26);
  v28 = v1[23];
  if (v27 == 1)
  {
    sub_22C36DD28(v1[23], &qword_27D9BB7A0, &qword_22C9110D0);
    v29 = 0;
  }

  else
  {
    sub_22C90448C();
    v29 = v30;
    (*(*(v26 - 8) + 8))(v28, v26);
  }

  v1[39] = v29;
  v31 = swift_task_alloc();
  v1[40] = v31;
  *v31 = v1;
  v31[1] = sub_22C3EBEE0;
  sub_22C36EC40();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22C3EBEE0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v3 = v2;
  v5 = v4;
  v20 = v6;
  v8 = v7;
  v9 = *v1;
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;
  *v11 = *v1;
  v10[41] = v0;

  v12 = v9[26];
  v13 = v9[25];
  v14 = v9[24];
  if (!v0)
  {
    v10[42] = v3;
    v10[43] = v5;
    v10[44] = v20;
    v10[45] = v8;
  }

  (*(v13 + 8))(v12, v14);

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C3EC0AC()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = sub_22C36D264();
  v2(v1);
  sub_22C36FF94(v0 + 13);

  v3 = v0[1];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];

  return v3(v4, v5, v6, v7);
}

uint64_t sub_22C3EC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[41];
  sub_22C36FF94(v12 + 13);
  sub_22C903F7C();
  v14 = v13;
  v15 = sub_22C9063CC();
  v16 = sub_22C90AADC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v12[41];
    v18 = sub_22C36FB44();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v17;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    sub_22C3CA698(&dword_22C366000, v22, v23, "Error during GMS inference request: %@");
    sub_22C36DD28(v19, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v24 = v12[41];
  v25 = v12[37];

  v26 = sub_22C36D264();
  v25(v26);
  v27 = sub_22C3EA98C(v24);
  v28 = v12[41];
  v30 = v12[31];
  v29 = v12[32];
  v32 = v12[29];
  v31 = v12[30];
  v33 = v12[27];
  v34 = v12[28];
  if (v27)
  {
    type metadata accessor for FullPlannerError(0);
    sub_22C371588();
    v37 = sub_22C3ED0B4(v35, v36, &protocol conformance descriptor for FullPlannerError);
    sub_22C3700B4(v37);
    v38 = v28;
    sub_22C901E9C();
    v39 = sub_22C901E8C();
    sub_22C3ED274(v39);
  }

  else
  {
    swift_willThrow();
  }

  (*(v34 + 8))(v32, v33);
  (*(v30 + 8))(v29, v31);

  sub_22C369A24();
  sub_22C372034();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_22C3EC41C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, unint64_t a7)
{
  v64 = a4;
  v65 = a5;
  v66 = a1;
  v71 = sub_22C90444C();
  sub_22C369824();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v68 = v14 - v13;
  v72 = sub_22C9063DC();
  sub_22C369824();
  v76 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v70 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  v25 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  v26 = sub_22C369914(v25);
  MEMORY[0x28223BE20](v26);
  v67 = a2;
  v75[0] = a2;
  v75[1] = a3;
  v27 = a3;
  v73 = sub_22C3EB4AC();
  v74 = v28;
  sub_22C3ECFB8();
  sub_22C3ED00C();
  LOBYTE(a3) = sub_22C90A02C();

  if (a3)
  {
    v29 = sub_22C3EB4AC();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29;
    }

    v33 = 7;
    if (((v31 >> 60) & ((v29 & 0x800000000000000) == 0)) != 0)
    {
      v33 = 11;
    }

    v34 = sub_22C8A5380(v33 | (v32 << 16), v67, v27);
    v63 = MEMORY[0x2318B76D0](v34);
    v67 = v35;

    sub_22C90127C();
    sub_22C3ED0B4(&qword_281435820, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);

    sub_22C90125C();

    sub_22C3EB640();
    v36 = v66;
    v64 = a6;
    sub_22C90442C();
    sub_22C903F7C();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AACC();
    v39 = a7;
    if (os_log_type_enabled(v37, v38))
    {
      sub_22C3720F4();
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22C366000, v37, v38, "Prompt converted into template and bindings.", v40, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v41 = v76 + 8;
    v42 = v72;
    v65 = *(v76 + 8);
    v65(v24, v72);
    v43 = v70;
    sub_22C903F7C();
    v44 = v68;
    v45 = v69;
    (*(v69 + 16))(v68, v36, v71);

    v46 = sub_22C9063CC();
    v47 = v39;
    v48 = sub_22C90AACC();
    v49 = v46;

    LODWORD(v66) = v48;
    if (os_log_type_enabled(v46, v48))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = v41;
      v75[0] = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_22C36F9F4(v64, v47, v75);
      *(v50 + 12) = 2080;
      v52 = sub_22C9043FC();
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0x756F4620746F4E3CLL;
      }

      v55 = v43;
      if (v53)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0xEB000000003E646ELL;
      }

      (*(v45 + 8))(v44, v71);
      v57 = sub_22C36F9F4(v54, v56, v75);

      *(v50 + 14) = v57;
      *(v50 + 22) = 2080;
      v58 = v63;
      *(v50 + 24) = sub_22C36F9F4(v63, v67, v75);
      _os_log_impl(&dword_22C366000, v49, v66, "    Template ID: %s\n    Client Template: %s\n    Content: %s", v50, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v65(v55, v72);
    }

    else
    {

      (*(v45 + 8))(v44, v71);
      v65(v43, v42);
      return v63;
    }
  }

  else
  {
    sub_22C903F7C();
    v59 = sub_22C9063CC();
    v58 = sub_22C90AADC();
    if (os_log_type_enabled(v59, v58))
    {
      sub_22C3720F4();
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22C366000, v59, v58, "Prompt does not match GMS template. Unable to reform prompt to send to GMS.", v60, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v76 + 8))(v19, v72);
    sub_22C3ED060();
    swift_allocError();
    swift_willThrow();
  }

  return v58;
}

uint64_t sub_22C3ECAB4()
{
  sub_22C369980();
  v1[2] = v0;
  v2 = sub_22C587C84(0);
  v1[3] = v2;
  sub_22C369914(v2);
  v1[4] = sub_22C3699D4();
  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C3ECB30()
{
  v1 = *(v0 + 24);
  v2 = sub_22C9073DC();
  sub_22C36D628(v2);
  *(v0 + 92) = v1[6];
  v3 = sub_22C90451C();
  sub_22C379F24(v3);
  *(v0 + 100) = v1[8];
  sub_22C90068C();
  *(v0 + 104) = v1[9];
  sub_22C90068C();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22C3ECC20;

  return sub_22C3EB8DC();
}

uint64_t sub_22C3ECC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C37F044();
  v16 = v15;
  v17 = *v11;
  sub_22C369970();
  *v18 = v17;
  v16[7] = v10;

  if (!v10)
  {
    v19 = v16[4];
    if (sub_22C370B74(v19, 1, v16[5]) != 1)
    {
      sub_22C90069C();
      sub_22C36985C();
      (*(v20 + 8))(v19);
      v19 = v16[4];
    }

    v21 = sub_22C386F88();
    sub_22C36985C();
    v23 = *(v22 + 8);
    v23(v19 + v9, v21);
    sub_22C36DD28(v19 + v12, &qword_27D9BB7A0, &qword_22C9110D0);
    v23(v19 + v14, v21);
    v23(v19 + v13, v21);
    v23(v19 + a9, v21);
  }

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22C3ECE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3ED258;

  return sub_22C3EB8DC();
}

uint64_t sub_22C3ECEBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3ED260;

  return sub_22C3ECAB4();
}

uint64_t sub_22C3ECF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3ECFB8()
{
  result = qword_27D9BBBC8;
  if (!qword_27D9BBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBC8);
  }

  return result;
}

unint64_t sub_22C3ED00C()
{
  result = qword_27D9BBBD0;
  if (!qword_27D9BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBD0);
  }

  return result;
}

unint64_t sub_22C3ED060()
{
  result = qword_27D9BBBD8;
  if (!qword_27D9BBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBD8);
  }

  return result;
}

uint64_t sub_22C3ED0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_22C3ED0FC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C3ED1AC()
{
  result = qword_27D9BBBE8;
  if (!qword_27D9BBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBE8);
  }

  return result;
}

unint64_t sub_22C3ED200()
{
  result = qword_27D9BBBF0;
  if (!qword_27D9BBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBF0);
  }

  return result;
}

uint64_t sub_22C3ED274(uint64_t a1)
{
  sub_22C36C640(v1, 0, 15, a1);

  return swift_willThrow();
}

uint64_t sub_22C3ED2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = sub_22C3A5908(&qword_27D9BBC30, &qword_22C9112B0);
  sub_22C369824();
  v73 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v66 = v6;
  v65 = sub_22C3A5908(&qword_27D9BBC38, &qword_22C9112B8);
  sub_22C369824();
  v71 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v64 = v9;
  sub_22C36BA0C();
  v63 = sub_22C901B3C();
  sub_22C369824();
  v69 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v62 = v12;
  v13 = sub_22C3A5908(&qword_27D9BBC40, &unk_22C9112C0);
  sub_22C369824();
  v68 = v14;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36D5B4();
  v70 = v16;
  sub_22C36BA0C();
  v17 = sub_22C909CCC();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v23 = v22 - v21;
  v76 = type metadata accessor for CompletionPromptProperty(0);
  sub_22C369824();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v31 = v56 - v30;
  v32 = v19;
  result = (*(v19 + 16))(a2, v75, v17);
  v34 = *(a1 + 16);
  if (v34)
  {
    sub_22C36BA94();
    v36 = a1 + v35;
    v74 = *(v25 + 72);
    v59 = v73 + 1;
    v60 = v73 + 13;
    v37 = v32;
    v73 = (v32 + 8);
    v72 = *MEMORY[0x277D0E548];
    v57 = (v69 + 2);
    v58 = (v69 + 4);
    v56[2] = v71 + 13;
    v56[1] = v71 + 1;
    v56[0] = v69 + 1;
    v38 = v68++;
    v69 = v38 + 13;
    v71 = (v37 + 32);
    v75 = v23;
    v61 = v13;
    while (2)
    {
      sub_22C3F03C0(v36, v31, type metadata accessor for CompletionPromptProperty);
      sub_22C3F03C0(v31, v29, type metadata accessor for CompletionPromptProperty);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v54 = sub_22C3F059C();
          v55(v54);
          sub_22C3F041C();
          sub_22C372100();
          sub_22C909E5C();
          goto LABEL_8;
        case 2u:
          v41 = v62;
          v25 = v63;
          (*v58)(v62, v29, v63);
          (*v57)(v64, v41, v25);
          v42 = sub_22C385558();
          v43 = v65;
          v44(v42, v72, v65);
          sub_22C3F041C();
          sub_22C37F70C();
          sub_22C909E4C();
          v45 = sub_22C385558();
          v23 = v75;
          v46(v45, v43);
          v47 = v41;
          v13 = v61;
          (*v56[0])(v47, v25);
          goto LABEL_10;
        case 3u:
          v48 = v67;
          *v66 = *v29;
          v49 = sub_22C385558();
          v50(v49, v72, v48);
          sub_22C3F041C();
          sub_22C37F70C();
          sub_22C909E0C();
          v51 = sub_22C385558();
          v23 = v75;
          v53 = v48;
          goto LABEL_9;
        default:
          v39 = sub_22C3F059C();
          v40(v39);
          sub_22C3F041C();
          sub_22C372100();
          sub_22C909E1C();
LABEL_8:
          v52 = *v68;
          v51 = v25;
          v53 = v13;
LABEL_9:
          v52(v51, v53);
LABEL_10:
          sub_22C3F0474(v31, type metadata accessor for CompletionPromptProperty);
          (*v73)(a2, v17);
          result = (*v71)(a2, v23, v17);
          v36 += v74;
          if (!--v34)
          {
            return result;
          }

          continue;
      }
    }
  }

  return result;
}

void sub_22C3ED870(uint64_t a1)
{
  sub_22C9019FC();
  sub_22C369824();
  v140 = v2;
  v141 = v3;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v139 = v4;
  sub_22C36BA0C();
  v127 = sub_22C9063DC();
  sub_22C369824();
  v126 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v135 = sub_22C901A4C();
  sub_22C369824();
  v130 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v134 = v12;
  sub_22C36BA0C();
  v13 = sub_22C901A1C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  sub_22C901A8C();
  sub_22C369824();
  v137 = v20;
  v138 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C901A6C();
  sub_22C369824();
  v143 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v136 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v142 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v33 = v124 - v32;
  v34 = sub_22C3A5908(&qword_27D9BBC28, &qword_22C911298);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v37 = v124 - v36;
  v129 = a1;
  v38 = sub_22C901A2C();
  sub_22C58B020(v38, v37);

  v39 = sub_22C901ABC();
  v40 = sub_22C370B74(v37, 1, v39);
  v125 = v9;
  v124[2] = v13;
  v124[1] = v15;
  v128 = v19;
  if (v40 == 1)
  {
    sub_22C36DD28(v37, &qword_27D9BBC28, &qword_22C911298);
LABEL_10:
    v44 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v41 = sub_22C901AAC();
  sub_22C36BBA8();
  (*(v42 + 8))(v37, v39);
  v43 = *(v41 + 16);
  if (!v43)
  {

    goto LABEL_10;
  }

  v146 = MEMORY[0x277D84F90];
  sub_22C3B637C(0, v43, 0);
  v44 = v146;
  sub_22C36BA94();
  v131 = v41;
  v46 = v41 + v45;
  v132 = *(v47 + 56);
  v133 = v48;
  v138 = v47;
  v49 = (v47 - 8);
  do
  {
    v50 = v137;
    v133(v24, v46, v137);
    sub_22C901A7C();
    (*v49)(v24, v50);
    v146 = v44;
    v15 = *(v44 + 16);
    v51 = *(v44 + 24);
    v13 = (v15 + 1);
    if (v15 >= v51 >> 1)
    {
      v54 = sub_22C369AB0(v51);
      sub_22C3B637C(v54, v15 + 1, 1);
      v44 = v146;
    }

    *(v44 + 16) = v13;
    sub_22C36BA94();
    (*(v53 + 32))(v44 + v52 + *(v53 + 72) * v15, v33, v25);
    v46 += v132;
    --v43;
  }

  while (v43);

  sub_22C3F05E0();
LABEL_11:
  v55 = *(v44 + 16);
  v56 = v136;
  if (v55)
  {
    v13 = *(v143 + 16);
    sub_22C36BA94();
    v124[0] = v44;
    v58 = v44 + v57;
    v138 = *(v59 + 56);
    v15 = v59 + 72;
    LODWORD(v137) = *MEMORY[0x277D71C10];
    v60 = (v59 - 8);
    v143 = v59;
    v131 = (v130 + 4);
    v132 = v59 + 80;
    ++v130;
    v61 = MEMORY[0x277D84F90];
    v62 = v142;
    v133 = v13;
    do
    {
      v13(v62, v58, v25);
      v13(v56, v62, v25);
      v63 = (*v15)(v56, v25);
      if (v63 == v137)
      {
        (*v132)(v56, v25);
        v64 = v134;
        v65 = v56;
        v66 = v135;
        (*v131)(v134, v65, v135);
        v67 = sub_22C901A3C();
        v69 = v68;
        (*v130)(v64, v66);
        (*v60)(v142, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590270(0, *(v61 + 16) + 1, 1, v61);
          v61 = v74;
        }

        v71 = *(v61 + 16);
        v70 = *(v61 + 24);
        if (v71 >= v70 >> 1)
        {
          v75 = sub_22C369AB0(v70);
          sub_22C590270(v75, v71 + 1, 1, v61);
          v61 = v76;
        }

        *(v61 + 16) = v71 + 1;
        v72 = v61 + 16 * v71;
        *(v72 + 32) = v67;
        *(v72 + 40) = v69;
        v56 = v136;
        v62 = v142;
        v13 = v133;
      }

      else
      {
        v73 = *v60;
        (*v60)(v62, v25);
        v73(v56, v25);
      }

      v58 += v138;
      --v55;
    }

    while (v55);

    sub_22C3F05E0();
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v146 = v61;
  v77 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  v78 = sub_22C3F035C();
  v79 = sub_22C90A04C();
  v134 = v80;
  v135 = v79;

  v81 = v128;
  sub_22C901A5C();
  v82 = sub_22C901A0C();
  (*(v15 + 8))(v81, v13);
  v87 = *(v82 + 16);
  if (v87)
  {
    v132 = v78;
    v133 = v77;
    v148 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v87, 0, v83, v84, v85, v86);
    v88 = 0;
    v89 = v148;
    sub_22C36BA94();
    v142 = v82 + v90;
    v143 = v82;
    v137 = v91 + 16;
    v138 = 0x800000022C9301C0;
    v136 = v91 + 8;
    v92 = v141;
    while (v88 < *(v82 + 16))
    {
      v93 = v87;
      v94 = v139;
      v95 = v140;
      (*(v92 + 16))(v139, v142 + *(v92 + 72) * v88, v140);
      v146 = 0;
      v147 = 0xE000000000000000;
      sub_22C90AF5C();

      v146 = 0xD000000000000012;
      v147 = v138;
      v96 = sub_22C9019DC();
      MEMORY[0x2318B7850](v96);

      MEMORY[0x2318B7850](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
      v144 = sub_22C9019EC();
      v145 = v97;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v98 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v98);

      MEMORY[0x2318B7850](41, 0xE100000000000000);
      v99 = v146;
      v100 = v147;
      (*(v92 + 8))(v94, v95);
      v148 = v89;
      v102 = *(v89 + 16);
      v101 = *(v89 + 24);
      if (v102 >= v101 >> 1)
      {
        v104 = sub_22C369AB0(v101);
        sub_22C3B5E2C(v104, v102 + 1, 1, v105, v106, v107, v108);
        v89 = v148;
      }

      ++v88;
      *(v89 + 16) = v102 + 1;
      v103 = v89 + 16 * v102;
      *(v103 + 32) = v99;
      *(v103 + 40) = v100;
      v87 = v93;
      v82 = v143;
      if (v93 == v88)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
LABEL_31:
    v146 = v89;
    v109 = sub_22C90A04C();
    v111 = v110;

    v146 = 91;
    v147 = 0xE100000000000000;
    MEMORY[0x2318B7850](v109, v111);

    MEMORY[0x2318B7850](93, 0xE100000000000000);
    v112 = v146;
    v113 = v147;
    v114 = v125;
    sub_22C903F7C();

    v115 = sub_22C9063CC();
    v116 = sub_22C90AACC();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v146 = v118;
      *v117 = 136315138;
      *(v117 + 4) = sub_22C36F9F4(v112, v113, &v146);
      _os_log_impl(&dword_22C366000, v115, v116, "Inference request via GMS completed with model information: %s", v117, 0xCu);
      sub_22C36FF94(v118);
      sub_22C369B50();
      MEMORY[0x2318B9880](v119, v120, v121);
      v122 = sub_22C36D66C();
      MEMORY[0x2318B9880](v122);
    }

    sub_22C901ACC();
    sub_22C36985C();
    (*(v123 + 8))(v129);
    (*(v126 + 8))(v114, v127);
  }
}

uint64_t sub_22C3EE398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v15;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 184) = a6;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v10);
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 96) = sub_22C901B3C();
  sub_22C369B5C();
  *(v9 + 104) = v11;
  *(v9 + 112) = swift_task_alloc();
  *(v9 + 120) = type metadata accessor for CompletionPromptProperty(0);
  sub_22C369B5C();
  *(v9 + 128) = v12;
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3EE514, 0, 0);
}

uint64_t sub_22C3EE514()
{
  v1 = *(v0 + 184);
  if (v1 == 255)
  {
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (v1)
    {
      v5 = *(v0 + 152);
      v4 = (v0 + 152);
      *v5 = v2;
      v5[1] = v3;
    }

    else
    {
      v7 = *(v0 + 144);
      v4 = (v0 + 144);
      *v7 = v2;
      v7[1] = v3;
    }

    swift_storeEnumTagMultiPayload();
    sub_22C36BA00();
    sub_22C3F0354();
    sub_22C592734();
    v6 = v8;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22C369AB0(v9);
      sub_22C592734();
      v6 = v32;
    }

    v11 = *v4;
    v12 = *(v0 + 128);
    *(v6 + 16) = v10 + 1;
    sub_22C3F02F0(v11, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10);
  }

  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  sub_22C379DF8(*(v0 + 56), v14, &qword_27D9BBC20, &qword_22C911290);
  if (sub_22C370B74(v14, 1, v13) == 1)
  {
    sub_22C36DD28(*(v0 + 88), &qword_27D9BBC20, &qword_22C911290);
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    (*(v17 + 32))(v16, *(v0 + 88), v18);
    (*(v17 + 16))(v15, v16, v18);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C592734();
      v6 = v33;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22C369AB0(v19);
      sub_22C592734();
      v6 = v34;
    }

    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *(v6 + 16) = v20 + 1;
    sub_22C36BA94();
    sub_22C3F02F0(v21, v6 + v23 + *(v22 + 72) * v20);
  }

  *(v0 + 160) = v6;
  sub_22C369B5C();
  v35 = (v24 + *v24);
  v25 = swift_task_alloc();
  *(v0 + 168) = v25;
  *v25 = v0;
  v25[1] = sub_22C3EE854;
  v26 = *(v0 + 72);
  v27 = *(v0 + 64);
  v28 = *(v0 + 24);
  v29 = *(v0 + 32);
  v30 = *(v0 + 16);

  return v35(v30, v28, v29, v6, v27, v26);
}

uint64_t sub_22C3EE854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  sub_22C369970();
  *v11 = v10;
  *(v10 + 176) = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_22C3EEA10, 0, 0);
  }

  else
  {

    v12 = *(v10 + 8);

    return v12(a1, a2, a3, a4);
  }
}

uint64_t sub_22C3EEA10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22C3EEAB8()
{
  v0 = sub_22C90035C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90046C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3F0160(v6, qword_27D9E3E90);
  sub_22C37AA60(v4, qword_27D9E3E90);
  if (qword_27D9BA600 != -1)
  {
    swift_once();
  }

  v9 = sub_22C37AA60(v4, qword_27D9E3EA8);
  (*(v5 + 16))(v8, v9, v4);
  v11[0] = 0xD000000000000022;
  v11[1] = 0x800000022C930190;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22C3858B4();
  sub_22C90043C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22C3EECF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v174 = a2;
  v216 = a1;
  v178 = a4;
  v167 = sub_22C90046C();
  sub_22C369824();
  v166 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  sub_22C3698F8(v7);
  v8 = sub_22C90197C();
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  sub_22C3698F8(v10);
  v177 = sub_22C901B5C();
  sub_22C369824();
  v176 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C3698F8(v14);
  v172 = sub_22C90876C();
  sub_22C369824();
  v164 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v163 = v17;
  v18 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  sub_22C36D5B4();
  v171 = v20;
  v21 = sub_22C3A5908(&qword_27D9BBBF8, &qword_22C911238);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C36D5B4();
  sub_22C3698F8(v23);
  v186 = sub_22C90199C();
  sub_22C369824();
  v185 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v188 = sub_22C90124C();
  sub_22C369824();
  v187 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  sub_22C3698F8(v30);
  sub_22C90075C();
  sub_22C369824();
  v204 = v32;
  v205 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v181 = v35;
  v36 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  v37 = sub_22C369914(v36);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v41 = sub_22C3698F8(v40);
  v42 = type metadata accessor for FullPlannerGMSClientConfiguration(v41);
  sub_22C36985C();
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  v200 = v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  v47 = &v161 - v46;
  v48 = sub_22C9063DC();
  sub_22C369824();
  v203 = v49;
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v201 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  v58 = &v161 - v57;
  v194 = type metadata accessor for FullPlannerPreferences(0);
  v59 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  v196 = a3;
  v189 = v59;
  sub_22C901EDC();
  v60 = v212;
  v61 = v213;
  sub_22C903F7C();
  sub_22C38855C();
  sub_22C3F03C0(v216, v47, v62);

  v63 = sub_22C9063CC();
  v64 = sub_22C90AACC();

  v65 = os_log_type_enabled(v63, v64);
  v197 = v48;
  v202 = v42;
  v195 = v61;
  v193 = v60;
  if (v65)
  {
    LODWORD(v169) = v64;
    v66 = v63;
    v67 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v212 = v162;
    *v67 = 136315394;
    *(v67 + 4) = sub_22C36F9F4(v60, v61, &v212);
    *(v67 + 12) = 2080;
    v68 = v181;
    sub_22C90076C();
    v69 = v199;
    sub_22C90074C();
    (*(v204 + 8))(v68, v205);
    v70 = sub_22C9006FC();
    if (sub_22C370B74(v69, 1, v70) == 1)
    {
      v71 = 7104878;
      sub_22C36DD28(v69, &qword_27D9BBC00, &unk_22C911240);
      v72 = 0xE300000000000000;
    }

    else
    {
      v71 = sub_22C9006EC();
      v72 = v77;
      sub_22C36BBA8();
      (*(v78 + 8))(v69, v70);
    }

    sub_22C373260();
    sub_22C3F0474(v47, v79);
    v80 = sub_22C36F9F4(v71, v72, &v212);

    *(v67 + 14) = v80;
    _os_log_impl(&dword_22C366000, v66, v169, "Building GMS client with ModelBundleIdentifier: %s and locale: %s", v67, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v81 = sub_22C36D66C();
    MEMORY[0x2318B9880](v81);

    v74 = *(v203 + 8);
    v75 = v58;
    v76 = v197;
  }

  else
  {

    sub_22C373260();
    sub_22C3F0474(v47, v73);
    v74 = *(v203 + 8);
    v75 = v58;
    v76 = v48;
  }

  v199 = v74;
  v74(v75, v76);
  sub_22C901EDC();
  v83 = v212;
  v82 = v213;
  sub_22C903F7C();
  sub_22C38855C();
  v84 = v216;
  v85 = v200;
  sub_22C3F03C0(v216, v200, v86);

  v87 = sub_22C9063CC();
  v88 = sub_22C90AACC();

  LODWORD(v181) = v88;
  v89 = os_log_type_enabled(v87, v88);
  v169 = v83;
  v189 = v82;
  if (v89)
  {
    v90 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    *v90 = 136315394;
    *(v90 + 4) = sub_22C36F9F4(v83, v82, &v212);
    *(v90 + 12) = 2080;
    v91 = v182;
    sub_22C90076C();
    v92 = v183;
    sub_22C90074C();
    (*(v204 + 8))(v91, v205);
    v93 = sub_22C9006FC();
    if (sub_22C370B74(v92, 1, v93) == 1)
    {
      v94 = 7104878;
      sub_22C36DD28(v92, &qword_27D9BBC00, &unk_22C911240);
      v95 = 0xE300000000000000;
    }

    else
    {
      v94 = sub_22C9006EC();
      v95 = v99;
      sub_22C36BBA8();
      (*(v100 + 8))(v92, v93);
    }

    sub_22C373260();
    sub_22C3F0474(v200, v101);
    v102 = sub_22C36F9F4(v94, v95, &v212);

    *(v90 + 14) = v102;
    _os_log_impl(&dword_22C366000, v87, v181, "Building GMS client with PromptTemplateKey: %s and locale: %s", v90, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v103 = sub_22C36D66C();
    MEMORY[0x2318B9880](v103);

    sub_22C38A864();
    v104();
    v98 = v198;
    v84 = v216;
  }

  else
  {

    sub_22C373260();
    sub_22C3F0474(v85, v96);
    sub_22C38A864();
    v97();
    v98 = v198;
  }

  v105 = v190;
  sub_22C90076C();
  sub_22C90074C();
  (*(v204 + 8))(v105, v205);
  v106 = v192;
  sub_22C90123C();
  v107 = v191;
  if (v106)
  {
  }

  v205 = 0;
  (*(v187 + 16))(v180, v98, v188);
  sub_22C90198C();
  v109 = v186;
  if (sub_22C370B74(v107, 1, v186) == 1)
  {

    sub_22C36DD28(v107, &qword_27D9BBBF8, &qword_22C911238);
    sub_22C903F7C();
    v110 = sub_22C9063CC();
    v111 = sub_22C90AADC();
    if (sub_22C36FBB4(v111))
    {
      v112 = sub_22C36D240();
      *v112 = 0;
      _os_log_impl(&dword_22C366000, v110, v111, "Failed to create the model bundle", v112, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    sub_22C38A864();
    v113();
    sub_22C3F010C();
    swift_allocError();
    *v114 = 2;
    swift_willThrow();
    return (*(v187 + 8))(v98, v188);
  }

  (*(v185 + 32))(v184, v107, v109);
  v115 = v171;
  sub_22C379DF8(v84, v171, &qword_27D9BB728, &qword_22C911230);
  v116 = v172;
  if (sub_22C370B74(v115, 1, v172) != 1)
  {
    v117 = v164;
    v118 = v163;
    (*(v164 + 32))(v163, v115, v116);
    sub_22C3FCDA0();
    (*(v117 + 8))(v118, v116);
  }

  sub_22C3A5908(&qword_27D9BBC10, &unk_22C911250);
  v119 = v185;
  v120 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_22C90F800;
  (*(v119 + 16))(v121 + v120, v184, v186);
  sub_22C90196C();
  v122 = v175;
  sub_22C901B4C();
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v209 == 1)
  {
    sub_22C903F7C();
    v123 = sub_22C9063CC();
    v124 = sub_22C90AADC();
    v125 = sub_22C36FBB4(v124);
    v126 = v177;
    v127 = v176;
    v128 = v197;
    if (v125)
    {
      v129 = sub_22C36D240();
      *v129 = 0;
      _os_log_impl(&dword_22C366000, v123, v124, "FullPlanner configured to skip inference. Note that the GMS APIs will be stubbed out, and the model will not be hit!", v129, 2u);
      v130 = sub_22C36D66C();
      MEMORY[0x2318B9880](v130);
    }

    v199(v170, v128);
    v214 = &type metadata for StubGMSWrapper;
    v215 = &off_283FB3348;
  }

  else
  {
    v127 = v176;
    v131 = v165;
    v126 = v177;
    (*(v176 + 16))(v165, v122, v177);
    v132 = sub_22C3F0614(v131);
    v214 = &type metadata for GMSWrapper;
    v215 = &off_283FB3370;
    v212 = v132;
    v128 = v197;
  }

  v133 = v169;
  v134 = v189;
  v135 = sub_22C90B21C();
  v136 = v173;
  if (v135)
  {

    v210 = &unk_283FB3168;
    v211 = &off_283FB31A8;
    *&v209 = swift_allocObject();
    sub_22C378AB0(&v212, v209 + 16);
    sub_22C903F7C();
    v137 = sub_22C9063CC();
    v138 = sub_22C90AACC();
    if (!sub_22C36FBB4(v138))
    {
      v136 = v179;
      goto LABEL_33;
    }

    *sub_22C36D240() = 0;
    sub_22C3F05F4(&dword_22C366000, v139, v140, "Created a FullPlannerModelClient with TokenGeneration");
    v136 = v179;
    goto LABEL_31;
  }

  v210 = &unk_283FB30E0;
  v211 = &off_283FB3180;
  v141 = swift_allocObject();
  *&v209 = v141;
  sub_22C378AB0(&v212, (v141 + 2));
  v142 = v195;
  v141[7] = v193;
  v141[8] = v142;
  v141[9] = v133;
  v141[10] = v134;
  sub_22C903F7C();
  v137 = sub_22C9063CC();
  v143 = sub_22C90AACC();
  if (sub_22C36FBB4(v143))
  {
    *sub_22C36D240() = 0;
    sub_22C3F05F4(&dword_22C366000, v144, v145, "Created a FullPlannerTemplatedGMSPromptClient with TokenGeneration");
LABEL_31:
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

LABEL_33:

  v199(v136, v128);
  v146 = v174;
  if (v174 != 3)
  {
    v207 = &type metadata for PnRTelemetryGMSPromptClient;
    v208 = &off_283FB3398;
    v147 = swift_allocObject();
    *&v206 = v147;
    sub_22C36C730(&v209, v147 + 16);
    *(v147 + 56) = v146;
    sub_22C36C730(&v206, &v209);
  }

  if (*(v216 + *(v202 + 24)) == 1)
  {
    sub_22C378AB0(&v209, &v206);
    if (qword_27D9BA5F0 != -1)
    {
      swift_once();
    }

    v148 = v167;
    v149 = sub_22C37AA60(v167, qword_27D9E3E90);
    v150 = v168;
    (*(v166 + 16))(v168, v149, v148);
    v151 = v178;
    v178[3] = &type metadata for CachedGMSPromptClient;
    v151[4] = &off_283FB3028;
    v152 = swift_allocObject();
    *v151 = v152;
    sub_22C3E64B8(&v206, v150, (v152 + 16));
    (*(v127 + 8))(v122, v126);
    v153 = sub_22C388E88();
    v154(v153);
    v155 = sub_22C3F05C0();
    v156(v155);
    sub_22C36FF94(&v209);
    return sub_22C36FF94(&v212);
  }

  else
  {
    (*(v127 + 8))(v122, v126);
    v157 = sub_22C388E88();
    v158(v157);
    v159 = sub_22C3F05C0();
    v160(v159);
    sub_22C36FF94(&v212);
    return sub_22C36C730(&v209, v178);
  }
}

unint64_t sub_22C3F010C()
{
  result = qword_27D9BBC08;
  if (!qword_27D9BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBC08);
  }

  return result;
}

uint64_t *sub_22C3F0160(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_22C3F01EC(uint64_t a1)
{
  sub_22C3F0278(319);
  if (v1 <= 0x3F)
  {
    sub_22C90077C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C3F0278(uint64_t a1)
{
  if (!qword_28142FAA0)
  {
    sub_22C90876C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142FAA0);
    }
  }
}

uint64_t sub_22C3F02F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3F035C()
{
  result = qword_28142F9F0;
  if (!qword_28142F9F0)
  {
    sub_22C3AC1A0(&qword_27D9BB5D0, &unk_22C9112A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F9F0);
  }

  return result;
}

uint64_t sub_22C3F03C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

unint64_t sub_22C3F041C()
{
  result = qword_27D9BBC48;
  if (!qword_27D9BBC48)
  {
    sub_22C909CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBC48);
  }

  return result;
}

uint64_t sub_22C3F0474(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C3F04CC(uint64_t a1)
{
  sub_22C901B3C();
  if (v1 <= 0x3F)
  {
    sub_22C3F054C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C3F054C()
{
  if (!qword_27D9BBC60)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BBC60);
    }
  }
}

void *sub_22C3F059C()
{
  v2 = v0[1];
  v3 = *(v1 - 144);
  *v3 = *v0;
  v3[1] = v2;
  return v3;
}

void sub_22C3F05F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_22C3F0614(uint64_t a1)
{
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C901B5C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  (*(v11 + 16))(v14 - v13, a1, v9);
  sub_22C90194C();
  swift_allocObject();
  v15 = sub_22C90190C();
  sub_22C903F7C();
  v16 = sub_22C9063CC();
  v17 = sub_22C90AACC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22C366000, v16, v17, "Created a FullPlannerModelClient with TokenGeneration", v18, 2u);
    MEMORY[0x2318B9880](v18, -1, -1);
  }

  v19 = sub_22C36D264();
  v20(v19);
  (*(v4 + 8))(v8, v2);
  return v15;
}

uint64_t sub_22C3F0834()
{
  v0 = sub_22C9019CC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C9019BC();
  sub_22C90192C();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_22C3F08EC()
{
  sub_22C369980();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_22C9018DC();
  v0[8] = v7;
  sub_22C3699B8(v7);
  v0[9] = v8;
  v0[10] = sub_22C3699D4();
  v9 = sub_22C901ACC();
  v0[11] = v9;
  sub_22C3699B8(v9);
  v0[12] = v10;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v0[15] = v11;
  sub_22C3699B8(v11);
  v0[16] = v12;
  v0[17] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C3F0A48(uint64_t a1)
{
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_22C36BB14(&dword_22C366000, v5, v6, "Running completion request using TokenGeneration");
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v8 = v1[5];
  v7 = v1[6];
  v9 = v1[2];

  v10 = sub_22C36BAFC();
  v11(v10);
  sub_22C3F9FDC(v9, v8, v7);
  swift_task_alloc();
  sub_22C36CC90();
  v1[18] = v12;
  *v12 = v13;
  v12[1] = sub_22C3F0B98;
  v14 = v1[10];
  v15 = v1[7];
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[2];

  return sub_22C3F12F4(v14, v18, v16, v17, v15);
}

uint64_t sub_22C3F0B98()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v30 = v12[17];
  v13 = v12[13];
  v15 = v12[9];
  v14 = v12[10];
  v16 = v12[8];
  sub_22C9018CC();
  (*(v15 + 8))(v14, v16);
  v17 = sub_22C379808();
  v18(v17);
  sub_22C3ED870(v13);
  v19 = sub_22C38A874();
  v20(v19);

  sub_22C36D67C();
  sub_22C372034();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_22C3F0D6C()
{
  sub_22C36FB38();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3F0DF0()
{
  sub_22C369980();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = sub_22C9018DC();
  v0[9] = v8;
  sub_22C3699B8(v8);
  v0[10] = v9;
  v0[11] = sub_22C3699D4();
  v10 = sub_22C901ACC();
  v0[12] = v10;
  sub_22C3699B8(v10);
  v0[13] = v11;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v12 = sub_22C9063DC();
  v0[16] = v12;
  sub_22C3699B8(v12);
  v0[17] = v13;
  v0[18] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C3F0F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C903F7C();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AACC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    sub_22C36BB14(&dword_22C366000, v16, v17, "Running completion request using TokenGeneration");
    MEMORY[0x2318B9880](v15, -1, -1);
  }

  v19 = v12[6];
  v18 = v12[7];
  v20 = v12[3];
  v21 = v12[2];

  v22 = sub_22C36BAFC();
  v23(v22);
  sub_22C3FA19C(v21, v20, v19, v18);
  v24 = sub_22C36FBCC();
  sub_22C3FD408(v24, v25, v26, v27, v28);
  swift_task_alloc();
  sub_22C36CC90();
  v12[19] = v29;
  *v29 = v30;
  v29[1] = sub_22C3F109C;
  sub_22C372034();

  return sub_22C3F29DC(v31, v32, v33, v34, v35, v36);
}

uint64_t sub_22C3F109C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3F1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v30 = v12[18];
  v13 = v12[14];
  v15 = v12[10];
  v14 = v12[11];
  v16 = v12[9];
  sub_22C9018CC();
  (*(v15 + 8))(v14, v16);
  v17 = sub_22C379808();
  v18(v17);
  sub_22C3ED870(v13);
  v19 = sub_22C38A874();
  v20(v19);

  sub_22C36D67C();
  sub_22C372034();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_22C3F1270()
{
  sub_22C36FB38();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C3F12F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v6 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210);
  v5[38] = swift_task_alloc();
  v5[39] = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  v5[40] = swift_task_alloc();
  v7 = sub_22C90322C();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v8 = sub_22C90323C();
  v5[44] = v8;
  v5[45] = *(v8 - 8);
  v5[46] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220);
  v5[47] = swift_task_alloc();
  v9 = sub_22C90630C();
  v5[48] = v9;
  v5[49] = *(v9 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v10 = sub_22C901C2C();
  v5[52] = v10;
  v5[53] = *(v10 - 8);
  v5[54] = swift_task_alloc();
  v11 = sub_22C901C1C();
  v5[55] = v11;
  v5[56] = *(v11 - 8);
  v5[57] = swift_task_alloc();
  v12 = sub_22C901C6C();
  v5[58] = v12;
  v5[59] = *(v12 - 8);
  v5[60] = swift_task_alloc();
  v13 = sub_22C901D2C();
  v5[61] = v13;
  v5[62] = *(v13 - 8);
  v5[63] = swift_task_alloc();
  v14 = sub_22C901D1C();
  v5[64] = v14;
  v5[65] = *(v14 - 8);
  v5[66] = swift_task_alloc();
  v15 = sub_22C901D5C();
  v5[67] = v15;
  v5[68] = *(v15 - 8);
  v5[69] = swift_task_alloc();
  v16 = sub_22C909CCC();
  v5[70] = v16;
  v5[71] = *(v16 - 8);
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F1848, 0, 0);
}