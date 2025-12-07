uint64_t sub_2744F068C(uint64_t a1)
{
  v2 = sub_2744EF6F4(a1);
  v3 = sub_27443B4C4();

  if (v3)
  {
    return 1;
  }

  return sub_2744EF788(a1);
}

uint64_t sub_2744F06F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionAttributionView(0, v6, v7, v8);
  sub_2744E9688();
  sub_2744E9688();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_2744F0824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v93 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F428, &unk_2746546F0);
  MEMORY[0x28223BE20](v86);
  v4 = &v82 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F438, &qword_274654700);
  MEMORY[0x28223BE20](v83);
  v84 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F418, &qword_274654A40);
  MEMORY[0x28223BE20](v6);
  v85 = &v82 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F440, &qword_274654708);
  MEMORY[0x28223BE20](v94);
  v96 = &v82 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F448, &qword_274654710);
  MEMORY[0x28223BE20](v89);
  v90 = &v82 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3D8, &qword_2746546D0);
  MEMORY[0x28223BE20](v95);
  v91 = &v82 - v10;
  v11 = sub_274638B7C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_274638B6C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_274638B8C();
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3E8, &qword_2746546D8);
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - v22;
  v24 = *(v2 + 16);
  if (v24 == 2)
  {
    v42 = *MEMORY[0x277D76918];
    v43 = objc_allocWithZone(MEMORY[0x277D75520]);
    v44 = [v43 initForTextStyle_];
    [v44 scaledValueForValue_];

    sub_274638B5C();
    v45 = sub_27463AC2C();
    sub_27463A43C();
    sub_27463A3FC();
    v46 = sub_27463A42C();

    KeyPath = swift_getKeyPath();
    if (qword_280949280 != -1)
    {
      swift_once();
    }

    v48 = qword_280965DC8;
    v49 = sub_27463ABDC();
    v50 = swift_getKeyPath();
    sub_27463B0CC();
    sub_2746392FC();
    *__src = v45;
    *&__src[8] = KeyPath;
    *&__src[16] = v46;
    *&__src[24] = v50;
    *&__src[32] = v49;
    memcpy(v90, __src, 0x58uLL);
    swift_storeEnumTagMultiPayload();
    sub_27445EAD4(__src, v97, &qword_28094F3F8, &unk_2746546E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8, &unk_2746546E0);
    sub_2744F2A84();
    sub_2744F2B70();
    v51 = v91;
    sub_274639DDC();
    sub_27445EAD4(v51, v96, &qword_28094F3D8, &qword_2746546D0);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();
    sub_27440CB1C(__src, &qword_28094F3F8, &unk_2746546E0);
    v39 = v51;
    v40 = &qword_28094F3D8;
    v41 = &qword_2746546D0;
  }

  else if (v24 == 1)
  {
    v86 = v6;
    v85 = v21;
    v25 = [objc_opt_self() clearBackground];
    v26 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v27 = sub_27446D8F0(0xD000000000000019, 0x800000027468B680, v25);
    v28 = *MEMORY[0x277D76918];
    v29 = objc_allocWithZone(MEMORY[0x277D75520]);
    v84 = v27;
    v30 = [v29 initForTextStyle_];
    [v30 scaledValueForValue_];
    v32 = v31;

    *v18 = v32;
    v18[1] = v32;
    (*(v16 + 104))(v18, *MEMORY[0x277D7D690], v15);
    v33 = [objc_opt_self() wf_accentColor];
    v34 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    *v14 = v34;
    v14[8] = 1;
    (*(v12 + 104))(v14, *MEMORY[0x277D7D6C0], v11);
    v35 = v87;
    v36 = v84;
    sub_274638B9C();
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    v37 = v92;
    sub_27463A80C();
    (*(v88 + 8))(v35, v37);
    sub_27445EAD4(v23, v90, &qword_28094F3E8, &qword_2746546D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8, &unk_2746546E0);
    sub_2744F2A84();
    sub_2744F2B70();
    v38 = v91;
    sub_274639DDC();
    sub_27445EAD4(v38, v96, &qword_28094F3D8, &qword_2746546D0);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();

    sub_27440CB1C(v38, &qword_28094F3D8, &qword_2746546D0);
    v39 = v23;
    v40 = &qword_28094F3E8;
    v41 = &qword_2746546D8;
  }

  else
  {
    v52 = *(*(v2 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    v53 = [v52 icon];

    if (v53)
    {
      v54 = *MEMORY[0x277D76918];
      v55 = objc_allocWithZone(MEMORY[0x277D75520]);
      v56 = v53;
      v57 = [v55 initForTextStyle_];
      [v57 scaledValueForValue_];
      v59 = v58;

      *v18 = v59;
      v18[1] = v59;
      (*(v16 + 104))(v18, *MEMORY[0x277D7D690], v15);
      sub_2744F20D0(v14);
      v60 = v87;
      sub_274638B9C();
      v61 = v88;
      v62 = v92;
      (*(v88 + 16))(v84, v60, v92);
      swift_storeEnumTagMultiPayload();
      sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
      sub_2744F2D70();
      v63 = v85;
      sub_274639DDC();
      sub_27445EAD4(v63, v96, &qword_28094F418, &qword_274654A40);
      swift_storeEnumTagMultiPayload();
      sub_2744F29F8();
      sub_2744F2CB4();
      sub_274639DDC();

      sub_27440CB1C(v63, &qword_28094F418, &qword_274654A40);
      return (*(v61 + 8))(v60, v62);
    }

    v65 = *(sub_27463970C() + 20);
    v66 = *MEMORY[0x277CE0118];
    v67 = sub_274639BFC();
    (*(*(v67 - 8) + 104))(&v4[v65], v66, v67);
    __asm { FMOV            V0.2D, #6.0 }

    *v4 = _Q0;
    v73 = [objc_opt_self() wf_systemGray3Color];
    v74 = sub_27463AB0C();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400, &qword_274652600);
    *&v4[*(v75 + 52)] = v74;
    *&v4[*(v75 + 56)] = 256;
    v76 = *MEMORY[0x277D76918];
    v77 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v77 scaledValueForValue_];

    v78 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v78 scaledValueForValue_];

    sub_27463B0CC();
    sub_2746392FC();
    v79 = &v4[*(v86 + 36)];
    v80 = *&__src[16];
    *v79 = *__src;
    *(v79 + 1) = v80;
    *(v79 + 2) = *&__src[32];
    sub_27445EAD4(v4, v84, &qword_28094F428, &unk_2746546F0);
    swift_storeEnumTagMultiPayload();
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_2744F2D70();
    v81 = v85;
    sub_274639DDC();
    sub_27445EAD4(v81, v96, &qword_28094F418, &qword_274654A40);
    swift_storeEnumTagMultiPayload();
    sub_2744F29F8();
    sub_2744F2CB4();
    sub_274639DDC();
    sub_27440CB1C(v81, &qword_28094F418, &qword_274654A40);
    v39 = v4;
    v40 = &qword_28094F428;
    v41 = &unk_2746546F0;
  }

  return sub_27440CB1C(v39, v40, v41);
}

void sub_2744F1710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27463800C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v13 = type metadata accessor for ActionAttributionView(0, a2, a3, v12);
  v14 = sub_2744F19D0(v13);
  if ((v15 & 1) == 0)
  {
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (((v14 - 1) & 0x8000000000000000) == 0)
    {
      v16 = sub_2744EF6F4(v13);
      v17 = &v16[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = *(v17 + 1);

      if (Strong)
      {
        sub_274637FDC();
        sub_274637FDC();
        ObjectType = swift_getObjectType();
        (*(v19 + 48))(v11, v8, ObjectType, v19);
        swift_unknownObjectRelease();
        v21 = *(v6 + 8);
        v21(v8, v5);
        v21(v11, v5);
        return;
      }
    }
  }

  v22 = *MEMORY[0x277D76438];
  sub_27463B70C("Unable to move action", 21);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v23 = qword_28094BB00;
  v24 = sub_27463B66C();
  v25 = sub_27463B66C();

  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  if (!v26)
  {
    sub_27463B6AC();
    v26 = sub_27463B66C();
  }

  UIAccessibilityPostNotification(v22, v26);
}

uint64_t sub_2744F19D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = sub_274639ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(a1 + 48);
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j__swift_release(v12);
    (*(v8 + 8))(v10, v7);
    v12 = v18;
  }

  if (!v12)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v17 = *(*(v1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  sub_27463837C();

  (*(v4 + 8))(v6, v3);
  if (!v18)
  {
    return 0;
  }

  v15 = v19;

  return v15;
}

void sub_2744F1C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27463800C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v38 - v11;
  v12 = sub_274639ABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActionAttributionView(0, a2, a3, v16);
  v40 = a1;
  v39 = sub_2744F19D0(v17);
  if ((v18 & 1) == 0)
  {
    v19 = v40 + *(v17 + 48);
    v20 = *v19;
    v21 = *(v19 + 8);

    if ((v21 & 1) == 0)
    {
      sub_27463BC0C();
      v22 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      j__swift_release(v20);
      (*(v13 + 8))(v15, v12);
      v20 = v41[0];
    }

    if (v20)
    {
      v23 = *(v20 + 24);

      v24 = [v23 actions];

      sub_2744F302C();
      sub_27463B81C();

      v25 = sub_274453594();

      if (__OFADD__(v39, 1))
      {
        __break(1u);
        return;
      }

      if (v39 + 1 < v25)
      {
        v26 = sub_2744EF6F4(v17);
        v27 = &v26[OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate];
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v29 = *(v27 + 1);

        if (Strong)
        {
          v30 = v38;
          sub_274637FDC();
          sub_274637FDC();
          ObjectType = swift_getObjectType();
          (*(v29 + 48))(v30, v9, ObjectType, v29);
          swift_unknownObjectRelease();
          v32 = *(v7 + 8);
          v32(v9, v6);
          v32(v30, v6);
          return;
        }
      }
    }
  }

  v33 = *MEMORY[0x277D76438];
  sub_27463B70C("Unable to move action", 21);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v34 = qword_28094BB00;
  v35 = sub_27463B66C();
  v36 = sub_27463B66C();

  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  if (!v37)
  {
    sub_27463B6AC();
    v37 = sub_27463B66C();
  }

  UIAccessibilityPostNotification(v33, v37);
}

uint64_t sub_2744F20D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 8) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
  v4 = [v3 iconColor];

  if (v4)
  {
    *a1 = v4;
    *(a1 + 8) = 1;
    v5 = MEMORY[0x277D7D6C0];
  }

  else
  {
    v5 = MEMORY[0x277D7D6D0];
  }

  v6 = *v5;
  v7 = sub_274638B7C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

unint64_t sub_2744F21A4()
{
  result = qword_28094F308;
  if (!qword_28094F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0, &qword_274654438);
    sub_27440CA78(&qword_28094F310, &qword_28094F2F0, &qword_274654488, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F308);
  }

  return result;
}

unint64_t sub_2744F2260()
{
  result = qword_28094F330;
  if (!qword_28094F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F328, &unk_274654508);
    sub_2744F2318();
    sub_27440CA78(&unk_280954AE0, &unk_28094AD60, &qword_27464E7D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F330);
  }

  return result;
}

unint64_t sub_2744F2318()
{
  result = qword_28094F338[0];
  if (!qword_28094F338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28094F338);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2744F238C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2744F23CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2744F242C(uint64_t a1)
{
  sub_274480F90(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_274481024(319);
      if (v3 <= 0x3F)
      {
        sub_2744ECA38(319, &qword_28094C4D0, &qword_28094C4D8, &qword_27464D890, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2744F28BC(319, &qword_28094C510, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2744F2554(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 17) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 17) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744F26BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 17] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2744F28BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2744F296C()
{
  result = qword_28094F3C8;
  if (!qword_28094F3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3C0, &qword_2746546C8);
    sub_2744F29F8();
    sub_2744F2CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3C8);
  }

  return result;
}

unint64_t sub_2744F29F8()
{
  result = qword_28094F3D0;
  if (!qword_28094F3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3D8, &qword_2746546D0);
    sub_2744F2A84();
    sub_2744F2B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3D0);
  }

  return result;
}

unint64_t sub_2744F2A84()
{
  result = qword_28094F3E0;
  if (!qword_28094F3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3E8, &qword_2746546D8);
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3E0);
  }

  return result;
}

unint64_t sub_2744F2B70()
{
  result = qword_28094F3F0;
  if (!qword_28094F3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3F8, &unk_2746546E0);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F3F0);
  }

  return result;
}

unint64_t sub_2744F2BFC()
{
  result = qword_28094F400;
  if (!qword_28094F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F408, &unk_274654A60);
    sub_2744129AC();
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F400);
  }

  return result;
}

unint64_t sub_2744F2CB4()
{
  result = qword_28094F410;
  if (!qword_28094F410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F418, &qword_274654A40);
    sub_2744F32CC(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_2744F2D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F410);
  }

  return result;
}

unint64_t sub_2744F2D70()
{
  result = qword_28094F420;
  if (!qword_28094F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F428, &unk_2746546F0);
    sub_27440CA78(qword_28094C530, &qword_28094E400, &qword_274652600, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F420);
  }

  return result;
}

uint64_t objectdestroyTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ActionAttributionView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);
  j__swift_release(*(v7 + v6[14]));
  sub_2743F45E8(*(v7 + v6[15]), *(v7 + v6[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_2744F2F94(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ActionAttributionView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_2744F302C()
{
  result = qword_28094E040;
  if (!qword_28094E040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094E040);
  }

  return result;
}

unint64_t sub_2744F3078()
{
  result = qword_28094F480;
  if (!qword_28094F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F478, &qword_2746547F0);
    sub_2744F3130();
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F480);
  }

  return result;
}

unint64_t sub_2744F3130()
{
  result = qword_28094F488;
  if (!qword_28094F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F490, &qword_2746547F8);
    sub_2744F31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F488);
  }

  return result;
}

unint64_t sub_2744F31BC()
{
  result = qword_28094F498;
  if (!qword_28094F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4A0, &qword_274654800);
    sub_2744F3240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F498);
  }

  return result;
}

unint64_t sub_2744F3240()
{
  result = qword_28094F4A8;
  if (!qword_28094F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4B0, &unk_274654808);
    sub_2744F2BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4A8);
  }

  return result;
}

uint64_t sub_2744F32CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2744F3314()
{
  result = qword_28094F4C0;
  if (!qword_28094F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F4C8, &qword_274654858);
    sub_2744F3398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4C0);
  }

  return result;
}

unint64_t sub_2744F3398()
{
  result = qword_28094F4D0;
  if (!qword_28094F4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F470, &qword_2746547E8);
    sub_2744F3424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4D0);
  }

  return result;
}

unint64_t sub_2744F3424()
{
  result = qword_28094F4D8;
  if (!qword_28094F4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F468, &qword_2746547E0);
    sub_2744F34DC();
    sub_27440CA78(&unk_28094C740, &qword_280949FC0, &qword_274648838, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4D8);
  }

  return result;
}

unint64_t sub_2744F34DC()
{
  result = qword_28094F4E0;
  if (!qword_28094F4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F460, &qword_2746547D8);
    sub_2744F3568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4E0);
  }

  return result;
}

unint64_t sub_2744F3568()
{
  result = qword_28094F4E8;
  if (!qword_28094F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094F4F0, &qword_274654860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F450, &qword_2746547C8);
    sub_2746396BC();
    sub_27440CA78(&qword_28094F4B8, &qword_28094F450, &qword_2746547C8, MEMORY[0x277CDF028]);
    sub_2744F32CC(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F4E8);
  }

  return result;
}

uint64_t sub_2744F36FC(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    v8 = &v15;
    sub_27463C44C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x277C58B20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v8 = v11;
      v13 = v11;
      sub_2744F48CC(&v13, a3, &v14);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

unint64_t sub_2744F386C(unint64_t a1)
{
  v38 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v37 = v6 - v5;
  v7 = sub_27463B4DC();
  v43 = v7;
  v40 = sub_274453594();
  if (v40)
  {
    v8 = 0;
    v39 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1;
    v36 = (v3 + 8);
    while (1)
    {
      if (v39)
      {
        v9 = MEMORY[0x277C58B20](v8, a1);
      }

      else
      {
        if (v8 >= *(v34 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setGroupingIdentifier_];
      v12 = sub_2744F505C(v10);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        sub_274637EDC();
        v16 = sub_274637E9C();
        v18 = v17;
        (*v36)(v37, v38);
        v41 = v18;
        sub_2744F50C0(v16, v18, v10);
        swift_isUniquelyReferenced_nonNull_native();
        v42 = v43;
        v19 = v14;
        v20 = sub_274534C48(v14, v15);
        if (__OFADD__(v43[2], (v21 & 1) == 0))
        {
          goto LABEL_25;
        }

        v22 = v20;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F508, &qword_274654868);
        if (sub_27463C4CC())
        {
          v24 = sub_274534C48(v19, v15);
          if ((v23 & 1) != (v25 & 1))
          {
            goto LABEL_28;
          }

          v22 = v24;
        }

        if (v23)
        {

          v7 = v43;
          v26 = (v43[7] + 16 * v22);
          *v26 = v16;
          v26[1] = v41;
        }

        else
        {
          v7 = v43;
          v43[(v22 >> 6) + 8] |= 1 << v22;
          v27 = (v42[6] + 16 * v22);
          *v27 = v19;
          v27[1] = v15;
          v28 = (v42[7] + 16 * v22);
          *v28 = v16;
          v28[1] = v41;

          v29 = v42[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_27;
          }

          v42[2] = v31;
        }

        v43 = v7;
        a1 = v35;
        v11 = v8 + 1;
      }

      else
      {
      }

      ++v8;
      if (v11 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_27463C71C();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (*(v7 + 16))
    {
      a1 = sub_2744F36FC(a1, v33, &v43);
    }

    else
    {
    }

    return a1;
  }

  return result;
}

void sub_2744F3BB4(unint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];

  if (a1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F560, &qword_274654898);
    sub_27463C57C();
  }

  else
  {
    sub_27463C6CC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F560, &qword_274654898);
  v3 = sub_27463B7FC();

  [v2 setObjects:v3 localOnly:1 expirationDate:0];
}

uint64_t sub_2744F3CC8()
{
  v0 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274648570;
  if (qword_280949300 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_280949300);
  }

  v2 = sub_274638C8C();
  __swift_project_value_buffer(v2, qword_280965EA0);
  *(v1 + 32) = sub_274638C6C();
  *(v1 + 40) = v3;
  v4 = sub_27463B7FC();

  v5 = [v0 containsPasteboardTypes_];

  LODWORD(v4) = [v0 hasStrings];
  v6 = [v0 hasURLs];

  return (v5 | v4 | v6) & 1;
}

unint64_t sub_2744F3DF0(__n128 a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3_0();
  v77 = sub_274637E2C();
  OUTLINED_FUNCTION_1();
  v81 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  if (qword_280949300 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v7 = sub_274638C8C();
    __swift_project_value_buffer(v7, qword_280965EA0);
    v8 = sub_274638C6C();
    v10 = v9;
    v11 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_274648570;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;

    v13 = sub_27463B7FC();

    v14 = [v11 containsPasteboardTypes_];

    v15 = [v11 hasStrings];
    v16 = [v11 hasURLs];
    if (!v14)
    {
      break;
    }

    v17 = sub_27463B66C();

    v18 = [v11 dataForPasteboardType:v17 inItemSet:0];

    v74 = v11;
    if (v18)
    {
      v19 = sub_27463B81C();
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v48 = 0;
    v49 = v19 + 40;
    v50 = *(v19 + 16);
    v81 = MEMORY[0x277D84F90];
LABEL_37:
    v6 = v49 + 16 * v48;
    while (1)
    {
      if (v50 == v48)
      {

        v67 = objc_opt_self();
        sub_2745DC0BC(v81);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094F550, &unk_27465EF70);
        v68 = sub_27463B7FC();

        v69 = [objc_opt_self() sharedRegistry];
        v70 = [v67 actionsFromSerializedRepresentations:v68 actionRegistry:v69];

        sub_274412734(0, &qword_28094E040, 0x277D7C098);
        v71 = sub_27463B81C();

        v72 = sub_2744F386C(v71);

        return v72;
      }

      if (v48 >= *(v19 + 16))
      {
        break;
      }

      v51 = objc_opt_self();
      v52 = OUTLINED_FUNCTION_4_20();
      sub_2744F525C(v52, v53);
      OUTLINED_FUNCTION_4_20();
      v54 = sub_274637E3C();
      v82[0] = 0;
      v55 = [v51 propertyListWithData:v54 options:0 format:0 error:v82];

      if (v55)
      {
        v56 = v82[0];
        sub_27463C13C();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B840, &qword_2746575C0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v83 = 0;
        }

        v57 = OUTLINED_FUNCTION_4_20();
        sub_2744F52B4(v57, v58);
      }

      else
      {
        v59 = v82[0];
        v60 = sub_274637D6C();

        swift_willThrow();
        v83 = 0;
        v61 = OUTLINED_FUNCTION_4_20();
        sub_2744F52B4(v61, v62);
      }

      ++v48;
      v6 += 16;
      v63 = v83;
      if (v83)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2744501A0();
          v81 = v65;
        }

        v64 = *(v81 + 16);
        if (v64 >= *(v81 + 24) >> 1)
        {
          sub_2744501A0();
          v81 = v66;
        }

        *(v81 + 16) = v64 + 1;
        *(v81 + 8 * v64 + 32) = v63;
        v49 = v19 + 40;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    OUTLINED_FUNCTION_0_29(&qword_280949300);
  }

  v20 = v16;

  if (!v20)
  {
    if (v15)
    {
      v75 = v11;
      v35 = sub_2744F5118(v11);
      v36 = 0;
      if (v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

      v76 = MEMORY[0x277D84F90];
      v83 = MEMORY[0x277D84F90];
      v80 = *(v37 + 16);
      v81 = v37;
      v38 = v37 + 40;
      v77 = v37 + 40;
LABEL_24:
      v6 = v38 + 16 * v36;
      while (v80 != v36)
      {
        if (v36 >= *(v81 + 16))
        {
          goto LABEL_57;
        }

        sub_274412734(0, &unk_28094F530, 0x277D7CA30);
        swift_bridgeObjectRetain_n();
        sub_27463828C();
        v39 = sub_27463BE8C();
        v40 = [v39 serializedRepresentation];

        if (v40)
        {
          v41 = [objc_opt_self() sharedRegistry];
          v42 = sub_27463B66C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8, &qword_274651BB0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_274648570;
          v82[0] = 0xD000000000000010;
          v82[1] = 0x800000027468B700;
          sub_27463C31C();
          *(inited + 96) = swift_getObjectType();
          *(inited + 72) = v40;
          swift_unknownObjectRetain();
          v44 = sub_27463B4DC();
          v45 = sub_2744F51D0(v42, v44, v41);

          swift_unknownObjectRelease();

          if (v45)
          {
            MEMORY[0x277C57F30](v46);
            OUTLINED_FUNCTION_3_23();
            if (v47)
            {
              OUTLINED_FUNCTION_5_22();
            }

            ++v36;
            sub_27463B8AC();
            v76 = v83;
            v38 = v77;
            goto LABEL_24;
          }
        }

        else
        {
        }

        v6 += 16;
        ++v36;
      }

      goto LABEL_52;
    }

LABEL_54:

    return MEMORY[0x277D84F90];
  }

  v21 = sub_2744F5170(v11);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v83 = MEMORY[0x277D84F90];
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_54;
  }

  v75 = v11;
  sub_274412734(0, &unk_28094F540, 0x277D7C9C0);
  v79 = *(v81 + 16);
  v24 = v22 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v78 = *(v81 + 72);
  v25 = (v81 + 8);
  v76 = MEMORY[0x277D84F90];
  v26 = v77;
  do
  {
    v79(v6, v24, v26);
    sub_274637DDC();
    sub_27463828C();
    v27 = sub_27463BE8C();
    v28 = [v27 serializedRepresentation];

    if (v28)
    {
      v29 = [objc_opt_self() sharedRegistry];
      v30 = sub_27463B66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8, &qword_274651BB0);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_274648570;
      strcpy(v82, "WFURLActionURL");
      HIBYTE(v82[1]) = -18;
      sub_27463C31C();
      *(v31 + 96) = swift_getObjectType();
      *(v31 + 72) = v28;
      swift_unknownObjectRetain();
      v32 = sub_27463B4DC();
      v33 = sub_2744F51D0(v30, v32, v29);
      swift_unknownObjectRelease();

      v26 = v77;
      v34 = (*v25)(v6, v77);
      if (v33)
      {
        MEMORY[0x277C57F30](v34);
        OUTLINED_FUNCTION_3_23();
        if (v47)
        {
          OUTLINED_FUNCTION_5_22();
        }

        sub_27463B8AC();
        v76 = v83;
      }
    }

    else
    {
      (*v25)(v6, v26);
    }

    v24 += v78;
    --v23;
  }

  while (v23);
LABEL_52:

  return v76;
}

id sub_2744F4830()
{
  v1 = [v0 serializedParameters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
  v2 = sub_27463B4CC();

  v3 = sub_2745942EC(v2, v0);
  [v3 setGroupingIdentifier_];
  return v3;
}

uint64_t sub_2744F48CC@<X0>(id *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v29 = *a1;
  v3 = [*a1 serializedParameters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
  v4 = sub_27463B4CC();

  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v31 = v9;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v4 + 56) + 8 * v12);
      v17 = *a2;

      swift_unknownObjectRetain();

      v33 = sub_2744F4B94(v16, v17);

      swift_isUniquelyReferenced_nonNull_native();
      v34 = v15;
      v18 = sub_274534C48(v15, v14);
      if (__OFADD__(*(v4 + 16), (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F510, &qword_274654870);
      if (sub_27463C4CC())
      {
        v22 = sub_274534C48(v34, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      if (v21)
      {

        *(*(v4 + 56) + 8 * v20) = v33;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v4 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v24 = (*(v4 + 48) + 16 * v20);
        *v24 = v34;
        v24[1] = v14;
        *(*(v4 + 56) + 8 * v20) = v33;
        swift_unknownObjectRelease();
        v25 = *(v4 + 16);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        *(v4 + 16) = v27;
      }

      v8 &= v8 - 1;
      v9 = v31;
      v5 = v4 + 64;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        result = sub_2745942EC(v4, v29);
        *a3 = result;
        return result;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

void *sub_2744F4B94(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
  v35 = a2;
  if (swift_dynamicCast())
  {
    v4 = 1 << *(a2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
LABEL_11:
      v6 &= v6 - 1;
      sub_274412BBC();

      sub_27463C0FC();
    }

    result = a2;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v3 = sub_27463B66C();
        goto LABEL_39;
      }

      v6 = *(a2 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F518, &qword_274654878);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F528, &unk_274654888);
    result = sub_27463C5EC();
    v11 = result;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;
    for (i = result + 8; v15; v11[2] = v29)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_23:
      v20 = v17 | (v12 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];

      v24 = swift_unknownObjectRetain();
      v25 = sub_2744F4B94(v24, v35);
      result = swift_unknownObjectRelease();
      *(i + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (v11[6] + 16 * v20);
      *v26 = v22;
      v26[1] = v23;
      *(v11[7] + 8 * v20) = v25;
      v27 = v11[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_43;
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v3 = sub_27463B4BC();

        return v3;
      }

      v19 = *(a1 + 64 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_23;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F520, &qword_274654880);
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRetain();
    return v3;
  }

  v30 = sub_274453594();
  if (!v30)
  {
LABEL_38:

    v3 = sub_27463B7FC();
LABEL_39:

    return v3;
  }

  v31 = v30;
  result = sub_27463C44C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x277C58B20](v32, a1);
      }

      else
      {
        v33 = *(a1 + 8 * v32 + 32);
        swift_unknownObjectRetain();
      }

      ++v32;
      sub_2744F4B94(v33, a2);
      swift_unknownObjectRelease();
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v31 != v32);
    goto LABEL_38;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2744F505C(void *a1)
{
  v1 = [a1 UUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

void sub_2744F50C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  [a3 setUUID_];
}

uint64_t sub_2744F5118(void *a1)
{
  v1 = [a1 strings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_2744F5170(void *a1)
{
  v1 = [a1 URLs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_274637E2C();
  v3 = sub_27463B81C();

  return v3;
}

id sub_2744F51D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_27463B4BC();

  v6 = [a3 createActionWithIdentifier:a1 serializedParameters:v5];

  return v6;
}

uint64_t sub_2744F525C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2744F52B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return sub_27463B85C();
}

void sub_2744F536C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2744512CC(0, v1, 0);
    v4 = sub_274443724(a1);
    v6 = v5;
    v7 = 0;
    v22 = a1 + 64;
    v20 = v1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v22 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_24;
        }

        v21 = v3;
        MaxY = CGRectGetMaxY(*(*(a1 + 56) + 32 * v4));
        v11 = *(v23 + 16);
        v10 = *(v23 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2744512CC((v10 > 1), v11 + 1, 1);
        }

        *(v23 + 16) = v11 + 1;
        *(v23 + 8 * v11 + 32) = MaxY;
        v12 = 1 << *(a1 + 32);
        if (v4 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v22 + 8 * v8);
        if ((v13 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v4 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v8 << 6;
          v16 = v8 + 1;
          v17 = (a1 + 72 + 8 * v8);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              sub_274468390(v4, v6, v21 & 1);
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          sub_274468390(v4, v6, v21 & 1);
        }

LABEL_18:
        if (++v7 == v20)
        {
          return;
        }

        v3 = 0;
        v6 = *(a1 + 36);
        v4 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

char *sub_2744F55B4()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_runner];

    sub_274530580();
    v6 = v5;

    if (v6)
    {
      v7 = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);

      return (v7 == v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744F5644(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v10 = (a2 & 0x8000000000000000) != 0 ? a2 : a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v8 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v5 = sub_27463C27C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x277C58B20](i - 4, a1);
        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v4 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_22:
          v15 = MEMORY[0x277C58B20](i - 4, a2);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v15 = *(a2 + 8 * i);
LABEL_27:

      if (v4 != v15)
      {
        return 0;
      }

      if (v14 == v5)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2744F57D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_2744F5840(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_9();
  v4 = *(v2 + 16);
  if (v4 == *(v3 + 16) && v4 && v2 != v3)
  {
    v5 = (v2 + 72);
    v6 = (v3 + 40);
    while (1)
    {
      v8 = *(v5 - 4);
      v7 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *v6;
      v11 = v6[1];
      v12 = v6[2];
      v21 = *(v5 - 1);
      v22 = v6[3];
      v13 = v6[4];
      v20 = *v5;
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_24;
        }

        v14 = *(v5 - 5) == *(v6 - 1) && v8 == v10;
        if (!v14 && (sub_27463C6BC() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v10)
      {
        goto LABEL_24;
      }

      v15 = v7 == v11 && v9 == v12;
      if (!v15 && (sub_27463C6BC() & 1) == 0)
      {
        goto LABEL_24;
      }

      v16 = v13;

      v17 = v20;
      sub_2744F5B1C(v21, v22, qword_28094AE40);
      if ((v18 & 1) == 0)
      {
        break;
      }

      sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
      v19 = sub_27463BF7C();

      if (v19)
      {
        v5 += 6;
        v6 += 6;
        if (--v4)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_16_10();
}

uint64_t sub_2744F5A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_27448E108(v3, v8);
        sub_27448E108(v4, v7);
        v5 = MEMORY[0x277C58A40](v8, v7);
        sub_274430664(v7);
        sub_274430664(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_2744F5B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_9();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    if (v9 >> 62)
    {
      v12 = sub_27463C27C();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v12 || !i)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_21_9();
    if (!v16)
    {
      v15 = v9;
    }

    if (v9 >> 62)
    {
      v14 = v15;
    }

    if (v13 == v14)
    {
LABEL_25:
      OUTLINED_FUNCTION_16_10();
      return;
    }

    if (i < 0)
    {
      break;
    }

    v5 = sub_274412734(0, v7, v5);
    v26 = v10;
    v17 = v10 & 0xC000000000000001;
    v10 = v9;
    v18 = v9 & 0xC000000000000001;
    v19 = 4;
    v9 = i;
    while (1)
    {
      v20 = v19 - 3;
      if (__OFADD__(v19 - 4, 1))
      {
        break;
      }

      if (v17)
      {
        v21 = MEMORY[0x277C58B20](v19 - 4, v26);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v22)
        {
          goto LABEL_27;
        }

        v21 = *(v26 + 8 * v19);
      }

      v7 = v21;
      if (v18)
      {
        v23 = MEMORY[0x277C58B20](v19 - 4, v10);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v22)
        {
          goto LABEL_28;
        }

        v23 = *(v10 + 8 * v19);
      }

      v24 = v23;
      v25 = sub_27463BF7C();

      if (v25)
      {
        ++v19;
        if (v20 != v9)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  __break(1u);
}

void sub_2744F5CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_15_9();
  v13 = v12;
  v14 = v11;
  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v13 >> 62)
  {
    v16 = sub_27463C27C();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 != v16 || !v15)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_21_9();
  if (!v26)
  {
    v19 = v13;
  }

  if (v13 >> 62)
  {
    v18 = v19;
  }

  if (v17 != v18)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v20 = v13 & 0xC000000000000001;
      v21 = 4;
      while (1)
      {
        v22 = v21 - 4;
        v23 = v21 - 3;
        if (__OFADD__(v21 - 4, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v15 = sub_27463C27C();
          goto LABEL_3;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v21 - 4, v14);
          if (v20)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v22 >= *(a11 + 16))
          {
            goto LABEL_29;
          }

          if (v20)
          {
LABEL_17:
            MEMORY[0x277C58B20](v21 - 4, v13);
            goto LABEL_22;
          }
        }

        if (v22 >= *(a10 + 16))
        {
          goto LABEL_30;
        }

LABEL_22:
        v24 = sub_274599D28();
        v25 = sub_274599D28();

        ++v21;
        v26 = v24 != v25 || v23 == v15;
        if (v26)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    OUTLINED_FUNCTION_16_10();
  }
}

uint64_t sub_2744F5E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27463C6BC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_2744F5EE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_9();
  v4 = v3;
  v5 = v2;
  v6 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27463C27C())
  {
    if (v4 >> 62)
    {
      v8 = sub_27463C27C();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != v8 || !i)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = v4 & 0xFFFFFFFFFFFFFF8;
    v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v11 = v4;
    }

    if (v4 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      OUTLINED_FUNCTION_16_10();
      return;
    }

    if (i < 0)
    {
      break;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280);
    v24 = v5;
    v13 = v5 & 0xC000000000000001;
    v14 = v4 & 0xC000000000000001;
    v15 = 4;
    v5 = i;
    v16 = v4;
    while (1)
    {
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        break;
      }

      if (v13)
      {
        v18 = MEMORY[0x277C58B20](v15 - 4, v24);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v19)
        {
          goto LABEL_31;
        }

        v18 = *(v24 + 8 * v15);
      }

      v20 = v18;
      if (v14)
      {
        v21 = MEMORY[0x277C58B20](v15 - 4, v4);
      }

      else
      {
        OUTLINED_FUNCTION_23_6();
        if (v19)
        {
          goto LABEL_32;
        }

        v21 = *(v4 + 8 * v15);
      }

      v22 = v21;
      v23 = sub_27463BF7C();

      if (v23)
      {
        ++v15;
        v4 = v16;
        if (v17 != v5)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
}

uint64_t sub_2744F6098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 48)
  {
    result = sub_274434ED4(v3, v10);
    if (!v2)
    {
      break;
    }

    sub_274434ED4(i, v9);
    if ((MEMORY[0x277C58A40](v10, v9) & 1) == 0)
    {
      sub_2744AE910(v9);
      sub_2744AE910(v10);
      return 0;
    }

    v6 = v11;
    sub_2744AE910(v10);
    v7 = v9[5];
    sub_2744AE910(v9);
    result = v6 == v7;
    v8 = v6 != v7 || v2-- == 1;
    v3 += 48;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2744F6174(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_2744F7104();
  [v2 setNeedsLayout];

  return swift_unknownObjectRelease();
}

id sub_2744F624C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    v9 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item + 8);
    objc_allocWithZone(a2(0));
    v10 = swift_unknownObjectRetain();
    v11 = a3(v10, v9);
    v12 = *(v3 + v4);
    *(v8 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

id sub_2744F62F0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton);
  }

  else
  {
    v4 = sub_2744F6354(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_2744F6354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E0, &qword_274654B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = sub_27463C00C();
  MEMORY[0x28223BE20](v14);
  sub_274412734(0, &qword_28094F600, 0x277D75220);
  sub_27463BFFC();
  v15 = sub_27463C01C();
  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    sub_2744626F0(v13, v10, &qword_28094F5E0, &qword_274654B20);
    sub_27463C03C();
    sub_27440CB1C(v13, &qword_28094F5E0, &qword_274654B20);
  }

  else
  {
    sub_274412734(0, &unk_280951150, 0x277D755B8);
    sub_274557868(0xD000000000000011, 0x800000027468AE00);
    sub_27463BFEC();
    sub_27463C03C();
  }

  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14))
  {
    sub_2744626F0(v7, v10, &qword_28094F5E0, &qword_274654B20);
    sub_27463C03C();
    sub_27440CB1C(v7, &qword_28094F5E0, &qword_274654B20);
  }

  else
  {
    v16 = [objc_opt_self() quaternaryLabelColor];
    sub_27463BFDC();
    sub_27463C03C();
  }

  sub_27463C02C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14))
  {
    sub_2744626F0(v4, v10, &qword_28094F5E0, &qword_274654B20);
    sub_27463C03C();
    sub_27440CB1C(v4, &qword_28094F5E0, &qword_274654B20);
  }

  else
  {
    sub_27463BFCC();
    sub_27463C03C();
  }

  [v15 addTarget:a1 action:sel_removeAction forControlEvents:64];
  return v15;
}

id sub_2744F66B4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton] = 0;
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 1;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 95) = 0;
  v4 = &v2[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  *v4 = a1;
  *(v4 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActionCellHeaderView();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = sub_2744F61E4();
  OUTLINED_FUNCTION_20_9();

  v7 = sub_2744F6218();
  OUTLINED_FUNCTION_20_9();

  v8 = sub_2744F62F0();
  OUTLINED_FUNCTION_20_9();

  swift_unknownObjectRelease();
  return v5;
}

void sub_2744F67C4()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton) = 0;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 95) = 0;
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_2744F6884()
{
  v1 = v0;
  v2 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ActionCellHeaderView();
  objc_msgSendSuper2(&v57, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v64);
  v15 = sub_2744F8DC4();
  v16 = sub_2744F6218();
  v17 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
  sub_27452F448(v15, v58);
  v18 = *v58;
  v19 = *&v58[1];
  v20 = *&v58[2];
  v21 = *&v58[3];

  v22 = 0.0;
  if (v59)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v18;
  }

  if (v59)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v19;
  }

  if (v59)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v20;
  }

  if (v59)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v21;
  }

  [v16 setFrame_];

  v27 = sub_2744F62F0();
  v28 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton];
  sub_27452F448(v15, v60);
  v29 = *v60;
  v30 = *&v60[1];
  v31 = *&v60[2];
  v32 = *&v60[3];

  if (v61)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v29;
  }

  if (v61)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v30;
  }

  if (v61)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v31;
  }

  if (v61)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v32;
  }

  [v27 setFrame_];

  v37 = sub_2744F61E4();
  sub_27452F448(v15, v62);
  v38 = *v62;
  v39 = *&v62[1];
  v40 = *&v62[2];
  v41 = *&v62[3];

  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  if ((v63 & 1) == 0)
  {
    v22 = v38;
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  [*&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] frame];
  v66.origin.x = v45;
  v66.origin.y = v46;
  v66.size.width = v47;
  v66.size.height = v48;
  v65.origin.x = v22;
  v65.origin.y = v42;
  v65.size.width = v43;
  v65.size.height = v44;
  result = CGRectEqualToRect(v65, v66);
  if ((result & 1) == 0)
  {
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v54 = sub_27463BCEC();
    v50 = swift_allocObject();
    *(v50 + 2) = v1;
    v50[3] = v22;
    v50[4] = v42;
    v50[5] = v43;
    v50[6] = v44;
    aBlock[4] = sub_2744FB1E0;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    aBlock[2] = v51;
    aBlock[3] = &block_descriptor_39;
    v52 = _Block_copy(aBlock);
    v53 = v1;

    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2744FAEF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
    sub_27463C1EC();
    MEMORY[0x277C58440](0, v14, v7, v52);
    _Block_release(v52);

    (*(v55 + 8))(v7, v2);
    return (*(v10 + 8))(v14, v8);
  }

  return result;
}

void sub_2744F6D58(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_2744F61E4();
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  if (CGRectIsEmpty(v31) || (v19 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView, [*&a1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] frame], v20 == a5))
  {
    v21 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView;
    [*&a1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView] setFrame_];
    v22 = *&a1[v21];

    [v22 layoutIfNeeded];
  }

  else
  {
    v23 = objc_opt_self();
    v24 = *&a1[v19];
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    *(v25 + 32) = a3;
    *(v25 + 40) = a4;
    *(v25 + 48) = a5;
    v29[4] = sub_2744FB1F8;
    v29[5] = v25;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 1107296256;
    v29[2] = sub_27443E0E8;
    v29[3] = &block_descriptor_45_0;
    v26 = _Block_copy(v29);
    v27 = v24;
    v28 = a1;

    [v23 transitionWithView:v27 duration:5243008 options:v26 animations:0 completion:0.2];

    _Block_release(v26);
  }
}

void sub_2744F6F6C(double a1, double a2, double a3, double a4)
{
  v8 = sub_2744F61E4();
  [v8 setFrame_];
}

double sub_2744F7034(double a1)
{
  v2 = sub_2744F8DC4();
  sub_2744F536C(v2);
  v4 = v3;

  sub_2745F36B8(v4);

  return a1;
}

void sub_2744F7104()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E0, &qword_274654B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5E8, &qword_274654B28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_40_1();
  v47 = v12;
  v13 = &v0[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item];
  v14 = swift_unknownObjectRetain();
  sub_2744F9FE8(v14, v53);
  memcpy(__dst, v53, sizeof(__dst));
  swift_unknownObjectRelease();
  v15 = *&v53[24];
  if (*&v53[24] != 1)
  {
    v46 = v7;
    v55 = *v53;
    v56 = *&v53[16];
    memcpy(v54, &v53[32], sizeof(v54));
    v57 = *v53;
    v58 = *&v53[16];
    v59 = *&v53[24];
    v60 = *&v53[32];
    if (*&v53[24])
    {
      v45 = v4;
      v43 = v58;
      v44 = v60;
      v70 = *v53;
      v66 = *v53;
      v67 = v58;
      v68 = *&v53[24];
      v69 = v60;
      sub_2744FB154(v53, v65);
      sub_2744626F0(&v57, v65, &qword_28094F5F8, &unk_274654B30);
      v16 = sub_2744F61E4();
      v17 = v10;
      v19 = *v13;
      v18 = v13[1];
      swift_unknownObjectRetain();
      v20 = sub_2744F79A0();
      sub_274459324(v19, v18, &v66, 1, v20, 0, 16.0);

      v10 = v17;
      swift_unknownObjectRelease();

      v71 = v70;
      sub_27440CB1C(&v71, &qword_28094C298, &qword_27464F120);
      v72[0] = v43;
      v72[1] = v15;
      v4 = v45;
      sub_2744FB18C(v72);
      v73 = v44;
      sub_27440CB1C(&v73, &qword_28094C6B8, &qword_274654B40);
    }

    else
    {
      memcpy(v65, v53, 0x63uLL);
      sub_2744FAFE4(v65, &v61);
    }

    v21 = &v0[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state];
    memcpy(v52, &v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state], 0x63uLL);
    if (v52[3] != 1)
    {
      v61 = *v21;
      v62 = *(v21 + 2);
      v63 = v52[3];
      memcpy(v64, v21 + 32, sizeof(v64));
      memcpy(v65, __dst, 0x63uLL);
      memcpy(v51, v21, 0x63uLL);
      sub_2744FAFE4(v51, v50);
      v22 = sub_2744F92F0(&v61, v65);
      sub_2744FB01C(v52);
      if (v22)
      {
        sub_2744FB01C(v53);
        sub_2744FB01C(v53);
        return;
      }
    }

    memcpy(v51, v21, 0x63uLL);
    memcpy(v21, v53, 0x63uLL);
    sub_2744FB01C(v51);
    v23 = sub_2744F6218();
    *&v23[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item] = *v13;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    v24 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
    v25 = sub_2744FA330(v24);

    sub_2744F7E98(v47);
    sub_2744FB04C();
    v50[0] = sub_27463AE9C();
    sub_2746395AC();

    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = v55;
    *(v27 + 40) = v56;
    *(v27 + 48) = v15;
    memcpy((v27 + 56), v54, 0x43uLL);
    v49[4] = sub_2744FB130;
    v49[5] = v27;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v49[2] = v28;
    v49[3] = &block_descriptor_18;
    v29 = _Block_copy(v49);
    sub_2744FB154(v53, v50);
    v30 = v1;

    [v26 animateWithDuration:6 delay:v29 options:0 animations:0.3 completion:0.0];
    _Block_release(v29);
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v32 = sub_2744F62F0();
    if (v31)
    {
      sub_27463C02C();
      v33 = sub_27463C00C();
      if (__swift_getEnumTagSinglePayload(v10, 1, v33))
      {
        sub_2744626F0(v10, v46, &qword_28094F5E0, &qword_274654B20);
        sub_27463C03C();

        sub_2744FB01C(v53);
        OUTLINED_FUNCTION_11_11();
LABEL_13:
        sub_27440CB1C(v34, v35, v36);
        return;
      }

      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.737254902 green:0.588235294 blue:0.309803922 alpha:0.26];
      sub_27463BFDC();
    }

    else
    {
      sub_27463C02C();
      v37 = sub_27463C00C();
      if (__swift_getEnumTagSinglePayload(v4, 1, v37))
      {
        OUTLINED_FUNCTION_13_10();
        sub_2744626F0(v38, v39, v40, v41);
        sub_27463C03C();

        sub_2744FB01C(v53);
        OUTLINED_FUNCTION_18_7();
        goto LABEL_13;
      }

      v42 = [objc_opt_self() quaternaryLabelColor];
      sub_27463BFDC();
    }

    sub_27463C03C();
    sub_2744FB01C(v53);
  }
}

void sub_2744F7800(uint64_t a1, uint64_t a2)
{
  v3 = sub_2744F62F0();
  v5 = v3;
  v4 = 1.0;
  if (*(a2 + 56))
  {
    v4 = 0.0;
  }

  [v3 setAlpha_];
}

void sub_2744F7868()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item + 8);
  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_13_10();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_11();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = swift_unknownObjectRetain();
    sub_274443A54(v5, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2744F79A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274648560;
  v2 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
  OUTLINED_FUNCTION_25_8(v2);

  v3 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
  OUTLINED_FUNCTION_25_8(v3);

  v4 = objc_allocWithZone(MEMORY[0x277D7D7A8]);
  v5 = OUTLINED_FUNCTION_19_7();
  *(v1 + 32) = [v6 v7];
  v8 = *(*(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32);
  v9 = sub_2744497AC();

  if (v9 != 1)
  {
    v10 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
    OUTLINED_FUNCTION_25_8(v10);

    v11 = OUTLINED_FUNCTION_26_7(objc_allocWithZone(MEMORY[0x277D75520]));
    OUTLINED_FUNCTION_25_8(v11);

    v12 = objc_allocWithZone(MEMORY[0x277D7D7A8]);
    v13 = OUTLINED_FUNCTION_19_7();
    [v14 v15];
    MEMORY[0x277C57F30]();
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_27463B85C();
    }

    sub_27463B8AC();
  }

  return v1;
}

uint64_t sub_2744F7BA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item);
  swift_getObjectType();
  v2 = *(v1 + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_13_10();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_11();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 32);
    v7 = v2;
    v8 = swift_checkMetadataState();
    v9 = v6(v8, AssociatedConformanceWitness);
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for WorkflowEditorOptions(0));
    v11 = v2;
    v9 = [v10 init];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  if (v16)
  {
  }

  else
  {
    v12 = v2;
    if (!sub_2745E2570() && [*&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] displaysParameterSummary] && *&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary + 24] && !*&v12[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_resourceError])
    {
      sub_2745E27D4();
      v15 = v14;

      if (!v15)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

void sub_2744F7DA4(uint64_t *a1@<X8>)
{
  v2 = v1;
  if ((sub_2744F7BA8() & 1) != 0 && (v4 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item, v5 = *(*(v1 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32), v6 = sub_2745E2510(), v8 = v7, v5, v8))
  {
    v9 = *(*(*(v2 + v4) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummaryCoordinator);
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = (*(*(v2 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_parameterSummary);
    v11 = *v14;
    v12 = v14[1];
    v6 = v14[2];
    v8 = v14[3];
    v13 = v14[4];
    v9 = v14[5];
    sub_27448287C(*v14, v12, v6, v8, v13, v9);
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v13;
  a1[5] = v9;
}

uint64_t sub_2744F7E98@<X0>(uint64_t a1@<X8>)
{
  v158 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F428, &unk_2746546F0);
  OUTLINED_FUNCTION_3_24(v2, &__src[72]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F438, &qword_274654700);
  OUTLINED_FUNCTION_3_24(v5, &__src[56]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F418, &qword_274654A40);
  OUTLINED_FUNCTION_3_24(v8, &v166);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v147 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5C0, &qword_274654A48);
  OUTLINED_FUNCTION_3_24(v12, &v164);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5C8, &qword_274654A50);
  OUTLINED_FUNCTION_3_24(v15, &v163);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F5D0, &qword_274654A58);
  OUTLINED_FUNCTION_3_24(v18, &v165);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v20);
  v156 = sub_274638B7C();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v147 - v27;
  v29 = sub_274638B6C();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_0();
  v35 = (v34 - v33);
  v36 = sub_274638B8C();
  OUTLINED_FUNCTION_1();
  v154 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_0();
  v41 = v40 - v39;
  v160 = *(*(v1 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_item) + 32);
  if (sub_2744497AC() == 1)
  {
    v42 = [objc_opt_self() clearBackground];
    v43 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v44 = sub_27446D8F0(0xD000000000000019, 0x800000027468B680, v42);
    v45 = *MEMORY[0x277D76918];
    v46 = objc_allocWithZone(MEMORY[0x277D75520]);
    v47 = v44;
    v48 = [v46 initForTextStyle_];
    [v48 scaledValueForValue_];
    v50 = v49;

    *v35 = v50;
    v35[1] = v50;
    (*(v31 + 104))(v35, *MEMORY[0x277D7D690], v29);
    v51 = [objc_opt_self() wf_accentColor];
    v52 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    *v28 = v52;
    v28[8] = 1;
    (*(v22 + 104))(v28, *MEMORY[0x277D7D6C0], v156);
    sub_274638B9C();
    v53 = v154;
    (*(v154 + 16))(v155, v41, v36);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8, &unk_2746546E0);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v54, v55, MEMORY[0x277D7D6D8]);
    sub_2744F2B70();
    v56 = v157;
    sub_274639DDC();
    sub_2744626F0(v56, v159, &qword_28094F5D0, &qword_274654A58);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    sub_2744FAF40(v57, &qword_28094F5D0, &qword_274654A58, v58);
    OUTLINED_FUNCTION_1_20();
    sub_2744FAF40(v59, v60, v61, v62);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();

    sub_27440CB1C(v56, &qword_28094F5D0, &qword_274654A58);
    return (*(v53 + 8))(v41, v36);
  }

  v148 = v31;
  v149 = v11;
  v150 = v36;
  v64 = v160;
  if (sub_2744497AC() == 2)
  {
    v65 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v65 scaledValueForValue_];

    sub_274638B5C();
    v66 = sub_27463AC2C();
    sub_27463A43C();
    sub_27463A3FC();
    v67 = sub_27463A42C();

    KeyPath = swift_getKeyPath();
    if (qword_280949280 != -1)
    {
      swift_once();
    }

    v69 = qword_280965DC8;
    v70 = sub_27463ABDC();
    v71 = swift_getKeyPath();
    sub_27463B0CC();
    sub_2746392FC();
    *__src = v66;
    *&__src[8] = KeyPath;
    *&__src[16] = v67;
    *&__src[24] = v71;
    *&__src[32] = v70;
    memcpy(v155, __src, 0x58uLL);
    swift_storeEnumTagMultiPayload();
    sub_2744626F0(__src, v161, &qword_28094F3F8, &unk_2746546E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3F8, &unk_2746546E0);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v72, v73, MEMORY[0x277D7D6D8]);
    sub_2744F2B70();
    OUTLINED_FUNCTION_13_10();
    sub_274639DDC();
    OUTLINED_FUNCTION_13_10();
    sub_2744626F0(v74, v75, v76, v77);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_18_7();
    sub_2744FAF40(v78, v79, v80, v81);
    OUTLINED_FUNCTION_1_20();
    sub_2744FAF40(v82, v83, v84, v85);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();
    sub_27440CB1C(__src, &qword_28094F3F8, &unk_2746546E0);

    OUTLINED_FUNCTION_18_7();
  }

  else
  {
    v89 = [*&v64[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action] icon];
    if (v89)
    {
      v90 = v89;
      v147 = v28;
      sub_2744F8D0C(v64, v28);
      v91 = *MEMORY[0x277D76918];
      v92 = objc_allocWithZone(MEMORY[0x277D75520]);
      v93 = v90;
      v94 = [v92 initForTextStyle_];
      [v94 scaledValueForValue_];
      v96 = v95;

      *v35 = v96;
      v35[1] = v96;
      (*(v148 + 104))(v35, *MEMORY[0x277D7D690], v29);
      (*(v22 + 16))(v25, v28, v156);
      sub_274638B9C();
      v97 = v154;
      v98 = v150;
      (*(v154 + 16))(v152, v41, v150);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_30();
      sub_2744FAEF8(v99, v100, MEMORY[0x277D7D6D8]);
      sub_2744F2D70();
      v101 = v149;
      sub_274639DDC();
      sub_2744626F0(v101, v159, &qword_28094F418, &qword_274654A40);
      OUTLINED_FUNCTION_24_6();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_20();
      sub_2744FAF40(v102, v103, v104, v105);
      OUTLINED_FUNCTION_1_20();
      OUTLINED_FUNCTION_11_11();
      sub_2744FAF40(v106, v107, v108, v109);
      OUTLINED_FUNCTION_9_12();
      OUTLINED_FUNCTION_6_12();
      sub_274639DDC();

      OUTLINED_FUNCTION_11_11();
      sub_27440CB1C(v110, v111, v112);
      (*(v97 + 8))(v41, v98);
      return (*(v22 + 8))(v147, v156);
    }

    v113 = *(sub_27463970C() + 20);
    v114 = *MEMORY[0x277CE0118];
    sub_274639BFC();
    OUTLINED_FUNCTION_7();
    v116 = v151;
    (*(v115 + 104))(v151 + v113, v114);
    __asm { FMOV            V0.2D, #6.0 }

    *v116 = _Q0;
    v122 = [objc_opt_self() wf_systemGray3Color];
    v123 = sub_27463AB0C();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E400, &qword_274652600);
    *(v116 + *(v124 + 52)) = v123;
    *(v116 + *(v124 + 56)) = 256;
    v125 = *MEMORY[0x277D76918];
    v126 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v126 scaledValueForValue_];

    v127 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    [v127 scaledValueForValue_];

    sub_27463B0CC();
    sub_2746392FC();
    v128 = (v116 + *(v153 + 36));
    v129 = *&__src[16];
    *v128 = *__src;
    v128[1] = v129;
    v128[2] = *&__src[32];
    sub_2744626F0(v116, v152, &qword_28094F428, &unk_2746546F0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v130, v131, MEMORY[0x277D7D6D8]);
    sub_2744F2D70();
    sub_274639DDC();
    OUTLINED_FUNCTION_13_10();
    sub_2744626F0(v132, v133, v134, v135);
    OUTLINED_FUNCTION_24_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_20();
    sub_2744FAF40(v136, v137, v138, v139);
    OUTLINED_FUNCTION_1_20();
    OUTLINED_FUNCTION_18_7();
    sub_2744FAF40(v140, v141, v142, v143);
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_6_12();
    sub_274639DDC();

    OUTLINED_FUNCTION_18_7();
    sub_27440CB1C(v144, v145, v146);
    v86 = v116;
    v87 = &qword_28094F428;
    v88 = &unk_2746546F0;
  }

  return sub_27440CB1C(v86, v87, v88);
}

uint64_t sub_2744F8D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) iconColor];
  if (v3)
  {
    *a2 = v3;
    *(a2 + 8) = 1;
    v4 = *MEMORY[0x277D7D6C0];
  }

  else
  {
    v4 = *MEMORY[0x277D7D6D0];
  }

  v5 = sub_274638B7C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2744F8DC4()
{
  v1 = v0;
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  type metadata accessor for CGRect(0);
  sub_2744FAE90();
  v2 = sub_27463B4DC();
  v3 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v3 scaledValueForValue_];

  v4 = sub_2744F6218();
  CGSizeMake();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v2;
  sub_2745FC6F8(v4, isUniquelyReferenced_nonNull_native, v6, v8, v10, v12);

  v14 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___iconViewHost];
  sub_27452F448(v2, v56);
  v15 = *v56;
  v16 = *&v56[1];
  v17 = *&v56[2];
  v18 = *&v56[3];

  v19 = 0.0;
  if (v57)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v15;
  }

  if (v57)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v16;
  }

  if (v57)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v17;
  }

  if ((v57 & 1) == 0)
  {
    v19 = v18;
  }

  CGRectGetMidY(*(&v19 - 3));
  v23 = sub_2744F62F0();
  [v23 intrinsicContentSize];
  v25 = v24;
  v27 = v26;

  v28 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___deleteButton];
  [v1 bounds];
  CGRectGetWidth(v58);
  v29 = [v1 traitCollection];
  [v29 displayScale];

  BSFloatRoundForScale();
  v31 = v30;
  v32 = [v1 traitCollection];
  [v32 displayScale];

  BSFloatRoundForScale();
  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC6F8(v28, v35, v31, v34, v25, v27);

  v36 = sub_2744F61E4();
  v37 = sub_274458F80();

  [v37 singleLineHeight];
  v38 = [v1 traitCollection];
  [v38 displayScale];

  BSFloatRoundForScale();
  v39 = OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView;
  v40 = *&v1[OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView____lazy_storage___summaryView];
  CGSizeMake();
  v42 = v41;
  v43 = v40;
  [v43 sizeThatFits_];

  v44 = *&v1[v39];
  CGSizeMake();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v44;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_2745FC6F8(v53, v54, v46, v48, v50, v52);

  return v2;
}

uint64_t sub_2744F9190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_27463C6BC(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_27463C6BC();
    }
  }

  return result;
}

uint64_t sub_2744F9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_27463B71C();

  return sub_27463B71C();
}

uint64_t sub_2744F9280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27463C74C();
  sub_27463B71C();
  sub_27463B71C();
  return sub_27463C7AC();
}

uint64_t sub_2744F92F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v78 = *(a1 + 40);
  v79 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a1 + 24);
  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v25 = *(a2 + 16);
    v76 = *a2;
    v77 = *(a2 + 8);
    sub_27448287C(*a2, v77, v9, v10, v12, v11);
    sub_27448287C(v4, v5, v6, v13, v79, v78);
    sub_2744FAD34(v4, v5, v6, v13, v79, v78);
    v26 = v76;
    v27 = v77;
    v28 = v25;
    v29 = v10;
    v30 = v12;
    v31 = v11;
LABEL_46:
    sub_2744FAD34(v26, v27, v28, v29, v30, v31);
    goto LABEL_47;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    if (!v7)
    {
      v22 = *a1;
      v20 = *(a2 + 40);
      v21 = *(a1 + 8);
      sub_27448287C(*a2, 0, v9, v10, *(a2 + 32), v20);
      v32 = v6;
      v54 = v6;
      v34 = v13;
      v36 = v78;
      v35 = v79;
      sub_27448287C(v4, v5, v54, v13, v79, v78);
      goto LABEL_45;
    }

    v75 = *a1;
    v14 = v4 == v8 && v5 == v7;
    if (!v14)
    {
      v15 = *(a1 + 8);
      v72 = *(a2 + 16);
      v16 = *(a2 + 8);
      v17 = *a2;
      v18 = sub_27463C6BC();
      v8 = v17;
      v9 = v72;
      v7 = v16;
      v5 = v15;
      if ((v18 & 1) == 0)
      {
        v19 = v12;
        v20 = v11;
        v21 = v15;
        sub_27448287C(v17, v7, v72, v10, v19, v20);
        v22 = v75;
        v23 = v75;
        v24 = v15;
LABEL_15:
        v32 = v6;
        v33 = v6;
        v34 = v13;
        v36 = v78;
        v35 = v79;
        sub_27448287C(v23, v24, v33, v13, v79, v78);

LABEL_45:

        v26 = v22;
        v27 = v21;
        v28 = v32;
        v29 = v34;
        v30 = v35;
        v31 = v36;
        goto LABEL_46;
      }
    }
  }

  else
  {
    v75 = *a1;
    if (v7)
    {
      v20 = *(a2 + 40);
      v21 = 0;
      sub_27448287C(v8, v7, v9, v10, *(a2 + 32), v20);
      v22 = v4;
      v23 = v4;
      v24 = 0;
      goto LABEL_15;
    }
  }

  v74 = v5;
  v37 = v6;
  v14 = v6 == v9;
  v34 = v13;
  if (!v14 || v13 != v10)
  {
    v39 = v9;
    v40 = v10;
    v41 = v7;
    v42 = v8;
    v43 = sub_27463C6BC();
    v8 = v42;
    v9 = v39;
    v7 = v41;
    v10 = v40;
    if ((v43 & 1) == 0)
    {
      v65 = v12;
      v20 = v11;
      sub_27448287C(v42, v7, v39, v40, v65, v11);
      v21 = v74;
      v22 = v75;
      v66 = v37;
      v35 = v79;
      v67 = v37;
      v36 = v78;
      sub_27448287C(v75, v74, v66, v34, v79, v78);

      v32 = v67;
      goto LABEL_45;
    }
  }

  v44 = v12;
  v45 = v12;
  v20 = v11;
  sub_27448287C(v8, v7, v9, v10, v45, v11);
  v21 = v74;
  v73 = v37;
  v46 = v37;
  v36 = v78;
  v35 = v79;
  sub_27448287C(v75, v74, v46, v34, v79, v78);
  sub_2744F5B1C(v79, v44, qword_28094AE40);
  if ((v47 & 1) == 0)
  {

    v32 = v73;
    v22 = v75;
    goto LABEL_45;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  v48 = sub_27463BF7C();

  sub_2744FAD34(v75, v74, v73, v34, v79, v78);
  if (v48)
  {
LABEL_23:
    v49 = *(a1 + 48);
    v50 = *(a2 + 48);
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_47;
      }

      sub_274412734(0, &qword_28094F5B0, 0x277D79FB0);
      v51 = v50;
      v52 = v49;
      v53 = sub_27463BF7C();

      if ((v53 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v50)
    {
      goto LABEL_47;
    }

    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      goto LABEL_47;
    }

    v56 = *(a1 + 64);
    v55 = *(a1 + 72);
    v58 = *(a1 + 80);
    v57 = *(a1 + 88);
    v60 = *(a2 + 64);
    v59 = *(a2 + 72);
    v62 = *(a2 + 80);
    v61 = *(a2 + 88);
    if (v55)
    {
      if (v59)
      {
        v63 = v56 == v60 && v55 == v59;
        if (v63 || (sub_27463C6BC() & 1) != 0)
        {
          if (v58 == v62 && v57 == v61)
          {
            sub_2744FAD94(v60, v59, v58, v57);
            sub_2744FAD94(v56, v55, v58, v57);

            sub_2744FADD8(v56, v55);
          }

          else
          {
            v80 = sub_27463C6BC();
            sub_2744FAD94(v60, v59, v62, v61);
            sub_2744FAD94(v56, v55, v58, v57);

            sub_2744FADD8(v56, v55);
            if ((v80 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_53;
        }

        sub_2744FAD94(v60, v59, v62, v61);
        sub_2744FAD94(v56, v55, v58, v57);

        v70 = v56;
        v71 = v55;
LABEL_51:
        sub_2744FADD8(v70, v71);
        goto LABEL_47;
      }
    }

    else if (!v59)
    {
LABEL_53:
      if (((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && ((*(a1 + 97) ^ *(a2 + 97)) & 1) == 0)
      {
        v68 = *(a1 + 98) ^ *(a2 + 98) ^ 1;
        return v68 & 1;
      }

      goto LABEL_47;
    }

    sub_2744FAD94(*(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88));
    sub_2744FAD94(v56, v55, v58, v57);
    sub_2744FADD8(v56, v55);
    v70 = v60;
    v71 = v59;
    goto LABEL_51;
  }

LABEL_47:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_2744F9960(uint64_t a1)
{
  v2 = v1;
  if (v1[3])
  {
    v4 = v1[1];
    v5 = v1[4];
    sub_27463C76C();
    if (v4)
    {
      sub_27463B71C();
    }

    sub_27463B71C();
    sub_2744FAC90(a1, v5);
  }

  else
  {
    sub_27463C76C();
  }

  v6 = v1[6];
  sub_27463C76C();
  if (v6)
  {
    v7 = v6;
    sub_27463BF8C();
  }

  sub_27463C76C();
  if (v2[9])
  {
    sub_27463C76C();
    sub_27463B71C();
    sub_27463B71C();
  }

  else
  {
    sub_27463C76C();
  }

  sub_27463C76C();
  sub_27463C76C();
  return sub_27463C76C();
}

uint64_t sub_2744F9AB8()
{
  sub_27463C74C();
  sub_2744F9960(v1);
  return sub_27463C7AC();
}

uint64_t sub_2744F9AF8(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 3);
  if (v3 == 1)
  {
    v4 = *(a2 + 3) == 1;
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 2);
    v13 = v3;
    memcpy(v14, a1 + 2, sizeof(v14));
    v5 = *(a2 + 3);
    if (v5 == 1)
    {
      v4 = 0;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 2);
      v9 = v5;
      memcpy(v10, a2 + 2, sizeof(v10));
      v4 = sub_2744F92F0(&v11, &v7);
    }
  }

  return v4 & 1;
}

uint64_t sub_2744F9BAC(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    return MEMORY[0x277C58EA0](0);
  }

  memcpy(v4, (v1 + 32), sizeof(v4));
  MEMORY[0x277C58EA0](1);
  return sub_2744F9960(a1);
}

uint64_t sub_2744F9C2C()
{
  sub_27463C74C();
  v1 = *(v0 + 3);
  if (v1 == 1)
  {
    MEMORY[0x277C58EA0](0);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 2);
    v6 = v1;
    memcpy(v7, v0 + 2, sizeof(v7));
    MEMORY[0x277C58EA0](1);
    sub_2744F9960(v3);
  }

  return sub_27463C7AC();
}

uint64_t sub_2744F9CD4(uint64_t a1)
{
  sub_27463C74C();
  sub_27463B71C();
  sub_27463B71C();
  return sub_27463C7AC();
}

uint64_t sub_2744F9DD4(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_27463C74C();
  sub_2744F9960(&v3);
  return sub_27463C7AC();
}

uint64_t sub_2744F9E2C(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x63uLL);
  memcpy(__dst, a2, 0x63uLL);
  return sub_2744F92F0(v4, __dst) & 1;
}

uint64_t sub_2744F9F04(uint64_t a1)
{
  v2 = *(v1 + 3);
  sub_27463C74C();
  if (v2 == 1)
  {
    MEMORY[0x277C58EA0](0);
  }

  else
  {
    v5 = *v1;
    v6 = *(v1 + 2);
    v7 = v2;
    memcpy(v8, v1 + 2, sizeof(v8));
    MEMORY[0x277C58EA0](1);
    sub_2744F9960(v4);
  }

  return sub_27463C7AC();
}

uint64_t sub_2744F9F90(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x63uLL);
  memcpy(__dst, a2, 0x63uLL);
  return sub_2744F9AF8(v4, __dst) & 1;
}

double sub_2744F9FE8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_2744F7DA4(v26);
  v25 = v26[1];
  v22 = v26[0];
  v23 = v28;
  v24 = v27;
  swift_getObjectType();
  v5 = *(a1 + 32);
  v6 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
  v7 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) icon];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, OUTLINED_FUNCTION_11_11(), AssociatedTypeWitness = swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v12 = sub_274443980(AssociatedTypeWitness, AssociatedConformanceWitness), v9, v12))
  {
    v13 = 1;
  }

  else
  {
    v13 = [*(v5 + v6) isDeletable] ^ 1;
  }

  v14 = *(v5 + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_isExpanded);
  v15 = sub_2744F55B4();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    OUTLINED_FUNCTION_11_11();
    v18 = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedConformanceWitness();
    v20 = sub_274443980(v18, v19);
  }

  else
  {
    v20 = 0;
  }

  *a3 = v22;
  *(a3 + 16) = v25;
  *(a3 + 32) = v24;
  *(a3 + 40) = v23;
  *(a3 + 48) = v7;
  *(a3 + 56) = v13;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = v14;
  *(a3 + 97) = v15 & 1;
  *(a3 + 98) = v20;
  return result;
}

uint64_t sub_2744FA210()
{
  swift_unknownObjectRelease();

  return OUTLINED_FUNCTION_8_16(v0 + OBJC_IVAR____TtC14WorkflowEditor20ActionCellHeaderView_state);
}

id sub_2744FA330(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView);
  }

  else
  {
    v5 = v1;
    sub_27463AE9C();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809505F0, &unk_274657BF0));
    v7 = sub_27463959C();
    v8 = *(v1 + v2);
    *(v5 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_2744FA3D4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView] = 0;
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item];
  *v3 = a1;
  *(v3 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MenuPresentingIconView();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setShowsMenuAsPrimaryAction_];
  v5 = sub_2744FA330([v4 setContextMenuInteractionEnabled_]);
  [v4 addSubview_];

  swift_unknownObjectRelease();
  return v4;
}

void sub_2744FA4B8()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView____lazy_storage___hostingView) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2744FA558()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MenuPresentingIconView();
  v1 = objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = sub_2744FA330(v1);
  [v0 bounds];
  [v2 setFrame_];
}

double sub_2744FA650(uint64_t a1)
{
  v1 = sub_2744FA330(a1);
  CGSizeMake();
  [v1 systemLayoutSizeFittingSize_];
  v3 = v2;

  return v3;
}

id sub_2744FA6B4()
{
  sub_274412734(0, &qword_28094F5B8, 0x277D753B0);
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_27453BE24(0, 0, 0, sub_2744FAE1C, v0);
}

id sub_2744FA744(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_693D947299EE9BD7659EA54C1A8BF26822MenuPresentingIconView_item + 8);
  swift_getObjectType();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = swift_unknownObjectRetain();
    v9 = sub_274443B78(v8, v4, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();

    if (v9)
    {
      v5 = [v9 platformMenu];

      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:

  return v5;
}

id sub_2744FA964(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionSummarySectionVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionCellHeaderViewC5State33_693D947299EE9BD7659EA54C1A8BF268LLO13ConfigurationV15AuxiliaryButtonVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor20ActionCellHeaderViewC5State33_693D947299EE9BD7659EA54C1A8BF268LLO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744FAA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 99))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2744FAAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 95) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_2744FAB30(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 98) = 0;
    *(a1 + 96) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

unint64_t sub_2744FAB94()
{
  result = qword_28094F5A8;
  if (!qword_28094F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F5A8);
  }

  return result;
}

uint64_t sub_2744FABE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_274453594();
  MEMORY[0x277C58EA0](v3);
  result = sub_274453594();
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x277C58B20](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        MEMORY[0x277C58EA0](v7);
      }
    }
  }

  return result;
}

void sub_2744FAC90(uint64_t a1, uint64_t a2)
{
  v3 = sub_274453594();
  MEMORY[0x277C58EA0](v3);
  v4 = sub_274453594();
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x277C58B20](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_27463BF8C();
      }
    }
  }
}

uint64_t sub_2744FAD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {
  }

  return result;
}

double sub_2744FAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744FADD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744FAE24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 != 1)
  {
    sub_2744FAD34(result, a2, a3, a4, a5, a6);

    return sub_2744FADD8(a9, a10);
  }

  return result;
}

unint64_t sub_2744FAE90()
{
  result = qword_280950540;
  if (!qword_280950540)
  {
    sub_274412734(255, &qword_28094A4D8, 0x277D75D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950540);
  }

  return result;
}

uint64_t sub_2744FAEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2744FAF40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_0_30();
    sub_2744FAEF8(v7, v8, MEMORY[0x277D7D6D8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2744FB04C()
{
  result = qword_28094F5F0;
  if (!qword_28094F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F5E8, &qword_274654B28);
    sub_2744FAF40(&qword_28094F5D8, &qword_28094F5D0, &qword_274654A58, sub_2744F2B70);
    sub_2744FAF40(&qword_28094F410, &qword_28094F418, &qword_274654A40, sub_2744F2D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F5F0);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744FB228(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 99))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2744FB27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2744FB304()
{
  result = qword_28094F608;
  if (!qword_28094F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F608);
  }

  return result;
}

uint64_t sub_2744FB358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2744FB398(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2744FB3EC()
{
  result = qword_28094F610;
  if (!qword_28094F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_16@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);

  return sub_2744FAE24(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1));
}

id OUTLINED_FUNCTION_20_9()
{

  return [v0 (v2 + 2040)];
}

id OUTLINED_FUNCTION_25_8(void *a1)
{

  return [a1 (v1 + 2333)];
}

id OUTLINED_FUNCTION_26_7(void *a1)
{

  return [a1 (v2 + 1055)];
}

id sub_2744FB650@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_274638B1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D7D450], v5, v7);
  v25 = sub_274639C6C();
  LOBYTE(v31) = 0;
  sub_2744FE694(v3, v27);
  memcpy(v29, v27, 0x8AuLL);
  memcpy(__dst, v27, 0x8AuLL);
  sub_27445EAD4(v29, v26, &qword_28094F618, &qword_274654DB0);
  sub_27440CB1C(__dst, &qword_28094F618, &qword_274654DB0);
  memcpy(&v28[7], v29, 0x8AuLL);
  v10 = v31;
  v22 = sub_27463ABCC();
  KeyPath = swift_getKeyPath();
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  v23 = *(v3 + 24);
  v24 = v13;
  v27[0] = v12;
  v14 = swift_allocObject();
  v15 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v3 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F620, &unk_274654DE8);
  v17 = *(v16 + 56);
  (*(v6 + 32))(a1 + v17, v9, v5);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v5);
  *(a1 + 16) = v25;
  *(a1 + 24) = 0x4028000000000000;
  *(a1 + 32) = v10;
  memcpy((a1 + 33), v28, 0x91uLL);
  *(a1 + 178) = v31;
  *(a1 + 182) = v32;
  v18 = v22;
  *(a1 + 184) = KeyPath;
  *(a1 + 192) = v18;
  *(a1 + *(v16 + 60)) = 1;
  *a1 = sub_2744FFBCC;
  *(a1 + 8) = v14;
  sub_27445E9E4(v27, v26);

  v19 = v24;

  return v19;
}

uint64_t sub_2744FB8E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8, &qword_274650460);
  v149 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v150 = &v149 - v3;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F628, &qword_274654DF8);
  MEMORY[0x28223BE20](v161);
  v163 = (&v149 - v4);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F630, &qword_274654E00);
  MEMORY[0x28223BE20](v155);
  v156 = &v149 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F638, &qword_274654E08);
  MEMORY[0x28223BE20](v162);
  v158 = &v149 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F640, &qword_274654E10);
  v152 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v151 = &v149 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F648, &qword_274654E18);
  MEMORY[0x28223BE20](v8 - 8);
  v167 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v149 - v11;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F650, &qword_274654E20);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v149 - v14;
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(a1 + 32);
  v181 = v17;
  v19 = sub_27463B9CC();

  v20 = v18;
  sub_27445E9E4(&v181, &v175);
  v21 = sub_27463B9BC();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = *(a1 + 16);
  *(v22 + 32) = *a1;
  *(v22 + 48) = v24;
  *(v22 + 64) = *(a1 + 32);

  v25 = v20;
  sub_27445E9E4(&v181, &v175);
  v160 = v19;
  v26 = sub_27463B9BC();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v23;
  v28 = *(a1 + 16);
  *(v27 + 32) = *a1;
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F658, &qword_274654E28);
  sub_27463AF0C();
  *v178 = v172[0];
  *&v178[16] = *&v172[1];
  sub_27463B70C("Date Format", 11);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v29 = qword_28094BB00;
  v30 = sub_27463B66C();
  v31 = sub_27463B66C();

  v153 = v29;
  v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

  v33 = sub_27463B6AC();
  v35 = v34;

  *&v175 = v33;
  *(&v175 + 1) = v35;
  v154 = sub_274412BBC();
  *&v175 = sub_27463A53C();
  *(&v175 + 1) = v36;
  LOBYTE(v176) = v37 & 1;
  *(&v176 + 1) = v38;
  MEMORY[0x28223BE20](v175);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F660, &qword_274654E30);
  sub_2744FFBF4();
  sub_2744FFCD0();
  v170 = v15;
  sub_27463AE0C();
  *&v175 = v17;
  *(&v175 + 1) = v16;
  *&v176 = v25;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](v172, v39);
  v40 = *&v172[0];
  v41 = [*&v172[0] dateStyle];

  if (!v41)
  {
    goto LABEL_41;
  }

  v42 = sub_27463B6AC();
  v44 = v43;
  if (v42 == sub_27463B6AC() && v44 == v45)
  {
    goto LABEL_42;
  }

  v47 = sub_27463C6BC();

  if (v47)
  {
LABEL_9:

LABEL_43:

    v87 = v25;
    sub_27445E9E4(&v181, &v175);
    v88 = sub_27463B9BC();
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    v90 = MEMORY[0x277D85700];
    *(v89 + 24) = MEMORY[0x277D85700];
    v91 = *(a1 + 16);
    *(v89 + 32) = *a1;
    *(v89 + 48) = v91;
    *(v89 + 64) = *(a1 + 32);

    v92 = v87;
    sub_27445E9E4(&v181, &v175);
    v93 = sub_27463B9BC();
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v90;
    v95 = *(a1 + 16);
    *(v94 + 32) = *a1;
    *(v94 + 48) = v95;
    *(v94 + 64) = *(a1 + 32);
    type metadata accessor for WFDateFormattingStyle(0);
    sub_27463AF0C();
    *v178 = *&v172[0];
    *&v178[8] = *(v172 + 8);
    sub_27463B70C("Time Format", 11, v149);
    v96 = sub_27463B66C();
    v97 = sub_27463B66C();

    v98 = [v153 localizedStringForKey:v96 value:v97 table:0];

    v99 = sub_27463B6AC();
    v101 = v100;

    *&v175 = v99;
    *(&v175 + 1) = v101;
    *&v175 = sub_27463A53C();
    *(&v175 + 1) = v102;
    LOBYTE(v176) = v103 & 1;
    *(&v176 + 1) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6B0, &qword_274654E50);
    sub_2744FFC78();
    sub_27440CA78(&qword_28094F6B8, &qword_28094F6B0, &qword_274654E50, MEMORY[0x277CE14C0]);
    v105 = v151;
    sub_27463AE0C();
    v106 = v152;
    v107 = v157;
    (*(v152 + 16))(v156, v105, v157);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094F698, &qword_28094F640, &qword_274654E10, MEMORY[0x277CDF038]);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
    v108 = v158;
    sub_274639DDC();
    sub_27445EAD4(v108, v163, &qword_28094F638, &qword_274654E08);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688, &qword_274654E40);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();
    sub_27440CB1C(v108, &qword_28094F638, &qword_274654E08);
    (*(v106 + 8))(v105, v107);
    goto LABEL_44;
  }

  v48 = sub_27463B6AC();
  v50 = v49;
  if (v48 == sub_27463B6AC() && v50 == v51)
  {
    goto LABEL_42;
  }

  v53 = sub_27463C6BC();

  if (v53)
  {
    goto LABEL_9;
  }

  v54 = sub_27463B6AC();
  v56 = v55;
  if (v54 == sub_27463B6AC() && v56 == v57)
  {
    goto LABEL_42;
  }

  v59 = sub_27463C6BC();

  if (v59)
  {
    goto LABEL_9;
  }

  v60 = sub_27463B6AC();
  v62 = v61;
  if (v60 == sub_27463B6AC() && v62 == v63)
  {
    goto LABEL_42;
  }

  v65 = sub_27463C6BC();

  if (v65)
  {
    goto LABEL_9;
  }

  v66 = sub_27463B6AC();
  v68 = v67;
  if (v66 == sub_27463B6AC() && v68 == v69)
  {
LABEL_42:

    goto LABEL_43;
  }

  v71 = sub_27463C6BC();

  if (v71)
  {
    goto LABEL_9;
  }

  v72 = sub_27463B6AC();
  v74 = v73;
  v76 = v72 == sub_27463B6AC() && v74 == v75;
  v77 = v170;
  if (v76)
  {

    goto LABEL_47;
  }

  v78 = sub_27463C6BC();

  if (v78)
  {
LABEL_47:
    sub_27463B70C("ISO 8601 Time", 13, v149);
    v119 = sub_27463B66C();
    v120 = sub_27463B66C();

    v121 = [v153 localizedStringForKey:v119 value:v120 table:0];

    v122 = sub_27463B6AC();
    v124 = v123;

    *&v172[0] = v122;
    *(&v172[0] + 1) = v124;

    v125 = v25;
    sub_27445E9E4(&v181, &v175);
    v126 = sub_27463B9BC();
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    v128 = MEMORY[0x277D85700];
    *(v127 + 24) = MEMORY[0x277D85700];
    v129 = *(a1 + 16);
    *(v127 + 32) = *a1;
    *(v127 + 48) = v129;
    *(v127 + 64) = *(a1 + 32);

    v130 = v125;
    sub_27445E9E4(&v181, &v175);
    v131 = sub_27463B9BC();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v128;
    v133 = *(a1 + 16);
    *(v132 + 32) = *a1;
    *(v132 + 48) = v133;
    *(v132 + 64) = *(a1 + 32);
    sub_27463AF0C();
    v134 = v150;
    sub_27463AE4C();
    v135 = v149;
    v136 = v159;
    (*(v149 + 16))(v156, v134, v159);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094F698, &qword_28094F640, &qword_274654E10, MEMORY[0x277CDF038]);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
    v137 = v158;
    sub_274639DDC();
    sub_27445EAD4(v137, v163, &qword_28094F638, &qword_274654E08);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688, &qword_274654E40);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();

    sub_27440CB1C(v137, &qword_28094F638, &qword_274654E08);
    (*(v135 + 8))(v150, v136);
    goto LABEL_45;
  }

  v79 = sub_27463B6AC();
  v81 = v80;
  if (v79 == sub_27463B6AC() && v81 == v82)
  {

    goto LABEL_49;
  }

  v84 = sub_27463C6BC();

  if (v84)
  {
LABEL_49:

    v138 = v25;
    sub_27445E9E4(&v181, &v175);
    v139 = sub_27463B9BC();
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    v141 = MEMORY[0x277D85700];
    *(v140 + 24) = MEMORY[0x277D85700];
    v142 = *(a1 + 16);
    *(v140 + 32) = *a1;
    *(v140 + 48) = v142;
    *(v140 + 64) = *(a1 + 32);

    v143 = v138;
    sub_27445E9E4(&v181, &v175);
    v144 = sub_27463B9BC();
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    *(v145 + 24) = v141;
    v146 = *(a1 + 16);
    *(v145 + 32) = *a1;
    *(v145 + 48) = v146;
    *(v145 + 64) = *(a1 + 32);
    sub_27463AF0C();
    sub_2744FDD14(v175, *(&v175 + 1), v176, *(&v176 + 1), v178);
    v171 = 0;
    v172[0] = *v178;
    v172[1] = *&v178[16];
    v172[2] = v179;
    v173 = v180;
    v174 = 0;
    sub_2744FFF28(v178, &v175);
    sub_2744FFF28(v178, &v175);
    sub_2744FFD4C();
    sub_274639DDC();
    v147 = v176;
    v148 = v163;
    *v163 = v175;
    v148[1] = v147;
    v148[2] = *v177;
    *(v148 + 41) = *&v177[9];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688, &qword_274654E40);
    sub_2744FFDA0();
    sub_2744FFE84();
    sub_274639DDC();

    sub_2744FFF60(v178);
    sub_2744FFF60(v178);
    goto LABEL_45;
  }

LABEL_41:
  v178[0] = 1;
  v174 = 1;
  sub_2744FFD4C();
  sub_274639DDC();
  v85 = v176;
  v86 = v163;
  *v163 = v175;
  v86[1] = v85;
  v86[2] = *v177;
  *(v86 + 41) = *&v177[9];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F688, &qword_274654E40);
  sub_2744FFDA0();
  sub_2744FFE84();
  sub_274639DDC();
LABEL_44:
  v77 = v170;
LABEL_45:
  v109 = v165;
  v110 = *(v165 + 16);
  v111 = v164;
  v112 = v166;
  v110(v164, v77, v166);
  v113 = v169;
  v114 = v167;
  sub_27445EAD4(v169, v167, &qword_28094F648, &qword_274654E18);
  v115 = v168;
  v110(v168, v111, v112);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6A8, &qword_274654E48);
  sub_27445EAD4(v114, &v115[*(v116 + 48)], &qword_28094F648, &qword_274654E18);
  sub_27440CB1C(v113, &qword_28094F648, &qword_274654E18);
  v117 = *(v109 + 8);
  v117(v170, v112);
  sub_27440CB1C(v114, &qword_28094F648, &qword_274654E18);
  return (v117)(v111, v112);
}

void sub_2744FCDB4(uint64_t a1@<X2>, void *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 dateStyle];

  *a2 = v5;
}

uint64_t sub_2744FCE3C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2744FCEA4(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  return sub_27463AEBC();
}

id sub_2744FCEA4(void *a1)
{
  if (!a1)
  {
    v32 = objc_allocWithZone(MEMORY[0x277D7C318]);
    v33 = sel_initWithRelativeTimeStyle;
LABEL_24:

    return [v32 v33];
  }

  v3 = sub_27463B6AC();
  v5 = v4;
  if (v3 == sub_27463B6AC() && v5 == v6)
  {

    goto LABEL_28;
  }

  v8 = sub_27463C6BC();

  if (v8)
  {
LABEL_28:
    sub_2745000D0();
    v34 = *MEMORY[0x277CFC698];
    v48 = *(v1 + 16);
    v49 = *(v1 + 32);
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
    MEMORY[0x277C575F0](&v47, v36);
    v37 = v47;
    v38 = [v47 timeStyle];

    return sub_2744FF578(v34, v38);
  }

  v9 = sub_27463B6AC();
  v11 = v10;
  if (v9 == sub_27463B6AC() && v11 == v12)
  {

    goto LABEL_31;
  }

  v14 = sub_27463C6BC();

  if (v14)
  {
LABEL_31:
    v48 = *(v1 + 16);
    v49 = *(v1 + 32);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
    MEMORY[0x277C575F0](&v47, v39);
    v40 = v47;
    v41 = [v47 includesTimeForISO8601];

    return [objc_allocWithZone(MEMORY[0x277D7C318]) initWithISO8601DateStyleAndTime_];
  }

  v15 = sub_27463B6AC();
  v17 = v16;
  if (v15 == sub_27463B6AC() && v17 == v18)
  {

    goto LABEL_33;
  }

  v20 = sub_27463C6BC();

  if (v20)
  {
LABEL_33:
    v32 = objc_allocWithZone(MEMORY[0x277D7C318]);
    v33 = sel_initWithRFC2822DateStyle;
    goto LABEL_24;
  }

  v21 = sub_27463B6AC();
  v23 = v22;
  if (v21 == sub_27463B6AC() && v23 == v24)
  {
  }

  else
  {
    v26 = sub_27463C6BC();

    if ((v26 & 1) == 0)
    {
      sub_2745000D0();
      v48 = *(v1 + 16);
      v49 = *(v1 + 32);
      v27 = a1;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
      MEMORY[0x277C575F0](&v47, v28);
      v29 = v47;
      v30 = [v47 timeStyle];

      return sub_2744EBB30(a1, v30, 0);
    }
  }

  v48 = *(v1 + 16);
  v49 = *(v1 + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v47, v42);
  sub_274500010(v47);
  v43 = sub_2744FDBE4();
  v45 = v44;

  v46 = objc_allocWithZone(MEMORY[0x277D7C318]);
  return sub_2744FFABC(v43, v45);
}

uint64_t sub_2744FD2D8(uint64_t a1)
{
  v8 = sub_2744FD414();
  swift_getKeyPath();
  v2 = *(a1 + 32);
  v9 = *(a1 + 16);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  sub_27445E9E4(&v9, v7);

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6D0, &qword_274654E90);
  sub_27440CA78(&qword_28094F6D8, &qword_28094F6D0, &qword_274654E90, MEMORY[0x277D83980]);
  sub_2744FFBF4();
  return sub_27463AF7C();
}

uint64_t sub_2744FD414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E0, &unk_274654E98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274654CF0;
  v1 = *MEMORY[0x277CFC680];
  v2 = *MEMORY[0x277CFC698];
  v3 = MEMORY[0x277CFC678];
  *(v0 + 32) = *MEMORY[0x277CFC680];
  *(v0 + 40) = v2;
  v4 = *v3;
  v5 = *MEMORY[0x277CFC670];
  *(v0 + 48) = *v3;
  *(v0 + 56) = v5;
  v6 = *MEMORY[0x277CFC688];
  v7 = *MEMORY[0x277CFC668];
  *(v0 + 64) = *MEMORY[0x277CFC688];
  *(v0 + 72) = v7;
  v8 = *MEMORY[0x277CFC690];
  *(v0 + 80) = *MEMORY[0x277CFC690];
  *(v0 + 88) = 0;
  v9 = *MEMORY[0x277CFC660];
  *(v0 + 96) = *MEMORY[0x277CFC660];
  v10 = v1;
  v11 = v2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return v0;
}

uint64_t sub_2744FD510@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2744FD570(*a1);
  sub_274412BBC();
  result = sub_27463A53C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2744FD570(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_27463B6AC();
    v3 = v2;
    if (v1 == sub_27463B6AC() && v3 == v4)
    {
    }

    else
    {
      v6 = sub_27463C6BC();

      if ((v6 & 1) == 0)
      {
        v7 = sub_27463B6AC();
        v9 = v8;
        if (v7 == sub_27463B6AC() && v9 == v10)
        {
        }

        else
        {
          v12 = sub_27463C6BC();

          if ((v12 & 1) == 0)
          {
            v13 = sub_27463B6AC();
            v15 = v14;
            if (v13 == sub_27463B6AC() && v15 == v16)
            {
            }

            else
            {
              v18 = sub_27463C6BC();

              if ((v18 & 1) == 0)
              {
                v19 = sub_27463B6AC();
                v21 = v20;
                if (v19 == sub_27463B6AC() && v21 == v22)
                {
                }

                else
                {
                  v24 = sub_27463C6BC();

                  if ((v24 & 1) == 0)
                  {
                    v25 = sub_27463B6AC();
                    v27 = v26;
                    if (v25 == sub_27463B6AC() && v27 == v28)
                    {
                    }

                    else
                    {
                      v30 = sub_27463C6BC();

                      if ((v30 & 1) == 0)
                      {
                        v31 = sub_27463B6AC();
                        v33 = v32;
                        if (v31 == sub_27463B6AC() && v33 == v34)
                        {
                        }

                        else
                        {
                          v36 = sub_27463C6BC();

                          if ((v36 & 1) == 0)
                          {
                            v37 = sub_27463B6AC();
                            v39 = v38;
                            if (v37 == sub_27463B6AC() && v39 == v40)
                            {
                            }

                            else
                            {
                              v42 = sub_27463C6BC();

                              if ((v42 & 1) == 0)
                              {
                                v43 = sub_27463B6AC();
                                v45 = v44;
                                if (v43 == sub_27463B6AC() && v45 == v46)
                                {
                                }

                                else
                                {
                                  v48 = sub_27463C6BC();

                                  if ((v48 & 1) == 0)
                                  {
                                    return 0;
                                  }
                                }

                                v50 = "Custom";
                                goto LABEL_56;
                              }
                            }

                            v50 = "RFC 2822";
LABEL_61:
                            v51 = 8;
                            goto LABEL_47;
                          }
                        }

                        v50 = "ISO 8601";
                        goto LABEL_61;
                      }
                    }

                    v50 = "Relative";
                    goto LABEL_61;
                  }
                }

                v50 = "Long";
LABEL_46:
                v51 = 4;
LABEL_47:
                sub_27463B70C(v50, v51);
                goto LABEL_48;
              }
            }

            v50 = "Medium";
LABEL_56:
            v51 = 6;
            goto LABEL_47;
          }
        }

        sub_27463B70C("Short", 5);
        goto LABEL_48;
      }
    }

    v50 = "None";
    goto LABEL_46;
  }

  sub_27463B70C("How Long Ago/Until", 18);
LABEL_48:
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v52 = qword_28094BB00;
  v53 = sub_27463B66C();
  v54 = sub_27463B66C();

  v55 = [v52 localizedStringForKey:v53 value:v54 table:0];

  v49 = sub_27463B6AC();
  return v49;
}

void sub_2744FDA58(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 includesTimeForISO8601];

  *a2 = v5;
}

uint64_t sub_2744FDAD8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [objc_allocWithZone(MEMORY[0x277D7C318]) initWithISO8601DateStyleAndTime_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  return sub_27463AEBC();
}

uint64_t sub_2744FDB58@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v8, v3);
  sub_274500010(v8);
  v4 = sub_2744FDBE4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_2744FDBE4()
{
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v7, v1);
  v2 = sub_274500010(v7);
  if (v3)
  {
    return v2;
  }

  v5 = WFDateFormattingGetLocalizedDefaultCustomDateFormat();
  v4 = sub_27463B6AC();

  return v4;
}

uint64_t sub_2744FDC80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  objc_allocWithZone(MEMORY[0x277D7C318]);

  sub_2744FFABC(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  return sub_27463AEBC();
}

void *sub_2744FDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808, &qword_274652D80);
  result = MEMORY[0x277C575F0](v14, v10);
  v12 = v14[0];
  v13 = v14[1];
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v12;
  a5[5] = v13;
  a5[6] = 0;
  return result;
}

void sub_2744FDD98(uint64_t a1@<X2>, void *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v6, v3);
  v4 = v6;
  v5 = [v6 timeStyle];

  if (!v5)
  {
    v5 = *MEMORY[0x277CFC680];
  }

  *a2 = v5;
}

uint64_t sub_2744FDE38(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](&v20);
  v7 = v20;
  v8 = [v20 dateStyle];

  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v9 = v5;
  MEMORY[0x277C575F0](&v20, v6);
  v10 = v20;
  v11 = [v20 relativeDateStyle];

  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  MEMORY[0x277C575F0](&v20, v6);
  v12 = sub_274500010(v20);
  v14 = v13;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  MEMORY[0x277C575F0](&v20, v6);
  v15 = v20;
  v16 = [v20 includesTimeForISO8601];

  v17 = objc_allocWithZone(MEMORY[0x277D7C318]);
  v18 = sub_2744FFB20(v8, v5, v11, v12, v14, v16);
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  v20 = v18;
  return sub_27463AEBC();
}

uint64_t sub_2744FDFE0@<X0>(char *a1@<X8>)
{
  v90 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6C0, &qword_274654E58);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v91 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v94 = &v83 - v3;
  MEMORY[0x28223BE20](v4);
  v93 = &v83 - v5;
  MEMORY[0x28223BE20](v6);
  v92 = &v83 - v7;
  MEMORY[0x28223BE20](v8);
  v88 = (&v83 - v9);
  MEMORY[0x28223BE20](v10);
  v86 = (&v83 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v83 - v17;
  sub_27463B70C("None", 4, v16);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v19 = qword_28094BB00;
  v20 = sub_27463B66C();
  v21 = sub_27463B66C();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_27463B6AC();
  v25 = v24;

  v95 = v23;
  v96 = v25;
  sub_274412BBC();
  v26 = sub_27463A53C();
  v27 = *MEMORY[0x277CFC680];
  *v18 = v26;
  *(v18 + 1) = v28;
  v18[16] = v29 & 1;
  *(v18 + 3) = v30;
  *(v18 + 4) = v27;
  v18[40] = 1;
  v31 = v27;
  sub_27463B70C("Short", 5);
  v32 = sub_27463B66C();
  v85 = v18;
  v33 = v32;
  v34 = sub_27463B66C();

  v35 = [v19 localizedStringForKey:v33 value:v34 table:0];

  v36 = sub_27463B6AC();
  v38 = v37;

  v95 = v36;
  v96 = v38;
  v39 = sub_27463A53C();
  v40 = *MEMORY[0x277CFC698];
  *v14 = v39;
  *(v14 + 1) = v41;
  v14[16] = v42 & 1;
  *(v14 + 3) = v43;
  *(v14 + 4) = v40;
  v14[40] = 1;
  v44 = v14;
  v84 = v14;
  v45 = v40;
  sub_27463B70C("Medium", 6);
  v46 = sub_27463B66C();
  v47 = sub_27463B66C();

  v48 = [v19 localizedStringForKey:v46 value:v47 table:0];

  v49 = sub_27463B6AC();
  v51 = v50;

  v95 = v49;
  v96 = v51;
  v52 = sub_27463A53C();
  v53 = *MEMORY[0x277CFC678];
  v54 = v86;
  *v86 = v52;
  v54[1] = v55;
  *(v54 + 16) = v56 & 1;
  v54[3] = v57;
  v54[4] = v53;
  *(v54 + 40) = 1;
  v58 = v53;
  sub_27463B70C("Long", 4);
  v59 = sub_27463B66C();
  v60 = sub_27463B66C();

  v61 = [v19 localizedStringForKey:v59 value:v60 table:0];

  v62 = sub_27463B6AC();
  v64 = v63;

  v95 = v62;
  v96 = v64;
  v65 = sub_27463A53C();
  v83 = *MEMORY[0x277CFC670];
  v66 = v83;
  v68 = v87;
  v67 = v88;
  *v88 = v65;
  v67[1] = v69;
  *(v67 + 16) = v70 & 1;
  v67[3] = v71;
  v67[4] = v66;
  *(v67 + 40) = 1;
  v72 = *(v68 + 16);
  v73 = v92;
  v74 = v89;
  v72(v92, v18, v89);
  v75 = v93;
  v72(v93, v44, v74);
  v72(v94, v54, v74);
  v76 = v91;
  v72(v91, v67, v74);
  v77 = v90;
  v72(v90, v73, v74);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6C8, qword_274654E60);
  v72(&v77[v78[12]], v75, v74);
  v79 = v94;
  v72(&v77[v78[16]], v94, v74);
  v72(&v77[v78[20]], v76, v74);
  v80 = *(v68 + 8);
  v81 = v83;
  v80(v67, v74);
  v80(v54, v74);
  v80(v84, v74);
  v80(v85, v74);
  v80(v76, v74);
  v80(v79, v74);
  v80(v93, v74);
  return (v80)(v92, v74);
}

uint64_t sub_2744FE694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v4 = sub_274637F2C();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_27463803C();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2744FEF84();
  v83 = *(a1 + 16);
  v84 = *(a1 + 32);
  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F678, &qword_274654E38);
  MEMORY[0x277C575F0](v78);
  v11 = v78[0];
  v67 = [v78[0] dateStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v78, v10);
  v12 = v78[0];
  v66 = [v78[0] timeStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v78, v10);
  v13 = v78[0];
  v14 = [v78[0] relativeDateStyle];

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v78, v10);
  sub_274500010(v78[0]);
  if (v15)
  {
    v16 = sub_27463B66C();
  }

  else
  {
    v16 = 0;
  }

  *__src = *(a1 + 16);
  *&__src[16] = *(a1 + 32);
  MEMORY[0x277C575F0](v78, v10);
  v17 = v78[0];
  v18 = [v78[0] includesTimeForISO8601];

  v19 = [objc_opt_self() systemTimeZone];
  sub_27463802C();

  v20 = sub_27463801C();
  (*(v7 + 8))(v9, v68);
  sub_274637F1C();
  v21 = sub_274637EFC();
  (v69)[1](v6, v70);
  v23 = v66;
  v22 = v67;
  v24 = [v72 wf:v67 formattedStringWithDateStyle:v66 timeStyle:v14 relativeDateStyle:v16 customDateFormat:v18 includeTimeForISO8601:v20 timeZone:v21 locale:?];

  v25 = sub_27463B6AC();
  v27 = v26;

  v70 = sub_274639B2C();
  sub_27463B70C("Example: %@", 11);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v28 = qword_28094BB00;
  v29 = sub_27463B66C();
  v30 = sub_27463B66C();

  v69 = v28;
  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_274648570;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = sub_27440F250();
  *(v32 + 32) = v25;
  *(v32 + 40) = v27;

  v33 = sub_27463B67C();
  v35 = v34;

  *__src = v33;
  *&__src[8] = v35;
  sub_274412BBC();
  v36 = sub_27463A53C();
  v38 = v37;
  LOBYTE(v33) = v39;
  v41 = v40;

  v42 = v33 & 1;
  sub_27440B094(v36, v38, v33 & 1);
  sub_274412C10(v36, v38, v33 & 1);

  v82 = 1;
  v81 = v33 & 1;
  v80 = 1;
  *__src = v83;
  *&__src[16] = v84;
  MEMORY[0x277C575F0](v78, v10);
  v43 = v78[0];
  v44 = [v78[0] dateStyle];

  if (!v44)
  {
    goto LABEL_12;
  }

  v45 = sub_27463B6AC();
  v47 = v46;
  if (v45 == sub_27463B6AC() && v47 == v48)
  {

    goto LABEL_14;
  }

  v50 = sub_27463C6BC();

  if (v50)
  {
LABEL_14:
    v51 = sub_274639B2C();
    sub_27463B70C("This format follows the patterns in Unicode Technical Standard #35.", 67);
    v52 = sub_27463B66C();
    v53 = sub_27463B66C();

    v54 = [v69 localizedStringForKey:v52 value:v53 table:0];

    v55 = sub_27463B6AC();
    v57 = v56;

    *__src = v55;
    *&__src[8] = v57;
    v58 = sub_27463A53C();
    v60 = v59;
    v62 = v61;
    LOBYTE(v57) = v63 & 1;
    sub_27440B094(v58, v59, v63 & 1);

    sub_274412C10(v58, v60, v57);

    v76[0] = 1;
    v74 = v57;
    v73 = 1;
    v77[0] = 0;
    v78[0] = v51;
    v78[1] = 0;
    LOBYTE(v78[2]) = 1;
    v78[3] = v58;
    v78[4] = v60;
    LOBYTE(v78[5]) = v57;
    v78[6] = v62;
    v78[7] = 0;
    LOWORD(v78[8]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E8, &qword_274654EA8);
    sub_27440CA78(&qword_28094F6F0, &qword_28094F6E8, &qword_274654EA8, MEMORY[0x277CE1138]);
    sub_274639DDC();
    goto LABEL_15;
  }

LABEL_12:
  v77[0] = 1;
  BYTE1(v78[8]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F6E8, &qword_274654EA8);
  sub_27440CA78(&qword_28094F6F0, &qword_28094F6E8, &qword_274654EA8, MEMORY[0x277CE1138]);
  sub_274639DDC();
LABEL_15:
  memcpy(v76, __src, sizeof(v76));
  memcpy(v77, __src, 0x42uLL);
  sub_27440B094(v36, v38, v42);

  sub_27445EAD4(v77, v78, &qword_28094F6F8, &qword_274654EB0);

  memcpy(&v75[7], v77, 0x42uLL);
  v64 = v71;
  *v71 = v70;
  v64[1] = 0;
  *(v64 + 16) = 1;
  v64[3] = v36;
  v64[4] = v38;
  *(v64 + 40) = v42;
  v64[6] = v41;
  v64[7] = 0;
  *(v64 + 64) = 1;
  memcpy(v64 + 65, v75, 0x49uLL);
  memcpy(v78, v76, 0x42uLL);
  sub_27440CB1C(v78, &qword_28094F700, &qword_274654EB8);
  sub_274412C10(v36, v38, v42);
}

uint64_t sub_2744FEF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30, &qword_274654EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v47 = &v36 - v1;
  v44 = sub_274637E8C();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v43 = sub_274637F6C();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274637F8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F708, &qword_274654EC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F710, &qword_274654ED0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v36 - v19;
  v21 = sub_274637D2C();
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x28223BE20](v21);
  v40 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274637F4C();
  v37 = v8;
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
  sub_274637F4C();
  v39 = v17;
  sub_274637F5C();
  v23 = *(v9 + 8);
  v36 = v9 + 8;
  v38 = v23;
  v23(v14, v8);
  v24 = sub_27463803C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  sub_274637F4C();
  v25 = v42;
  v26 = v43;
  (*(v6 + 104))(v42, *MEMORY[0x277CC9988], v43);
  sub_274637E7C();
  sub_274637F7C();
  v27 = v44;
  v41 = *(v49 + 8);
  v41(v5, v44);
  (*(v6 + 8))(v25, v26);
  v28 = v11;
  v30 = v37;
  v29 = v38;
  v38(v28, v37);
  v31 = v47;
  v32 = v40;
  sub_274637D1C();
  sub_274637F4C();
  sub_274637F3C();
  v29(v14, v30);
  if (__swift_getEnumTagSinglePayload(v31, 1, v27) == 1)
  {
    v33 = v48;
    sub_274637E7C();
    if (__swift_getEnumTagSinglePayload(v31, 1, v27) != 1)
    {
      sub_27440CB1C(v31, &unk_280952E30, &qword_274654EC0);
    }
  }

  else
  {
    v33 = v48;
    (*(v49 + 32))(v48, v31, v27);
  }

  v34 = sub_274637E5C();
  v41(v33, v27);
  (*(v45 + 8))(v32, v46);
  return v34;
}

id sub_2744FF578(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRelativeDateStyle:a1 timeStyle:a2];

  return v4;
}

uint64_t sub_2744FF5D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688, &qword_27465C710);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F720, &unk_274654F90);
  v26 = *(v6 - 8);
  v27 = v6;
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v24 - v8;
  sub_27463B70C("Custom Format", 13, v7);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v10 = qword_28094BB00;
  v11 = sub_27463B66C();
  v12 = sub_27463B66C();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_27463B6AC();
  v16 = v15;

  v32 = v14;
  v33 = v16;
  v30 = *(v2 + 32);
  v31 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463AD0C();
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = *(v2 + 48);
  v19 = swift_allocObject();
  v20 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = *(v2 + 48);
  sub_2744FFF28(v2, v29);
  sub_2744FFF28(v2, v29);
  sub_274412BBC();
  sub_27463B17C();
  v21 = sub_27440CA78(&qword_280952FC0, &qword_28094D688, &qword_27465C710, MEMORY[0x277CDF1A8]);
  MEMORY[0x277C56F80](1, v3, v21);
  (*(v25 + 8))(v5, v3);
  v29[0] = v3;
  v29[1] = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v27;
  sub_27463A7DC();
  return (*(v26 + 8))(v9, v22);
}

uint64_t sub_2744FF9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463ACEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E808, &qword_274652D80);
  return sub_27463AEBC();
}

id sub_2744FFABC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCustomDateFormat_];

  return v4;
}

id sub_2744FFB20(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  if (a5)
  {
    v12 = sub_27463B66C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithDateStyle:a1 timeStyle:a2 relativeDateStyle:a3 customDateFormat:v12 includesTimeForISO8601:a6 & 1];

  return v13;
}

unint64_t sub_2744FFBF4()
{
  result = qword_28094F668;
  if (!qword_28094F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F658, &qword_274654E28);
    sub_2744FFC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F668);
  }

  return result;
}

unint64_t sub_2744FFC78()
{
  result = qword_280949BA0;
  if (!qword_280949BA0)
  {
    type metadata accessor for WFDateFormattingStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949BA0);
  }

  return result;
}

unint64_t sub_2744FFCD0()
{
  result = qword_28094F670;
  if (!qword_28094F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F660, &qword_274654E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F670);
  }

  return result;
}

unint64_t sub_2744FFD4C()
{
  result = qword_28094F680;
  if (!qword_28094F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F680);
  }

  return result;
}

unint64_t sub_2744FFDA0()
{
  result = qword_28094F690;
  if (!qword_28094F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F638, &qword_274654E08);
    sub_27440CA78(&qword_28094F698, &qword_28094F640, &qword_274654E10, MEMORY[0x277CDF038]);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F690);
  }

  return result;
}

unint64_t sub_2744FFE84()
{
  result = qword_28094F6A0;
  if (!qword_28094F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F688, &qword_274654E40);
    sub_2744FFD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F6A0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274500010(void *a1)
{
  v2 = [a1 customDateFormat];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

unint64_t sub_2745000D0()
{
  result = qword_28094F1F0;
  if (!qword_28094F1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094F1F0);
  }

  return result;
}

uint64_t sub_274500140(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return sub_2744FF9B0();
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{

  return swift_deallocObject();
}

uint64_t sub_274500210()
{
  v9[4] = sub_274500400();
  swift_getKeyPath();
  v1 = *v0;
  v10 = v0[2];
  v11 = v1;
  v2 = swift_allocObject();
  v3 = *(v0 + 1);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v0[4];
  sub_27445E9E4(&v11, v9);

  sub_274439BF0(&v10, v9, &qword_28094F200, &qword_274654370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F728, &qword_274655070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F730, &qword_274655078);
  sub_27440CA78(&qword_28094F738, &qword_28094F728, &qword_274655070, MEMORY[0x277D83980]);
  sub_274501860();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F748, &qword_274655080);
  v5 = sub_2746396BC();
  v6 = sub_27440CA78(&qword_28094F750, &qword_28094F748, &qword_274655080, MEMORY[0x277CDF028]);
  v7 = sub_2745018B4();
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return sub_27463AF7C();
}

uint64_t sub_274500400()
{
  v0 = sub_2745014E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8B0, &qword_27464BC18);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274648570;
  *(v7 + 32) = v0;
  *(v7 + 40) = v2;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6 & 1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = v4;
  v36 = v4;

  v9 = [ObjCClassFromMetadata allProperties];
  sub_274501B64();
  v10 = sub_27463B81C();

  v39 = v10;
  result = sub_274453594();
  if (!result)
  {
LABEL_21:

    return v7;
  }

  v12 = result;
  if (result >= 1)
  {
    v13 = 0;
    v37 = v10 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v14 = MEMORY[0x277C58B20](v13, v39);
      }

      else
      {
        v14 = *(v39 + 8 * v13 + 32);
      }

      v15 = v14;
      if (v38 && [v14 isEquivalentToProperty_])
      {
      }

      else
      {
        v16 = v15;
        v17 = [v16 localizedName];
        v18 = sub_27463B6AC();
        v20 = v19;

        v21 = *(v7 + 16);
        v22 = *(v7 + 24);
        v23 = v16;
        if (v21 >= v22 >> 1)
        {
          sub_274450908(v22 > 1, v21 + 1, 1, v7);
          v7 = v34;
        }

        *(v7 + 16) = v21 + 1;
        v24 = v7 + 32 * v21;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        *(v24 + 48) = v16;
        *(v24 + 56) = 0;
        if ([v23 hasNegative])
        {
          v25 = sub_2744A4C3C(v23, &selRef_localizedNegativeName);
          if (v26)
          {
            v27 = v25;
            v28 = v26;
          }

          else
          {
            v29 = [v23 localizedName];

            v27 = sub_27463B6AC();
            v28 = v30;
          }

          v32 = *(v7 + 16);
          v31 = *(v7 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_274450908(v31 > 1, v32 + 1, 1, v7);
            v7 = v35;
          }

          *(v7 + 16) = v32 + 1;
          v33 = v7 + 32 * v32;
          *(v33 + 32) = v27;
          *(v33 + 40) = v28;
          *(v33 + 48) = v16;
          *(v33 + 56) = 1;
        }

        else
        {
        }
      }

      ++v13;
    }

    while (v12 != v13);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745006E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_2746396BC();
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F748, &qword_274655080);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(a1 + 24);
  v16 = *a2;
  v33 = a2[2];
  v34 = v16;
  v17 = swift_allocObject();
  v18 = *(a2 + 1);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v18;
  *(v17 + 48) = a2[4];
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  *(v17 + 72) = v14;
  *(v17 + 80) = v15;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = a2;
  sub_27445E9E4(&v34, v32);

  sub_274439BF0(&v33, v32, &qword_28094F200, &qword_274654370);
  v19 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F758, &qword_274655088);
  sub_274501934();
  sub_27463AD5C();
  sub_2746396AC();
  sub_27440CA78(&qword_28094F750, &qword_28094F748, &qword_274655080, MEMORY[0x277CDF028]);
  sub_2745018B4();
  v21 = v23;
  v20 = v24;
  sub_27463A69C();
  (*(v25 + 8))(v8, v20);
  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_2745009B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  sub_274500A88(&v8);
  v11[0] = v9[0];
  *(v11 + 9) = *(v9 + 9);
  v10 = v8.n128_u64[0];
  v6 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F780, &qword_2746550A8);
  sub_27463AEBC();
  sub_274501A18(&v10);

  return sub_274415174(v11, &qword_28094F788, &qword_2746550B0);
}

__n128 sub_274500A88@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v20 = v1[2];
  v21 = v4;
  sub_27463B9CC();
  sub_27445E9E4(&v21, v16);

  sub_274439BF0(&v20, v16, &qword_28094F200, &qword_274654370);
  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v1 + 1);
  *(v6 + 32) = *v1;
  *(v6 + 48) = v8;
  *(v6 + 64) = v1[4];
  sub_27445E9E4(&v21, v16);

  sub_274439BF0(&v20, v16, &qword_28094F200, &qword_274654370);
  v9 = sub_27463B9BC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = *(v2 + 1);
  *(v10 + 32) = *v2;
  *(v10 + 48) = v11;
  *(v10 + 64) = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F788, &qword_2746550B0);
  sub_27463AF0C();
  v12 = v16[1];
  v13 = v18;
  v14 = v19;
  result = v17;
  a1->n128_u64[0] = v16[0];
  a1->n128_u64[1] = v12;
  a1[1] = result;
  a1[2].n128_u64[0] = v13;
  a1[2].n128_u8[8] = v14;
  return result;
}

void *sub_274500C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v6 = a4;
  v11 = sub_274639B2C();
  v17 = 1;
  sub_274500D34(a1, a2, a3, v6, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v19, __src, 0x81uLL);
  sub_274439BF0(__dst, &v14, &qword_28094F778, &qword_2746550A0);
  sub_274415174(v19, &qword_28094F778, &qword_2746550A0);
  memcpy(&v16[7], __dst, 0x81uLL);
  v12 = v17;
  *a6 = v11;
  *(a6 + 8) = 0;
  *(a6 + 16) = v12;
  result = memcpy((a6 + 17), v16, 0x88uLL);
  *(a6 + 153) = 0;
  return result;
}

uint64_t sub_274500D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v43 = a2;
  sub_274412BBC();

  v9 = sub_27463A53C();
  v36 = v10;
  v37 = v9;
  v35 = v11;
  v38 = v12;
  v13 = a3;

  sub_274500A88(&v57);
  v55 = v57;
  v56[0] = v58[0];
  *(v56 + 9) = *(v58 + 9);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F780, &qword_2746550A8);
  MEMORY[0x277C575F0](v53, v14);
  v15 = v53[0];
  v16 = v53[1];
  v17 = v53[2];
  v18 = v54;
  v60[0] = v57.n128_u64[0];
  sub_274501A18(v60);

  v59[0] = v58[0];
  *(v59 + 9) = *(v58 + 9);
  sub_274415174(v59, &qword_28094F788, &qword_2746550B0);
  if (!v16)
  {
    sub_274501A6C(a1, a2, a3);
    sub_274501A6C(v15, 0, v17);
LABEL_6:
    KeyPath = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0;
    v32 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0;
    goto LABEL_7;
  }

  v19 = sub_274501094(a1, a2, a3, a4 & 1, v15, v16, v17, v18 & 1);

  if ((v19 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_6;
  }

  v16 = sub_27463AC2C();
  sub_27463A3AC();
  sub_27463A3FC();
  v20 = sub_27463A42C();

  KeyPath = swift_getKeyPath();
  v22 = sub_27463AB1C();
  v23 = swift_getKeyPath();
  LOBYTE(v32) = sub_27463A37C();
  sub_2746390AC();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v42) = 0;
  v32 = v32;
LABEL_7:
  v40[96] = v35 & 1;
  v40[88] = 1;
  __src[0] = v16;
  __src[1] = KeyPath;
  __src[2] = v20;
  __src[3] = v23;
  __src[4] = v22;
  __src[5] = v32;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  __src[9] = v31;
  LOBYTE(__src[10]) = 0;
  memcpy(&v40[7], __src, 0x51uLL);
  *a5 = v37;
  *(a5 + 8) = v36;
  *(a5 + 16) = v35 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  memcpy((a5 + 41), v40, 0x58uLL);
  v42 = v16;
  v43 = KeyPath;
  v44 = v20;
  v45 = v23;
  v46 = v22;
  v47 = v32;
  v48 = v25;
  v49 = v27;
  v50 = v29;
  v51 = v31;
  v52 = 0;
  sub_27440B094(v37, v36, v35 & 1);

  sub_274439BF0(__src, v39, &qword_28094F790, &qword_2746550B8);
  sub_274415174(&v42, &qword_28094F790, &qword_2746550B8);
  sub_274412C10(v37, v36, v35 & 1);
}

uint64_t sub_274501094(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_27463C6BC() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    if (a7)
    {
      sub_274501B64();
      v13 = a7;
      v14 = a3;
      v15 = sub_27463BF7C();

      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (a7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = a4 ^ a8 ^ 1;
  return v16 & 1;
}

uint64_t sub_274501148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  sub_27463B71C();
  sub_27463C76C();
  if (a4)
  {
    v6 = a4;
    sub_27463BF8C();
  }

  return sub_27463C76C();
}

uint64_t sub_2745011BC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_27463C74C();
  sub_274501148(v9, a1, a2, a3, a4);
  return sub_27463C7AC();
}

uint64_t sub_274501244(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_27463C74C();
  sub_274501148(v7, v2, v3, v4, v5);
  return sub_27463C7AC();
}

void sub_2745012C8()
{
  v22 = *v0;
  v23 = *(v0 + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798, &unk_274655120);
  MEMORY[0x277C575F0](&v21, v1);
  v20 = v21;
  if (!v21)
  {
LABEL_20:
    sub_2745014E8();
    return;
  }

  v17 = v0;
  v2 = sub_274500400();
  v3 = 0;
  v18 = *(v2 + 16);
  v19 = v2;
  for (i = (v2 + 56); ; i += 32)
  {
    if (v18 == v3)
    {

      goto LABEL_20;
    }

    if (v3 >= *(v19 + 16))
    {
      break;
    }

    v5 = *(i - 1);
    v6 = *i;

    if (v5)
    {
      v7 = [v5 name];
      v8 = sub_27463B6AC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [v20 propertyName];
    v12 = sub_27463B6AC();
    v14 = v13;

    if (!v10)
    {

      goto LABEL_18;
    }

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v16 = sub_27463C6BC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v6 == [v20 negativeProperty])
    {

      return;
    }

LABEL_18:

    ++v3;
  }

  __break(1u);
}

uint64_t sub_2745014E8()
{
  v1 = *(v0 + 24);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v1)
  {
    v3 = [ObjCClassFromMetadata stringConversionBehavior];
    v4 = [v3 property];
    if (v4)
    {
      v5 = [v4 localizedName];
      v6 = sub_27463B6AC();
    }

    else
    {
      v7 = [v3 behaviorDescription];
      v6 = sub_27463B6AC();
    }
  }

  else
  {
    v3 = [ObjCClassFromMetadata localizedTypeDescription];
    v6 = sub_27463B6AC();
  }

  return v6;
}

void sub_2745015EC(uint64_t a1@<X8>)
{
  sub_2745012C8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
}

uint64_t sub_274501624(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = v5;

    v9 = sub_2745014E8();
    v11 = v10;
    LOBYTE(v7) = sub_274501094(v7, v4, v5, v6 & 1, v9, v13, v10, v12 & 1);

    if ((v7 & 1) == 0)
    {
      if (v5)
      {
        v15 = v8;
        v16 = [v15 name];
        v17 = sub_27463B6AC();
        v19 = v18;

        v20 = [v15 userInfo];
        v21 = sub_2744A4C3C(v15, &selRef_negativeName);
        v23 = v22;
        v24 = objc_allocWithZone(MEMORY[0x277D7C778]);
        sub_274501AB0(v17, v19, v20, v6 & 1, v21, v23);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798, &unk_274655120);
    sub_27463AEBC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F798, &unk_274655120);
    return sub_27463AEBC();
  }
}

unint64_t sub_274501860()
{
  result = qword_28094F740;
  if (!qword_28094F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F740);
  }

  return result;
}

unint64_t sub_2745018B4()
{
  result = qword_280949470;
  if (!qword_280949470)
  {
    sub_2746396BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949470);
  }

  return result;
}

unint64_t sub_274501934()
{
  result = qword_28094F760;
  if (!qword_28094F760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F758, &qword_274655088);
    sub_27440CA78(&qword_28094F768, &qword_28094F770, &unk_274655090, MEMORY[0x277CE1138]);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F760);
  }

  return result;
}

void sub_274501A6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

id sub_274501AB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_27463B66C();

  if (a6)
  {
    v11 = sub_27463B66C();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithPropertyName:v10 propertyUserInfo:a3 negativeProperty:a4 & 1 negativePropertyName:v11];

  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_274501B64()
{
  result = qword_28094F1F8;
  if (!qword_28094F1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094F1F8);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274501C10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_274501C50(uint64_t result, int a2, int a3)
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

unint64_t sub_274501CA4()
{
  result = qword_28094F7A0;
  if (!qword_28094F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F7A8, &qword_274655178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F748, &qword_274655080);
    sub_2746396BC();
    sub_27440CA78(&qword_28094F750, &qword_28094F748, &qword_274655080, MEMORY[0x277CDF028]);
    sub_2745018B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F7A0);
  }

  return result;
}

unint64_t sub_274501DBC()
{
  result = qword_28094F7B0;
  if (!qword_28094F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F7B0);
  }

  return result;
}

uint64_t sub_274501E10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_274639E5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90, &unk_274658FA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_274648570;
  v21[0] = a1;
  v21[1] = a2;
  sub_27463A04C();
  sub_2746393CC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v7 + 8))(v9, v6);
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  *(v11 + 48) = v17;
  *(v11 + 56) = v19;
  *a3 = v10;
  a3[1] = v11;
  return result;
}

double sub_27450204C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90, &unk_274658FA0);
  v0 = swift_allocObject();
  *&result = 1;
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 16);
  v0[1] = xmmword_274648570;
  v0[2] = v2;
  v0[3] = v3;
  qword_28094F7B8 = v0;
  return result;
}

double sub_2745020E8@<D0>(void *a1@<X8>)
{
  if (qword_280949310 != -1)
  {
    swift_once();
  }

  *a1 = qword_28094F7B8;

  return result;
}

id WFInputSurfaceParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 value];
      [v11 populateWithIcon:0 string:v14];
      swift_unknownObjectRelease();
    }
  }

  return v11;
}

id sub_274502288(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFInputSurfaceParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745022F4()
{
  static WFInputSurfaceParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_27450231C()
{
  v1 = v0;
  v2 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v28 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v26 = v8;
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_27463B22C();
  sub_27463B28C();
  v25 = *(v13 + 8);
  v25(v16, v11);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v20 = sub_27463BCEC();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_274502854;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_19;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27446E608();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_274454390();
  sub_27463C1EC();
  MEMORY[0x277C58400](v19, v10, v6, v22);
  _Block_release(v22);

  (*(v28 + 8))(v6, v2);
  (*(v26 + 8))(v10, v27);
  return (v25)(v19, v11);
}

id sub_274502674(void *a1)
{
  v2 = [a1 auxiliaryViewPresenter];
  if (v2)
  {
    [v2 presentShortcutDetailsAsAuxiliaryViewPresenter];
    swift_unknownObjectRelease();
  }

  return [a1 completeEditing];
}

id sub_274502750(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for InputSurfaceParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745027FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputSurfaceParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id WFAddButtonParameter.moduleSummaryShowsAddButton(for:)()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 showsAddButtonForParameter_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2745028D8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  v5 = WFAddButtonParameter.moduleSummaryShowsAddButton(for:)();
  swift_unknownObjectRelease();

  return v5 & 1;
}

id sub_274502938()
{
  sub_274466DA4();
  v0 = sub_27463B7FC();

  return v0;
}

uint64_t sub_2745029BC()
{
  static WFAddButtonParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745029E4()
{
  v1 = [v0 parameter];
  v2 = [v1 delegate];

  if (v2)
  {
    v3 = [v0 parameter];
    v4 = [v2 parameterStateUpdateForPlusButtonForParameter_];
    swift_unknownObjectRelease();

    if (v4)
    {
      v5 = [v4 parameterState];
      v6 = [v4 parameterKey];
      if (!v6)
      {
        sub_27463B6AC();
        v7 = sub_27463B66C();

        v6 = v7;
      }

      v8 = v6;
      [v0 commitAuxiliaryState:v5 forKey:?];

      swift_unknownObjectRelease();
    }
  }
}

id sub_274502BDC(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for WFAddButtonModuleSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274502C8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAddButtonModuleSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274502CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v7 = a1;
}

char *sub_274502D30()
{
  v1 = *v0;
  swift_getObjectType();
  v2 = v1;
  v3 = sub_2746385AC();
  v4 = objc_allocWithZone(type metadata accessor for ParameterEditingSessionViewController());
  v5 = sub_274503590(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F860, &unk_274655518);
  sub_27463A2EC();
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8] = &off_28836A4C8;
  swift_unknownObjectWeakAssign();

  return v5;
}

uint64_t sub_274502E08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F860, &unk_274655518);
  sub_27463A2EC();
  v2 = v15;
  v3 = *v1;
  v17 = *(v1 + 48);
  v4 = v17;
  v5 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v16[1] = v5;
  v6 = *(v15 + 16);
  v7 = *(v15 + 32);
  v8 = *(v15 + 40);
  v9 = *(v15 + 48);
  v10 = *(v15 + 56);
  v11 = *(v15 + 64);
  *(v15 + 32) = v16[0];
  *(v2 + 48) = v5;
  *(v2 + 64) = v4;
  *(v2 + 16) = *v1;
  v12 = v3;

  sub_27450412C(v16, &v14);

  sub_2744627C0(v7, v8, v9, v10, v11);
}

uint64_t sub_274502EEC()
{
  type metadata accessor for ParameterEditingControllerHostingView.Coordinator();
  v1 = swift_allocObject();
  v2 = *v0;
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v3 = v9[0];
  v9[1] = v4;
  v10 = *(v0 + 48);
  v5 = v10;
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  v6 = v2;

  sub_27450412C(v9, v8);
  return v1;
}

uint64_t sub_274502F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_274639ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();

  swift_unknownObjectRetain();
  sub_2746385BC();

  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v11 = *(v3 + 48);
  v10 = *(v3 + 56);
  if (*(v3 + 64) != 1)
  {
    swift_retain_n();
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744627C0(v9, v8, v11, v10, 0);
    (*(v5 + 8))(v7, v4);
    result = sub_2744627C0(v9, v8, v11, v10, 0);
    v9 = v15;
    if (!v15)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_27440CBD8(*(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (v9)
  {
LABEL_5:

    v9(v14);
  }

  return result;
}

uint64_t sub_27450316C()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {
    swift_retain_n();
    sub_27463BC0C();
    v10 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2744627C0(v6, v5, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    result = sub_2744627C0(v6, v5, v7, v8, 0);
    v7 = v12[2];
    if (!v12[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_27440CBD8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (v6)
  {
LABEL_5:

    v7(v11);
  }

  return result;
}

uint64_t sub_274503328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  sub_2744627C0(v2, v3, v4, v5, v6);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274503454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274502EEC();
  *a1 = result;
  return result;
}

uint64_t sub_2745034A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27450419C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274503504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27450419C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274503568(uint64_t a1)
{
  sub_27450419C();
  sub_27463A26C();
  __break(1u);
}

id sub_274503590(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController] = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_parameter] = a1;
  *&v2[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentState] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ParameterEditingSessionViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_274503624()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_2745036DC()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ParameterEditingSessionViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  if ([swift_getObjCClassFromObject() uikitEditingControllerClass] && (swift_getObjCClassMetadata(), sub_274412734(0, &qword_28094F870, off_279ED9380), swift_dynamicCastMetatype()))
  {
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v1 setDelegate_];
    v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentState];
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v7[4] = sub_2745041F0;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_274486F8C;
    v7[3] = &block_descriptor_20;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 createViewControllerWithInitialState:v2 completionHandler:v4];
    _Block_release(v4);
    v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController];
    *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController_currentEditingController] = v1;
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_27450316C();
    swift_unknownObjectRelease();
  }
}

void sub_2745038A4(void *a1, void *a2)
{
  if (!a1)
  {
    return;
  }

  v40 = a1;
  [v40 willMoveToParentViewController_];
  v3 = [v40 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v40 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  [v6 addSubview_];

  [a2 addChildViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_274653790;
  v10 = [v40 view];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [a2 view];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v16;
  v17 = [v40 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 trailingAnchor];

  v20 = [a2 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v9 + 40) = v23;
  v24 = [v40 view];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [a2 view];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v9 + 48) = v30;
  v31 = [v40 view];
  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [a2 view];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 bottomAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v9 + 56) = v38;
  sub_274412734(0, &qword_28094E990, 0x277CCAAD0);
  v39 = sub_27463B7FC();

  [v36 activateConstraints_];

  [v40 didMoveToParentViewController_];
}

uint64_t sub_274503D34()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_27450316C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274503DDC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_274502F70(v1, a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_274503F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParameterEditingSessionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor28SummaryModalPresentationModeVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274504034(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_274504074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2745040D8()
{
  result = qword_28094F850;
  if (!qword_28094F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F850);
  }

  return result;
}

uint64_t sub_27450412C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F858, &qword_274655510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27450419C()
{
  result = qword_28094F868;
  if (!qword_28094F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F868);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27450423C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_27463C23C();
    sub_274412734(0, &unk_28094C200, 0x277CCABB0);
    sub_27446839C();
    sub_27463BA7C();
    v1 = v20;
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v19 = v3;
  v9 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_274406A24(v1);
      return;
    }

    while (1)
    {
      v15 = [v14 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450AB4();
        v9 = v17;
      }

      v16 = *(v9 + 16);
      if (v16 >= *(v9 + 24) >> 1)
      {
        sub_274450AB4();
        v9 = v18;
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 8 * v16 + 32) = v15;
      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_27463C2BC())
      {
        sub_274412734(0, &unk_28094C200, 0x277CCABB0);
        swift_dynamicCast();
        v14 = v25;
        v12 = v4;
        v13 = v5;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2745044A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2745066D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t WFDictionaryParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_274506280(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274505F70;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B600, &unk_27464B470));
  swift_retain_n();
  sub_27444A618(v1);
  sub_27440CA78(&qword_28094F878, &qword_28094B600, &unk_27464B470, &unk_274648AD8);
  sub_27463950C();
  sub_274506164();
  return sub_27463AE9C();
}

uint64_t sub_2745046D0@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_2746380BC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = v2[1];
  v27 = *v2;
  v28 = v5;
  v6 = v2[3];
  v29 = v2[2];
  v30 = v6;
  v7 = *(&v27 + 1);
  v34[0] = v5;
  v34[1] = v29;
  v34[2] = v6;
  v31 = v5;
  v32 = v29;
  v33 = v6;
  sub_274439BF0(v34, v26, &qword_28094F888, &unk_2746556B8);
  sub_274505384();
  sub_274415174(v34, &qword_28094F888, &unk_2746556B8);
  v8 = qword_28094A100;
  [*(v7 + qword_28094A100) stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_28094F890, 0x277D7C370);
  swift_dynamicCastMetatypeUnconditional();
  v9 = sub_274506070(*(v7 + v8));
  if (v9)
  {
    sub_27450423C(v9);
  }

  sub_2746380AC();
  v10 = objc_allocWithZone(type metadata accessor for PropertyListOutlineContent(0));
  sub_274507808();
  v12 = v11;
  v13 = sub_274506070(*(v7 + v8));
  if (v13)
  {
    sub_27450423C(v13);
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_2745060F4(*(v7 + v8));
  v18 = v17;
  v19 = swift_allocObject();
  v20 = v28;
  v19[1] = v27;
  v19[2] = v20;
  v21 = v30;
  v19[3] = v29;
  v19[4] = v21;
  v22 = swift_allocObject();
  v23 = v28;
  v22[1] = v27;
  v22[2] = v23;
  v24 = v30;
  v22[3] = v29;
  v22[4] = v24;
  *a2 = v12;
  *(a2 + 8) = sub_274446ACC;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = sub_2745061E4;
  *(a2 + 64) = v19;
  *(a2 + 72) = sub_27450623C;
  *(a2 + 80) = v22;
  sub_274506248(&v27, v26);
  return sub_274506248(&v27, v26);
}

double sub_274504988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, void *a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_2745049D8(a1, a2, a3, a4 & 1, a6, a7, a8, v11);
  v9 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v9;
  result = *&v12;
  *(a5 + 32) = v12;
  *(a5 + 48) = v13;
  return result;
}

double sub_2745049D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v65 = a1;
  *(&v65 + 1) = a2;
  *&v66 = a3;
  v15 = a4 & 1;
  BYTE8(v66) = a4 & 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60, &unk_27464B100);
  MEMORY[0x277C575F0](&v58, v16);
  v17 = v58;
  v55 = a8;
  if (BYTE8(v58) != 1)
  {

    if (__OFADD__(a6, 1))
    {
      __break(1u);
    }

    else
    {
      sub_27463B70C("LIST_PARAMETER_ITEM_INDEX", 25);
      sub_27463B70C("Item %ld", v54);
      if (qword_2809492C0 == -1)
      {
LABEL_8:
        v31 = qword_28094BB00;
        v32 = sub_27463B66C();

        v33 = sub_27463B66C();

        v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

        sub_27463B6AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D83B88];
        *(v35 + 16) = xmmword_274648570;
        v37 = MEMORY[0x277D83C10];
        *(v35 + 56) = v36;
        *(v35 + 64) = v37;
        *(v35 + 32) = a6 + 1;
        v38 = sub_27463B67C();
        v40 = v39;

        *&v65 = v38;
        *(&v65 + 1) = v40;
        sub_274412BBC();
        v41 = sub_27463A53C();
        v43 = v42;
        LOBYTE(v32) = v44;
        sub_27463ABCC();
        v45 = sub_27463A4DC();
        v47 = v46;
        v49 = v48;
        v51 = v50;

        sub_274412C10(v41, v43, v32 & 1);

        v64 = v49 & 1;
        v62 = 1;
        *&v58 = v45;
        *(&v58 + 1) = v47;
        LOBYTE(v59) = v49 & 1;
        *(&v59 + 1) = v63[0];
        DWORD1(v59) = *(v63 + 3);
        *(&v59 + 1) = v51;
        v60 = v56;
        LOBYTE(v61) = v57;
        HIBYTE(v61) = 1;
        sub_2745062C8();
        sub_274639DDC();
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  sub_27463B9CC();
  v18 = v17;
  v19 = sub_27463B9BC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v22 = a3;
  v23 = v18;

  v24 = a5;

  v25 = sub_27463B9BC();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = MEMORY[0x277D85700];
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *(v26 + 48) = a3;
  *(v26 + 56) = v15;
  *(v26 + 64) = v24;
  *(v26 + 72) = a6;
  *(v26 + 80) = v23;
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  sub_27463AF0C();
  v27 = sub_274505FCC(*(*(a7 + 8) + qword_28094A100));
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v56;
  *(v29 + 32) = v57;
  LOBYTE(v63[0]) = 0;
  v64 = 0;
  v65 = v56;
  *&v66 = v57;
  *(&v66 + 1) = v28;
  *&v67 = sub_274506364;
  *(&v67 + 1) = v29;
  v68 = 0;
  sub_2745062C8();
  swift_retain_n();
  swift_retain_n();
  v30 = v57;

  sub_274639DDC();

  v65 = v58;
  v66 = v59;
  v67 = v60;
  v68 = v61;
LABEL_9:
  v52 = v66;
  *v55 = v65;
  *(v55 + 16) = v52;
  result = *&v67;
  *(v55 + 32) = v67;
  *(v55 + 48) = v68;
  return result;
}

uint64_t sub_274504F04@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2746382DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  sub_27463BEBC();
  v7 = sub_27463BE9C();
  result = (*(v4 + 8))(v6, v3);
  *a1 = v7;
  return result;
}

uint64_t sub_274505004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v30 = a10;
  v31 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v29 - v11;
  v13 = sub_2746382DC();
  MEMORY[0x28223BE20](v13 - 8);
  v29[1] = sub_274412734(0, &unk_28094B310, 0x277D7C368);
  sub_27463BE7C();
  v14 = sub_274505E98(a9);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_getKeyPath();
  v39 = v14;
  v40 = v16;
  v41 = v18;
  v42 = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60, &unk_27464B100);
  sub_27463AECC();

  v21 = v36;
  v22 = v37;
  v23 = v38;

  v35[1] = v21;
  v35[2] = v22;
  v35[3] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40, &unk_274655700);
  MEMORY[0x277C575F0](v35, v24);

  v25 = [v30 identity];
  sub_274637ECC();

  v26 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v26);
  v27 = sub_27463BEAC();
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34 & 1;
  v36 = v27;
  LOBYTE(v37) = 1;
  return sub_27463AEBC();
}

__n128 sub_274505274@<Q0>(uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA60, &unk_27464B100);
  sub_27463AEEC();
  swift_getKeyPath();
  sub_27463AECC();

  v8 = sub_274505FCC(*(*(a5 + 8) + qword_28094A100));
  v9 = MEMORY[0x277D84FA0];
  *a6 = v11;
  if (v8)
  {
    v9 = v8;
  }

  result = v12;
  *(a6 + 8) = v12;
  *(a6 + 24) = v9;
  return result;
}

uint64_t sub_274505384()
{
  v1 = v0;
  sub_27463B9CC();
  sub_274439BF0(v0, &v10, &qword_28094F888, &unk_2746556B8);
  v2 = sub_27463B9BC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = v0[2];
  sub_274439BF0(v0, &v10, &qword_28094F888, &unk_2746556B8);
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8C0, &qword_274655718);
  sub_27463AF0C();
  return v10;
}

uint64_t sub_2745054D0()
{
  v0 = sub_27463B9CC();
  OUTLINED_FUNCTION_1_9(v0, v1, v2, v3, v4, v5, v6, v7, v22);
  v8 = sub_27463B9BC();
  OUTLINED_FUNCTION_4_11();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  OUTLINED_FUNCTION_0_16(v9);
  OUTLINED_FUNCTION_1_9(v11, v12, v13, v14, v15, v16, v17, v18, v23);
  v19 = sub_27463B9BC();
  OUTLINED_FUNCTION_4_11();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v10;
  OUTLINED_FUNCTION_0_16(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8D0, &qword_274655728);
  sub_27463AF0C();
  return v24;
}

uint64_t sub_2745055E0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_2746382DC();
  MEMORY[0x28223BE20](v7 - 8);
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0, &qword_2746556F8);
  MEMORY[0x277C575F0](v11, v8);
  v9 = v11[0];
  sub_27463BE7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_2745056C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8E8, &unk_274655830);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - v3;
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v41 = v5;
  v43 = v4;
  v42 = v6;
  v37 = sub_27463920C();
  sub_27463B70C("Key", 3);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v7 = qword_28094BB00;
  v8 = sub_27463B66C();
  v9 = sub_27463B66C();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_27463B6AC();
  v35 = v12;
  v36 = v11;

  v14 = v2[2];
  v13 = v2[3];
  v15 = v2[1];
  v45 = *v2;
  v16 = v45;
  v46 = v13;
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 2);
  *(v17 + 64) = *(v2 + 48);
  v19 = *MEMORY[0x277D7A628];
  v20 = *MEMORY[0x277D7A5C0];

  sub_274439BF0(&v46, v47, &unk_280953A00, &qword_27464F8C0);
  sub_27445E9E4(&v45, v47);

  v21 = v14;
  sub_274506470(v41, v43);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274506280(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v34 = v19;
  v33 = v20;
  v22 = sub_27463979C();
  v24 = v23;
  v25 = v46;
  v47[0] = v16;
  v47[1] = v15;
  v47[2] = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0, &qword_2746556F8);
  MEMORY[0x277C575F0](&v44[160], v26);
  v27 = swift_allocObject();
  v28 = *(v2 + 1);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v2 + 2);
  *(v27 + 64) = *(v2 + 48);
  *v44 = v37;
  v44[8] = 2;
  *&v44[16] = 0;
  *&v44[24] = 0;
  *&v44[32] = v36;
  *&v44[40] = v35;
  *&v44[48] = 256;
  v44[50] = 0;
  *&v44[56] = 0;
  v44[64] = 0;
  *&v44[72] = v25;
  *&v44[80] = xmmword_274653F30;
  *&v44[96] = sub_274506468;
  *&v44[104] = v17;
  *&v44[112] = v34;
  *&v44[120] = v33;
  *&v44[128] = xmmword_27464F170;
  *&v44[144] = v22;
  *&v44[152] = v24;
  *&v44[168] = sub_2745064D4;
  *&v44[176] = v27;
  sub_274439BF0(&v46, v47, &unk_280953A00, &qword_27464F8C0);
  sub_27445E9E4(&v45, v47);

  v29 = v21;
  sub_274506470(v41, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8F0, &qword_274655840);
  sub_2745064DC();
  v30 = v38;
  sub_27463A86C();
  memcpy(v47, v44, 0xB8uLL);
  sub_274415174(v47, &qword_28094F8F0, &qword_274655840);
  v31 = sub_2745065E8();
  MEMORY[0x277C56F80](1, v39, v31);
  return sub_274415174(v30, &qword_28094F8E8, &unk_274655830);
}

uint64_t sub_274505B74(__int128 *a1, __n128 a2)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  sub_27463896C();

  sub_27463BE8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A0, &qword_2746556F8);
  return sub_27463AEBC();
}

uint64_t sub_274505CDC(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2746382DC();
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  sub_27463BE7C();
  sub_27463897C();
}

uint64_t sub_274505E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A8, &unk_274658820);
  sub_27463AEEC();
  return v1;
}

uint64_t sub_274505E98(uint64_t a1)
{
  sub_274505E30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F8A8, &unk_274658820);
  sub_27440CA78(&qword_28094F8B0, &qword_28094F8B8, &qword_274655710, MEMORY[0x277D83960]);
  sub_27463AF2C();

  return v2;
}

void sub_274505F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v4 = *(a4 + 32);
  v5 = a1;
  v4(&v6);
}

uint64_t sub_274505FCC(void *a1)
{
  v2 = [a1 supportedVariableTypes];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for WFVariableType(0);
  sub_274506280(&qword_28094BAE0, type metadata accessor for WFVariableType, &unk_274646ED4);
  v3 = sub_27463BA4C();

  return v3;
}

uint64_t sub_274506070(void *a1)
{
  v2 = [a1 allowedValueTypes];

  if (!v2)
  {
    return 0;
  }

  sub_274412734(0, &unk_28094C200, 0x277CCABB0);
  sub_27446839C();
  v3 = sub_27463BA4C();

  return v3;
}

uint64_t sub_2745060F4(void *a1)
{
  v2 = [a1 localizedNewItemTypeName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

unint64_t sub_274506164()
{
  result = qword_28094F880;
  if (!qword_28094F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F880);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  OUTLINED_FUNCTION_4_11();

  return swift_deallocObject();
}

uint64_t sub_274506280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2745062C8()
{
  result = qword_28094F898;
  if (!qword_28094F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F898);
  }

  return result;
}

uint64_t sub_274506370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2743FE3EC(*(v1 + 16), *(v1 + 24), v1 + 32);
  *a1 = result;
  return result;
}

uint64_t sub_2745063AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2745063EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  sub_2743F459C(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_2745064DC()
{
  result = qword_28094F8F8;
  if (!qword_28094F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8F0, &qword_274655840);
    sub_274506594();
    sub_27440CA78(&qword_28094F908, &qword_28094F910, &qword_274655848, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F8F8);
  }

  return result;
}

unint64_t sub_274506594()
{
  result = qword_28094F900;
  if (!qword_28094F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F900);
  }

  return result;
}

unint64_t sub_2745065E8()
{
  result = qword_28094F918;
  if (!qword_28094F918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8E8, &unk_274655830);
    sub_2745064DC();
    sub_274506280(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F918);
  }

  return result;
}

id sub_2745066D8(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 value];

    return v3;
  }

  else
  {

    return a1;
  }
}

void sub_274506720(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  v5 = OUTLINED_FUNCTION_53_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2746382DC();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v10 = *v1;
  v11 = *(v1 + 8);
  if (v11 == 1)
  {
    sub_274412734(0, &unk_28094B310, 0x277D7C368);
    sub_27463BEBC();
    v12 = [v10 identity];
    sub_274637ECC();

    v13 = sub_274637EEC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
    a1 = sub_27463BEAC();
  }

  *v2 = a1;
  *(v2 + 8) = v11;
}

void sub_274506880(void *a1@<X2>, void *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40, &unk_274655700);
  MEMORY[0x277C575F0](v8, v5);
  v6 = v8[0];
  v7 = [v8[0] state];

  *a4 = v7;
}

void sub_274506900()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_274637EEC();
  v9 = OUTLINED_FUNCTION_53_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = *v7;
  v20 = v5;
  v21 = v3;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40, &unk_274655700);
  MEMORY[0x277C575F0](&v19);
  v14 = v19;
  v20 = v5;
  v21 = v3;
  v22 = v1;

  v15 = v1;
  v16 = [v14 valueType];
  swift_unknownObjectRetain();
  v17 = [v14 identity];
  sub_274637ECC();

  v18 = objc_allocWithZone(MEMORY[0x277D7C770]);
  v19 = sub_27450A0B4(v16, v13, v12);
  sub_27463AEBC();

  OUTLINED_FUNCTION_23();
}

void sub_274506A64(void *a1)
{
  v1 = [a1 identity];
  sub_274637ECC();
}

uint64_t sub_274506AC0(void *a1, char a2, __n128 a3)
{
  v5 = sub_2746382DC();
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = a1;
  if (a2)
  {
    sub_27463BEBC();
    v13 = sub_27463826C();
    v15 = v14;

    (*(v7 + 8))(v11, v5);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v13;
    }

    v12 = [v12 value];
  }

  v17 = [v12 valueType];

  if (v17 == 1)
  {
    sub_27463B70C("Dictionary", 10);
  }

  else
  {
    if (v17 != 2)
    {
      return 0;
    }

    sub_27463B70C("Array", 5);
  }

  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v18 = qword_28094BB00;
  v19 = sub_27463B66C();
  v20 = sub_27463B66C();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v13 = sub_27463B6AC();
  return v13;
}