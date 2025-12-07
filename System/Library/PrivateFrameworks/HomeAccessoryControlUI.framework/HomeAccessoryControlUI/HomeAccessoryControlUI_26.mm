uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC10SourcePathV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268E310();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3720, &qword_2526A97B8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((sub_25268E6E0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for MatterControlSolver.SourcePath(0);
  v15 = a1;
  v23 = v14;
  v24 = a1;
  v16 = *(v14 + 20);
  v17 = *(v11 + 48);
  sub_25237153C(v15 + v16, v13, &qword_27F4DB3A0, &qword_252695548);
  sub_25237153C(a2 + v16, &v13[v17], &qword_27F4DB3A0, &qword_252695548);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_252372288(v13, &qword_27F4DB3A0, &qword_252695548);
LABEL_11:
      v19 = sub_2523E34C8(*(v24 + *(v23 + 24)), *(a2 + *(v23 + 24)));
      return v19 & 1;
    }

    goto LABEL_7;
  }

  sub_25237153C(v13, v10, &qword_27F4DB3A0, &qword_252695548);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_252372288(v13, &qword_27F4E3720, &qword_2526A97B8);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_2525F0FDC(&qword_27F4DAF10, MEMORY[0x277D15558], MEMORY[0x277D15588]);
  v21 = sub_252692B70();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_252372288(v13, &qword_27F4DB3A0, &qword_252695548);
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2525F3C94(a1);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    goto LABEL_8;
  }

  v8 = *(a1 + *(type metadata accessor for MatterControlSolver.Source(0) + 28));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_2525EEE70(*(v8 + 16), 0, &qword_27F4DB518, &unk_2526A97C0, MEMORY[0x277D15558]);
    v11 = *(sub_25268E310() - 8);
    sub_2525EF168(&v24, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v23 = v12;
    v13 = v24;

    sub_2523A4D1C(v13);
    if (v23 == v9)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_7:
  v6 = sub_2525F3B18(v10);
  v7 = v14;

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_8:
  result = (*(v7 + 24))(a1, a2, v6, v7);
  if (!result)
  {
    v16 = (*(v7 + 8))(a1, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v17 = (type metadata accessor for Device.ControlModule(0) - 8);
    v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_252694E90;
    v20 = (v19 + v18);
    *(v20 + 3) = 0;
    *(v20 + 4) = 0;
    v21 = v17[9];
    v22 = type metadata accessor for AccessoryControlModule.Layout(0);
    (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
    result = v19;
    *(v20 + 1) = 0;
    *(v20 + 2) = v16;
    *v20 = 0;
  }

  return result;
}

void _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4withSayAA6DeviceV0C6ModuleVG0A9DataModel06StaticeJ0V_tFZ_0()
{
  v0 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v0 - 8);
  v62 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_25268DA10();
  v2 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_25268EE60();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v53 - v11;
  v12 = sub_25268F600();
  v13 = v12;
  if (*(v12 + 16))
  {
    v14 = *(v12 + 64);
    v54 = v12 + 64;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v53 = (v15 + 63) >> 6;
    v57 = (v2 + 8);
    v58 = v7 + 16;
    v59 = v7;
    v56 = v7 + 8;

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v55 = v13;
    while (v17)
    {
      v64 = v19;
LABEL_12:
      v21 = v59;
      v22 = *(v59 + 16);
      v23 = v65;
      v24 = v66;
      v22(v65, *(v13 + 56) + *(v59 + 72) * (__clz(__rbit64(v17)) | (v18 << 6)), v66);
      v22(v9, v23, v24);
      v63 = v4[12];
      sub_25268EDB0();
      v25 = type metadata accessor for MatterControlSolver.SourcePath(0);
      v26 = *(v25 + 20);
      v27 = sub_25268E310();
      (*(*(v27 - 8) + 56))(&v6[v26], 1, 1, v27);
      v6[*(v25 + 24)] = 0;
      v28 = sub_25268EE30();
      v29 = &v6[v4[5]];
      *v29 = v28;
      v29[1] = v30;
      sub_25268EE00();
      *&v6[v4[7]] = sub_25268EE40();
      sub_25268EDE0();
      v6[v4[9]] = sub_25268ED90() == 1;
      v31 = sub_25268EDC0();
      v32 = &v6[v4[10]];
      *v32 = v31;
      v32[2] = BYTE2(v31) & 1;
      sub_25268EDD0();
      sub_25268ED80();
      v67 = 0x746E696F70646E65;
      v68 = 0xE90000000000002DLL;
      v33 = v60;
      sub_25268EE10();
      sub_2525F0FDC(&qword_27F4DB2B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = v61;
      v35 = sub_252693370();
      MEMORY[0x2530A4800](v35);

      (*v57)(v33, v34);
      v36 = v67;
      v37 = v68;
      v38 = *(v21 + 8);
      v39 = v66;
      v38(v9, v66);
      v40 = &v6[v4[14]];
      *v40 = v36;
      *(v40 + 1) = v37;
      v6[v63] = 0;
      v41 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
      v42 = v62;
      (*(*(v41 - 8) + 56))(v62, 1, 1, v41);
      v43 = _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(v6, v42);
      sub_2525F0B34(v42, type metadata accessor for AccessoryControl.ValueDestination);
      sub_2525F0B34(v6, type metadata accessor for MatterControlSolver.Source);
      v38(v65, v39);
      v44 = *(v43 + 16);
      v19 = v64;
      v45 = v64[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v46 > v19[3] >> 1)
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v19 = sub_252369B5C(isUniquelyReferenced_nonNull_native, v48, 1, v19);
      }

      v17 &= v17 - 1;
      if (*(v43 + 16))
      {
        v49 = (v19[3] >> 1) - v19[2];
        type metadata accessor for Device.ControlModule(0);
        if (v49 < v44)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        v13 = v55;
        if (v44)
        {
          v50 = v19[2];
          v51 = __OFADD__(v50, v44);
          v52 = v50 + v44;
          if (v51)
          {
            goto LABEL_30;
          }

          v19[2] = v52;
        }
      }

      else
      {

        v13 = v55;
        if (v44)
        {
          goto LABEL_28;
        }
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v53)
      {

        return;
      }

      v17 = *(v54 + 8 * v20);
      ++v18;
      if (v17)
      {
        v64 = v19;
        v18 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_2525F0B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with7handlerSayAA6DeviceV0C6ModuleVG0A9DataModel14ActionEndpointV_AA0bC0V25WriteSpecificationHandler_pSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_25268ECE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MatterControlSolver.Source(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v15);
  MatterControlSolver.Source.init(with:)(v13, v17);
  sub_25237153C(a2, &v25, &qword_27F4E3438, &unk_2526A8D60);
  if (v26)
  {
    sub_25235E1A4(&v25, v28);
    sub_2523C3820(v28, &v25);
    sub_2523C3820(&v25, v6);
    v18 = v26;
    v19 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v20 = *(v19 + 8);
    v21 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    v20(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  else
  {
    sub_252372288(&v25, &qword_27F4E3438, &unk_2526A8D60);
    v22 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  sub_2525F19CC(v6, v9, type metadata accessor for AccessoryControl.ValueDestination);
  v23 = _s22HomeAccessoryControlUI06MatterC6SolverC14controlModules4with16valueDestinationSayAA6DeviceV0C6ModuleVGAC6SourceV_AA0bC0V05ValueK0OtFZ_0(v17, v9);
  sub_2525F0B34(v9, type metadata accessor for AccessoryControl.ValueDestination);
  sub_2525F0B34(v17, type metadata accessor for MatterControlSolver.Source);
  return v23;
}

uint64_t sub_2525F0F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2525F0F88()
{
  result = qword_27F4E3638;
  if (!qword_27F4E3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3638);
  }

  return result;
}

uint64_t sub_2525F0FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2525F1024()
{
  result = qword_27F4E3650;
  if (!qword_27F4E3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3650);
  }

  return result;
}

unint64_t sub_2525F1078()
{
  result = qword_27F4E3670;
  if (!qword_27F4E3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3670);
  }

  return result;
}

uint64_t sub_2525F10CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterControlSolver.SourcePath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2525F1134()
{
  result = qword_27F4E3690;
  if (!qword_27F4E3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3690);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatterControlSolver.ControlIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MatterControlSolver.ControlIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2525F13CC(uint64_t a1)
{
  sub_25268E710();
  if (v1 <= 0x3F)
  {
    sub_2525F16E4(319, &qword_27F4E36B8, MEMORY[0x277D15558]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2525F149C(uint64_t a1)
{
  type metadata accessor for MatterControlSolver.SourcePath(319);
  if (v1 <= 0x3F)
  {
    sub_2525F16E4(319, &qword_27F4E36D0, MEMORY[0x277D15F48]);
    if (v2 <= 0x3F)
    {
      sub_2525F15E8(319);
      if (v3 <= 0x3F)
      {
        sub_25268F8E0();
        if (v4 <= 0x3F)
        {
          sub_2525F1694();
          if (v5 <= 0x3F)
          {
            sub_2525F16E4(319, &qword_27F4E36E8, MEMORY[0x277D15BD0]);
            if (v6 <= 0x3F)
            {
              sub_25268E2F0();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2525F15E8(uint64_t a1)
{
  if (!qword_27F4E36D8)
  {
    sub_25268E310();
    sub_25268E8E0();
    sub_2525F0FDC(&qword_27F4DAF08, MEMORY[0x277D15558], MEMORY[0x277D15570]);
    v1 = sub_252692B10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4E36D8);
    }
  }
}

void sub_2525F1694()
{
  if (!qword_27F4E36E0)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4E36E0);
    }
  }
}

void sub_2525F16E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252693130();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2525F174C()
{
  result = qword_27F4E36F0;
  if (!qword_27F4E36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E36F0);
  }

  return result;
}

unint64_t sub_2525F17A4()
{
  result = qword_27F4E36F8;
  if (!qword_27F4E36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E36F8);
  }

  return result;
}

unint64_t sub_2525F17FC()
{
  result = qword_27F4E3700;
  if (!qword_27F4E3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3700);
  }

  return result;
}

uint64_t sub_2525F1850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_2526933B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69 || (sub_2526933B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C6F72746E6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_2526933B0();

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

unint64_t sub_2525F1978()
{
  result = qword_27F4E3708;
  if (!qword_27F4E3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3708);
  }

  return result;
}

uint64_t sub_2525F19CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F1A3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F1B28, 0, 0);
}

uint64_t sub_2525F1B28()
{
  v30 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_25237153C(v4, v1, &qword_27F4DB218, &unk_252696080);
  sub_2525F5B30(v3, v2, type metadata accessor for MatterControlSolver.Source);
  v6 = sub_252690580();
  v7 = sub_252692F00();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446722;
    v13 = sub_252693550();
    v15 = sub_2525BDA90(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_25237153C(v9, v10, &qword_27F4DB218, &unk_252696080);
    v16 = sub_252692C20();
    v18 = v17;
    sub_252372288(v9, &qword_27F4DB218, &unk_252696080);
    v19 = sub_2525BDA90(v16, v18, &v29);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    sub_2525F5B30(v28, v27, type metadata accessor for MatterControlSolver.Source);
    v20 = sub_252692C00();
    v22 = v21;
    sub_2525F5B98(v28, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_2525BDA90(v20, v22, &v29);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_252309000, v6, v7, "DeviceTypeSolver (%{public}s) does not support incremental set despite it being called\nstate: %s\nsource: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v12, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }

  else
  {
    v24 = v0[7];

    sub_2525F5B98(v24, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v9, &qword_27F4DB218, &unk_252696080);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2525F1E6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5BFC, 0, 0);
}

uint64_t sub_2525F1F58(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 25) = a2;
  *(v4 + 32) = a1;
  *(v4 + 56) = type metadata accessor for MatterControlSolver.Source(0);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F2000, 0, 0);
}

uint64_t sub_2525F2000()
{
  v26 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = sub_2526905A0();
  __swift_project_value_buffer(v3, qword_27F4E4B18);
  sub_2525F5B30(v2, v1, type metadata accessor for MatterControlSolver.Source);
  v4 = sub_252690580();
  v5 = sub_252692F00();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v24 = *(v0 + 64);
    v8 = *(v0 + 25);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446722;
    v12 = sub_252693550();
    v14 = sub_2525BDA90(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v0 + 16) = v9;
    *(v0 + 24) = v8 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8, &unk_252695A60);
    v15 = sub_252692C20();
    v17 = sub_2525BDA90(v15, v16, &v25);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    sub_2525F5B30(v7, v24, type metadata accessor for MatterControlSolver.Source);
    v18 = sub_252692C00();
    v20 = v19;
    sub_2525F5B98(v7, type metadata accessor for MatterControlSolver.Source);
    v21 = sub_2525BDA90(v18, v20, &v25);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_252309000, v4, v5, "DeviceTypeSolver (%{public}s) does not support picker set despite it being called\nstate: %s\nsource: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v11, -1, -1);
    MEMORY[0x2530A5A40](v10, -1, -1);
  }

  else
  {

    sub_2525F5B98(v7, type metadata accessor for MatterControlSolver.Source);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2525F22D4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 25) = a2;
  *(v4 + 32) = a1;
  *(v4 + 56) = type metadata accessor for MatterControlSolver.Source(0);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C08, 0, 0);
}

uint64_t sub_2525F237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for MatterControlSolver.Source(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F2424, 0, 0);
}

uint64_t sub_2525F2424()
{
  v33 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = sub_2526905A0();
  __swift_project_value_buffer(v7, qword_27F4E4B18);
  sub_2525F5B30(v2, v1, type metadata accessor for MatterControlSolver.Source);
  sub_2523E165C(v6, v5, v4, v3);
  v8 = sub_252690580();
  v9 = sub_252692F00();
  sub_2523E2E24(v6, v5, v4, v3);
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v30 = v0[13];
    v12 = v0[8];
    v13 = v0[9];
    v14 = v0[6];
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136446722;
    v17 = sub_252693550();
    v29 = v9;
    v19 = sub_2525BDA90(v17, v18, &v32);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v0[2] = v14;
    v0[3] = v15;
    v0[4] = v12;
    v0[5] = v13;
    sub_2523E165C(v14, v15, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    v20 = sub_252692C20();
    v22 = sub_2525BDA90(v20, v21, &v32);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    sub_2525F5B30(v11, v30, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_252692C00();
    v25 = v24;
    sub_2525F5B98(v11, type metadata accessor for MatterControlSolver.Source);
    v26 = sub_2525BDA90(v23, v25, &v32);

    *(v16 + 24) = v26;
    _os_log_impl(&dword_252309000, v8, v29, "DeviceTypeSolver (%{public}s) does not support picker button set despite it being called\nstate: %s\nsource: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v31, -1, -1);
    MEMORY[0x2530A5A40](v16, -1, -1);
  }

  else
  {

    sub_2525F5B98(v11, type metadata accessor for MatterControlSolver.Source);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_2525F273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for MatterControlSolver.Source(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C04, 0, 0);
}

uint64_t sub_2525F27E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F28D0, 0, 0);
}

uint64_t sub_2525F28D0()
{
  v30 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);
  sub_25237153C(v4, v1, &qword_27F4DB440, &qword_2526A1150);
  sub_2525F5B30(v3, v2, type metadata accessor for MatterControlSolver.Source);
  v6 = sub_252690580();
  v7 = sub_252692F00();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446722;
    v13 = sub_252693550();
    v15 = sub_2525BDA90(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_25237153C(v9, v10, &qword_27F4DB440, &qword_2526A1150);
    v16 = sub_252692C20();
    v18 = v17;
    sub_252372288(v9, &qword_27F4DB440, &qword_2526A1150);
    v19 = sub_2525BDA90(v16, v18, &v29);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    sub_2525F5B30(v28, v27, type metadata accessor for MatterControlSolver.Source);
    v20 = sub_252692C00();
    v22 = v21;
    sub_2525F5B98(v28, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_2525BDA90(v20, v22, &v29);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_252309000, v6, v7, "DeviceTypeSolver (%{public}s) does not support status button set despite it being called\nstate: %s\nsource: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v12, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }

  else
  {
    v24 = v0[7];

    sub_2525F5B98(v24, type metadata accessor for MatterControlSolver.Source);
    sub_252372288(v9, &qword_27F4DB440, &qword_2526A1150);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2525F2C14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MatterControlSolver.Source(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F5C00, 0, 0);
}

uint64_t sub_2525F2D00@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_25268F610();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_25268F890();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268E1B0();
  v12 = sub_25268E1A0();
  sub_25268E150();

  v13 = sub_25268F870();
  v14 = sub_25268E340();
  if (*(v13 + 16) && (v15 = sub_252372350(v14), (v16 & 1) != 0))
  {
    (*(v2 + 16))(v4, *(v13 + 56) + *(v2 + 72) * v15, v1);

    (*(v2 + 32))(v7, v4, v1);
    v17 = sub_25268F600();
    v18 = sub_25268E320();
    if (*(v17 + 16))
    {
      v19 = sub_252367690(v18);
      if (v20)
      {
        v21 = v19;
        v29 = *(v17 + 56);
        v22 = sub_25268EE60();
        v23 = *(v22 - 8);
        v24 = v23;
        v25 = v29 + *(v23 + 72) * v21;
        v26 = v30;
        (*(v23 + 16))(v30, v25, v22);
        (*(v2 + 8))(v7, v1);
        (*(v9 + 8))(v11, v8);

        return (*(v24 + 56))(v26, 0, 1, v22);
      }
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  v28 = sub_25268EE60();
  return (*(*(v28 - 8) + 56))(v30, 1, 1, v28);
}

uint64_t sub_2525F3094(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F4C64(a1, a2);
}

uint64_t sub_2525F3148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1E6C(a1, a2);
}

uint64_t sub_2525F3200(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_252401074;

  return sub_2525F22D4(v4, v5, a2);
}

uint64_t sub_2525F32C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F273C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F2C14(a1, a2);
}

uint64_t sub_2525F3454(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F557C(a1, a2);
}

uint64_t sub_2525F3508(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1E6C(a1, a2);
}

uint64_t sub_2525F35C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_252401074;

  return sub_2525F22D4(v4, v5, a2);
}

uint64_t sub_2525F3684(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F273C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3758(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F2C14(a1, a2);
}

uint64_t sub_2525F3810(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F1A3C(a1, a2);
}

uint64_t sub_2525F38C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2523E233C;

  return sub_2525F1F58(v4, v5, a2);
}

uint64_t sub_2525F398C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_252401074;

  return sub_2525F237C(v4, v5, v6, v7, a2);
}

uint64_t sub_2525F3A60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_252401074;

  return sub_2525F27E4(a1, a2);
}

ValueMetadata *sub_2525F3B18(uint64_t a1)
{
  v2 = sub_25268E310();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x277D15548], v2, v4);
  v8 = sub_2525F8418(v6, a1);
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8)
  {
    return &_s5OnOffVN_0;
  }

  (v7)(v6, *MEMORY[0x277D15550], v2);
  v11 = sub_2525F8418(v6, a1);
  v9(v6, v2);
  if (v11)
  {
    return &_s8IdentifyVN;
  }

  else
  {
    return 0;
  }
}

ValueMetadata *sub_2525F3C94(uint64_t a1)
{
  v2 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v2);
  v89 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = v81 - v5;
  MEMORY[0x28223BE20](v6);
  v84 = v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB500, &unk_2526A9100);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = (v81 - v9);
  v10 = sub_25268F130();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = v81 - v14;
  MEMORY[0x28223BE20](v15);
  v90 = v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v81 - v18;
  v20 = sub_25268E310();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v86 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v81 - v24;
  v26 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v92 = a1;
  sub_25237153C(a1 + v26, v19, &qword_27F4DB3A0, &qword_252695548);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_252372288(v19, &qword_27F4DB3A0, &qword_252695548);
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB518, &unk_2526A97C0);
    v27 = *(v21 + 80);
    v85 = v10;
    v28 = (v27 + 32) & ~v27;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694E90;
    (*(v21 + 16))(v29 + v28, v25, v20);
    v30 = sub_2525F3B18(v29);
    v81[1] = v31;
    v82 = v30;
    swift_setDeallocating();
    v32 = *(v21 + 8);
    v33 = v29 + v28;
    v10 = v85;
    v32(v33, v20);
    swift_deallocClassInstance();
    v32(v25, v20);
    result = v82;
    if (v82)
    {
      return result;
    }
  }

  v36 = v91;
  v35 = v92;
  sub_25237153C(v92 + *(v2 + 24), v91, &qword_27F4DB500, &unk_2526A9100);
  if ((*(v11 + 48))(v36, 1, v10) == 1)
  {
    sub_252372288(v36, &qword_27F4DB500, &unk_2526A9100);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v37 = sub_2526905A0();
    __swift_project_value_buffer(v37, qword_27F4E4B18);
    v38 = v89;
    sub_2525F5B30(v35, v89, type metadata accessor for MatterControlSolver.Source);
    v39 = sub_252690580();
    v40 = sub_252692EF0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v93 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_2525BDA90(0xD000000000000033, 0x80000002526B1D60, &v93);
      *(v41 + 12) = 2080;
      sub_2525F5B30(v38, v87, type metadata accessor for MatterControlSolver.Source);
      v43 = sub_252692C20();
      v45 = v44;
      sub_2525F5B98(v38, type metadata accessor for MatterControlSolver.Source);
      v46 = sub_2525BDA90(v43, v45, &v93);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_252309000, v39, v40, "%s Failed to find a DeviceTypeSolver because we don't have any device types! %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v42, -1, -1);
      MEMORY[0x2530A5A40](v41, -1, -1);
    }

    else
    {

      sub_2525F5B98(v38, type metadata accessor for MatterControlSolver.Source);
    }
  }

  else
  {
    v47 = v90;
    (*(v11 + 32))(v90, v36, v10);
    v48 = *(v11 + 16);
    v49 = v88;
    v48(v88, v47, v10);
    v50 = (*(v11 + 88))(v49, v10);
    v51 = *MEMORY[0x277D15EE0];
    v53 = *(v11 + 8);
    v52 = v11 + 8;
    v91 = v53;
    if (v50 == v51)
    {
      v91(v47, v10);
      return &_s11RobotVacuumVN;
    }

    v91(v49, v10);
    v54 = v86;
    (*(v21 + 104))(v86, *MEMORY[0x277D15548], v20);
    v55 = v52;
    v56 = v47;
    v57 = sub_25268F120();
    (*(v21 + 8))(v54, v20);
    if (v57)
    {
      v91(v56, v10);
      return &_s5OnOffVN_0;
    }

    v89 = v55;
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v58 = sub_2526905A0();
    __swift_project_value_buffer(v58, qword_27F4E4B18);
    v59 = v83;
    v60 = v90;
    v48(v83, v90, v10);
    v61 = v84;
    sub_2525F5B30(v92, v84, type metadata accessor for MatterControlSolver.Source);
    v62 = sub_252690580();
    v63 = sub_252692EF0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v85 = v10;
      v66 = v87;
      v67 = v91;
      v92 = v65;
      v93 = v65;
      *v64 = 136315650;
      *(v64 + 4) = sub_2525BDA90(0xD000000000000033, 0x80000002526B1D60, &v93);
      *(v64 + 12) = 2082;
      v68 = sub_25268F0F0();
      v69 = v59;
      v70 = v68;
      v72 = v71;
      v67(v69, v10);
      v73 = sub_2525BDA90(v70, v72, &v93);

      *(v64 + 14) = v73;
      *(v64 + 22) = 2080;
      sub_2525F5B30(v61, v66, type metadata accessor for MatterControlSolver.Source);
      v74 = sub_252692C20();
      v75 = v61;
      v77 = v76;
      sub_2525F5B98(v75, type metadata accessor for MatterControlSolver.Source);
      v78 = sub_2525BDA90(v74, v77, &v93);

      *(v64 + 24) = v78;
      _os_log_impl(&dword_252309000, v62, v63, "%s Failed to find a DeviceTypeSolver for device type (%{public}s). Source: %s", v64, 0x20u);
      v79 = v92;
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v79, -1, -1);
      MEMORY[0x2530A5A40](v64, -1, -1);

      v67(v90, v85);
    }

    else
    {

      sub_2525F5B98(v61, type metadata accessor for MatterControlSolver.Source);
      v80 = v91;
      v91(v59, v10);
      v80(v60, v10);
    }
  }

  return 0;
}

uint64_t sub_2525F471C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2525FD734(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4E2B78, &qword_2526A9000);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_25258BA78(v4, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v10 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252694E90;
    v13 = v12 + v11;
    sub_2525F5B30(v8, v13, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v14 = (v13 + v10[7]);
    v15 = (v13 + v10[8]);
    *v14 = 0;
    v14[1] = 0;
    *v15 = 0;
    v15[1] = 0;
    sub_2525F5B98(v8, type metadata accessor for Device.Control);
    return v12;
  }
}

uint64_t sub_2525F4968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3728, &qword_2526A98D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Device.Control(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_2525FE050(a1, v4, v7);
  sub_252372288(v4, &qword_27F4E3728, &qword_2526A98D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_252372288(v7, &qword_27F4E2B78, &qword_2526A9000);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_25258BA78(v7, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
    v14 = (type metadata accessor for Device.ControlGroup(0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_252694E90;
    v17 = v16 + v15;
    sub_2525F5B30(v11, v17, type metadata accessor for Device.Control);
    type metadata accessor for Device.ControlGroup.LayoutType(0);
    swift_storeEnumTagMultiPayload();
    v18 = (v17 + v14[7]);
    v19 = (v17 + v14[8]);
    *v18 = 0;
    v18[1] = 0;
    *v19 = 0;
    v19[1] = 0;
    sub_2525F5B98(v11, type metadata accessor for Device.Control);
    return v16;
  }
}

uint64_t sub_2525F4C64(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58, &qword_252696550);
  v2[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3730, &qword_2526A9908);
  v2[4] = swift_task_alloc();
  v4 = sub_25268F740();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = a1[4];

  return MEMORY[0x2822009F8](sub_2525F4DA4, 0, 0);
}

uint64_t sub_2525F4DA4()
{
  sub_252692E00();
  *(v0 + 80) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2525F4E38, v2, v1);
}

uint64_t sub_2525F4E38()
{
  v1 = *(v0 + 24);

  sub_2525F2D00(v1);

  return MEMORY[0x2822009F8](sub_2525F4EB0, 0, 0);
}

uint64_t sub_2525F4EB0()
{
  v1 = *(v0 + 24);
  v2 = sub_25268EE60();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  if (v4 == 1)
  {
    sub_252372288(v1, &qword_27F4DAD58, &qword_252696550);
    (*(v6 + 56))(v7, 1, 1, v5);
LABEL_4:
    sub_252372288(*(v0 + 32), &qword_27F4E3730, &qword_2526A9908);
LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  sub_25268ED30();
  (*(v3 + 8))(v1, v2);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 72);
  (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
  if (v10 == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    goto LABEL_5;
  }

  if (*(v0 + 64))
  {
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_2525F518C;

    return MEMORY[0x282170198]();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_2525F5330;

    return MEMORY[0x2821701A0]();
  }
}

uint64_t sub_2525F518C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2525F5444;
  }

  else
  {
    v2 = sub_2525F52A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F52A0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5330()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2525F54E0;
  }

  else
  {
    v2 = sub_2525F5BF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F5444()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F54E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F557C(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD58, &qword_252696550);
  v2[3] = swift_task_alloc();
  v4 = sub_25268EE60();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[6] = v5;
  v2[7] = v6;
  v2[8] = a1[4];

  return MEMORY[0x2822009F8](sub_2525F5684, 0, 0);
}

uint64_t sub_2525F5684()
{
  sub_252692E00();
  *(v0 + 72) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2525F5718, v2, v1);
}

uint64_t sub_2525F5718()
{
  v1 = *(v0 + 24);

  sub_2525F2D00(v1);

  return MEMORY[0x2822009F8](sub_2525F5790, 0, 0);
}

uint64_t sub_2525F5790()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_252372288(v3, &qword_27F4DAD58, &qword_252696550);
LABEL_9:

    v6 = *(v0 + 8);

    return v6();
  }

  v4 = *(v0 + 64);
  (*(v2 + 32))(*(v0 + 48), v3, v1);
  if (v4 == 1 || (*(v0 + 56) & 1) == 0)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_9;
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_2525F590C;

  return MEMORY[0x28216F818]();
}

uint64_t sub_2525F590C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2525F5AA8;
  }

  else
  {
    v2 = sub_2525F5A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F5A20()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5AA8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F5B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F5B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525F5C24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2523E233C;

  return sub_2525F6DE4(a1, a2);
}

uint64_t sub_2525F5CD8(char *a1, char *a2)
{
  v89 = a2;
  v90 = a1;
  v76 = type metadata accessor for Device.Control(0);
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v78 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B78, &qword_2526A9000);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v71 - v10;
  v88 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v88);
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398, &qword_252695540);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v71 - v13;
  v85 = sub_25268FC20();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Device.ControlModule(0);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v19 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryControlSolver.Context(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB390, &qword_252695538);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v71 - v31;
  sub_2525F7CC4(v89, v26, type metadata accessor for AccessoryControl.ValueDestination);
  v26[*(v24 + 28)] = 0;
  v33 = v90;
  sub_2523AFB64(v90, v26, v32);
  sub_2525F7D2C(v26, type metadata accessor for AccessoryControlSolver.Context);
  sub_25237153C(v32, v29, &qword_27F4DB390, &qword_252695538);
  if ((*(v20 + 48))(v29, 1, v19) != 1)
  {
    v89 = v32;
    sub_2525F7C5C(v29, v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    v35 = *(v86 + 28);
    v36 = type metadata accessor for AccessoryControlModule.Layout(0);
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v39 = v37 + 56;
    v38(&v18[v35], 1, 1, v36);
    v40 = MEMORY[0x277D84F90];
    *(v18 + 1) = 0;
    *(v18 + 2) = v40;
    *v18 = 0;
    sub_252372288(&v18[v35], &qword_27F4E2DC0, &unk_2526A8D70);
    sub_2525F7CC4(v22, &v18[v35], type metadata accessor for AccessoryControlModule.Layout.RVC);
    swift_storeEnumTagMultiPayload();
    v72 = v39;
    v73 = v38;
    v38(&v18[v35], 0, 1, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE30, &unk_2526A8D50);
    v41 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v84 = *(v84 + 72);
    v34 = swift_allocObject();
    v71 = xmmword_252694E90;
    *(v34 + 16) = xmmword_252694E90;
    sub_2525F7CC4(v18, v34 + v41, type metadata accessor for Device.ControlModule);
    v42 = v91;
    sub_25268F8D0();
    v43 = v87;
    v44 = v85;
    if ((*(v87 + 48))(v42, 1, v85) == 1)
    {
      sub_2525F7D2C(v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
      sub_252372288(v89, &qword_27F4DB390, &qword_252695538);
      v45 = &qword_27F4DB398;
      v46 = &qword_252695540;
      v47 = v91;
    }

    else
    {
      v48 = v43;
      v49 = *(v43 + 32);
      v50 = v83;
      v49(v83, v91, v44);
      if ((v33[*(v88 + 48)] & 1) == 0)
      {
        v91 = v22;
        v51 = sub_25268E310();
        v52 = v74;
        (*(*(v51 - 8) + 56))(v74, 1, 1, v51);
        v92[0] = 4;
        v53 = v81;
        sub_2525EA7E4(v52, v92, v81);
        sub_252372288(v52, &qword_27F4DB3A0, &qword_252695548);
        v54 = v82;
        sub_2523B9B34(v53, v82);
        v55 = v54;
        v56 = v75;
        sub_25237153C(v55, v75, &qword_27F4E2B78, &qword_2526A9000);
        v57 = v79;
        if ((*(v79 + 48))(v56, 1, v76) == 1)
        {
          sub_252372288(v56, &qword_27F4E2B78, &qword_2526A9000);
          v58 = MEMORY[0x277D84F90];
        }

        else
        {
          v59 = v56;
          v60 = v77;
          sub_2525F7C5C(v59, v77, type metadata accessor for Device.Control);
          sub_2525F7CC4(v60, v78, type metadata accessor for Device.Control);
          v58 = sub_252369B34(0, 1, 1, MEMORY[0x277D84F90]);
          v62 = v58[2];
          v61 = v58[3];
          if (v62 >= v61 >> 1)
          {
            v58 = sub_252369B34((v61 > 1), v62 + 1, 1, v58);
          }

          sub_2525F7D2C(v77, type metadata accessor for Device.Control);
          v58[2] = v62 + 1;
          sub_2525F7C5C(v78, v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v62, type metadata accessor for Device.Control);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAEE0, &unk_2526A8FF0);
        v63 = (type metadata accessor for Device.ControlGroup(0) - 8);
        v64 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = v71;
        v66 = (v65 + v64);
        *v66 = v58;
        type metadata accessor for Device.ControlGroup.LayoutType(0);
        swift_storeEnumTagMultiPayload();
        v67 = (v66 + v63[7]);
        v68 = (v66 + v63[8]);
        *v67 = 0;
        v67[1] = 0;
        *v68 = 0;
        v68[1] = 0;
        v69 = v80;
        *(v80 + 3) = 0;
        *(v69 + 4) = 0;
        v73(&v69[*(v86 + 28)], 1, 1, v36);
        *(v69 + 1) = 0;
        *(v69 + 2) = v65;
        *v69 = 0;
        v34 = sub_252369B5C(1, 2, 1, v34);
        sub_252372288(v82, &qword_27F4E2B78, &qword_2526A9000);
        sub_2525F7D2C(v81, type metadata accessor for MatterControlSolver.Source);
        (*(v87 + 8))(v83, v44);
        sub_2525F7D2C(v91, type metadata accessor for AccessoryControlModule.Layout.RVC);
        sub_252372288(v89, &qword_27F4DB390, &qword_252695538);
        *(v34 + 16) = 2;
        sub_2525F7C5C(v69, v34 + v41 + v84, type metadata accessor for Device.ControlModule);
        goto LABEL_14;
      }

      (*(v48 + 8))(v50, v44);
      sub_2525F7D2C(v22, type metadata accessor for AccessoryControlModule.Layout.RVC);
      v45 = &qword_27F4DB390;
      v46 = &qword_252695538;
      v47 = v89;
    }

    sub_252372288(v47, v45, v46);
LABEL_14:
    sub_2525F7D2C(v18, type metadata accessor for Device.ControlModule);
    return v34;
  }

  sub_252372288(v32, &qword_27F4DB390, &qword_252695538);
  sub_252372288(v29, &qword_27F4DB390, &qword_252695538);
  return 0;
}

uint64_t sub_2525F688C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398, &qword_252695540);
  v1[3] = swift_task_alloc();
  v2 = sub_25268FC20();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F6984, 0, 0);
}

uint64_t sub_2525F6984()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for MatterControlSolver.Source(0);
  sub_25268F8D0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_252372288(v0[3], &qword_27F4DB398, &qword_252695540);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v4 = sub_2526905A0();
    __swift_project_value_buffer(v4, qword_27F4E4B18);
    v5 = sub_252690580();
    v6 = sub_252692EF0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_252309000, v5, v6, "Failed to send RVC to dock. RVC cluster group not found in control source.", v7, 2u);
      MEMORY[0x2530A5A40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v10 = sub_2526905A0();
    __swift_project_value_buffer(v10, qword_27F4E4B18);
    v11 = sub_252690580();
    v12 = sub_252692F10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_252309000, v11, v12, "Sending RVC to dock", v13, 2u);
      MEMORY[0x2530A5A40](v13, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_2525F6C48;

    return MEMORY[0x282170668]();
  }
}

uint64_t sub_2525F6C48()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2525F6D5C;
  }

  else
  {
    v2 = sub_2525F5A20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2525F6D5C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2525F6DE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for MatterControlSolver.Source(0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2525F6E90, 0, 0);
}

uint64_t sub_2525F6E90()
{
  v44 = v0;
  v1 = v0[2];
  v2 = type metadata accessor for MatterControlSolver.SourcePath(0);
  if (*(v1 + *(v2 + 24)) == 4)
  {
    v3 = v2;
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v4 = v0[6];
    v5 = sub_2526905A0();
    __swift_project_value_buffer(v5, qword_27F4E4B18);
    sub_2525F7CC4(v1, v4, type metadata accessor for MatterControlSolver.Source);
    v6 = sub_252690580();
    v7 = sub_252692F10();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[6];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136446210;
      v12 = *(v9 + *(v3 + 24));
      if (v12 <= 3)
      {
        v36 = 0xE400000000000000;
        v37 = 1701736270;
        v38 = 0x80000002526AE100;
        v39 = 0xD00000000000001ELL;
        if (v12 != 2)
        {
          v39 = 0x61502F7472617453;
          v38 = 0xEB00000000657375;
        }

        if (*(v9 + *(v3 + 24)))
        {
          v37 = 0xD00000000000001CLL;
          v36 = 0x80000002526AE120;
        }

        if (*(v9 + *(v3 + 24)) <= 1u)
        {
          v19 = v37;
        }

        else
        {
          v19 = v39;
        }

        if (v12 <= 1)
        {
          v20 = v36;
        }

        else
        {
          v20 = v38;
        }
      }

      else
      {
        v13 = 0xED0000646C6F4820;
        v14 = 0x746E696F70746553;
        v15 = 0xEE00746573657250;
        v16 = 0x20746E6572727543;
        if (v12 != 7)
        {
          v16 = 0xD000000000000014;
          v15 = 0x80000002526AE0E0;
        }

        if (v12 != 6)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = 0xEE006B636F44206FLL;
        v18 = 0x54206E7275746552;
        if (v12 != 4)
        {
          v18 = 0x52207463656C6553;
          v17 = 0xEC000000736D6F6FLL;
        }

        if (*(v9 + *(v3 + 24)) <= 5u)
        {
          v19 = v18;
        }

        else
        {
          v19 = v14;
        }

        if (v12 <= 5)
        {
          v20 = v17;
        }

        else
        {
          v20 = v13;
        }
      }

      sub_2525F7D2C(v0[6], type metadata accessor for MatterControlSolver.Source);
      v40 = sub_2525BDA90(v19, v20, &v43);

      *(v10 + 4) = v40;
      _os_log_impl(&dword_252309000, v6, v7, "User pressed %{public}s button.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2530A5A40](v11, -1, -1);
      MEMORY[0x2530A5A40](v10, -1, -1);
    }

    else
    {

      sub_2525F7D2C(v9, type metadata accessor for MatterControlSolver.Source);
    }

    v41 = swift_task_alloc();
    v0[7] = v41;
    *v41 = v0;
    v41[1] = sub_2525F7430;
    v42 = v0[2];

    return sub_2525F688C(v42);
  }

  else
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v21 = v0[5];
    v22 = sub_2526905A0();
    __swift_project_value_buffer(v22, qword_27F4E4B18);
    sub_2525F7CC4(v1, v21, type metadata accessor for MatterControlSolver.Source);
    v23 = sub_252690580();
    v24 = sub_252692EF0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[5];
    if (v25)
    {
      v27 = v0[4];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      sub_2525F7CC4(v26, v27, type metadata accessor for MatterControlSolver.Source);
      v30 = sub_252692C20();
      v32 = v31;
      sub_2525F7D2C(v26, type metadata accessor for MatterControlSolver.Source);
      v33 = sub_2525BDA90(v30, v32, &v43);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_252309000, v23, v24, "Trying to set Binary state got an unexpected control type: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2530A5A40](v29, -1, -1);
      MEMORY[0x2530A5A40](v28, -1, -1);
    }

    else
    {

      sub_2525F7D2C(v26, type metadata accessor for MatterControlSolver.Source);
    }

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_2525F7430()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2525F7580(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v44 = type metadata accessor for AccessoryControlGroup.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v44);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryControl(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3A0, &qword_252695548);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for MatterControlSolver.Source(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB398, &qword_252695540);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = sub_25268FC20();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v9;
  v51 = a1;
  sub_25268F8D0();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_252372288(v20, &qword_27F4DB398, &qword_252695540);
    return MEMORY[0x277D84F90];
  }

  (*(v22 + 32))(v24, v20, v21);
  v25 = sub_25268E310();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v52 = 2;
  sub_2525EA7E4(v8, &v52, v11);
  sub_252372288(v8, &qword_27F4DB3A0, &qword_252695548);
  sub_2523B3570(v11, v24, v50, v17);
  sub_2525F7D2C(v11, type metadata accessor for MatterControlSolver.Source);
  sub_25237153C(v17, v14, &qword_27F4DB120, &qword_2526956F0);
  if ((*(v48 + 48))(v14, 1, v49) == 1)
  {
    sub_252372288(v14, &qword_27F4DB120, &qword_2526956F0);
    sub_252372288(v17, &qword_27F4DB120, &qword_2526956F0);
    (*(v22 + 8))(v24, v21);
    return MEMORY[0x277D84F90];
  }

  v27 = v46;
  sub_2525F7C5C(v14, v46, type metadata accessor for AccessoryControl);
  v28 = *MEMORY[0x277D15D98];
  v29 = sub_25268F0E0();
  v30 = v47;
  (*(*(v29 - 8) + 104))(v47, v28, v29);
  v31 = v44;
  *(v30 + *(v44 + 20)) = 0;
  *(v30 + *(v31 + 24)) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD98, &qword_252694EB8);
  v32 = (type metadata accessor for AccessoryControlGroup(0) - 8);
  v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
  v34 = swift_allocObject();
  v50 = v34;
  *(v34 + 16) = xmmword_252694E90;
  v35 = v34 + v33;
  sub_2525F7CC4(v27, v35, type metadata accessor for AccessoryControl.ElementIdentifier);
  v36 = v35 + v32[7];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADA0, &unk_252696070) + 48);
  sub_2525F7CC4(v27, v36, type metadata accessor for AccessoryControl);
  sub_2525F7CC4(v30, v36 + v37, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  type metadata accessor for AccessoryControlGroup.Layout(0);
  swift_storeEnumTagMultiPayload();
  v38 = (v51 + *(v45 + 20));
  v40 = *v38;
  v39 = v38[1];
  v41 = (v35 + v32[9]);
  v42 = (v35 + v32[8]);
  *v42 = v40;
  v42[1] = v39;
  *v41 = 0;
  v41[1] = 0;

  sub_2525F7D2C(v30, type metadata accessor for AccessoryControlGroup.DecorationControlConfig);
  sub_2525F7D2C(v27, type metadata accessor for AccessoryControl);
  sub_252372288(v17, &qword_27F4DB120, &qword_2526956F0);
  (*(v22 + 8))(v24, v21);
  return v50;
}

uint64_t sub_2525F7C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F7CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525F7D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2525F7E5C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v23 - v15;
  v17 = *(a3 + 16);
  if (v17)
  {
    v29 = MEMORY[0x277D84F90];
    v24 = a5;
    (a5)(0, v17, 0, v14);
    v18 = v29;
    v19 = *(a6(0) - 8);
    v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    while (1)
    {
      v27(v20);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v29 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v24(v21 > 1, v22 + 1, 1);
        v18 = v29;
      }

      *(v18 + 16) = v22 + 1;
      sub_2525FD6B0(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v26);
      v20 += v25;
      if (!--v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2525F80D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for Device.Control(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25237060C(0, v10, 0);
    v11 = v20;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a3 + v17;
    v13 = *(v7 + 72);
    while (1)
    {
      v18(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25237060C((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_2525FD6B0(v9, v11 + v17 + v15 * v13, type metadata accessor for Device.Control);
      v12 += v13;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

BOOL sub_2525F82E0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_2525F8310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_2525FD5A0(a4, a5, a6);
  }

  while ((sub_252692B70() & 1) == 0);
  return v10 != v11;
}

BOOL sub_2525F8460(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_2525F8530@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

void sub_2525F8704(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = (a2 + 56);
    while (1)
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v14 = *(v8 - 3);
      v15 = v10;
      v16 = v9;

      v11 = a1(&v14);
      v12 = v15;
      v13 = v16;
      if (v4)
      {

        return;
      }

      if (v11)
      {
        break;
      }

      v8 += 4;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    *a3 = v14;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
  }

  else
  {
LABEL_6:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_2525F87E0(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11, a2);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2525F890C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v13;
    v24 = a6;
    v18 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    while (1)
    {
      sub_2525FD5E8(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_2525FD650(v16, a4);
      }

      if (v20)
      {
        break;
      }

      sub_2525FD650(v16, a4);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v24;
        goto LABEL_10;
      }
    }

    a6 = v24;
    sub_2525FD6B0(v16, v24, v25);
    v21 = 0;
LABEL_10:
    v13 = v23;
  }

  else
  {
    v21 = 1;
  }

  return (*(v12 + 56))(a6, v21, 1, v13, v14);
}

void sub_2525F8AA4(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v27 = a3;
  v37 = sub_25268F6F0();
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = v8;
  v28 = (v8 + 8);
  v29 = v8 + 16;
  v34 = a2;

  v15 = 0;
  v16 = v30;
  if (v13)
  {
    while (1)
    {
      v35 = v4;
      v17 = v15;
LABEL_9:
      v18 = v33;
      v19 = v37;
      (*(v33 + 16))(v16, *(v34 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v37);
      v20 = *(v18 + 32);
      v21 = v36;
      v20(v36, v16, v19);
      v22 = v35;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v28)(v36, v37);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v28)(v36, v37);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v27;
    v20(v27, v36, v37);
    v25 = v26;
    v24 = 0;
LABEL_14:
    (*(v33 + 56))(v25, v24, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v24 = 1;
        v25 = v27;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t StaticRVCClusterGroup.canChangeCleaningMode.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268FAE0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268FBD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FA30();
  v11 = sub_25268FBC0();
  (*(v8 + 8))(v10, v7);
  if (v11 & 1) != 0 || (sub_25268FB30() & 1) != 0 || (sub_25268FB60(), v12 = sub_25268FAC0(), (*(v21 + 8))(v6, v4), (v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738, &qword_2526A9988);
    v13 = *(v1 + 72);
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25269FCC0;
    v16 = v15 + v14;
    v17 = *(v1 + 104);
    v17(v16, *MEMORY[0x277D16858], v0);
    v17(v16 + v13, *MEMORY[0x277D16840], v0);
    v17(v16 + 2 * v13, *MEMORY[0x277D16860], v0);
    v17(v16 + 3 * v13, *MEMORY[0x277D16848], v0);
    sub_25268FB70();
    LOBYTE(v13) = sub_2525F8310(v3, v15, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0], MEMORY[0x277D168A8]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v1 + 8))(v3, v0);
    v18 = v13 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t StaticRVCClusterGroup.shouldShowReturnToDock.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FB70();
  v4 = (*(v1 + 88))(v3, v0);
  v6 = v4 == *MEMORY[0x277D16880] || v4 == *MEMORY[0x277D16888] || v4 == *MEMORY[0x277D16878];
  v7 = v6;
  if (v6)
  {
    return v7;
  }

  v8 = v4 == *MEMORY[0x277D16868] || v4 == *MEMORY[0x277D16850];
  v9 = v8 || v4 == *MEMORY[0x277D16898];
  v10 = v9 || v4 == *MEMORY[0x277D16870];
  v11 = v10 || v4 == *MEMORY[0x277D16858];
  v12 = v11 || v4 == *MEMORY[0x277D16840];
  v13 = v12 || v4 == *MEMORY[0x277D16860];
  v14 = v13 || v4 == *MEMORY[0x277D16848];
  if (v14 || v4 == *MEMORY[0x277D16890])
  {
    return v7;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.canChangeServiceAreas.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438, &qword_252695758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_25268FBD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FA30();
  v11 = sub_25268FBC0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    goto LABEL_2;
  }

  sub_25268FA40();
  v18 = sub_25268E4F0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_252372288(v6, &qword_27F4DB438, &qword_252695758);
LABEL_6:
    v17 = 0;
    return v17 & 1;
  }

  v20 = sub_25268E480();
  (*(v19 + 8))(v6, v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_2:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738, &qword_2526A9988);
  v12 = *(v1 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25269FCC0;
  v15 = v14 + v13;
  v16 = *(v1 + 104);
  v16(v15, *MEMORY[0x277D16858], v0);
  v16(v15 + v12, *MEMORY[0x277D16840], v0);
  v16(v15 + 2 * v12, *MEMORY[0x277D16860], v0);
  v16(v15 + 3 * v12, *MEMORY[0x277D16848], v0);
  sub_25268FB70();
  LOBYTE(v12) = sub_2525F8310(v3, v14, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0], MEMORY[0x277D168A8]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v1 + 8))(v3, v0);
  v17 = v12 ^ 1;
  return v17 & 1;
}

uint64_t ServiceArea.pickerButtonSelectedRoomOptions.getter(uint64_t a1)
{
  v2 = sub_25268E440();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v7[2] = v1;
  sub_2525F7E5C(sub_2523C3688, v7, v3, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, sub_252370024, MEMORY[0x277D155B8], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  v5 = v4;

  return v5;
}

uint64_t StaticRVCClusterGroup.isCleaningCurrentArea.getter()
{
  v1 = sub_25268E4A0();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x28223BE20](v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490, &qword_252695770);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v6;
  v7 = sub_25268E4D0();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460, &qword_252695760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_25268E3C0();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB438, &qword_252695758);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_25268E4F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25268FB50();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  sub_25268FB70();
  v30 = (*(v21 + 88))(v29, v20);
  v31 = *MEMORY[0x277D16880];
  if (v30 == v31)
  {
    goto LABEL_2;
  }

  v32 = v30;
  if (v30 == *MEMORY[0x277D16888])
  {
    return 2;
  }

  if (v30 == *MEMORY[0x277D16878])
  {
LABEL_2:
    v62 = v0;
    sub_25268FA40();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_252372288(v16, &qword_27F4DB438, &qword_252695758);
      return 2;
    }

LABEL_16:
    v34 = v74;
    (*(v18 + 32))();
    if ((sub_25268E370() & 1) == 0)
    {
      (*(v18 + 8))(v34, v17);
      return 2;
    }

    v60 = v17;
    v61 = v18;
    v35 = sub_25268E410();
    if (!v35)
    {
      (*(v61 + 8))(v34, v60);
      return 2;
    }

    v36 = v35;
    sub_25268E380();
    v37 = v34;
    v39 = v72;
    v38 = v73;
    if ((*(v72 + 48))(v11, 1, v73) == 1)
    {
      (*(v61 + 8))(v37, v60);

      sub_252372288(v11, &qword_27F4DB460, &qword_252695760);
      return 0;
    }

    v40 = *(v39 + 32);
    v41 = v71;
    v40(v71, v11, v38);
    if (sub_2525F8310(v41, v36, MEMORY[0x277D155B8], &qword_27F4E3748, MEMORY[0x277D155B8], MEMORY[0x277D155C0]))
    {
    }

    else
    {
      v42 = *(v36 + 16);

      if (v42)
      {
        (*(v61 + 8))(v74, v60);
        (*(v72 + 8))(v41, v73);
        return 0;
      }
    }

    sub_25268FB70();
    (*(v21 + 104))(v23, v31, v20);
    v43 = sub_25268FB40();
    v44 = *(v21 + 8);
    v44(v23, v20);
    v44(v26, v20);
    if ((v43 & 1) == 0)
    {
      (*(v61 + 8))(v74, v60);
      (*(v72 + 8))(v41, v73);
      return 1;
    }

    v45 = v74;
    v46 = sub_25268E430();
    v47 = sub_25268E4E0();
    if (v47)
    {
      v48 = v47;
      MEMORY[0x28223BE20](v47);
      *(&v59 - 2) = v41;
      v49 = v68;
      sub_2525F8530(sub_2525FD718, v48, MEMORY[0x277D15600], v68);

      v50 = v69;
      v51 = v70;
      if ((*(v69 + 48))(v49, 1, v70) != 1)
      {
        v53 = v63;
        (*(v50 + 32))(v63, v49, v51);
        v54 = v64;
        sub_25268E4C0();
        v56 = v65;
        v55 = v66;
        v57 = v67;
        (*(v66 + 104))(v65, *MEMORY[0x277D155E8], v67);
        sub_2525FD5A0(&qword_27F4DB4E8, MEMORY[0x277D155F0], MEMORY[0x277D155F8]);
        sub_252692D40();
        sub_252692D40();
        v58 = *(v55 + 8);
        v58(v56, v57);
        v58(v54, v57);
        (*(v50 + 8))(v53, v51);
        (*(v61 + 8))(v74, v60);
        v52 = v76 == v75;
        goto LABEL_36;
      }

      (*(v61 + 8))(v74, v60);
    }

    else
    {
      (*(v61 + 8))(v45, v60);
      v49 = v68;
      (*(v69 + 56))(v68, 1, 1, v70);
    }

    v52 = v46 ^ 1;
    sub_252372288(v49, &qword_27F4DB490, &qword_252695770);
LABEL_36:
    (*(v72 + 8))(v41, v73);
    return v52 & 1;
  }

  result = 2;
  if (v32 != *MEMORY[0x277D16868] && v32 != *MEMORY[0x277D16850] && v32 != *MEMORY[0x277D16898] && v32 != *MEMORY[0x277D16870] && v32 != *MEMORY[0x277D16858] && v32 != *MEMORY[0x277D16840] && v32 != *MEMORY[0x277D16860] && v32 != *MEMORY[0x277D16848] && v32 != *MEMORY[0x277D16890])
  {
    sub_2526933A0();
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.cleaningCompleted.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_25268FB70();
  (*(v1 + 104))(v3, *MEMORY[0x277D16850], v0);
  v7 = sub_25268FB40();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t StaticRVCClusterGroup.currentTitle.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-v5];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  sub_25268FB70();
  v10 = *(v1 + 104);
  v16 = *MEMORY[0x277D16850];
  v10(v6);
  v11 = sub_25268FB40();
  v12 = *(v1 + 8);
  v12(v6, v0);
  v12(v9, v0);
  if (v11)
  {
    return sub_252692C40();
  }

  sub_25268FB70();
  v13 = (*(v1 + 88))(v3, v0);
  if (v13 == *MEMORY[0x277D16880])
  {
    goto LABEL_3;
  }

  if (v13 == *MEMORY[0x277D16888])
  {
    return sub_252692C40();
  }

  if (v13 == *MEMORY[0x277D16878])
  {
LABEL_3:
    StaticRVCClusterGroup.isCleaningCurrentArea.getter();
    return sub_252692C40();
  }

  if (v13 == *MEMORY[0x277D16868] || v13 == v16 || v13 == *MEMORY[0x277D16898] || v13 == *MEMORY[0x277D16870] || v13 == *MEMORY[0x277D16858] || v13 == *MEMORY[0x277D16840] || v13 == *MEMORY[0x277D16860] || v13 == *MEMORY[0x277D16848] || v13 == *MEMORY[0x277D16890])
  {
    return sub_252692C40();
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t ServiceArea.pickerButtonMapOptions.getter()
{
  v35 = sub_25268E470();
  v0 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v27 - v3;
  v4 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25268E420();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v38 = MEMORY[0x277D84F90];
      v10 = v7;
      sub_252370024(0, v9, 0);
      v8 = v38;
      v12 = *(v0 + 16);
      v11 = v0 + 16;
      v13 = v10 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v29 = *(v11 + 56);
      v30 = v12;
      v31 = v11;
      v27 = v10;
      v28 = (v11 - 8);
      do
      {
        v37 = v8;
        v15 = v35;
        v14 = v36;
        v16 = v30;
        v30(v36, v13, v35);
        v17 = v34;
        v16(v34, v14, v15);
        *v6 = sub_25268E450();
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        swift_storeEnumTagMultiPayload();
        v18 = sub_25268E460();
        v20 = v19;
        v21 = *v28;
        (*v28)(v17, v15);
        v21(v14, v15);
        v22 = v33;
        v23 = (v6 + *(v33 + 20));
        *v23 = v18;
        v23[1] = v20;
        v8 = v37;
        *(v6 + *(v22 + 24)) = 2;
        v38 = v8;
        v25 = *(v8 + 16);
        v24 = *(v8 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_252370024((v24 > 1), v25 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v25 + 1;
        sub_2525FD6B0(v6, v8 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
        v13 += v29;
        --v9;
      }

      while (v9);
    }
  }

  return v8;
}

uint64_t ServiceArea.pickerButtonRoomOptions.getter(uint64_t a1)
{
  v2 = sub_25268E3E0();
  v7 = v1;
  sub_2525F7E5C(sub_2523C3984, &v6, v2, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option, sub_252370024, MEMORY[0x277D155B8], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  v4 = v3;

  return v4;
}

void *ServiceArea.allRoomOptions(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8, &qword_252695778);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_25268E470();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25237153C(a1, v5, &qword_27F4DB4A8, &qword_252695778);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_252372288(v5, &qword_27F4DB4A8, &qword_252695778);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_25268E3D0();
    MEMORY[0x28223BE20](v11);
    *&v13[-16] = v1;
    v12 = sub_252365DB8(sub_2523C3AA0, &v13[-32], v11);

    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t ServiceArea.allRoomsSelected.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A8, &qword_252695778);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_25268E470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25268E440();
  if (result)
  {
    if (*(result + 16))
    {
      v8 = result;
      sub_25268E3F0();
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_252372288(v2, &qword_27F4DB4A8, &qword_252695778);
        v9 = *(sub_25268E3E0() + 16);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v10 = sub_25268E3D0();
        (*(v4 + 8))(v6, v3);
        v9 = *(v10 + 16);
      }

      v11 = *(v8 + 16);

      return v9 == v11;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

void ServiceArea.nowCleaningArea.getter(uint64_t a2@<X8>)
{
  v3 = sub_25268E440();
  if (v3)
  {
    v4 = v3;
    MEMORY[0x28223BE20](v3);
    sub_2525F8530(sub_2523C3A64, v4, MEMORY[0x277D155B8], a2);
  }

  else
  {
    v5 = sub_25268E3C0();
    v6 = *(*(v5 - 8) + 56);

    v6(a2, 1, 1, v5);
  }
}

BOOL StaticRVCClusterGroup.canChangeRunMode.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268FAE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_25268FB60();
  sub_25268FAB0();
  v11 = MEMORY[0x2530A1640](v10, v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738, &qword_2526A9988);
    v13 = *(v1 + 72);
    v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25269FCC0;
    v16 = v15 + v14;
    v17 = *(v1 + 104);
    v17(v16, *MEMORY[0x277D16858], v0);
    v17(v16 + v13, *MEMORY[0x277D16840], v0);
    v17(v16 + 2 * v13, *MEMORY[0x277D16860], v0);
    v17(v16 + 3 * v13, *MEMORY[0x277D16848], v0);
    sub_25268FB70();
    v18 = sub_2525F8310(v3, v15, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0], MEMORY[0x277D168A8]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v1 + 8))(v3, v0);
    return !v18;
  }

  else
  {
    return 0;
  }
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.init(serviceMap:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = sub_25268E450();
  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  swift_storeEnumTagMultiPayload();
  v4 = sub_25268E460();
  v6 = v5;
  v7 = sub_25268E470();
  (*(*(v7 - 8) + 8))(a1, v7);
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  v9 = (a2 + *(result + 20));
  *v9 = v4;
  v9[1] = v6;
  *(a2 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_2525FB2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v50);
  v56 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25268E4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740, &qword_2526A9990);
  MEMORY[0x28223BE20](v46);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v45 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v52 = &v45 - v14;
  v55 = sub_25268E3C0();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490, &qword_252695770);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  v26 = sub_25268E4E0();
  if (v26)
  {
    v27 = v26;
    v47 = v12;
    MEMORY[0x28223BE20](v26);
    *(&v45 - 2) = a1;
    v28 = v57;
    sub_2525F8530(sub_2525FD718, v27, MEMORY[0x277D15600], v25);
    v57 = v28;

    v12 = v47;
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  (*(v53 + 16))(v16, a1, v55);
  sub_25237153C(v25, v22, &qword_27F4DB490, &qword_252695770);
  sub_25237153C(v22, v19, &qword_27F4DB490, &qword_252695770);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_252372288(v19, &qword_27F4DB490, &qword_252695770);
    v29 = 1;
  }

  else
  {
    v30 = v48;
    (*(v5 + 32))(v48, v19, v4);
    sub_25268E4C0();
    (*(v5 + 8))(v30, v4);
    v29 = 0;
  }

  v31 = sub_25268E4A0();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v12, v29, 1, v31);
  v33 = v12;
  v34 = v52;
  sub_2525FD530(v33, v52);
  *v56 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v50 = sub_25268E390();
  v48 = v35;
  v36 = v54;
  sub_25237153C(v34, v54, &qword_27F4E3740, &qword_2526A9990);
  v37 = v36;
  v38 = v49;
  sub_25237153C(v37, v49, &qword_27F4E3740, &qword_2526A9990);
  if ((*(v32 + 48))(v38, 1, v31) == 1)
  {
    v39 = 4;
LABEL_17:
    sub_252372288(v54, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v52, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v22, &qword_27F4DB490, &qword_252695770);
    (*(v53 + 8))(v16, v55);
    sub_252372288(v25, &qword_27F4DB490, &qword_252695770);
    v41 = v51;
    sub_2525FD6B0(v56, v51, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v43 = (v41 + *(result + 20));
    v44 = v48;
    *v43 = v50;
    v43[1] = v44;
    *(v41 + *(result + 24)) = v39;
    return result;
  }

  v40 = (*(v32 + 88))(v38, v31);
  if (v40 == *MEMORY[0x277D155D0])
  {
    v39 = 2;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E8])
  {
    v39 = 1;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155D8])
  {
    v39 = 3;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E0])
  {
    v39 = 0;
    goto LABEL_17;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t AccessoryControl.PickerButtonViewConfig.Option.init(serviceArea:progress:isCurrentArea:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v44 = a4;
  v45 = a1;
  v41 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490, &qword_252695770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_25268E4D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740, &qword_2526A9990);
  MEMORY[0x28223BE20](v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v42 = a2;
  sub_25237153C(a2, v8, &qword_27F4DB490, &qword_252695770);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252372288(v8, &qword_27F4DB490, &qword_252695770);
    if (v40)
    {
      v24 = *MEMORY[0x277D155E8];
      v25 = sub_25268E4A0();
      v26 = *(v25 - 8);
      (*(v26 + 104))(v20, v24, v25);
      (*(v26 + 56))(v20, 0, 1, v25);
    }

    else
    {
      v25 = sub_25268E4A0();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_25268E4C0();
    (*(v10 + 8))(v12, v9);
    v25 = sub_25268E4A0();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
  }

  v27 = v43;
  sub_2525FD530(v20, v23);
  *v27 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v28 = sub_25268E390();
  v30 = v29;
  sub_25237153C(v23, v17, &qword_27F4E3740, &qword_2526A9990);
  sub_25237153C(v17, v14, &qword_27F4E3740, &qword_2526A9990);
  sub_25268E4A0();
  v31 = *(v25 - 8);
  if ((*(v31 + 48))(v14, 1, v25) == 1)
  {
    v32 = 4;
LABEL_16:
    sub_252372288(v42, &qword_27F4DB490, &qword_252695770);
    v34 = sub_25268E3C0();
    (*(*(v34 - 8) + 8))(v45, v34);
    sub_252372288(v17, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v23, &qword_27F4E3740, &qword_2526A9990);
    v35 = v44;
    sub_2525FD6B0(v27, v44, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v37 = (v35 + *(result + 20));
    *v37 = v28;
    v37[1] = v30;
    *(v35 + *(result + 24)) = v32;
    return result;
  }

  v33 = (*(v31 + 88))(v14, v25);
  if (v33 == *MEMORY[0x277D155D0])
  {
    v32 = 2;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155E8])
  {
    v32 = 1;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155D8])
  {
    v32 = 3;
    goto LABEL_16;
  }

  if (v33 == *MEMORY[0x277D155E0])
  {
    v32 = 0;
    goto LABEL_16;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_2525FBFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25268E4D0();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740, &qword_2526A9990);
  MEMORY[0x28223BE20](v59);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v10);
  v62 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v70 = &v58 - v13;
  v71 = sub_25268E3C0();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460, &qword_252695760);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490, &qword_252695770);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v68 = &v58 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = sub_25268E4E0();
  v27 = a1;
  v69 = v25;
  v61 = v4;
  if (v26)
  {
    v28 = v26;
    MEMORY[0x28223BE20](v26);
    *(&v58 - 2) = a1;
    v29 = v72;
    sub_2525F8530(sub_2525FD718, v28, MEMORY[0x277D15600], v25);
    v72 = v29;
  }

  else
  {
    (*(v67 + 56))(v25, 1, 1, v4);
  }

  v30 = sub_25268E3A0();
  sub_25268E380();
  v31 = v73;
  v32 = v71;
  if ((*(v73 + 48))(v17, 1, v71) == 1)
  {
    sub_252372288(v17, &qword_27F4DB460, &qword_252695760);
    v33 = 0;
  }

  else
  {
    v34 = sub_25268E3A0();
    (*(v73 + 8))(v17, v32);
    v35 = v30 == v34;
    v31 = v73;
    v33 = v35;
  }

  v36 = v67;
  (*(v31 + 16))(v74, v27, v32);
  v37 = v68;
  sub_25237153C(v69, v68, &qword_27F4DB490, &qword_252695770);
  sub_25237153C(v37, v20, &qword_27F4DB490, &qword_252695770);
  v38 = v61;
  v39 = v9;
  if ((*(v36 + 48))(v20, 1, v61) == 1)
  {
    sub_252372288(v20, &qword_27F4DB490, &qword_252695770);
    v40 = v62;
    if (v33)
    {
      v41 = *MEMORY[0x277D155E8];
      v42 = sub_25268E4A0();
      v43 = *(v42 - 8);
      (*(v43 + 104))(v40, v41, v42);
      (*(v43 + 56))(v40, 0, 1, v42);
    }

    else
    {
      v42 = sub_25268E4A0();
      (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    }
  }

  else
  {
    v44 = v60;
    (*(v36 + 32))(v60, v20, v38);
    v40 = v62;
    sub_25268E4C0();
    (*(v36 + 8))(v44, v38);
    v42 = sub_25268E4A0();
    (*(*(v42 - 8) + 56))(v40, 0, 1, v42);
  }

  v45 = v65;
  v46 = v40;
  v47 = v70;
  sub_2525FD530(v46, v70);
  *v45 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v48 = sub_25268E390();
  v67 = v49;
  sub_25237153C(v47, v39, &qword_27F4E3740, &qword_2526A9990);
  v50 = v63;
  sub_25237153C(v39, v63, &qword_27F4E3740, &qword_2526A9990);
  sub_25268E4A0();
  v51 = *(v42 - 8);
  if ((*(v51 + 48))(v50, 1, v42) == 1)
  {
    v52 = 4;
LABEL_24:
    sub_252372288(v39, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v70, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v68, &qword_27F4DB490, &qword_252695770);
    (*(v73 + 8))(v74, v71);
    sub_252372288(v69, &qword_27F4DB490, &qword_252695770);
    v54 = v66;
    sub_2525FD6B0(v45, v66, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v56 = (v54 + *(result + 20));
    v57 = v67;
    *v56 = v48;
    v56[1] = v57;
    *(v54 + *(result + 24)) = v52;
    return result;
  }

  v53 = (*(v51 + 88))(v50, v42);
  if (v53 == *MEMORY[0x277D155D0])
  {
    v52 = 2;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155E8])
  {
    v52 = 1;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155D8])
  {
    v52 = 3;
    goto LABEL_24;
  }

  if (v53 == *MEMORY[0x277D155E0])
  {
    v52 = 0;
    goto LABEL_24;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL sub_2525FC8AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB460, &qword_252695760);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_25268E3A0();
  sub_25268E380();
  v4 = sub_25268E3C0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_252372288(v2, &qword_27F4DB460, &qword_252695760);
    return 0;
  }

  else
  {
    v7 = sub_25268E3A0();
    (*(v5 + 8))(v2, v4);
    return v3 == v7;
  }
}

uint64_t sub_2525FC9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v51);
  v57 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25268E4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740, &qword_2526A9990);
  MEMORY[0x28223BE20](v47);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v46 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v53 = &v46 - v14;
  v56 = sub_25268E3C0();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB490, &qword_252695770);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v26 = sub_25268E4E0();
  if (v26)
  {
    v27 = v26;
    v48 = v12;
    MEMORY[0x28223BE20](v26);
    *(&v46 - 2) = a1;
    v28 = v58;
    sub_2525F8530(sub_2523C38D0, v27, MEMORY[0x277D15600], v25);
    v58 = v28;

    v12 = v48;
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  (*(v54 + 16))(v16, a1, v56);
  sub_25237153C(v25, v22, &qword_27F4DB490, &qword_252695770);
  sub_25237153C(v22, v19, &qword_27F4DB490, &qword_252695770);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_252372288(v19, &qword_27F4DB490, &qword_252695770);
    v29 = 1;
  }

  else
  {
    v30 = v49;
    (*(v5 + 32))(v49, v19, v4);
    sub_25268E4C0();
    (*(v5 + 8))(v30, v4);
    v29 = 0;
  }

  v31 = sub_25268E4A0();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v12, v29, 1, v31);
  v33 = v12;
  v34 = v53;
  sub_2525FD530(v33, v53);
  *v57 = sub_25268E3A0();
  swift_storeEnumTagMultiPayload();
  v51 = sub_25268E390();
  v49 = v35;
  v36 = v55;
  sub_25237153C(v34, v55, &qword_27F4E3740, &qword_2526A9990);
  v37 = v36;
  v38 = v50;
  sub_25237153C(v37, v50, &qword_27F4E3740, &qword_2526A9990);
  if ((*(v32 + 48))(v38, 1, v31) == 1)
  {
    v39 = 4;
LABEL_17:
    sub_252372288(v55, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v53, &qword_27F4E3740, &qword_2526A9990);
    sub_252372288(v22, &qword_27F4DB490, &qword_252695770);
    (*(v54 + 8))(v16, v56);
    sub_252372288(v25, &qword_27F4DB490, &qword_252695770);
    v41 = v52;
    sub_2525FD6B0(v57, v52, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    v42 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
    v43 = (v41 + *(v42 + 20));
    v44 = v49;
    *v43 = v51;
    v43[1] = v44;
    *(v41 + *(v42 + 24)) = v39;
    return (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  }

  v40 = (*(v32 + 88))(v38, v31);
  if (v40 == *MEMORY[0x277D155D0])
  {
    v39 = 2;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E8])
  {
    v39 = 1;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155D8])
  {
    v39 = 3;
    goto LABEL_17;
  }

  if (v40 == *MEMORY[0x277D155E0])
  {
    v39 = 0;
    goto LABEL_17;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.isCurrentlyCleaning.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25268FB70();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D16880])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277D16888])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277D16878])
  {
    return 1;
  }

  v6 = v4 == *MEMORY[0x277D16868] || v4 == *MEMORY[0x277D16850];
  v7 = v6 || v4 == *MEMORY[0x277D16898];
  v8 = v7 || v4 == *MEMORY[0x277D16870];
  v9 = v8 || v4 == *MEMORY[0x277D16858];
  v10 = v9 || v4 == *MEMORY[0x277D16840];
  v11 = v10 || v4 == *MEMORY[0x277D16860];
  v12 = v11 || v4 == *MEMORY[0x277D16848];
  if (v12 || v4 == *MEMORY[0x277D16890])
  {
    return 0;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL StaticRVCClusterGroup.isBusy.getter()
{
  v0 = sub_25268FB50();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3738, &qword_2526A9988);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25269FCC0;
  v8 = v7 + v6;
  v9 = *(v2 + 104);
  v9(v8, *MEMORY[0x277D16858], v0);
  v9(v8 + v5, *MEMORY[0x277D16840], v0);
  v9(v8 + 2 * v5, *MEMORY[0x277D16860], v0);
  v9(v8 + 3 * v5, *MEMORY[0x277D16848], v0);
  sub_25268FB70();
  v10 = sub_2525F8310(v4, v7, MEMORY[0x277D168A0], &qword_27F4E3750, MEMORY[0x277D168A0], MEMORY[0x277D168A8]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v2 + 8))(v4, v0);
  return v10;
}

uint64_t sub_2525FD530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3740, &qword_2526A9990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2525FD5A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2525FD5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FD650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525FD6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FD734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v76);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268E2E0();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v66 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  MEMORY[0x28223BE20](v72);
  v77 = (&v66 - v9);
  v10 = sub_25268F740();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268E310();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25268E8E0();
  v16 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v71 = type metadata accessor for MatterControlSolver.Source(0);
  v25 = *(v71 + 28);
  v83 = a1;
  v26 = *(a1 + v25);
  (*(v13 + 104))(v15, *MEMORY[0x277D15548], v12);
  if (*(v26 + 16) && (v27 = sub_2523674E8(v15), (v28 & 1) != 0))
  {
    v68 = v5;
    v70 = a2;
    v29 = *(v26 + 56) + *(v16 + 72) * v27;
    v30 = *(v16 + 16);
    v31 = v82;
    v30(v21, v29, v82);
    (*(v13 + 8))(v15, v12);
    (*(v16 + 32))(v24, v21, v31);
    v69 = v24;
    v30(v18, v24, v31);
    if ((*(v16 + 88))(v18, v31) == *MEMORY[0x277D15A70])
    {
      (*(v16 + 96))(v18, v31);
      (*(v80 + 32))(v79, v18, v81);
      v67 = sub_25268F720();
      v32 = v73;
      sub_25268E250();
      v33 = sub_25268E2D0();
      v71 = v34;
      v35 = *(v75 + 8);
      v75 = v16;
      v36 = v68;
      v35(v32, v68);
      v37 = v74;
      sub_25268E250();
      v38 = type metadata accessor for IconDescriptor(0);
      v39 = v77;
      sub_25268E2C0();
      v35(v37, v36);
      v40 = v71;
      *v39 = v33;
      v39[1] = v40;
      *(v39 + *(v38 + 24)) = 0;
      sub_25268E260();
      v71 = sub_25268E2D0();
      v66 = v41;
      v35(v32, v36);
      sub_25268E260();
      v42 = (v39 + *(v72 + 28));
      sub_25268E2C0();
      v35(v37, v36);
      v43 = v66;
      *v42 = v71;
      v42[1] = v43;
      *(v42 + *(v38 + 24)) = 0;
      v44 = v78;
      sub_25237153C(v39, v78, &qword_27F4DAD88, &unk_2526956E0);
      v45 = sub_252692340();
      v46 = v76;
      type metadata accessor for ControlTextModifier.Config(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AccessoryControl.StatusProvider(0);
      swift_storeEnumTagMultiPayload();
      v47 = v44 + v46[7];
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = -1;
      v48 = v44 + v46[8];
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = -1;
      v49 = v46[12];
      *(v44 + v46[5]) = v45;
      v50 = (v44 + v46[10]);
      *v50 = 0;
      v50[1] = 0xE000000000000000;
      sub_252376DA8(*v47, *(v47 + 8), *(v47 + 16), *(v47 + 24), *(v47 + 32));
      *v47 = 0u;
      *(v47 + 16) = 0u;
      *(v47 + 32) = -1;
      sub_252376DA8(*v48, *(v48 + 8), *(v48 + 16), *(v48 + 24), *(v48 + 32));
      *v48 = 0u;
      *(v48 + 16) = 0u;
      *(v48 + 32) = -1;
      *(v44 + v49) = 0;
      *(v44 + v46[9]) = 0;
      v51 = v70;
      v52 = v83;
      MatterControlSolver.SourcePath.uuid.getter(v70);
      v53 = type metadata accessor for Device.Control(0);
      v54 = v51 + v53[5];
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
      *v54 = v67 & 1;
      *(v54 + 8) = xmmword_2526952D0;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0;
      sub_2525FE774(v44, v54 + v55, type metadata accessor for AccessoryControl.BinaryViewConfig);
      type metadata accessor for Device.Control.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_2525FE774(v52, v51 + v53[6], type metadata accessor for MatterControlSolver.Source);
      type metadata accessor for Device.Control.Source(0);
      swift_storeEnumTagMultiPayload();
      v56 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
      v58 = v57;
      sub_252372288(v39, &qword_27F4DAD88, &unk_2526956E0);
      (*(v80 + 8))(v79, v81);
      (*(v75 + 8))(v69, v82);
      v59 = (v51 + v53[8]);
      v60 = v53[10];
      *(v51 + v60) = 16;
      *(v51 + v53[7]) = 0;
      *v59 = v56;
      v59[1] = v58;
      *(v51 + v53[9]) = 1027;
      *(v51 + v60) = 16;
      *(v51 + v53[11]) = 1;
      sub_2525FE7DC(v44, type metadata accessor for AccessoryControl.BinaryViewConfig);
      return (*(*(v53 - 1) + 56))(v51, 0, 1, v53);
    }

    v65 = *(v16 + 8);
    v65(v69, v31);
    v65(v18, v31);
    v62 = type metadata accessor for Device.Control(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v70;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v62 = type metadata accessor for Device.Control(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = a2;
  }

  return v63(v64, 1, 1, v62);
}

uint64_t sub_2525FE050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3728, &qword_2526A98D8);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v57 - v7;
  v8 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (a1 + *(type metadata accessor for MatterControlSolver.Source(0) + 40));
  if (v23[1])
  {
    v24 = type metadata accessor for Device.Control(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a3, 1, 1, v24);
  }

  else
  {
    v58 = v10;
    v63 = v13;
    v64 = v16;
    v65 = a1;
    v60 = *v23 != 0;
    v27 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28)];
    v28 = type metadata accessor for IconDescriptor(0);
    v61 = a2;
    v62 = v11;
    v29 = v28;
    v30 = *(v28 + 20);
    v31 = *MEMORY[0x277D16578];
    v32 = sub_25268F910();
    (*(*(v32 - 8) + 104))(&v27[v30], v31, v32);
    *v27 = 0xD00000000000001DLL;
    *(v27 + 1) = 0x80000002526B1DE0;
    v27[*(v29 + 24)] = 0;
    sub_2525FE774(v27, v22, type metadata accessor for IconDescriptor);
    v33 = sub_252692330();
    v59 = sub_252692C40();
    v35 = v34;
    type metadata accessor for ControlTextModifier.Config(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AccessoryControl.StatusProvider(0);
    swift_storeEnumTagMultiPayload();
    v36 = &v22[v20[7]];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v36[32] = -1;
    v37 = &v22[v20[8]];
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v37[32] = -1;
    v38 = v20[12];
    *&v22[v20[5]] = v33;
    v39 = &v22[v20[10]];
    *v39 = 0;
    *(v39 + 1) = 0xE000000000000000;
    sub_252376DA8(*v36, *(v36 + 1), *(v36 + 2), *(v36 + 3), v36[32]);
    *v36 = v59;
    *(v36 + 1) = v35;
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v36[32] = 0;
    sub_252376DA8(*v37, *(v37 + 1), *(v37 + 2), *(v37 + 3), v37[32]);
    *v37 = 0u;
    *(v37 + 1) = 0u;
    v37[32] = -1;
    *&v22[v38] = 0;
    v22[v20[9]] = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
    *v19 = v60;
    *(v19 + 8) = xmmword_2526952D0;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    sub_2525FE774(v22, &v19[v40], type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    v41 = v68;
    sub_25237153C(v61, v68, &qword_27F4E3728, &qword_2526A98D8);
    if ((*(v66 + 48))(v41, 1, v67) == 1)
    {
      sub_252372288(v41, &qword_27F4E3728, &qword_2526A98D8);
      v42 = v63;
      sub_2525FE774(v19, v63, type metadata accessor for Device.Control.Kind);
    }

    else
    {
      v43 = v58;
      sub_2525FE83C(v41, v58, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
      v45 = swift_allocBox();
      v47 = v46;
      v48 = *(v44 + 48);
      sub_2525FE774(v19, v46, type metadata accessor for Device.Control.Kind);
      sub_2525FE83C(v43, v47 + v48, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v42 = v63;
      *v63 = v45;
      swift_storeEnumTagMultiPayload();
    }

    v49 = v64;
    sub_2525FE83C(v42, v64, type metadata accessor for Device.Control.Kind);
    v50 = v65;
    MatterControlSolver.SourcePath.uuid.getter(a3);
    v51 = type metadata accessor for Device.Control(0);
    sub_2525FE774(v49, a3 + v51[5], type metadata accessor for Device.Control.Kind);
    sub_2525FE774(v50, a3 + v51[6], type metadata accessor for MatterControlSolver.Source);
    type metadata accessor for Device.Control.Source(0);
    swift_storeEnumTagMultiPayload();
    v52 = MatterControlSolver.Source.controlAccessibilityIdentifier.getter();
    v54 = v53;
    sub_2525FE7DC(v49, type metadata accessor for Device.Control.Kind);
    sub_2525FE7DC(v19, type metadata accessor for Device.Control.Kind);
    v55 = (a3 + v51[8]);
    v56 = v51[10];
    *(a3 + v56) = 16;
    *(a3 + v51[7]) = 0;
    *v55 = v52;
    v55[1] = v54;
    *(a3 + v51[9]) = 1028;
    *(a3 + v56) = 3;
    *(a3 + v51[11]) = 1;
    sub_2525FE7DC(v22, type metadata accessor for AccessoryControl.BinaryViewConfig);
    return (*(*(v51 - 1) + 56))(a3, 0, 1, v51);
  }
}

uint64_t sub_2525FE774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FE7DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2525FE83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2525FE8EC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v2[22] = type metadata accessor for MatterControlSolver.Source(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = type metadata accessor for Device.Control(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for Device.Control.Kind(0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  sub_252692E00();
  v2[34] = sub_252692DF0();
  v4 = sub_252692DE0();
  v2[35] = v4;
  v2[36] = v3;

  return MEMORY[0x2822009F8](sub_2525FEAB4, v4, v3);
}

uint64_t sub_2525FEAB4()
{
  v91 = v0;
  v1 = sub_2525F3C94(*(v0 + 168));
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    sub_252600E60(*(v0 + 160) + *(*(v0 + 200) + 20), *(v0 + 264), type metadata accessor for Device.Control.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v74 = *(v0 + 264);
          v75 = *(v0 + 232);
          *(v0 + 156) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
          sub_2523714D4(v74, v75, &qword_27F4DB218, &unk_252696080);
          v88 = (v4[5] + *v4[5]);
          v76 = swift_task_alloc();
          *(v0 + 352) = v76;
          *v76 = v0;
          v76[1] = sub_2525FF9E0;
          v39 = *(v0 + 168);
          v40 = *(v0 + 232);
          v41 = v3;
          v42 = v4;
          v43 = v88;

          return v43(v40, v39, v41, v42);
        }

        if (EnumCaseMultiPayload == 2)
        {
          v6 = *(v0 + 264);
          v7 = *v6;
          v8 = *(v6 + 8);
          *(v0 + 528) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);
          *(v0 + 144) = v7;
          v9 = v0 + 144;
          *(v0 + 152) = v8;
          v85 = (v4[6] + *v4[6]);
          v10 = swift_task_alloc();
          *(v0 + 368) = v10;
          *v10 = v0;
          v11 = sub_2525FFC2C;
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      v30 = *(v0 + 264);
      v31 = *v30;
      *(v0 + 296) = *v30;
      v32 = v30[1];
      *(v0 + 304) = v32;
      v33 = v30[2];
      *(v0 + 312) = v33;
      v34 = v30[3];
      *(v0 + 320) = v34;
      v35 = v30[4];
      *(v0 + 328) = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      *&v37 = v31;
      *(&v37 + 1) = v32;
      *&v38 = v33;
      *(&v38 + 1) = v34;
      *(v0 + 140) = *(v36 + 48);
      *(v0 + 72) = v38;
      *(v0 + 56) = v37;
      v27 = v0 + 56;
      *(v0 + 88) = v35;
      v86 = (v4[4] + *v4[4]);
      v28 = swift_task_alloc();
      *(v0 + 336) = v28;
      *v28 = v0;
      v29 = sub_2525FF7C8;
LABEL_18:
      v28[1] = v29;
      v39 = *(v0 + 168);
      v40 = v27;
      v41 = v3;
      v42 = v4;
      v43 = v86;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v44 = *(v0 + 264);
      v45 = *v44;
      *(v0 + 384) = *v44;
      v46 = v44[1];
      *(v0 + 392) = v46;
      v47 = v44[2];
      *(v0 + 400) = v47;
      v48 = v44[3];
      *(v0 + 408) = v48;

      *&v49 = v45;
      *(&v49 + 1) = v46;
      *&v50 = v47;
      *(&v50 + 1) = v48;
      *(v0 + 112) = v50;
      *(v0 + 96) = v49;
      v87 = (v4[7] + *v4[7]);
      v51 = swift_task_alloc();
      *(v0 + 416) = v51;
      *v51 = v0;
      v51[1] = sub_2525FFE34;
      v39 = *(v0 + 168);
      v40 = v0 + 96;
      v41 = v3;
      v42 = v4;
      v43 = v87;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload == 8)
    {
      v77 = *(v0 + 264);
      v78 = *(v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

      sub_2523714D4(v77, v78, &qword_27F4DB440, &qword_2526A1150);
      v89 = (v4[8] + *v4[8]);
      v79 = swift_task_alloc();
      *(v0 + 432) = v79;
      *v79 = v0;
      v79[1] = sub_252600028;
      v39 = *(v0 + 168);
      v40 = *(v0 + 224);
      v41 = v3;
      v42 = v4;
      v43 = v89;

      return v43(v40, v39, v41, v42);
    }

    if (EnumCaseMultiPayload != 9)
    {
LABEL_24:

      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 216);
      v53 = *(v0 + 192);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = sub_2526905A0();
      __swift_project_value_buffer(v56, qword_27F4E4B18);
      sub_252600E60(v55, v52, type metadata accessor for Device.Control);
      sub_252600E60(v54, v53, type metadata accessor for MatterControlSolver.Source);
      v57 = sub_252690580();
      v58 = sub_252692EF0();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 216);
      if (v59)
      {
        v61 = *(v0 + 208);
        v63 = *(v0 + 184);
        v62 = *(v0 + 192);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90 = v65;
        *v64 = 136315394;
        sub_252600E60(v60, v61, type metadata accessor for Device.Control);
        v66 = sub_252692C20();
        v68 = v67;
        sub_252600EC8(v60, type metadata accessor for Device.Control);
        v69 = sub_2525BDA90(v66, v68, &v90);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        sub_252600E60(v62, v63, type metadata accessor for MatterControlSolver.Source);
        v70 = sub_252692C20();
        v72 = v71;
        sub_252600EC8(v62, type metadata accessor for MatterControlSolver.Source);
        v73 = sub_2525BDA90(v70, v72, &v90);

        *(v64 + 14) = v73;
        _os_log_impl(&dword_252309000, v57, v58, "Unknown control kind when trying to set new value. control: %s source: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A5A40](v65, -1, -1);
        MEMORY[0x2530A5A40](v64, -1, -1);
      }

      else
      {
        v80 = *(v0 + 192);

        sub_252600EC8(v80, type metadata accessor for MatterControlSolver.Source);
        sub_252600EC8(v60, type metadata accessor for Device.Control);
      }

      sub_252600EC8(*(v0 + 264), type metadata accessor for Device.Control.Kind);
      goto LABEL_8;
    }

    v14 = *(v0 + 256);
    v15 = *(v0 + 248);
    *(v0 + 448) = **(v0 + 264);
    v16 = swift_projectBox();
    sub_252600E60(v16, v14, type metadata accessor for Device.Control.Kind);
    sub_252600E60(v14, v15, type metadata accessor for Device.Control.Kind);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 2)
    {
      v81 = *(v0 + 248);
      v82 = *v81;
      v83 = *(v81 + 8);
      *(v0 + 536) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);
      *(v0 + 128) = v82;
      v9 = v0 + 128;
      *(v0 + 136) = v83;
      v85 = (v4[6] + *v4[6]);
      v10 = swift_task_alloc();
      *(v0 + 512) = v10;
      *v10 = v0;
      v11 = sub_252600498;
LABEL_37:
      v10[1] = v11;
      v39 = *(v0 + 168);
      v40 = v9;
      v41 = v3;
      v42 = v4;
      v43 = v85;

      return v43(v40, v39, v41, v42);
    }

    if (!v17)
    {
      v18 = *(v0 + 248);
      v19 = *v18;
      *(v0 + 456) = *v18;
      v20 = v18[1];
      *(v0 + 464) = v20;
      v21 = v18[2];
      *(v0 + 472) = v21;
      v22 = v18[3];
      *(v0 + 480) = v22;
      v23 = v18[4];
      *(v0 + 488) = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      *(v0 + 532) = *(v24 + 48);
      *(v0 + 32) = v26;
      *(v0 + 16) = v25;
      v27 = v0 + 16;
      *(v0 + 48) = v23;
      v86 = (v4[4] + *v4[4]);
      v28 = swift_task_alloc();
      *(v0 + 496) = v28;
      *v28 = v0;
      v29 = sub_252600254;
      goto LABEL_18;
    }

    v84 = *(v0 + 248);
    sub_252600EC8(*(v0 + 256), type metadata accessor for Device.Control.Kind);

    sub_252600EC8(v84, type metadata accessor for Device.Control.Kind);
  }

LABEL_8:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2525FF7C8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2526006CC;
  }

  else
  {
    sub_252393F68(v2[37], v2[38], v2[39], v2[40], v2[41]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2525FF8EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FF8EC()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2525FF9E0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_2526007EC;
  }

  else
  {
    v5 = sub_2525FFB1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2525FFB1C()
{
  v1 = *(v0 + 156);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);

  sub_252372288(v3, &qword_27F4DB218, &unk_252696080);
  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.IncrementalConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2525FFC2C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_252600904;
  }

  else
  {
    v5 = sub_2525FFD40;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FFD40()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2525FFE34()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600A00;
  }

  else
  {
    sub_2523E2E24(v2[48], v2[49], v2[50], v2[51]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_2525FFF54;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2525FFF54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252600028()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_252600AF8;
  }

  else
  {
    v5 = sub_252600164;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_252600164()
{
  v1 = *(v0 + 224);

  sub_252372288(v1, &qword_27F4DB440, &qword_2526A1150);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252600254()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600BF0;
  }

  else
  {
    sub_252393F68(v2[57], v2[58], v2[59], v2[60], v2[61]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_252600378;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_252600378()
{
  v1 = *(v0 + 532);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600498()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_252600D38;
  }

  else
  {
    v5 = sub_2526005AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2526005AC()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2526006CC()
{
  v1 = *(v0 + 140);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = *(v0 + 264);

  sub_252393F68(v6, v5, v4, v2, v3);
  sub_252600EC8(v7 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2526007EC()
{
  v1 = *(v0 + 156);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);

  sub_252372288(v3, &qword_27F4DB218, &unk_252696080);
  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.IncrementalConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600904()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 264);

  sub_252600EC8(v2 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252600A00()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];

  sub_2523E2E24(v4, v3, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252600AF8()
{
  v1 = *(v0 + 224);

  sub_252372288(v1, &qword_27F4DB440, &qword_2526A1150);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252600BF0()
{
  v1 = *(v0 + 532);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 456);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);

  sub_252600EC8(v7, type metadata accessor for Device.Control.Kind);
  sub_252393F68(v6, v5, v4, v2, v3);
  sub_252600EC8(v8 + v1, type metadata accessor for AccessoryControl.BinaryViewConfig);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252600D38()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  sub_252600EC8(v2, type metadata accessor for Device.Control.Kind);
  sub_252600EC8(v3 + v1, type metadata accessor for AccessoryControl.PickerViewConfig);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252600E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252600EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252600F28(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v77);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v76);
  v80 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v79 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = v58 - v13;
  MEMORY[0x28223BE20](v14);
  v74 = v58 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3760, &qword_2526A9AB8);
  MEMORY[0x28223BE20](v65);
  v64 = v58 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8, &qword_2526A8040);
  MEMORY[0x28223BE20](v63);
  v62 = v58 - v17;
  v18 = *a1;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2B90, &unk_2526A7CE0);
  v20 = sub_25260AD60(&qword_27F4E3150, &qword_27F4E2A48, &qword_2526A7A20);
  sub_252692700();
  v21 = v84;
  v90 = a4;
  v91 = v84;
  v88 = a2;
  v89 = a3;
  sub_252692710();
  if (v21 != v84)
  {
    v72 = v9 + 80;
    v81 = MEMORY[0x277D84F90];
    v78 = v9;
    v71 = v9 + 16;
    v61 = a4;
    v60 = a3;
    v59 = a2;
    v58[1] = v19;
    v58[0] = v20;
    while (1)
    {
      v84 = v21;
      v88 = a2;
      v89 = a3;
      v90 = a4;
      v23 = v62;
      sub_252692730();
      v88 = a2;
      v89 = a3;
      v90 = a4;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v23, &qword_27F4E2DD8, &qword_2526A8040);
      v24 = v88;
      v25 = v89;
      v26 = v90;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3768, &qword_2526A9AE0);
      v28 = sub_25260AD60(&qword_27F4E3770, &qword_27F4E3778, &qword_2526A9AE8);
      sub_252692700();
      v88 = v24;
      v89 = v25;
      v90 = v26;
      sub_252692710();
      v29 = v87;
      if (v87 != v84)
      {
        break;
      }

LABEL_5:

      a2 = v59;
      a3 = v60;
      v88 = v59;
      v89 = v60;
      a4 = v61;
      v90 = v61;
      sub_252692710();
      v21 = v91;
      if (v91 == v84)
      {
        return v81;
      }
    }

    v30 = v78;
    v70 = v24;
    v69 = v25;
    v68 = v26;
    v67 = v27;
    v66 = v28;
    while (1)
    {
      v84 = v29;
      v88 = v24;
      v89 = v25;
      v90 = v26;
      v31 = v64;
      sub_252692730();
      v88 = v24;
      v89 = v25;
      v90 = v26;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v31, &qword_27F4E3760, &qword_2526A9AB8);
      v33 = v88;
      v32 = v89;
      v34 = v90;
      v84 = v88;
      v85 = v89;
      v86 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3780, &qword_2526A9B18);
      sub_25260AD60(&qword_27F4E3788, &qword_27F4E3790, &qword_2526A9B20);
      sub_252692700();
      v84 = v83;
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692710();
      v35 = v84;
      if (v84 != v83)
      {
        break;
      }

LABEL_8:

      v24 = v70;
      v25 = v69;
      v88 = v70;
      v89 = v69;
      v26 = v68;
      v90 = v68;
      sub_252692710();
      v29 = v87;
      if (v87 == v84)
      {
        goto LABEL_5;
      }
    }

    while (1)
    {
      v83 = v35;
      v88 = v33;
      v89 = v32;
      v90 = v34;
      v36 = v74;
      sub_252692730();
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692720();
      sub_2523714D4(v36, v82, &qword_27F4DAE18, &qword_2526A7F90);
      v37 = v80;
      MEMORY[0x2530A4210](v75);
      sub_25260B694(v37 + *(v76 + 20), v30, type metadata accessor for Device.Control.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);

            sub_252372288(v30, &qword_27F4DB258, &unk_252696090);
            v40 = 0x74736F6D72656874;
            v39 = 0xEA00000000007461;
            if (v18 > 4)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
            v40 = 0x6E41736D72616C61;
            v39 = 0xEF7372656D695464;
            if (v18 > 4)
            {
LABEL_30:
              v44 = 0x7542737574617473;
              if (v18 != 8)
              {
                v44 = 0x79616C7265766FLL;
              }

              v45 = 0xE700000000000000;
              if (v18 == 8)
              {
                v45 = 0xEC0000006E6F7474;
              }

              if (v18 == 7)
              {
                v44 = 0x754272656B636970;
                v45 = 0xEC0000006E6F7474;
              }

              v46 = 0x74736F6D72656874;
              if (v18 != 5)
              {
                v46 = 0x6E41736D72616C61;
              }

              v47 = 0xEF7372656D695464;
              if (v18 == 5)
              {
                v47 = 0xEA00000000007461;
              }

              if (v18 <= 6)
              {
                v48 = v46;
              }

              else
              {
                v48 = v44;
              }

              if (v18 <= 6)
              {
                v49 = v47;
              }

              else
              {
                v49 = v45;
              }

              if (v40 != v48)
              {
                goto LABEL_77;
              }

              goto LABEL_75;
            }
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 7)
          {
            sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
            v41 = 0x72656B636970;
LABEL_49:
            v40 = v41 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
            v39 = 0xEC0000006E6F7474;
            if (v18 > 4)
            {
              goto LABEL_30;
            }

            goto LABEL_50;
          }

          if (EnumCaseMultiPayload == 8)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

            sub_252372288(v30, &qword_27F4DB440, &qword_2526A1150);
            v41 = 0x737574617473;
            goto LABEL_49;
          }

          sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
          v39 = 0xE700000000000000;
          v40 = 0x79616C7265766FLL;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
          sub_25260B634(v30 + *(v53 + 48), type metadata accessor for AccessoryControl.IncrementalConfig);
          sub_252372288(v30, &qword_27F4DB218, &unk_252696080);
          v40 = 0x6E656D6572636E69;
          v39 = 0xEB000000006C6174;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_252393F68(*v30, v30[1], v30[2], v30[3], v30[4]);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
          sub_25260B634(v30 + *(v42 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
          v39 = 0xE600000000000000;
          v40 = 0x7972616E6962;
          if (v18 > 4)
          {
            goto LABEL_30;
          }
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
        sub_25260B634(v30 + *(v43 + 48), type metadata accessor for AccessoryControl.PickerViewConfig);
        v39 = 0xE600000000000000;
        v40 = 0x72656B636970;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);

        sub_252372288(v30, &qword_27F4DB2A0, &qword_25269E4A0);
        v39 = 0xE500000000000000;
        v40 = 0x726F6C6F63;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_25260B634(v30, type metadata accessor for Device.Control.Kind);
        v40 = 0x616C50616964656DLL;
        v39 = 0xED00006B63616279;
        if (v18 > 4)
        {
          goto LABEL_30;
        }
      }

LABEL_50:
      if (v18 <= 1)
      {
        if (v18)
        {
          v49 = 0xEB000000006C6174;
          if (v40 != 0x6E656D6572636E69)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v49 = 0xE600000000000000;
          if (v40 != 0x7972616E6962)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v50 = 0x616C50616964656DLL;
        if (v18 == 3)
        {
          v50 = 0x726F6C6F63;
        }

        v51 = 0xED00006B63616279;
        if (v18 == 3)
        {
          v51 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v52 = 0x72656B636970;
        }

        else
        {
          v52 = v50;
        }

        if (v18 == 2)
        {
          v49 = 0xE600000000000000;
        }

        else
        {
          v49 = v51;
        }

        if (v40 != v52)
        {
          goto LABEL_77;
        }
      }

LABEL_75:
      if (v39 == v49)
      {

LABEL_78:
        sub_25237153C(v82, v79, &qword_27F4DAE18, &qword_2526A7F90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2523698F4(0, v81[2] + 1, 1, v81);
        }

        v56 = v81[2];
        v55 = v81[3];
        if (v56 >= v55 >> 1)
        {
          v81 = sub_2523698F4((v55 > 1), v56 + 1, 1, v81);
        }

        sub_25260B634(v80, type metadata accessor for Device.Control);
        sub_252372288(v82, &qword_27F4DAE18, &qword_2526A7F90);
        v57 = v81;
        v81[2] = v56 + 1;
        sub_2523714D4(v79, v57 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v56, &qword_27F4DAE18, &qword_2526A7F90);
        goto LABEL_12;
      }

LABEL_77:
      v54 = sub_2526933B0();

      if (v54)
      {
        goto LABEL_78;
      }

      sub_25260B634(v80, type metadata accessor for Device.Control);
      sub_252372288(v82, &qword_27F4DAE18, &qword_2526A7F90);
LABEL_12:
      v88 = v33;
      v89 = v32;
      v90 = v34;
      sub_252692710();
      v35 = v84;
      v30 = v78;
      if (v84 == v83)
      {
        goto LABEL_8;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252601CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v30 = a3;
  v31 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v29 = a2;
  swift_weakInit();
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = v32;
  *(v14 + 2) = a3;
  *(v14 + 3) = v15;
  v16 = v33;
  *(v14 + 4) = v12;
  *(v14 + 5) = v16;
  (*(v8 + 32))(&v14[v13], v10, AssociatedTypeWitness);

  swift_unknownObjectRetain();
  v17 = v34;
  v18 = DeviceDataModel.controlsBinding(for:errorHandler:onSet:)(v31, sub_25260AF9C, v11, sub_25260AFA4, v14, v30, v15);
  v20 = v19;
  v22 = v21;

  if (!v17)
  {
    v23 = (v29 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
    v25 = *(v29 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules);
    v24 = *(v29 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 8);
    v26 = *(v29 + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_controlModules + 16);
    *v23 = v18;
    v23[1] = v20;
    v23[2] = v22;

    sub_25260B03C(v25, v24, v26);
  }

  return v18;
}

uint64_t DeviceError.hashValue.getter()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_252601FF0()
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_25260205C(uint64_t a1)
{
  sub_252693460();
  MEMORY[0x2530A4FE0](0);
  return sub_2526934C0();
}

uint64_t sub_2526020AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = *(type metadata accessor for Device.Control(0) - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v8 = sub_25268DA10();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_252692E00();
  v6[21] = sub_252692DF0();
  v10 = sub_252692DE0();
  v6[22] = v10;
  v6[23] = v9;

  return MEMORY[0x2822009F8](sub_2526022B8, v10, v9);
}

uint64_t sub_2526022B8()
{
  v69 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 224) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  v7 = 0x27F4DA000uLL;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v9 >= (((1 << *(v0 + 224)) + 63) >> 6))
    {

      v52 = *(v0 + 8);

      return v52();
    }

    v8 = *(v0 + 16);
    v5 = *(v8 + 8 * v9 + 64);
    ++v6;
    if (v5)
    {
      v6 = v9;
      while (1)
      {
        *(v0 + 192) = v5;
        *(v0 + 200) = v6;
        v10 = *(v0 + 152);
        v11 = *(v0 + 160);
        v12 = *(v0 + 136);
        v13 = *(v0 + 144);
        v14 = *(v0 + 24);
        (*(v13 + 16))(v11, *(v8 + 48) + *(v13 + 72) * (__clz(__rbit64(v5)) | (v6 << 6)), v12);
        (*(v13 + 32))(v10, v11, v12);
        if (!*(v14 + 16))
        {
          goto LABEL_7;
        }

        v15 = sub_252367880(*(v0 + 152));
        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = *(v0 + 16);
        v18 = *(*(v0 + 96) + 72);
        sub_25260B694(*(*(v0 + 24) + 56) + v18 * v15, *(v0 + 128), type metadata accessor for Device.Control);
        if (!*(v17 + 16))
        {
          break;
        }

        v19 = sub_252367880(*(v0 + 152));
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(v0 + 120);
        v22 = *(v0 + 128);
        v23 = *(v0 + 112);
        sub_25260B694(*(*(v0 + 16) + 56) + v19 * v18, v23, type metadata accessor for Device.Control);
        sub_25260B5CC(v23, v21, type metadata accessor for Device.Control);
        if ((_s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(v22, v21) & 1) == 0)
        {
          goto LABEL_29;
        }

        if (*(v7 + 3024) != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 120);
        v25 = *(v0 + 104);
        v26 = *(v0 + 88);
        v27 = *(v0 + 64);
        v28 = *(v0 + 72);
        v29 = *(v0 + 32);
        v30 = sub_2526905A0();
        __swift_project_value_buffer(v30, qword_27F4E4B18);
        v62 = *(v28 + 16);
        v62(v26, v29, v27);
        sub_25260B694(v24, v25, type metadata accessor for Device.Control);
        v31 = sub_252690580();
        v32 = sub_252692ED0();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 152);
        v63 = *(v0 + 120);
        v64 = *(v0 + 128);
        v35 = *(v0 + 104);
        v36 = *(v0 + 88);
        v65 = (*(v0 + 144) + 8);
        v66 = *(v0 + 136);
        if (v33)
        {
          v60 = v32;
          v37 = *(v0 + 72);
          v38 = *(v0 + 80);
          v61 = *(v0 + 152);
          v39 = *(v0 + 64);
          v40 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v68 = v59;
          *v40 = 136446466;
          v62(v38, v36, v39);
          v41 = sub_252692C20();
          v43 = v42;
          (*(v37 + 8))(v36, v39);
          v44 = v41;
          v7 = 0x27F4DA000;
          v45 = sub_2525BDA90(v44, v43, &v68);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2082;
          sub_25260C914(&qword_27F4DB2B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v46 = sub_252693370();
          v48 = v47;
          sub_25260B634(v35, type metadata accessor for Device.Control);
          v49 = sub_2525BDA90(v46, v48, &v68);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_252309000, v31, v60, "Ignoring setting control because it's unchanged. deviceIdentifier: %{public}s newControl: %{public}s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A5A40](v59, -1, -1);
          MEMORY[0x2530A5A40](v40, -1, -1);

          sub_25260B634(v63, type metadata accessor for Device.Control);
          sub_25260B634(v64, type metadata accessor for Device.Control);
          (*v65)(v61, v66);
        }

        else
        {
          v50 = *(v0 + 64);
          v51 = *(v0 + 72);

          sub_25260B634(v35, type metadata accessor for Device.Control);
          (*(v51 + 8))(v36, v50);
          sub_25260B634(v63, type metadata accessor for Device.Control);
          sub_25260B634(v64, type metadata accessor for Device.Control);
          (*v65)(v34, v66);
        }

        v6 = *(v0 + 200);
        v5 = (*(v0 + 192) - 1) & *(v0 + 192);
        if (!v5)
        {
          goto LABEL_9;
        }

LABEL_8:
        v8 = *(v0 + 16);
      }

      sub_25260B634(*(v0 + 128), type metadata accessor for Device.Control);
LABEL_7:
      v5 &= v5 - 1;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
      if (!v5)
      {
        continue;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  v67 = (*(*(v0 + 48) + 40) + **(*(v0 + 48) + 40));
  v54 = swift_task_alloc();
  *(v0 + 208) = v54;
  *v54 = v0;
  v54[1] = sub_2526029AC;
  v55 = *(v0 + 120);
  v56 = *(v0 + 48);
  v57 = *(v0 + 32);
  v58 = *(v0 + 40);

  return v67(v55, v57, v58, v56);
}

uint64_t sub_2526029AC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_25260320C;
  }

  else
  {
    v5 = sub_252602AE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_252602AE8()
{
  v70 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_25260B634(*(v0 + 120), type metadata accessor for Device.Control);
  sub_25260B634(v4, type metadata accessor for Device.Control);
  (*(v2 + 8))(v1, v3);
  while (2)
  {
    v5 = *(v0 + 200);
    v6 = (*(v0 + 192) - 1) & *(v0 + 192);
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v8 >= (((1 << *(v0 + 224)) + 63) >> 6))
          {
            break;
          }

          v7 = *(v0 + 16);
          v6 = *(v7 + 8 * v8 + 64);
          ++v5;
          if (v6)
          {
            v5 = v8;
            goto LABEL_11;
          }
        }

        v51 = *(v0 + 8);

        return v51();
      }

      v7 = *(v0 + 16);
LABEL_11:
      *(v0 + 192) = v6;
      *(v0 + 200) = v5;
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 24);
      (*(v11 + 16))(v9, *(v7 + 48) + *(v11 + 72) * (__clz(__rbit64(v6)) | (v5 << 6)), v12);
      (*(v11 + 32))(v10, v9, v12);
      if (*(v13 + 16))
      {
        v14 = sub_252367880(*(v0 + 152));
        if (v15)
        {
          break;
        }
      }

LABEL_4:
      v6 &= v6 - 1;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    v16 = *(v0 + 16);
    v17 = *(*(v0 + 96) + 72);
    sub_25260B694(*(*(v0 + 24) + 56) + v17 * v14, *(v0 + 128), type metadata accessor for Device.Control);
    if (!*(v16 + 16) || (v18 = sub_252367880(*(v0 + 152)), (v19 & 1) == 0))
    {
      sub_25260B634(*(v0 + 128), type metadata accessor for Device.Control);
      goto LABEL_4;
    }

    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    sub_25260B694(*(*(v0 + 16) + 56) + v18 * v17, v22, type metadata accessor for Device.Control);
    sub_25260B5CC(v22, v21, type metadata accessor for Device.Control);
    if (_s22HomeAccessoryControlUI6DeviceV0C0V2eeoiySbAE_AEtFZ_0(v20, v21))
    {
      if (qword_27F4DABD0 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 120);
      v66 = *(v0 + 104);
      v24 = *(v0 + 88);
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      v27 = *(v0 + 32);
      v28 = sub_2526905A0();
      __swift_project_value_buffer(v28, qword_27F4E4B18);
      v29 = *(v25 + 16);
      v29(v24, v27, v26);
      sub_25260B694(v23, v66, type metadata accessor for Device.Control);
      v30 = sub_252690580();
      v31 = sub_252692ED0();
      v32 = os_log_type_enabled(v30, v31);
      v67 = *(v0 + 152);
      v33 = *(v0 + 136);
      v64 = *(v0 + 120);
      v65 = *(v0 + 128);
      v34 = *(v0 + 104);
      v35 = *(v0 + 88);
      v63 = (*(v0 + 144) + 8);
      if (v32)
      {
        v60 = *(v0 + 136);
        v58 = v29;
        v36 = *(v0 + 72);
        v37 = *(v0 + 80);
        v62 = v31;
        v38 = *(v0 + 64);
        v59 = *(v0 + 104);
        v39 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v69 = v61;
        *v39 = 136446466;
        v58(v37, v35, v38);
        v40 = sub_252692C20();
        v41 = v30;
        v43 = v42;
        (*(v36 + 8))(v35, v38);
        v44 = sub_2525BDA90(v40, v43, &v69);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2082;
        sub_25260C914(&qword_27F4DB2B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v45 = sub_252693370();
        v47 = v46;
        sub_25260B634(v59, type metadata accessor for Device.Control);
        v48 = sub_2525BDA90(v45, v47, &v69);

        *(v39 + 14) = v48;
        _os_log_impl(&dword_252309000, v41, v62, "Ignoring setting control because it's unchanged. deviceIdentifier: %{public}s newControl: %{public}s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A5A40](v61, -1, -1);
        MEMORY[0x2530A5A40](v39, -1, -1);

        sub_25260B634(v64, type metadata accessor for Device.Control);
        sub_25260B634(v65, type metadata accessor for Device.Control);
        (*v63)(v67, v60);
      }

      else
      {
        v49 = *(v0 + 64);
        v50 = *(v0 + 72);

        sub_25260B634(v34, type metadata accessor for Device.Control);
        (*(v50 + 8))(v35, v49);
        sub_25260B634(v64, type metadata accessor for Device.Control);
        sub_25260B634(v65, type metadata accessor for Device.Control);
        (*v63)(v67, v33);
      }

      continue;
    }

    break;
  }

LABEL_25:
  v68 = (*(*(v0 + 48) + 40) + **(*(v0 + 48) + 40));
  v53 = swift_task_alloc();
  *(v0 + 208) = v53;
  *v53 = v0;
  v53[1] = sub_2526029AC;
  v54 = *(v0 + 120);
  v55 = *(v0 + 48);
  v56 = *(v0 + 32);
  v57 = *(v0 + 40);

  return v68(v54, v56, v57, v55);
}

uint64_t sub_25260320C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  sub_25260B634(v5, type metadata accessor for Device.Control);
  sub_25260B634(v4, type metadata accessor for Device.Control);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t DeviceDataModel.controlsBinding(for:errorHandler:onSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a4;
  v41 = a2;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v34 - v16;
  v18 = *(a7 + 32);
  v40 = v7;
  result = v18(a1, a6, a7, v15);
  if (!v8)
  {
    v20 = result;
    v38 = 0;
    v35 = sub_252692E00();

    v21 = sub_252692DF0();
    v22 = a5;
    v36 = a5;
    v23 = v21;
    v24 = swift_allocObject();
    v37 = v24;
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v20;
    (*(v13 + 16))(v17, a1, AssociatedTypeWitness);
    swift_unknownObjectRetain();
    sub_25235E21C(v41, v42);
    sub_25235E21C(v44, v22);
    v35 = sub_252692DF0();
    v26 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = v35;
    *(v28 + 3) = MEMORY[0x277D85700];
    *(v28 + 4) = a6;
    *(v28 + 5) = a7;
    *(v28 + 6) = v20;
    v29 = AssociatedTypeWitness;
    *(v28 + 7) = v40;
    (*(v13 + 32))(&v28[v26], v17, v29);
    v30 = &v28[v27];
    v31 = v42;
    *v30 = v41;
    *(v30 + 1) = v31;
    v32 = &v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8];
    v33 = v36;
    *v32 = v44;
    *(v32 + 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2A48, &qword_2526A7A20);
    sub_2526926E0();
    return v43;
  }

  return result;
}

double sub_2526035DC@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double sub_2526035E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a7;
  v43 = a8;
  v48 = a5;
  v49 = a10;
  v52 = a12;
  v50 = a9;
  v51 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v41 - v20;
  v45 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v41 - v23;
  v47 = _s22HomeAccessoryControlUI6DeviceV0C6ModuleV18controlsDictionary4withSDy10Foundation4UUIDVAC0C0VGSayAEG_tFZ_0(*a1);
  v46 = _s22HomeAccessoryControlUI6DeviceV0C6ModuleV18controlsDictionary4withSDy10Foundation4UUIDVAC0C0VGSayAEG_tFZ_0(a4);
  v25 = sub_252692E30();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v18 + 16))(v21, a6, AssociatedTypeWitness);
  sub_252692E00();
  v26 = v48;
  swift_unknownObjectRetain();
  sub_25235E21C(a7, a8);
  v28 = v49;
  v27 = v50;
  sub_25235E21C(v50, v49);
  v29 = sub_252692DF0();
  v30 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 2) = v29;
  *(v32 + 3) = v33;
  v34 = v52;
  *(v32 + 4) = v51;
  *(v32 + 5) = v34;
  v35 = v46;
  v36 = v47;
  *(v32 + 6) = v26;
  *(v32 + 7) = v36;
  *(v32 + 8) = v35;
  (*(v18 + 32))(&v32[v30], v45, v44);
  v37 = &v32[v31];
  v38 = v43;
  *v37 = v42;
  v37[1] = v38;
  v39 = &v32[(v31 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v39 = v27;
  v39[1] = v28;
  sub_2525738C0(0, 0, v24, &unk_2526A9B60, v32);

  return result;
}

double sub_252603898(uint64_t *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2526035E8(a1, v1[2], v1[3], v1[6], v1[7], v1 + v6, *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v4);
}

unint64_t sub_252603978()
{
  result = qword_27F4E3758;
  if (!qword_27F4E3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4E3758);
  }

  return result;
}

uint64_t dispatch thunk of DeviceDataModel.set(control:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2523E233C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_252603BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v16;
  *(v8 + 24) = v15;
  *(v8 + 16) = a8;
  *(v8 + 48) = sub_252692E00();
  *(v8 + 56) = sub_252692DF0();
  v12 = swift_task_alloc();
  *(v8 + 64) = v12;
  *v12 = v8;
  v12[1] = sub_252603CC0;

  return sub_2526020AC(a5, a6, a7, v17, v18);
}

uint64_t sub_252603CC0()
{
  *(*v1 + 72) = v0;

  v3 = sub_252692DE0();
  if (v0)
  {
    v4 = sub_252603E90;
  }

  else
  {
    v4 = sub_252603E1C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_252603E1C()
{

  v2 = *(v0 + 32);
  if (v2)
  {
    v2(v1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252603E90()
{
  v1 = v0[2];

  v2 = v0[9];
  if (v1)
  {
    (v0[2])(v0[9]);
  }

  v3 = v0[4];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

double sub_252603F28(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25266C368(a1);
  }

  return result;
}

double sub_252603F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls;
    if ((*(Strong + OBJC_IVAR____TtC22HomeAccessoryControlUI31AccessoryControlLegacyViewModel_userHasInteractedWithControls) & 1) == 0)
    {
      v11 = Strong;
      (*(a5 + 56))(a3, a4, a5);
      Strong = v11;
    }

    *(Strong + v10) = 1;
  }

  return result;
}

uint64_t sub_252604038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v31 = a2;
  v41 = sub_25268DA10();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v30 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v35 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = v29 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3760, &qword_2526A9AB8);
  MEMORY[0x28223BE20](v37);
  v36 = v29 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2DD8, &qword_2526A8040);
  sub_2526926C0();

  v8 = v49;
  v9 = v50;
  v10 = v51;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3768, &qword_2526A9AE0);
  v12 = sub_25260AD60(&qword_27F4E3770, &qword_27F4E3778, &qword_2526A9AE8);
  sub_252692700();
  v13 = v48;
  v51 = v10;
  v52 = v48;
  v49 = v8;
  v50 = v9;
  sub_252692710();
  if (v13 == v45)
  {
LABEL_2:

    return (*(v30 + 56))(v31, 1, 1, v43);
  }

  else
  {
    v38 = (v2 + 8);
    v33 = v9;
    v34 = v8;
    v32 = v10;
    v29[1] = v11;
    v29[0] = v12;
    while (1)
    {
      v45 = v13;
      v49 = v8;
      v50 = v9;
      v51 = v10;
      v15 = v36;
      sub_252692730();
      v49 = v8;
      v50 = v9;
      v51 = v10;
      sub_252692720();
      swift_getKeyPath();
      sub_2526926C0();

      sub_252372288(v15, &qword_27F4E3760, &qword_2526A9AB8);
      v16 = v49;
      v17 = v50;
      v18 = v51;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3780, &qword_2526A9B18);
      sub_25260AD60(&qword_27F4E3788, &qword_27F4E3790, &qword_2526A9B20);
      sub_252692700();
      v48 = v44;
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692710();
      v19 = v48;
      v20 = &qword_27F4DAE18;
      v21 = &qword_2526A7F90;
      v22 = v35;
      if (v48 != v45)
      {
        break;
      }

LABEL_4:

      v9 = v33;
      v8 = v34;
      v49 = v34;
      v50 = v33;
      v10 = v32;
      v51 = v32;
      sub_252692710();
      v13 = v52;
      if (v52 == v45)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v45 = v19;
      v49 = v16;
      v50 = v17;
      v51 = v18;
      v23 = v40;
      sub_252692730();
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692720();
      sub_2523714D4(v23, v22, v20, v21);
      sub_25260C914(&qword_27F4E37A0, type metadata accessor for Device.Control, &protocol conformance descriptor for Device.Control);
      v24 = v21;
      v25 = v20;
      v26 = v39;
      sub_252692740();
      v27 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
      (*v38)(v26, v41);
      if (v27)
      {
        break;
      }

      sub_252372288(v22, v25, v24);
      v49 = v16;
      v50 = v17;
      v51 = v18;
      sub_252692710();
      v19 = v48;
      v20 = v25;
      v21 = v24;
      if (v48 == v45)
      {
        goto LABEL_4;
      }
    }

    v28 = v31;
    sub_2523714D4(v22, v31, &qword_27F4DAE18, &qword_2526A7F90);
    return (*(v30 + 56))(v28, 0, 1, v43);
  }
}

uint64_t sub_25260463C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v2, v11);
  sub_25260B694(&v13[*(v10 + 28)], v8, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v20);
  sub_25260B634(v8, type metadata accessor for Device.Control.Kind);
  if (v20 <= 4u && !v20)
  {

LABEL_7:
    sub_25237153C(v1, v5, &qword_27F4DAE18, &qword_2526A7F90);
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_2523714D4(v5, v16 + v15, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v1, v5, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_2523714D4(v5, v17 + v15, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBBD0, &unk_2526A9B70);
    sub_2526926E0();
    return v20;
  }

  v14 = sub_2526933B0();

  if (v14)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252604A80@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = 0;
  }

  else
  {
    v12 = *v4;
    v13 = v4[1];
    v14 = v4[2];
    v15 = v4[3];
    v16 = v4[4];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
    result = sub_25260B634(v4 + *(v17 + 48), type metadata accessor for AccessoryControl.BinaryViewConfig);
    if (v16 == 1)
    {
      v11 = 2;
    }

    else
    {
      result = sub_252393F68(v12, v13, v14, v15, v16);
      v11 = v12 & 1;
    }
  }

  *a1 = v11;
  return result;
}

uint64_t sub_252604C54(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - v9);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v38 = v4;
  v39 = v2;
  v20 = *v10;
  v19 = v10[1];
  v21 = v10[3];
  v40 = v10[2];
  v41 = v21;
  v22 = v10[4];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
  sub_25260B5CC(v10 + *(v23 + 48), v42, type metadata accessor for AccessoryControl.BinaryViewConfig);
  if (v17 == 2)
  {
    sub_25260B634(v42, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v24 = v20;
    v25 = v19;
    v26 = v40;
    v27 = v41;
    v28 = v22;
  }

  else
  {
    if (v22 == 1)
    {
      v29 = v20;
    }

    else
    {
      v29 = v20 & 0xFFFFFFFFFFFFFF00 | v17 & 1;
    }

    swift_getKeyPath();
    v30 = v22;
    v31 = v38;
    sub_2526926C0();

    v32 = *(v23 + 48);
    *v7 = v29;
    v7[1] = v19;
    v33 = v19;
    v34 = v40;
    v35 = v41;
    v7[2] = v40;
    v7[3] = v35;
    v7[4] = v22;
    v36 = v42;
    sub_25260B694(v42, v7 + v32, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_25239F750(v29, v33, v34, v35, v30);
    sub_2526926B0();
    sub_252372288(v31, &qword_27F4E3798, &qword_2526A9B28);
    sub_25260B634(v36, type metadata accessor for AccessoryControl.BinaryViewConfig);
    v24 = v29;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v30;
  }

  return sub_252393F68(v24, v25, v26, v27, v28);
}

double sub_252605008@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v25);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v25[0]) <= 4u && !LOBYTE(v25[0]))
  {

LABEL_7:
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0, &qword_2526A6760);
    sub_2526926E0();
    v20 = v25[1];
    v21 = v28;
    *a1 = v25[0];
    *(a1 + 8) = v20;
    result = *&v26;
    v23 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v23;
    *(a1 + 48) = v21;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_7;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_252605470@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = 0;
    v12 = xmmword_252695730;
    v13 = 0uLL;
  }

  else
  {
    v14 = *(v4 + 1);
    v16 = *v4;
    v17 = v14;
    v11 = *(v4 + 4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
    result = sub_25260B634(&v4[*(v15 + 48)], type metadata accessor for AccessoryControl.BinaryViewConfig);
    v13 = v16;
    v12 = v17;
  }

  *a1 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_252605628(uint64_t *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v34);
  v3 = &v29 - v2;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v32 = a1[1];
  v33 = v17;
  v18 = a1[2];
  v19 = a1[3];
  v30 = a1[4];
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = type metadata accessor for Device.Control.Kind;
    v21 = v9;
  }

  else
  {
    sub_252393F68(*v9, v9[1], v9[2], v9[3], v9[4]);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
    sub_25260B5CC(v9 + *(v22 + 48), v16, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_getKeyPath();
    sub_2526926C0();

    v23 = *(v22 + 48);
    v25 = v32;
    v24 = v33;
    *v6 = v33;
    v6[1] = v25;
    v27 = v30;
    v26 = v31;
    v6[2] = v31;
    v6[3] = v19;
    v6[4] = v27;
    sub_25260B694(v16, v6 + v23, type metadata accessor for AccessoryControl.BinaryViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_25239F750(v24, v25, v26, v19, v27);
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798, &qword_2526A9B28);
    v20 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    v21 = v16;
  }

  return sub_25260B634(v21, v20);
}

uint64_t sub_252605974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 < 2u && v24)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_5;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  sub_2526926E0();
  v20 = 0;
LABEL_5:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810, &unk_2526A56A0);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_252605E1C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v12);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
    sub_2523714D4(v4, v11, &qword_27F4DB218, &unk_252696080);
    sub_25260B634(&v4[v13], type metadata accessor for AccessoryControl.IncrementalConfig);
    return sub_2523714D4(v11, a1, &qword_27F4DB218, &unk_252696080);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    *a1 = 0;
    v15 = *MEMORY[0x277D15BB8];
    v16 = sub_25268ED70();
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    v17 = type metadata accessor for AccessoryControl.IncrementalState(0);
    *(a1 + *(v17 + 20)) = 0;
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_2526060CC(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020);
    sub_25260B5CC(&v9[*(v17 + 48)], v16, type metadata accessor for AccessoryControl.IncrementalConfig);
    v22 = v1;
    sub_252372288(v9, &qword_27F4DB218, &unk_252696080);
    swift_getKeyPath();
    sub_2526926C0();

    v18 = *(v17 + 48);
    sub_25237153C(v23, v6, &qword_27F4DB218, &unk_252696080);
    sub_25260B694(v16, &v6[v18], type metadata accessor for AccessoryControl.IncrementalConfig);
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798, &qword_2526A9B28);
    v19 = type metadata accessor for AccessoryControl.IncrementalConfig;
    v20 = v16;
  }

  else
  {
    v19 = type metadata accessor for Device.Control.Kind;
    v20 = v9;
  }

  return sub_25260B634(v20, v19);
}

void sub_252606404(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v22);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v22 == 2)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8, &unk_252695A60);
    sub_2526926E0();
    v20 = v23;
    v21 = v24;
    *a1 = v22;
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    return;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_252606864@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = *v4;
    v11 = v4[8];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
    result = sub_25260B634(&v4[*(v12 + 48)], type metadata accessor for AccessoryControl.PickerViewConfig);
  }

  else
  {
    result = sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t sub_252606A0C(uint64_t *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v25);
  v3 = &v23[-v2];
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for Device.Control(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  v24 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v13[*(v11 + 28)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v13, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
    sub_25260B5CC(&v9[*(v18 + 48)], v16, type metadata accessor for AccessoryControl.PickerViewConfig);
    swift_getKeyPath();
    sub_2526926C0();

    v19 = *(v18 + 48);
    *v6 = v17;
    v6[8] = v24;
    sub_25260B694(v16, &v6[v19], type metadata accessor for AccessoryControl.PickerViewConfig);
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v3, &qword_27F4E3798, &qword_2526A9B28);
    v20 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v21 = v16;
  }

  else
  {
    v20 = type metadata accessor for Device.Control.Kind;
    v21 = v9;
  }

  return sub_25260B634(v21, v20);
}

void sub_252606D24(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v22);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v22 > 8u)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8, &unk_252695A60);
    sub_2526926E0();
    v20 = v23;
    v21 = v24;
    *a1 = v22;
    *(a1 + 16) = v20;
    *(a1 + 24) = v21;
    return;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_252607184@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v18);
  sub_25260B694(&v8[*(v6 + 28)], v14, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    goto LABEL_5;
  }

  v19 = swift_projectBox();
  sub_25237153C(v19, v4, &qword_27F4DB430, &qword_2526A9B30);
  v20 = *(v2 + 48);
  sub_25260B5CC(v4, v17, type metadata accessor for Device.Control.Kind);
  sub_25260B634(&v4[v20], type metadata accessor for AccessoryControl.DecorationControlConfig);

  sub_25260B5CC(v17, v11, type metadata accessor for Device.Control.Kind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = v11;
LABEL_5:
    result = sub_25260B634(v14, type metadata accessor for Device.Control.Kind);
    v21 = 0;
    v22 = 0;
    goto LABEL_6;
  }

  v21 = *v11;
  v22 = v11[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
  result = sub_25260B634(&v11[*(v23 + 48)], type metadata accessor for AccessoryControl.PickerViewConfig);
LABEL_6:
  *a1 = v21;
  *(a1 + 8) = v22;
  return result;
}

uint64_t sub_252607468(uint64_t *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v44);
  v43 = &v39[-v2];
  v3 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v46);
  v6 = &v39[-v5];
  v7 = type metadata accessor for Device.Control(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v39[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v39[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v39[-v23];
  v41 = *a1;
  v40 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v10[*(v8 + 28)], v21, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v10, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v25 = swift_projectBox();
    sub_25237153C(v25, v6, &qword_27F4DB430, &qword_2526A9B30);
    v26 = *(v46 + 48);
    sub_25260B5CC(v6, v24, type metadata accessor for Device.Control.Kind);
    v27 = v45;
    sub_25260B5CC(&v6[v26], v45, type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B694(v24, v18, type metadata accessor for Device.Control.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400);
      v29 = &v18[*(v28 + 48)];
      v30 = v42;
      sub_25260B5CC(v29, v42, type metadata accessor for AccessoryControl.PickerViewConfig);
      swift_getKeyPath();
      v31 = v43;
      sub_2526926C0();

      v32 = v46;
      v33 = swift_allocBox();
      v35 = v34;
      v36 = *(v32 + 48);
      v37 = *(v28 + 48);
      *v34 = v41;
      *(v34 + 8) = v40;
      sub_25260B694(v30, v34 + v37, type metadata accessor for AccessoryControl.PickerViewConfig);
      swift_storeEnumTagMultiPayload();
      sub_25260B694(v27, v35 + v36, type metadata accessor for AccessoryControl.DecorationControlConfig);
      *v15 = v33;
      swift_storeEnumTagMultiPayload();
      sub_2526926B0();
      sub_252372288(v31, &qword_27F4E3798, &qword_2526A9B28);
      sub_25260B634(v30, type metadata accessor for AccessoryControl.PickerViewConfig);
      sub_25260B634(v27, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v18 = v24;
    }

    else
    {
      sub_25260B634(v27, type metadata accessor for AccessoryControl.DecorationControlConfig);
      sub_25260B634(v24, type metadata accessor for Device.Control.Kind);
    }
  }

  else
  {
    v18 = v21;
  }

  return sub_25260B634(v18, type metadata accessor for Device.Control.Kind);
}

double sub_2526079D0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v25);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v25[0]) > 8u)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0, &qword_2526A6760);
    sub_2526926E0();
    v20 = v25[1];
    v21 = v28;
    *a1 = v25[0];
    *(a1 + 8) = v20;
    result = *&v26;
    v23 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v23;
    *(a1 + 48) = v21;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_252607E38@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v18);
  sub_25260B694(&v8[*(v6 + 28)], v14, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v19 = swift_projectBox();
    sub_25237153C(v19, v4, &qword_27F4DB430, &qword_2526A9B30);
    v20 = *(v2 + 48);
    sub_25260B5CC(v4, v17, type metadata accessor for Device.Control.Kind);
    sub_25260B634(&v4[v20], type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B5CC(v17, v11, type metadata accessor for Device.Control.Kind);
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = *(v11 + 4);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
      v24 = *v11;
      v26 = *(v11 + 1);
      v27 = v24;
      sub_25260B634(&v11[v23], type metadata accessor for AccessoryControl.BinaryViewConfig);
      v25 = v26;
      result = *&v27;
      *a1 = v27;
      *(a1 + 16) = v25;
      *(a1 + 32) = v22;
      return result;
    }

    v14 = v11;
  }

  sub_25260B634(v14, type metadata accessor for Device.Control.Kind);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_25260812C(uint64_t *a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v53);
  v54 = &v44 - v2;
  v3 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Device.Control(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v14);
  v51 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v44 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v44 - v23);
  v25 = *a1;
  v49 = a1[1];
  v50 = v25;
  v26 = a1[2];
  v47 = a1[3];
  v48 = v26;
  v46 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v11[*(v9 + 28)], v21, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v11, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v27 = swift_projectBox();
    sub_25237153C(v27, v7, &qword_27F4DB430, &qword_2526A9B30);
    v28 = *(v5 + 48);
    sub_25260B5CC(v7, v24, type metadata accessor for Device.Control.Kind);
    v29 = &v7[v28];
    v30 = v55;
    sub_25260B5CC(v29, v55, type metadata accessor for AccessoryControl.DecorationControlConfig);

    sub_25260B694(v24, v18, type metadata accessor for Device.Control.Kind);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25260B634(v30, type metadata accessor for AccessoryControl.DecorationControlConfig);
      sub_25260B634(v24, type metadata accessor for Device.Control.Kind);
    }

    else
    {
      sub_252393F68(*v18, v18[1], v18[2], v18[3], v18[4]);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90);
      v32 = v52;
      sub_25260B5CC(v18 + *(v31 + 48), v52, type metadata accessor for AccessoryControl.BinaryViewConfig);
      swift_getKeyPath();
      sub_2526926C0();

      v33 = swift_allocBox();
      v35 = v34;
      v44 = *(v5 + 48);
      v45 = v33;
      v36 = *(v31 + 48);
      v38 = v49;
      v37 = v50;
      *v34 = v50;
      v34[1] = v38;
      v40 = v47;
      v39 = v48;
      v34[2] = v48;
      v34[3] = v40;
      v41 = v46;
      v34[4] = v46;
      sub_25260B694(v32, v34 + v36, type metadata accessor for AccessoryControl.BinaryViewConfig);
      swift_storeEnumTagMultiPayload();
      sub_25260B694(v30, v35 + v44, type metadata accessor for AccessoryControl.DecorationControlConfig);
      *v51 = v45;
      swift_storeEnumTagMultiPayload();
      sub_25239F750(v37, v38, v39, v40, v41);
      v42 = v54;
      sub_2526926B0();
      sub_252372288(v42, &qword_27F4E3798, &qword_2526A9B28);
      sub_25260B634(v32, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25260B634(v30, type metadata accessor for AccessoryControl.DecorationControlConfig);
      v18 = v24;
    }
  }

  else
  {
    v18 = v21;
  }

  return sub_25260B634(v18, type metadata accessor for Device.Control.Kind);
}

uint64_t sub_2526086C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 5)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20, &qword_2526A9B80);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_252608B70@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);

    return sub_2523714D4(v4, a1, &qword_27F4DB258, &unk_252696090);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.ThermostatState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_252608D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);
  v16 = &v10[*(v15 + 48)];
  v17 = *(v16 + 5);
  v30 = *(v16 + 4);
  v31 = v17;
  v32 = *(v16 + 48);
  v18 = *(v16 + 1);
  v26 = *v16;
  v27 = v18;
  v19 = *(v16 + 3);
  v28 = *(v16 + 2);
  v29 = v19;
  v25[1] = v2;
  sub_252372288(v10, &qword_27F4DB258, &unk_252696090);
  swift_getKeyPath();
  sub_2526926C0();

  v20 = &v7[*(v15 + 48)];
  sub_25237153C(a1, v7, &qword_27F4DB258, &unk_252696090);
  v21 = v31;
  *(v20 + 4) = v30;
  *(v20 + 5) = v21;
  *(v20 + 48) = v32;
  v22 = v27;
  *v20 = v26;
  *(v20 + 1) = v22;
  v23 = v29;
  *(v20 + 2) = v28;
  *(v20 + 3) = v23;
  swift_storeEnumTagMultiPayload();
  sub_2526926B0();
  return sub_252372288(v4, &qword_27F4E3798, &qword_2526A9B28);
}

uint64_t sub_252609030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 3)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_2526094D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);

    return sub_2523714D4(v4, a1, &qword_27F4DB2A0, &qword_25269E4A0);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.ColorState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_2526096B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v14[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v14, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);
  v16 = &v10[*(v15 + 48)];
  v19 = *v16;
  v20 = *(v16 + 2);
  sub_252372288(v10, &qword_27F4DB2A0, &qword_25269E4A0);
  swift_getKeyPath();
  sub_2526926C0();

  v17 = &v7[*(v15 + 48)];
  sub_25237153C(a1, v7, &qword_27F4DB2A0, &qword_25269E4A0);
  *v17 = v19;
  *(v17 + 2) = v20;
  swift_storeEnumTagMultiPayload();
  sub_2526926B0();
  return sub_252372288(v4, &qword_27F4E3798, &qword_2526A9B28);
}

double sub_252609970@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(v23);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (LOBYTE(v23[0]) == 7)
  {

LABEL_4:
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    sub_2526926E0();
    v20 = v23[1];
    *a1 = v23[0];
    *(a1 + 8) = v20;
    result = *&v24;
    v22 = v25;
    *(a1 + 16) = v24;
    *(a1 + 32) = v22;
    return result;
  }

  v16 = sub_2526933B0();

  if (v16)
  {
    goto LABEL_4;
  }

  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_252609DD4(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v10 = v4[1];
    v13 = *v4;
    v14 = v10;

    v11 = v13;
    v12 = v14;
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  a1[1] = v12;
}

void sub_252609F68(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  if (v14)
  {
    v26 = v4;
    v27 = v2;
    v28 = *a1;
    v16 = a1[2];
    v15 = a1[3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
    MEMORY[0x2530A4210]();
    sub_25260B694(&v13[*(v11 + 20)], v10, type metadata accessor for Device.Control.Kind);
    sub_25260B634(v13, type metadata accessor for Device.Control);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v17 = *v10;
      v18 = *(v10 + 1);
      v19 = *(v10 + 2);
      v20 = *(v10 + 3);
      v21 = *(v10 + 4);
      v25 = v10[40];
      v24 = *(v10 + 6);
      v23 = *(v10 + 56);
      sub_2523E2E24(v17, v18, v19, v20);
      swift_getKeyPath();
      v22 = v26;
      sub_2526926C0();

      *v7 = v28;
      *(v7 + 1) = v14;
      *(v7 + 2) = v16;
      *(v7 + 3) = v15;
      *(v7 + 4) = v21;
      v7[40] = v25;
      *(v7 + 6) = v24;
      *(v7 + 56) = v23;
      swift_storeEnumTagMultiPayload();
      sub_2526926B0();
      sub_252372288(v22, &qword_27F4E3798, &qword_2526A9B28);
    }

    else
    {
      sub_2523E2E24(v28, v14, v16, v15);
      sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
    }
  }
}

uint64_t sub_25260A248@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Device.Control(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2530A4210](v4, v13);
  sub_25260B694(&v15[*(v12 + 28)], v10, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v15, type metadata accessor for Device.Control);
  Device.Control.Kind.primitive.getter(&v24);
  sub_25260B634(v10, type metadata accessor for Device.Control.Kind);
  if (v24 == 8)
  {
  }

  else
  {
    v16 = sub_2526933B0();

    if ((v16 & 1) == 0)
    {
      v20 = 1;
      goto LABEL_6;
    }
  }

  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2523714D4(v7, v18 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  sub_25237153C(v2, v7, &qword_27F4DAE18, &qword_2526A7F90);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_2523714D4(v7, v19 + v17, &qword_27F4DAE18, &qword_2526A7F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  sub_2526926E0();
  v20 = 0;
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420, &unk_2526A1120);
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t sub_25260A6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device.Control(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210](v9);
  sub_25260B694(&v8[*(v6 + 28)], v4, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v8, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

    return sub_2523714D4(v4, a1, &qword_27F4DB440, &qword_2526A1150);
  }

  else
  {
    sub_25260B634(v4, type metadata accessor for Device.Control.Kind);
    v11 = type metadata accessor for AccessoryControl.StatusButtonState(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_25260A8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3798, &qword_2526A9B28);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v5;
  v36 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v15, &qword_27F4DB440, &qword_2526A1150);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_252372288(v15, &qword_27F4DB440, &qword_2526A1150);
  }

  sub_25260B5CC(v15, v19, type metadata accessor for AccessoryControl.StatusButtonState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);
  MEMORY[0x2530A4210]();
  sub_25260B694(&v12[*(v10 + 20)], v9, type metadata accessor for Device.Control.Kind);
  sub_25260B634(v12, type metadata accessor for Device.Control);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);
    v22 = &v9[*(v21 + 48)];
    v23 = *v22;
    v24 = *(v22 + 1);
    v31 = *(v22 + 4);
    v30 = *(v22 + 1);
    sub_252372288(v9, &qword_27F4DB440, &qword_2526A1150);
    swift_getKeyPath();
    v25 = v33;
    sub_2526926C0();

    v26 = v32;
    v27 = v32 + *(v21 + 48);
    sub_25260B694(v19, v32, type metadata accessor for AccessoryControl.StatusButtonState);
    (*(v17 + 56))(v26, 0, 1, v16);
    *v27 = v23;
    *(v27 + 8) = v24;
    *(v27 + 16) = v30;
    *(v27 + 32) = v31;
    swift_storeEnumTagMultiPayload();
    sub_2526926B0();
    sub_252372288(v25, &qword_27F4E3798, &qword_2526A9B28);
    v28 = type metadata accessor for AccessoryControl.StatusButtonState;
    v29 = v19;
  }

  else
  {
    sub_25260B634(v19, type metadata accessor for AccessoryControl.StatusButtonState);
    v28 = type metadata accessor for Device.Control.Kind;
    v29 = v9;
  }

  return sub_25260B634(v29, v28);
}

uint64_t sub_25260AD60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25260AE14(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[7];
  v11 = v1[6];
  v6 = v1[8];
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2523E233C;

  return sub_252603BC0(a1, v13, v12, v11, v10, v6, v1 + v5, v7);
}

double sub_25260AFA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_252603F88(v4, v5, v6, v1, v2);
}

double sub_25260B03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25260B08C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);

  return sub_252604A80(a1);
}

uint64_t sub_25260B10C(unsigned __int8 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);

  return sub_252604C54(a1);
}

uint64_t sub_25260B1D4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_25260B280(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

void sub_25260B374(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);

  sub_252609DD4(a1);
}

void sub_25260B3F4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90);

  sub_252609F68(a1);
}

uint64_t sub_25260B48C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_25260B538(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_25260B5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260B634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25260B694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260B714(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v2 = *(*v1 + 80);
  v94 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v3 = v0 + ((v2 + 32) & ~v2) + v1[10];
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for Device.Control(0);
  v7 = v3 + *(v6 + 20);
  type metadata accessor for Device.Control.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        if (*(v7 + 8))
        {
        }

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v47 = type metadata accessor for AccessoryControl.StatusButtonState(0);
        if (!(*(*(v47 - 8) + 48))(v7, 1, v47))
        {

          v48 = v7 + *(v47 + 24);
          v49 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
          {
            v85 = swift_getEnumCaseMultiPayload();
            if (v85 == 2)
            {
            }

            else if (v85 <= 1)
            {
              type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v5(v48, v4);
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_49;
      }

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v5(v7, v4);
      goto LABEL_49;
    }

    v32 = type metadata accessor for AccessoryControl.ThermostatState(0);
    if ((*(*(v32 - 8) + 48))(v7, 1, v32))
    {
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);
LABEL_48:

      goto LABEL_49;
    }

    v33 = v7 + *(v32 + 32);
    v34 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
    if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328, &unk_252696040);
        if ((*(*(v82 - 8) + 48))(v33, 1, v82))
        {
          goto LABEL_25;
        }

        v83 = *(v82 + 48);
        v84 = sub_25268D990();
        (*(*(v84 - 8) + 8))(v33 + v83, v84);
      }

      else
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308, &unk_252699490);
        if ((*(*(v82 - 8) + 48))(v33, 3, v82))
        {
          goto LABEL_25;
        }

        v86 = *(v82 + 48);
        v87 = sub_25268D990();
        v93 = *(v87 - 8);
        if (!(*(v93 + 48))(v33 + v86, 1, v87))
        {
          (*(v93 + 8))(v33 + v86, v87);
        }
      }

      v88 = *(v82 + 64);
      v89 = sub_25268DB10();
      (*(*(v89 - 8) + 8))(v33 + v88, v89);
    }

LABEL_25:
    if (*(v7 + *(v32 + 36) + 8) >= 8uLL)
    {
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_49;
      }

      v9 = type metadata accessor for AccessoryControl.IncrementalState(0);
      if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
      {
        v10 = sub_25268ED70();
        (*(*(v10 - 8) + 8))(v7, v10);
      }

      v11 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);

      v12 = type metadata accessor for IconDescriptor(0);
      v13 = *(v12 + 20);
      v14 = sub_25268F910();
      v15 = *(*(v14 - 8) + 8);
      v15(v11 + v13, v14);
      v16 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);

      v15(v16 + *(v12 + 20), v14);
      v17 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

      v18 = *(v17 + 28);
      v19 = sub_25268EEA0();
      (*(*(v19 - 8) + 8))(v11 + v18, v19);

      v20 = v11 + *(v17 + 56);
      goto LABEL_31;
    }

    if (*(v7 + 32) != 1)
    {
    }

    v21 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);

    v22 = type metadata accessor for IconDescriptor(0);
    v23 = *(v22 + 20);
    v24 = sub_25268F910();
    v25 = *(*(v24 - 8) + 8);
    v25(v21 + v23, v24);
    v26 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28);

    v25(v26 + *(v22 + 20), v24);
    v27 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

    v28 = v21 + v27[6];
    type metadata accessor for ControlTextModifier.Config(0);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 == 1)
    {
    }

    else if (!v29)
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0, &unk_252696D30) + 48);
      v31 = sub_25268D990();
      (*(*(v31 - 8) + 8))(v28 + v30, v31);
    }

    v73 = v21 + v27[7];
    v74 = *(v73 + 32);
    if (v74 != 255)
    {
      sub_252376DBC(*v73, *(v73 + 8), *(v73 + 16), *(v73 + 24), v74);
    }

    v75 = v21 + v27[8];
    v76 = *(v75 + 32);
    if (v76 != 255)
    {
      sub_252376DBC(*v75, *(v75 + 8), *(v75 + 16), *(v75 + 24), v76);
    }

    v77 = v21 + v27[11];
    type metadata accessor for AccessoryControl.StatusProvider(0);
    v78 = swift_getEnumCaseMultiPayload();
    if (v78 <= 3)
    {
      if (v78 != 1 && v78 != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_87;
    }

    if (v78 == 4)
    {
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380, &qword_2526A49E0) + 64);
      v80 = sub_25268D990();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v77 + v79, 1, v80))
      {
        (*(v81 + 8))(v77 + v79, v80);
      }

      goto LABEL_10;
    }

    if (v78 == 5 || v78 == 7)
    {
LABEL_87:
    }

LABEL_10:

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = type metadata accessor for AccessoryControl.ColorState(0);
      if (!(*(*(v44 - 8) + 48))(v7, 1, v44))
      {
        v45 = sub_25268ED20();
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(v7, 1, v45))
        {
          (*(v46 + 8))(v7, v45);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);
    }

    goto LABEL_48;
  }

  v35 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);

  v36 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v37 = v35 + *(v36 + 24);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = type metadata accessor for IconDescriptor(0);
    v91 = *(v39 + 20);
    v92 = v39;
    v40 = sub_25268F910();
    v41 = *(*(v40 - 8) + 8);
    v41(v37 + v91, v40);
    v42 = v37 + *(v38 + 28);

    v41(v42 + *(v92 + 20), v40);
  }

  v20 = v35 + *(v36 + 40);
LABEL_31:
  type metadata accessor for AccessoryControl.StatusProvider(0);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 3)
  {
    if (v43 == 1 || v43 == 3)
    {
      goto LABEL_48;
    }
  }

  else if (v43 == 4)
  {
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380, &qword_2526A49E0) + 64);
    v71 = sub_25268D990();
    v72 = *(v71 - 8);
    if (!(*(v72 + 48))(v20 + v70, 1, v71))
    {
      (*(v72 + 8))(v20 + v70, v71);
    }
  }

  else if (v43 == 5 || v43 == 7)
  {
    goto LABEL_48;
  }

LABEL_49:
  v50 = v3 + *(v6 + 24);
  type metadata accessor for Device.Control.Source(0);
  v51 = swift_getEnumCaseMultiPayload();
  if (v51 <= 2)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        v55 = sub_25268E710();
        (*(*(v55 - 8) + 8))(v50, v55);
        v56 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
        v57 = sub_25268E310();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v50 + v56, 1, v57))
        {
          (*(v58 + 8))(v50 + v56, v57);
        }

        v59 = type metadata accessor for MatterControlSolver.Source(0);

        v60 = v59[6];
        v61 = sub_25268F130();
        v62 = *(v61 - 8);
        if (!(*(v62 + 48))(v50 + v60, 1, v61))
        {
          (*(v62 + 8))(v50 + v60, v61);
        }

        v63 = v59[8];
        v64 = sub_25268F8E0();
        (*(*(v64 - 8) + 8))(v50 + v63, v64);
        v65 = v59[11];
        v66 = sub_25268EDA0();
        v67 = *(v66 - 8);
        if (!(*(v67 + 48))(v50 + v65, 1, v66))
        {
          (*(v67 + 8))(v50 + v65, v66);
        }

        v68 = v59[13];
        v69 = sub_25268E2F0();
        (*(*(v69 - 8) + 8))(v50 + v68, v69);
      }

      else if (v51 != 2)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v52 = sub_25268F4D0();
      (*(*(v52 - 8) + 8))(v50, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3088, &unk_2526A85B0);
    }
  }

  else if (v51 > 4)
  {
    if (v51 == 5 || v51 == 6)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v51 != 3)
    {
LABEL_59:

      goto LABEL_70;
    }

    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E3090, &unk_2526A9160) + 48);
    v54 = sub_25268E530();
    (*(*(v54 - 8) + 8))(v50 + v53, v54);
  }

LABEL_70:

  return MEMORY[0x2821FE8E8](v0, ((v2 + 32) & ~v2) + v94, v2 | 7);
}

uint64_t sub_25260C880(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE18, &qword_2526A7F90) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_25260C914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Device.Control.init(id:kind:source:role:accessibilityIdentifier:sizeConstraint:preferredViewType:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v14 = *a4;
  v15 = *a7;
  v16 = *a8;
  v17 = type metadata accessor for Device.Control(0);
  v18 = (a9 + v17[8]);
  v19 = v17[10];
  *(a9 + v19) = 16;
  v20 = sub_25268DA10();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_25260CAD4(a2, a9 + v17[5], type metadata accessor for Device.Control.Kind);
  result = sub_25260CAD4(a3, a9 + v17[6], type metadata accessor for Device.Control.Source);
  *(a9 + v17[7]) = v14;
  *v18 = a5;
  v18[1] = a6;
  *(a9 + v17[9]) = v15;
  *(a9 + v19) = v16;
  *(a9 + v17[11]) = a10;
  return result;
}

uint64_t sub_25260CAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Device.Control.Kind.primitive.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25260D07C(v2, v6, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
        *a1 = 1;
        sub_25260CE88(v6 + v14, type metadata accessor for AccessoryControl.IncrementalConfig);
        v8 = &qword_27F4DB218;
        v9 = &unk_252696080;
        return sub_252372288(v6, v8, v9);
      }

      sub_252393F68(*v6, v6[1], v6[2], v6[3], v6[4]);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
      *a1 = 0;
      v11 = type metadata accessor for AccessoryControl.BinaryViewConfig;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0);

          *a1 = 3;
          v8 = &qword_27F4DB2A0;
          v9 = &qword_25269E4A0;
          return sub_252372288(v6, v8, v9);
        }

        result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
        v13 = 4;
LABEL_19:
        *a1 = v13;
        return result;
      }

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);
      *a1 = 2;
      v11 = type metadata accessor for AccessoryControl.PickerViewConfig;
    }

    return sub_25260CE88(v6 + v10, v11);
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
      v13 = 7;
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0);

        *a1 = 8;
        v8 = &qword_27F4DB440;
        v9 = &qword_2526A1150;
        return sub_252372288(v6, v8, v9);
      }

      result = sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
      v13 = 9;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a1 = 6;
    return sub_25260CE88(v6, type metadata accessor for Device.Control.Kind);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0);

  *a1 = 5;
  v8 = &qword_27F4DB258;
  v9 = &unk_252696090;
  return sub_252372288(v6, v8, v9);
}

uint64_t sub_25260CE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Device.Control.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268DA10();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25260D07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25260D130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Device.Control.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Device.Control.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Device.Control.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device.Control(0) + 32));

  return v1;
}

void Device.Control.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Device.Control(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Device.Control.sizeConstraint.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Device.Control.sizeConstraint.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Device.Control.preferredViewType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device.Control(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t Device.Control.preferredViewType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t Device.Control.enabled.setter(char a1)
{
  result = type metadata accessor for Device.Control(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t static Device.Control.Kind.== infix(_:_:)(char *a1, uint64_t *a2)
{
  v280 = a1;
  v281 = a2;
  v244 = type metadata accessor for AccessoryControl.DecorationControlConfig(0);
  MEMORY[0x28223BE20](v244);
  v274 = &v239 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v272 = &v239 - v4;
  v5 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  v270 = *(v5 - 8);
  v271 = v5;
  MEMORY[0x28223BE20](v5);
  v243 = (&v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v7 - 8);
  v248 = (&v239 - v8);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C8, &qword_252696100);
  MEMORY[0x28223BE20](v266);
  v273 = &v239 - v9;
  v10 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
  MEMORY[0x28223BE20](v10 - 8);
  v264 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryControl.ThermostatState(0);
  v267 = *(v12 - 8);
  v268 = v12;
  MEMORY[0x28223BE20](v12);
  v242 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v14 - 8);
  v247 = &v239 - v15;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7C0, &qword_2526960F8);
  MEMORY[0x28223BE20](v261);
  v269 = &v239 - v16;
  v17 = type metadata accessor for AccessoryControl.ColorState(0);
  v262 = *(v17 - 8);
  v263 = v17;
  MEMORY[0x28223BE20](v17);
  v241 = &v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v19 - 8);
  v246 = &v239 - v20;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B8, &qword_2526960F0);
  MEMORY[0x28223BE20](v253);
  v265 = &v239 - v21;
  v22 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v22 - 8);
  v254 = &v239 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v255 = &v239 - v25;
  v26 = type metadata accessor for AccessoryControl.IncrementalState(0);
  v256 = *(v26 - 8);
  v257 = v26;
  MEMORY[0x28223BE20](v26);
  v240 = &v239 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v28 - 8);
  v245 = &v239 - v29;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7B0, &qword_2526960E8);
  MEMORY[0x28223BE20](v252);
  v258 = &v239 - v30;
  v31 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  MEMORY[0x28223BE20](v31 - 8);
  v259 = (&v239 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v260 = (&v239 - v34);
  v35 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  MEMORY[0x28223BE20](v35 - 8);
  v249 = (&v239 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v275 = (&v239 - v38);
  v39 = type metadata accessor for Device.Control.Kind(0);
  MEMORY[0x28223BE20](v39);
  v250 = (&v239 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v251 = &v239 - v42;
  MEMORY[0x28223BE20](v43);
  v276 = &v239 - v44;
  MEMORY[0x28223BE20](v45);
  *(&v279 + 1) = &v239 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v239 - v48;
  MEMORY[0x28223BE20](v50);
  v278 = &v239 - v51;
  MEMORY[0x28223BE20](v52);
  *&v279 = &v239 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v239 - v55;
  MEMORY[0x28223BE20](v57);
  v277 = &v239 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v239 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v239 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = (&v239 - v66);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E37A8, &qword_2526A9B88);
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v239 - v69;
  v72 = (&v239 + *(v71 + 56) - v69);
  sub_25260D07C(v280, &v239 - v69, type metadata accessor for Device.Control.Kind);
  v73 = v281;
  v281 = v72;
  sub_25260D07C(v73, v72, type metadata accessor for Device.Control.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      v83 = v281;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          v157 = v276;
          sub_25260D07C(v70, v276, type metadata accessor for Device.Control.Kind);
          v158 = *v157;
          if (swift_getEnumCaseMultiPayload() != 9)
          {

            goto LABEL_66;
          }

          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB430, &qword_2526A9B30);
          v160 = swift_projectBox();
          v280 = v158;
          v161 = v160;
          v162 = *(v159 + 48);
          v163 = swift_projectBox();
          v164 = v251;
          sub_25260D07C(v161, v251, type metadata accessor for Device.Control.Kind);
          v165 = v250;
          sub_25260D07C(v163, v250, type metadata accessor for Device.Control.Kind);
          v166 = v272;
          sub_25260D07C(v161 + v162, v272, type metadata accessor for AccessoryControl.DecorationControlConfig);
          v167 = v163 + v162;
          v168 = v274;
          sub_25260D07C(v167, v274, type metadata accessor for AccessoryControl.DecorationControlConfig);
          if (static Device.Control.Kind.== infix(_:_:)(v164, v165))
          {
            v169 = sub_25268EE80();
            sub_25260CE88(v165, type metadata accessor for Device.Control.Kind);
            sub_25260CE88(v164, type metadata accessor for Device.Control.Kind);
            if ((v169 & 1) != 0 && *(v166 + *(v244 + 20)) == *(v168 + *(v244 + 20)))
            {
              v170 = v244;
              v171 = *(v166 + *(v244 + 24));
              sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);
              LODWORD(v170) = *(v168 + *(v170 + 24));
              sub_25260CE88(v168, type metadata accessor for AccessoryControl.DecorationControlConfig);

              if (v171 != v170)
              {
                goto LABEL_111;
              }

              goto LABEL_79;
            }

            sub_25260CE88(v168, type metadata accessor for AccessoryControl.DecorationControlConfig);
            sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);

LABEL_111:
            v204 = v70;
            goto LABEL_132;
          }

          sub_25260CE88(v168, type metadata accessor for AccessoryControl.DecorationControlConfig);
          sub_25260CE88(v166, type metadata accessor for AccessoryControl.DecorationControlConfig);
          sub_25260CE88(v165, type metadata accessor for Device.Control.Kind);
          sub_25260CE88(v164, type metadata accessor for Device.Control.Kind);

          v204 = v70;
LABEL_132:
          sub_25260CE88(v204, type metadata accessor for Device.Control.Kind);
          goto LABEL_133;
        }

        v280 = v70;
        v84 = *(&v279 + 1);
        sub_25260D07C(v70, *(&v279 + 1), type metadata accessor for Device.Control.Kind);
        v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2F98, &unk_2526A83D0) + 48);
        v86 = *(v84 + v85);
        v87 = *(v84 + v85 + 8);
        v88 = *(v84 + v85 + 16);
        v89 = *(v84 + v85 + 24);
        v90 = *(v84 + v85 + 32);
        if (swift_getEnumCaseMultiPayload() != 8)
        {

          sub_252372288(v84, &qword_27F4DB440, &qword_2526A1150);
          v70 = v280;
          goto LABEL_66;
        }

        v275 = v87;
        LODWORD(v276) = v86;
        LODWORD(v274) = *(v83 + v85);
        v91 = *(v83 + v85 + 16);
        v272 = *(v83 + v85 + 8);
        v92 = *(v83 + v85 + 32);
        v278 = *(v83 + v85 + 24);
        *&v279 = v91;
        v277 = v92;
        v93 = *(v266 + 48);
        v94 = v273;
        sub_2523714D4(v84, v273, &qword_27F4DB440, &qword_2526A1150);
        sub_2523714D4(v83, v94 + v93, &qword_27F4DB440, &qword_2526A1150);
        v95 = v271;
        v96 = *(v270 + 48);
        if (v96(v94, 1, v271) == 1)
        {
          if (v96(v94 + v93, 1, v95) == 1)
          {
            sub_252372288(v94, &qword_27F4DB440, &qword_2526A1150);
LABEL_107:
            LOBYTE(v303) = v276;
            *(&v303 + 1) = v275;
            *&v304 = v88;
            *(&v304 + 1) = v89;
            *&v305 = v90;
            LOBYTE(v296) = v274;
            *(&v296 + 1) = v272;
            *&v297 = v279;
            *(&v297 + 1) = v278;
            *&v298 = v277;
            v180 = _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v303, &v296);

LABEL_123:

            sub_25260CE88(v280, type metadata accessor for Device.Control.Kind);
            return v180 & 1;
          }

          goto LABEL_103;
        }

        v203 = v248;
        sub_25237153C(v94, v248, &qword_27F4DB440, &qword_2526A1150);
        if (v96(v94 + v93, 1, v95) == 1)
        {

          sub_25260CE88(v203, type metadata accessor for AccessoryControl.StatusButtonState);
LABEL_103:
          sub_252372288(v94, &qword_27F4DB7C8, &qword_252696100);
LABEL_131:
          v204 = v280;
          goto LABEL_132;
        }

        v222 = v243;
        sub_25260CAD4(v94 + v93, v243, type metadata accessor for AccessoryControl.StatusButtonState);
        v223 = _s22HomeAccessoryControlUI0bC0V17StatusButtonStateV2eeoiySbAE_AEtFZ_0(v203, v222);
        sub_25260CE88(v222, type metadata accessor for AccessoryControl.StatusButtonState);
        sub_25260CE88(v203, type metadata accessor for AccessoryControl.StatusButtonState);
        sub_252372288(v94, &qword_27F4DB440, &qword_2526A1150);
        if (v223)
        {
          goto LABEL_107;
        }

LABEL_130:

        goto LABEL_131;
      }

      v280 = v70;
      sub_25260D07C(v70, v49, type metadata accessor for Device.Control.Kind);
      v128 = *v49;
      v129 = *(v49 + 1);
      v131 = *(v49 + 2);
      v130 = *(v49 + 3);
      v132 = *(v49 + 4);
      LODWORD(v279) = v49[40];
      v133 = *(v49 + 7);
      v278 = *(v49 + 6);
      *(&v279 + 1) = v133;
      v134 = *(v49 + 8);
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        sub_2523E2E24(v128, v129, v131, v130);
        v70 = v280;
        goto LABEL_66;
      }

      v277 = v132;
      v136 = *v83;
      v135 = *(v83 + 8);
      v137 = *(v83 + 16);
      v138 = *(v83 + 32);
      v139 = *(v83 + 40);
      v141 = *(v83 + 48);
      v140 = *(v83 + 56);
      v275 = *(v83 + 24);
      v276 = v140;
      v142 = *(v83 + 64);
      if (v129)
      {
        v274 = v136;
        if (v135)
        {
          v271 = v141;
          LODWORD(v272) = v139;
          v281 = v142;
          v273 = v138;
          if (v128 == v136 && v129 == v135 || (v143 = v137, v144 = sub_2526933B0(), v137 = v143, (v144 & 1) != 0))
          {
            v145 = v137;
            v146 = sub_2523E5934(v131, v137);
            sub_2523E165C(v128, v129, v131, v130);
            if (v146)
            {
              sub_2523E165C(v128, v129, v131, v130);
              v148 = v274;
              v147 = v275;
              sub_2523E165C(v274, v135, v145, v275);
              sub_252436F58(v130, v147);
              LODWORD(v270) = v149;
              sub_2523E2E24(v148, v135, v145, v147);
              sub_2523E2E24(v128, v129, v131, v130);
              sub_2523E2E24(v148, v135, v145, v147);

              sub_2523E2E24(v128, v129, v131, v130);
              if ((v270 & 1) == 0)
              {
                goto LABEL_130;
              }

LABEL_122:
              *&v303 = v277;
              BYTE8(v303) = v279;
              *&v304 = v278;
              *(&v304 + 1) = *(&v279 + 1);
              *&v305 = v134;
              *&v296 = v273;
              BYTE8(v296) = v272;
              *&v297 = v271;
              *(&v297 + 1) = v276;
              *&v298 = v281;
              v180 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v303, &v296);

              goto LABEL_123;
            }
          }

          else
          {
            v145 = v143;
            sub_2523E165C(v128, v129, v131, v130);
          }

          sub_2523E2E24(v274, v135, v145, v275);

          sub_2523E2E24(v128, v129, v131, v130);
          goto LABEL_130;
        }

        v281 = 0;
        v232 = v137;
        sub_2523E165C(v128, v129, v131, v130);
        sub_2523E165C(v128, v129, v131, v130);
        v233 = v136;
        v211 = v275;
        sub_2523E165C(v233, 0, v232, v275);
        v209 = v232;
        v135 = v281;

        v210 = v274;

        sub_2523E2E24(v210, 0, v209, v211);
        sub_2523E2E24(v128, v129, v131, v130);
      }

      else
      {
        if (!v135)
        {
          v271 = v141;
          LODWORD(v272) = v139;
          v281 = v142;
          v273 = v138;
          sub_2523E2E24(v128, 0, v131, v130);
          goto LABEL_122;
        }

        v209 = v137;

        v210 = v136;

        v211 = v275;
      }

      sub_2523E2E24(v128, v129, v131, v130);
      sub_2523E2E24(v210, v135, v209, v211);
      goto LABEL_131;
    }

    v104 = v281;
    if (EnumCaseMultiPayload != 5)
    {
      v183 = v278;
      sub_25260D07C(v70, v278, type metadata accessor for Device.Control.Kind);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v184 = v264;
        sub_25260CAD4(v104, v264, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        v180 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
        v181 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
        sub_25260CE88(v184, type metadata accessor for AccessoryControl.AlarmAndTimerConfig);
        v182 = v183;
        goto LABEL_75;
      }

      v185 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig;
      v186 = v183;
LABEL_65:
      sub_25260CE88(v186, v185);
      goto LABEL_66;
    }

    v75 = v279;
    sub_25260D07C(v70, v279, type metadata accessor for Device.Control.Kind);
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA0, &unk_2526A83E0) + 48);
    v106 = *(v75 + v105 + 80);
    v307 = *(v75 + v105 + 64);
    v308 = v106;
    v309 = *(v75 + v105 + 96);
    v107 = *(v75 + v105 + 16);
    v303 = *(v75 + v105);
    v304 = v107;
    v108 = *(v75 + v105 + 48);
    v305 = *(v75 + v105 + 32);
    v306 = v108;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_252385F08(&v303);
      v187 = &qword_27F4DB258;
      v188 = &unk_252696090;
LABEL_62:
      sub_252372288(v75, v187, v188);
      goto LABEL_66;
    }

    v109 = *(v104 + v105 + 80);
    v300 = *(v104 + v105 + 64);
    v301 = v109;
    v302 = *(v104 + v105 + 96);
    v110 = *(v104 + v105 + 16);
    v296 = *(v104 + v105);
    v297 = v110;
    v111 = *(v104 + v105 + 48);
    v298 = *(v104 + v105 + 32);
    v299 = v111;
    v112 = *(v261 + 48);
    v113 = v75;
    v80 = v269;
    sub_2523714D4(v113, v269, &qword_27F4DB258, &unk_252696090);
    sub_2523714D4(v104, v80 + v112, &qword_27F4DB258, &unk_252696090);
    v114 = v268;
    v115 = *(v267 + 48);
    if (v115(v80, 1, v268) == 1)
    {
      if (v115(v80 + v112, 1, v114) == 1)
      {
        sub_252372288(v80, &qword_27F4DB258, &unk_252696090);
        goto LABEL_113;
      }

      sub_252385F08(&v296);
      sub_252385F08(&v303);
    }

    else
    {
      v205 = v247;
      sub_25237153C(v80, v247, &qword_27F4DB258, &unk_252696090);
      if (v115(v80 + v112, 1, v114) != 1)
      {
        v224 = v80 + v112;
        v225 = v242;
        sub_25260CAD4(v224, v242, type metadata accessor for AccessoryControl.ThermostatState);
        v226 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV2eeoiySbAE_AEtFZ_0(v205, v225);
        sub_25260CE88(v225, type metadata accessor for AccessoryControl.ThermostatState);
        sub_25260CE88(v205, type metadata accessor for AccessoryControl.ThermostatState);
        sub_252372288(v80, &qword_27F4DB258, &unk_252696090);
        if ((v226 & 1) == 0)
        {
          sub_252385F08(&v296);
          sub_252385F08(&v303);
          goto LABEL_111;
        }

LABEL_113:
        v293 = v307;
        v294 = v308;
        v295 = v309;
        v289 = v303;
        v290 = v304;
        v291 = v305;
        v292 = v306;
        v286 = v300;
        v287 = v301;
        v288 = v302;
        v282 = v296;
        v283 = v297;
        v284 = v298;
        v285 = v299;
        v180 = _s22HomeAccessoryControlUI0bC0V16ThermostatConfigV2eeoiySbAE_AEtFZ_0(&v289, &v282);
        sub_252385F08(&v296);
        sub_252385F08(&v303);
        goto LABEL_76;
      }

      sub_252385F08(&v296);
      sub_252385F08(&v303);
      sub_25260CE88(v205, type metadata accessor for AccessoryControl.ThermostatState);
    }

    v217 = &qword_27F4DB7C0;
    v218 = &qword_2526960F8;
LABEL_110:
    sub_252372288(v80, v217, v218);
    goto LABEL_111;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v280 = v70;
      sub_25260D07C(v70, v67, type metadata accessor for Device.Control.Kind);
      v98 = *v67;
      v97 = v67[1];
      v100 = v67[2];
      v99 = v67[3];
      v101 = v67[4];
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB428, &qword_2526A8A90) + 48);
      v103 = v281;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_25260CE88(v67 + v102, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_252393F68(v98, v97, v100, v99, v101);
        v70 = v280;
        goto LABEL_66;
      }

      *&v279 = v98;
      *(&v279 + 1) = v97;
      v189 = v103[1];
      v276 = *v103;
      v277 = v189;
      v190 = v103[3];
      v278 = v103[2];
      v191 = v103[4];
      sub_25260CAD4(v67 + v102, v275, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v192 = v103 + v102;
      v193 = v249;
      sub_25260CAD4(v192, v249, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v194 = v101;
      if (v101 == 1)
      {
        v195 = *(&v279 + 1);
        v196 = v280;
        v197 = v99;
        v198 = v100;
        v199 = v279;
        if (v191 == 1)
        {
          sub_252393F68(v279, *(&v279 + 1), v100, v99, 1);
LABEL_120:
          v237 = v275;
          v180 = _s22HomeAccessoryControlUI0bC0V16BinaryViewConfigV2eeoiySbAE_AEtFZ_0(v275, v193);
          sub_25260CE88(v193, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_25260CE88(v237, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_25260CE88(v196, type metadata accessor for Device.Control.Kind);
          return v180 & 1;
        }
      }

      else
      {
        v212 = v190;
        v213 = v279;
        v214 = v191;
        v215 = *(&v279 + 1);
        v303 = v279;
        v198 = v100;
        *&v304 = v100;
        *(&v304 + 1) = v99;
        v197 = v99;
        *&v305 = v194;
        if (v214 != 1)
        {
          LOBYTE(v296) = v276 & 1;
          *(&v296 + 1) = v277;
          LOBYTE(v297) = v278 & 1;
          *(&v297 + 1) = v212;
          *&v298 = v214;
          v234 = v194;
          v235 = v198;
          v236 = _s22HomeAccessoryControlUI0bC0V11BinaryStateV2eeoiySbAE_AEtFZ_0(&v303, &v296);
          sub_25239F750(v213, v215, v235, v197, v234);

          sub_252393F68(v213, v215, v235, v197, v234);
          v196 = v280;
          if (v236)
          {
            goto LABEL_120;
          }

          goto LABEL_99;
        }

        v216 = v194;
        sub_25239F750(v279, *(&v279 + 1), v100, v99, v194);

        v194 = v216;
        v195 = *(&v279 + 1);
        v199 = v279;
        v191 = 1;
        v190 = v212;
        v196 = v280;
      }

      sub_252393F68(v199, v195, v198, v197, v194);
      sub_252393F68(v276, v277, v278, v190, v191);
LABEL_99:
      sub_25260CE88(v193, type metadata accessor for AccessoryControl.BinaryViewConfig);
      sub_25260CE88(v275, type metadata accessor for AccessoryControl.BinaryViewConfig);
      v204 = v196;
      goto LABEL_132;
    }

    sub_25260D07C(v70, v64, type metadata accessor for Device.Control.Kind);
    v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB8, &unk_2526A9020) + 48);
    v173 = v281;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25260CE88(&v64[v172], type metadata accessor for AccessoryControl.IncrementalConfig);
      sub_252372288(v64, &qword_27F4DB218, &unk_252696080);
      goto LABEL_66;
    }

    v174 = v260;
    sub_25260CAD4(&v64[v172], v260, type metadata accessor for AccessoryControl.IncrementalConfig);
    v175 = v259;
    sub_25260CAD4(v173 + v172, v259, type metadata accessor for AccessoryControl.IncrementalConfig);
    v176 = *(v252 + 48);
    v177 = v258;
    sub_2523714D4(v64, v258, &qword_27F4DB218, &unk_252696080);
    sub_2523714D4(v173, v177 + v176, &qword_27F4DB218, &unk_252696080);
    v178 = v257;
    v179 = *(v256 + 48);
    if (v179(v177, 1, v257) == 1)
    {
      if (v179(v177 + v176, 1, v178) == 1)
      {
        sub_252372288(v177, &qword_27F4DB218, &unk_252696080);
LABEL_52:
        v180 = _s22HomeAccessoryControlUI0bC0V17IncrementalConfigV2eeoiySbAE_AEtFZ_0(v174, v175);
        v181 = type metadata accessor for AccessoryControl.IncrementalConfig;
        sub_25260CE88(v175, type metadata accessor for AccessoryControl.IncrementalConfig);
        v182 = v174;
        goto LABEL_75;
      }
    }

    else
    {
      v206 = v245;
      sub_25237153C(v177, v245, &qword_27F4DB218, &unk_252696080);
      if (v179(v177 + v176, 1, v178) != 1)
      {
        v227 = v177 + v176;
        v228 = v240;
        sub_25260CAD4(v227, v240, type metadata accessor for AccessoryControl.IncrementalState);
        if (sub_25268ED60())
        {
          v229 = *(v178 + 20);
          v230 = *(v206 + v229);
          v231 = *(v228 + v229);
          sub_25260CE88(v228, type metadata accessor for AccessoryControl.IncrementalState);
          sub_25260CE88(v206, type metadata accessor for AccessoryControl.IncrementalState);
          sub_252372288(v177, &qword_27F4DB218, &unk_252696080);
          if (v230 == v231)
          {
            goto LABEL_52;
          }

LABEL_91:
          v126 = type metadata accessor for AccessoryControl.IncrementalConfig;
          sub_25260CE88(v175, type metadata accessor for AccessoryControl.IncrementalConfig);
          v127 = v174;
          goto LABEL_92;
        }

        sub_25260CE88(v228, type metadata accessor for AccessoryControl.IncrementalState);
        sub_25260CE88(v206, type metadata accessor for AccessoryControl.IncrementalState);
        v207 = &qword_27F4DB218;
        v208 = &unk_252696080;
LABEL_90:
        sub_252372288(v177, v207, v208);
        goto LABEL_91;
      }

      sub_25260CE88(v206, type metadata accessor for AccessoryControl.IncrementalState);
    }

    v207 = &qword_27F4DB7B0;
    v208 = &qword_2526960E8;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v75 = v277;
      sub_25260D07C(v70, v277, type metadata accessor for Device.Control.Kind);
      v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FA8, &unk_2526A83F0) + 48);
      v303 = *(v75 + v76);
      *&v304 = *(v75 + v76 + 16);
      v77 = v281;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v296 = *(v77 + v76);
        *&v297 = *(v77 + v76 + 16);
        v78 = *(v253 + 48);
        v79 = v75;
        v80 = v265;
        sub_2523714D4(v79, v265, &qword_27F4DB2A0, &qword_25269E4A0);
        sub_2523714D4(v77, v80 + v78, &qword_27F4DB2A0, &qword_25269E4A0);
        v81 = v263;
        v82 = *(v262 + 48);
        if (v82(v80, 1, v263) == 1)
        {
          if (v82(v80 + v78, 1, v81) == 1)
          {
            sub_252372288(v80, &qword_27F4DB2A0, &qword_25269E4A0);
LABEL_105:
            v289 = v303;
            *&v290 = v304;
            v282 = v296;
            *&v283 = v297;
            v180 = _s22HomeAccessoryControlUI0bC0V17ColorPickerConfigV2eeoiySbAE_AEtFZ_0(&v289, &v282);
            sub_252394280(&v296);
            sub_252394280(&v303);
            goto LABEL_76;
          }

          sub_252394280(&v296);
          sub_252394280(&v303);
        }

        else
        {
          v202 = v246;
          sub_25237153C(v80, v246, &qword_27F4DB2A0, &qword_25269E4A0);
          if (v82(v80 + v78, 1, v81) != 1)
          {
            v219 = v80 + v78;
            v220 = v241;
            sub_25260CAD4(v219, v241, type metadata accessor for AccessoryControl.ColorState);
            v221 = _s22HomeAccessoryControlUI0bC0V10ColorStateV2eeoiySbAE_AEtFZ_0(v202, v220);
            sub_25260CE88(v220, type metadata accessor for AccessoryControl.ColorState);
            sub_25260CE88(v202, type metadata accessor for AccessoryControl.ColorState);
            sub_252372288(v80, &qword_27F4DB2A0, &qword_25269E4A0);
            if (v221)
            {
              goto LABEL_105;
            }

            sub_252394280(&v296);
            sub_252394280(&v303);
            goto LABEL_111;
          }

          sub_252394280(&v296);
          sub_252394280(&v303);
          sub_25260CE88(v202, type metadata accessor for AccessoryControl.ColorState);
        }

        v217 = &qword_27F4DB7B8;
        v218 = &qword_2526960F0;
        goto LABEL_110;
      }

      sub_252394280(&v303);
      v187 = &qword_27F4DB2A0;
      v188 = &qword_25269E4A0;
      goto LABEL_62;
    }

    sub_25260D07C(v70, v56, type metadata accessor for Device.Control.Kind);
    v151 = *v56;
    v150 = *(v56 + 1);
    v152 = v56[16];
    v153 = v281;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v154 = *v153;
      v155 = v153[1];
      v156 = *(v153 + 16);
      if (v151 == v154 && v150 == v155)
      {

        if (v152 != v156)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v201 = sub_2526933B0();

        if (v201 & 1) == 0 || ((v152 ^ v156))
        {
          goto LABEL_111;
        }
      }

LABEL_79:
      sub_25260CE88(v70, type metadata accessor for Device.Control.Kind);
      v180 = 1;
      return v180 & 1;
    }

LABEL_66:
    sub_252372288(v70, &qword_27F4E37A8, &qword_2526A9B88);
LABEL_133:
    v180 = 0;
    return v180 & 1;
  }

  sub_25260D07C(v70, v61, type metadata accessor for Device.Control.Kind);
  v116 = *v61;
  v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E2FB0, &unk_2526A8400) + 48);
  v118 = v281;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v185 = type metadata accessor for AccessoryControl.PickerViewConfig;
    v186 = &v61[v117];
    goto LABEL_65;
  }

  v119 = v61[8];
  v120 = *v118;
  v121 = *(v118 + 8);
  v122 = &v61[v117];
  v123 = v255;
  sub_25260CAD4(v122, v255, type metadata accessor for AccessoryControl.PickerViewConfig);
  v124 = v118 + v117;
  v125 = v254;
  sub_25260CAD4(v124, v254, type metadata accessor for AccessoryControl.PickerViewConfig);
  if (v119)
  {
    if (!v121)
    {
LABEL_27:
      v126 = type metadata accessor for AccessoryControl.PickerViewConfig;
      sub_25260CE88(v125, type metadata accessor for AccessoryControl.PickerViewConfig);
      v127 = v123;
LABEL_92:
      sub_25260CE88(v127, v126);
      goto LABEL_111;
    }
  }

  else
  {
    if (v116 == v120)
    {
      v200 = v121;
    }

    else
    {
      v200 = 1;
    }

    if (v200)
    {
      goto LABEL_27;
    }
  }

  v180 = _s22HomeAccessoryControlUI0bC0V16PickerViewConfigV2eeoiySbAE_AEtFZ_0(v123, v125);
  v181 = type metadata accessor for AccessoryControl.PickerViewConfig;
  sub_25260CE88(v125, type metadata accessor for AccessoryControl.PickerViewConfig);
  v182 = v123;
LABEL_75:
  sub_25260CE88(v182, v181);
LABEL_76:
  sub_25260CE88(v70, type metadata accessor for Device.Control.Kind);
  return v180 & 1;
}