BOOL sub_274774B3C()
{
  v1 = [v0 userInfo];
  v2 = sub_2749FCCA4();

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27494F900(v3, v4, v2, &v22);

  if (!v23)
  {
    sub_27472ECBC(&v22, &qword_28096D550, &unk_274A0FF50);
    return 0;
  }

  sub_274776650();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = [v21 domain];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_2749FDCC4();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v21 code] == -1009)
  {

    return 1;
  }

LABEL_14:
  v13 = [v21 domain];
  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = v15;

  if (v14 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_2749FDCC4();

    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  v20 = [v21 code];

  return v20 == 3;
}

uint64_t sub_274774D94()
{
  v0 = [objc_opt_self() isAirplaneModeEnabled];
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 hasCapability_];

  if (v0)
  {
    if (v2)
    {
      sub_2749FCE14("Turn off Airplane Mode or use WLAN to access the Gallery.", 57);
    }

    else
    {
      sub_2749FCE14("Turn off Airplane Mode or use Wi-Fi to access the Gallery.", 58);
    }
  }

  else if (v2)
  {
    sub_2749FCE14("Turn on cellular data or use WLAN to access the Gallery.", 56);
  }

  else
  {
    sub_2749FCE14("Turn on cellular data or use Wi-Fi to access the Gallery.", 57);
  }

  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v3 = qword_28159E448;
  v4 = sub_2749FCD64();
  v5 = sub_2749FCD64();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v7;
}

uint64_t sub_274774F10@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14("Open Settings", 13);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void sub_274775030()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    sub_27477659C(0xD000000000000015, 0x8000000274A2ADF0, v0);
  }
}

BOOL sub_2747750B4()
{
  v1 = [v0 domain];
  v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v4 = v3;

  if (v2 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v4 == v5)
  {

    return [v0 code] == 404;
  }

  v7 = sub_2749FDCC4();

  result = 0;
  if (v7)
  {
    return [v0 code] == 404;
  }

  return result;
}

uint64_t sub_274775184@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_2749FB564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0, &qword_274A0FF48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  sub_2749FCE14("Try Again", 9);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v17[2] = v13;
  v17[3] = v15;
  sub_27475D0D0();
  sub_2749FC594();
  sub_2749FB554();
  sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0, &qword_274A0FF48, MEMORY[0x277CDEFF0]);
  sub_2747765F8();
  sub_2749FBFB4();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274775460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D950, &unk_274A1F650);
  v3 = *(a1 + 16);
  sub_2749FD6C4();
  v20 = *(a1 + 24);
  sub_2749FC654();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  v4 = sub_2749FC9D4();
  swift_getWitnessTable();
  v5 = sub_2749FC694();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = sub_2749FAEA4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v23 = v3;
  v24 = v20;
  v25 = v21;
  sub_274903CBC(v4);
  sub_2749FC684();
  WitnessTable = swift_getWitnessTable();
  sub_2749FBC64();
  sub_2749FC2B4();
  (*(v6 + 8))(v8, v5);
  v26 = WitnessTable;
  v27 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_27490E93C();
  v17 = *(v10 + 8);
  v17(v13, v9);
  sub_27490E93C();
  return (v17)(v15, v9);
}

uint64_t sub_274775788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v97 = a4;
  v6 = sub_2749FC654();
  v82 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v78 - v9;
  v103 = v10;
  v96 = sub_2749FD6C4();
  v94 = *(v96 - 8);
  v11 = MEMORY[0x28223BE20](v96);
  v95 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v78 - v14;
  v89 = *(a2 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v83 = &v78 - v19;
  v20 = sub_2749FD6C4();
  v101 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v104 = &v78 - v27;
  v28 = a1[1];
  v111 = *a1;
  v112 = v28;
  sub_27475D0D0();

  v29 = sub_2749FBEE4();
  v31 = v30;
  v33 = v32;
  sub_2749FBD84();
  v92 = sub_2749FBEC4();
  v91 = v34;
  v87 = v35;
  v93 = v36;
  v37 = v20;
  v38 = v101;

  sub_27477656C(v29, v31, v33 & 1);
  v39 = v99;

  KeyPath = swift_getKeyPath();
  v41 = type metadata accessor for GalleryErrorMessageView(0, a2, v39, v40);
  v42 = v41[9];
  v43 = *(v38 + 16);
  v98 = a1;
  v86 = v38 + 16;
  v85 = v43;
  v43(v26, a1 + v42, v37);
  if (__swift_getEnumTagSinglePayload(v26, 1, a2) == 1)
  {
    v44 = *(v38 + 8);
    v44(v26, v37);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, a2);
    sub_274903C58(v23, v104);
    v88 = v44;
    v44(v23, v37);
  }

  else
  {
    v45 = v89;
    v78 = *(v89 + 32);
    v79 = v41;
    v46 = v83;
    v78(v83, v26, a2);
    v47 = v84;
    sub_27490E93C();
    v48 = *(v45 + 8);
    v48(v46, a2);
    v49 = v88;
    sub_27490E93C();
    v48(v47, a2);
    v50 = v49;
    v41 = v79;
    v78(v23, v50, a2);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, a2);
    sub_274903C58(v23, v104);
    v88 = *(v38 + 8);
    (v88)(v23, v37);
  }

  v100 = v23;
  v89 = v37;
  v51 = (v98 + v41[10]);
  v52 = *v51;
  v53 = v95;
  if (*v51 && (v54 = (v98 + v41[11]), (v55 = *v54) != 0))
  {
    v56 = v95;
    v57 = v54[1];
    v58 = *v51;
    v83 = v51[1];
    sub_27473A658(v58, v83);
    sub_27473A658(v55, v57);
    v59 = v81;
    sub_2749FC624();
    v60 = v103;
    swift_getWitnessTable();
    v61 = v80;
    sub_27490E93C();
    v62 = v82;
    v63 = *(v82 + 8);
    v63(v59, v60);
    sub_27490E93C();
    v63(v61, v60);
    (*(v62 + 32))(v56, v59, v60);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v60);
    sub_274903C58(v56, v102);
    v64 = v94;
    v65 = *(v94 + 8);
    v84 = ((v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v53 = v56;
    v66 = v96;
    v98 = v65;
    (v65)(v56, v96);
    sub_27471F8A4(v52, v83);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v103);
    swift_getWitnessTable();
    sub_274903C58(v53, v102);
    v64 = v94;
    v67 = *(v94 + 8);
    v84 = ((v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v66 = v96;
    v98 = v67;
    (v67)(v53, v96);
  }

  v68 = v92;
  v69 = v91;
  v111 = v92;
  v112 = v91;
  v70 = v87 & 1;
  v113 = v87 & 1;
  v114 = v93;
  v115 = KeyPath;
  v116 = 1;
  v117[0] = &v111;
  v71 = v100;
  v72 = v89;
  v85(v100, v104, v89);
  v117[1] = v71;
  v73 = v102;
  (*(v64 + 16))(v53, v102, v66);
  v117[2] = v53;
  sub_274754DBC(v68, v69, v70);

  v110[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D950, &unk_274A1F650);
  v110[1] = v72;
  v110[2] = v66;
  v74 = sub_274776C14();
  v106 = v99;
  v107 = v74;
  WitnessTable = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  sub_274903CC0(v117, 3, v110);
  sub_27477656C(v68, v69, v70);

  v75 = v98;
  (v98)(v73, v66);
  v76 = v88;
  (v88)(v104, v72);
  (v75)(v53, v66);
  v76(v100, v72);
  sub_27477656C(v111, v112, v113);
}

unint64_t sub_2747761E4()
{
  result = qword_280967C48;
  if (!qword_280967C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C40, &qword_274A0FEB8);
    sub_274776270();
    sub_274776350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967C48);
  }

  return result;
}

unint64_t sub_274776270()
{
  result = qword_280967C50;
  if (!qword_280967C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C58, &qword_274A0FEC0);
    sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
    sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967C50);
  }

  return result;
}

unint64_t sub_274776350()
{
  result = qword_280967C70;
  if (!qword_280967C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C78, &qword_274A0FED0);
    sub_27472AB6C(&qword_280967C60, &qword_280967C68, &qword_274A0FEC8, &unk_274A0FF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967C70);
  }

  return result;
}

unint64_t sub_274776400()
{
  result = qword_280967C80;
  if (!qword_280967C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C08, &qword_274A0FE90);
    sub_27472AB6C(&qword_280967C30, &qword_280967C28, &qword_274A0FEB0, &unk_274A0FF98);
    sub_27472AB6C(&qword_280967C38, &qword_280967BF8, &qword_274A0FE80, &unk_274A0FF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967C80);
  }

  return result;
}

void sub_2747764E0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_274776508(void *a1)
{
  v1 = [a1 localizedFailureReason];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_27477656C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_27477659C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  v5 = [a3 openApplicationWithBundleID_];

  return v5;
}

unint64_t sub_2747765F8()
{
  result = qword_280967C88;
  if (!qword_280967C88)
  {
    sub_2749FB564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967C88);
  }

  return result;
}

unint64_t sub_274776650()
{
  result = qword_280967C90[0];
  if (!qword_280967C90[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280967C90);
  }

  return result;
}

void sub_27477669C(uint64_t a1)
{
  sub_2749FD6C4();
  if (v1 <= 0x3F)
  {
    sub_274776B60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_274776734(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 7;
  if (!v6)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((result + v9 + 16) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(result + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v11 = ((((v10 + *(*(v4 - 8) + 64) + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = v8 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_2747768BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v20 = (&a1[v12 + 16] & ~v12);
            if (v10 >= a2)
            {
              v24 = a2 + 1;
              v25 = &a1[v12 + 16] & ~v12;

              __swift_storeEnumTagSinglePayload(v25, v24, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v21 = ~(-1 << (8 * v13));
              }

              else
              {
                v21 = -1;
              }

              if (v13)
              {
                v22 = v21 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v23 = v13;
                }

                else
                {
                  v23 = 4;
                }

                bzero(v20, v13);
                switch(v23)
                {
                  case 2:
                    *v20 = v22;
                    break;
                  case 3:
                    *v20 = v22;
                    v20[2] = BYTE2(v22);
                    break;
                  case 4:
                    *v20 = v22;
                    break;
                  default:
                    *v20 = v22;
                    break;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_274776B60(uint64_t a1)
{
  if (!qword_280967D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096FAE0, &qword_274A180F0);
    v1 = sub_2749FD6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280967D18);
    }
  }
}

unint64_t sub_274776C14()
{
  result = qword_28096C1C0;
  if (!qword_28096C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D950, &unk_274A1F650);
    sub_27472AB6C(&unk_28096C1D0, &unk_28096D960, &qword_274A0FFF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096C1C0);
  }

  return result;
}

uint64_t sub_274776CD8(unint64_t a1, uint64_t a2)
{
  v4 = sub_27472D918(a1);
  if (*(a2 + 16) >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DC0, &unk_274A25750);
    v6 = sub_2749FDB54();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_27477AE24(a1, a2, 1, &v8);

  return v8;
}

uint64_t sub_274776DB4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DD0, &qword_274A100B0);
    OUTLINED_FUNCTION_3();
    v5 = sub_2749FDB54();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;
  sub_27477B1E0(a1, a2, 1, &v7);
  return v7;
}

uint64_t sub_274776EAC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_3();
    v5 = sub_2749FDB54();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_274776F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E08, &qword_274A100E8);
  sub_274772A7C();
  sub_2749F9594();
  sub_2749625E0(&unk_28838F7D0);

  sub_2749626F8(v0, 0);

  sub_2749626F8(v1, 1);
}

void sub_27477700C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E08, &qword_274A100E8);
  sub_274772A7C();
  sub_2749F9594();
  sub_2749625E0(&unk_28838F858);
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    OUTLINED_FUNCTION_32_4(v21);
LABEL_23:

    goto LABEL_24;
  }

  if (qword_2815A0A40 != -1)
  {
    OUTLINED_FUNCTION_9_1(&qword_2815A0A40);
  }

  sub_2747B9BAC(v4, v2);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  v34 = v8;
  if (v10)
  {
    v35 = MEMORY[0x277D84F90];
    sub_27476D500(0, v10, 0);
    v11 = v35;
    v12 = (v9 + 32);
    do
    {
      v13 = *v12++;
      v14 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
      v16 = *(v35 + 16);
      v15 = *(v35 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v15);
      }

      *(v35 + 16) = v16 + 1;
      v17 = v35 + 24 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      --v10;
    }

    while (v10);
    v9 = v34;
  }

  OUTLINED_FUNCTION_32_4(v11);

  v18 = *(v0 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_semanticSymbolIndex);
  if (v18)
  {
    v19 = v18;
    v20 = sub_2749F9634();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v36 = MEMORY[0x277D84F90];
    sub_27476D500(0, v22, 0);
    v23 = v36;
    v33 = v20;
    v24 = (v20 + 32);
    do
    {
      v25 = *v24++;
      v26 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
      v28 = *(v36 + 16);
      v27 = *(v36 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v27);
      }

      *(v36 + 16) = v28 + 1;
      v29 = v36 + 24 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      --v22;
    }

    while (v22);
    v9 = v34;
    v20 = v33;
  }

  OUTLINED_FUNCTION_32_4(v23);

  v30 = *(v9 + 16);

  if (v30)
  {
    goto LABEL_23;
  }

  v31 = *(v20 + 16);

  if (!v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967948, &qword_274A0FB58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0EF10;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 3;
    OUTLINED_FUNCTION_32_4(inited);
    swift_setDeallocating();
    sub_2747A33DC();
  }

LABEL_24:
  sub_27477BF14();
  OUTLINED_FUNCTION_46();
}

void sub_274777374()
{
  OUTLINED_FUNCTION_48();
  v62 = v1;
  v63 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180, &qword_274A19C80);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v66 = v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78, &unk_274A10050);
  OUTLINED_FUNCTION_43();
  v65 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v64 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D80, &unk_274A165C0);
  OUTLINED_FUNCTION_43();
  v69 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v68 = v16;
  v17 = OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_colorNamesDictionary;
  v18 = objc_opt_self();
  v19 = [v18 workflowPalette];
  sub_27471CF08(0, &qword_280968670, 0x277D79E20);
  v20 = sub_2749FCF84();

  v21 = [v18 workflowPaletteNames];
  v22 = sub_2749FCF84();

  v23 = sub_274776CD8(v20, v22);
  v61 = v0;
  *&v0[v17] = v23;
  v24 = [v18 workflowPalette];
  v25 = sub_2749FCF84();

  v26 = sub_27472D918(v25);
  v27 = MEMORY[0x277D84F90];
  v70 = v13;
  v71 = v6;
  if (v26)
  {
    v28 = v26;
    v72 = MEMORY[0x277D84F90];
    sub_27476D500(0, v26 & ~(v26 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
      return;
    }

    v29 = 0;
    v30 = v72;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x277C5F6D0](v29, v25);
      }

      else
      {
        v31 = *(v25 + 8 * v29 + 32);
      }

      v32 = v31;
      v72 = v30;
      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        sub_27476D500(v33 > 1, v34 + 1, 1);
        v30 = v72;
      }

      ++v29;
      v30[2] = v34 + 1;
      v35 = &v30[3 * v34];
      v35[4] = v32;
      v35[5] = 0;
      *(v35 + 48) = 2;
    }

    while (v28 != v29);

    v27 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v36 = v61;
  v37 = v62;
  *&v61[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_colors] = v30;
  *&v36[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_allSymbolItems] = v27;
  *&v36[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_glyphRegistryCancellable] = 0;
  *&v36[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_semanticSymbolIndex] = 0;
  *&v36[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_gridView] = v37;
  v38 = v63;
  *&v36[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_workflow] = v63;
  v39 = type metadata accessor for WFIconPickerGridViewDataSource();
  v73.receiver = v36;
  v73.super_class = v39;
  v40 = v37;
  v41 = v38;
  v42 = objc_msgSendSuper2(&v73, sel_init);
  v43 = qword_2815A0A40;
  v44 = v42;
  if (v43 != -1)
  {
    OUTLINED_FUNCTION_9_1(&qword_2815A0A40);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88, &qword_274A10060);
  v45 = v64;
  sub_2749FA8D4();
  swift_endAccess();
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v46 = sub_2749FD404();
  v72 = v46;
  v47 = sub_2749FD3E4();
  v48 = v66;
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v47);
  sub_27472ABB4(&qword_280967D90, &qword_280967D78, &unk_274A10050);
  sub_27477ACFC();
  v49 = v67;
  v50 = v68;
  sub_2749FA954();
  sub_27472ECBC(v48, &qword_28096B180, &qword_274A19C80);

  (*(v65 + 8))(v45, v49);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_23_2();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = v41;
  v52[4] = v40;
  sub_27472ABB4(&qword_280967DA0, &qword_280967D80, &unk_274A165C0);
  v53 = v40;
  v54 = v41;
  v55 = v70;
  v56 = sub_2749FA974();

  (*(v69 + 8))(v50, v55);
  *&v44[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_glyphRegistryCancellable] = v56;

  v57 = v71;
  sub_2749FD0B4();
  v58 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_23_2();
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v60[4] = v59;
  sub_274882640(0, 0, v57, &unk_274A10070, v60);

  sub_27472ECBC(v57, &unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274777A54(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_allSymbolItems) = sub_274777CB0(a3, v4);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_2747782E0(0);
  }

  v9 = sub_27490C85C(a3);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967948, &qword_274A0FB58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0F620;
    v14 = [a3 icon];
    v15 = [v14 backgroundColor];

    *(inited + 32) = v15;
    *(inited + 40) = 0;
    *(inited + 48) = 2;
    sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
    v16 = sub_274903E28(v11, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967948, &qword_274A0FB58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0F620;
    v17 = [a3 icon];
    v18 = [v17 backgroundColor];

    *(inited + 32) = v18;
    *(inited + 40) = 0;
    *(inited + 48) = 2;
    v19 = [a3 icon];
    v20 = [v19 glyphCharacter];

    v16 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
  }

  *(inited + 56) = v16;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  sub_274778D50(inited, 0);
  swift_setDeallocating();
  return sub_2747A33DC();
}

uint64_t sub_274777CB0(void *a1, int64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27490C850(a1);
  v57 = v7;
  v58 = v4;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v63 = v5;
    sub_2749FCE14("Apps", 4);
    if (qword_28159E3A8 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_3;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_9:
  v61 = *(a2 + 16);
  if (v61)
  {
    v28 = 0;
    v60 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v59 = *(v5 + 72);
    do
    {
      v62 = v28;
      sub_27477BD48();
      v29 = &v7[*(v4 + 20)];
      v31 = *v29;
      v30 = *(v29 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274763914(0, *(v11 + 16) + 1, 1, v11);
        v11 = v50;
      }

      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_274763914(v32 > 1, v33 + 1, 1, v11);
        v11 = v51;
      }

      *(v11 + 16) = v34;
      v63 = v11;
      v35 = v11 + 24 * v33;
      *(v35 + 32) = v31;
      *(v35 + 40) = v30;
      *(v35 + 48) = 1;
      v36 = *&v7[*(v4 + 24)];
      v37 = *(v36 + 16);
      if (v37)
      {
        v64 = MEMORY[0x277D84F90];
        sub_27476D500(0, v37, 0);
        v10 = v64;
        v38 = objc_opt_self();
        v39 = (v36 + 32);
        do
        {
          v40 = *v39++;
          v41 = [v38 clearBackground];
          v42 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph:v40 background:v41];

          v64 = v10;
          v44 = *(v10 + 16);
          v43 = *(v10 + 24);
          a2 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            sub_27476D500(v43 > 1, v44 + 1, 1);
            v10 = v64;
          }

          *(v10 + 16) = a2;
          v45 = v10 + 24 * v44;
          *(v45 + 32) = v42;
          *(v45 + 40) = 0;
          *(v45 + 48) = 0;
          --v37;
        }

        while (v37);
        v11 = v63;
        v34 = *(v63 + 16);
        v7 = v57;
        v4 = v58;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
        a2 = *(MEMORY[0x277D84F90] + 16);
        v11 = v63;
      }

      v46 = v34 + a2;
      if (__OFADD__(v34, a2))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
LABEL_3:
        v12 = qword_28159E448;
        v13 = sub_2749FCD64();
        v14 = sub_2749FCD64();

        v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

        v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v18 = v17;

        sub_274763914(0, 1, 1, MEMORY[0x277D84F90]);
        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        v22 = v19;
        if (v21 >= v20 >> 1)
        {
          sub_274763914(v20 > 1, v21 + 1, 1, v19);
          v22 = v55;
        }

        *(v22 + 16) = v21 + 1;
        v23 = v22 + 24 * v21;
        *(v23 + 32) = v16;
        *(v23 + 40) = v18;
        *(v23 + 48) = 1;
        sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);
        v24 = sub_274903E28(v10, v11);
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_274763914(v25 > 1, v26 + 1, 1, v22);
          v22 = v56;
        }

        v7 = v57;
        v4 = v58;
        *(v22 + 16) = v26 + 1;
        v11 = v22;
        v27 = v22 + 24 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        v5 = v63;
        goto LABEL_9;
      }

      if (v46 > *(v11 + 24) >> 1)
      {
        if (v34 <= v46)
        {
          v52 = v34 + a2;
        }

        else
        {
          v52 = v34;
        }

        sub_274763914(1, v52, 1, v11);
        v11 = v53;
        v34 = *(v53 + 16);
        if (*(v10 + 16))
        {
LABEL_25:
          if (((*(v11 + 24) >> 1) - v34) < a2)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          v10 = v62;
          if (a2)
          {
            v47 = *(v11 + 16);
            v48 = __OFADD__(v47, a2);
            v49 = v47 + a2;
            if (v48)
            {
              goto LABEL_39;
            }

            *(v11 + 16) = v49;
          }

          goto LABEL_34;
        }
      }

      else if (a2)
      {
        goto LABEL_25;
      }

      v10 = v62;
      if (a2)
      {
        goto LABEL_37;
      }

LABEL_34:
      v28 = v10 + 1;
      sub_27477BE08(v7, type metadata accessor for WFGlyphCategory);
    }

    while (v28 != v61);
  }

  return v11;
}

uint64_t sub_274778208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_274778228, 0, 0);
}

uint64_t sub_274778228()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_2749F9644();
    v2 = sub_2749F9624();
    v3 = *&Strong[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_semanticSymbolIndex];
    *&Strong[OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_semanticSymbolIndex] = v2;
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2747782E0(uint64_t a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_gridView);
  sub_274776F4C();
  sub_27496308C(v2, v3);

  return sub_27472ECBC(v2, &qword_280967DB0, &unk_274A29860);
}

uint64_t sub_274778398(uint64_t a1)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_gridView);
  sub_27477700C();
  sub_27496308C(v2, v3);

  return sub_27472ECBC(v2, &qword_280967DB0, &unk_274A29860);
}

void *sub_274778458()
{
  v2 = v1;
  OUTLINED_FUNCTION_130();
  switch(v3)
  {
    case 1:
      v31 = OUTLINED_FUNCTION_29_3();
      if (!v31)
      {
        return 0;
      }

      v5 = v31;
      type metadata accessor for WFIconPickerHeaderView();
      OUTLINED_FUNCTION_3();
      v6 = swift_dynamicCastClass();
      if (!v6)
      {
        goto LABEL_20;
      }

      v32 = OUTLINED_FUNCTION_24_0();
      sub_274885D4C(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_24_0();
      sub_274976098(v35, v36, v6);
      return v6;
    case 2:
      v21 = sub_274976A54();
      if (!v21)
      {
        return 0;
      }

      v22 = v21;
      type metadata accessor for WFIconPickerColorCell();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
        v23 = [*(v1 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_workflow) icon];
        v24 = [v23 backgroundColor];

        v25 = sub_2749FD604();
        sub_2747B5834(v0, v25 & 1, 0);
        v26 = *(v2 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_colorNamesDictionary);
        v27 = v22;
        sub_27494F964(v0, v26);
        if (v28)
        {
          v29 = sub_2749FCD64();
        }

        else
        {
          v29 = 0;
        }

        [v6 setAccessibilityLabel_];
      }

      else
      {
      }

      return v6;
    case 3:
      return sub_274976A54();
    default:
      v4 = OUTLINED_FUNCTION_29_3();
      if (!v4)
      {
        return 0;
      }

      v5 = v4;
      type metadata accessor for WFIconPickerSymbolCell();
      OUTLINED_FUNCTION_3();
      v6 = swift_dynamicCastClass();
      if (!v6)
      {
LABEL_20:

        return v6;
      }

      sub_2749775FC(v0, 0);
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = *(v2 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_workflow);
        v10 = OUTLINED_FUNCTION_24_0();
        sub_2747729AC(v10, v11, 0);
        v12 = sub_2748B8E20(v9);
        v14 = v13;
        v15 = [v8 bundleIdentifier];
        v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v18 = v17;

        if (v14)
        {
          if (v12 == v16 && v14 == v18)
          {
            v20 = 1;
          }

          else
          {
            v20 = sub_2749FDCC4();
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (!v37)
        {
          return v6;
        }

        v38 = v37;
        v39 = OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_workflow;
        v40 = *(v2 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_workflow);
        v41 = v0;
        v42 = [v40 icon];
        v43 = [v42 glyphCharacter];

        sub_2748B8E20(*(v2 + v39));
        if (v44)
        {

          v20 = 0;
        }

        else
        {
          v20 = v43 == [v38 glyph];
        }
      }

      *(v6 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = v20 & 1;
      sub_274977DCC();
      v45 = OUTLINED_FUNCTION_24_0();
      sub_274772984(v45, v46, 0);
      return v6;
  }
}

id sub_274778838(int a1, id a2)
{
  result = [a2 isFirstResponder];
  if (result)
  {
    sub_2749760F0(a2);
    sub_274778A44();
  }

  return result;
}

uint64_t sub_2747788AC(uint64_t a1, void *a2)
{
  v2 = sub_2749760F0(a2);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = v3;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_5:

    return sub_274778398(1);
  }

  return result;
}

double sub_27477892C(uint64_t a1, uint64_t a2, char a3)
{
  result = 60.0;
  switch(a3)
  {
    case 1:
      if (qword_280966C10 != -1)
      {
        swift_once();
      }

      [qword_2809891C8 lineHeight];
      result = v4 + 12.0;
      break;
    case 2:
      return result;
    case 3:
      if (qword_280966BF0 != -1)
      {
        swift_once();
      }

      result = *&qword_2809891A0;
      break;
    default:
      result = 50.0;
      break;
  }

  return result;
}

double sub_274778A00(double a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 60.0;
  switch(a4)
  {
    case 1:
    case 3:
      result = a1;
      break;
    case 2:
      return result;
    default:
      result = 50.0;
      break;
  }

  return result;
}

uint64_t sub_274778A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  OUTLINED_FUNCTION_34(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - v3);
  v5 = *(v0 + OBJC_IVAR____TtC10WorkflowUI30WFIconPickerGridViewDataSource_gridView);
  sub_27477700C();
  sub_27496308C(v4, 0);

  return sub_27472ECBC(v4, &qword_280967DB0, &unk_274A29860);
}

id sub_274778B58(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFIconPickerGridViewDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_274778C50()
{
  result = qword_280967D68;
  if (!qword_280967D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967D68);
  }

  return result;
}

unint64_t sub_274778CA8()
{
  result = qword_280967D70;
  if (!qword_280967D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967D70);
  }

  return result;
}

void sub_274778D50(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v83) = a2;
  v98 = a1;
  v81 = sub_2749FA4E4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DA8, &qword_274A10080);
  v5 = MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v80 - v12;
  swift_beginAccess();
  sub_27477BEB8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8, &unk_274A10090);
  v15 = sub_2749F9524();
  v16 = *(*(v14 - 8) + 8);
  v16(v13, v14);
  v84 = v3;
  sub_27477BEB8();
  v17 = sub_2749F9534();
  v16(v11, v14);

  sub_27475F9B8();
  v90 = 0;
  v105 = v18;
  v100 = v15;
  v101 = 0;
  v102 = v17;
  v103 = 0;
  v104 = 0;
  v19 = MEMORY[0x277D84F98];
  v20 = &v107;
LABEL_2:
  *(v20 - 32) = v19;
  v89 = sub_27477BC9C();
  v95 = v21;
  if (v21)
  {
    if (!__OFADD__(v90, 1))
    {
      v85 = v90 + 1;
      v22 = 0;
      v94 = *(v95 + 16);
      v93 = v95 + 32;
      while (1)
      {
        if (v22 == v94)
        {

          v19 = v85;
          v20 = &v106;
          goto LABEL_2;
        }

        if (v22 >= *(v95 + 16))
        {
          __break(1u);
LABEL_47:

          goto LABEL_50;
        }

        v23 = v93 + 24 * v22;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = v105;
        v28 = *(v105 + 16);
        v96 = v22 + 1;
        v98 = v24;
        if (!v28)
        {
          break;
        }

        sub_2749FDDF4();
        v92 = v22;
        switch(v26)
        {
          case 1:
            MEMORY[0x277C5FB60](1);
            sub_2747729AC(v25, v24, 1);
            sub_2749FCE24();
            break;
          case 2:
            MEMORY[0x277C5FB60](2);
            v29 = v25;
            v30 = v24;
            v31 = 2;
            goto LABEL_12;
          case 3:
            MEMORY[0x277C5FB60](3);
            sub_2747729AC(v25, v24, 3);
            break;
          default:
            MEMORY[0x277C5FB60](0);
            v29 = v25;
            v30 = v24;
            v31 = 0;
LABEL_12:
            sub_2747729AC(v29, v30, v31);
            sub_2749FD614();
            break;
        }

        v32 = sub_2749FDE44();
        v33 = -1 << *(v27 + 32);
        v34 = v32 & ~v33;
        if (((*(v27 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_39;
        }

        v35 = ~v33;
        v37 = v26 == 3 && (v98 | v25) == 0;
        HIDWORD(v97) = v37;
        while (1)
        {
          v38 = *(v27 + 48) + 24 * v34;
          v40 = *v38;
          v39 = *(v38 + 8);
          v41 = *(v38 + 16);
          switch(*(v38 + 16))
          {
            case 1:
              if (v26 == 1)
              {
                v48 = v40 == v25 && v39 == v98;
                if (v48 || (sub_2749FDCC4() & 1) != 0)
                {
                  goto LABEL_41;
                }
              }

              goto LABEL_38;
            case 2:
              if (v26 != 2)
              {
                goto LABEL_38;
              }

              sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
              v47 = v40;
              v43 = sub_2749FD604();
              v44 = v40;
              v45 = v39;
              v46 = 2;
              break;
            case 3:
              if ((v97 & 0x100000000) != 0)
              {
                goto LABEL_41;
              }

              goto LABEL_38;
            default:
              if (v26)
              {
                goto LABEL_38;
              }

              sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
              v42 = v40;
              v43 = sub_2749FD604();
              v44 = v40;
              v45 = v39;
              v46 = 0;
              break;
          }

          sub_274772984(v44, v45, v46);
          if (v43)
          {
            break;
          }

LABEL_38:
          v34 = (v34 + 1) & v35;
          if (((*(v27 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

LABEL_41:
        v52 = v86 + *(v88 + 48);
        MEMORY[0x277C5AFB0](v92, v90);
        v53 = v98;
        *v52 = v25;
        *(v52 + 8) = v53;
        *(v52 + 16) = v41;
        sub_27477BF14();
        sub_2747729AC(v25, v53, v41);
        v54 = v91;
        swift_isUniquelyReferenced_nonNull_native();
        v99[0] = v54;
        sub_2748F9E1C();
        sub_2747707C0(v25, v53, v41, v55, v56, v57, v58, v59, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v99[0], v92, v93, v94, v95, v96, v97, v98, v99[0], v99[1], v99[2], v99[3], v99[4]);
        sub_27477BC88(v60, v61, v62);
        v49 = v25;
        v50 = v53;
        v51 = v41;
LABEL_40:
        sub_274772984(v49, v50, v51);
        v22 = v96;
      }

      sub_2747729AC(v25, v24, v26);
LABEL_39:
      v49 = v25;
      v50 = v98;
      v51 = v26;
      goto LABEL_40;
    }

    __break(1u);
  }

  else
  {

    v63 = v105;
    v64 = v82;
    if (!*(v105 + 16))
    {
      goto LABEL_47;
    }

    sub_2749FA3D4();

    v65 = sub_2749FA4D4();
    v66 = sub_2749FD2C4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v99[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_2747AF460(0xD00000000000002DLL, 0x8000000274A2AFE0, v99);
      *(v67 + 12) = 2048;
      v69 = *(v63 + 16);

      *(v67 + 14) = v69;

      _os_log_impl(&dword_274719000, v65, v66, "%s was passed %ld items not in snapshot.", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x277C61040](v68, -1, -1);
      MEMORY[0x277C61040](v67, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v80 + 8))(v64, v81);
LABEL_50:
    v70 = v84;
    v71 = *((*MEMORY[0x277D85000] & *v84) + 0xB8);
    swift_beginAccess();
    *(v70 + v71) = v91;

    if ((v83 & 0x100000000) != 0)
    {
      sub_27496A010(v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99[0]);
    }
  }
}

void sub_274779618()
{
  OUTLINED_FUNCTION_48();
  HIDWORD(v135) = v2;
  v170 = v3;
  v133 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v132 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E10, &unk_274A100F0);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v9);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060, &qword_274A223A0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v12);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E18, &qword_274A10100);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v132 - v14;
  v162 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v169 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v19);
  v137 = type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_43();
  v151 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v132 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v30);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E20, &qword_274A10108);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E28, &unk_274A10110);
  v34 = OUTLINED_FUNCTION_34(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  v38 = OUTLINED_FUNCTION_34(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v132 - v40;
  swift_beginAccess();
  sub_27477BEB8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
  v168 = sub_2749F9524();
  v43 = *(*(v42 - 8) + 8);
  v43(v41, v42);
  v136 = v0;
  sub_27477BEB8();
  v44 = sub_2749F9534();
  v45 = v42;
  v46 = v154;
  v43(v1, v45);
  v47 = v153;
  v48 = v164;

  sub_27475FD34();
  v145 = 0;
  v175 = v49;
  v173[2] = v168;
  v173[3] = 0;
  v50 = v137;
  v150 = (v169 + 32);
  v161 = (v169 + 8);
  v173[4] = v44;
  v173[5] = 0;
  v174 = 0;
  v51 = MEMORY[0x277D84F98];
  for (i = v173; ; i = &v172)
  {
    *(i - 32) = v51;
    v144 = sub_27477BC9C();
    if (!v53)
    {

      v115 = v175;
      if (*(v175 + 16))
      {
        v116 = v134;
        sub_2749FA3D4();

        v117 = sub_2749FA4D4();
        v118 = sub_2749FD2C4();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v171 = v120;
          *v119 = 136315394;
          *(v119 + 4) = OUTLINED_FUNCTION_18_6("select(items:shouldImmediatelyRefreshLayout:)");
          *(v119 + 12) = 2048;
          v121 = *(v115 + 16);

          *(v119 + 14) = v121;

          _os_log_impl(&dword_274719000, v117, v118, "%s was passed %ld items not in snapshot.", v119, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v120);
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_31();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        (*(v132 + 8))(v116, v133);
      }

      else
      {
      }

      v122 = v136;
      v123 = *((*MEMORY[0x277D85000] & *v136) + 0xB8);
      OUTLINED_FUNCTION_26_1();
      *(v122 + v123) = v146;

      if ((v135 & 0x100000000) != 0)
      {
        sub_27496C708(v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
      }

      OUTLINED_FUNCTION_46();
      return;
    }

    if (__OFADD__(v145, 1))
    {
      goto LABEL_67;
    }

    v138 = v145 + 1;
    v54 = 0;
    v55 = *(v53 + 16);
    v56 = v149;
    v160 = v53;
    v158 = v55;
LABEL_5:
    if (v54 == v55)
    {
      v57 = 1;
      v166 = v55;
      goto LABEL_10;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v54 >= *(v53 + 16))
    {
      goto LABEL_66;
    }

    v58 = v54 + 1;
    *v148 = v54;
    OUTLINED_FUNCTION_1_4();
    sub_27477BD48();
    sub_27477BF14();
    v57 = 0;
    v166 = v58;
LABEL_10:
    v59 = v159;
    __swift_storeEnumTagSinglePayload(v47, v57, 1, v46);
    sub_27477BF14();
    if (__swift_getEnumTagSinglePayload(v59, 1, v46) != 1)
    {
      v163 = *v59;
      sub_27477BDA4(v59 + *(v46 + 48), v48);
      if (!*(v175 + 16))
      {
        goto LABEL_51;
      }

      v165 = v175;
      sub_2749FDDF4();
      OUTLINED_FUNCTION_1_4();
      sub_27477BD48();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          MEMORY[0x277C5FB60](3);
          sub_2749FCE24();

          break;
        case 2u:
          v62 = v162;
          (*v150)(v139, v152, v162);
          MEMORY[0x277C5FB60](4);
          sub_27477BE60();
          sub_2749FCD04();
          v63 = OUTLINED_FUNCTION_22_2();
          v64(v63, v62);
          break;
        case 3u:
          v65 = *v152;
          MEMORY[0x277C5FB60](6);
          v61 = v65;
          goto LABEL_20;
        case 4u:
          v61 = 0;
          goto LABEL_20;
        case 5u:
          v61 = 1;
          goto LABEL_20;
        case 6u:
          v61 = 5;
LABEL_20:
          MEMORY[0x277C5FB60](v61);
          break;
        default:
          v60 = *v152;
          MEMORY[0x277C5FB60](2);
          sub_2749FD614();

          break;
      }

      v66 = sub_2749FDE44();
      v67 = -1 << *(v165 + 32);
      v68 = v66 & ~v67;
      v170 = v165 + 56;
      if (((*(v165 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
      {
LABEL_51:
        OUTLINED_FUNCTION_0_4();
        v104 = v48;
        goto LABEL_52;
      }

      v168 = ~v67;
      v169 = *(v151 + 72);
      while (1)
      {
        OUTLINED_FUNCTION_7_3();
        sub_27477BD48();
        v69 = &v15[*(v167 + 48)];
        sub_27477BD48();
        sub_27477BD48();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            OUTLINED_FUNCTION_1_4();
            v85 = v156;
            sub_27477BD48();
            v86 = *v85;
            v87 = v85[1];
            if (OUTLINED_FUNCTION_17_1() != 1)
            {
              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v98);

              v48 = v164;
              goto LABEL_47;
            }

            v88 = *v69;
            v89 = *(v69 + 1);
            v90 = v86 == v88 && v87 == v89;
            v48 = v164;
            if (v90)
            {

              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v105);
            }

            else
            {
              v91 = sub_2749FDCC4();

              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v92);
              if ((v91 & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_54;
          case 2u:
            OUTLINED_FUNCTION_1_4();
            v74 = v157;
            sub_27477BD48();
            if (OUTLINED_FUNCTION_17_1() != 2)
            {
              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v95);
              v96 = OUTLINED_FUNCTION_22_2();
              v97(v96, v162);
              goto LABEL_47;
            }

            v75 = v50;
            v76 = v147;
            v77 = v162;
            (*v150)(v147, v69, v162);
            v78 = sub_2749F9EA4();
            v79 = v74;
            v80 = *v161;
            v81 = v76;
            v50 = v75;
            v56 = v149;
            (*v161)(v81, v77);
            OUTLINED_FUNCTION_0_4();
            sub_27477BE08(v28, v82);
            v83 = v79;
            v48 = v164;
            v80(v83, v77);
            if (v78)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          case 3u:
            OUTLINED_FUNCTION_7_3();
            sub_27477BE08(v28, v84);
            OUTLINED_FUNCTION_11();
            sub_27477BD48();
            if (OUTLINED_FUNCTION_17_1() != 3)
            {
              goto LABEL_47;
            }

            if (*v56 == *v69)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          case 4u:
            OUTLINED_FUNCTION_0_4();
            sub_27477BE08(v28, v73);
            if (OUTLINED_FUNCTION_17_1() == 4)
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          case 5u:
            OUTLINED_FUNCTION_0_4();
            sub_27477BE08(v28, v93);
            if (OUTLINED_FUNCTION_17_1() == 5)
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          case 6u:
            OUTLINED_FUNCTION_0_4();
            sub_27477BE08(v28, v94);
            if (OUTLINED_FUNCTION_17_1() == 6)
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          default:
            OUTLINED_FUNCTION_1_4();
            v70 = v155;
            sub_27477BD48();
            v71 = *v70;
            if (OUTLINED_FUNCTION_17_1())
            {
              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v72);

LABEL_47:
              sub_27472ECBC(v15, &qword_280967E18, &qword_274A10100);
            }

            else
            {
              v99 = *v69;
              sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
              v100 = sub_2749FD604();

              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v28, v101);
              if (v100)
              {
LABEL_54:
                sub_27477BE08(v15, type metadata accessor for WFAddToHomeScreenItem);
                MEMORY[0x277C5AFB0](v163, v145);
                sub_27477BD48();
                v106 = v141;
                sub_27477BF14();
                v107 = v146;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v171 = v107;
                sub_2748FA210(v106, v144, isUniquelyReferenced_nonNull_native, v109, v110, v111, v112, v113, v132, v133);
                v146 = v171;
                v114 = v143;
                sub_274770D10();
                sub_27472ECBC(v114, &qword_280967E10, &unk_274A100F0);
                v104 = v48;
                v103 = type metadata accessor for WFAddToHomeScreenItem;
LABEL_52:
                sub_27477BE08(v104, v103);
                v46 = v154;
                v47 = v153;
                v53 = v160;
                v55 = v158;
                v54 = v166;
                goto LABEL_5;
              }

LABEL_49:
              OUTLINED_FUNCTION_0_4();
              sub_27477BE08(v15, v102);
            }

            v68 = (v68 + 1) & v168;
            if (((*(v170 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_51;
            }

            break;
        }
      }
    }

    v51 = v138;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_27477A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  HIDWORD(v112) = v25;
  v126 = v26;
  v110 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v109 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v29);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFF0, &qword_274A22310);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30, &qword_274A10130);
  v34 = OUTLINED_FUNCTION_34(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v108 - v36;
  swift_beginAccess();
  sub_27477BEB8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38, &qword_274A10138);
  v39 = sub_2749F9524();
  v40 = *(*(v38 - 8) + 8);
  v40(v37, v38);
  v113 = v24;
  sub_27477BEB8();
  v41 = sub_2749F9534();
  v40(v21, v38);

  sub_27475FF74();
  v43 = v42;
  v119 = 0;
  v137 = v42;
  v132 = v39;
  v133 = 0;
  v134 = v41;
  v135 = 0;
  v136 = 0;
  v44 = MEMORY[0x277D84F98];
  v45 = &a15;
LABEL_2:
  *(v45 - 32) = v44;
  v118 = sub_27477BC9C();
  v123 = v46;
  if (v46)
  {
    if (__OFADD__(v119, 1))
    {
      __break(1u);
      return;
    }

    v114 = v119 + 1;
    v47 = 0;
    v122 = *(v123 + 16);
    v121 = v123 + 32;
LABEL_5:
    v48 = v43 + 56;
    v125 = v43;
    while (1)
    {
      if (v47 == v122)
      {

        v44 = v114;
        v45 = &a14;
        goto LABEL_2;
      }

      if (v47 >= *(v123 + 16))
      {
        break;
      }

      v49 = v121 + 24 * v47;
      v51 = *v49;
      v50 = *(v49 + 8);
      v52 = *(v49 + 16);
      v53 = *(v43 + 16);
      v126 = v47 + 1;
      if (v53)
      {
        sub_2749FDDF4();
        if (v52)
        {
          if (v52 == 1)
          {
            MEMORY[0x277C5FB60](3);
            sub_2749FDE24();
            v54 = OUTLINED_FUNCTION_11();
            v56 = 1;
          }

          else
          {
            MEMORY[0x277C5FB60]((v51 | v50) != 0);
            v54 = OUTLINED_FUNCTION_11();
            v56 = 2;
          }

          sub_274772E38(v54, v55, v56);
        }

        else
        {
          MEMORY[0x277C5FB60](2);
          v59 = OUTLINED_FUNCTION_11();
          sub_274772E38(v59, v60, 0);
          sub_2749FCE24();
        }

        v61 = sub_2749FDE44();
        v62 = -1 << *(v43 + 32);
        v63 = v61 & ~v62;
        if ((*(v48 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
        {
          v64 = ~v62;
          v65 = *(v125 + 48);
          v66 = v52 == 2;
          if (v50 | v51)
          {
            v66 = 0;
          }

          HIDWORD(v124) = v66;
          v68 = v51 != 1 || v50 != 0 || v52 != 2;
          do
          {
            v69 = (v65 + 24 * v63);
            v70 = *v69;
            v71 = v69[1];
            v72 = *(v69 + 16);
            if (*(v69 + 16))
            {
              if (v72 == 1)
              {
                if (v52 == 1 && *v69 == v51)
                {
                  goto LABEL_43;
                }
              }

              else if (v70 | v71)
              {
                if (!v68)
                {
                  v50 = 0;
                  v51 = 1;
LABEL_43:
                  v76 = v115 + *(v117 + 48);
                  MEMORY[0x277C5AFB0](v47, v119);
                  *v76 = v51;
                  *(v76 + 8) = v50;
                  *(v76 + 16) = v72;
                  sub_27477BF14();
                  v77 = OUTLINED_FUNCTION_11();
                  sub_274772E38(v77, v78, v72);
                  v79 = v120;
                  swift_isUniquelyReferenced_nonNull_native();
                  v127 = v79;
                  sub_2748FA474();
                  v120 = v127;
                  v80 = OUTLINED_FUNCTION_11();
                  sub_274770F10(v80, v81, v72, v82, v83, v84, v85, v86, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
                  sub_27477BF70(v87, v88, v89);
                  v90 = OUTLINED_FUNCTION_11();
                  sub_274772E24(v90, v91, v72);
                  v43 = v137;
                  v47 = v126;
                  goto LABEL_5;
                }
              }

              else if ((v124 & 0x100000000) != 0)
              {
                goto LABEL_43;
              }
            }

            else if (!v52)
            {
              v73 = v70 == v51 && v71 == v50;
              if (v73 || (sub_2749FDCC4() & 1) != 0)
              {
                goto LABEL_43;
              }
            }

            v63 = (v63 + 1) & v64;
          }

          while (((*(v48 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) != 0);
        }
      }

      else
      {
        v57 = OUTLINED_FUNCTION_11();
        sub_274772E38(v57, v58, v52);
      }

      v74 = OUTLINED_FUNCTION_11();
      sub_274772E24(v74, v75, v52);
      v43 = v125;
      v47 = v126;
    }

    __break(1u);
  }

  else
  {

    v92 = v111;
    if (*(v43 + 16))
    {
      sub_2749FA3D4();

      v93 = sub_2749FA4D4();
      v94 = sub_2749FD2C4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v127 = v96;
        *v95 = 136315394;
        *(v95 + 4) = OUTLINED_FUNCTION_18_6("select(items:shouldImmediatelyRefreshLayout:)");
        *(v95 + 12) = 2048;
        v97 = *(v43 + 16);

        *(v95 + 14) = v97;

        _os_log_impl(&dword_274719000, v93, v94, "%s was passed %ld items not in snapshot.", v95, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v96);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v109 + 8))(v92, v110);
      goto LABEL_52;
    }
  }

LABEL_52:
  v98 = v113;
  v99 = *((*MEMORY[0x277D85000] & *v113) + 0xB8);
  OUTLINED_FUNCTION_26_1();
  *(v98 + v99) = v120;

  if ((v112 & 0x100000000) != 0)
  {
    sub_27496F510(v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_27477ACFC()
{
  result = qword_280967D98;
  if (!qword_280967D98)
  {
    sub_27471CF08(255, &qword_28159E4E0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967D98);
  }

  return result;
}

uint64_t sub_27477AD70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27475F680;

  return sub_274778208(a1, v4, v5, v6);
}

void sub_27477AE24(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a1;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;

  v7 = 0;
  v8 = (a2 + 40);
  v35 = v6 >> 62;
  v32 = a2;
  for (i = v6; ; v6 = i)
  {
    if (v35)
    {
      v9 = sub_2749FD844();
    }

    else
    {
      v9 = *(v36 + 16);
    }

    if (v7 == v9)
    {

LABEL_26:

      return;
    }

    if (!v34)
    {
      break;
    }

    v10 = MEMORY[0x277C5F6D0](v7, v6);
LABEL_9:
    v11 = v10;
    v12 = *(a2 + 16);
    if (v7 == v12)
    {

      goto LABEL_26;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v13 = *(v8 - 1);
    v14 = *v8;
    v15 = v8;
    v16 = *a4;

    v18 = sub_274797D38();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_29;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if (a3)
      {
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DC8, &unk_274A100A0);
        sub_2749FDA94();
        if (v22)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_2749342FC(v21, a3 & 1);
      v23 = sub_274797D38();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_31;
      }

      v18 = v23;
      if (v22)
      {
LABEL_22:
        v30 = swift_allocError();
        swift_willThrow();
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_32;
      }
    }

    v25 = *a4;
    *(*a4 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v25[6] + 8 * v18) = v11;
    v26 = (v25[7] + 16 * v18);
    *v26 = v13;
    v26[1] = v14;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_30;
    }

    v25[2] = v29;
    v8 = v15 + 2;
    ++v7;
    a3 = 1;
    a2 = v32;
  }

  if (v7 < *(v36 + 16))
  {
    v10 = *(v6 + 8 * v7 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_27471CF08(0, &qword_280968670, 0x277D79E20);
  sub_2749FDD54();
  __break(1u);
LABEL_32:
  sub_2749FD934();
  MEMORY[0x277C5EBC0](0xD00000000000001BLL, 0x8000000274A2B050);
  sub_27471CF08(0, &qword_280968670, 0x277D79E20);
  sub_2749FDA74();
  MEMORY[0x277C5EBC0](39, 0xE100000000000000);
  sub_2749FDAE4();
  __break(1u);
}

void sub_27477B1E0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v53 = a4;
  v7 = sub_2749F9EB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DD8, &qword_274A100B8);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = v7;
  v45 = &v41 - v14;
  v15 = 0;
  v16 = *(a1 + 16);
  v46 = v8 + 16;
  v47 = v16;
  v48 = v8;
  v49 = a2;
  v52 = (v8 + 32);
  v17 = (a2 + 40);
  v42 = v12;
  for (i = a1; ; a1 = i)
  {
    if (v47 == v15)
    {

      return;
    }

    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_2749FDD54();
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(v48 + 72);
    (*(v48 + 16))(v12, a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + v18 * v15, v7);
    v19 = *(v49 + 16);
    if (v15 == v19)
    {

      (*(v48 + 8))(v12, v7);
      return;
    }

    if (v15 >= v19)
    {
      goto LABEL_21;
    }

    v20 = *(v17 - 1);
    v21 = *v17;
    v50 = v17;
    v51 = v20;
    v22 = *v52;
    v23 = v45;
    (*v52)(v45, v12, v7);
    v22(v54, v23, v7);
    v24 = *v53;

    v26 = sub_274797D7C();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      break;
    }

    if (a3)
    {
      if (v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DE0, &unk_274A100C0);
      sub_2749FDA94();
      if (v30)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v33 = v54;
    v34 = *v53;
    *(*v53 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v7 = v44;
    v22((v34[6] + v26 * v18), v33, v44);
    v35 = (v34[7] + 16 * v26);
    *v35 = v51;
    v35[1] = v21;
    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_23;
    }

    v34[2] = v38;
    v17 = v50 + 2;
    ++v15;
    a3 = 1;
    v12 = v42;
  }

  sub_2749344E4(v29, a3 & 1);
  v31 = sub_274797D7C();
  if ((v30 & 1) != (v32 & 1))
  {
    goto LABEL_24;
  }

  v26 = v31;
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v39 = swift_allocError();
  swift_willThrow();

  v57 = v39;
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v48 + 8))(v54, v44);

    return;
  }

LABEL_25:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_2749FD934();
  MEMORY[0x277C5EBC0](0xD00000000000001BLL, 0x8000000274A2B050);
  sub_2749FDA74();
  MEMORY[0x277C5EBC0](39, 0xE100000000000000);
  sub_2749FDAE4();
  __break(1u);
}

void sub_27477B6BC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_27471CF08(0, &qword_2809679B0, 0x277CFC318);
      sub_2749FDD54();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    v12 = sub_2747984B4();
    v13 = v8[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DF0, &unk_274A100D0);
      sub_2749FDA94();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v9;
    *(v19[7] + 8 * v12) = v10;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_274934888(v15, a2 & 1);
  v17 = sub_2747984B4();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_2749FD934();
  MEMORY[0x277C5EBC0](0xD00000000000001BLL, 0x8000000274A2B050);
  sub_27471CF08(0, &qword_2809679B0, 0x277CFC318);
  sub_2749FDA74();
  MEMORY[0x277C5EBC0](39, 0xE100000000000000);
  sub_2749FDAE4();
  __break(1u);
}

void sub_27477B9A8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2749FDD54();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_274797CC0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E00, &qword_274A100E0);
      sub_2749FDA94();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v12) = v10;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_274934A54(v15, a2 & 1);
  v17 = sub_274797CC0(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_2749FD934();
  MEMORY[0x277C5EBC0](0xD00000000000001BLL, 0x8000000274A2B050);
  sub_2749FDA74();
  MEMORY[0x277C5EBC0](39, 0xE100000000000000);
  sub_2749FDAE4();
  __break(1u);
}

void sub_27477BC88(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_274772984(a1, a2, a3);
  }
}

uint64_t sub_27477BC9C()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
LABEL_6:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v1 = *(*v0 + v2 + 32);
    *(v0 + 8) = v2 + 1;
    v4 = *(v0 + 24);
    v5 = *(*(v0 + 16) + 16);
    if (v4 == v5)
    {
      goto LABEL_6;
    }

    if (v4 < v5)
    {
      *(v0 + 24) = v4 + 1;

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27477BD48()
{
  OUTLINED_FUNCTION_130();
  v2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_27477BDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAddToHomeScreenItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27477BE08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27477BE60()
{
  result = qword_280967AF0;
  if (!qword_280967AF0)
  {
    sub_2749F9EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967AF0);
  }

  return result;
}

uint64_t sub_27477BEB8()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_27477BF14()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_27477BF70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_274772E24(a1, a2, a3);
  }

  return a1;
}

unint64_t OUTLINED_FUNCTION_18_6@<X0>(uint64_t a1@<X8>)
{

  return sub_2747AF460(0xD00000000000002DLL, (a1 - 32) | 0x8000000000000000, (v1 - 232));
}

uint64_t SmartShortcutPickerTriggerSelectedEntryMetadata.selectedEntryMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA9uLL);
  memcpy(a1, v1, 0xA9uLL);
  return sub_27477BFFC(__dst, v4);
}

id SmartShortcutPickerTriggerSelectedEntryMetadata.actionTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 224);
  *(a1 + 48) = v8;
  return sub_27477C07C(v2, v3, v4, v5, v6, v7, v8);
}

id sub_27477C07C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_27477C094(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

id sub_27477C094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
  }
}

id SmartShortcutPickerTriggerSelectedEntryMetadata.iconOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 232);
  *a1 = v2;
  return v2;
}

__n128 SmartShortcutPickerTriggerSelectedEntryMetadata.init(selectedEntryMetadata:actionTemplate:iconOverride:)@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(v10, __src, 0xA9uLL);
  v7 = *(a2 + 48);
  memcpy(a4, v10, 0xB0uLL);
  v8 = *(a2 + 16);
  *(a4 + 176) = *a2;
  *(a4 + 192) = v8;
  result = *(a2 + 32);
  *(a4 + 208) = result;
  *(a4 + 224) = v7;
  *(a4 + 232) = a3;
  return result;
}

id sub_27477C198@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v2, 0x81uLL);
  v6 = v2[19];
  v7 = v2[20];
  v8 = *(v3 + 168);
  v9 = v3[23];
  v11 = v3[24];
  v10 = v3[25];
  v42 = v3[22];
  v44 = v3[27];
  v12 = *(v3 + 224);
  v46 = v3[26];
  v48 = v3[29];
  v40 = v10;
  if (v12 == 255)
  {
    v38 = a1;
    v52[0] = a1;
    sub_27477D3E8(v52);
    v13 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
    v24 = *(v13 + 28);
    v25 = sub_2749FA0F4();
    __swift_storeEnumTagSinglePayload(a2 + v24, 1, 1, v25);
    v26 = memcpy(a2, v52, 0xB9uLL);
    OUTLINED_FUNCTION_3_9(v26, v27, v28, v29, v30, v31, v32, v33, v36, v38, v10, v42, v44, v46, v48);
    v34 = v39;
  }

  else
  {
    __src[136] = v12 & 1;
    memcpy(&__src[7], v3, 0x81uLL);
    v52[0] = v42;
    v52[1] = v9;
    v52[2] = v11;
    v52[3] = v10;
    v52[4] = v46;
    v52[5] = v44;
    LOBYTE(v52[6]) = v12 & 1;
    memcpy(&v52[6] + 1, __src, 0x88uLL);
    sub_274754670(v52);
    v13 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
    v14 = *(v13 + 28);
    v15 = sub_2749FA0F4();
    __swift_storeEnumTagSinglePayload(a2 + v14, 1, 1, v15);
    v16 = memcpy(a2, v52, 0xB9uLL);
    OUTLINED_FUNCTION_3_9(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v40, v42, v44, v46, v48);
    sub_274772B38(__dst, v50);
  }

  type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
  sub_27477C07C(v43, v9, v11, v41, v47, v45, v12);
  sub_27477D408(v6, v7, v8);

  return v49;
}

uint64_t sub_27477C37C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000274A2B100 == a2;
  if (v3 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65546E6F69746361 && a2 == 0xEE006574616C706DLL;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265764F6E6F6369 && a2 == 0xEC00000065646972)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27477C4D0(unsigned __int8 a1)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1);
  return sub_2749FDE44();
}

uint64_t sub_27477C524(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0x65546E6F69746361;
  }

  return 0x7265764F6E6F6369;
}

uint64_t sub_27477C5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27477C37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27477C5F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27477C4A0();
  *a1 = result;
  return result;
}

uint64_t sub_27477C620(uint64_t a1)
{
  v2 = sub_27477C954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27477C65C(uint64_t a1)
{
  v2 = sub_27477C954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmartShortcutPickerTriggerSelectedEntryMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E40, &qword_274A10140);
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  memcpy(v33, v1, 0xA9uLL);
  v10 = *(v1 + 176);
  v22 = *(v1 + 184);
  v23 = v10;
  v11 = *(v1 + 192);
  v20 = *(v1 + 200);
  v21 = v11;
  v12 = *(v1 + 208);
  v18 = *(v1 + 216);
  v19 = v12;
  v34 = *(v1 + 224);
  v17 = *(v1 + 232);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27477BFFC(v33, v32);
  sub_27477C954();
  sub_2749FDE94();
  memcpy(v32, v33, 0xA9uLL);
  v36 = 0;
  sub_27477C9A8();
  sub_2749FDC44();
  if (v2)
  {
    memcpy(v31, v32, 0xA9uLL);
    sub_27477C9FC(v31);
  }

  else
  {
    v13 = v17;
    memcpy(v31, v32, 0xA9uLL);
    sub_27477C9FC(v31);
    v24 = v23;
    v25 = v22;
    v26 = v21;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v34;
    v35 = 1;
    sub_27477C07C(v23, v22, v21, v20, v19, v18, v34);
    sub_27477CA50();
    sub_2749FDC24();
    sub_27477CAA4(v24, v25, v26, v27, v28, v29, v30);
    v24 = v13;
    v35 = 2;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E58, &qword_274A10148);
    sub_27477CF2C(&qword_280967E60, &protocol conformance descriptor for SmartShortcutPickerCodableWrapper<A>);
    sub_2749FDC24();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_27477C954()
{
  result = qword_280967E48;
  if (!qword_280967E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E48);
  }

  return result;
}

unint64_t sub_27477C9A8()
{
  result = qword_2809706F0;
  if (!qword_2809706F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809706F0);
  }

  return result;
}

unint64_t sub_27477CA50()
{
  result = qword_280967E50;
  if (!qword_280967E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E50);
  }

  return result;
}

void *sub_27477CAA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_27477CABC(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_27477CABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t SmartShortcutPickerTriggerSelectedEntryMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E68, &qword_274A10150);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27477C954();
  sub_2749FDE74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  sub_27477CE84();
  OUTLINED_FUNCTION_2_6();
  sub_2749FDBE4();
  memcpy(v24, v23, 0xA9uLL);
  LOBYTE(v18[0]) = 1;
  sub_27477CED8();
  OUTLINED_FUNCTION_2_6();
  sub_2749FDBC4();
  v6 = v19[0];
  v13 = v19[3];
  v14 = v19[2];
  v12 = v19[4];
  v16 = v19[1];
  v17 = v19[5];
  v25 = LOBYTE(v19[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E58, &qword_274A10148);
  v26 = 2;
  sub_27477CF2C(&qword_280967E80, &protocol conformance descriptor for SmartShortcutPickerCodableWrapper<A>);
  sub_2749FDBC4();
  v15 = v19[0];
  v7 = OUTLINED_FUNCTION_0_5();
  v8(v7);
  v9 = v22;
  memcpy(v18, v24, 0xB0uLL);
  v18[22] = v6;
  v18[23] = v16;
  v18[24] = v14;
  v18[25] = v13;
  v18[26] = v12;
  v18[27] = v17;
  v10 = v25;
  LOBYTE(v18[28]) = v25;
  v18[29] = v22;
  memcpy(a2, v18, 0xF0uLL);
  sub_27477CF7C(v18, v19);
  __swift_destroy_boxed_opaque_existential_0(a1);
  memcpy(v19, v24, 0xB0uLL);
  v19[22] = v15;
  v19[23] = v16;
  v19[24] = v14;
  v19[25] = v13;
  v19[26] = v12;
  v19[27] = v17;
  v20 = v10;
  v21 = v9;
  return sub_27477CFB4(v19);
}

unint64_t sub_27477CE84()
{
  result = qword_280967E70;
  if (!qword_280967E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E70);
  }

  return result;
}

unint64_t sub_27477CED8()
{
  result = qword_280967E78;
  if (!qword_280967E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E78);
  }

  return result;
}

uint64_t sub_27477CF2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967E58, &qword_274A10148);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI38SmartShortcutPickerActionConfigurationO9ParameterV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI26SmartShortcutPickerSectionV2IDO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI33SmartShortcutPickerActionTemplateOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27477D088(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 240))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 144);
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

uint64_t sub_27477D0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmartShortcutPickerTriggerSelectedEntryMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerTriggerSelectedEntryMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27477D2E4()
{
  result = qword_280967E88;
  if (!qword_280967E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E88);
  }

  return result;
}

unint64_t sub_27477D33C()
{
  result = qword_280967E90;
  if (!qword_280967E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E90);
  }

  return result;
}

unint64_t sub_27477D394()
{
  result = qword_280967E98;
  if (!qword_280967E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967E98);
  }

  return result;
}

uint64_t sub_27477D3E8(uint64_t result)
{
  v1 = *(result + 184);
  *(result + 48) &= 1uLL;
  *(result + 184) = v1 & 3 | 0x80;
  return result;
}

uint64_t sub_27477D408(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_27477D430(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "OpenCameraAction";
  }

  else
  {
    v4 = "appShortcutIdentifier";
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = "appShortcutIdentifier";
  }

  else
  {
    v6 = "OpenCameraAction";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2749FDCC4();
  }

  return v8 & 1;
}

uint64_t sub_27477D4D4(char a1, char a2)
{
  if (a1)
  {
    v2 = 1684632167;
  }

  else
  {
    v2 = 1953720684;
  }

  if (a2)
  {
    v3 = 1684632167;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2749FDCC4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

void sub_27477D544()
{
  v0 = sub_2749FD3F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FD3B4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2749FCAA4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  sub_2749FCA94();
  v8[1] = MEMORY[0x277D84F90];
  sub_27477EF8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967EE8, &qword_274A10890);
  sub_27477EFE4();
  sub_2749FD7B4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  v6 = sub_2749FD424();
  v7 = [objc_allocWithZone(MEMORY[0x277D412D0]) initWithTargetQueue_];

  qword_280967EA0 = v7;
}

uint64_t sub_27477D784()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967EF8, &qword_274A10898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F610;
  *(inited + 32) = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  *(inited + 40) = v1;
  *(inited + 48) = 7;
  *(inited + 56) = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  *(inited + 64) = v2;
  *(inited + 72) = 7;
  *(inited + 80) = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  *(inited + 88) = v3;
  *(inited + 96) = 7;
  *(inited + 104) = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  *(inited + 112) = v4;
  *(inited + 120) = 7;
  result = sub_2749FCCB4();
  qword_280967EA8 = result;
  return result;
}

uint64_t sub_27477D860()
{
  type metadata accessor for SmartShortcutPickerAppAvailabilityChecker();
  v0 = swift_allocObject();
  result = sub_27477EA80();
  qword_280989158 = v0;
  return result;
}

void SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  v7 = v7 && v2 == v6;
  if (v7)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_33_0();

  if (v3)
  {

LABEL_8:
    v8 = 2;
    goto LABEL_24;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  if (v7 && v2 == v9)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_33_0();

  if (v3)
  {

LABEL_23:
    v8 = 4;
    goto LABEL_24;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  if (v7 && v2 == v11)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = OUTLINED_FUNCTION_0_6();

  v8 = 7;
  if (v13)
  {
    v8 = 4;
  }

LABEL_24:
  *a2 = v8;
}

WorkflowUI::SmartShortcutPickerAppAvailabilityChecker::Availability sub_27477DB70@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SmartShortcutPickerAppAvailabilityChecker.Availability.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27477DBB0@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerAppAvailabilityChecker.Availability.rawValue.getter();
  *a1 = result;
  return result;
}

void SmartShortcutPickerAppAvailabilityChecker.Strategy.init(configurationContext:)(void *a1@<X0>, char *a2@<X8>)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  v7 = v7 && v2 == v6;
  if (v7)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_33_0();

  if (v3)
  {
LABEL_6:

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  if (v7 && v2 == v8)
  {
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_33_0();

  if (v3)
  {
    goto LABEL_6;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_10();
  if (!v7 || v2 != v10)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v12 = 1;
LABEL_20:
  *a2 = v12;
}

uint64_t SmartShortcutPickerAppAvailabilityChecker.Strategy.hashValue.getter()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t sub_27477DD74()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_27477F064();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_27477DE10(uint64_t a1)
{
  if (qword_280966BA0 != -1)
  {
    swift_once();
  }

  v2 = qword_280967EA8;
  swift_beginAccess();
  *(a1 + 16) = v2;
}

uint64_t sub_27477DEAC()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_27477F0DC(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

uint64_t sub_27477DF38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v6 = v5;
  v46 = a4;
  v11 = sub_2749FA4E4();
  v47 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v43 = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();

  v16 = sub_2749FA4D4();
  v17 = sub_2749FD2A4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = a3;
    v21 = v11;
    v22 = a5;
    v23 = v20;
    v49[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2747AF460(a1, a2, v49);
    _os_log_impl(&dword_274719000, v16, v17, "Checking app availability for bundle identifier: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a5 = v22;
    v11 = v21;
    a3 = v42;
    MEMORY[0x277C61040](v24, -1, -1);
    v25 = v19;
    v6 = v45;
    MEMORY[0x277C61040](v25, -1, -1);
  }

  v26 = *(v47 + 8);
  v26(v15, v11);
  swift_beginAccess();
  v27 = *(a3 + 16);
  if (*(v27 + 16))
  {

    v28 = sub_274797CC0(a1, a2);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      goto LABEL_10;
    }
  }

  v41 = v26;
  v42 = v11;
  sub_27477E320(a1, a2, v48);
  v30 = v48[0];
  v32 = v44;
  sub_2749FA3D4();

  v33 = sub_2749FA4D4();
  v34 = sub_2749FD2E4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v45 = v6;
    v36 = v35;
    v37 = swift_slowAlloc();
    v43 = a5;
    v38 = v37;
    v48[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_2747AF460(a1, a2, v48);
    *(v36 + 12) = 2048;
    *(v36 + 14) = v30;
    _os_log_impl(&dword_274719000, v33, v34, "Decided app availability for bundle identifier: %s -> %lu", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v39 = v38;
    a5 = v43;
    MEMORY[0x277C61040](v39, -1, -1);
    MEMORY[0x277C61040](v36, -1, -1);
  }

  v41(v32, v42);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a3 + 16);
  sub_2748F9F14();
  *(a3 + 16) = v50;
  result = swift_endAccess();
LABEL_10:
  *a5 = (v46 & ~v30) == 0;
  return result;
}

void sub_27477E320(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v5 = sub_2749F9064();
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FA4E4();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v53 = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();

  v16 = sub_2749FA4D4();
  v17 = sub_2749FD2E4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51 = v7;
    v20 = v10;
    v21 = v13;
    v22 = v19;
    v58[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2747AF460(a1, a2, v58);
    _os_log_impl(&dword_274719000, v16, v17, "Fetching app availability for bundle identifier: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v13 = v21;
    v10 = v20;
    v7 = v51;
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  v23 = *(v55 + 8);
  v23(v15, v7);
  v24 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v25 = sub_2749340F8(a1, a2, 0);
  v32 = v25;
  if (!v25)
  {
    goto LABEL_4;
  }

  sub_27471CF08(0, &qword_280967ED8, 0x277CCA8D8);
  v33 = [v32 URL];
  v34 = v52;
  sub_2749F9034();

  v35 = sub_27477E988(v34);
  if (!v35)
  {

LABEL_4:
    v26 = a1;
    sub_2749FA3D4();

    v27 = sub_2749FA4D4();
    v28 = sub_2749FD2C4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2747AF460(v26, a2, v58);
      _os_log_impl(&dword_274719000, v27, v28, "Failed to fetch buddy availability for bundle identifier: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    v23(v10, v7);
    goto LABEL_7;
  }

  v36 = v35;
  if (qword_280966B98 != -1)
  {
    swift_once();
  }

  if (![qword_280967EA0 requiresPreflightForApplicationRecord_])
  {
    sub_27477EE6C(v36);
    if (v45)
    {
      v46 = sub_2749FCD64();

      v47 = WFEntitlementsForExecutableAtPath();

      if (v47)
      {
        v48 = sub_2749FCCA4();

        v56 = 0xD000000000000037;
        v57 = 0x8000000274A2B190;
        sub_2749FD8D4();
        sub_27494FA4C(v48, &v59);

        sub_27477EED0(v58);
        if (v60)
        {
          if (swift_dynamicCast())
          {
            v49 = v56;

            if (v49)
            {
              v31 = 7;
              goto LABEL_8;
            }

LABEL_27:
            v31 = 5;
            goto LABEL_8;
          }
        }

        else
        {
          sub_27477EF24(&v59);
        }
      }
    }

    goto LABEL_27;
  }

  v37 = a1;
  sub_2749FA3D4();

  v38 = sub_2749FA4D4();
  v39 = sub_2749FD2E4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v32;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v7;
    v43 = v13;
    v44 = v42;
    v58[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_2747AF460(v37, a2, v58);
    _os_log_impl(&dword_274719000, v38, v39, "App requires PDU: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    v23(v43, v51);
  }

  else
  {

    v23(v13, v7);
  }

LABEL_7:
  v31 = 0;
LABEL_8:
  *v54 = v31;
}

id sub_27477E988(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2749F9024();
  v4 = [v2 initWithURL_];

  v5 = sub_2749F9064();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t SmartShortcutPickerAppAvailabilityChecker.deinit()
{

  return v0;
}

uint64_t SmartShortcutPickerAppAvailabilityChecker.__deallocating_deinit()
{
  SmartShortcutPickerAppAvailabilityChecker.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27477EA80()
{
  if (qword_280966BA0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_280967EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F00, &unk_274A108A0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;

  return v0;
}

unint64_t sub_27477EB10()
{
  result = qword_280967EB0;
  if (!qword_280967EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EB0);
  }

  return result;
}

unint64_t sub_27477EB68()
{
  result = qword_280967EB8;
  if (!qword_280967EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EB8);
  }

  return result;
}

unint64_t sub_27477EBBC()
{
  result = qword_280967EC0;
  if (!qword_280967EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EC0);
  }

  return result;
}

unint64_t sub_27477EC14()
{
  result = qword_280967EC8;
  if (!qword_280967EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EC8);
  }

  return result;
}

unint64_t sub_27477EC6C()
{
  result = qword_280967ED0;
  if (!qword_280967ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmartShortcutPickerAppAvailabilityChecker.Availability(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SmartShortcutPickerAppAvailabilityChecker.Availability(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerAppAvailabilityChecker.Strategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27477EE30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(&var1, a1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_27477EE6C(void *a1)
{
  v1 = [a1 executablePath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_27477EF24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D550, &unk_274A0FF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27477EF8C()
{
  result = qword_280967EE0;
  if (!qword_280967EE0)
  {
    sub_2749FD3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EE0);
  }

  return result;
}

unint64_t sub_27477EFE4()
{
  result = qword_280967EF0;
  if (!qword_280967EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967EE8, &qword_274A10890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967EF0);
  }

  return result;
}

uint64_t sub_27477F0AC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27477EE30(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

id sub_27477F104()
{
  type metadata accessor for WorkflowUIBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280989160 = result;
  return result;
}

id sub_27477F15C()
{
  if (qword_280966BB0 != -1)
  {
    swift_once();
  }

  v1 = qword_280989160;

  return v1;
}

id sub_27477F1B8()
{
  v0 = sub_27477F15C();

  return v0;
}

double sub_27477F214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F10, &qword_274A109A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __src - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F18, &qword_274A109B0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = __src - v11;
  *v8 = sub_2749FB634();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F20, &qword_274A109B8);
  sub_27477F40C(a1, a2, &v8[*(v13 + 44)]);
  sub_2749FC914();
  sub_2749FB004();
  sub_27475CF54(v8, v12, &qword_280967F10, &qword_274A109A8);
  memcpy(&v12[*(v10 + 44)], __src, 0x70uLL);
  v14 = sub_2749FBC54();
  sub_27475CF54(v12, a3, &qword_280967F18, &qword_274A109B0);
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F28, &qword_274A109C0) + 36);
  *v15 = v14;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t sub_27477F40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v67 = a3;
  v64 = sub_2749FBAE4();
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F30, &qword_274A109C8);
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v48[-v5];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F38, &qword_274A109D0);
  MEMORY[0x28223BE20](v57);
  v63 = &v48[-v7];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F40, &qword_274A109D8);
  MEMORY[0x28223BE20](v61);
  v62 = &v48[-v8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F48, &qword_274A109E0);
  v9 = MEMORY[0x28223BE20](v60);
  v66 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48[-v12];
  MEMORY[0x28223BE20](v11);
  v65 = &v48[-v14];
  v15 = sub_2749FC524();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2749FC514();
  (*(v16 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
  v69 = sub_2749FC564();

  (*(v16 + 8))(v18, v15);
  sub_2749FC914();
  sub_2749FABB4();
  LOBYTE(__src[0]) = 1;
  *&v98[3] = *&v98[27];
  *&v98[11] = *&v98[35];
  *&v98[19] = *&v98[43];
  sub_2749FCE14("To use home accessories for shortcuts and automations, you'll need to update to the latest version of Apple Home.", 113);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v19 = qword_28159E448;
  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v25 = v24;

  __src[0] = v23;
  __src[1] = v25;
  sub_27475D0D0();
  v68 = sub_2749FBEE4();
  v27 = v26;
  v50 = v26;
  v51 = v28;
  LOBYTE(v23) = v29;
  KeyPath = swift_getKeyPath();
  v30 = v23 & 1;
  LOBYTE(__src[0]) = v23 & 1;
  v49 = v23 & 1;
  v52 = sub_2749FBCC4();
  v31 = swift_allocObject();
  *(v31 + 16) = v55;
  *(v31 + 24) = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F50, &qword_274A10A18);
  sub_274780790();
  sub_2749FC624();
  sub_2749FBAD4();
  sub_27472AB6C(&qword_280967F70, &qword_280967F30, &qword_274A109C8, MEMORY[0x277CDF028]);
  sub_2747808A0();
  v33 = v63;
  v32 = v64;
  v34 = v58;
  sub_2749FBFC4();
  (*(v59 + 8))(v4, v32);
  (*(v54 + 8))(v6, v34);
  v35 = (v33 + *(v57 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F78, &qword_274A23CB0);
  sub_2749FB014();
  *v35 = swift_getKeyPath();
  sub_2749FC914();
  sub_2749FB004();
  v36 = v62;
  sub_27475CF54(v33, v62, &qword_280967F38, &qword_274A109D0);
  memcpy(&v36[*(v61 + 36)], __src, 0x70uLL);
  LOBYTE(v35) = sub_2749FBC54();
  sub_27475CF54(v36, v13, &qword_280967F40, &qword_274A109D8);
  v37 = &v13[*(v60 + 36)];
  *v37 = v35;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  v37[40] = 1;
  v38 = v13;
  v39 = v65;
  sub_27475CF54(v38, v65, &qword_280967F48, &qword_274A109E0);
  v40 = v66;
  sub_274741468(v39, v66);
  v41 = v67;
  *v67 = 0;
  v41[8] = 1;
  v70[0] = v69;
  v70[1] = 0;
  LOWORD(v70[2]) = 1;
  *(&v70[2] + 2) = *v98;
  *(&v70[4] + 2) = *&v98[8];
  *(&v70[6] + 2) = *&v98[16];
  v70[8] = *&v98[23];
  memcpy(v41 + 16, v70, 0x48uLL);
  v71[0] = v68;
  v71[1] = v27;
  LOBYTE(v71[2]) = v30;
  *(&v71[2] + 1) = v95[0];
  HIDWORD(v71[2]) = *(v95 + 3);
  v42 = v51;
  v71[3] = v51;
  LOWORD(v71[4]) = 256;
  *(&v71[4] + 2) = v93;
  HIWORD(v71[4]) = v94;
  v43 = KeyPath;
  v71[5] = KeyPath;
  LOBYTE(v71[6]) = 1;
  HIDWORD(v71[6]) = *&v97[3];
  *(&v71[6] + 1) = *v97;
  v44 = v52;
  LOBYTE(v71[7]) = v52;
  HIDWORD(v71[7]) = *&v96[3];
  *(&v71[7] + 1) = *v96;
  memset(&v71[8], 0, 32);
  LOBYTE(v71[12]) = 1;
  memcpy(v41 + 88, v71, 0x61uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F80, &qword_274A10A60);
  sub_274741468(v40, &v41[*(v45 + 80)]);
  v46 = &v41[*(v45 + 96)];
  *v46 = 0;
  v46[8] = 1;
  sub_27473F28C(v70, v72, &qword_280967F88, &qword_274A10A68);
  sub_27473F28C(v71, v72, &qword_280967F90, &unk_274A10A70);
  sub_2747414D0(v39);
  sub_2747414D0(v40);
  v72[0] = v68;
  v72[1] = v50;
  v73 = v49;
  *v74 = v95[0];
  *&v74[3] = *(v95 + 3);
  v75 = v42;
  v76 = 256;
  v77 = v93;
  v78 = v94;
  v79 = v43;
  v80 = 1;
  *v81 = *v97;
  *&v81[3] = *&v97[3];
  v82 = v44;
  *&v83[3] = *&v96[3];
  *v83 = *v96;
  v84 = 0u;
  v85 = 0u;
  v86 = 1;
  sub_27472ECBC(v72, &qword_280967F90, &unk_274A10A70);
  v87[0] = v69;
  v87[1] = 0;
  v88 = 1;
  v89 = 0;
  v90 = *v98;
  v91 = *&v98[8];
  *v92 = *&v98[16];
  *&v92[14] = *&v98[23];
  return sub_27472ECBC(v87, &qword_280967F88, &qword_274A10A68);
}

void *sub_27477FDE8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() localizedHomeUpdateRequiredButtonLabel];
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = v4;

  __src[0] = v3;
  __src[1] = v5;
  sub_27475D0D0();
  v6 = sub_2749FBEE4();
  v8 = v7;
  LOBYTE(v5) = v9;
  v11 = v10;
  v12 = sub_2749FBCC4();
  sub_2749FA9E4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2749FC914();
  sub_2749FB004();
  memcpy(&v22[7], __src, 0x70uLL);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0;
  return memcpy((a1 + 73), v22, 0x77uLL);
}

id sub_27477FF50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUpdateRequiredController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_27478001C()
{
  updated = type metadata accessor for HomeUpdateRequiredController();
  v43.receiver = v0;
  v43.super_class = updated;
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F08, &unk_274A10910));

  v4 = sub_2749FB6C4();
  v5 = [v0 navigationItem];
  v42[3] = updated;
  v42[0] = v0;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v6 = v0;
  sub_2747F93B4(1, v42, sel_cancelTapped);
  v8 = v7;
  [v5 setLeftBarButtonItem_];

  v9 = v4;
  [v6 addChildViewController_];
  v10 = OUTLINED_FUNCTION_1_6();
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = OUTLINED_FUNCTION_3_11();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = OUTLINED_FUNCTION_1_6();

  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v13 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_274A108E0;
  v16 = OUTLINED_FUNCTION_1_6();

  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = [v16 leadingAnchor];

  v18 = OUTLINED_FUNCTION_3_11();
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = OUTLINED_FUNCTION_2_8();
  *(v15 + 32) = v21;
  v22 = OUTLINED_FUNCTION_1_6();

  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = [v22 trailingAnchor];

  v24 = OUTLINED_FUNCTION_3_11();
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = OUTLINED_FUNCTION_2_8();
  *(v15 + 40) = v27;
  v28 = OUTLINED_FUNCTION_1_6();

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = [v28 topAnchor];

  v30 = OUTLINED_FUNCTION_3_11();
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = OUTLINED_FUNCTION_2_8();
  *(v15 + 48) = v33;
  v34 = OUTLINED_FUNCTION_1_6();

  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = [v34 bottomAnchor];

  v36 = OUTLINED_FUNCTION_3_11();
  if (v36)
  {
    v37 = v36;
    v38 = objc_opt_self();
    v39 = [v37 bottomAnchor];

    v40 = [v35 constraintEqualToAnchor_];
    *(v15 + 56) = v40;
    sub_27478069C();
    v41 = sub_2749FCF74();

    [v38 activateConstraints_];

    [v9 didMoveToParentViewController_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_2747804D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_27478063C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUpdateRequiredController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27478069C()
{
  result = qword_280968040;
  if (!qword_280968040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968040);
  }

  return result;
}

uint64_t sub_2747806E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_274780720(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_274780790()
{
  result = qword_280967F58;
  if (!qword_280967F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967F50, &qword_274A10A18);
    sub_27478081C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967F58);
  }

  return result;
}

unint64_t sub_27478081C()
{
  result = qword_280967F60;
  if (!qword_280967F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967F68, &unk_274A10A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967F60);
  }

  return result;
}

unint64_t sub_2747808A0()
{
  result = qword_28096D440;
  if (!qword_28096D440)
  {
    sub_2749FBAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096D440);
  }

  return result;
}

uint64_t sub_27478091C(uint64_t a1)
{
  v2 = sub_2749FB024();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FB294();
}

unint64_t sub_2747809E4()
{
  result = qword_280967F98;
  if (!qword_280967F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967F28, &qword_274A109C0);
    sub_274780A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967F98);
  }

  return result;
}

unint64_t sub_274780A70()
{
  result = qword_280967FA0;
  if (!qword_280967FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967F18, &qword_274A109B0);
    sub_27472AB6C(&qword_280967FA8, &qword_280967F10, &qword_274A109A8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967FA0);
  }

  return result;
}

char *sub_274780B28(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_iconImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) &selRef_sessionIdentifier];
  v11 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_sessionIdentifier];
  v86.receiver = v4;
  v86.super_class = type metadata accessor for ImagePickerTypeCell();
  v12 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v14 = v12;
  v15 = [v13 &selRef_sessionIdentifier];
  [v15 setAxis_];
  [v15 setAlignment_];
  v16 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_titleLabel;
  [v15 addArrangedSubview_];
  v17 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_iconImageView;
  [v15 addArrangedSubview_];
  v18 = v15;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v85 = v18;
  [v18 setLayoutMarginsRelativeArrangement_];
  [v18 setDirectionalLayoutMargins_];
  v19 = *&v14[v16];
  v20 = v16;
  v84 = v16;
  v21 = objc_opt_self();
  v22 = *MEMORY[0x277D76918];
  v23 = v19;
  v24 = [v21 preferredFontForTextStyle_];
  [v23 setFont_];

  [*&v14[v20] setAdjustsFontForContentSizeCategory_];
  LODWORD(v25) = 1148846080;
  [*&v14[v17] setContentHuggingPriority:0 forAxis:v25];
  v26 = *&v14[v17];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 configurationWithTextStyle:v22 scale:2];
  [v28 setPreferredSymbolConfiguration_];

  [*&v14[v17] setContentMode_];
  v30 = *&v14[v17];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTintColor_];

  v34 = *&v14[OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView];
  v35 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView;
  v36 = v14;
  [v36 addSubview_];
  v37 = *&v14[v35];
  v38 = [v31 separatorColor];
  [v37 setBackgroundColor_];

  [*&v14[v35] setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v21 preferredFontForTextStyle_];
  [v39 lineHeight];
  v41 = v40;

  [v36 addSubview_];
  v83 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_274A10A80;
  v43 = [*&v14[v17] heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v42 + 32) = v44;
  v45 = [*&v14[v17] widthAnchor];
  v46 = [*&v14[v17] heightAnchor];
  v47 = OUTLINED_FUNCTION_0_7(v46, sel_constraintEqualToAnchor_);

  *(v42 + 40) = v47;
  v48 = [v85 topAnchor];
  v49 = [v36 topAnchor];

  v51 = OUTLINED_FUNCTION_0_7(v50, &selRef_initWithConfirmationResponseCode_ + 5);
  *(v42 + 48) = v51;
  v52 = [v85 bottomAnchor];
  v53 = [v36 bottomAnchor];

  v55 = OUTLINED_FUNCTION_0_7(v54, &selRef_initWithConfirmationResponseCode_ + 5);
  *(v42 + 56) = v55;
  v56 = [v85 leadingAnchor];
  v57 = [v36 leadingAnchor];

  v59 = OUTLINED_FUNCTION_0_7(v58, &selRef_initWithConfirmationResponseCode_ + 5);
  *(v42 + 64) = v59;
  v60 = [v85 trailingAnchor];

  v61 = [v36 trailingAnchor];
  v63 = OUTLINED_FUNCTION_0_7(v62, &selRef_initWithConfirmationResponseCode_ + 5);

  *(v42 + 72) = v63;
  v64 = [*&v14[v35] leadingAnchor];
  v65 = [*&v14[v84] leadingAnchor];
  v66 = OUTLINED_FUNCTION_0_7(v65, &selRef_initWithConfirmationResponseCode_ + 5);

  *(v42 + 80) = v66;
  v67 = [*&v14[v35] trailingAnchor];
  v68 = [v36 trailingAnchor];

  v70 = OUTLINED_FUNCTION_0_7(v69, &selRef_initWithConfirmationResponseCode_ + 5);
  *(v42 + 88) = v70;
  v71 = [*&v14[v35] bottomAnchor];
  v72 = [v36 bottomAnchor];
  v73 = OUTLINED_FUNCTION_0_7(v72, &selRef_initWithConfirmationResponseCode_ + 5);

  *(v42 + 96) = v73;
  v74 = [*&v14[v35] heightAnchor];
  v75 = [objc_opt_self() mainScreen];
  [v75 scale];
  v77 = v76;

  v78 = [v74 constraintEqualToConstant_];
  *(v42 + 104) = v78;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v79 = sub_2749FCF74();

  [v83 activateConstraints_];

  v80 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  [v80 setMinimumPressDuration_];
  v81 = v80;
  [v81 addTarget:v36 action:sel_handleTap_];
  [v81 setDelegate_];

  [v36 addGestureRecognizer_];
  return v36;
}

id sub_27478140C(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_titleLabel);
  v5 = sub_274781608(a1);
  sub_27484E534(v5, v6, v4);
  v7 = *(v2 + OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_iconImageView);
  sub_27471CF08(0, &qword_280968030, 0x277D755B8);
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x6172656D6163;
    }

    else
    {
      v8 = 6516580;
    }

    if (a1 == 1)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x6F746F6870;
  }

  v10 = sub_2748565B8(v8, v9);
  [v7 setImage_];

  v11 = *(v2 + OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView);
  if (off_28838F890)
  {
    v12 = byte_28838F89F[off_28838F890];
  }

  else
  {
    v12 = 3;
  }

  v14 = v12 != 3 && v12 == a1;

  return [v11 setHidden_];
}

char *sub_274781550(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x277C5F6D0](v5, a1);
  }

  result = sub_2749FD844();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2747815EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + v1 + 31);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_274781608(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_2749FCE14("Take Photo", 10);
    }

    else
    {
      sub_2749FCE14("Choose File", 11);
    }
  }

  else
  {
    sub_2749FCE14("Choose Photo", 12);
  }

  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_27478171C(char a1)
{
  if (!a1)
  {
    return 0x6F746F6870;
  }

  if (a1 == 1)
  {
    return 0x6172656D6163;
  }

  return 6516580;
}

void sub_274781764(void *a1)
{
  if ([a1 state] == 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v4 = v1;
    v5 = sub_274781BFC;
    v6 = 0.05;
  }

  else
  {
    if ([a1 state] != 3)
    {
      [v1 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [a1 locationInView_];
      v20.x = v15;
      v20.y = v16;
      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      if (CGRectContainsPoint(v21, v20))
      {
        return;
      }
    }

    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v17 = v1;
    v5 = sub_274781BD8;
    v6 = 0.3;
  }

  v18 = sub_27480FE78(v5, v3, v6, 1.0);
  [v18 startAnimation];
}

void sub_27478190C(void *a1, SEL *a2)
{
  v3 = [objc_opt_self() *a2];
  [a1 setBackgroundColor_];
}

void sub_2747819F0()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_iconImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_274781AD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI19ImagePickerTypeCell_separatorView);
}

id sub_274781B24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImagePickerTypeCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274781C4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2749FD594();
  v3 = sub_2749FC914();
  v5 = v4;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968050, &qword_274A10B48) + 36);
  sub_274781E10(v6);
  v7 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968058, &qword_274A10B50) + 36)];
  *v7 = v3;
  v7[1] = v5;
  *a1 = v2;
  sub_2749FC9F4();
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968060, &qword_274A10B58) + 36);
  __asm { FMOV            V0.2D, #0.75 }

  *v12 = _Q0;
  *(v12 + 2) = v9;
  *(v12 + 3) = v11;
  sub_2749FC454();
  v18 = sub_2749FC484();

  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968068, &qword_274A10B60) + 36));
  *v19 = v18;
  v19[1] = 0x4028000000000000;
  v19[2] = 0;
  v19[3] = 0;
  v20 = sub_2749FC914();
  v22 = v21;
  v23 = sub_2749FD594();
  sub_2749FC9F4();
  v25 = v24;
  v27 = v26;
  __src[0] = v23;
  v30 = vdupq_n_s64(0x3FFE666666666666uLL);
  *&__src[1] = v30;
  __src[3] = v24;
  __src[4] = v26;
  __src[5] = 0x402A000000000000;
  LOBYTE(__src[6]) = 0;
  __src[7] = v20;
  __src[8] = v22;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968070, &qword_274A10B68);
  memcpy(a1 + *(v28 + 36), __src, 0x48uLL);
  v33 = v23;
  v34 = v30;
  v35 = v25;
  v36 = v27;
  v37 = 0x402A000000000000;
  v38 = 0;
  v39 = v20;
  v40 = v22;
  sub_274781FE0(__src, v31);
  return sub_274782050(&v33);
}

uint64_t sub_274781E10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FC404();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  v5 = sub_2749FC4C4();
  sub_2749FAB34();
  v6 = v18[1];
  v7 = v18[3];
  v8 = v18[4];
  v9 = v18[5];
  v10 = sub_2749FC914();
  v12 = v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968080, &qword_274A10B78) + 36);
  v14 = *MEMORY[0x277CE13E8];
  v15 = sub_2749FC994();
  v16 = v18[2];
  result = (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  *a1 = v6;
  *(a1 + 8) = v16;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v5;
  *(a1 + 48) = 256;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12;
  return result;
}

uint64_t sub_274781FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968078, &qword_274A10B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274782050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968078, &qword_274A10B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2747820B8()
{
  result = qword_280968088;
  if (!qword_280968088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968070, &qword_274A10B68);
    sub_274782170();
    sub_27472AB6C(&qword_2809680B0, &qword_280968078, &qword_274A10B70, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968088);
  }

  return result;
}

unint64_t sub_274782170()
{
  result = qword_280968090;
  if (!qword_280968090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968068, &qword_274A10B60);
    sub_2747821FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968090);
  }

  return result;
}

unint64_t sub_2747821FC()
{
  result = qword_280968098;
  if (!qword_280968098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968060, &qword_274A10B58);
    sub_274782288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968098);
  }

  return result;
}

unint64_t sub_274782288()
{
  result = qword_2809680A0;
  if (!qword_2809680A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968050, &qword_274A10B48);
    sub_27472AB6C(&qword_2809680A8, &qword_280968058, &qword_274A10B50, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809680A0);
  }

  return result;
}

void sub_274782360(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_274763850);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2747824B8()
{
  OUTLINED_FUNCTION_48();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_43();
  v40 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0, &unk_274A11580);
  v14 = OUTLINED_FUNCTION_34(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_54_1();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81_0();
  v18 = v5 >> 1;
  v19 = __OFSUB__(v5 >> 1, v7);
  v20 = (v5 >> 1) - v7;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(*v0 + 16);
  if (__OFADD__(v21, v20))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v17;
  v39 = v1;
  sub_27472A31C(v21 + v20, 1, sub_274763E3C);
  v1 = *v0;
  v22 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  if (v18 == v7)
  {
    if (v20 <= 0)
    {
      v20 = 0;
      v9 = v7;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v22 < v20)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v20 <= 0)
    {
LABEL_10:
      v9 = v18;
LABEL_11:
      if (v20 != v22)
      {
        swift_unknownObjectRelease();
LABEL_13:
        *v0 = v1;
        OUTLINED_FUNCTION_46();
        return;
      }

LABEL_17:
      v24 = *(v1 + 16);
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
      v25 = v39;
      while (1)
      {
        sub_274738558(v3, v38, &qword_2809681D0, &unk_274A11580);
        if (__swift_getEnumTagSinglePayload(v38, 1, v10) == 1)
        {
          break;
        }

        sub_27478C584(v38, &qword_2809681D0);
        v26 = *(v1 + 24);
        v37 = v26 >> 1;
        if ((v26 >> 1) < v24 + 1)
        {
          sub_274763E3C(v26 > 1, v24 + 1, 1, v1);
          v1 = v31;
          v37 = *(v31 + 24) >> 1;
        }

        OUTLINED_FUNCTION_71();
        v36 = v1 + v27;
        while (1)
        {
          sub_274738558(v3, v2, &qword_2809681D0, &unk_274A11580);
          if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
          {
            sub_27478C584(v2, &qword_2809681D0);
            goto LABEL_35;
          }

          sub_27472A55C(v2, v25);
          if (v24 >= v37)
          {
            break;
          }

          sub_27478C584(v3, &qword_2809681D0);
          sub_27472A55C(v25, v36 + *(v40 + 72) * v24);
          if (v9 == v18)
          {
            v28 = 1;
            v9 = v18;
          }

          else
          {
            if (v9 < v7 || v9 >= v18)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_38_1();
            sub_274729CBC(v30, v3);
            v28 = 0;
            ++v9;
          }

          __swift_storeEnumTagSinglePayload(v3, v28, 1, v10);
          ++v24;
          v25 = v39;
        }

        sub_27472AFE4();
LABEL_35:
        *(v1 + 16) = v24;
      }

      OUTLINED_FUNCTION_68();
      sub_27478C584(v32, v33);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_68();
      sub_27478C584(v34, v35);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_71_0();
    if (!v19)
    {
      *(v1 + 16) = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_2747828F8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_274763F6C);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + (v7 << 6));
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2747829EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_2(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_27472A31C(result, 1, v5);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  if ((*(v7 + 24) >> 1) - v8 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v7 + 24 * v8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v9 = *(v7 + 16);
  v6 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v6)
  {
    *(v7 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_274782AD0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_2747644B4);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_274782B78(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_2747645C4);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + 40 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_274782C50(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_274764AAC);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_274782D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  OUTLINED_FUNCTION_104_1();
  v8 = v7();
  v9 = v5(*v3);
  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_274789F40(result, 1);
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), v4);
  v15 = v14;

  if (v15 < v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 1)
  {
LABEL_6:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_274782DE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_27472A31C(result, 1, sub_2747647F0);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id RunningWorkflow.workflowType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void *RunningWorkflow.runViewSource.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t RunningWorkflow.init(workflowType:progress:waiting:runViewSource:stopHandler:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v7 = *(result + 8);
  *a6 = *result;
  *(a6 + 8) = v7;
  *(a6 + 16) = a7;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

uint64_t RunningWorkflow.matchesReference(_:)(void *a1)
{
  if (*(v1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v4 = *v1;
    v5 = [a1 identifier];
    v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = v7;

    v9 = [v4 identifier];
    v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_93();
      v2 = sub_2749FDCC4();
    }
  }

  return v2 & 1;
}

void LibraryView.init(database:delegate:workflowType:configuration:shortcutMoveService:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_113_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v36 = v12;
  v13 = type metadata accessor for LibraryConfiguration(0);
  v14 = OUTLINED_FUNCTION_34(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for RootNavigationDestination(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v17 = OUTLINED_FUNCTION_80();
  type metadata accessor for LibrarySectionOptions.SectionType(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
  v21 = OUTLINED_FUNCTION_102(v20);
  *(v21 + 16) = xmmword_274A0EF10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B70, &qword_274A0FD58);
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_49();
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_274A0EF10;
  swift_storeEnumTagMultiPayload();
  v25 = [v36 collectionForWorkflowType_];
  OUTLINED_FUNCTION_83_0([v36 sortedVisibleWorkflowsWithType_]);
  type metadata accessor for ShortcutsEmptyStateContent(0);
  OUTLINED_FUNCTION_115_0();
  swift_storeEnumTagMultiPayload();
  v35 = v11;
  static ShortcutsEmptyStateContent.emptyStateContent(for:)(v1);
  OUTLINED_FUNCTION_10_2();
  sub_27472AFE4();
  OUTLINED_FUNCTION_14_2();
  v26 = OUTLINED_FUNCTION_110_0();
  sub_27472A55C(v26, v27);
  v28 = OUTLINED_FUNCTION_33_3();
  v29 = v24 + v23 + *(v0 + 40);
  *v29 = v11;
  *(v29 + 8) = 1;
  OUTLINED_FUNCTION_124_0(v28);
  v30 = type metadata accessor for StaticGroup();
  OUTLINED_FUNCTION_102(v30);
  *(v21 + 32) = sub_274787720(v24);
  *(v21 + 40) = &off_288391678;
  OUTLINED_FUNCTION_17_2();
  v31 = OUTLINED_FUNCTION_45();
  sub_274729CBC(v31, v32);
  v33 = OUTLINED_FUNCTION_64();
  v34(v33);

  OUTLINED_FUNCTION_16_4();
  sub_27472AFE4();
  OUTLINED_FUNCTION_46();
}

void LibraryView.init(database:delegate:collection:configuration:shortcutMoveService:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_113_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v36 = v12;
  v13 = type metadata accessor for LibraryConfiguration(0);
  v14 = OUTLINED_FUNCTION_34(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for RootNavigationDestination(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v17 = OUTLINED_FUNCTION_80();
  type metadata accessor for LibrarySectionOptions.SectionType(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
  v21 = OUTLINED_FUNCTION_102(v20);
  *(v21 + 16) = xmmword_274A0EF10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B70, &qword_274A0FD58);
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_49();
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_274A0EF10;
  swift_storeEnumTagMultiPayload();
  v25 = v11;
  OUTLINED_FUNCTION_83_0([v36 sortedVisibleWorkflowsInCollection_]);
  type metadata accessor for ShortcutsEmptyStateContent(0);
  OUTLINED_FUNCTION_115_0();
  swift_storeEnumTagMultiPayload();
  v35 = v25;
  static ShortcutsEmptyStateContent.emptyStateContent(for:)(v1);
  OUTLINED_FUNCTION_10_2();
  sub_27472AFE4();
  OUTLINED_FUNCTION_14_2();
  v26 = OUTLINED_FUNCTION_110_0();
  sub_27472A55C(v26, v27);
  v28 = OUTLINED_FUNCTION_33_3();
  v29 = v24 + v23 + *(v0 + 40);
  *v29 = v11;
  *(v29 + 8) = 0;
  OUTLINED_FUNCTION_124_0(v28);
  v30 = type metadata accessor for StaticGroup();
  OUTLINED_FUNCTION_102(v30);
  *(v21 + 32) = sub_274787720(v24);
  *(v21 + 40) = &off_288391678;
  OUTLINED_FUNCTION_17_2();
  v31 = OUTLINED_FUNCTION_119();
  sub_274729CBC(v31, v32);
  v33 = OUTLINED_FUNCTION_64();
  v34(v33);

  OUTLINED_FUNCTION_16_4();
  sub_27472AFE4();
  OUTLINED_FUNCTION_46();
}

uint64_t LibraryConfiguration.workflowContextualEditingActions.getter()
{
  type metadata accessor for LibraryConfiguration(0);
}

void *LibraryConfiguration.runSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibraryConfiguration(0) + 36));
  v2 = v1;
  return v1;
}

uint64_t LibraryConfiguration.tipType.getter()
{
  v2 = OUTLINED_FUNCTION_69_0();
  result = type metadata accessor for LibraryConfiguration(v2);
  *v0 = *(v1 + *(result + 44));
  return result;
}

id LibraryWorkflowCreationBehavior.creationOptions(record:)(void *a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v4 = v3;
      v5 = [a1 workflowTypes];
      type metadata accessor for WFWorkflowTypeName(0);
      v6 = sub_2749FCF84();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_2();
        sub_274724D8C();
        v6 = v16;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_8(v7);
        sub_274724D8C();
        v6 = v17;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = v4;
      OUTLINED_FUNCTION_66();
      v9 = sub_2749FCF74();

      [a1 setWorkflowTypes_];

      v10 = 0;
    }

    else
    {
      v10 = 0;
      v13 = 0;
      if (!v3)
      {
        return v13;
      }
    }
  }

  else
  {
    v11 = [v3 identifier];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = v12;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];
  if (v10)
  {
    OUTLINED_FUNCTION_70_1();
    v14 = sub_2749FCD64();
  }

  else
  {
    v14 = 0;
  }

  [v13 setFolderIdentifier_];

  return v13;
}

uint64_t LibraryWorkflowCreationBehavior.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x277C5FB60](3);
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      sub_2749FCE24();
    }

    else
    {
      return MEMORY[0x277C5FB60](*v1 != 0);
    }
  }

  else
  {
    MEMORY[0x277C5FB60](2);
    OUTLINED_FUNCTION_118_0();
    return sub_2749FD614();
  }
}

uint64_t LibraryWorkflowCreationBehavior.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_99_0(a1);
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x277C5FB60](3);
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      sub_2749FCE24();
    }

    else
    {
      MEMORY[0x277C5FB60](v2 != 0);
    }
  }

  else
  {
    MEMORY[0x277C5FB60](2);
    sub_2749FD614();
  }

  return sub_2749FDE44();
}

void static LibraryEditingBehavior.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v29 = v8;
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v9 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibraryEditingBehavior(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_81_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680B8, &qword_274A10B90);
  OUTLINED_FUNCTION_34(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_56_2();
  v19 = v0 + v18;
  sub_274729CBC(v6, v0);
  sub_274729CBC(v4, v19);
  OUTLINED_FUNCTION_24_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_87();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = OUTLINED_FUNCTION_32();
        sub_2747845E8(v25, v26);

        goto LABEL_14;
      }

      goto LABEL_12;
    case 2u:
      OUTLINED_FUNCTION_4_4();
      v22 = OUTLINED_FUNCTION_95_1();
      sub_274729CBC(v22, v23);
      OUTLINED_FUNCTION_87();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        (*(v29 + 32))(v1, v19, v30);
        sub_2749F94E4();
        v24 = *(v29 + 8);
        v24(v1, v30);
        v24(v13, v30);
        goto LABEL_14;
      }

      (*(v29 + 8))(v13, v30);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_87();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_4_4();
      sub_274729CBC(v0, v2);
      v20 = *v2;
      v21 = *(v2 + 8);
      OUTLINED_FUNCTION_87();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_27478A020(v20, v21);
LABEL_12:
        sub_27478C584(v0, &qword_2809680B8);
      }

      else
      {
        v27 = *v19;
        v28 = *(v19 + 8);
        static LibraryEditingOption.== infix(_:_:)();
        sub_27478A020(v27, v28);
        sub_27478A020(v20, v21);
LABEL_14:
        OUTLINED_FUNCTION_46_2();
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t static LibraryEditingOption.== infix(_:_:)()
{
  OUTLINED_FUNCTION_109_0();
  if (!v3)
  {
    if (!v1)
    {
      sub_27478A044(v0, 0);
      sub_27478A044(v2, 0);
      v9 = OUTLINED_FUNCTION_45();
      sub_2747850E0(v9, v10);
      v8 = v11;
      goto LABEL_10;
    }

LABEL_9:
    v12 = OUTLINED_FUNCTION_44();
    sub_27478A044(v12, v13);
    v14 = OUTLINED_FUNCTION_66_2();
    sub_27478A044(v14, v15);
    v8 = 0;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v1 == 2)
    {
      sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
      sub_27478A044(v0, 2);
      sub_27478A044(v2, 2);
      OUTLINED_FUNCTION_45();
      v8 = sub_2749FD604();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v1 != 1)
  {
    goto LABEL_9;
  }

  sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
  v4 = OUTLINED_FUNCTION_78_0();
  sub_27478A044(v4, v5);
  v6 = OUTLINED_FUNCTION_92();
  sub_27478A044(v6, v7);
  OUTLINED_FUNCTION_45();
  v8 = sub_2749FD604();
LABEL_10:
  v16 = OUTLINED_FUNCTION_66_2();
  sub_27478A020(v16, v17);
  v18 = OUTLINED_FUNCTION_44();
  sub_27478A020(v18, v19);
  return v8 & 1;
}

void sub_274783E54()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
    goto LABEL_44;
  }

  v3 = (v1 + 48);
  v4 = (v0 + 48);
  while (2)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v7 = *v4;
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    switch(*v4)
    {
      case 1u:
        if (v10 != 1)
        {
          goto LABEL_42;
        }

        v31 = *(v4 - 2);
        if (v6 != v9 || v5 != v8)
        {
          v18 = OUTLINED_FUNCTION_130_0(v31);
          v33 = OUTLINED_FUNCTION_66();
          sub_27477D408(v33, v34, 1u);
          v35 = OUTLINED_FUNCTION_32_1();
          sub_27477D408(v35, v36, 1u);
          v37 = OUTLINED_FUNCTION_32_1();
          sub_27478C4DC(v37, v38, 1u);
          v25 = OUTLINED_FUNCTION_66();
          v27 = 1;
          goto LABEL_28;
        }

        sub_27477D408(v31, *(v4 - 1), 1u);
        v43 = OUTLINED_FUNCTION_32_1();
        sub_27477D408(v43, v44, 1u);
        v45 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v45, v46, 1u);
        v13 = OUTLINED_FUNCTION_32_1();
        v15 = 1;
        goto LABEL_39;
      case 2u:
        if (v10 == 2)
        {
          v16 = *(v4 - 2);
          if (v6 == v9 && v5 == v8)
          {
            sub_27477D408(v16, *(v4 - 1), 2u);
            v39 = OUTLINED_FUNCTION_32_1();
            sub_27477D408(v39, v40, 2u);
            v41 = OUTLINED_FUNCTION_32_1();
            sub_27478C4DC(v41, v42, 2u);
            v13 = OUTLINED_FUNCTION_32_1();
            v15 = 2;
LABEL_39:
            sub_27478C4DC(v13, v14, v15);
          }

          else
          {
            v18 = OUTLINED_FUNCTION_130_0(v16);
            v19 = OUTLINED_FUNCTION_66();
            sub_27477D408(v19, v20, 2u);
            v21 = OUTLINED_FUNCTION_32_1();
            sub_27477D408(v21, v22, 2u);
            v23 = OUTLINED_FUNCTION_32_1();
            sub_27478C4DC(v23, v24, 2u);
            v25 = OUTLINED_FUNCTION_66();
            v27 = 2;
LABEL_28:
            sub_27478C4DC(v25, v26, v27);
            if ((v18 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v3 += 24;
          v4 += 24;
          if (!--v2)
          {
            goto LABEL_44;
          }

          continue;
        }

LABEL_42:
        v50 = OUTLINED_FUNCTION_32_1();
        sub_27477D408(v50, v51, v7);

LABEL_43:
        v52 = OUTLINED_FUNCTION_66();
        sub_27477D408(v52, v53, v10);
        v54 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v54, v55, v7);
        v56 = OUTLINED_FUNCTION_66();
        sub_27478C4DC(v56, v57, v10);
        v58 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v58, v59, v7);
LABEL_44:
        OUTLINED_FUNCTION_46();
        return;
      case 3u:
        if (v6 | v5)
        {
          if (v10 != 3)
          {
            goto LABEL_43;
          }

          if (v9 != 1 || v8 != 0)
          {
            LOBYTE(v10) = 3;
            goto LABEL_43;
          }

          v29 = OUTLINED_FUNCTION_32_1();
          sub_27478C4DC(v29, v30, 3u);
          v13 = 1;
        }

        else
        {
          if (v10 != 3 || (v8 | v9) != 0)
          {
            goto LABEL_43;
          }

          v48 = OUTLINED_FUNCTION_32_1();
          sub_27478C4DC(v48, v49, 3u);
          v13 = 0;
        }

        v14 = 0;
        v15 = 3;
        goto LABEL_39;
      default:
        if (*v3)
        {
          goto LABEL_43;
        }

        v11 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v11, v12, 0);
        v13 = OUTLINED_FUNCTION_66();
        v15 = 0;
        goto LABEL_39;
    }
  }
}

void sub_2747840D0()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_104_1();
  v2 = type metadata accessor for SmartShortcutPickerEntry(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v8 = &v15[-v7];
  v9 = *(v0 + 16);
  if (v9 == *(v1 + 16) && v9 && v0 != v1)
  {
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = v0 + v10;
    v12 = v1 + v10;
    v13 = *(v6 + 72);
    do
    {
      sub_274729CBC(v11, v8);
      sub_274729CBC(v12, v5);
      memcpy(v18, v8, 0xB9uLL);
      memcpy(v17, v8, sizeof(v17));
      memcpy(v19, v5, 0xB9uLL);
      memcpy(v16, v5, sizeof(v16));
      sub_274772ADC(v18, v15);
      sub_274772ADC(v19, v15);
      v14 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
      memcpy(v20, v16, 0xB9uLL);
      sub_274772BE8(v20);
      memcpy(v21, v17, 0xB9uLL);
      sub_274772BE8(v21);
      sub_27472AFE4();
      sub_27472AFE4();
      if ((v14 & 1) == 0)
      {
        break;
      }

      v12 += v13;
      v11 += v13;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747842E8()
{
  OUTLINED_FUNCTION_49_2();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6)
      {
        if (v5 == 1)
        {
          if (v7 != 1)
          {
            break;
          }
        }

        else
        {
          if (v7 < 2)
          {
            break;
          }

          OUTLINED_FUNCTION_68();
          sub_27471CF08(v8, v9, v10);
          sub_27478C370(v7);
          sub_27478C370(v5);
          v11 = sub_2749FD604();
          sub_27478C360(v7);
          sub_27478C360(v5);
          if ((v11 & 1) == 0)
          {
            break;
          }
        }
      }

      else if (v7)
      {
        break;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2747843DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 88)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v20, i, 0x58uLL);
      if (__dst[0] != v20[0] || __dst[1] != v20[1])
      {
        OUTLINED_FUNCTION_66_2();
        if ((sub_2749FDCC4() & 1) == 0)
        {
          break;
        }
      }

      v6 = __dst[2] == v20[2] && __dst[3] == v20[3];
      if (!v6 && (sub_2749FDCC4() & 1) == 0)
      {
        break;
      }

      v7 = __dst[5];
      v8 = v20[5];
      if (__dst[5])
      {
        v9 = v20[8];
        v11 = __dst[7];
        v10 = __dst[8];
        v12 = __dst[6];
        v13 = __dst[4];
        sub_27478C42C(__dst, v18);
        sub_27478C42C(v20, v18);
        sub_274772C44(v13, v7, v12, v11, v10);

        if (!v8)
        {
          swift_unknownObjectRelease();
LABEL_31:
          sub_27478C488(v20);
          sub_27478C488(__dst);
          return 0;
        }

        swift_unknownObjectRetain();

        v14 = [v10 isEqual_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v14 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v20[5])
        {
          return 0;
        }

        sub_27478C42C(__dst, v18);
        sub_27478C42C(v20, v18);
      }

      if (__dst[9] == v20[9] && __dst[10] == v20[10])
      {
        sub_27478C488(v20);
        sub_27478C488(__dst);
      }

      else
      {
        v16 = sub_2749FDCC4();
        sub_27478C488(v20);
        sub_27478C488(__dst);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_2747845E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16) || !v2 || result == a2)
  {
    return;
  }

  v3 = 0;
  v4 = result + 32;
  v95 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_102;
    }

    v5 = v4 + 16 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = v95 + 16 * v3;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (!v7)
    {
      break;
    }

    if (v7 == 1)
    {
      if (v10 != 1)
      {
        sub_27478A044(*v8, *(v8 + 8));
        sub_27478A044(v6, 1);
        v82 = v6;
        v83 = 1;
LABEL_86:
        sub_27478A020(v82, v83);
        v84 = v9;
        v85 = v10;
        goto LABEL_94;
      }

      sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
      sub_27478A044(v9, 1);
      sub_27478A044(v6, 1);
      sub_27478A044(v9, 1);
      sub_27478A044(v6, 1);
      v11 = sub_2749FD604();
      sub_27478A020(v6, 1);
      sub_27478A020(v9, 1);
      sub_27478A020(v9, 1);
      v12 = v6;
      v13 = 1;
    }

    else
    {
      if (v10 != 2)
      {
        sub_27478A044(*v8, *(v8 + 8));
        sub_27478A044(v6, 2);
        v82 = v6;
        v83 = 2;
        goto LABEL_86;
      }

      sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
      sub_27478A044(v9, 2);
      sub_27478A044(v6, 2);
      sub_27478A044(v9, 2);
      sub_27478A044(v6, 2);
      v11 = sub_2749FD604();
      sub_27478A020(v6, 2);
      sub_27478A020(v9, 2);
      sub_27478A020(v9, 2);
      v12 = v6;
      v13 = 2;
    }

    sub_27478A020(v12, v13);
    if ((v11 & 1) == 0)
    {
      return;
    }

LABEL_21:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (*(v8 + 8))
  {
    sub_27478A044(*v8, *(v8 + 8));
    sub_27478A044(v6, 0);
    v82 = v6;
    v83 = 0;
    goto LABEL_86;
  }

  v14 = v6[2];
  if (v14 != v9[2])
  {
    sub_27478A044(*v8, 0);
    sub_27478A044(v6, 0);
    sub_27478A020(v6, 0);
    v84 = v9;
    goto LABEL_93;
  }

  if (v14)
  {
    v15 = v6 == v9;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    sub_27478A044(*v8, 0);
    sub_27478A044(v6, 0);
    sub_27478A020(v6, 0);
    sub_27478A020(v9, 0);
    goto LABEL_21;
  }

  v88 = v4;
  v89 = v3;
  v90 = v2;
  sub_27478A044(v9, 0);
  sub_27478A044(v6, 0);
  sub_27478A044(v9, 0);
  sub_27478A044(v6, 0);
  v16 = 0;
  v96 = v14 - 1;
  v97 = v6;
  v17 = v9 + 9;
  v18 = v6 + 5;
  v98 = v9;
  while (2)
  {
    if (v16 >= v6[2])
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      return;
    }

    if (v16 >= v9[2])
    {
      goto LABEL_101;
    }

    v20 = *(v18 - 1);
    v19 = *v18;
    v21 = v18[1];
    v22 = v18[2];
    v23 = v18[3];
    v24 = v18[4];
    v25 = *(v17 - 5);
    v26 = *(v17 - 4);
    v28 = *(v17 - 3);
    v27 = *(v17 - 2);
    v30 = *(v17 - 1);
    v29 = *v17;
    v107[0] = v20;
    v107[1] = v19;
    v107[2] = v21;
    v107[3] = v22;
    v107[4] = v23;
    v107[5] = v24;
    v107[6] = v25;
    v107[7] = v26;
    v107[8] = v28;
    v107[9] = v27;
    v107[10] = v30;
    v107[11] = v29;
    switch(v22)
    {
      case 0uLL:
        v9 = v98;
        if (v27)
        {
          goto LABEL_91;
        }

        v31 = v25;
        v99 = v19;
        v32 = v26;
        v33 = v21;
        v34 = v28;
        v35 = v23;
        v36 = v24;
        v37 = v20;
        sub_27472EC68(v31, v32, v34, 0, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v37;
        v39 = v99;
        v40 = v33;
        v41 = 0;
        goto LABEL_46;
      case 1uLL:
        v9 = v98;
        if (v27 != 1)
        {
          goto LABEL_91;
        }

        v61 = v25;
        v103 = v19;
        v62 = v26;
        v63 = v21;
        v64 = v28;
        v35 = v23;
        v36 = v24;
        v65 = v20;
        sub_27472EC68(v61, v62, v64, 1uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v65;
        v39 = v103;
        v40 = v63;
        v41 = 1;
        goto LABEL_46;
      case 2uLL:
        v9 = v98;
        if (v27 != 2)
        {
          goto LABEL_91;
        }

        v51 = v25;
        v101 = v19;
        v52 = v26;
        v53 = v21;
        v54 = v28;
        v35 = v23;
        v36 = v24;
        v55 = v20;
        sub_27472EC68(v51, v52, v54, 2uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v55;
        v39 = v101;
        v40 = v53;
        v41 = 2;
        goto LABEL_46;
      case 3uLL:
        v9 = v98;
        if (v27 != 3)
        {
          goto LABEL_91;
        }

        v56 = v25;
        v102 = v19;
        v57 = v26;
        v58 = v21;
        v59 = v28;
        v35 = v23;
        v36 = v24;
        v60 = v20;
        sub_27472EC68(v56, v57, v59, 3uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v60;
        v39 = v102;
        v40 = v58;
        v41 = 3;
        goto LABEL_46;
      case 4uLL:
        v9 = v98;
        if (v27 != 4)
        {
          goto LABEL_91;
        }

        v46 = v25;
        v100 = v19;
        v47 = v26;
        v48 = v21;
        v49 = v28;
        v35 = v23;
        v36 = v24;
        v50 = v20;
        sub_27472EC68(v46, v47, v49, 4uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v50;
        v39 = v100;
        v40 = v48;
        v41 = 4;
        goto LABEL_46;
      case 5uLL:
        v9 = v98;
        if (v27 != 5)
        {
          goto LABEL_91;
        }

        v66 = v25;
        v104 = v19;
        v67 = v26;
        v68 = v21;
        v69 = v28;
        v35 = v23;
        v36 = v24;
        v70 = v20;
        sub_27472EC68(v66, v67, v69, 5uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v70;
        v39 = v104;
        v40 = v68;
        v41 = 5;
        goto LABEL_46;
      case 6uLL:
        v9 = v98;
        if (v27 != 6)
        {
          goto LABEL_91;
        }

        v71 = v25;
        v105 = v19;
        v72 = v26;
        v73 = v21;
        v74 = v28;
        v35 = v23;
        v36 = v24;
        v75 = v20;
        sub_27472EC68(v71, v72, v74, 6uLL, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        v38 = v75;
        v39 = v105;
        v40 = v73;
        v41 = 6;
LABEL_46:
        sub_27478C5D8(v38, v39, v40, v41, v35, v36);
        goto LABEL_52;
      case 7uLL:
        v9 = v98;
        if (v27 != 7)
        {
          goto LABEL_91;
        }

        v42 = v25;
        v43 = v26;
        v44 = v28;
        v45 = 7;
        goto LABEL_51;
      case 8uLL:
        v9 = v98;
        if (v27 != 8)
        {
          goto LABEL_91;
        }

        v42 = v25;
        v43 = v26;
        v44 = v28;
        v45 = 8;
        goto LABEL_51;
      case 9uLL:
        v9 = v98;
        if (v27 != 9)
        {
          goto LABEL_91;
        }

        v42 = v25;
        v43 = v26;
        v44 = v28;
        v45 = 9;
        goto LABEL_51;
      case 0xAuLL:
        v9 = v98;
        if (v27 != 10)
        {
          goto LABEL_91;
        }

        v42 = v25;
        v43 = v26;
        v44 = v28;
        v45 = 10;
        goto LABEL_51;
      case 0xBuLL:
        v9 = v98;
        if (v27 != 11)
        {
          goto LABEL_91;
        }

        v42 = v25;
        v43 = v26;
        v44 = v28;
        v45 = 11;
LABEL_51:
        sub_27472EC68(v42, v43, v44, v45, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
        goto LABEL_52;
      default:
        if (v27 < 0xC)
        {
          goto LABEL_90;
        }

        v93 = v23;
        v94 = v21;
        v106 = v19;
        v91 = v24;
        v92 = v20;
        if (v19)
        {
          if (!v26 || (v20 == v25 ? (v76 = v19 == v26) : (v76 = 0), !v76 && (v77 = sub_2749FDCC4(), v24 = v91, v20 = v92, v19 = v106, v21 = v94, (v77 & 1) == 0)))
          {
LABEL_88:
            v86 = v20;
            goto LABEL_97;
          }
        }

        else if (v26)
        {
          goto LABEL_88;
        }

        v78 = v21 == v28 && v22 == v27;
        if (v78 || (v79 = sub_2749FDCC4(), v24 = v91, v21 = v94, (v79 & 1) != 0))
        {
          if (!v24)
          {
            sub_27472EC68(v25, v26, v28, v27, v30, v29);
            sub_27472EC68(v92, v106, v94, v22, v93, 0);
            sub_27472EC68(v25, v26, v28, v27, v30, v29);
            sub_27472EC68(v92, v106, v94, v22, v93, 0);

            sub_27478C584(v107, &unk_2809680C0);
            if (v29)
            {

              sub_27478C5D8(v25, v26, v28, v27, v30, v29);
              sub_27478C5D8(v92, v106, v94, v22, v93, 0);
              goto LABEL_98;
            }

            sub_27478C5D8(v25, v26, v28, v27, v30, 0);
            sub_27478C5D8(v92, v106, v94, v22, v93, 0);
            goto LABEL_80;
          }

          if (!v29)
          {
            v20 = v92;
            v23 = v93;
            v19 = v106;
LABEL_90:
            sub_27472EC68(v20, v19, v21, v22, v23, v24);
            v9 = v98;
LABEL_91:
            sub_27472EC68(v25, v26, v28, v27, v30, v29);
            sub_27478C584(v107, &unk_2809680C0);
            goto LABEL_92;
          }

          if (v93 == v30 && v24 == v29)
          {
            v81 = v24;
            sub_27472EC68(v92, v106, v21, v22, v93, v24);
            sub_27472EC68(v25, v26, v28, v27, v93, v81);
            sub_27478C584(v107, &unk_2809680C0);
LABEL_80:
            v9 = v98;
            goto LABEL_52;
          }

          v87 = sub_2749FDCC4();
          sub_27472EC68(v92, v106, v94, v22, v93, v91);
          sub_27472EC68(v25, v26, v28, v27, v30, v29);
          sub_27478C584(v107, &unk_2809680C0);
          v9 = v98;
          if ((v87 & 1) == 0)
          {
            goto LABEL_92;
          }

LABEL_52:
          v6 = v97;
          if (v96 == v16)
          {
            sub_27478A020(v97, 0);
            sub_27478A020(v9, 0);
            sub_27478A020(v9, 0);
            sub_27478A020(v97, 0);
            v3 = v89;
            v2 = v90;
            v4 = v88;
            goto LABEL_21;
          }

          v17 += 6;
          v18 += 6;
          ++v16;
          continue;
        }

        v86 = v92;
        v19 = v106;
LABEL_97:
        sub_27472EC68(v86, v19, v21, v22, v93, v24);
        sub_27472EC68(v25, v26, v28, v27, v30, v29);
        sub_27478C584(v107, &unk_2809680C0);
LABEL_98:
        v9 = v98;
LABEL_92:
        sub_27478A020(v97, 0);
        sub_27478A020(v9, 0);
        sub_27478A020(v9, 0);
        v84 = v97;
LABEL_93:
        v85 = 0;
LABEL_94:
        sub_27478A020(v84, v85);
        return;
    }
  }
}

void sub_2747850E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16) && v2 && result != a2)
  {
    v3 = (a2 + 72);
    v4 = (result + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v10 = v4[4];
      v21[0] = v5;
      v21[1] = v6;
      v21[2] = v7;
      v21[3] = v8;
      v21[4] = v9;
      v21[5] = v10;
      if (!v2)
      {
        break;
      }

      v13 = v2;
      v14 = *(v3 - 2);
      v15 = *(v3 - 3);
      v12 = *(v3 - 1);
      v16 = *v3;
      v17 = *(v3 - 4);
      v20[0] = *(v3 - 5);
      v11 = v20[0];
      v20[1] = v17;
      v20[2] = v15;
      v20[3] = v14;
      v20[4] = v12;
      v20[5] = v16;
      v19 = v5;
      sub_27472EC68(v5, v6, v7, v8, v9, v10);
      sub_27472EC68(v11, v17, v15, v14, v12, v16);
      v18 = static LibraryEditingAction.== infix(_:_:)(v21, v20);
      sub_27478C5D8(v11, v17, v15, v14, v12, v16);
      sub_27478C5D8(v19, v6, v7, v8, v9, v10);
      if (v18)
      {
        v4 += 6;
        v3 += 6;
        v2 = v13 - 1;
        if (v13 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_274785250(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2749FD844())
  {
    if (a2 >> 62)
    {
      result = sub_2749FD844();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_27471CF08(0, &qword_28096EE00, 0x277D7C8F8);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x277C5F6D0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x277C5F6D0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      OUTLINED_FUNCTION_107_1();
      v21 = sub_2749FD604();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_274785420(uint64_t result, uint64_t a2)
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

void sub_27478547C()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 48);
    v4 = (v0 + 48);
    while (2)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      switch(*v4)
      {
        case 1:
          if (v7 == 1)
          {
            if (*(v4 - 2) == v6 && *(v4 - 1) == v5)
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_63();
            if (sub_2749FDCC4())
            {
              goto LABEL_23;
            }
          }

          break;
        case 2:
          if (v7 == 2)
          {
            OUTLINED_FUNCTION_68();
            sub_27471CF08(v21, v22, v23);
            v24 = OUTLINED_FUNCTION_99();
            sub_2747729AC(v24, v25, 2);
            v26 = OUTLINED_FUNCTION_63();
            sub_2747729AC(v26, v27, 2);
            OUTLINED_FUNCTION_107_1();
            v15 = sub_2749FD604();
            v28 = OUTLINED_FUNCTION_99();
            sub_274772984(v28, v29, 2);
            v18 = OUTLINED_FUNCTION_63();
            v20 = 2;
            goto LABEL_10;
          }

          break;
        case 3:
          if (v7 == 3 && (v5 | v6) == 0)
          {
            goto LABEL_23;
          }

          break;
        default:
          if (!*v3)
          {
            OUTLINED_FUNCTION_68();
            sub_27471CF08(v8, v9, v10);
            v11 = OUTLINED_FUNCTION_99();
            sub_2747729AC(v11, v12, 0);
            v13 = OUTLINED_FUNCTION_63();
            sub_2747729AC(v13, v14, 0);
            OUTLINED_FUNCTION_107_1();
            v15 = sub_2749FD604();
            v16 = OUTLINED_FUNCTION_99();
            sub_274772984(v16, v17, 0);
            v18 = OUTLINED_FUNCTION_63();
            v20 = 0;
LABEL_10:
            sub_274772984(v18, v19, v20);
            if (v15)
            {
LABEL_23:
              v3 += 24;
              v4 += 24;
              if (--v2)
              {
                continue;
              }
            }
          }

          break;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_27478561C()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_104_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681E8, &qword_274A11598);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(v0 + 16);
  if (v6 == *(v1 + 16) && v6 && v0 != v1)
  {
    OUTLINED_FUNCTION_71();
    v8 = v0 + v7;
    v9 = v1 + v7;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = (v10 - 8);
    v21 = *(v10 + 56);
    v22 = v11;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_66_2();
      v22(v13);
      if (!v6)
      {
        break;
      }

      v14 = OUTLINED_FUNCTION_95_1();
      v15 = v10;
      v22(v14);
      sub_27472ABF8(&qword_2809681F0, &qword_2809681E8);
      OUTLINED_FUNCTION_45();
      v16 = sub_2749FCD54();
      v17 = *v12;
      v18 = OUTLINED_FUNCTION_44();
      v17(v18);
      v19 = OUTLINED_FUNCTION_93();
      v17(v19);
      if (v16)
      {
        v9 += v21;
        v8 += v21;
        v20 = v6-- == 1;
        v10 = v15;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_46();
  }
}

void sub_2747857F8()
{
  OUTLINED_FUNCTION_49_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for WFAddToHomeScreenItem(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = *(v3 + 16);
  if (v7 == *(v1 + 16) && v7 && v3 != v1)
  {
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = v3 + v8;
    v10 = v1 + v8;
    v11 = *(v6 + 72);
    do
    {
      v12 = OUTLINED_FUNCTION_93();
      sub_274729CBC(v12, v13);
      v14 = OUTLINED_FUNCTION_119();
      sub_274729CBC(v14, v15);
      v16 = OUTLINED_FUNCTION_32_1();
      v18 = sub_2749571B4(v16, v17);
      sub_27472AFE4();
      OUTLINED_FUNCTION_94_0();
      sub_27472AFE4();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v10 += v11;
      v9 += v11;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274785998(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = *v3;
      if (*v4)
      {
        if (*v4 == 1)
        {
          result = 0;
          if (v9 != 1 || *(v4 - 2) != v7)
          {
            return result;
          }
        }

        else if (v6 | v5)
        {
          if (v9 != 2)
          {
            return 0;
          }

          result = 0;
          if (v7 != 1 || v8)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v9 != 2 || v8 | v7)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v11 = v6 == v7 && v5 == v8;
        if (!v11 && (sub_2749FDCC4() & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_274785A98()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_104_1();
  sub_2749F9374();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(v0 + 16);
  if (v6 == *(v1 + 16) && v6 && v0 != v1)
  {
    OUTLINED_FUNCTION_71();
    v8 = v0 + v7;
    v9 = v1 + v7;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = (v10 - 8);
    v21 = *(v10 + 56);
    v22 = v11;
    while (1)
    {
      v13 = OUTLINED_FUNCTION_66_2();
      v22(v13);
      if (!v6)
      {
        break;
      }

      v14 = OUTLINED_FUNCTION_95_1();
      v15 = v10;
      v22(v14);
      sub_27472153C(&qword_2809681C8, MEMORY[0x277D7BE10]);
      OUTLINED_FUNCTION_45();
      v16 = sub_2749FCD54();
      v17 = *v12;
      v18 = OUTLINED_FUNCTION_44();
      v17(v18);
      v19 = OUTLINED_FUNCTION_93();
      v17(v19);
      if (v16)
      {
        v9 += v21;
        v8 += v21;
        v20 = v6-- == 1;
        v10 = v15;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_46();
  }
}

void LibraryEditingBehavior.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_59_0();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibraryEditingBehavior(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_4_4();
  v4 = OUTLINED_FUNCTION_63();
  sub_274729CBC(v4, v5);
  OUTLINED_FUNCTION_116_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x277C5FB60](2);
      v16 = OUTLINED_FUNCTION_32_1();
      sub_27478B2CC(v16, v17);

      break;
    case 2u:
      OUTLINED_FUNCTION_112_0();
      v10 = OUTLINED_FUNCTION_66_2();
      v11(v10);
      MEMORY[0x277C5FB60](3);
      OUTLINED_FUNCTION_7_4();
      sub_27472153C(v12, v13);
      OUTLINED_FUNCTION_89_0();
      sub_2749FCD04();
      v14 = OUTLINED_FUNCTION_45();
      v15(v14);
      break;
    case 3u:
      MEMORY[0x277C5FB60](0);
      break;
    default:
      v6 = *v0;
      v7 = *(v0 + 8);
      MEMORY[0x277C5FB60](1);
      if (v7)
      {
        if (v7 == 1)
        {
          MEMORY[0x277C5FB60](1);
          sub_2749FD614();
          v8 = OUTLINED_FUNCTION_78_0();
        }

        else
        {
          MEMORY[0x277C5FB60](2);
          sub_2749FD614();
          v8 = v6;
          v9 = 2;
        }
      }

      else
      {
        MEMORY[0x277C5FB60](0);
        v18 = OUTLINED_FUNCTION_32_1();
        sub_27478B554(v18, v19);
        v8 = v6;
        v9 = 0;
      }

      sub_27478A020(v8, v9);
      break;
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t LibraryEditingOption.symbolName.getter()
{
  v1 = 0x6C69636E6570;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x6873617274;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t LibraryEditingOption.id.getter()
{
  if (*(v0 + 8))
  {
    return 0x65647265646C6F66;
  }

  else
  {
    return 0x6F697463656C6573;
  }
}

uint64_t LibraryEditingOption.title.getter()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      sub_2749FCE14("Edit Name and Icon", 18);
    }

    else
    {
      sub_2749FCE14("Delete", 6);
    }
  }

  else
  {
    sub_2749FCE14("Edit", 4);
  }

  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v1 = qword_28159E448;
  OUTLINED_FUNCTION_32();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_84();

  return OUTLINED_FUNCTION_44();
}

void LibraryEditingOption.hash(into:)()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    MEMORY[0x277C5FB60](v1);
    OUTLINED_FUNCTION_118_0();
    sub_2749FD614();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    v2 = OUTLINED_FUNCTION_45();

    sub_27478B554(v2, v3);
  }
}

uint64_t LibraryEditingOption.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_99_0(a1);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x277C5FB60](v4);
    sub_2749FD614();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    sub_27478B554(v6, v2);
  }

  return sub_2749FDE44();
}

uint64_t sub_2747861A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = *(v4 + 8);
  v9 = *v4;
  v10 = v6;
  sub_2749FDDF4();
  a4(v8);
  return sub_2749FDE44();
}

void LibraryEditingAction.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  switch(v0[3])
  {
    case 0:
      v1 = 0;
      goto LABEL_14;
    case 1:
      v1 = 1;
      goto LABEL_14;
    case 2:
      v1 = 2;
      goto LABEL_14;
    case 3:
      v1 = 3;
      goto LABEL_14;
    case 4:
      v1 = 4;
      goto LABEL_14;
    case 5:
      v1 = 5;
      goto LABEL_14;
    case 6:
      v1 = 7;
      goto LABEL_14;
    case 7:
      v1 = 8;
      goto LABEL_14;
    case 8:
      v1 = 9;
      goto LABEL_14;
    case 9:
      v1 = 10;
      goto LABEL_14;
    case 0xALL:
      v1 = 11;
      goto LABEL_14;
    case 0xBLL:
      v1 = 12;
LABEL_14:
      MEMORY[0x277C5FB60](v1);
      goto LABEL_15;
    default:
      v2 = v0[1];
      v3 = v0[5];
      MEMORY[0x277C5FB60](6);
      sub_2749FDE14();
      if (v2)
      {
        sub_2749FCE24();
      }

      sub_2749FCE24();
      if (v3)
      {
        sub_2749FDE14();
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_50_0();

        sub_2749FCE24();
      }

      else
      {
        sub_2749FDE14();
LABEL_15:
        OUTLINED_FUNCTION_50_0();
      }

      return;
  }
}

uint64_t LibraryEditingAction.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_99_0(a1);
  LibraryEditingAction.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_2747863B8(uint64_t a1)
{
  sub_2749FDDF4();
  LibraryEditingAction.hash(into:)();
  return sub_2749FDE44();
}

void LibrarySectionOptions.SectionType.count.getter()
{
  OUTLINED_FUNCTION_48();
  v3 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_4();
  v7 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_3_12();
  sub_274729CBC(v0, v14);
  OUTLINED_FUNCTION_99();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = *v14;
    [*v14 count];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_11:
    OUTLINED_FUNCTION_46();
    return;
  }

  (*(v9 + 32))(v2, v14, v7);
  v16 = *(sub_2749F9504() + 16);
  if (!v16)
  {

LABEL_10:
    (*(v9 + 8))(v2, v7);
    goto LABEL_11;
  }

  v28 = v2;
  v29 = v7;
  v17 = 0;
  v18 = *(v5 + 16);
  OUTLINED_FUNCTION_71();
  v21 = v19 + v20;
  v22 = *(v5 + 72);
  while (1)
  {
    v18(v1, v21, v3);
    v23 = *(sub_2749F97B4() + 16);

    v24 = OUTLINED_FUNCTION_119();
    v25(v24);
    v26 = __OFADD__(v17, v23);
    v17 += v23;
    if (v26)
    {
      break;
    }

    v21 += v22;
    if (!--v16)
    {

      v7 = v29;
      v2 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t LibrarySectionOptions.SectionType.shortcuts.getter()
{
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_12();
  v4 = OUTLINED_FUNCTION_32_1();
  sub_274729CBC(v4, v5);
  v6 = OUTLINED_FUNCTION_135_0();
  if (!v6)
  {
    return *v3;
  }

  v7 = v6;
  result = 0;
  if (v7 == 1)
  {
    sub_2749F9514();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v3);
    return 0;
  }

  return result;
}

void static LibrarySectionOptions.SectionType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibrarySectionOptions.SectionType(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82_1();
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680C8, &qword_274A10BA0);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_56_2();
  v15 = (v0 + v14);
  sub_274729CBC(v3, v0);
  v16 = OUTLINED_FUNCTION_99();
  sub_274729CBC(v16, v17);
  OUTLINED_FUNCTION_95_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_12();
      v19 = OUTLINED_FUNCTION_24_0();
      sub_274729CBC(v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0, &qword_274A10BA8);
      OUTLINED_FUNCTION_43_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v30;
        (*(v30 + 32))(v1, v15, v4);
        OUTLINED_FUNCTION_66();
        sub_2749F94E4();
        v22 = *(v21 + 8);
        v23 = OUTLINED_FUNCTION_93();
        v22(v23);
        v24 = OUTLINED_FUNCTION_70_1();
        v22(v24);
LABEL_12:
        OUTLINED_FUNCTION_13_5();
        goto LABEL_13;
      }

      v26 = OUTLINED_FUNCTION_70_1();
      v27(v26);
    }

    else
    {
      OUTLINED_FUNCTION_43_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_136_0();
    v25 = *v11;
    OUTLINED_FUNCTION_43_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v15;
      sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
      OUTLINED_FUNCTION_66_2();
      sub_2749FD604();

      goto LABEL_12;
    }
  }

  sub_27478C584(v0, &qword_2809680C8);
LABEL_13:
  OUTLINED_FUNCTION_46();
}

void LibrarySectionOptions.SectionType.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  v1 = v0;
  OUTLINED_FUNCTION_134();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  OUTLINED_FUNCTION_3_12();
  sub_274729CBC(v1, v6);
  OUTLINED_FUNCTION_94_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0, &qword_274A10BA8);
      OUTLINED_FUNCTION_112_0();
      v8 = OUTLINED_FUNCTION_70_1();
      v9(v8);
      OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_7_4();
      sub_27472153C(v10, v11);
      OUTLINED_FUNCTION_88_0();
      sub_2749FCD04();
      sub_2749FDE14();
      v12 = OUTLINED_FUNCTION_66();
      v13(v12);
    }

    else
    {
      MEMORY[0x277C5FB60](0);
    }
  }

  else
  {
    v14 = *v6;
    MEMORY[0x277C5FB60](1);
    sub_2749FD614();
    sub_2749FDE14();
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t LibrarySectionOptions.footer.getter()
{
  v2 = OUTLINED_FUNCTION_69_0();
  result = type metadata accessor for LibrarySectionOptions(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

void *LibrarySectionOptions.collection.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibrarySectionOptions(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t LibrarySectionOptions.emptyStateContent.getter()
{
  type metadata accessor for LibrarySectionOptions(0);
}

uint64_t LibrarySectionOptions.id.getter()
{
  v0 = OUTLINED_FUNCTION_69_0();
  type metadata accessor for LibrarySectionOptions(v0);
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_88_0();

  return v2(v1);
}

BOOL LibrarySectionOptions.Header.hasNameAndIconName.getter()
{
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_32();
  sub_274729CBC(v1, v2);
  OUTLINED_FUNCTION_45();
  v3 = swift_getEnumCaseMultiPayload() == 0;
  sub_27472AFE4();
  return v3;
}

BOOL LibrarySectionOptions.Header.shouldShowInTable.getter()
{
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_32();
  sub_274729CBC(v1, v2);
  OUTLINED_FUNCTION_45();
  v3 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFD) == 0;
  sub_27472AFE4();
  return v3;
}

void LibrarySectionOptions.Header.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_59_0();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibrarySectionOptions.Header(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_1_7();
  v4 = OUTLINED_FUNCTION_63();
  sub_274729CBC(v4, v5);
  OUTLINED_FUNCTION_116_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x277C5FB60](3);
      OUTLINED_FUNCTION_32_1();
      sub_2749FCE24();
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_112_0();
      v8 = OUTLINED_FUNCTION_66_2();
      v9(v8);
      MEMORY[0x277C5FB60](4);
      OUTLINED_FUNCTION_7_4();
      sub_27472153C(v10, v11);
      OUTLINED_FUNCTION_89_0();
      sub_2749FCD04();
      v12 = OUTLINED_FUNCTION_45();
      v13(v12);
      break;
    case 3u:
      v7 = 0;
      goto LABEL_10;
    case 4u:
      v7 = 1;
      goto LABEL_10;
    case 5u:
      v7 = 5;
LABEL_10:
      MEMORY[0x277C5FB60](v7);
      break;
    default:
      v6 = *(v0 + 24);
      MEMORY[0x277C5FB60](2);
      OUTLINED_FUNCTION_121();
      sub_2749FCE24();

      if (v6)
      {
        sub_2749FDE14();
        OUTLINED_FUNCTION_32();
        sub_2749FCE24();
LABEL_8:
      }

      else
      {
        sub_2749FDE14();
      }

      break;
  }

  OUTLINED_FUNCTION_50_0();
}