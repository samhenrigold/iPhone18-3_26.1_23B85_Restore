unint64_t sub_26847D10C()
{
  result = qword_28027DA38;
  if (!qword_28027DA38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28027DA38);
  }

  return result;
}

uint64_t sub_26847D1A0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for DIButton(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_26847C798(v6, v1, v2, v3, v4);
}

uint64_t sub_26847D254@<X0>(uint64_t a2@<X8>)
{
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v3 = qword_280282928;
  result = sub_2684B4B94();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t type metadata accessor for PunchoutToNotebookItemModifier(uint64_t a1)
{
  result = qword_28027DA40;
  if (!qword_28027DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847D39C(uint64_t a1)
{
  sub_26847D480(319, &qword_28027DA50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2684B52B4();
    if (v2 <= 0x3F)
    {
      sub_26847D480(319, &qword_28027D630, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26847D480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26847D4EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v54 = a2;
  v4 = sub_2684B43E4();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA58, &qword_2684B7D40);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = v40 - v8;
  v9 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  v10 = v9 - 8;
  v41 = *(v9 - 8);
  v40[1] = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA60, &qword_2684B7D48);
  MEMORY[0x28223BE20](v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA68, &unk_2684B7D50);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  v19 = (v2 + *(v10 + 36));
  v44 = *v19;
  v43 = *(v19 + 1);
  v58 = v44;
  v59 = v43;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  sub_2684B4F54();
  v20 = v55;
  v21 = v56;
  v22 = v57;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26847E07C;
  *(v24 + 24) = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA70, &qword_2684B7D60);
  (*(*(v25 - 8) + 16))(v15, v47, v25);
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA78, &qword_2684B7D68) + 36)];
  *v26 = sub_26847E088;
  v26[1] = v24;
  v15[*(v13 + 36)] = 0;
  sub_26847E0B4(v3, v12);
  v27 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v28 = swift_allocObject();
  sub_26847E118(v12, v28 + v27);
  v29 = sub_26847E17C();
  v47 = v18;
  v30 = v29;
  sub_2684B4C24();

  sub_26847E318(v15);
  v31 = v46;
  sub_2684B43D4();
  sub_26847E0B4(v3, v12);
  v32 = v45;
  v33 = swift_allocObject();
  sub_26847E118(v12, v33 + v27);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26847E488;
  *(v34 + 24) = v33;
  v35 = v50;
  sub_2684B5044();

  (*(v51 + 8))(v31, v35);
  LOBYTE(v55) = v44;
  v56 = v43;
  sub_2684B4F34();
  if (v58)
  {
    sub_2684B4414();
  }

  else
  {
    sub_2684B4404();
  }

  v55 = v13;
  v56 = v30;
  swift_getOpaqueTypeConformance2();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40, MEMORY[0x277CDF728]);
  v36 = v49;
  v37 = v53;
  v38 = v47;
  sub_2684B4DB4();
  (*(v52 + 8))(v32, v37);
  return (*(v48 + 8))(v38, v36);
}

void sub_26847DAD4()
{
  v1 = v0;
  v2 = sub_2684B5464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = v1[1];
  if (v13)
  {
    v42 = v10;
    v43 = v3;
    v44 = v2;
    v14 = *v1;
    if (v1[3])
    {
      v15 = sub_2684B5544();
    }

    else
    {
      v15 = 0;
    }

    v23 = [objc_allocWithZone(MEMORY[0x277CD4058]) initWithTitle:0 content:0 itemType:0 status:0 location:0 locationSearchType:0 dateTime:0 dateSearchType:0 temporalEventTriggerTypes:0 taskPriority:0 notebookItemIdentifier:v15];

    v24 = v23;
    v25 = [v24 _metadata];
    if (v25)
    {
      v26 = v25;
      [v25 setBackgroundLaunch_];
    }

    v27 = [v24 _metadata];

    if (v27)
    {
      v28 = sub_2684B5544();
      [v27 setLaunchId_];
    }

    sub_26847E54C();
    sub_2684B4284();

    sub_2684B4274();
    v41 = sub_2684B5754();

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v29 = sub_2684B4354();
    __swift_project_value_buffer(v29, qword_280282910);
    sub_26847E0B4(v1, v12);

    v30 = sub_2684B4334();
    v31 = sub_2684B56F4();

    if (os_log_type_enabled(v30, v31))
    {
      v40 = v14;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136315394;
      if (*(v12 + 3))
      {
        v34 = *(v12 + 2);
        v35 = *(v12 + 3);
      }

      else
      {
        v34 = 7104878;
        v35 = 0xE300000000000000;
      }

      sub_26847E4F0(v12);
      v36 = sub_268479394(v34, v35, &v45);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_268479394(v40, v13, &v45);
      _os_log_impl(&dword_26845C000, v30, v31, "Attempting punch out to { itemId: %s, app: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v33, -1, -1);
      MEMORY[0x26D61A450](v32, -1, -1);
    }

    else
    {

      sub_26847E4F0(v12);
    }

    v37 = v43;
    sub_2684B5294();
    v38 = v41;
    sub_2684B5444();

    (*(v37 + 8))(v5, v44);
  }

  else
  {
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v16 = sub_2684B4354();
    __swift_project_value_buffer(v16, qword_280282910);
    sub_26847E0B4(v1, v9);
    v17 = sub_2684B4334();
    v18 = sub_2684B56F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136315138;
      if (*(v9 + 3))
      {
        v21 = *(v9 + 2);
        v22 = *(v9 + 3);
      }

      else
      {
        v21 = 7104878;
        v22 = 0xE300000000000000;
      }

      sub_26847E4F0(v9);
      v39 = sub_268479394(v21, v22, &v45);

      *(v19 + 4) = v39;
      _os_log_impl(&dword_26845C000, v17, v18, "Failed punching out to item due to missing app identifier. { itemId: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x26D61A450](v20, -1, -1);
      MEMORY[0x26D61A450](v19, -1, -1);
    }

    else
    {

      sub_26847E4F0(v9);
    }
  }
}

uint64_t sub_26847E0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847E118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26847E17C()
{
  result = qword_28027DA80;
  if (!qword_28027DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA60, &qword_2684B7D48);
    sub_26847E234();
    sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DA80);
  }

  return result;
}

unint64_t sub_26847E234()
{
  result = qword_28027DA88;
  if (!qword_28027DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA78, &qword_2684B7D68);
    sub_26846ACF0(&qword_28027DA90, &qword_28027DA70, &qword_2684B7D60, MEMORY[0x277CE04B0]);
    sub_26846ACF0(&qword_28027DA98, &qword_28027DAA0, &qword_2684B7D70, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DA88);
  }

  return result;
}

uint64_t sub_26847E318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA60, &qword_2684B7D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for PunchoutToNotebookItemModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_2684B52B4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_26847E4F0(uint64_t a1)
{
  v2 = type metadata accessor for PunchoutToNotebookItemModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26847E54C()
{
  result = qword_28027DAC0[0];
  if (!qword_28027DAC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_28027DAC0);
  }

  return result;
}

void sub_26847E5A4(uint64_t a1)
{
  sub_268467F10(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_26847D10C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26847E644(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 9) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_26847E79C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 9] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_26847E994()
{
  v1 = sub_2684B47F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v6 = *v0;

    sub_2684B5704();
    v7 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return result;
}

uint64_t sub_26847EAD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(v5 + 32));
  v9 = sub_26847E994();
  v8(v9);
  return (*(v4 + 40))(v1 + *(a1 + 28), v7, v3);
}

uint64_t sub_26847EBF8@<X0>(char *a1@<X8>)
{
  v91 = a1;
  v2 = sub_2684B3894();
  v89 = *(v2 - 1);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v87 = &v83 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v83 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v83 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v20 = sub_2684B3E74();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v83 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v83 - v26);
  v28 = *(v21 + 16);
  v85 = v1;
  v28(&v83 - v26, v1, v20);
  v29 = (*(v21 + 88))(v27, v20);
  if (v29 == *MEMORY[0x277D5E148])
  {
    (*(v21 + 96))(v27, v20);
    if (v27[1])
    {

      sub_2684B3854();

      v31 = v89;
      v30 = v90;
    }

    else
    {
      v31 = v89;
      v30 = v90;
      (*(v89 + 56))(v19, 1, 1, v90);
    }

    sub_26847F744(v19, v17);
    if ((*(v31 + 48))(v17, 1, v30) == 1)
    {
      v37 = v19;
LABEL_29:
      sub_26847F7B4(v37);

      v74 = sub_2684B4304();
      return (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
    }

    v38 = v88;
    (*(v31 + 32))(v88, v17, v30);
    v39 = objc_opt_self();
    v40 = sub_2684B3874();
    v41 = [v39 objectIDWithUUID_];

    (*(v31 + 8))(v38, v30);
    sub_26847F7B4(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB58, &unk_2684B7DE0);
    v42 = v91;
    *v91 = v41;
    sub_2684B42C4();
LABEL_20:
    v46 = MEMORY[0x277D45248];
    goto LABEL_21;
  }

  if (v29 == *MEMORY[0x277D5E138])
  {
    (*(v21 + 96))(v27, v20);
    if (v27[1])
    {

      sub_2684B3854();

      v33 = v89;
      v32 = v90;
    }

    else
    {
      v33 = v89;
      v32 = v90;
      (*(v89 + 56))(v14, 1, 1, v90);
    }

    sub_26847F744(v14, v11);
    if ((*(v33 + 48))(v11, 1, v32) == 1)
    {
      v37 = v14;
      goto LABEL_29;
    }

    v47 = v88;
    (*(v33 + 32))(v88, v11, v32);
    v48 = objc_opt_self();
    v49 = sub_2684B3874();
    v50 = [v48 objectIDWithUUID_];

    (*(v33 + 8))(v47, v32);
    sub_26847F7B4(v14);

    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB58, &unk_2684B7DE0) + 48);
    v42 = v91;
    *v91 = v50;
    v52 = *MEMORY[0x277D45180];
    v53 = sub_2684B42D4();
    (*(*(v53 - 8) + 104))(&v42[v51], v52, v53);
    v54 = *MEMORY[0x277D45168];
    v55 = sub_2684B42E4();
    (*(*(v55 - 8) + 104))(&v42[v51], v54, v55);
    goto LABEL_20;
  }

  if (v29 == *MEMORY[0x277D5E130])
  {
    (*(v21 + 96))(v27, v20);
    if (v27[1])
    {

      v34 = v87;
      sub_2684B3854();

      v36 = v89;
      v35 = v90;
    }

    else
    {
      v36 = v89;
      v35 = v90;
      v34 = v87;
      (*(v89 + 56))(v87, 1, 1, v90);
    }

    v73 = v86;
    sub_26847F744(v34, v86);
    if ((*(v36 + 48))(v73, 1, v35) == 1)
    {
      v37 = v34;
      goto LABEL_29;
    }

    v75 = v88;
    (*(v36 + 32))(v88, v73, v35);
    v76 = objc_opt_self();
    v77 = sub_2684B3874();
    v78 = [v76 objectIDWithUUID_];

    (*(v36 + 8))(v75, v35);
    sub_26847F7B4(v34);

    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB50, &qword_2684B7DD8) + 48);
    v42 = v91;
    *v91 = v78;
    v80 = *MEMORY[0x277D45140];
    v81 = sub_2684B42A4();
    (*(*(v81 - 8) + 104))(&v42[v79], v80, v81);
    v46 = MEMORY[0x277D451F8];
LABEL_21:
    v56 = *v46;
    v57 = sub_2684B4304();
    v58 = *(v57 - 8);
    (*(v58 + 104))(v42, v56, v57);
    return (*(v58 + 56))(v42, 0, 1, v57);
  }

  if (v29 == *MEMORY[0x277D5E140])
  {
    (*(v21 + 96))(v27, v20);
    v43 = v27[1];
    v42 = v91;
    *v91 = *v27;
    *(v42 + 1) = v43;
    v44 = *MEMORY[0x277D450F0];
    v45 = sub_2684B4294();
    (*(*(v45 - 8) + 104))(v42, v44, v45);
    v46 = MEMORY[0x277D45210];
    goto LABEL_21;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v60 = sub_2684B4354();
  __swift_project_value_buffer(v60, qword_280282910);
  v61 = v84;
  v28(v84, v85, v20);
  v62 = sub_2684B4334();
  v63 = sub_2684B5704();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92 = v90;
    *v64 = 136315138;
    v28(v83, v61, v20);
    v65 = sub_2684B5564();
    v66 = v61;
    v67 = v65;
    v69 = v68;
    v70 = *(v21 + 8);
    v70(v66, v20);
    v71 = sub_268479394(v67, v69, &v92);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_26845C000, v62, v63, "Unable to get url for ReminderPunchoutLocation: %s", v64, 0xCu);
    v72 = v90;
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x26D61A450](v72, -1, -1);
    MEMORY[0x26D61A450](v64, -1, -1);
  }

  else
  {

    v70 = *(v21 + 8);
    v70(v61, v20);
  }

  v82 = sub_2684B4304();
  (*(*(v82 - 8) + 56))(v91, 1, 1, v82);
  return (v70)(v27, v20);
}

uint64_t sub_26847F744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847F7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ReminderDetail3pView(uint64_t a1)
{
  result = qword_28027DB68;
  if (!qword_28027DB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847F890(uint64_t a1)
{
  sub_2684B41E4();
  if (v1 <= 0x3F)
  {
    sub_26847F914(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26847F914(uint64_t a1)
{
  if (!qword_28027DB78)
  {
    sub_2684B3924();
    v1 = sub_2684B43F4();
    if (!v2)
    {
      atomic_store(v1, &qword_28027DB78);
    }
  }
}

uint64_t sub_26847F988@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB80, &qword_2684B7E68);
  MEMORY[0x28223BE20](v32);
  v2 = &v32 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB88, &qword_2684B7E70);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = sub_2684B4164();
  v8 = v7;
  v57[8] = MEMORY[0x277CE0BD8];
  v57[9] = MEMORY[0x277D638E8];
  v9 = swift_allocObject();
  v57[5] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = MEMORY[0x277D84F90];
  sub_26847FD78(v5);
  sub_26846ACF0(&qword_28027DB90, &qword_28027DB88, &qword_2684B7E70, MEMORY[0x277CE14C0]);
  v10 = sub_2684B4BC4();
  sub_268467A4C(v5, &qword_28027DB88, &qword_2684B7E70);
  v11 = MEMORY[0x277CE11C8];
  v12 = MEMORY[0x277D63A60];
  v57[3] = MEMORY[0x277CE11C8];
  v57[4] = MEMORY[0x277D63A60];
  v57[0] = v10;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_2684B41E4();
  sub_2684B4FF4();
  v13 = type metadata accessor for CompletionButton(0);
  v14 = v13[5];
  v15 = *MEMORY[0x277CE1048];
  v16 = sub_2684B4EE4();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[v13[6]] = 0;
  v17 = &v2[v13[7]];
  v34 = 0;
  sub_2684B4F24();
  v18 = v36;
  *v17 = v35;
  *(v17 + 1) = v18;
  v19 = &v2[v13[8]];
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  v20 = &v2[v13[9]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  v23 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB98, &qword_2684B7EF8) + 36)];
  *v23 = KeyPath;
  v23[1] = sub_268473F14;
  v23[2] = v22;
  LOBYTE(KeyPath) = sub_2684B4A84();
  sub_2684B4364();
  v24 = &v2[*(v32 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_268480424();
  v29 = sub_2684B4BC4();
  sub_268467A4C(v2, &qword_28027DB80, &qword_2684B7E68);
  v37 = v11;
  v38 = v12;
  v35 = v29;
  v30 = v33;
  sub_2684B5264();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBB8, &qword_2684B7F08);
  *(v30 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_26847FD78@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = type metadata accessor for LocationTriggerTextView(0);
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - v6;
  v52 = sub_2684B4084();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC8, &qword_2684B7F18);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for TemporalTriggerView(0);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_2684B40B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD8, &qword_2684B7F28);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v48 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v45 - v27;
  v51 = v1;
  sub_2684B40D4();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_268467A4C(v19, &qword_28027DBD0, &qword_2684B7F20);
    v29 = 1;
    v30 = v46;
  }

  else
  {
    v31 = *(v21 + 32);
    v31(v23, v19, v20);
    v31(v16, v23, v20);
    v32 = v46;
    v16[*(v46 + 20)] = 0;
    sub_268480598(v16, v28, type metadata accessor for TemporalTriggerView);
    v29 = 0;
    v30 = v32;
  }

  (*(v47 + 56))(v28, v29, 1, v30);
  v33 = v49;
  sub_2684B40C4();
  v34 = v50;
  v35 = v52;
  if ((*(v50 + 48))(v33, 1, v52) == 1)
  {
    sub_268467A4C(v33, &qword_28027DBC0, &qword_2684B7F10);
    v36 = 1;
  }

  else
  {
    v37 = v45;
    (*(v34 + 32))(v45, v33, v35);
    (*(v34 + 16))(v4, v37, v35);
    v56 = sub_2684B4E54();
    v38 = sub_2684B44B4();
    (*(v34 + 8))(v37, v35);
    v39 = v55;
    v4[*(v55 + 20)] = 0;
    *&v4[*(v39 + 24)] = v38;
    sub_268480598(v4, v12, type metadata accessor for LocationTriggerTextView);
    v36 = 0;
  }

  (*(v2 + 56))(v12, v36, 1, v55);
  v40 = v48;
  sub_26846A6DC(v28, v48, &qword_28027DBD8, &qword_2684B7F28);
  v41 = v53;
  sub_26846A6DC(v12, v53, &qword_28027DBC8, &qword_2684B7F18);
  v42 = v54;
  sub_26846A6DC(v40, v54, &qword_28027DBD8, &qword_2684B7F28);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBE0, &qword_2684B7F30);
  sub_26846A6DC(v41, v42 + *(v43 + 48), &qword_28027DBC8, &qword_2684B7F18);
  sub_268467A4C(v12, &qword_28027DBC8, &qword_2684B7F18);
  sub_268467A4C(v28, &qword_28027DBD8, &qword_2684B7F28);
  sub_268467A4C(v41, &qword_28027DBC8, &qword_2684B7F18);
  return sub_268467A4C(v40, &qword_28027DBD8, &qword_2684B7F28);
}

unint64_t sub_268480424()
{
  result = qword_28027DBA0;
  if (!qword_28027DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DB80, &qword_2684B7E68);
    sub_2684804B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBA0);
  }

  return result;
}

unint64_t sub_2684804B0()
{
  result = qword_28027DBA8;
  if (!qword_28027DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DB98, &qword_2684B7EF8);
    sub_2684806E8(&qword_28027DBB0, type metadata accessor for CompletionButton, &unk_2684B7180);
    sub_26846ACF0(&qword_28027D6D8, &qword_28027D6E0, &qword_2684B7F00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBA8);
  }

  return result;
}

uint64_t sub_268480598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_268480600()
{
  result = qword_28027DBE8;
  if (!qword_28027DBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DBB8, &qword_2684B7F08);
    sub_2684806E8(&qword_28027DBF0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    sub_26846ACF0(&qword_28027DBF8, &qword_28027DC00, &qword_2684B7F38, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBE8);
  }

  return result;
}

uint64_t sub_2684806E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NoteDetail3pView(uint64_t a1)
{
  result = qword_28027DC08;
  if (!qword_28027DC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684807A4(uint64_t a1)
{
  sub_2684B3EF4();
  if (v1 <= 0x3F)
  {
    sub_268480848(319);
    if (v2 <= 0x3F)
    {
      sub_2684808A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268480848(uint64_t a1)
{
  if (!qword_28027DC18)
  {
    sub_2684B3EA4();
    v1 = sub_2684B57A4();
    if (!v2)
    {
      atomic_store(v1, &qword_28027DC18);
    }
  }
}

void sub_2684808A0()
{
  if (!qword_28027DC20)
  {
    v0 = sub_2684B57A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027DC20);
    }
  }
}

uint64_t sub_26848090C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v66 = sub_2684B5304();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D460, &unk_2684B6C80);
  MEMORY[0x28223BE20](v62);
  v60 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D468, &qword_2684B7FC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - v8;
  v9 = sub_2684B54A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC28, &qword_2684B7FC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v63 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = type metadata accessor for NoteDetail3pView(0);
  if (*(v1 + v18[6]) == 1 && (v19 = sub_2684B3EE4(), v20))
  {
    v82 = MEMORY[0x277D837D0];
    v83 = MEMORY[0x277D63F80];
    v79 = v19;
    v80 = v20;
    sub_2684B5494();
    (*(v10 + 32))(v17, v12, v9);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  v21 = sub_2684B3ED4();
  v23 = sub_26846D588(v21, v22);

  v61 = v17;
  if (v23)
  {
    v79 = sub_2684B3ED4();
    v80 = v24;
    sub_26846D6EC(v79, v24, v25);
    v26 = sub_2684B4BA4();
    v28 = v27;
    v30 = v29;
    v32 = v31 & 1;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v32 = 0;
    v30 = 0;
  }

  v79 = v26;
  v80 = v28;
  v81 = v32;
  v82 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC30, &qword_2684B7FD0);
  sub_268480FD4();
  v33 = sub_2684B4BC4();
  sub_268481050(v26, v28, v32, v30);
  v87 = MEMORY[0x277CE11C8];
  v88 = MEMORY[0x277D63A60];
  v86 = v33;
  v79 = sub_2684B3EC4();
  v80 = v34;
  sub_26846D6EC(v79, v34, v35);
  v36 = sub_2684B4BA4();
  v38 = v37;
  LOBYTE(v33) = v39;
  v41 = v40;
  v42 = (v2 + v18[7]);
  v43 = *v42;
  v44 = *(v42 + 8);
  KeyPath = swift_getKeyPath();
  v79 = v36;
  v80 = v38;
  v46 = v33 & 1;
  LOBYTE(v81) = v33 & 1;
  v82 = v41;
  v83 = KeyPath;
  v84 = v43;
  v85 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC40, &qword_2684B8008);
  sub_2684810F8();
  v47 = sub_2684B4BC4();
  sub_26846D468(v36, v38, v46);

  v83 = MEMORY[0x277D63A60];
  v82 = MEMORY[0x277CE11C8];
  v78 = 0;
  v79 = v47;
  v76 = 0u;
  v77 = 0u;
  v75 = 0;
  v74 = 0u;
  v73 = 0u;
  v72 = 0;
  v71 = 0u;
  v70 = 0u;
  v48 = v64;
  sub_2684B52F4();
  v49 = v60;
  (*(v65 + 32))(v60, v48, v66);
  *(v49 + *(v62 + 36)) = 1;
  v50 = v18[5];
  v51 = sub_2684B3EB4();
  v52 = v67;
  sub_26846EA08(v2 + v50, v51, v53, v67);

  sub_268467A4C(v49, &qword_28027D460, &unk_2684B6C80);
  v54 = v61;
  v55 = v63;
  sub_26846A6DC(v61, v63, &qword_28027DC28, &qword_2684B7FC8);
  v56 = v68;
  sub_26846A6DC(v52, v68, &qword_28027D468, &qword_2684B7FC0);
  v57 = v69;
  sub_26846A6DC(v55, v69, &qword_28027DC28, &qword_2684B7FC8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC50, &qword_2684B8018);
  sub_26846A6DC(v56, v57 + *(v58 + 48), &qword_28027D468, &qword_2684B7FC0);
  sub_268467A4C(v52, &qword_28027D468, &qword_2684B7FC0);
  sub_268467A4C(v54, &qword_28027DC28, &qword_2684B7FC8);
  sub_268467A4C(v56, &qword_28027D468, &qword_2684B7FC0);
  return sub_268467A4C(v55, &qword_28027DC28, &qword_2684B7FC8);
}

unint64_t sub_268480FD4()
{
  result = qword_28027DC38;
  if (!qword_28027DC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC30, &qword_2684B7FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC38);
  }

  return result;
}

uint64_t sub_268481050(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26846D468(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_268481094@<X0>(uint64_t a1@<X8>)
{
  result = sub_2684B47A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_2684810F8()
{
  result = qword_28027DC48;
  if (!qword_28027DC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC40, &qword_2684B8008);
    sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC48);
  }

  return result;
}

uint64_t sub_2684811B0(uint64_t a1, int a2)
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

uint64_t sub_2684811F8(uint64_t result, int a2, int a3)
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

uint64_t sub_268481260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  swift_bridgeObjectRetain_n();
  sub_26846A6D0(KeyPath, 0);

  return sub_26846B1E0(KeyPath, 0);
}

uint64_t sub_2684812E4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_2684B5484();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC68, &qword_2684B80B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC70, &qword_2684B80C0);
  sub_26846ACF0(&qword_28027DC78, &qword_28027DC70, &qword_2684B80C0, MEMORY[0x277CE14C0]);
  sub_2684B5184();
  (*(v3 + 104))(v5, *MEMORY[0x277D63EC0], v2);
  sub_26846ACF0(&qword_28027DC80, &qword_28027DC68, &qword_2684B80B8, MEMORY[0x277D63B90]);
  v13 = v20;
  sub_2684B4C44();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC88, &qword_2684B8150);
  v18 = v13 + *(result + 36);
  *v18 = 0;
  *(v18 + 8) = KeyPath;
  *(v18 + 16) = 0;
  *(v18 + 24) = v15;
  *(v18 + 32) = 0;
  *(v18 + 40) = v16;
  *(v18 + 48) = 0;
  return result;
}

unint64_t sub_2684815D0()
{
  result = qword_28027DC90;
  if (!qword_28027DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC88, &qword_2684B8150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC68, &qword_2684B80B8);
    sub_26846ACF0(&qword_28027DC80, &qword_28027DC68, &qword_2684B80B8, MEMORY[0x277D63B90]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26846B18C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC90);
  }

  return result;
}

uint64_t sub_2684816F8()
{
  sub_2684B4EC4();
  sub_2684B4E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC98, &qword_2684B81B8);
  sub_2684817A0();
  sub_2684B4D44();
}

unint64_t sub_2684817A0()
{
  result = qword_28027DCA0;
  if (!qword_28027DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC98, &qword_2684B81B8);
    sub_26848182C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCA0);
  }

  return result;
}

unint64_t sub_26848182C()
{
  result = qword_28027DCA8;
  if (!qword_28027DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCB0, &unk_2684B81C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCA8);
  }

  return result;
}

uint64_t type metadata accessor for ReminderEnvironmentSetupModifier(uint64_t a1)
{
  result = qword_28027DCB8;
  if (!qword_28027DCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268481904(uint64_t a1)
{
  result = sub_2684B3924();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26848198C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13[3] = &type metadata for ReminderKitReminderEditor;
  v13[4] = &off_287914B38;
  LOBYTE(v13[0]) = 1;
  v13[1] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCC8, &qword_2684B8270) + 36));
  sub_268481BFC(v13, (v6 + 1));
  *v6 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCD0, &qword_2684B8278);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCD8, &qword_2684B8280) + 36);
  v9 = sub_2684B3924();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = *(type metadata accessor for NotebookEnvironmentSetupModifier(0) + 20);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_2684B5544();
  LOBYTE(KeyPath) = [v11 BOOLForKey_];

  *(v8 + v10) = KeyPath;
}

uint64_t sub_268481B98(uint64_t a1)
{
  sub_268481BFC(a1, v6);
  v1 = sub_268481BFC(v6, &v5);
  sub_268481C60(v1, v2, v3);
  sub_2684B4814();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_268481BFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_268481C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027DCE0;
  if (!qword_28027DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCE0);
  }

  return result;
}

unint64_t sub_268481CB4()
{
  result = qword_28027DCE8;
  if (!qword_28027DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCD8, &qword_2684B8280);
    sub_268481D40();
    sub_268481E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCE8);
  }

  return result;
}

unint64_t sub_268481D40()
{
  result = qword_28027DCF0;
  if (!qword_28027DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCC8, &qword_2684B8270);
    sub_26846ACF0(&qword_28027DCF8, &qword_28027DCD0, &qword_2684B8278, MEMORY[0x277CE04B0]);
    sub_26846ACF0(&qword_28027DD00, &qword_28027DD08, &qword_2684B8288, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCF0);
  }

  return result;
}

unint64_t sub_268481E24()
{
  result = qword_28027CFC0;
  if (!qword_28027CFC0)
  {
    type metadata accessor for NotebookEnvironmentSetupModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFC0);
  }

  return result;
}

void sub_268481EC4(uint64_t a1)
{
  sub_2684883F0(319, &qword_28027DD78, MEMORY[0x277D5E1A8], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_268481F8C@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
  sub_2684B4F54();
  v3 = type metadata accessor for ReminderView(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = *(v1 + *(v3 + 24));
  v6 = type metadata accessor for ReminderViewInternal(0);
  *(a1 + v6[5]) = v4;
  *(a1 + v6[6]) = v5;
  v7 = a1 + v6[7];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *(v7 + 2) = swift_getKeyPath();
  v7[24] = 0;
  *(v7 + 4) = swift_getKeyPath();
  v7[40] = 0;
  *(v7 + 6) = swift_getKeyPath();
  v7[56] = 0;
  *(v7 + 13) = sub_268488064;
  *(v7 + 14) = 0;
  if (qword_28027CF08 != -1)
  {
    swift_once();
  }

  v8 = xmmword_28027DD10;
  v9 = qword_28027DD20;
  v10 = unk_28027DD28;
  v11 = qword_28027DD30;
  *(v7 + 4) = xmmword_28027DD10;
  *(v7 + 10) = v9;
  *(v7 + 11) = v10;
  *(v7 + 12) = v11;
  *(v7 + 120) = v8;
  *(v7 + 17) = v9;
  *(v7 + 18) = v10;
  *(v7 + 19) = v11;
  v12 = a1 + v6[8];
  swift_retain_n();
  v13 = sub_2684B4AC4();
  v14 = sub_2684B4AA4();
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 1) = sub_2684880C8;
  *(v12 + 2) = v14;
  *(v12 + 3) = v13;
  *(v12 + 4) = KeyPath;
  v12[40] = 0;
  *(v12 + 6) = v16;
  v12[56] = 0;
  *(v12 + 8) = v17;
  v12[72] = 0;
  v18 = a1 + v6[9];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v19 = a1 + v6[10];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = (a1 + v6[11]);

  sub_2684B4F24();
  result = v22;
  *v20 = v22;
  *(v20 + 1) = v23;
  return result;
}

uint64_t sub_268482200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_2684B41E4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3E74();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D2E0, &unk_2684B85F0);
  MEMORY[0x28223BE20](v60);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDC0, &qword_2684B8600);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDC8, &qword_2684B8608);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v54 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDD0, &qword_2684B8610);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v18 = &v54 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDD8, &qword_2684B8618);
  MEMORY[0x28223BE20](v54);
  v20 = &v54 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDE0, &qword_2684B8620);
  MEMORY[0x28223BE20](v62);
  v56 = &v54 - v21;
  v22 = sub_2684B4824();
  v61 = v2 + *(type metadata accessor for ReminderViewInternal(0) + 28);
  v23 = *(v61 + 120);
  *v14 = v22;
  *(v14 + 1) = v23;
  v14[16] = 0;
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDE8, &qword_2684B8628) + 44)];
  v65 = v2;
  sub_268482B50(v2, v24);
  v25 = *MEMORY[0x277CE09A0];
  v26 = sub_2684B4AE4();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v11, v25, v26);
  (*(v27 + 56))(v11, 0, 1, v26);
  v28 = sub_26846ACF0(&qword_28027DDF0, &qword_28027DDC0, &qword_2684B8600, MEMORY[0x277CE1138]);
  sub_2684B4CA4();
  sub_268467A4C(v11, &qword_28027D330, &qword_2684BAEE0);
  sub_268467A4C(v14, &qword_28027DDC0, &qword_2684B8600);
  v29 = *MEMORY[0x277CDF998];
  v30 = sub_2684B4594();
  (*(*(v30 - 8) + 104))(v8, v29, v30);
  sub_2684884C0(&qword_28027D328, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_2684B5534();
  if (result)
  {
    *&v71 = v12;
    *(&v71 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0, MEMORY[0x277D84470]);
    v32 = v57;
    sub_2684B4D34();
    sub_268467A4C(v8, &qword_28027D2E0, &unk_2684B85F0);
    (*(v55 + 8))(v16, v32);
    sub_2684B50B4();
    sub_2684B45F4();
    (*(v58 + 32))(v20, v18, v59);
    v33 = &v20[*(v54 + 36)];
    v34 = v76;
    *(v33 + 4) = v75;
    *(v33 + 5) = v34;
    *(v33 + 6) = v77;
    v35 = v72;
    *v33 = v71;
    *(v33 + 1) = v35;
    v36 = v74;
    *(v33 + 2) = v73;
    *(v33 + 3) = v36;
    v60 = sub_2684B50A4();
    v59 = v37;
    v38 = v56;
    v39 = &v56[*(v62 + 36)];
    v40 = sub_2684B4E64();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
    v42 = v64;
    MEMORY[0x26D619380](v41);
    v43 = sub_2684B3FC4();
    v45 = v44;
    (*(v66 + 8))(v42, v67);
    v46 = v63;
    *v63 = v43;
    v46[1] = v45;
    v48 = v68;
    v47 = v69;
    (*(v68 + 104))(v46, *MEMORY[0x277D5E148], v69);
    v49 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDF8, &qword_2684B8630) + 36)];
    (*(v48 + 16))(v49, v46, v47);
    v50 = type metadata accessor for RemindersAppPunchoutModifier(0);
    sub_2684B52A4();
    (*(v48 + 8))(v46, v47);
    v51 = &v49[*(v50 + 24)];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    *v39 = v40;
    v39[8] = 0;
    v52 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE00, &qword_2684B8638) + 36)];
    v53 = v59;
    *v52 = v60;
    v52[1] = v53;
    sub_26846A8C8(v20, v38, &qword_28027DDD8, &qword_2684B8618);
    sub_268488508();
    sub_2684B4C34();
    return sub_268467A4C(v38, &qword_28027DDE0, &qword_2684B8620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268482B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE20, &qword_2684B8640);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = type metadata accessor for CompletionButton(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v27[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  sub_2684B4FE4();
  v17 = v11[7];
  v18 = *MEMORY[0x277CE1048];
  v19 = sub_2684B4EE4();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  v16[v11[8]] = 0;
  v20 = &v16[v11[9]];
  v27[15] = 0;
  sub_2684B4F24();
  v21 = v28;
  *v20 = v27[16];
  *(v20 + 1) = v21;
  v22 = &v16[v11[10]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = &v16[v11[11]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *v9 = sub_2684B48D4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE28, &qword_2684B8670);
  sub_268482E4C(a1, &v9[*(v24 + 44)]);
  sub_268488758(v16, v14, type metadata accessor for CompletionButton);
  sub_26846A6DC(v9, v7, &qword_28027DE20, &qword_2684B8640);
  sub_268488758(v14, a2, type metadata accessor for CompletionButton);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE30, &qword_2684B8678);
  sub_26846A6DC(v7, a2 + *(v25 + 48), &qword_28027DE20, &qword_2684B8640);
  sub_268467A4C(v9, &qword_28027DE20, &qword_2684B8640);
  sub_268489450(v16, type metadata accessor for CompletionButton);
  sub_268467A4C(v7, &qword_28027DE20, &qword_2684B8640);
  return sub_268489450(v14, type metadata accessor for CompletionButton);
}

uint64_t sub_268482E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ReminderViewInternal(0);
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = v4;
  v64 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE38, &qword_2684B8680);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v61[-v6];
  v66 = sub_2684B41E4();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE40, &qword_2684B8688);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v71 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v69 = &v61[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE48, &qword_2684B8690);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE50, &qword_2684B8698);
  v18 = MEMORY[0x28223BE20](v17);
  v70 = &v61[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v61[-v23];
  *v16 = sub_2684B48D4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE58, &qword_2684B86A0);
  sub_268483678(a1, &v16[*(v25 + 44)]);
  sub_2684B50A4();
  v26 = 1;
  sub_2684B45F4();
  sub_26846A8C8(v16, v22, &qword_28027DE48, &qword_2684B8690);
  v27 = &v22[*(v17 + 36)];
  v28 = v91[7];
  v27[4] = v91[6];
  v27[5] = v28;
  v27[6] = v91[8];
  v29 = v91[3];
  *v27 = v91[2];
  v27[1] = v29;
  v30 = v91[5];
  v27[2] = v91[4];
  v27[3] = v30;
  sub_26846A8C8(v22, v24, &qword_28027DE50, &qword_2684B8698);
  sub_2684854A4(v90);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v31);
  v32 = sub_2684B41A4();
  (*(v7 + 8))(v9, v66);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = v64;
    sub_268488758(a1, v64, type metadata accessor for ReminderViewInternal);
    v35 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v36 = swift_allocObject();
    sub_268488B98(v34, v36 + v35, type metadata accessor for ReminderViewInternal);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE60, &qword_2684B86A8);
    sub_268488830();
    v37 = v65;
    sub_2684B5184();
    v38 = sub_2684B48C4();
    v40 = v68;
    v39 = v69;
    v41 = (v37 + *(v68 + 36));
    *v41 = v38;
    v41[1] = sub_2684894B4;
    v41[2] = 0;
    sub_26846A8C8(v37, v39, &qword_28027DE38, &qword_2684B8680);
    v26 = 0;
  }

  else
  {
    v40 = v68;
    v39 = v69;
  }

  (*(v67 + 56))(v39, v26, 1, v40);
  v42 = v70;
  sub_26846A6DC(v24, v70, &qword_28027DE50, &qword_2684B8698);
  v83 = v90[10];
  v84 = v90[11];
  v85[0] = v91[0];
  *(v85 + 9) = *(v91 + 9);
  v79 = v90[6];
  v80 = v90[7];
  v81 = v90[8];
  v82 = v90[9];
  v75 = v90[2];
  v76 = v90[3];
  v77 = v90[4];
  v78 = v90[5];
  v73 = v90[0];
  v74 = v90[1];
  v43 = v71;
  sub_26846A6DC(v39, v71, &qword_28027DE40, &qword_2684B8688);
  v44 = v72;
  sub_26846A6DC(v42, v72, &qword_28027DE50, &qword_2684B8698);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE70, &qword_2684B86B0);
  v46 = *(v45 + 48);
  v47 = v84;
  v86[10] = v83;
  v86[11] = v84;
  v48 = v85[0];
  v87[0] = v85[0];
  *(v87 + 9) = *(v85 + 9);
  v49 = v79;
  v50 = v80;
  v86[6] = v79;
  v86[7] = v80;
  v51 = v81;
  v52 = v82;
  v86[8] = v81;
  v86[9] = v82;
  v53 = v77;
  v54 = v78;
  v86[4] = v77;
  v86[5] = v78;
  v55 = v75;
  v56 = v76;
  v86[2] = v75;
  v86[3] = v76;
  v57 = v73;
  v58 = v74;
  v86[0] = v73;
  v86[1] = v74;
  v59 = (v44 + v46);
  v59[10] = v83;
  v59[11] = v47;
  v59[12] = v48;
  *(v59 + 201) = *(v85 + 9);
  v59[6] = v49;
  v59[7] = v50;
  v59[8] = v51;
  v59[9] = v52;
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v53;
  v59[5] = v54;
  *v59 = v57;
  v59[1] = v58;
  sub_26846A6DC(v43, v44 + *(v45 + 64), &qword_28027DE40, &qword_2684B8688);
  sub_26846A6DC(v86, v88, &qword_28027DE78, &qword_2684B86B8);
  sub_268467A4C(v39, &qword_28027DE40, &qword_2684B8688);
  sub_268467A4C(v24, &qword_28027DE50, &qword_2684B8698);
  sub_268467A4C(v43, &qword_28027DE40, &qword_2684B8688);
  v88[10] = v83;
  v88[11] = v84;
  v89[0] = v85[0];
  *(v89 + 9) = *(v85 + 9);
  v88[6] = v79;
  v88[7] = v80;
  v88[8] = v81;
  v88[9] = v82;
  v88[2] = v75;
  v88[3] = v76;
  v88[4] = v77;
  v88[5] = v78;
  v88[0] = v73;
  v88[1] = v74;
  sub_268467A4C(v88, &qword_28027DE78, &qword_2684B86B8);
  return sub_268467A4C(v42, &qword_28027DE50, &qword_2684B8698);
}

uint64_t sub_268483678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEC0, &qword_2684B8708);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEC8, &qword_2684B8710);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  *v17 = sub_2684B4824();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DED0, &qword_2684B8718);
  sub_2684838FC(a1, &v17[*(v18 + 44)]);
  v19 = sub_2684B48C4();
  v20 = &v17[*(v12 + 44)];
  *v20 = v19;
  v20[1] = sub_2684894B4;
  v20[2] = 0;
  sub_268484488(v10);
  v21 = *(a1 + *(type metadata accessor for ReminderViewInternal(0) + 28) + 152);
  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v5 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_26846A6DC(v17, v15, &qword_28027DEC8, &qword_2684B8710);
  sub_26846A6DC(v10, v8, &qword_28027DEC0, &qword_2684B8708);
  sub_26846A6DC(v15, a2, &qword_28027DEC8, &qword_2684B8710);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DED8, &qword_2684B8750);
  sub_26846A6DC(v8, a2 + *(v24 + 48), &qword_28027DEC0, &qword_2684B8708);

  sub_268467A4C(v10, &qword_28027DEC0, &qword_2684B8708);
  sub_268467A4C(v17, &qword_28027DEC8, &qword_2684B8710);
  sub_268467A4C(v8, &qword_28027DEC0, &qword_2684B8708);
  return sub_268467A4C(v15, &qword_28027DEC8, &qword_2684B8710);
}

uint64_t sub_2684838FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF28, &qword_2684B87B8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = v52 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF30, &qword_2684B87C0);
  MEMORY[0x28223BE20](v63);
  v9 = v52 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF38, &qword_2684B87C8);
  MEMORY[0x28223BE20](v59);
  v62 = v52 - v10;
  v11 = type metadata accessor for ReminderViewInternal(0);
  v52[0] = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52[1] = v12;
  v53 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF40, &qword_2684B87D0);
  MEMORY[0x28223BE20](v54);
  v14 = v52 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF48, &qword_2684B87D8);
  MEMORY[0x28223BE20](v58);
  v56 = v52 - v15;
  v16 = sub_2684B47F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF50, &qword_2684B87E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v61 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = v52 - v23;
  v55 = v11;
  v24 = a1;
  v25 = a1 + *(v11 + 40);
  v26 = *v25;
  if ((*(v25 + 8) & 1) == 0)
  {

    sub_2684B5704();
    v27 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v26, 0);
    (*(v17 + 8))(v19, v16);
  }

  v28 = sub_2684B5784();
  v29 = sub_2684B48D4();
  if (v28)
  {
    *v14 = v29;
    *(v14 + 1) = 0;
    v14[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF80, &qword_2684B87F8);
    sub_268486A48(a1, &v14[*(v30 + 44)]);
    v31 = v53;
    sub_268488758(v24, v53, type metadata accessor for ReminderViewInternal);
    v32 = (*(v52[0] + 80) + 16) & ~*(v52[0] + 80);
    v33 = swift_allocObject();
    sub_268488B98(v31, v33 + v32, type metadata accessor for ReminderViewInternal);
    v34 = MEMORY[0x277CE1198];
    sub_26846ACF0(&qword_28027DF68, &qword_28027DF40, &qword_2684B87D0, MEMORY[0x277CE1198]);
    v35 = v56;
    sub_2684B4C64();

    sub_268467A4C(v14, &qword_28027DF40, &qword_2684B87D0);
    v36 = (v24 + *(v55 + 44));
    v37 = *v36;
    v38 = v36[1];
    *&v65 = v37;
    *(&v65 + 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF88, &qword_2684B8800);
    sub_2684B4F34();
    sub_2684B50B4();
    sub_2684B44A4();
    v39 = (v35 + *(v58 + 36));
    v40 = v66;
    *v39 = v65;
    v39[1] = v40;
    v39[2] = v67;
    sub_26846A6DC(v35, v62, &qword_28027DF48, &qword_2684B87D8);
    swift_storeEnumTagMultiPayload();
    sub_268488C00();
    sub_26846ACF0(&qword_28027DF70, &qword_28027DF30, &qword_2684B87C0, v34);
    v41 = v60;
    sub_2684B49B4();
    v42 = v35;
    v43 = &qword_28027DF48;
    v44 = &qword_2684B87D8;
  }

  else
  {
    *v9 = v29;
    *(v9 + 1) = 0;
    v9[16] = 0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF58, &qword_2684B87E8);
    sub_268485D3C(a1, &v9[*(v45 + 44)]);
    sub_26846A6DC(v9, v62, &qword_28027DF30, &qword_2684B87C0);
    swift_storeEnumTagMultiPayload();
    sub_268488C00();
    sub_26846ACF0(&qword_28027DF70, &qword_28027DF30, &qword_2684B87C0, MEMORY[0x277CE1198]);
    v41 = v60;
    sub_2684B49B4();
    v42 = v9;
    v43 = &qword_28027DF30;
    v44 = &qword_2684B87C0;
  }

  sub_268467A4C(v42, v43, v44);
  v46 = v64;
  sub_268484130(v64);
  v47 = v61;
  sub_26846A6DC(v41, v61, &qword_28027DF50, &qword_2684B87E0);
  sub_26846A6DC(v46, v6, &qword_28027DF28, &qword_2684B87B8);
  v48 = v57;
  sub_26846A6DC(v47, v57, &qword_28027DF50, &qword_2684B87E0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF78, &qword_2684B87F0);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 0;
  sub_26846A6DC(v6, v48 + *(v49 + 64), &qword_28027DF28, &qword_2684B87B8);
  sub_268467A4C(v46, &qword_28027DF28, &qword_2684B87B8);
  sub_268467A4C(v41, &qword_28027DF50, &qword_2684B87E0);
  sub_268467A4C(v6, &qword_28027DF28, &qword_2684B87B8);
  return sub_268467A4C(v47, &qword_28027DF50, &qword_2684B87E0);
}

uint64_t sub_268484130@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE0, &qword_2684B8870);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE8, &qword_2684B8878);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_2684B41E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v16 = v1;
  MEMORY[0x26D619380]();
  v17 = sub_2684B41D4();
  v18 = *(v9 + 8);
  v19 = v14;
  v20 = v31;
  v18(v19, v8);
  if ((v17 & 1) != 0 || (MEMORY[0x26D619380](v15), sub_2684B4194(), v18(v12, v8), v21 = sub_2684B4184(), v22 = 1, v23 = (*(*(v21 - 8) + 48))(v7, 1, v21), sub_268467A4C(v7, &qword_28027DFE8, &qword_2684B8878), v23 != 1))
  {
    *v4 = sub_2684B4834();
    *(v4 + 1) = 0x402C000000000000;
    v4[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFF0, &qword_2684B8880);
    sub_2684871DC(v16, &v4[*(v24 + 44)]);
    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = swift_getKeyPath();
    v28 = &v4[*(v33 + 36)];
    *v28 = 1;
    *(v28 + 1) = KeyPath;
    v28[16] = 0;
    *(v28 + 3) = v26;
    v28[32] = 0;
    *(v28 + 5) = v27;
    v28[48] = 0;
    sub_26846A8C8(v4, v20, &qword_28027DFE0, &qword_2684B8870);
    v22 = 0;
  }

  return (*(v32 + 56))(v20, v22, 1, v33);
}

uint64_t sub_268484488@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE0, &qword_2684B8758);
  v2 = MEMORY[0x28223BE20](v131);
  v135 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v133 = &v107 - v4;
  v5 = type metadata accessor for MessagingTriggerPill(0);
  v128 = *(v5 - 8);
  v129 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE8, &qword_2684B8760);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v107 - v8;
  v137 = sub_2684B40F4();
  v127 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEF0, &qword_2684B8768);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v132 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v107 - v13;
  v124 = sub_2684B4B34();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for LocationTriggerPill(0);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v110 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  MEMORY[0x28223BE20](v16 - 8);
  v117 = &v107 - v17;
  v136 = sub_2684B4084();
  v118 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v109 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEF8, &unk_2684B8770);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v130 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v142 = &v107 - v22;
  v114 = type metadata accessor for TemporalTriggerView(0);
  v115 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v108 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v107 - v25;
  v27 = sub_2684B41E4();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v107 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v107 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v107 - v36;
  v38 = sub_2684B40B4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD8, &qword_2684B7F28);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v126 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v141 = &v107 - v45;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v139 = v1;
  MEMORY[0x26D619380]();
  sub_2684B40D4();
  v46 = *(v28 + 8);
  v47 = v37;
  v48 = v27;
  v46(v47, v27);
  v49 = (*(v39 + 48))(v26, 1, v38);
  v119 = v35;
  if (v49 == 1)
  {
    sub_268467A4C(v26, &qword_28027DBD0, &qword_2684B7F20);
    v50 = 1;
    v51 = v141;
    v52 = v114;
  }

  else
  {
    (*(v39 + 32))(v41, v26, v38);
    v53 = v108;
    (*(v39 + 16))(v108, v41, v38);
    MEMORY[0x26D619380](v138);
    v54 = sub_2684B3FD4();
    v46(v35, v27);
    (*(v39 + 8))(v41, v38);
    v55 = v114;
    v53[*(v114 + 20)] = (v54 & 1) == 0;
    v56 = v53;
    v57 = v141;
    sub_268488B98(v56, v141, type metadata accessor for TemporalTriggerView);
    v50 = 0;
    v51 = v57;
    v52 = v55;
  }

  (*(v115 + 56))(v51, v50, 1, v52);
  v58 = v113;
  v59 = v138;
  MEMORY[0x26D619380](v138);
  v60 = v117;
  sub_2684B40C4();
  v46(v58, v27);
  v61 = v118;
  v62 = v136;
  v63 = (*(v118 + 48))(v60, 1, v136);
  v64 = MEMORY[0x277CE0A58];
  v65 = v142;
  v66 = v48;
  v67 = v46;
  if (v63 == 1)
  {
    sub_268467A4C(v60, &qword_28027DBC0, &qword_2684B7F10);
    v68 = 1;
    v69 = v125;
    v70 = v121;
  }

  else
  {
    v71 = v109;
    (*(v61 + 32))(v109, v60, v62);
    v72 = v110;
    (*(v61 + 16))(v110, v71, v62);
    v73 = v121;
    v143 = 0x4010000000000000;
    v74 = (*(v122 + 104))(v123, *v64, v124);
    sub_26847454C(v74, v75, v76);
    v70 = v73;
    sub_2684B4444();
    v77 = v71;
    v59 = v138;
    (*(v61 + 8))(v77, v136);
    sub_268488B98(v72, v65, type metadata accessor for LocationTriggerPill);
    v68 = 0;
    v69 = v125;
  }

  (*(v120 + 56))(v65, v68, 1, v70);
  v78 = v116;
  MEMORY[0x26D619380](v59);
  sub_2684B4104();
  v67(v78, v66);
  v79 = v127;
  v80 = v137;
  if ((*(v127 + 48))(v69, 1, v137) == 1)
  {
    sub_268467A4C(v69, &qword_28027DEE8, &qword_2684B8760);
    v81 = 1;
    v82 = v140;
    v83 = v119;
    v84 = v129;
  }

  else
  {
    v85 = *(v79 + 32);
    v138 = v67;
    v86 = v111;
    v85(v111, v69, v80);
    v87 = v112;
    (*(v79 + 16))(v112, v86, v80);
    v84 = v129;
    v143 = 0x4010000000000000;
    v88 = (*(v122 + 104))(v123, *MEMORY[0x277CE0A58], v124);
    sub_26847454C(v88, v89, v90);
    sub_2684B4444();
    v91 = v86;
    v67 = v138;
    (*(v79 + 8))(v91, v137);
    v92 = v87;
    v82 = v140;
    sub_268488B98(v92, v140, type metadata accessor for MessagingTriggerPill);
    v81 = 0;
    v83 = v119;
  }

  (*(v128 + 56))(v82, v81, 1, v84);
  MEMORY[0x26D619380](v59);
  v93 = sub_2684B4044();
  v67(v83, v66);
  v94 = sub_2684ABC78(v93);

  v143 = v94;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF00, &qword_2684B87A0);
  type metadata accessor for LinkAttachmentView(0);
  sub_26846ACF0(&qword_28027DF08, &qword_28027DF00, &qword_2684B87A0, MEMORY[0x277D83980]);
  sub_2684884C0(&qword_28027DF10, type metadata accessor for LinkAttachmentView, &unk_2684B7734);
  v95 = v133;
  sub_2684B5014();
  KeyPath = swift_getKeyPath();
  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  v99 = v95 + *(v131 + 36);
  *v99 = 0;
  *(v99 + 8) = KeyPath;
  *(v99 + 16) = 0;
  *(v99 + 24) = v97;
  *(v99 + 32) = 0;
  *(v99 + 40) = v98;
  *(v99 + 48) = 0;
  v100 = v126;
  sub_26846A6DC(v141, v126, &qword_28027DBD8, &qword_2684B7F28);
  v101 = v130;
  sub_26846A6DC(v142, v130, &qword_28027DEF8, &unk_2684B8770);
  v102 = v132;
  sub_26846A6DC(v82, v132, &qword_28027DEF0, &qword_2684B8768);
  v103 = v135;
  sub_26846A6DC(v95, v135, &qword_28027DEE0, &qword_2684B8758);
  v104 = v134;
  sub_26846A6DC(v100, v134, &qword_28027DBD8, &qword_2684B7F28);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF18, &qword_2684B87A8);
  sub_26846A6DC(v101, v104 + v105[12], &qword_28027DEF8, &unk_2684B8770);
  sub_26846A6DC(v102, v104 + v105[16], &qword_28027DEF0, &qword_2684B8768);
  sub_26846A6DC(v103, v104 + v105[20], &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v95, &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v140, &qword_28027DEF0, &qword_2684B8768);
  sub_268467A4C(v142, &qword_28027DEF8, &unk_2684B8770);
  sub_268467A4C(v141, &qword_28027DBD8, &qword_2684B7F28);
  sub_268467A4C(v103, &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v102, &qword_28027DEF0, &qword_2684B8768);
  sub_268467A4C(v101, &qword_28027DEF8, &unk_2684B8770);
  return sub_268467A4C(v100, &qword_28027DBD8, &qword_2684B7F28);
}

double sub_2684854A4@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39[-v8];
  v10 = sub_2684B41E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(type metadata accessor for ReminderViewInternal(0) + 24)) != 1)
  {
    goto LABEL_6;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v14);
  sub_2684B40D4();
  v15 = sub_2684B40B4();
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) != 1)
  {
    sub_268467A4C(v9, &qword_28027DBD0, &qword_2684B7F20);
    sub_2684B40C4();
    (*(v11 + 8))(v13, v10);
    v16 = sub_2684B4084();
    v17 = (*(*(v16 - 8) + 48))(v6, 1, v16);
    sub_268467A4C(v6, &qword_28027DBC0, &qword_2684B7F10);
    if (v17 == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_268488AB4(&v56);
    goto LABEL_7;
  }

  (*(v11 + 8))(v13, v10);
  sub_268467A4C(v9, &qword_28027DBD0, &qword_2684B7F20);
LABEL_5:
  v18 = sub_2684B4834();
  v40 = 0;
  sub_268487A48(v2, &v56);
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v42 = v56;
  v43 = v57;
  v48[2] = v58;
  v48[3] = v59;
  v48[4] = v60;
  v48[5] = v61;
  v48[0] = v56;
  v48[1] = v57;
  sub_26846A6DC(&v42, &v49, &qword_28027DEB8, &qword_2684B8700);
  sub_268467A4C(v48, &qword_28027DEB8, &qword_2684B8700);
  *&v39[39] = v44;
  *&v39[55] = v45;
  *&v39[71] = v46;
  *&v39[87] = v47;
  *&v39[7] = v42;
  *&v39[23] = v43;
  v19 = v40;
  v20 = sub_2684B4A64();
  sub_2684B4364();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v41 = 0;
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  LOBYTE(v56) = 0;
  *&v49 = v18;
  *(&v49 + 1) = 0x4020000000000000;
  LOBYTE(v50[0]) = v19;
  *(v50 + 1) = *v39;
  *(&v50[1] + 1) = *&v39[16];
  *(&v50[2] + 1) = *&v39[32];
  *&v50[6] = *&v39[95];
  *(&v50[5] + 1) = *&v39[80];
  *(&v50[4] + 1) = *&v39[64];
  *(&v50[3] + 1) = *&v39[48];
  BYTE8(v50[6]) = v20;
  *&v51 = v22;
  *(&v51 + 1) = v24;
  *&v52 = v26;
  *(&v52 + 1) = v28;
  LOBYTE(v53) = 0;
  BYTE8(v53) = 1;
  *&v54 = KeyPath;
  BYTE8(v54) = 0;
  *&v55[0] = v30;
  BYTE8(v55[0]) = 0;
  *&v55[1] = v31;
  BYTE8(v55[1]) = 0;
  nullsub_1();
  v66 = v53;
  v67 = v54;
  v68[0] = v55[0];
  *(v68 + 9) = *(v55 + 9);
  v62 = v50[5];
  v63 = v50[6];
  v64 = v51;
  v65 = v52;
  v58 = v50[1];
  v59 = v50[2];
  v60 = v50[3];
  v61 = v50[4];
  v56 = v49;
  v57 = v50[0];
LABEL_7:
  v32 = v67;
  a1[10] = v66;
  a1[11] = v32;
  a1[12] = v68[0];
  *(a1 + 201) = *(v68 + 9);
  v33 = v63;
  a1[6] = v62;
  a1[7] = v33;
  v34 = v65;
  a1[8] = v64;
  a1[9] = v34;
  v35 = v59;
  a1[2] = v58;
  a1[3] = v35;
  v36 = v61;
  a1[4] = v60;
  a1[5] = v36;
  result = *&v56;
  v38 = v57;
  *a1 = v56;
  a1[1] = v38;
  return result;
}

uint64_t sub_268485960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_2684B4FE4();
  swift_getKeyPath();
  sub_2684B4FD4();

  sub_268467A4C(v2, &qword_28027D610, &unk_2684B7150);
  v4 = v6;
  v5 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE80, &unk_2684B86F0);
  sub_2684B3894();
  type metadata accessor for ReminderViewInternal(0);
  sub_2684888E4();
  sub_2684884C0(&qword_28027DDB0, type metadata accessor for ReminderViewInternal, &unk_2684B8490);
  sub_2684889D0();
  return sub_2684B5024();
}

double sub_268485B04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26846A6DC(a1, a2, &qword_28027D610, &unk_2684B7150);
  v3 = type metadata accessor for ReminderViewInternal(0);
  *(a2 + v3[5]) = 0;
  *(a2 + v3[6]) = 0;
  v4 = a2 + v3[7];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  *(v4 + 32) = swift_getKeyPath();
  *(v4 + 40) = 0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0;
  *(v4 + 104) = sub_268488064;
  *(v4 + 112) = 0;
  if (qword_28027CF08 != -1)
  {
    swift_once();
  }

  v5 = xmmword_28027DD10;
  v6 = qword_28027DD20;
  v7 = unk_28027DD28;
  v8 = qword_28027DD30;
  *(v4 + 64) = xmmword_28027DD10;
  *(v4 + 80) = v6;
  *(v4 + 88) = v7;
  *(v4 + 96) = v8;
  *(v4 + 120) = v5;
  *(v4 + 136) = v6;
  *(v4 + 144) = v7;
  *(v4 + 152) = v8;
  v9 = a2 + v3[8];
  swift_retain_n();
  v10 = sub_2684B4AC4();
  v11 = sub_2684B4AA4();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *v9 = v10;
  *(v9 + 8) = sub_2684894B0;
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = 0;
  *(v9 + 48) = v13;
  *(v9 + 56) = 0;
  *(v9 + 64) = v14;
  *(v9 + 72) = 0;
  v15 = a2 + v3[9];
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  v16 = a2 + v3[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = (a2 + v3[11]);

  sub_2684B4F24();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  return result;
}

uint64_t sub_268485D3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = sub_2684B41E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E028, &qword_2684B88E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E030, &qword_2684B88E8);
  MEMORY[0x28223BE20](v68);
  v14 = &v62 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E038, &qword_2684B88F0);
  MEMORY[0x28223BE20](v69);
  v16 = &v62 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E040, &qword_2684B88F8);
  v71 = *(v72 - 8);
  v17 = MEMORY[0x28223BE20](v72);
  v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v62 - v19;
  sub_26848653C(a1);
  v67 = type metadata accessor for ReminderViewInternal(0);
  v20 = *(a1 + *(v67 + 32) + 24);
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E048, &qword_2684B8900) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = swift_getKeyPath();
  v24 = &v12[*(v10 + 44)];
  *v24 = v23;
  *(v24 + 1) = 4;
  v24[16] = 0;

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  LOBYTE(v10) = sub_2684B3FD4();
  v26 = *(v4 + 8);
  v70 = v3;
  v26(v8, v3);
  if (v10)
  {
    v27 = sub_2684B49F4();
  }

  else
  {
    v27 = sub_2684B49D4();
  }

  v28 = v27;
  sub_26846A8C8(v12, v14, &qword_28027E028, &qword_2684B88E0);
  *&v14[*(v68 + 36)] = v28;
  v29 = sub_2684B48C4();
  sub_26846A8C8(v14, v16, &qword_28027E030, &qword_2684B88E8);
  v30 = &v16[*(v69 + 36)];
  *v30 = v29;
  v30[1] = sub_2684894B4;
  v30[2] = 0;
  MEMORY[0x26D619380](v25);
  sub_2684B41A4();
  v31 = v70;
  v26(v8, v70);

  sub_268489068(&qword_28027E050, &qword_28027E038, &qword_2684B88F0, sub_2684890EC);
  sub_2684B4D74();
  sub_268467A4C(v16, &qword_28027E038, &qword_2684B88F0);
  v32 = v74;
  MEMORY[0x26D619380](v25);
  sub_2684B41C4();
  v34 = v33;
  v26(v32, v31);
  if (v34)
  {
    v35 = sub_2684B4B74();
    v37 = v36;
    v39 = v38;

    LODWORD(v85[0]) = sub_2684B49F4();
    v70 = sub_2684B4B44();
    v74 = v40;
    v42 = v41;
    v69 = v43;
    sub_26846D468(v35, v37, v39 & 1);

    v66 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v67 = swift_getKeyPath();
    LOBYTE(v85[0]) = v42 & 1;
    LOBYTE(v79) = 0;
    v78 = 0;
    v77 = 0;
    v44 = v42 & 1;
    v45 = 1;
  }

  else
  {
    v70 = 0;
    v74 = 0;
    v69 = 0;
    v66 = 0;
    v68 = 0;
    v67 = 0;
    v45 = 0;
    v44 = 0;
  }

  v63 = v45;
  v64 = 0;
  v65 = v44;
  v46 = v71;
  v47 = *(v71 + 16);
  v48 = v75;
  v49 = v72;
  v47(v75, v76, v72);
  v50 = v73;
  v47(v73, v48, v49);
  v51 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0A0, &qword_2684B8928) + 48)];
  v52 = v70;
  *&v79 = v70;
  v53 = v74;
  *(&v79 + 1) = v74;
  *&v80 = v44;
  v54 = v69;
  *(&v80 + 1) = v69;
  *&v81 = v45;
  v55 = v66;
  *(&v81 + 1) = v66;
  *&v82 = 0;
  v56 = v68;
  *(&v82 + 1) = v68;
  *&v83 = 0;
  v57 = v67;
  *(&v83 + 1) = v67;
  v84 = 0;
  v51[80] = 0;
  v58 = v80;
  *v51 = v79;
  *(v51 + 1) = v58;
  v59 = v82;
  *(v51 + 2) = v81;
  *(v51 + 3) = v59;
  *(v51 + 4) = v83;
  sub_26846A6DC(&v79, v85, &qword_28027DFD8, &qword_2684B8868);
  v60 = *(v46 + 8);
  v60(v76, v49);
  v85[0] = v52;
  v85[1] = v53;
  v85[2] = v65;
  v85[3] = v54;
  v85[4] = v63;
  v85[5] = v55;
  v85[6] = v64;
  v85[7] = v56;
  v85[8] = 0;
  v85[9] = v57;
  v86 = 0;
  sub_268467A4C(v85, &qword_28027DFD8, &qword_2684B8868);
  return (v60)(v75, v49);
}

uint64_t sub_26848653C(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0A8, &qword_2684B8930);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E098, &unk_2684B8918);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - v10);
  if (*(a1 + *(type metadata accessor for ReminderViewInternal(0) + 20)) == 1)
  {
    *v11 = sub_2684B5084();
    v11[1] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0B0, &qword_2684B8938);
    sub_268486838(v11 + *(v13 + 44));
    sub_26846A6DC(v11, v8, &qword_28027E098, &unk_2684B8918);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918, MEMORY[0x277CE11A8]);
    sub_2684B49B4();
    return sub_268467A4C(v11, &qword_28027E098, &unk_2684B8918);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
    MEMORY[0x26D619380](v15);
    v16 = sub_2684B4164();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    *v8 = v16;
    *(v8 + 1) = v18;
    v8[16] = 0;
    *(v8 + 3) = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918, MEMORY[0x277CE11A8]);
    return sub_2684B49B4();
  }
}

uint64_t sub_268486838@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditableReminderTitleView(0);
  v3 = (v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  sub_2684B4FE4();
  v9 = &v8[v3[7]];
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  sub_2684B4F24();
  v10 = v19;
  *v9 = v18;
  *(v9 + 2) = v10;
  v11 = &v8[v3[8]];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  v12 = &v8[v3[9]];
  *v12 = sub_2684B43A4() & 1;
  *(v12 + 1) = v13;
  v12[16] = v14 & 1;
  sub_268488758(v8, v6, type metadata accessor for EditableReminderTitleView);
  *a1 = xmmword_2684B8290;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0B8, &unk_2684B8940);
  sub_268488758(v6, a1 + *(v15 + 48), type metadata accessor for EditableReminderTitleView);
  sub_268475600(0x6C6F686563616C70, 0xEB00000000726564, 0);

  sub_268489450(v8, type metadata accessor for EditableReminderTitleView);
  sub_268489450(v6, type metadata accessor for EditableReminderTitleView);
  sub_26846D468(0x6C6F686563616C70, 0xEB00000000726564, 0);
}

uint64_t sub_268486A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_2684B41E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v76 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF90, &qword_2684B8808);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v63 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF98, &qword_2684B8810);
  v11 = MEMORY[0x28223BE20](v72);
  v79 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  sub_2684B4164();
  v18 = *(v4 + 8);
  v17 = v4 + 8;
  v18(v8, v3);
  v63 = type metadata accessor for ReminderViewInternal(0);
  v19 = sub_2684B4B74();
  v65 = v20;
  v66 = v19;
  v22 = v21;
  v64 = v23;

  KeyPath = swift_getKeyPath();
  v70 = v16;
  v68 = a1;
  MEMORY[0x26D619380](v16);
  v25 = sub_2684B3FD4();
  v78 = v3;
  v69 = v18;
  v18(v8, v3);
  if (v25)
  {
    v26 = sub_2684B49F4();
  }

  else
  {
    v26 = sub_2684B49D4();
  }

  v27 = v26;
  v96 = v22 & 1;
  v95 = 0;
  v28 = sub_2684B48C4();
  *&v89 = v66;
  *(&v89 + 1) = v65;
  LOBYTE(v90) = v96;
  *(&v90 + 1) = v64;
  *&v91 = KeyPath;
  *(&v91 + 1) = 4;
  LOBYTE(v92) = v95;
  DWORD1(v92) = v27;
  *(&v92 + 1) = v28;
  *&v93 = sub_2684894B4;
  *(&v93 + 1) = 0;
  v29 = v70;
  MEMORY[0x26D619380](v70);
  sub_2684B41A4();
  v67 = v17;
  v30 = v69;
  v69(v8, v78);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFA0, &qword_2684B8848);
  sub_268489068(&qword_28027DFA8, &qword_28027DFA0, &qword_2684B8848, sub_268488F5C);
  v31 = v73;
  sub_2684B4D74();
  v97[2] = v91;
  v97[3] = v92;
  v97[4] = v93;
  v97[0] = v89;
  v97[1] = v90;
  sub_268467A4C(v97, &qword_28027DFA0, &qword_2684B8848);
  v32 = v71;
  (*(v74 + 32))(v71, v31, v75);
  *(v32 + *(v72 + 36)) = 256;
  sub_26846A8C8(v32, v80, &qword_28027DF98, &qword_2684B8810);
  v33 = v76;
  MEMORY[0x26D619380](v29);
  sub_2684B41C4();
  v35 = v34;
  v30(v33, v78);
  if (v35)
  {
    v36 = sub_2684B4B74();
    v38 = v37;
    v40 = v39;

    LODWORD(v89) = sub_2684B49F4();
    v74 = sub_2684B4B44();
    v78 = v41;
    v43 = v42;
    v76 = v44;
    sub_26846D468(v36, v38, v40 & 1);

    v75 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    LOBYTE(v89) = v43 & 1;
    LOBYTE(v83) = 0;
    v82 = 0;
    v81 = 0;
    v47 = (v43 & 1);
    v48 = 1;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v78 = 0;
    v76 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v47 = 0;
  }

  v73 = v47;
  v49 = v79;
  sub_26846A6DC(v80, v79, &qword_28027DF98, &qword_2684B8810);
  v50 = v49;
  v51 = v77;
  sub_26846A6DC(v50, v77, &qword_28027DF98, &qword_2684B8810);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFD0, &qword_2684B8860) + 48);
  v53 = v74;
  v54 = v78;
  *&v83 = v74;
  *(&v83 + 1) = v78;
  v55 = v76;
  *&v84 = v47;
  *(&v84 + 1) = v76;
  v56 = v48;
  *&v85 = v48;
  v57 = v75;
  *(&v85 + 1) = v75;
  *&v86 = 0;
  *(&v86 + 1) = v45;
  *&v87 = 0;
  *(&v87 + 1) = v46;
  v88 = 0;
  *(v52 + 80) = 0;
  v58 = v84;
  *v52 = v83;
  *(v52 + 16) = v58;
  v59 = v86;
  *(v52 + 32) = v85;
  *(v52 + 48) = v59;
  *(v52 + 64) = v87;
  v60 = v54;
  v61 = v55;
  sub_26846A6DC(&v83, &v89, &qword_28027DFD8, &qword_2684B8868);
  sub_268467A4C(v80, &qword_28027DF98, &qword_2684B8810);
  *&v89 = v53;
  *(&v89 + 1) = v60;
  *&v90 = v73;
  *(&v90 + 1) = v61;
  *&v91 = v56;
  *(&v91 + 1) = v57;
  *&v92 = 0;
  *(&v92 + 1) = v45;
  *&v93 = 0;
  *(&v93 + 1) = v46;
  v94 = 0;
  sub_268467A4C(&v89, &qword_28027DFD8, &qword_2684B8868);
  return sub_268467A4C(v79, &qword_28027DF98, &qword_2684B8810);
}

uint64_t sub_268487164(uint64_t a1, double a2, double a3)
{
  type metadata accessor for ReminderViewInternal(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF88, &qword_2684B8800);
  return sub_2684B4F44();
}

uint64_t sub_2684871DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for AppLinkView(0);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE8, &qword_2684B8878);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v6;
  v7 = sub_2684B4184();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFF8, &qword_2684B8888);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v59 - v12;
  v62 = sub_2684B4594();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E000, &qword_2684B8890);
  v14 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v16 = &v59 - v15;
  v17 = sub_2684B41E4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E008, &qword_2684B8898);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v67 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v59 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v69 = a1;
  MEMORY[0x26D619380]();
  LOBYTE(a1) = sub_2684B41D4();
  v30 = *(v18 + 8);
  v65 = v17;
  v30(v23, v17);
  if (a1)
  {
    v31 = v61;
    v32 = v60;
    v33 = v62;
    v34 = (*(v61 + 104))(v60, *MEMORY[0x277CDF9E8], v62);
    sub_268489014(v34, v35, v36);
    sub_2684B4D24();
    (*(v31 + 8))(v32, v33);
    v37 = v66;
    (*(v14 + 32))(v28, v16, v66);
    v38 = 0;
    v39 = v37;
  }

  else
  {
    v38 = 1;
    v39 = v66;
  }

  v40 = *(v14 + 56);
  v66 = v28;
  v40(v28, v38, 1, v39);
  MEMORY[0x26D619380](v29);
  v41 = v68;
  sub_2684B4194();
  v30(v21, v65);
  v43 = v70;
  v42 = v71;
  if ((*(v70 + 48))(v41, 1, v71) == 1)
  {
    sub_268467A4C(v41, &qword_28027DFE8, &qword_2684B8878);
    v44 = 1;
    v45 = v75;
    v46 = v72;
  }

  else
  {
    v47 = v63;
    (*(v43 + 32))(v63, v41, v42);
    v48 = v64;
    (*(v43 + 16))(v64, v47, v42);
    v45 = v75;
    v49 = v48 + *(v75 + 20);
    *v49 = swift_getKeyPath();
    *(v49 + 8) = 0;
    v50 = (v48 + *(v45 + 24));
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E018, &qword_2684B88D8);
    sub_2684B4F24();
    (*(v43 + 8))(v47, v42);
    v51 = v81;
    v52 = v82;
    *v50 = v80;
    v50[1] = v51;
    v50[2] = v52;
    v46 = v72;
    sub_268488B98(v48, v72, type metadata accessor for AppLinkView);
    v44 = 0;
  }

  (*(v74 + 56))(v46, v44, 1, v45);
  v53 = v66;
  v54 = v67;
  sub_26846A6DC(v66, v67, &qword_28027E008, &qword_2684B8898);
  v55 = v73;
  sub_26846A6DC(v46, v73, &qword_28027DFF8, &qword_2684B8888);
  v56 = v76;
  sub_26846A6DC(v54, v76, &qword_28027E008, &qword_2684B8898);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E010, &qword_2684B88A0);
  sub_26846A6DC(v55, v56 + *(v57 + 48), &qword_28027DFF8, &qword_2684B8888);
  sub_268467A4C(v46, &qword_28027DFF8, &qword_2684B8888);
  sub_268467A4C(v53, &qword_28027E008, &qword_2684B8898);
  sub_268467A4C(v55, &qword_28027DFF8, &qword_2684B8888);
  return sub_268467A4C(v54, &qword_28027E008, &qword_2684B8898);
}

uint64_t sub_2684879BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF20, &qword_2684B87B0) + 48);
  v5 = sub_2684B4034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

void sub_268487A48(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_2684B41E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v34 = a1;
  MEMORY[0x26D619380]();
  sub_2684B40D4();
  v17 = *(v10 + 8);
  v17(v15, v9);
  v18 = sub_2684B40B4();
  LODWORD(a1) = (*(*(v18 - 8) + 48))(v8, 1, v18);
  sub_268467A4C(v8, &qword_28027DBD0, &qword_2684B7F20);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1 == 1)
  {
    v22 = nullsub_1;
    v21 = 0xE800000000000000;
    v20 = 0x7261646E656C6163;
    v19 = 0x6574614420646441;
  }

  v33 = v22;
  MEMORY[0x26D619380](v16);
  v23 = v35;
  sub_2684B40C4();
  v17(v13, v9);
  v24 = sub_2684B4084();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_268467A4C(v23, &qword_28027DBC0, &qword_2684B7F10);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v25 == 1)
  {
    v30 = nullsub_1;
    v29 = 0xE800000000000000;
    v28 = 0x6E6F697461636F6CLL;
    v27 = 0xEC0000006E6F6974;
    v26 = 0x61636F4C20646441;
  }

  v31 = v33;
  sub_268488AF8(v19, v21, v20, v21, v33, 0);
  sub_268488AF8(v26, v27, v28, v29, v30, 0);
  sub_268488B48(v19, v21, v20, v21, v31, 0);
  sub_268488B48(v26, v27, v28, v29, v30, 0);
  *a2 = v19;
  a2[1] = v21;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v31;
  a2[5] = 0;
  a2[6] = v26;
  a2[7] = v27;
  a2[8] = v28;
  a2[9] = v29;
  a2[10] = v30;
  a2[11] = 0;
  sub_268488B48(v26, v27, v28, v29, v30, 0);
  sub_268488B48(v19, v21, v20, v21, v31, 0);
}

double sub_268487E68()
{
  v0 = sub_2684B4AB4();
  result = 12.0;
  xmmword_28027DD10 = xmmword_2684B82A0;
  *&qword_28027DD20 = xmmword_2684B82B0;
  qword_28027DD30 = v0;
  return result;
}

double sub_268487EA0(uint64_t a1)
{
  v1 = sub_2684B4AC4();
  result = 8.0;
  xmmword_28027DD38 = xmmword_2684B82C0;
  unk_28027DD48 = xmmword_2684B82D0;
  qword_28027DD58 = v1;
  return result;
}

uint64_t sub_268487ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684B82E0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 56) = result;
  qword_28027DD60 = v0;
  return result;
}

double sub_268487F6C@<D0>(uint64_t a1@<X8>)
{
  if (qword_28027CF08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_28027DD30;
  v3 = *&qword_28027DD20;
  *a1 = xmmword_28027DD10;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;

  return result;
}

double sub_268487FE8@<D0>(uint64_t a1@<X8>)
{
  if (qword_28027CF10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_28027DD58;
  v2 = unk_28027DD48;
  *a1 = xmmword_28027DD38;
  *(a1 + 16) = v2;
  *(a1 + 32) = v1;

  return result;
}

double sub_268488064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2684880CC(a1, a3, a4);
  sub_2684B53E4();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

unint64_t sub_2684880CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027DD80;
  if (!qword_28027DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DD80);
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

uint64_t sub_268488134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26848817C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_2684881FC(uint64_t a1)
{
  sub_2684883F0(319, &qword_28027D628, MEMORY[0x277D5E1A8], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_268488398(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_268488454(319, &qword_28027DDA0, MEMORY[0x277CE0AE0], type metadata accessor for AmbientScaled);
      if (v5 <= 0x3F)
      {
        sub_268472A74(319);
        if (v6 <= 0x3F)
        {
          sub_2684883F0(319, &qword_28027D0C0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v7 <= 0x3F)
          {
            sub_268488454(319, &qword_28027DDA8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_268488398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_28027DD98)
  {
    v4 = type metadata accessor for AmbientScaledIdiomConstant(0, &type metadata for ReminderViewInternal.Constants, &off_2879147C8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_28027DD98);
    }
  }
}

void sub_2684883F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_268488454(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2684884C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_268488508()
{
  result = qword_28027DE08;
  if (!qword_28027DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDE0, &qword_2684B8620);
    sub_2684885C0();
    sub_26846ACF0(&qword_28027DE18, &qword_28027DE00, &qword_2684B8638, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE08);
  }

  return result;
}

unint64_t sub_2684885C0()
{
  result = qword_28027DE10;
  if (!qword_28027DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDD8, &qword_2684B8618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDC8, &qword_2684B8608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E0, &unk_2684B85F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDC0, &qword_2684B8600);
    sub_26846ACF0(&qword_28027DDF0, &qword_28027DDC0, &qword_2684B8600, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE10);
  }

  return result;
}

uint64_t sub_268488758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684887C0()
{
  type metadata accessor for ReminderViewInternal(0);

  return sub_268485960();
}

unint64_t sub_268488830()
{
  result = qword_28027DE68;
  if (!qword_28027DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DE60, &qword_2684B86A8);
    sub_2684884C0(&qword_28027DDB0, type metadata accessor for ReminderViewInternal, &unk_2684B8490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE68);
  }

  return result;
}

unint64_t sub_2684888E4()
{
  result = qword_28027DE88;
  if (!qword_28027DE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DE80, &unk_2684B86F0);
    sub_26846ACF0(&qword_28027DE90, &qword_28027DE98, &qword_2684BB1E0, MEMORY[0x277D83960]);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE88);
  }

  return result;
}

unint64_t sub_2684889D0()
{
  result = qword_28027DEA8;
  if (!qword_28027DEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D610, &unk_2684B7150);
    sub_2684884C0(&qword_28027DEB0, MEMORY[0x277D5E1A8], MEMORY[0x277D5E1B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DEA8);
  }

  return result;
}

double sub_268488A84@<D0>(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if (a3 <= 1.0)
  {
    v3 = *a1;
  }

  *a2 = v3;

  return result;
}

double sub_268488AB4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return result;
}

double sub_268488AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

void sub_268488B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_268488B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_268488C00()
{
  result = qword_28027DF60;
  if (!qword_28027DF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DF48, &qword_2684B87D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DF40, &qword_2684B87D0);
    sub_26846ACF0(&qword_28027DF68, &qword_28027DF40, &qword_2684B87D0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DF60);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ReminderViewInternal(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[7];
  sub_26845E0C8(*v5, *(v5 + 8));
  sub_26845E0C8(*(v5 + 16), *(v5 + 24));
  sub_26845E0C8(*(v5 + 32), *(v5 + 40));
  sub_26845E0C8(*(v5 + 48), *(v5 + 56));

  v6 = v2 + v1[8];

  sub_26845E0C8(*(v6 + 32), *(v6 + 40));
  sub_26845E0C8(*(v6 + 48), *(v6 + 56));
  sub_26845E0C8(*(v6 + 64), *(v6 + 72));
  v7 = v2 + v1[9];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  sub_26845E0C8(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_268488EE4(double a1, double a2)
{
  v5 = *(type metadata accessor for ReminderViewInternal(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_268487164(v6, a1, a2);
}

unint64_t sub_268488F5C()
{
  result = qword_28027DFB0;
  if (!qword_28027DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DFB8, &qword_2684B8850);
    sub_2684810F8();
    sub_26846ACF0(&qword_28027DFC0, &qword_28027DFC8, &qword_2684B8858, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DFB0);
  }

  return result;
}

unint64_t sub_268489014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E020;
  if (!qword_28027E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E020);
  }

  return result;
}

uint64_t sub_268489068(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684890EC()
{
  result = qword_28027E058;
  if (!qword_28027E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E030, &qword_2684B88E8);
    sub_2684891A4();
    sub_26846ACF0(&qword_28027DFC0, &qword_28027DFC8, &qword_2684B8858, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E058);
  }

  return result;
}

unint64_t sub_2684891A4()
{
  result = qword_28027E060;
  if (!qword_28027E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E028, &qword_2684B88E0);
    sub_26848925C();
    sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E060);
  }

  return result;
}

unint64_t sub_26848925C()
{
  result = qword_28027E068;
  if (!qword_28027E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E048, &qword_2684B8900);
    sub_268489314();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E068);
  }

  return result;
}

unint64_t sub_268489314()
{
  result = qword_28027E070;
  if (!qword_28027E070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E078, &qword_2684B8908);
    sub_268489398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E070);
  }

  return result;
}

unint64_t sub_268489398()
{
  result = qword_28027E080;
  if (!qword_28027E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E088, &qword_2684B8910);
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E080);
  }

  return result;
}

uint64_t sub_268489450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ReminderComposeSnippet(uint64_t a1)
{
  result = qword_28027E0C0;
  if (!qword_28027E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26848952C(uint64_t a1)
{
  result = sub_2684B3D24();
  if (v2 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2684895CC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = v3;
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2684B4A14();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B39C4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2684B5144();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E148, &qword_2684B8A28);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E150, qword_2684B8A30);
  MEMORY[0x28223BE20](v38);
  v13 = &v35 - v12;
  v46 = v1;
  sub_2684B3D04();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v14 = qword_280282928;
  v15 = sub_2684B4B94();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v53 = MEMORY[0x277CE0BD8];
  v54 = MEMORY[0x277D638E8];
  v22 = swift_allocObject();
  v52 = v22;
  *(v22 + 16) = v15;
  *(v22 + 24) = v17;
  *(v22 + 32) = v19 & 1;
  *(v22 + 40) = v21;
  sub_2684B39A4();
  sub_2684B5154();
  sub_2684B4A04();
  v23 = sub_26848DD08(&qword_28027E158, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  v24 = v40;
  sub_2684B4D64();
  (*(v37 + 8))(v5, v39);
  (*(v36 + 8))(v9, v7);
  sub_2684B4894();
  v25 = sub_2684B4B94();
  v27 = v26;
  LOBYTE(v17) = v28;
  v48 = v7;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_2684B4D54();
  sub_26846D468(v25, v27, v17 & 1);

  (*(v41 + 8))(v24, v29);
  sub_26848DBEC();
  v30 = sub_2684B4BC4();
  sub_268467A4C(v13, &qword_28027E150, qword_2684B8A30);
  v50 = MEMORY[0x277CE11C8];
  v51 = MEMORY[0x277D63A60];
  v48 = v30;
  v31 = v45;
  sub_26848D2CC(v46, v45);
  v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v33 = swift_allocObject();
  sub_26848D330(v31, v33 + v32);
  sub_2684B4E54();
  return sub_2684B51E4();
}

uint64_t sub_268489C28@<X0>(char *a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0E0, &qword_2684B89C0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v71 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v68 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0E8, &qword_2684B89C8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v57 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v57 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v57 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v57 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v64 = &v57 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v66 = sub_2684B5234();
  v63 = *(v66 - 8);
  v22 = MEMORY[0x28223BE20](v66);
  v62 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  sub_2684B3D04();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v26 = qword_280282928;
  v27 = sub_2684B4B94();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v73 = MEMORY[0x277CE0BD8];
  v74 = MEMORY[0x277D638E8];
  v34 = swift_allocObject();
  v72 = v34;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31 & 1;
  *(v34 + 40) = v33;
  v35 = v25;
  v58 = v25;
  sub_2684B5224();
  v36 = v21;
  v57 = v21;
  sub_26848A27C(v21);
  v37 = v64;
  sub_26848A70C(v64);
  v38 = v68;
  sub_26848AB88(v68);
  v39 = v65;
  sub_26848B0A4(v65);
  v40 = v67;
  sub_26848B5E4(v67);
  v41 = v62;
  v42 = *(v63 + 16);
  v42(v62, v35, v66);
  sub_26846A6DC(v36, v69, &qword_28027E0E8, &qword_2684B89C8);
  v43 = v37;
  v44 = v70;
  sub_26846A6DC(v43, v70, &qword_28027E0E8, &qword_2684B89C8);
  v45 = v71;
  sub_26846A6DC(v38, v71, &qword_28027E0E0, &qword_2684B89C0);
  v46 = v39;
  v47 = v59;
  sub_26846A6DC(v46, v59, &qword_28027E0E8, &qword_2684B89C8);
  v48 = v40;
  v49 = v60;
  sub_26846A6DC(v48, v60, &qword_28027E0E8, &qword_2684B89C8);
  v50 = v61;
  v51 = v41;
  v52 = v66;
  v42(v61, v51, v66);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F0, &qword_2684B89D0);
  v54 = v69;
  sub_26846A6DC(v69, &v50[v53[12]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v44, &v50[v53[16]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v45, &v50[v53[20]], &qword_28027E0E0, &qword_2684B89C0);
  sub_26846A6DC(v47, &v50[v53[24]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v49, &v50[v53[28]], &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v67, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v65, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v68, &qword_28027E0E0, &qword_2684B89C0);
  sub_268467A4C(v64, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v57, &qword_28027E0E8, &qword_2684B89C8);
  v55 = *(v63 + 8);
  v55(v58, v52);
  sub_268467A4C(v49, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v47, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v71, &qword_28027E0E0, &qword_2684B89C0);
  sub_268467A4C(v70, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v54, &qword_28027E0E8, &qword_2684B89C8);
  return (v55)(v62, v52);
}

uint64_t sub_26848A27C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_2684B41E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v32 = v1;
  sub_2684B3D14();
  sub_2684B4154();
  (*(v10 + 8))(v12, v9);
  v16 = sub_2684B3C14();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_268467A4C(v15, &qword_28027D4F0, &qword_2684B8A20);
LABEL_6:
    v27 = 1;
    v26 = v33;
    return (*(v6 + 56))(v26, v27, 1, v5);
  }

  v18 = sub_2684B3BF4();
  v20 = v19;
  (*(v17 + 8))(v15, v16);
  if (!sub_26846D588(v18, v20))
  {

    goto LABEL_6;
  }

  sub_2684B39A4();
  v34[3] = sub_2684B5144();
  v34[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_2684B5154();
  v21 = v31;
  sub_26848D2CC(v32, v31);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = swift_allocObject();
  sub_26848D330(v21, v23 + v22);
  v24 = (v23 + ((v3 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v18;
  v24[1] = v20;
  sub_2684B51D4();
  sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
  sub_2684B5314();
  v25 = v33;
  (*(v6 + 32))(v33, v8, v5);
  v26 = v25;
  v27 = 0;
  return (*(v6 + 56))(v26, v27, 1, v5);
}

uint64_t sub_26848A70C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = v3;
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  MEMORY[0x28223BE20](v4 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - v6;
  v7 = sub_2684B3784();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  sub_2684B3D14();
  v15 = sub_2684B4164();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v43[0] = v15;
  v43[1] = v17;
  v18 = sub_2684B3764();
  sub_26846D6EC(v18, v19, v20);
  v21 = sub_2684B57B4();
  v23 = v22;
  (*(v8 + 8))(v10, v7);

  if (sub_26846D588(v21, v23))
  {
    sub_2684B39A4();
    v43[3] = sub_2684B5144();
    v43[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v43);
    sub_2684B5154();
    v24 = v39;
    sub_26848D2CC(v40, v39);
    v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v26 = (v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_26848D330(v24, v27 + v25);
    v28 = (v27 + v26);
    *v28 = v21;
    v28[1] = v23;
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    v29 = v38;
    sub_2684B5314();
    v31 = v41;
    v30 = v42;
    (*(v5 + 32))(v42, v29, v41);
    v32 = 0;
    v33 = v30;
    v34 = v31;
  }

  else
  {

    v32 = 1;
    v34 = v41;
    v33 = v42;
  }

  return (*(v5 + 56))(v33, v32, 1, v34);
}

uint64_t sub_26848AB88@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v3;
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E110, &unk_2684B89F0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B40B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v39 = v1;
  sub_2684B3D14();
  sub_2684B40D4();
  (*(v12 + 8))(v14, v11);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_268467A4C(v10, &qword_28027DBD0, &qword_2684B7F20);
    v22 = 1;
    v24 = v44;
    v23 = v45;
    v25 = v43;
  }

  else
  {
    v36 = *(v16 + 32);
    v36(v21, v10, v15);
    sub_2684B39A4();
    v46[3] = sub_2684B5144();
    v46[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v46);
    sub_2684B5154();
    (*(v16 + 16))(v19, v21, v15);
    v26 = v42;
    sub_26848D2CC(v39, v42);
    v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v28 = (v17 + *(v38 + 80) + v27) & ~*(v38 + 80);
    v29 = swift_allocObject();
    v36((v29 + v27), v19, v15);
    sub_26848D330(v26, v29 + v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E118, &qword_2684B8A00);
    sub_26848D7D4();
    v30 = v41;
    sub_2684B5314();
    (*(v16 + 8))(v21, v15);
    v32 = v43;
    v31 = v44;
    v33 = v45;
    (*(v43 + 32))(v45, v30, v44);
    v22 = 0;
    v23 = v33;
    v24 = v31;
    v25 = v32;
  }

  return (*(v25 + 56))(v23, v22, 1, v24);
}

uint64_t sub_26848B0A4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v3;
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B4084();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v39 = v1;
  sub_2684B3D14();
  sub_2684B40C4();
  (*(v12 + 8))(v14, v11);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_268467A4C(v10, &qword_28027DBC0, &qword_2684B7F10);
    v22 = 1;
    v24 = v44;
    v23 = v45;
    v25 = v43;
  }

  else
  {
    v36 = *(v16 + 32);
    v36(v21, v10, v15);
    sub_2684B39A4();
    v46[3] = sub_2684B5144();
    v46[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v46);
    sub_2684B5154();
    v26 = v41;
    sub_26848D2CC(v39, v41);
    (*(v16 + 16))(v19, v21, v15);
    v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v28 = (v40 + *(v16 + 80) + v27) & ~*(v16 + 80);
    v29 = swift_allocObject();
    sub_26848D330(v26, v29 + v27);
    v36((v29 + v28), v19, v15);
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    v30 = v42;
    sub_2684B5314();
    (*(v16 + 8))(v21, v15);
    v32 = v43;
    v31 = v44;
    v33 = v45;
    (*(v43 + 32))(v45, v30, v44);
    v22 = 0;
    v23 = v33;
    v24 = v31;
    v25 = v32;
  }

  return (*(v25 + 56))(v23, v22, 1, v24);
}

uint64_t sub_26848B5E4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v3;
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE8, &qword_2684B8760);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B40F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  v39 = v1;
  sub_2684B3D14();
  sub_2684B4104();
  (*(v12 + 8))(v14, v11);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_268467A4C(v10, &qword_28027DEE8, &qword_2684B8760);
    v22 = 1;
    v24 = v44;
    v23 = v45;
    v25 = v43;
  }

  else
  {
    v36 = *(v16 + 32);
    v36(v21, v10, v15);
    sub_2684B39A4();
    v46[3] = sub_2684B5144();
    v46[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v46);
    sub_2684B5154();
    v26 = v41;
    sub_26848D2CC(v39, v41);
    (*(v16 + 16))(v19, v21, v15);
    v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v28 = (v40 + *(v16 + 80) + v27) & ~*(v16 + 80);
    v29 = swift_allocObject();
    sub_26848D330(v26, v29 + v27);
    v36((v29 + v28), v19, v15);
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    v30 = v42;
    sub_2684B5314();
    (*(v16 + 8))(v21, v15);
    v32 = v43;
    v31 = v44;
    v33 = v45;
    (*(v43 + 32))(v45, v30, v44);
    v22 = 0;
    v23 = v33;
    v24 = v31;
    v25 = v32;
  }

  return (*(v25 + 56))(v23, v22, 1, v24);
}

uint64_t sub_26848BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReminderComposeSnippet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v12[2] = a3;
  v13 = 0;
  v8 = sub_2684B4BC4();
  v14 = MEMORY[0x277CE11C8];
  v15 = MEMORY[0x277D63A60];
  v12[1] = v8;
  sub_26848D2CC(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_26848D330(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + v9 + v7) = 1;
  return sub_2684B51C4();
}

uint64_t sub_26848BC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReminderComposeSnippet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v23 = a2;
  v24 = a3;
  sub_26846D6EC(v9, v10, v11);

  v12 = sub_2684B4BA4();
  v14 = v13;
  v23 = v12;
  v24 = v13;
  v16 = v15 & 1;
  v25 = v15 & 1;
  v26 = v17;
  v18 = sub_2684B4BC4();
  sub_26846D468(v12, v14, v16);

  v26 = MEMORY[0x277CE11C8];
  v27 = MEMORY[0x277D63A60];
  v23 = v18;
  sub_26848D2CC(a1, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_26848D330(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + v19 + v8) = 0;
  return sub_2684B51C4();
}

uint64_t sub_26848BE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v79 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E130, &qword_2684B8A08);
  MEMORY[0x28223BE20](v4);
  v6 = v70 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E138, &qword_2684B8A10);
  MEMORY[0x28223BE20](v82);
  v84 = v70 - v7;
  v8 = type metadata accessor for ReminderComposeSnippet(0);
  v78 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v9;
  v85 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TemporalTriggerFormatStyle(0);
  MEMORY[0x28223BE20](v10);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2684B40B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2684B51D4();
  v81 = *(v83 - 8);
  v17 = MEMORY[0x28223BE20](v83);
  v76 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = v70 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v77 = v70 - v22;
  MEMORY[0x28223BE20](v21);
  v87 = v70 - v23;
  v24 = (v14 + 16);
  if (sub_2684B40A4())
  {
    (*v24)(v16, a1, v13);
    sub_2684B38E4();
    sub_2684B3944();
    v12[*(v10 + 24)] = 2;
    sub_26848DD08(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle, &unk_2684B8E98);
    sub_26848DD08(&qword_28027D358, MEMORY[0x277D5E170], MEMORY[0x277D5E178]);
    v25 = sub_2684B4B84();
    v27 = v26;
    v88 = v25;
    v89 = v26;
    v29 = v28 & 1;
    v90 = v28 & 1;
    v91 = v30;
    v31 = sub_2684B4BC4();
    sub_26846D468(v25, v27, v29);

    v91 = MEMORY[0x277CE11C8];
    v92 = MEMORY[0x277D63A60];
    v88 = v31;
    v32 = v85;
    sub_26848D2CC(v86, v85);
    v33 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v34 = v33 + v80;
    v35 = swift_allocObject();
    sub_26848D330(v32, v35 + v33);
    *(v35 + v34) = 2;
    v36 = v87;
    sub_2684B51C4();
    v37 = v81;
    v38 = v83;
    (*(v81 + 16))(v84, v36, v83);
    swift_storeEnumTagMultiPayload();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08, MEMORY[0x277CE14C0]);
    sub_2684B49B4();
    return (*(v37 + 8))(v36, v38);
  }

  else
  {
    v72 = *v24;
    v71 = a1;
    v72(v16, a1, v13);
    sub_2684B38E4();
    sub_2684B3944();
    v12[*(v10 + 24)] = 1;
    v70[2] = sub_26848DD08(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle, &unk_2684B8E98);
    v70[1] = sub_26848DD08(&qword_28027D358, MEMORY[0x277D5E170], MEMORY[0x277D5E178]);
    v40 = sub_2684B4B84();
    v73 = v6;
    v74 = v4;
    v42 = v41;
    v88 = v40;
    v89 = v41;
    v44 = v43 & 1;
    v90 = v43 & 1;
    v91 = v45;
    v46 = sub_2684B4BC4();
    sub_26846D468(v40, v42, v44);

    v91 = MEMORY[0x277CE11C8];
    v92 = MEMORY[0x277D63A60];
    v88 = v46;
    v47 = v85;
    sub_26848D2CC(v86, v85);
    v48 = *(v78 + 80);
    v49 = ((v48 + 16) & ~v48) + v80;
    v78 = (v48 + 16) & ~v48;
    v50 = swift_allocObject();
    sub_26848D330(v47, v50 + ((v48 + 16) & ~v48));
    *(v50 + v49) = 2;
    sub_2684B51C4();
    v72(v16, v71, v13);
    sub_2684B38E4();
    sub_2684B3944();
    v12[*(v10 + 24)] = 0;
    v51 = sub_2684B4B84();
    v53 = v52;
    v88 = v51;
    v89 = v52;
    v55 = v54 & 1;
    v90 = v54 & 1;
    v91 = v56;
    v57 = sub_2684B4BC4();
    sub_26846D468(v51, v53, v55);

    v92 = MEMORY[0x277D63A60];
    v91 = MEMORY[0x277CE11C8];
    v88 = v57;
    v58 = v85;
    sub_26848D2CC(v86, v85);
    v59 = swift_allocObject();
    sub_26848D330(v58, v59 + v78);
    *(v59 + v49) = 2;
    v60 = v77;
    sub_2684B51C4();
    v61 = v81;
    v62 = *(v81 + 16);
    v63 = v75;
    v64 = v87;
    v65 = v83;
    v62(v75, v87, v83);
    v66 = v76;
    v62(v76, v60, v65);
    v67 = v73;
    v62(v73, v63, v65);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E140, &qword_2684B8A18);
    v62((v67 + *(v68 + 48)), v66, v65);
    v69 = *(v61 + 8);
    v69(v66, v65);
    v69(v63, v65);
    sub_26846A6DC(v67, v84, &qword_28027E130, &qword_2684B8A08);
    swift_storeEnumTagMultiPayload();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08, MEMORY[0x277CE14C0]);
    sub_2684B49B4();
    sub_268467A4C(v67, &qword_28027E130, &qword_2684B8A08);
    v69(v60, v65);
    return (v69)(v64, v65);
  }
}

uint64_t sub_26848C890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for LocationTriggerTextView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B4084();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v17 = sub_2684B4E54();
  v11 = sub_2684B44B4();
  v9[*(v7 + 20)] = 0;
  *&v9[*(v7 + 24)] = v11;
  sub_26848DD08(&qword_28027E108, type metadata accessor for LocationTriggerTextView, &unk_2684B6CB8);
  v12 = sub_2684B4BC4();
  sub_26848D638(v9);
  v18 = MEMORY[0x277CE11C8];
  v19 = MEMORY[0x277D63A60];
  v17 = v12;
  sub_26848D2CC(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_26848D330(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + v13 + v6) = 3;
  return sub_2684B51C4();
}

uint64_t sub_26848CAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  *v9 = sub_2684B4834();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
  sub_26848CCF0(a2, &v9[*(v10 + 44)]);
  sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418, MEMORY[0x277CE1138]);
  v11 = sub_2684B4BC4();
  sub_268467A4C(v9, &qword_28027D710, &qword_2684B7418);
  v15[4] = MEMORY[0x277CE11C8];
  v15[5] = MEMORY[0x277D63A60];
  v15[1] = v11;
  sub_26848D2CC(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26848D330(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + v12 + v6) = 4;
  return sub_2684B51C4();
}

uint64_t sub_26848CCF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v38 = sub_2684B3F94();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2684B3D44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = &v33 - v11;
  (*(v4 + 104))(v6, *MEMORY[0x277D5E0F8], v3);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v12 = qword_280282928;
  v13 = sub_2684B4B94();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  v40 = v13;
  v41 = v15;
  v17 &= 1u;
  v42 = v17;
  v43 = v19;
  v20 = v33;
  sub_2684B4D44();
  sub_26846D468(v13, v15, v17);

  v40 = 32;
  v41 = 0xE100000000000000;
  v21 = v34;
  sub_2684B40E4();
  v22 = sub_2684B3F84();
  v24 = v23;
  (*(v35 + 8))(v21, v38);
  MEMORY[0x26D619980](v22, v24);

  v25 = v40;
  v26 = v41;
  v27 = *(v8 + 16);
  v28 = v37;
  v27(v37, v20, v7);
  v29 = v39;
  v27(v39, v28, v7);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v30 = v25;
  *(v30 + 1) = v26;
  v30[16] = 0;
  *(v30 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v25, v26, 0);
  v31 = *(v8 + 8);

  v31(v20, v7);
  sub_26846D468(v25, v26, 0);

  return (v31)(v28, v7);
}

uint64_t sub_26848D134(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = sub_2684B51F4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2684895CC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26848D2CC(v1, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_26848D330(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0D0, &qword_2684B89B8);
  sub_26846ACF0(&qword_28027E0D8, &qword_28027E0D0, &qword_2684B89B8, MEMORY[0x277CE14C0]);
  return sub_2684B5194();
}

uint64_t sub_26848D2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26848D330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26848D394@<X0>(char *a1@<X8>)
{
  type metadata accessor for ReminderComposeSnippet(0);

  return sub_268489C28(a1);
}

uint64_t objectdestroy_6Tm_0(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for ReminderComposeSnippet(0) - 8);
  v4 = (*(*v3 + 80) + 16) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = sub_2684B3D24();
  (*(*(v9 - 8) + 8))(v1 + v4, v9);
  v10 = v3[7];
  v11 = sub_2684B52B4();
  (*(*(v11 - 8) + 8))(v1 + v4 + v10, v11);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_26848D638(uint64_t a1)
{
  v2 = type metadata accessor for LocationTriggerTextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26848D6D4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

unint64_t sub_26848D7D4()
{
  result = qword_28027E120;
  if (!qword_28027E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E118, &qword_2684B8A00);
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E120);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for ReminderComposeSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3D24();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_26848DA1C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ReminderComposeSnippet(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t objectdestroy_9Tm()
{
  v1 = (type metadata accessor for ReminderComposeSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3D24();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

unint64_t sub_26848DBEC()
{
  result = qword_28027E160;
  if (!qword_28027E160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E150, qword_2684B8A30);
    sub_2684B5144();
    sub_26848DD08(&qword_28027E158, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    sub_26848DD08(&qword_28027E168, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E160);
  }

  return result;
}

uint64_t sub_26848DD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for ReminderComposeSnippet(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2684B3D24();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_2684B52B4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_26848DE6C()
{
  v0 = sub_2684B4354();
  __swift_allocate_value_buffer(v0, qword_280282910);
  __swift_project_value_buffer(v0, qword_280282910);
  return sub_2684B4344();
}

void *sub_26848DEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268481C60(a1, a2, a3);

  return sub_2684B4804();
}

uint64_t sub_26848DF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = sub_2684B41E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v28 = *(v7 + 16);
  v29 = v7 + 16;
  v28(a3, a2, v6);
  v31 = v4;
  sub_2684B3FE4();
  v12 = sub_2684B41A4();
  v13 = *(v12 + 16);
  if (v13)
  {
    v25[2] = a3;
    v32 = MEMORY[0x277D84F90];
    sub_268490730(0, v13, 0);
    v14 = v32;
    v15 = *(v7 + 80);
    v25[1] = v12;
    v27 = (v15 + 32) & ~v15;
    v16 = v12 + v27;
    v26 = *(v7 + 72);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    do
    {
      v19 = v30;
      v20 = v28;
      v28(v30, v16, v6);
      v20(v11, v19, v6);
      sub_2684B3FE4();
      (*v17)(v19, v6);
      v32 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_268490730((v21 > 1), v22 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v26;
      (*v18)(v14 + v27 + v22 * v26, v11, v6);
      v16 += v23;
      --v13;
    }

    while (v13);
  }

  return sub_2684B41B4();
}

void sub_26848E1C8(uint64_t a1)
{
  v43 = sub_2684B3894();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2684B5814();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v51 = MEMORY[0x277D84F90];
    sub_268490750(0, v5 & ~(v5 >> 63), 0);
    v46 = v51;
    if (v44)
    {
      v6 = sub_2684B57D4();
    }

    else
    {
      v6 = sub_2684B57C4();
      v7 = *(a1 + 36);
    }

    v48 = v6;
    v49 = v7;
    v50 = v44 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v40 = v5;
      v41 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v38 = a1 + 56;
      v39 = v9;
      v36 = v1;
      v37 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v48;
        v13 = v50;
        v45 = v49;
        v14 = a1;
        sub_2684917D8(v48, v49, v50, a1);
        v16 = v15;
        v17 = [v15 uuid];
        v18 = v42;
        sub_2684B3884();

        v19 = sub_2684B3864();
        v21 = v20;
        (*v41)(v18, v43);

        v22 = v46;
        v51 = v46;
        v24 = *(v46 + 16);
        v23 = *(v46 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_268490750((v23 > 1), v24 + 1, 1);
          v22 = v51;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v46 = v22;
        if (v44)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (sub_2684B57E4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B8, &unk_2684B8B60);
          v10 = sub_2684B56E4();
          sub_2684B5834();
          v10(v47, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_268491E8C(v48, v49, v50);
            return;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v26 = 1 << *(v14 + 32);
          if (v12 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v12 >> 6;
          v28 = *(v38 + 8 * (v12 >> 6));
          if (((v28 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v45)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v12 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v5 = v40;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            v5 = v40;
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_268491E8C(v12, v45, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            sub_268491E8C(v12, v45, 0);
          }

LABEL_33:
          v35 = *(v14 + 36);
          v48 = v26;
          v49 = v35;
          v50 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_26848E5E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_26848E650()
{
  qword_28027E198 = &type metadata for NoopReminderEditor;
  unk_28027E1A0 = &off_287914BD8;
  byte_28027E180 = 0;
}

uint64_t sub_26848E674@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_28027CF28 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_268481BFC(&byte_28027E180, v2);
}

uint64_t sub_26848E6E8(void **a1, uint64_t a2, void *a3)
{
  v126[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v106 - v6;
  v8 = sub_2684B3894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v114 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B41E4();
  v122 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (v106 - v15);
  v17 = sub_2684919FC(a1);
  if (!v17)
  {
    return 0;
  }

  v107 = v17;
  v106[1] = 0;
  v18 = sub_2684B41A4();
  v19 = a3;
  v20 = v18;
  v21 = MEMORY[0x277D84F90];
  v124 = MEMORY[0x277D84F90];
  v22 = *(v18 + 16);
  v108 = v19;
  if (!v22)
  {
    v119 = v21;
    goto LABEL_23;
  }

  v121 = v14;
  v24 = 0;
  v123 = v122 + 2;
  v115 = (v9 + 48);
  v110 = (v9 + 32);
  v109 = (v9 + 8);
  v120 = (v122 + 1);
  v119 = MEMORY[0x277D84F90];
  v106[0] = v22 - 1;
  *&v23 = 136315138;
  v111 = v23;
  v113 = v7;
  v112 = v8;
  v118 = v20;
  v117 = v16;
  v116 = v22;
  do
  {
    v25 = v24;
    v26 = v121;
    while (1)
    {
      if (v25 >= *(v20 + 16))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v28 = v122[2];
      v28(v16, v20 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v122[9] * v25, v11);
      sub_2684B3FC4();
      if (!v29)
      {
        goto LABEL_12;
      }

      sub_2684B3854();

      if ((*v115)(v7, 1, v8) == 1)
      {
        sub_26847F7B4(v7);
LABEL_12:
        if (qword_28027CF20 != -1)
        {
          swift_once();
        }

        v30 = sub_2684B4354();
        __swift_project_value_buffer(v30, qword_280282910);
        v28(v26, v16, v11);
        v31 = sub_2684B4334();
        v32 = v11;
        v33 = sub_2684B56F4();
        v34 = os_log_type_enabled(v31, v33);
        v35 = v120;
        if (v34)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v126[0] = v37;
          *v36 = v111;
          v125[0] = sub_2684B3FC4();
          v125[1] = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D0, &qword_2684B7100);
          v39 = sub_2684B5564();
          v41 = v40;
          v27 = *v35;
          v27(v121, v32);
          v42 = sub_268479394(v39, v41, v126);
          v26 = v121;

          *(v36 + 4) = v42;
          _os_log_impl(&dword_26845C000, v31, v33, "Failed to load REMReminder for id: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v43 = v37;
          v7 = v113;
          MEMORY[0x26D61A450](v43, -1, -1);
          v44 = v36;
          v8 = v112;
          MEMORY[0x26D61A450](v44, -1, -1);
        }

        else
        {

          v27 = *v35;
          v27(v26, v32);
        }

        v11 = v32;
        a1 = v117;
        v27(v117, v32);
        v16 = a1;
        v20 = v118;
        v22 = v116;
        goto LABEL_7;
      }

      v45 = v114;
      (*v110)(v114, v7, v8);
      v46 = objc_opt_self();
      a1 = sub_2684B3874();
      v47 = [v46 objectIDWithUUID_];

      v48 = v45;
      v26 = v121;
      (*v109)(v48, v8);
      v49 = (*v120)(v16, v11);
      if (v47)
      {
        break;
      }

LABEL_7:
      if (v22 == ++v25)
      {
        goto LABEL_23;
      }
    }

    a1 = &v124;
    MEMORY[0x26D6199F0](v49);
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2684B5644();
    }

    v24 = v25 + 1;
    sub_2684B5654();
    v119 = v124;
  }

  while (v106[0] != v25);
LABEL_23:
  v51 = v108;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2684B8A60;
  v53 = v107;
  *(inited + 32) = v107;
  v8 = v119;
  v125[0] = v119;

  v54 = v53;
  sub_268490A54(inited);
  sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
  v55 = sub_2684B5634();

  v125[0] = 0;
  v56 = [v51 fetchRemindersWithObjectIDs:v55 error:v125];

  v57 = v125[0];
  if (v56)
  {
    v58 = sub_268491E98(0, &qword_28027E1C8, 0x277D44750);
    sub_268491EE0();
    v123 = v58;
    v7 = sub_2684B5514();
    v59 = v57;

    v60 = sub_268490414(v54, v7);
    if (v60)
    {
      v125[0] = MEMORY[0x277D84F90];
      v120 = v54;
      v118 = v60;
      a1 = (v8 & 0xFFFFFFFFFFFFFF8);
      if (!(v8 >> 62))
      {
        v61 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }

LABEL_63:
      v61 = sub_2684B5814();
LABEL_27:
      v62 = 0;
      v63 = v8 & 0xC000000000000001;
      v8 = v7 & 0xC000000000000001;
      v121 = MEMORY[0x277D84F90];
      v122 = a1;
      if (!v61)
      {
LABEL_28:

        return v118;
      }

      while (2)
      {
        if (v63)
        {
          v65 = MEMORY[0x26D619C80](v62, v119);
        }

        else
        {
          if (v62 >= a1[2])
          {
            goto LABEL_62;
          }

          v65 = *(v119 + v62 + 4);
        }

        v66 = v65;
        v67 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_61;
        }

        if (v8)
        {
          v68 = sub_2684B5904();
          if (v68)
          {
            v126[0] = v68;
            swift_dynamicCast();
            v64 = v124;

            goto LABEL_30;
          }
        }

        else if (*(v7 + 16))
        {
          v69 = sub_268490B44(v65);
          if (v70)
          {
            v64 = *(*(v7 + 56) + 8 * v69);
            v71 = v64;
          }

          else
          {

            v64 = 0;
          }

          a1 = v122;
LABEL_30:
          ++v62;
          if (v64)
          {
            MEMORY[0x26D6199F0]();
            if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2684B5644();
            }

            sub_2684B5654();
            v121 = v125[0];
            v62 = v67;
            a1 = v122;
            if (v61 == v67)
            {
              goto LABEL_28;
            }
          }

          else if (v61 == v62)
          {
            goto LABEL_28;
          }

          continue;
        }

        break;
      }

      v64 = 0;
      goto LABEL_30;
    }

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v94 = sub_2684B4354();
    __swift_project_value_buffer(v94, qword_280282910);
    v95 = v54;
    v96 = sub_2684B4334();
    v97 = sub_2684B56F4();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v125[0] = v99;
      *v98 = 136315138;
      v100 = v95;
      v101 = [v100 description];
      v102 = sub_2684B5554();
      v104 = v103;

      v105 = sub_268479394(v102, v104, v125);

      *(v98 + 4) = v105;
      _os_log_impl(&dword_26845C000, v96, v97, "Failed to load REMReminder %s-- not in results.", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x26D61A450](v99, -1, -1);
      MEMORY[0x26D61A450](v98, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v72 = v125[0];

    v73 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v74 = sub_2684B4354();
    __swift_project_value_buffer(v74, qword_280282910);
    v75 = v54;
    v76 = v73;
    v77 = sub_2684B4334();
    v78 = sub_2684B56F4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v125[0] = v80;
      *v79 = 136315650;
      v81 = v75;
      v82 = [v81 description];
      v83 = sub_2684B5554();
      v85 = v84;

      v86 = sub_268479394(v83, v85, v125);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2080;
      v124 = v73;
      v87 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v88 = sub_2684B5564();
      v90 = sub_268479394(v88, v89, v125);

      *(v79 + 14) = v90;
      *(v79 + 22) = 2080;
      swift_getErrorValue();
      v91 = sub_2684B5A14();
      v93 = sub_268479394(v91, v92, v125);

      *(v79 + 24) = v93;
      _os_log_impl(&dword_26845C000, v77, v78, "Failed to load REMReminder %s with error: %s - %s", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v80, -1, -1);
      MEMORY[0x26D61A450](v79, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

void *sub_26848F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = sub_2684B41E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = v37 - v10;
  sub_2684B4234();
  swift_allocObject();
  v11 = sub_2684B4214();
  sub_2684B4254();
  v12 = sub_2684B4224();
  sub_26848E1C8(v12);
  v14 = v13;

  v15 = sub_268491DF4(v14);

  v39 = v4;
  sub_2684B3FE4();
  v16 = sub_2684B41A4();
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_21:

    sub_2684B41B4();
  }

  v37[0] = v11;
  v37[1] = a1;
  v50 = MEMORY[0x277D84F90];
  result = sub_268490730(0, v17, 0);
  v19 = 0;
  v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v40 = v16 + v41;
  v20 = v50;
  v46 = v7 + 16;
  v49 = v15 + 56;
  v38 = (v7 + 8);
  v21 = (v7 + 32);
  v44 = v6;
  v45 = v7;
  v42 = v17;
  v43 = v16;
  while (v19 < *(v16 + 16))
  {
    v22 = *(v7 + 72);
    v23 = *(v7 + 16);
    v23(v48, v40 + v22 * v19, v6);
    v24 = sub_2684B3FC4();
    if (v25)
    {
      v26 = v25;
      if (*(v15 + 16))
      {
        v27 = v24;
        sub_2684B5A64();
        sub_2684B5584();
        v28 = sub_2684B5A94();
        v29 = -1 << *(v15 + 32);
        v30 = v28 & ~v29;
        if ((*(v49 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (1)
          {
            v32 = (*(v15 + 48) + 16 * v30);
            v33 = *v32 == v27 && v26 == v32[1];
            if (v33 || (sub_2684B59F4() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v49 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v36 = v48;
          v6 = v44;
          v23(v47, v48, v44);
          sub_2684B3FE4();
          (*v38)(v36, v6);
          goto LABEL_16;
        }
      }

LABEL_14:
    }

    v6 = v44;
    (*v21)(v47, v48, v44);
LABEL_16:
    v50 = v20;
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    v7 = v45;
    if (v35 >= v34 >> 1)
    {
      sub_268490730((v34 > 1), v35 + 1, 1);
      v20 = v50;
    }

    ++v19;
    *(v20 + 16) = v35 + 1;
    result = (*v21)(v20 + v41 + v35 * v22, v47, v6);
    v16 = v43;
    if (v19 == v42)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26848F84C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v48 = a5;
  v49 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v9 = sub_2684B41E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_2684B4264();
  v50 = a2;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v14 = a2;
  v15 = v13;
  sub_2684B4204();
  v16 = *(v10 + 16);
  v46 = v10 + 16;
  v47 = a1;
  v45 = v16;
  v16(v12, a1, v9);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_2684B5544();
  v19 = [v17 initWithString_];

  sub_2684B4244();

  sub_2684B4174();
  *&v52[0] = 0;
  if ([v15 saveSynchronouslyWithError_])
  {
    v20 = *&v52[0];

    (*(v10 + 32))(v49, v12, v9);
  }

  else
  {
    v44 = v9;
    v21 = *&v52[0];
    v22 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v23 = sub_2684B4354();
    __swift_project_value_buffer(v23, qword_280282910);
    v24 = v22;
    v25 = sub_2684B4334();
    v26 = sub_2684B56F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = v12;
      v42 = v15;
      v28 = v27;
      v29 = swift_slowAlloc();
      v51 = v22;
      *&v52[0] = v29;
      *v28 = 136315394;
      v30 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v31 = sub_2684B5564();
      v33 = sub_268479394(v31, v32, v52);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v34 = sub_2684B5A14();
      v36 = sub_268479394(v34, v35, v52);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_26845C000, v25, v26, "Failed to edit reminder with error: %s - [%s]", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v29, -1, -1);
      MEMORY[0x26D61A450](v28, -1, -1);

      v37 = *(v10 + 8);
      v38 = v43;
    }

    else
    {

      v37 = *(v10 + 8);
      v38 = v12;
    }

    v39 = v44;
    v37(v38, v44);
    v45(v49, v47, v39);
  }
}

uint64_t sub_26848FCEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, void *)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v45 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v9 = sub_2684B41E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_2684B4264();
  v46 = a2;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v14 = a2;
  v15 = v13;
  sub_2684B4204();
  v16 = v47;
  v43 = *(v10 + 16);
  v44 = a1;
  v17 = a1;
  v18 = v9;
  v43(v12, v17, v9);
  a3(v12, v16);
  *&v48[0] = 0;
  if ([v15 saveSynchronouslyWithError_])
  {
    v19 = *&v48[0];

    return (*(v10 + 32))(v45, v12, v9);
  }

  else
  {
    v41 = v16;
    v42 = v15;
    v21 = *&v48[0];
    v22 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v23 = sub_2684B4354();
    __swift_project_value_buffer(v23, qword_280282910);
    v24 = v22;
    v25 = sub_2684B4334();
    v26 = sub_2684B56F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      HIDWORD(v39) = v26;
      v28 = v27;
      v29 = swift_slowAlloc();
      v47 = v22;
      *&v48[0] = v29;
      *v28 = 136315394;
      v30 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v31 = sub_2684B5564();
      v33 = sub_268479394(v31, v32, v48);
      v40 = v18;
      v34 = v33;

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v35 = sub_2684B5A14();
      v37 = sub_268479394(v35, v36, v48);

      *(v28 + 14) = v37;
      v38 = v40;
      _os_log_impl(&dword_26845C000, v25, BYTE4(v39), "Failed to edit reminder with error: %s - [%s]", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v29, -1, -1);
      MEMORY[0x26D61A450](v28, -1, -1);

      v18 = v38;
      (*(v10 + 8))(v12, v38);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    return (v43)(v45, v44, v18);
  }
}

id sub_268490120(uint64_t a1, uint64_t a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2684919FC(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v31[0] = 0;
  v6 = [a3 fetchReminderWithObjectID:v4 error:v31];
  v7 = v31[0];
  if (!v6)
  {
    v8 = v7;
    v9 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v10 = sub_2684B4354();
    __swift_project_value_buffer(v10, qword_280282910);
    v11 = v9;
    v12 = v5;
    v13 = sub_2684B4334();
    v14 = sub_2684B56F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136315650;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_2684B5554();
      v21 = v20;

      v22 = sub_268479394(v19, v21, v31);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v23 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v24 = sub_2684B5564();
      v26 = sub_268479394(v24, v25, v31);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_2684B5A14();
      v29 = sub_268479394(v27, v28, v31);

      *(v15 + 24) = v29;
      _os_log_impl(&dword_26845C000, v13, v14, "Failed to load REMReminder %s with error: %s - %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v16, -1, -1);
      MEMORY[0x26D61A450](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

void *sub_268490414(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2684B5904();

    if (v4)
    {
      sub_268491E98(0, &qword_28027E1C8, 0x277D44750);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_268490B44(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2684904D8@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 1);
  v6 = sub_26848E6E8(a1, *v2, v5);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x28223BE20](v6);
    sub_26848FCEC(a1, v7, sub_268491DE8, v5, a2);
  }

  else
  {
    v9 = sub_2684B41E4();
    v10 = *(*(v9 - 8) + 16);

    return v10(a2, a1, v9);
  }
}

void sub_26849060C(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *(v4 + 1);

  v10 = sub_268490120(a3, v8, v9);
  if (v10)
  {
    v13 = v10;

    sub_26848F84C(a3, v13, v9, a2, a4);
  }

  else
  {

    v11 = sub_2684B41E4();
    v12 = *(*(v11 - 8) + 16);

    v12(a4, a3, v11);
  }
}

void *sub_268490730(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268490770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268490750(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268490948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268490770(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1A8, &qword_2684B8B50);
  v10 = *(sub_2684B41E4() - 8);
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
  v15 = *(sub_2684B41E4() - 8);
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

char *sub_268490948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D898, &qword_2684B79E8);
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

uint64_t sub_268490A54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2684B5814();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2684B5814();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_268490C5C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_268491648(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_268490B44(uint64_t a1)
{
  v2 = sub_2684B5764();

  return sub_268490B88(a1, v2);
}

unint64_t sub_268490B88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2684B5774();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_268490C5C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2684B5814();
LABEL_9:
  result = sub_2684B58C4();
  *v2 = result;
  return result;
}

uint64_t sub_268490CFC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2684B5A64();
  sub_2684B5584();
  v8 = sub_2684B5A94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2684B59F4() & 1) != 0)
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

    sub_2684910AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_268490E4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  result = sub_2684B5854();
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
      sub_2684B5A64();
      sub_2684B5584();
      result = sub_2684B5A94();
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

uint64_t sub_2684910AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_268490E4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26849122C();
      goto LABEL_16;
    }

    sub_268491388(v8 + 1);
  }

  v10 = *v4;
  sub_2684B5A64();
  sub_2684B5584();
  result = sub_2684B5A94();
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

      result = sub_2684B59F4();
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
  result = sub_2684B5A04();
  __break(1u);
  return result;
}

void *sub_26849122C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  v2 = *v0;
  v3 = sub_2684B5844();
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

uint64_t sub_268491388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  result = sub_2684B5854();
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
      sub_2684B5A64();

      sub_2684B5584();
      result = sub_2684B5A94();
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

void (*sub_2684915C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D619C80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_268491640;
  }

  __break(1u);
  return result;
}

uint64_t sub_268491648(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2684B5814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2684B5814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_268491F48();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1D8, &qword_2684B8B78);
            v9 = sub_2684915C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2684917D8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D619BF0](a1, a2, v7);
      sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
    if (sub_2684B57F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2684B5804();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2684B5764();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2684B5774();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_2684919FC(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_2684B3894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3FC4();
  if (v13)
  {
    sub_2684B3854();

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v25 = objc_opt_self();
      v26 = sub_2684B3874();
      v27 = [v25 objectIDWithUUID_];

      (*(v10 + 8))(v12, v9);
      return v27;
    }

    sub_26847F7B4(v8);
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v14 = sub_2684B4354();
  __swift_project_value_buffer(v14, qword_280282910);
  (*(v3 + 16))(v5, a1, v2);
  v15 = sub_2684B4334();
  v16 = sub_2684B56F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    v28[1] = sub_2684B3FC4();
    v28[2] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D0, &qword_2684B7100);
    v20 = sub_2684B5564();
    v22 = v21;
    (*(v3 + 8))(v5, v2);
    v23 = sub_268479394(v20, v22, &v29);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_26845C000, v15, v16, "Failed to load REMReminder for id: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26D61A450](v18, -1, -1);
    MEMORY[0x26D61A450](v17, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_268491DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D619AA0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_268490CFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_268491E8C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_268491E98(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_268491EE0()
{
  result = qword_28027E1D0;
  if (!qword_28027E1D0)
  {
    sub_268491E98(255, &qword_28027E1C0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E1D0);
  }

  return result;
}

unint64_t sub_268491F48()
{
  result = qword_28027E1E0;
  if (!qword_28027E1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E1D8, &qword_2684B8B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E1E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoopReminderEditor(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoopReminderEditor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for EditableReminderTitleView(uint64_t a1)
{
  result = qword_28027E1E8;
  if (!qword_28027E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26849218C(uint64_t a1)
{
  sub_268472A1C(319);
  if (v1 <= 0x3F)
  {
    sub_268492240();
    if (v2 <= 0x3F)
    {
      sub_268472A74(319);
      if (v3 <= 0x3F)
      {
        sub_268492290();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_268492240()
{
  if (!qword_28027E1F8)
  {
    v0 = sub_2684B4F64();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E1F8);
    }
  }
}

void sub_268492290()
{
  if (!qword_28027E200)
  {
    v0 = sub_2684B43B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E200);
    }
  }
}

unint64_t sub_268492304@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = sub_268493D14(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = (result - 8232) < 2 || result == 133;
    v5 = (result - 14) > 0xFFFFFFFB || v4;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_268492368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = sub_2684B48F4();
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  MEMORY[0x28223BE20](v3);
  v106 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B41E4();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2684B4434();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2684B4534();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditableReminderTitleView(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v113 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E208, &qword_2684B8C48);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E210, &qword_2684B8C50);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v20 = &v76 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E218, &qword_2684B8C58);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v79 = &v76 - v21;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E220, &qword_2684B8C60);
  MEMORY[0x28223BE20](v112);
  v84 = &v76 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E228, &qword_2684B8C68);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v76 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E230, &qword_2684B8C70);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E238, &qword_2684B8C78);
  v26 = *(v25 - 8);
  v101 = v25;
  v102 = v26;
  MEMORY[0x28223BE20](v25);
  v98 = &v76 - v27;
  v28 = (v1 + *(v12 + 28));
  v83 = *v28;
  v30 = v28[1];
  v29 = v28[2];
  v82 = v30;
  v81 = v29;
  v118 = v83;
  v119 = v30;
  v120 = v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  sub_2684B4F54();
  sub_2684B50E4();
  v31 = sub_2684B4E54();
  KeyPath = swift_getKeyPath();
  v33 = &v18[*(v16 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v78 = v15;
  sub_268494110(v2, v15);
  v111 = *(v13 + 80);
  v34 = (v111 + 16) & ~v111;
  v35 = swift_allocObject();
  sub_268494174(v15, v35 + v34);
  sub_2684B4524();
  v36 = sub_2684941F0();
  sub_2684B4E14();

  (*(v87 + 8))(v10, v89);
  sub_2684942D4(v18);
  v37 = v91;
  sub_2684B4424();
  v114 = v16;
  v115 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v79;
  v40 = v85;
  sub_2684B4CC4();
  (*(v93 + 8))(v37, v94);
  (*(v86 + 8))(v20, v40);
  v41 = *(v12 + 36);
  v110 = v2;
  v42 = (v2 + v41);
  LODWORD(v94) = *v42;
  v93 = *(v42 + 1);
  LODWORD(v91) = v42[16];
  LOBYTE(v114) = v94;
  v115 = v93;
  LOBYTE(v116) = v91;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4394();
  v114 = v40;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v84;
  v44 = v88;
  sub_2684B4DA4();

  (*(v90 + 8))(v39, v44);
  LOBYTE(v31) = sub_2684B43A4();
  v46 = v45;
  LOBYTE(v20) = v47;
  sub_2684B5504();
  sub_2684947B8(&qword_28027E268, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v48 = sub_2684B4614();
  v49 = v43 + *(v112 + 36);
  *v49 = v31 & 1;
  *(v49 + 8) = v46;
  *(v49 + 16) = v20 & 1;
  *(v49 + 24) = v48;
  *(v49 + 32) = v50;
  v114 = v83;
  v115 = v82;
  v116 = v81;
  sub_2684B4F34();
  v114 = v118;
  v115 = v119;
  v51 = v78;
  sub_268494110(v2, v78);
  v77 = v34;
  v52 = swift_allocObject();
  sub_268494174(v51, v52 + v34);
  v53 = sub_268494514();
  v54 = v92;
  sub_2684B4DF4();

  sub_2684613F8(v43);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v56 = v103;
  v57 = v110;
  MEMORY[0x26D619380](v55);
  v58 = sub_2684B4164();
  v60 = v59;
  (*(v104 + 8))(v56, v105);
  v118 = v58;
  v119 = v60;
  sub_268494110(v57, v51);
  v61 = v77;
  v62 = swift_allocObject();
  sub_268494174(v51, v62 + v61);
  v114 = v112;
  v115 = MEMORY[0x277D837D0];
  v116 = v53;
  v117 = MEMORY[0x277D837F8];
  v112 = MEMORY[0x277CE0E30];
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v95;
  v65 = v96;
  sub_2684B4E04();

  (*(v97 + 8))(v54, v65);
  LOBYTE(v114) = v94;
  v115 = v93;
  LOBYTE(v116) = v91;
  sub_2684B4374();
  sub_268494110(v110, v51);
  v66 = swift_allocObject();
  sub_268494174(v51, v66 + v61);
  v114 = v65;
  v115 = MEMORY[0x277D837D0];
  v116 = v63;
  v117 = MEMORY[0x277D837F8];
  v67 = swift_getOpaqueTypeConformance2();
  v68 = MEMORY[0x277D839B0];
  v69 = MEMORY[0x277D839C8];
  v70 = v98;
  v71 = v99;
  sub_2684B4DF4();

  (*(v100 + 8))(v64, v71);
  v72 = v106;
  sub_2684B48E4();
  v114 = v71;
  v115 = v68;
  v116 = v67;
  v117 = v69;
  swift_getOpaqueTypeConformance2();
  sub_2684947B8(&qword_28027E280, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v73 = v101;
  v74 = v107;
  sub_2684B4D14();
  (*(v108 + 8))(v72, v74);
  return (*(v102 + 8))(v70, v73);
}

uint64_t sub_268493174(uint64_t a1)
{
  type metadata accessor for EditableReminderTitleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  return sub_2684B4384();
}

uint64_t sub_2684931EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_2684932DC(*a1, a1[1], *a2, a2[1]);
  if (result)
  {
    type metadata accessor for EditableReminderTitleView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
    sub_2684B4F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
    return sub_2684B4384();
  }

  return result;
}

uint64_t sub_2684932DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_2684B5594();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (result + 1 != sub_2684B5594())
  {
    return 0;
  }

  KeyPath = swift_getKeyPath();
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v26 = KeyPath;

  if (v10)
  {
    v11 = 15;
    while (1)
    {
      v12 = sub_2684B5604();
      result = sub_268493D14(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_36;
      }

      v14 = result;

      if ((v14 - 14) <= 0xFFFFFFFB && (v14 - 8232) >= 2 && v14 != 133)
      {
        v11 = sub_2684B55A4();
        if (4 * v10 != v11 >> 14)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  v11 = 15;
LABEL_16:
  v15 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v16 = sub_268494808(v11, v15 | (v10 << 16), a1, a2, sub_268494800, v26);

  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v18 = swift_getKeyPath();
  if ((a4 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v19 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = 15;
    while (1)
    {
      v21 = sub_2684B5604();
      result = sub_268493D14(v21, v22);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_37;
      }

      v23 = result;

      if ((v23 - 14) <= 0xFFFFFFFB && (v23 - 8232) >= 2 && v23 != 133)
      {
        v20 = sub_2684B55A4();
        if (4 * v19 != v20 >> 14)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  v20 = 15;
LABEL_31:
  v24 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  v25 = sub_268494808(v20, v24 | (v19 << 16), a3, a4, sub_26849499C, v18);

  return v17 == v25;
}

uint64_t sub_26849358C(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v6);
  v7 = sub_2684B4164();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = (a1 + *(type metadata accessor for EditableReminderTitleView(0) + 20));
  v11 = *v10;
  v12 = *(v10 + 2);
  v15 = v11;
  v16 = v12;
  v14[1] = v7;
  v14[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  return sub_2684B4F44();
}

void sub_2684936CC()
{
  v1 = sub_2684B41E4();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - v4;
  v6 = sub_2684B3784();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for EditableReminderTitleView(0);
  v10 = (v0 + *(v50 + 20));
  v11 = *v10;
  v12 = *(v10 + 2);
  v57 = v11;
  v58 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  sub_2684B4F34();
  v57 = v61;
  v13 = sub_2684B3764();
  sub_26846D6EC(v13, v14, v15);
  v54 = sub_2684B57B4();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v9, v6);

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v53 = v0;
  MEMORY[0x26D619380]();
  v19 = sub_2684B4164();
  v21 = v20;
  v22 = *(v55 + 8);
  v51 = v5;
  v47 = v22;
  v48 = v55 + 8;
  v22(v5, v56);
  *&v57 = v19;
  *(&v57 + 1) = v21;
  sub_2684B3764();
  v23 = sub_2684B57B4();
  v25 = v24;
  v26 = v9;
  v27 = v54;
  v18(v26, v6);

  if (!sub_26846D588(v27, v17) || v27 == v23 && v17 == v25 || (sub_2684B59F4() & 1) != 0)
  {
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v28 = sub_2684B4354();
    __swift_project_value_buffer(v28, qword_280282910);

    v29 = sub_2684B4334();
    v30 = sub_2684B5714();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v57 = v32;
      *v31 = 136315394;
      v33 = sub_268479394(v27, v17, &v57);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      v34 = sub_268479394(v23, v25, &v57);

      *(v31 + 14) = v34;
      _os_log_impl(&dword_26845C000, v29, v30, "Skipping save because newTitle is empty or the same as the old title: {newTitle: '%s', oldTitle: '%s'", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v32, -1, -1);
      MEMORY[0x26D61A450](v31, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v35 = sub_2684B4354();
    __swift_project_value_buffer(v35, qword_280282910);

    v36 = sub_2684B4334();
    v37 = sub_2684B5714();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v57 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_268479394(v27, v17, &v57);
      _os_log_impl(&dword_26845C000, v36, v37, "Saving new reminder title: '%s'", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x26D61A450](v39, -1, -1);
      MEMORY[0x26D61A450](v38, -1, -1);
    }

    sub_268473B54(&v57);
    v40 = v59;
    v41 = v60;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    v42 = v52;
    MEMORY[0x26D619380](v49);
    v43 = v51;
    (*(v41 + 24))(v27, v17, v42, v40, v41);

    v44 = v56;
    v45 = v47;
    v47(v42, v56);
    (*(v55 + 16))(v42, v43, v44);
    sub_2684B4FC4();
    v45(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }
}

unint64_t sub_268493D14(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_268493E64(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2684B5894();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2684B58F4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_268493E64(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_268493EFC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_268493F70(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_268493EFC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_268494094(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_268493F70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2684B58F4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_268494094(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2684B55F4();
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
    v5 = MEMORY[0x26D6199A0](15, a1 >> 16);
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

uint64_t sub_268494110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditableReminderTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268494174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditableReminderTitleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684941F0()
{
  result = qword_28027E248;
  if (!qword_28027E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E208, &qword_2684B8C48);
    sub_26846ACF0(&qword_28027E250, &qword_28027E258, &qword_2684B8CB8, MEMORY[0x277CDF1A8]);
    sub_26846ACF0(&qword_28027D988, &qword_28027D990, &qword_2684B8CC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E248);
  }

  return result;
}

uint64_t sub_2684942D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E208, &qword_2684B8C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for EditableReminderTitleView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + *(v1 + 24);
  if (*(v5 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_268494494(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for EditableReminderTitleView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684931EC(a1, a2, v6);
}

unint64_t sub_268494514()
{
  result = qword_28027E270;
  if (!qword_28027E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E220, &qword_2684B8C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E218, &qword_2684B8C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E210, &qword_2684B8C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E208, &qword_2684B8C48);
    sub_2684941F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26849465C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E270);
  }

  return result;
}

unint64_t sub_26849465C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E278;
  if (!qword_28027E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E278);
  }

  return result;
}

uint64_t sub_2684946C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditableReminderTitleView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_26849473C(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for EditableReminderTitleView(0);
  if ((*a2 & 1) == 0)
  {
    if (*a1)
    {
      sub_2684936CC();
    }
  }
}

uint64_t sub_2684947B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268494808(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void *), uint64_t a6)
{
  result = sub_2684B55E4();
  if (a2 >> 14 < a1 >> 14)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  v18 = v14;
  v15 = v13 >> 14;
  if (v13 >> 14 == v14 >> 14)
  {
    return 0;
  }

  else
  {
    v17 = 0;
    while (1)
    {
      v16 = v17 + v12;
      if (__OFADD__(v17, v12))
      {
        break;
      }

      result = sub_2684948CC(&v18, a3, a4, a5);
      v17 += v12;
      if (v15 == v18 >> 14)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2684948CC(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *))
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  if (4 * v4 == *result >> 14)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    do
    {
      result = sub_2684B55A4();
      v8 = result;
      if (v5 == result >> 14)
      {
        break;
      }

      v11[0] = sub_2684B5604();
      v11[1] = v9;
      v10 = a4(v11);
    }

    while ((v10 & 1) == 0);
    *v7 = v8;
  }

  return result;
}

void sub_2684949E8(uint64_t a1)
{
  sub_2684B3924();
  if (v1 <= 0x3F)
  {
    sub_2684B3974();
    if (v2 <= 0x3F)
    {
      sub_268494A84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268494A84()
{
  if (!qword_28027E298)
  {
    v0 = sub_2684B57A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E298);
    }
  }
}

uint64_t sub_268494AE4()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_268494B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_2684B59F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2684B59F4();

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

uint64_t sub_268494BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26849750C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_268494C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26849750C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_268494C74(void *a1, int a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E358, &qword_2684B8F20);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E360, &qword_2684B8F28);
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E368, &qword_2684B8F30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849750C(v13, v14, v15);
  v16 = sub_2684B5AB4();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_268497560(v16, v17, v18);
    sub_2684B59A4();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_2684975B4(v16, v17, v18);
    sub_2684B59A4();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

uint64_t sub_268494F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268497560(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_268494F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268497560(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_268494FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2684975B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_268494FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2684975B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26849502C()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

uint64_t sub_268495074(uint64_t a1)
{
  v2 = *v1;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v2);
  return sub_2684B5A94();
}

uint64_t sub_2684950B8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2684970D0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_268495108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E2A0;
  if (!qword_28027E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2A0);
  }

  return result;
}

uint64_t sub_26849515C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v1 setDoesRelativeDateFormatting_];
  v2 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v3 = v2;
  v4 = 0;
  if ((*(v0 + *(v2 + 24)) & 1) == 0)
  {
    v4 = ~*(v0 + *(v2 + 28)) & 1;
  }

  [v1 setTimeStyle_];
  v5 = *(v0 + *(v3 + 28));
  [v1 setDateStyle_];
  v6 = sub_2684B38B4();
  [v1 setLocale_];

  [v1 setFormattingContext_];
  v7 = sub_2684B3814();
  v8 = [v1 stringFromDate_];

  v9 = sub_2684B5554();
  return v9;
}

uint64_t sub_268495298(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E2F0, &qword_2684B8EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849617C(v9, v10, v11);
  sub_2684B5AB4();
  v17[15] = 0;
  sub_2684B3924();
  sub_268496084(&qword_28027E2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_2684B59D4();
  if (!v2)
  {
    v12 = type metadata accessor for TemporalTriggerFormatStyle(0);
    v17[14] = 1;
    sub_2684B3974();
    sub_268496084(&qword_28027E300, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
    v13 = sub_2684B59D4();
    v17[13] = *(v3 + *(v12 + 24));
    v17[12] = 2;
    sub_268496284(v13, v14, v15);
    sub_2684B59B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2684954E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_2684B3974();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B3924();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E2C8, &qword_2684B8EF0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TemporalTriggerFormatStyle(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B38E4();
  v13 = *(v10 + 28);
  sub_2684B3944();
  v14 = *(v10 + 32);
  v12[v14] = 2;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849617C(v15, v16, v17);
  v18 = v37;
  sub_2684B5AA4();
  if (!v18)
  {
    v37 = v13;
    v19 = v31;
    v28 = v14;
    v20 = v33;
    v41 = 0;
    sub_268496084(&qword_28027E2D8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    v21 = v32;
    sub_2684B5984();
    (*(v19 + 40))(v12, v35, v21);
    v40 = 1;
    sub_268496084(&qword_28027E2E0, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
    sub_2684B5984();
    v23 = (*(v30 + 40))(&v12[v37], v4, v20);
    v38 = 2;
    sub_268496230(v23, v24, v25);
    v26 = v36;
    sub_2684B5964();
    (*(v34 + 8))(v8, v26);
    v27 = v29;
    v12[v28] = v39;
    sub_268497D74(v12, v27, type metadata accessor for TemporalTriggerFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2684961D0(v12, type metadata accessor for TemporalTriggerFormatStyle);
}

uint64_t sub_26849593C()
{
  v1 = 0x7261646E656C6163;
  if (*v0 != 1)
  {
    v1 = 0x696E557375636F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_268495998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268497DDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2684959CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26849617C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_268495A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26849617C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_268495A44@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = sub_2684B3844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2684B3924();
  (*(*(v12 - 8) + 16))(v11, v2, v12);
  v13 = *(a1 + 20);
  v14 = v9[7];
  v15 = sub_2684B3974();
  (*(*(v15 - 8) + 16))(&v11[v14], v2 + v13, v15);
  v16 = sub_2684B40A4();
  v17 = *(v2 + *(a1 + 24));
  v11[v9[8]] = v16 & 1;
  v11[v9[9]] = v17;
  sub_2684B4094();
  v18 = sub_26849515C();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  result = sub_2684961D0(v11, type metadata accessor for TemporalTriggerDateFormatStyle);
  v22 = v24;
  *v24 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_268495C98(uint64_t a1)
{
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  v3 = *(v1 + *(a1 + 24));
  sub_2684B5A84();
  if (v3 != 2)
  {
    MEMORY[0x26D619E40](v3 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268495DBC(uint64_t a1, uint64_t a2)
{
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 2)
  {
    return sub_2684B5A84();
  }

  sub_2684B5A84();
  return MEMORY[0x26D619E40](v4 & 1);
}

uint64_t sub_268495ED0(uint64_t a1, uint64_t a2)
{
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  v4 = *(v2 + *(a2 + 24));
  sub_2684B5A84();
  if (v4 != 2)
  {
    MEMORY[0x26D619E40](v4 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26849617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E2D0;
  if (!qword_28027E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2D0);
  }

  return result;
}

uint64_t sub_2684961D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_268496230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E2E8;
  if (!qword_28027E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2E8);
  }

  return result;
}

unint64_t sub_268496284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E308;
  if (!qword_28027E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E308);
  }

  return result;
}

uint64_t sub_2684962D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E400, &qword_2684B93F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268497EF8(v9, v10, v11);
  sub_2684B5AB4();
  v17[15] = 0;
  sub_2684B3924();
  sub_268496084(&qword_28027E2F8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_2684B59D4();
  if (!v2)
  {
    v12 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
    v17[14] = 1;
    sub_2684B3974();
    sub_268496084(&qword_28027E300, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
    sub_2684B59D4();
    v17[13] = 2;
    v13 = sub_2684B59C4();
    v17[12] = *(v3 + *(v12 + 28));
    v17[11] = 3;
    sub_268496284(v13, v14, v15);
    sub_2684B59B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26849654C()
{
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  v1 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  sub_2684B5A84();
  v2 = *(v0 + *(v1 + 28));
  sub_2684B5A84();
  if (v2 != 2)
  {
    MEMORY[0x26D619E40](v2 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v39 = sub_2684B3974();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2684B3924();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E3F0, &qword_2684B93F0);
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v30 - v5;
  v7 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B38E4();
  v11 = v8[7];
  sub_2684B3944();
  v12 = v8[8];
  v10[v12] = 0;
  v13 = v8[9];
  v10[v13] = 2;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268497EF8(v14, v15, v16);
  v38 = v6;
  v17 = v43;
  sub_2684B5AA4();
  if (v17)
  {
    v29 = a1;
  }

  else
  {
    v31 = v12;
    v32 = v11;
    v19 = v36;
    v18 = v37;
    v30 = v13;
    v43 = a1;
    v20 = v39;
    v48 = 0;
    sub_268496084(&qword_28027E2D8, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    v21 = v41;
    v22 = v40;
    v23 = v38;
    sub_2684B5984();
    (*(v18 + 40))(v10, v42, v22);
    v47 = 1;
    sub_268496084(&qword_28027E2E0, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
    v24 = v35;
    sub_2684B5984();
    (*(v34 + 40))(&v10[v32], v24, v20);
    v46 = 2;
    v25 = sub_2684B5974();
    v10[v31] = v25 & 1;
    v44 = 3;
    sub_268496230(v25, v27, v28);
    sub_2684B5964();
    (*(v19 + 8))(v23, v21);
    v10[v30] = v45;
    sub_268497D74(v10, v33, type metadata accessor for TemporalTriggerDateFormatStyle);
    v29 = v43;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2684961D0(v10, type metadata accessor for TemporalTriggerDateFormatStyle);
}

uint64_t sub_268496B20()
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x7961446C6C417369;
  if (*v0 != 2)
  {
    v2 = 0x696E557375636F66;
  }

  if (*v0)
  {
    v1 = 0x7261646E656C6163;
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

uint64_t sub_268496B9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2684981A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_268496BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268497EF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_268496C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268497EF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_268496C48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26849515C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268496C88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_268497D74(v3, a3, a2);
  v6 = sub_2684B3924();
  v7 = *(*(v6 - 8) + 24);

  return v7(a3, a1, v6);
}

uint64_t sub_268496D40(uint64_t a1, uint64_t a2)
{
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  sub_2684B5A84();
  v4 = *(v2 + *(a2 + 28));
  if (v4 == 2)
  {
    return sub_2684B5A84();
  }

  sub_2684B5A84();
  return MEMORY[0x26D619E40](v4 & 1);
}

uint64_t sub_268496E64(uint64_t a1, uint64_t a2)
{
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_2684B5524();
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_2684B5524();
  sub_2684B5A84();
  v4 = *(v2 + *(a2 + 28));
  sub_2684B5A84();
  if (v4 != 2)
  {
    MEMORY[0x26D619E40](v4 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496F98(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x26D617CA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemporalTriggerFormatStyle(0);
  if ((MEMORY[0x26D617D20](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v7 ^ v6) & 1;
    if (v7 == 2 || v9 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_268497028(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x26D617CA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  if ((MEMORY[0x26D617D20](a1 + v4[5], a2 + v4[5]) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v8 ^ v7) & 1;
    if (v8 == 2 || v9 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2684970D0(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E320, &qword_2684B8F00);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E328, &qword_2684B8F08);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E330, &qword_2684B8F10);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849750C(v10, v11, v12);
  v13 = v31;
  sub_2684B5AA4();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v4;
  v31 = a1;
  v15 = v28;
  v14 = v29;
  v16 = v9;
  v17 = sub_2684B5994();
  if (*(v17 + 16) != 1)
  {
    v21 = sub_2684B58E4();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E340, &qword_2684B8F18);
    *v23 = &type metadata for TemporalTriggerFormatStyle.FocusUnit;
    sub_2684B5954();
    sub_2684B58D4();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v30 + 8))(v16, v7);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25[1] = v17;
  v32 = *(v17 + 32);
  if (v32)
  {
    v34 = 1;
    sub_268497560(v17, v18, v19);
    sub_2684B5944();
    v20 = v30;
    (*(v27 + 8))(v3, v14);
  }

  else
  {
    v33 = 0;
    sub_2684975B4(v17, v18, v19);
    sub_2684B5944();
    v20 = v30;
    (*(v15 + 8))(v6, v26);
  }

  (*(v20 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v32;
}

unint64_t sub_26849750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E338;
  if (!qword_28027E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E338);
  }

  return result;
}

unint64_t sub_268497560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E348;
  if (!qword_28027E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E348);
  }

  return result;
}

unint64_t sub_2684975B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28027E350;
  if (!qword_28027E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E350);
  }

  return result;
}

uint64_t sub_268497608(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for TemporalTriggerFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TemporalTriggerFormatStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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