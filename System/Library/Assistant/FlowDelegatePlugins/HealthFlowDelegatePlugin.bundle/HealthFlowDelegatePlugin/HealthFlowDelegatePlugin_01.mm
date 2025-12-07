uint64_t sub_1B3CC@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v7 - 8);
  v9 = v15 - v8;
  sub_72840();
  sub_72840();
  sub_7C78(v17, v17[3]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_752C0;
  *(v10 + 32) = a2;
  v11 = sub_721F0();
  (*(*(v11 - 8) + 16))(v9, a3, v11);
  sub_7CC4(v9, 0, 1, v11);
  v12 = sub_72890();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  a4[3] = v12;
  a4[4] = &protocol witness table for AceOutput;
  sub_5BAC(a4);
  v13 = a2;
  sub_72100();

  sub_AEF4(v15, &unk_A6D20, &qword_76D80);
  sub_AEF4(v9, &qword_A4050, &unk_75290);
  sub_AE38(v18);
  return sub_AE38(v17);
}

uint64_t sub_1B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = a8;

  sub_19ABC(v13, v14, v15, v16, v17, a6, sub_1B80C, v12, a9);
}

unint64_t sub_1B720()
{
  result = qword_A4CF0;
  if (!qword_A4CF0)
  {
    sub_D850(&qword_A4CF8, &qword_75FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4CF0);
  }

  return result;
}

uint64_t sub_1B78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for WorkoutsDisambiguationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for WorkoutsDisambiguationError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1B908);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B94C()
{
  result = qword_A4D18;
  if (!qword_A4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D18);
  }

  return result;
}

uint64_t sub_1B9B8(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1B9D8(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1BA10()
{

  return swift_slowAlloc();
}

void sub_1BA34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t getEnumTagSinglePayload for HealthReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
        JUMPOUT(0x1BBA8);
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BBE4()
{
  result = qword_A4D20;
  if (!qword_A4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D20);
  }

  return result;
}

unint64_t sub_1BC38(uint64_t a1, uint64_t a2)
{
  v2 = sub_73DC0();

  if (v2 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BC8C(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      return 0x7468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_27;
    case 13:
      v6 = 1920298854;
      goto LABEL_27;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_27;
    case 18:
      v6 = 1701734766;
LABEL_27:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C02C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC38(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A0();
  v5 = sub_1C1F4();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_1C0F4()
{
  result = qword_A4D28;
  if (!qword_A4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D28);
  }

  return result;
}

unint64_t sub_1C14C()
{
  result = qword_A4D30;
  if (!qword_A4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D30);
  }

  return result;
}

unint64_t sub_1C1A0()
{
  result = qword_A4D38;
  if (!qword_A4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D38);
  }

  return result;
}

unint64_t sub_1C1F4()
{
  result = qword_A4D40;
  if (!qword_A4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D40);
  }

  return result;
}

uint64_t sub_1C248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_72270();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v10);
  v12 = (&v15 - v11);
  sub_14DA4(a1, &v15 - v11);
  result = swift_getEnumCaseMultiPayload();
  v14 = result;
  if (result == 1)
  {
    *a3 = *v12;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1D340(a2, a3);
    result = (*(v7 + 8))(v9, v6);
  }

  *(a3 + 40) = v14 == 1;
  return result;
}

uint64_t sub_1C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v120 = a8;
  v121 = a7;
  v117 = a5;
  v118 = a4;
  v119 = a3;
  v125 = sub_506C(&qword_A4E00, &qword_763C0);
  __chkstk_darwin(v125);
  v122 = (&v110 - v8);
  v9 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v9 - 8);
  sub_C2A4();
  v113 = v11 - v10;
  sub_731D0();
  sub_5394();
  v114 = v13;
  v115 = v12;
  __chkstk_darwin(v12);
  sub_C2A4();
  v112 = v15 - v14;
  v16 = sub_72830();
  sub_5394();
  v18 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v110 - v23;
  v116 = sub_73970();
  v123 = sub_734D0();
  v25 = *v123;
  v124 = sub_506C(&qword_A3BA8, &unk_76BA0);
  v26 = swift_allocObject();
  v110 = xmmword_74F60;
  *(v26 + 16) = xmmword_74F60;
  v127 = 0;
  v128 = 0xE000000000000000;
  v27 = v25;
  sub_727E0();
  sub_73C40();
  v111 = v18;
  v28 = *(v18 + 8);
  v28(v24, v16);
  v30 = v127;
  v29 = v128;
  *(v26 + 56) = &type metadata for String;
  v31 = sub_5258();
  *(v26 + 64) = v31;
  *(v26 + 32) = v30;
  *(v26 + 40) = v29;
  *(v26 + 96) = sub_ADF8(0, &qword_A4E08, INIntentResolutionResult_ptr);
  *(v26 + 104) = sub_1DA00();
  v32 = v117;
  *(v26 + 72) = v117;
  v33 = v32;
  sub_73620(v116, &dword_0, v27, "Disambiguation input: %@ with result %@", 39, 2, v26);

  v34 = v118;

  v35 = sub_453DC(v119, v34);
  if (v35 == 5)
  {
    v36 = type metadata accessor for HealthFlowError();
    v37 = sub_1DAA4(v36);
    v38 = sub_B5BC(2);
    sub_73980();
    v39 = sub_1DA80();
    *(v39 + 16) = xmmword_74B40;
    v40 = v37;
    v41 = sub_B4FC();
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v31;
LABEL_12:
    *(v39 + 32) = v41;
    *(v39 + 40) = v42;
    sub_1DAC0(v41, &dword_0, v43, "StartWorkout- Needs Value Strategy: %@");

    sub_1DA68();
    v77 = sub_1D9B8(v75, 255, v76, &unk_7567C);
    v78 = sub_1DAF8(v77);
    *v79 = v38;
    v80 = v122;
    *v122 = v78;
    swift_storeEnumTagMultiPayload();

    v121(v80);

    return sub_AEF4(v80, &qword_A4E00, &qword_763C0);
  }

  v44 = v35;
  v119 = v31;
  sub_727E0();
  v45 = v111;
  if ((*(v111 + 88))(v22, v16) != enum case for Parse.NLv3IntentOnly(_:))
  {
    v28(v22, v16);
    v72 = type metadata accessor for HealthFlowError();
    v73 = sub_1DAA4(v72);
    v38 = sub_B5BC(0);
    sub_73980();
    v39 = sub_1DA80();
    *(v39 + 16) = xmmword_74B40;
    v40 = v73;
    v41 = sub_B4FC();
    v74 = v119;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v74;
    goto LABEL_12;
  }

  (*(v45 + 96))(v22, v16);
  v46 = v114;
  v47 = v115;
  v48 = v112;
  (*(v114 + 32))(v112, v22, v115);
  v49 = v113;
  (*(v46 + 16))(v113, v48, v47);
  v118 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v50 = sub_5C4C8(v49);
  v51 = sub_73970();
  v52 = *v123;
  v53 = swift_allocObject();
  *(v53 + 16) = v110;
  v54 = v52;
  v55 = sub_5A9F8();
  v56 = v119;
  *(v53 + 56) = &type metadata for String;
  *(v53 + 64) = v56;
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  v58 = [v50 description];
  v59 = sub_73790();
  v61 = v60;

  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v56;
  *(v53 + 72) = v59;
  *(v53 + 80) = v61;
  sub_73620(v51, &dword_0, v54, "Updated Health Intent: %@ and Workout Itent: %@", 47, 2, v53);

  v62 = v50;

  v63 = [v50 verb];
  v64 = sub_73790();
  v66 = v65;

  if (v64 == 0x6C65636E6163 && v66 == 0xE600000000000000)
  {

    goto LABEL_15;
  }

  v68 = sub_73DB0();

  if (v68)
  {
LABEL_15:
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v82 = sub_B5BC(9);
    sub_1DA68();
    sub_1D9B8(v83, 255, v84, &unk_7567C);
    v85 = swift_allocError();
    *v86 = v82;
    v87 = v122;
    *v122 = v85;
    swift_storeEnumTagMultiPayload();

    v121(v87);

    sub_AEF4(v87, &qword_A4E00, &qword_763C0);
    sub_BFD8(v113);
    v88 = sub_1DAE4();
    return v89(v88);
  }

  v69 = v123;
  switch(v44)
  {
    case 1:
      v70 = [v50 workoutGoalUnitType];
      type metadata accessor for INWorkoutGoalUnitType(0);
      goto LABEL_20;
    case 2:
      v70 = [v50 workoutLocationType];
      type metadata accessor for INWorkoutLocationType(0);
      goto LABEL_20;
    case 3:
      v91 = sub_73A00();
      v93 = v92;
      v129 = sub_506C(&qword_A4E28, &qword_763D8);
      v127 = v91;
      LOBYTE(v128) = v93 & 1;
      goto LABEL_21;
    case 4:
      v90 = sub_739E0();
      v129 = sub_506C(&qword_A4E18, &qword_763C8);
      LOBYTE(v127) = v90;
      goto LABEL_21;
    default:
      v70 = [v50 workoutName];
      v71 = sub_506C(&qword_A4838, &qword_763E0);
LABEL_20:
      v129 = v71;
      v127 = v70;
LABEL_21:
      v95 = v121;
      v94 = v122;
      v96 = sub_73970();
      v97 = *v69;
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_74B40;
      v99 = v97;
      v100 = [v62 description];
      v101 = v62;
      v102 = sub_73790();
      v104 = v103;

      v105 = v119;
      *(v98 + 56) = &type metadata for String;
      *(v98 + 64) = v105;
      *(v98 + 32) = v102;
      *(v98 + 40) = v104;
      sub_73620(v96, &dword_0, v99, "Updated intent after prompting for value: %@", 44, 2, v98);

      sub_14E68(&v127, v126);
      v106 = v101;
      sub_722A0();
      v107 = sub_506C(&qword_A4E20, &qword_763D0);
      sub_7CC4(v94, 0, 1, v107);
      swift_storeEnumTagMultiPayload();
      v95(v94);

      sub_AEF4(v94, &qword_A4E00, &qword_763C0);
      sub_BFD8(v113);
      v108 = sub_1DAE4();
      v109(v108);
      result = sub_AE38(&v127);
      break;
  }

  return result;
}

uint64_t sub_1CDDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v61 = a7;
  sub_73390();
  sub_5394();
  v60 = v10;
  __chkstk_darwin(v11);
  sub_C2A4();
  v14 = v13 - v12;
  v15 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_721F0();
  sub_5394();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_C2A4();
  v24 = v23 - v22;

  v25 = sub_453DC(a3, a4);
  if (v25 == 5)
  {
    v26 = type metadata accessor for HealthFlowError();
    sub_1DAA4(v26);
    v27 = sub_B5BC(2);
    sub_73980();
    v28 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_74B40;
    v30 = v28;
    v31 = sub_B4FC();
    v33 = v32;
    *(v29 + 56) = &type metadata for String;
    v34 = sub_5258();
    *(v29 + 64) = v34;
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    sub_1DAC0(v34, &dword_0, v35, "StartWorkout- Needs Value Strategy: %@");

    sub_1DA68();
    v38 = sub_1D9B8(v36, 255, v37, &unk_7567C);
    v39 = sub_1DAF8(v38);
    *v40 = v27;
    v63 = v39;
    v65 = 1;

    a6(&v63);

    return sub_AEF4(&v63, &qword_A4810, &unk_760A0);
  }

  else
  {
    v42 = v25;
    v43 = sub_73970();
    v44 = sub_734D0();
    v58 = v18;
    v45 = *v44;
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v46 = swift_allocObject();
    v59 = xmmword_74B40;
    *(v46 + 16) = xmmword_74B40;
    v63 = 0;
    v64 = 0xE000000000000000;
    v62 = v42;
    v47 = v45;
    sub_73C40();
    v56 = a6;
    v57 = v20;
    v48 = v63;
    v49 = v64;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_5258();
    *(v46 + 32) = v48;
    *(v46 + 40) = v49;
    sub_73620(v43, &dword_0, v47, "Generating prompt to get value for : %@", 39, 2, v46);

    sub_37344(v50);
    sub_506C(&qword_A4648, &qword_758E8);
    v51 = swift_allocObject();
    *(v51 + 16) = v59;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_32DAC(3);
    v52 = v64;
    *(v51 + 32) = v63;
    *(v51 + 40) = v52;
    sub_721C0();
    sub_73280();
    v53 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v54 = swift_allocObject();
    *(v54 + 16) = v59;
    sub_73380();
    v63 = v54;
    sub_1D9B8(&unk_A6CE0, 255, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    sub_4F648(v53, v14);
    sub_4F78C(v42, 0);

    sub_1C248(v17, v24, &v63);
    v56(&v63);
    sub_AEF4(&v63, &qword_A4810, &unk_760A0);
    sub_AEF4(v17, &unk_A6CD0, &unk_75B80);
    return (*(v57 + 8))(v24, v58);
  }
}

uint64_t sub_1D340@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a3[3] = v9;
  a3[4] = &protocol witness table for AceOutput;
  sub_5BAC(a3);
  sub_720E0();
  sub_AEF4(v11, &unk_A6D20, &qword_76D80);
  sub_AEF4(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

uint64_t sub_1D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return sub_72690();
}

uint64_t sub_1D704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_1D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();
  *v16 = v8;
  v16[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

uint64_t sub_1D9B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA00()
{
  result = qword_A4E10;
  if (!qword_A4E10)
  {
    sub_ADF8(255, &qword_A4E08, INIntentResolutionResult_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4E10);
  }

  return result;
}

uint64_t sub_1DA80()
{

  return swift_allocObject();
}

uint64_t sub_1DAA4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1DAC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_73620(v4, a2, v6, a4, 38, 2, v5);
}

uint64_t sub_1DAF8(uint64_t a1)
{

  return swift_allocError();
}

void sub_1DB18()
{
  sub_11784();
  v1 = v0;
  v2 = sub_73720();
  sub_5394();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  if (sub_114FC(v1))
  {
    if (sub_114FC(v1) == 1)
    {
      sub_11500();
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_73B70();
      }

      else
      {
        v10 = *(v1 + 32);
      }

      v11 = sub_736E0();
      sub_7EEC(v11, v41);
      sub_2222C();
      v12();

      v13 = sub_73710();
      v14 = sub_73970();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = sub_221D8();
        v16 = sub_14F88();
        v39[1] = v10;
        v40 = v16;
        *v15 = 136315138;
        sub_733D0();
        sub_22104();
        sub_22068(v17, 255, v18, &protocol conformance descriptor for App);
        v19 = sub_73DA0();
        v21 = sub_19144(v19, v20, &v40);

        *(v15 + 4) = v21;
        sub_222C4(&dword_0, v22, v23, "Only found 1 app, %s so we're using that");
        sub_AE38(v16);
        sub_22180();
        sub_7EBC(v15);
      }

      v24 = sub_5388();
      v25(v24);
      sub_72300();
      sub_722F0();
    }

    else
    {
      v31 = sub_736E0();
      sub_7EEC(v31, v41);
      v32 = sub_221F0();
      v33(v32);
      v34 = sub_73710();
      v35 = sub_73970();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_22324();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "Disambiguating apps", v36, 2u);
        sub_7EBC(v36);
      }

      v37 = sub_7F34();
      v38(v37);
      sub_72300();
      sub_722E0();
    }
  }

  else
  {
    v26 = sub_736E0();
    sub_7EEC(v26, v41);
    sub_2222C();
    v27();
    v28 = sub_73710();
    v29 = sub_73970();
    if (sub_22238(v29))
    {
      v30 = sub_22324();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "No apps found using AppFinder", v30, 2u);
      sub_7EBC(v30);
    }

    (*(v4 + 8))(v9, v2);
    sub_72300();
    sub_722D0();
  }

  sub_11754();
}

void sub_1DEF8(uint64_t a1)
{
  v1._countAndFlagsBits = sub_733B0();
  if (v1._object && (v2 = sub_734B0(v1), , v2))
  {
    sub_72300();
    sub_722F0();
  }

  else
  {

    sub_1DB18();
  }
}

uint64_t sub_1DFB4()
{
  sub_7F1C();
  v1[34] = v2;
  v1[35] = v0;
  v3 = sub_731F0();
  v1[36] = v3;
  sub_7E94(v3);
  v1[37] = v4;
  v1[38] = sub_7ED4();
  v5 = sub_72830();
  v1[39] = v5;
  sub_7E94(v5);
  v1[40] = v6;
  v1[41] = sub_7ED4();
  v7 = sub_73720();
  v1[42] = v7;
  sub_7E94(v7);
  v1[43] = v8;
  v1[44] = sub_2228C();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v9 = sub_221BC();

  return _swift_task_switch(v9);
}

uint64_t sub_1E12C(uint64_t a1)
{
  v72 = v1;
  v2 = v1[43];
  v3 = sub_736E0();
  v1[50] = v3;
  sub_7EEC(v3, (v1 + 12));
  v1[51] = *(v2 + 16);
  v1[52] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = sub_7F34();
  v70 = v5;
  v5(v4);

  v6 = sub_73710();
  v7 = sub_73970();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[49];
  v11 = v1[42];
  v10 = v1[43];
  if (v8)
  {
    v12 = v1[35];
    v67 = v1[49];
    v13 = sub_221D8();
    v14 = sub_14F88();
    v71 = v14;
    *v13 = 136315138;
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);

    v17 = sub_19144(v15, v16, &v71);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "Starting to resolve apps for %s", v13, 0xCu);
    sub_AE38(v14);
    sub_22180();
    sub_7EBC(v13);

    v18 = *(v10 + 8);
    v18(v67, v11);
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v1[53] = v18;
  v20 = v1[40];
  v19 = v1[41];
  v21 = v1[39];
  sub_727E0();
  sub_DDA8(v19);
  v23 = v22;
  v24 = *(v20 + 8);
  v24(v19, v21);
  if (v23)
  {
    sub_7EEC(v3, (v1 + 27));
    v25 = sub_7F34();
    v70(v25);

    v26 = sub_73710();
    v27 = sub_73970();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v1[48];
    v30 = v1[42];
    if (v28)
    {
      v68 = v18;
      v31 = sub_221D8();
      v32 = sub_14F88();
      v71 = v32;
      *v31 = 136315138;
      v1[33] = v23;
      sub_733D0();
      sub_22104();
      sub_22068(v33, 255, v34, &protocol conformance descriptor for App);
      v35 = sub_73DA0();
      v37 = sub_19144(v35, v36, &v71);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_0, v26, v27, "Found app in intent, using that (%s)", v31, 0xCu);
      sub_AE38(v32);
      sub_7EBC(v32);
      sub_22180();

      v68(v29, v30);
    }

    else
    {

      v18(v29, v30);
    }

    if (qword_A38C8 != -1)
    {
      sub_2219C(&qword_A38C8);
    }

    v54 = v1[35];
    v56 = *(v54 + 16);
    v55 = *(v54 + 24);

    sub_5263C(v56, v55, v23, 9);

    sub_72300();
    sub_722F0();

    sub_22250();

    sub_22200();
    sub_22210();

    __asm { BRAA            X2, X16 }
  }

  v69 = v18;
  v38 = v1[41];
  v39 = v1[39];
  sub_727E0();
  sub_ED34(v38);
  v41 = v40;
  v66 = v42;
  v1[54] = v42;
  v1[55] = v40;
  v24(v38, v39);
  sub_7EEC(v3, (v1 + 15));
  v43 = sub_5388();
  v70(v43);

  v44 = sub_73710();
  v45 = sub_73970();

  v46 = os_log_type_enabled(v44, v45);
  v47 = v1[47];
  v48 = v1[42];
  if (v46)
  {
    v49 = sub_221D8();
    v50 = sub_14F88();
    v71 = v50;
    *v49 = 136315138;
    v1[30] = v66;
    v1[31] = v41;
    sub_506C(&qword_A6D00, &unk_75D30);
    v51 = sub_73A80();
    v53 = sub_19144(v51, v52, &v71);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v44, v45, "Got a modality: %s", v49, 0xCu);
    sub_AE38(v50);
    sub_7EBC(v50);
    sub_7EBC(v49);
  }

  v69(v47, v48);
  v59 = v1[35];
  sub_21FC0(v59 + 32, (v1 + 7));
  sub_7C78(v1 + 7, v1[10]);
  v60 = sub_221CC();
  v61(v60);
  sub_AE38(v1 + 7);
  v1[56] = *(v59 + 24);

  v1[57] = sub_4C4BC(&off_97DB8);
  v62 = swift_task_alloc();
  v1[58] = v62;
  *v62 = v1;
  v62[1] = sub_1E778;
  sub_7F34();
  sub_22210();

  return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)(v63);
}

uint64_t sub_1E778()
{
  sub_7F1C();
  sub_B0BC();
  v1 = *v0;
  sub_B044();
  *v2 = v1;
  *(v4 + 472) = v3;

  v5 = sub_221BC();

  return _swift_task_switch(v5);
}

uint64_t sub_1E89C()
{
  v46 = v0;
  v1 = *(v0 + 408);
  sub_7EEC(*(v0 + 400), v0 + 144);
  v2 = sub_5388();
  v1(v2);

  v3 = sub_73710();
  v4 = sub_73970();
  v5 = sub_22238(v4);
  v6 = *(v0 + 472);
  if (v5)
  {
    v7 = sub_221D8();
    *v7 = 134217984;
    *(v7 + 4) = sub_114FC(v6);

    _os_log_impl(&dword_0, v3, v4, "Found %ld apps", v7, 0xCu);
    sub_7EBC(v7);
  }

  else
  {
  }

  (*(v0 + 424))(*(v0 + 368), *(v0 + 336));
  sub_7C78((v0 + 16), *(v0 + 40));
  sub_221CC();
  if (sub_71EF0())
  {
    v8 = *(v0 + 408);
    v9 = *(v0 + 400);
    v10 = *(v0 + 360);
    v11 = *(v0 + 336);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v14 = *(v0 + 288);
    sub_73460();
    v15 = sub_73430();
    v16 = defaultWorkoutApp(for:workoutName:)(v12, v15);
    (*(v13 + 8))(v12, v14);
    sub_7EEC(v9, v0 + 192);
    v8(v10, v9, v11);

    v17 = sub_73710();
    v18 = sub_73970();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 424);
    v21 = *(v0 + 360);
    v22 = *(v0 + 336);
    if (v19)
    {
      v23 = sub_221D8();
      v24 = sub_14F88();
      v45 = v24;
      *v23 = 136315138;
      *(v0 + 256) = v16;
      sub_733D0();
      sub_22104();
      sub_22068(v25, 255, v26, &protocol conformance descriptor for App);
      v27 = sub_73DA0();
      v29 = sub_19144(v27, v28, &v45);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_0, v17, v18, "Picked the default app for this:  %s", v23, 0xCu);
      sub_AE38(v24);
      sub_7EBC(v24);
      sub_22180();

      v20(v21, v22);
    }

    else
    {

      v20(v21, v22);
    }

    v41 = sub_221CC();
    sub_1DEF8(v41);
  }

  else
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 400);

    sub_7EEC(v31, v0 + 168);
    v32 = sub_5388();
    v30(v32);
    v33 = sub_73710();
    v34 = sub_73970();
    if (sub_22238(v34))
    {
      v35 = sub_22324();
      *v35 = 0;
      sub_222A4(&dword_0, v36, v37, "Going to full disambiguation");
      sub_7EBC(v35);
    }

    v38 = *(v0 + 424);
    v39 = *(v0 + 352);
    v40 = *(v0 + 336);

    v38(v39, v40);
    sub_1DB18();
  }

  sub_AE38((v0 + 16));
  sub_22250();

  v42 = sub_22200();

  return v43(v42);
}

uint64_t sub_1ED08()
{
  sub_7F1C();
  v1 = sub_73720();
  v0[5] = v1;
  sub_7E94(v1);
  v0[6] = v2;
  v0[7] = sub_7ED4();
  v3 = sub_221BC();

  return _swift_task_switch(v3);
}

uint64_t sub_1EDA8(uint64_t a1)
{
  v2 = sub_736E0();
  sub_7EEC(v2, v1 + 16);
  v3 = sub_221F0();
  v4(v3);
  v5 = sub_73710();
  v6 = sub_73980();
  if (sub_22238(v6))
  {
    v7 = sub_22324();
    *v7 = 0;
    sub_222A4(&dword_0, v8, v9, "We are trying to confirm, but we don't support that.");
    sub_7EBC(v7);
  }

  v10 = sub_221CC();
  v11(v10);
  v12 = sub_72090();
  sub_22274(v12);
  v13 = sub_72080();
  sub_22068(&qword_A4FD0, 255, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  swift_allocError();
  *v14 = v13;
  swift_willThrow();

  sub_7EA4();

  return v15();
}

void sub_1EF40()
{
  sub_11784();
  v58 = v0;
  v2 = v1;
  v3 = sub_73720();
  sub_5394();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = sub_72830();
  sub_5394();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v60 = v2;
  sub_727E0();
  v59 = v11;
  v57 = sub_737A0();
  v19 = v18;
  v20 = sub_736E0();
  sub_7EEC(v20, &v63);
  v54 = *(v5 + 16);
  v55 = v20;
  sub_2222C();
  v21();

  v22 = sub_73710();
  LOBYTE(v11) = sub_73970();

  if (os_log_type_enabled(v22, v11))
  {
    v23 = sub_221D8();
    v53 = v3;
    v24 = v23;
    v25 = sub_14F88();
    v52 = v5;
    v26 = v25;
    v62[0] = v25;
    *v24 = 136315138;
    v27 = sub_19144(v57, v19, v62);

    *(v24 + 4) = v27;
    sub_22304(&dword_0, v28, v29, "Got disambiguation parse %s");
    sub_AE38(v26);
    v30 = v26;
    v5 = v52;
    sub_7EBC(v30);
    v31 = v24;
    v3 = v53;
    sub_7EBC(v31);
  }

  else
  {
  }

  v32 = *(v5 + 8);
  v32(v10, v3);
  sub_727E0();
  sub_DDA8(v17);
  v34 = v33;
  (*(v13 + 8))(v17, v59);
  if (v34)
  {
    if (qword_A38C8 != -1)
    {
      sub_2219C(&qword_A38C8);
    }

    v35 = sub_221CC();
    sub_5263C(v35, v36, v34, 3);

    sub_725B0();
    sub_725A0();
  }

  else
  {
    v37 = v32;
    sub_727E0();
    v38 = sub_737A0();
    v40 = v39;
    sub_7EEC(v55, v62);
    v41 = v56;
    sub_2222C();
    v54();
    v42 = sub_73710();
    v43 = sub_73980();
    if (sub_22238(v43))
    {
      v44 = v3;
      v45 = sub_221D8();
      v46 = sub_14F88();
      v61 = v46;
      *v45 = 136315138;
      v47 = sub_19144(v38, v40, &v61);

      *(v45 + 4) = v47;
      sub_22304(&dword_0, v48, v49, "Failed to find app after successful disambiguation from %s");
      sub_AE38(v46);
      sub_7EBC(v46);
      sub_7EBC(v45);

      v50 = v41;
      v51 = v44;
    }

    else
    {

      v50 = v41;
      v51 = v3;
    }

    v37(v50, v51);
    sub_725B0();
    sub_72590();
  }

  sub_11754();
}

uint64_t sub_1F37C()
{
  sub_7F1C();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_506C(&qword_A4050, &unk_75290);
  sub_B1C0(v4);
  v1[36] = sub_7ED4();
  v5 = sub_72B80();
  v1[37] = v5;
  sub_7E94(v5);
  v1[38] = v6;
  v1[39] = sub_2228C();
  v1[40] = swift_task_alloc();
  v7 = sub_72BB0();
  v1[41] = v7;
  sub_7E94(v7);
  v1[42] = v8;
  v1[43] = sub_2228C();
  v1[44] = swift_task_alloc();
  v9 = sub_729C0();
  sub_B1C0(v9);
  v1[45] = sub_7ED4();
  v10 = sub_72B20();
  v1[46] = v10;
  sub_7E94(v10);
  v1[47] = v11;
  v1[48] = sub_2228C();
  v1[49] = swift_task_alloc();
  v12 = sub_72AB0();
  v1[50] = v12;
  sub_7E94(v12);
  v1[51] = v13;
  v1[52] = sub_7ED4();
  v14 = sub_506C(&qword_A4FB8, &qword_765F8);
  sub_B1C0(v14);
  v1[53] = sub_7ED4();
  v15 = sub_72040();
  v1[54] = v15;
  sub_7E94(v15);
  v1[55] = v16;
  v1[56] = sub_7ED4();
  v17 = sub_71FA0();
  v1[57] = v17;
  sub_7E94(v17);
  v1[58] = v18;
  v1[59] = sub_7ED4();
  v19 = sub_72670();
  v1[60] = v19;
  sub_7E94(v19);
  v1[61] = v20;
  v1[62] = sub_7ED4();
  v21 = sub_71560();
  v1[63] = v21;
  sub_7E94(v21);
  v1[64] = v22;
  v1[65] = sub_7ED4();
  v23 = sub_721F0();
  v1[66] = v23;
  sub_7E94(v23);
  v1[67] = v24;
  v1[68] = sub_7ED4();
  v25 = sub_71F70();
  sub_B1C0(v25);
  v1[69] = sub_7ED4();
  v26 = sub_72580();
  v1[70] = v26;
  sub_7E94(v26);
  v1[71] = v27;
  v1[72] = sub_7ED4();
  v28 = sub_73720();
  v1[73] = v28;
  sub_7E94(v28);
  v1[74] = v29;
  v1[75] = sub_2228C();
  v1[76] = swift_task_alloc();
  v30 = sub_221BC();

  return _swift_task_switch(v30);
}

uint64_t sub_1F7E4(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  v5 = sub_736E0();
  *(v1 + 616) = v5;
  sub_7EEC(v5, v1 + 168);
  v6 = *(v3 + 16);
  *(v1 + 624) = v6;
  *(v1 + 632) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);

  v7 = sub_73710();
  LOBYTE(v5) = sub_73970();

  v8 = os_log_type_enabled(v7, v5);
  v9 = *(v1 + 592);
  if (v8)
  {
    v10 = sub_221D8();
    v11 = sub_14F88();
    v34 = v11;
    *v10 = 136315138;
    sub_733D0();
    v12 = sub_73880();
    v14 = sub_19144(v12, v13, &v34);

    *(v10 + 4) = v14;
    sub_222E4(&dword_0, v15, v16, "Making disambiguation prompt for apps: %s");
    sub_AE38(v11);
    sub_22180();
    sub_7EBC(v10);
  }

  v17 = *(v9 + 8);
  v18 = sub_221CC();
  v17(v18);
  *(v1 + 640) = v17;
  v19 = sub_114FC(*(v1 + 272));
  *(v1 + 648) = v19;
  if (!v19)
  {
LABEL_12:
    *(v1 + 656) = _swiftEmptyArrayStorage;
    sub_7C78((*(v1 + 280) + 272), *(*(v1 + 280) + 296));
    *(v1 + 712) = 1;
    *(v1 + 720) = 1;
    *(v1 + 728) = 1;
    *(v1 + 736) = 1;
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 25) = 65792;
    *(v1 + 32) = _swiftEmptyArrayStorage;
    *(v1 + 40) = 0;
    *(v1 + 48) = *(v1 + 720);
    *(v1 + 56) = 0;
    *(v1 + 64) = *(v1 + 728);
    *(v1 + 72) = 0;
    *(v1 + 80) = *(v1 + 736);
    *(v1 + 664) = sub_45B44();
    v30 = swift_task_alloc();
    *(v1 + 672) = v30;
    *v30 = v1;
    v30[1] = sub_1FB6C;
    sub_22210();

    __asm { BR              X3 }
  }

  v20 = v19;
  result = sub_73BE0();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = *(v1 + 272);
    v24 = v23 & 0xC000000000000001;
    v25 = v23 & 0xFFFFFFFFFFFFFF8;
    v26 = v23 + 32;
    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24)
      {
        v28 = sub_73B70();
      }

      else
      {
        if (v22 >= *(v25 + 16))
        {
          goto LABEL_16;
        }

        v28 = *(v26 + 8 * v22);
      }

      v29 = *(v1 + 280);
      v34 = v28;
      sub_20A04(v29, &v33);

      sub_73BB0();
      sub_73BF0();
      sub_73C00();
      result = sub_73BC0();
      ++v22;
      if (v27 == v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1FB6C()
{
  sub_7F1C();
  sub_B0BC();
  *(v2 + 680) = v1;
  *(v2 + 688) = v0;

  if (v0)
  {
    v3 = sub_2043C;
  }

  else
  {

    v3 = sub_1FC84;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1FC84()
{
  v95 = v0;
  v1 = v0[65];
  v2 = v0[34];

  sub_71F50();
  sub_72530();
  sub_721E0();
  sub_72840();
  sub_7C78(v0 + 11, v0[14]);
  sub_71E90();
  sub_37490(v2, v1);
  v4 = v3;
  v5 = sub_DD2C();
  v6(v5);
  sub_AE38(v0 + 11);
  sub_72650();
  v7 = *(v4 + 16);
  v81 = v4;
  if (v7)
  {
    v8 = v0[58];
    v87 = *(v8 + 16);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v82 = v0[55];
    v84 = *(v8 + 72);
    v10 = (v82 + 32);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v13 = v0[53];
      v12 = v0[54];
      v14 = sub_221F0();
      v87(v14);
      sub_71F90();
      v15 = sub_7F34();
      v16(v15);
      if (sub_5124(v13, 1, v12) == 1)
      {
        sub_AEF4(v0[53], &qword_A4FB8, &qword_765F8);
      }

      else
      {
        v17 = *v10;
        (*v10)(v0[56], v0[53], v0[54]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_FED0();
          v11 = v21;
        }

        v18 = *(v11 + 2);
        if (v18 >= *(v11 + 3) >> 1)
        {
          sub_FED0();
          v11 = v22;
        }

        v19 = v0[56];
        v20 = v0[54];
        *(v11 + 2) = v18 + 1;
        v17(&v11[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v18], v19, v20);
      }

      v9 += v84;
      --v7;
    }

    while (v7);
  }

  v23 = v0[81];
  v24 = sub_72660();

  v25 = sub_7F34();
  v26(v25);
  v80 = v24;
  if (v23)
  {
    v27 = v0[81];
    v94[0] = _swiftEmptyArrayStorage;
    sub_40260(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v28, v29, v30, v31, v32);
    }

    v33 = 0;
    v34 = v0[51];
    v35 = v0[47];
    v36 = v94[0];
    v88 = (v35 + 16);
    v91 = v0[34] & 0xC000000000000001;
    v85 = (v35 + 8);
    do
    {
      if (v91)
      {
        sub_73B70();
      }

      else
      {
      }

      v38 = v0[48];
      v37 = v0[49];
      v39 = v0[46];
      sub_72B10();
      sub_20C70();
      sub_72B00();
      sub_72AA0();
      (*v88)(v38, v37, v39);
      sub_72A80();

      (*v85)(v37, v39);
      v94[0] = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_40260(v40 > 1, v41 + 1, 1);
        v36 = v94[0];
      }

      v42 = v0[81];
      v43 = v0[52];
      v44 = v0[50];
      ++v33;
      *(v36 + 16) = v41 + 1;
      (*(v34 + 32))(v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v41, v43, v44);
    }

    while (v33 != v42);
  }

  v89 = v0[78];
  v45 = v0[77];
  v47 = v0[43];
  v46 = v0[44];
  v48 = v0[42];
  v83 = v0[41];
  v94[1] = 0xE000000000000000;
  sub_32DAC(0);
  sub_72190();
  v94[0] = v81;
  sub_3844C(v80);
  sub_72150();
  sub_721C0();
  sub_72BA0();
  sub_72B90();
  sub_72B70();
  (*(v48 + 16))(v47, v46, v83);
  sub_72B30();
  sub_7EEC(v45, (v0 + 24));
  v49 = sub_DD2C();
  v89(v49);
  v50 = sub_73710();
  v51 = sub_73970();
  v52 = sub_22238(v51);
  v53 = v0[80];
  v54 = v0[73];
  if (v52)
  {
    v56 = v0[39];
    v55 = v0[40];
    v92 = v0[80];
    v58 = v0[37];
    v57 = v0[38];
    v90 = v0[75];
    v59 = sub_221D8();
    v86 = v54;
    v60 = sub_14F88();
    v94[0] = v60;
    *v59 = 136315138;
    sub_7EEC(v55, (v0 + 30));
    (*(v57 + 16))(v56, v55, v58);
    v61 = sub_737A0();
    v63 = sub_19144(v61, v62, v94);

    *(v59 + 4) = v63;
    sub_222E4(&dword_0, v64, v65, "#WorkoutAppResolutionStrategyAsync sending disambiguation system dialog acts: %s");
    sub_AE38(v60);
    sub_7EBC(v60);
    sub_7EBC(v59);

    v92(v90, v86);
  }

  else
  {

    v66 = sub_DD2C();
    v53(v66);
  }

  v67 = v0[68];
  v68 = v0[67];
  v69 = v0[66];
  v70 = v0[40];
  v71 = v0[37];
  v72 = v0[38];
  v73 = v0[36];
  v93 = v0[35];
  sub_506C(&qword_A4FC0, &qword_76600);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_74B40;
  sub_7EEC(v70, (v0 + 27));
  (*(v72 + 16))(v75 + v74, v70, v71);
  sub_72160();
  (*(v68 + 16))(v73, v67, v69);
  sub_7CC4(v73, 0, 1, v69);
  sub_72550();
  sub_72570();
  sub_21FC0(v93 + 312, (v0 + 16));
  v76 = v0[19];
  v77 = v0[20];
  sub_7C78(v0 + 16, v76);
  v78 = swift_task_alloc();
  v0[87] = v78;
  *v78 = v0;
  v78[1] = sub_20560;
  v29 = v0[85];
  v30 = v0[72];
  v28 = v0[33];
  v31 = v76;
  v32 = v77;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v28, v29, v30, v31, v32);
}

uint64_t sub_2043C()
{

  sub_2211C();

  sub_7EA4();

  return v0();
}

uint64_t sub_20560()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *v1;
  sub_B044();
  *v3 = v2;
  *(v4 + 704) = v0;

  if (v0)
  {
    v5 = sub_2085C;
  }

  else
  {
    v5 = sub_20664;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_20664()
{
  v1 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 352);
  v6 = *(v0 + 336);
  v7 = *(v0 + 328);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v13, v12);
  sub_AE38((v0 + 128));
  v8 = sub_5388();
  v9(v8);

  sub_7EA4();

  return v10();
}

uint64_t sub_2085C()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v13 = *(v0 + 320);
  v6 = *(v0 + 304);
  v11 = *(v0 + 576);
  v12 = *(v0 + 296);

  v7 = sub_DD2C();
  v8(v7);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v11, v2);
  sub_AE38((v0 + 128));
  (*(v6 + 8))(v13, v12);
  sub_2211C();

  sub_7EA4();

  return v9();
}

uint64_t sub_20A04@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_733B0();
  v9 = v8;
  sub_21FC0(a1 + 32, v23);
  v10 = v24;
  v11 = v25;
  sub_7C78(v23, v24);
  (*(v11 + 8))(v22, v10, v11);
  sub_319FC(v22, v7, v9);
  v13 = v12;

  sub_AE38(v22);
  sub_AE38(v23);
  if (v13)
  {
    sub_737F0();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_73350();
  sub_7CC4(v6, v14, 1, v15);
  sub_733B0();
  sub_732E0();
  v16 = sub_732D0();
  type metadata accessor for WorkoutApp.Builder(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_7CC4(v17 + OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand, 1, 1, v15);
  v18 = sub_347BC(v16);

  v19 = OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand;
  swift_beginAccess();
  sub_AFA4(v6, v18 + v19);
  swift_endAccess();
  type metadata accessor for WorkoutApp(0);
  swift_allocObject();
  v20 = sub_3488C(v18);

  result = sub_AEF4(v6, &qword_A3F98, qword_75450);
  *a2 = v20;
  return result;
}

void sub_20C70()
{
  sub_11784();
  v0 = sub_71560();
  sub_5394();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_C2A4();
  v6 = v5 - v4;
  v7 = sub_73070();
  sub_22274(v7);
  sub_73060();
  sub_72840();
  sub_7C78(v9, v9[3]);
  sub_71E90();
  sub_20DD8(v6);
  (*(v2 + 8))(v6, v0);
  sub_AE38(v9);
  sub_72F00();

  v8 = sub_73100();
  sub_22274(v8);
  sub_730F0();
  sub_73050();
  sub_20F84();

  sub_11754();
}

uint64_t sub_20DD8(uint64_t a1)
{
  sub_72CD0();
  sub_5394();
  __chkstk_darwin(v1);
  sub_C2A4();
  v2 = sub_72F50();
  sub_22274(v2);
  v3 = sub_72F40();
  v4 = sub_723E0();
  sub_22274(v4);

  sub_723D0();
  sub_723C0();
  v6 = v5;

  if (v6)
  {
    sub_72F30();
  }

  sub_733B0();
  if (v7)
  {
    if (sub_72F20())
    {
      sub_72CC0();
      sub_72CA0();

      v8 = sub_5388();
      v9(v8);
    }

    else
    {
    }
  }

  return v3;
}

void sub_20F84()
{
  sub_11784();
  sub_73720();
  sub_5394();
  __chkstk_darwin(v1);
  sub_C2A4();
  v2 = sub_506C(&qword_A4FB0, &qword_765F0);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_506C(&unk_A63F0, &unk_760C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_752C0;
  *(v6 + 32) = v0;

  sub_72DD0();
  v7 = sub_72DE0();
  sub_7CC4(v5, 0, 1, v7);
  sub_72DA0();

  sub_AEF4(v5, &qword_A4FB0, &qword_765F0);
  sub_72C10();

  sub_11754();
}

void *sub_21270()
{

  sub_AE38((v0 + 32));
  sub_220B0(v0 + 72);
  sub_AE38((v0 + 312));
  return v0;
}

uint64_t sub_212A8()
{
  sub_21270();

  return _swift_deallocClassInstance(v0, 352, 7);
}

uint64_t sub_21300()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21398;

  return sub_1DFB4();
}

uint64_t sub_21398()
{
  sub_7F1C();
  sub_B0BC();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  v3 = sub_22200();

  return v4(v3);
}

uint64_t sub_2147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_21604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_216E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_1ED08();
}

uint64_t sub_2176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_218F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_219B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_ACC4;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_21B6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_1F37C();
}

uint64_t sub_21C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_21FC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22024()
{
  result = qword_A4FC8;
  if (!qword_A4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4FC8);
  }

  return result;
}

uint64_t sub_22068(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2211C()
{
}

uint64_t sub_22180()
{
}

uint64_t sub_2219C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_221D8()
{

  return swift_slowAlloc();
}

BOOL sub_22238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22250()
{
}

uint64_t sub_22274(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2228C()
{

  return swift_task_alloc();
}

void sub_222A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_222C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_222E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22304(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_22324()
{

  return swift_slowAlloc();
}

uint64_t sub_2233C(uint64_t a1)
{
  v2 = sub_73720();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_B960(a1);
  v10 = v9;
  v11 = sub_736F0();
  v12 = (v3 + 16);
  if (v9 == 5)
  {
    swift_beginAccess();
    (*v12)(v6, v11, v2);
    v13 = sub_73710();
    v14 = sub_73980();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Couldn't find a verb for the workout request", v15, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_367A4(v40);
    v16 = sub_72240();
    swift_allocObject();
    v17 = sub_72230();
    v40[33] = v16;
    v40[34] = &protocol witness table for ResponseFactory;
    v40[30] = v17;
    sub_23964();
    v18 = sub_71CF0();
    sub_239B8(v40);
  }

  else
  {
    swift_beginAccess();
    (*v12)(v8, v11, v2);
    v19 = sub_73710();
    v20 = sub_73970();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v21 = 136315138;
      v22 = sub_6C698(v9);
      v10 = v23;
      v24 = sub_19144(v22, v23, v40);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_0, v19, v20, "Workout request type: %s", v21, 0xCu);
      sub_AE38(v38);
    }

    (*(v3 + 8))(v8, v2);
    switch(v10)
    {
      case 1:
        sub_22744(v39);
        sub_367A4(v40);
        v34 = sub_25CA8();
        v27 = sub_22B74(v34, v35);
        break;
      case 2:
        sub_22744(v39);
        sub_367A4(v40);
        v30 = sub_25CA8();
        v27 = sub_22EF0(v30, v31);
        break;
      case 3:
        sub_22744(v39);
        sub_367A4(v40);
        v32 = sub_25CA8();
        v27 = sub_2326C(v32, v33);
        break;
      case 4:
        sub_22744(v39);
        sub_367A4(v40);
        v28 = sub_25CA8();
        v27 = sub_235E8(v28, v29);
        break;
      default:
        sub_22744(v39);
        sub_367A4(v40);
        v25 = sub_25CA8();
        v27 = sub_227F8(v25, v26);
        break;
    }

    v18 = v27;
    sub_220B0(v40);
    sub_AE38(v39);
  }

  return v18;
}

uint64_t sub_22744@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  return sub_73490();
}

uint64_t sub_227F8(uint64_t a1, uint64_t a2)
{
  v23 = sub_506C(&qword_A4FE0, &qword_76608);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v7 = sub_506C(qword_A4068, qword_752D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_506C(&qword_A4FE8, &qword_76610);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = sub_731F0();
  sub_7CC4(v9, 1, 1, v17);
  sub_254AC(a1, a2, 0, v9, v16);
  sub_AEF4(v9, qword_A4068, qword_752D0);
  v18 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_506C(&qword_A4FF0, &qword_76618);
  swift_allocObject();
  sub_71C40();
  v24 = 0;

  sub_506C(&qword_A4FF8, &qword_76620);
  sub_D9A8(&qword_A5000, &qword_A4FF8, &qword_76620, &unk_782B0);
  sub_720D0();
  v19 = v23;
  v20 = sub_720C0();
  (*(v4 + 8))(v6, v19);
  v24 = v20;
  sub_506C(&qword_A5008, &qword_76628);
  sub_D9A8(&qword_A5010, &qword_A5008, &qword_76628, &protocol conformance descriptor for AnyValueFlow<A>);
  v21 = sub_71CF0();

  (*(v11 + 8))(v16, v18);
  return v21;
}

uint64_t sub_22B74(uint64_t a1, uint64_t a2)
{
  v23 = sub_506C(&qword_A5080, &qword_76660);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v7 = sub_506C(qword_A4068, qword_752D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_506C(&qword_A5088, &qword_76668);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = sub_731F0();
  sub_7CC4(v9, 1, 1, v17);
  sub_24E04(a1, a2, 0, v9, v16);
  sub_AEF4(v9, qword_A4068, qword_752D0);
  v18 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_506C(&qword_A5090, &unk_76E40);
  swift_allocObject();
  sub_71C40();
  v24 = 0;

  sub_506C(&qword_A5098, &qword_76670);
  sub_D9A8(&qword_A50A0, &qword_A5098, &qword_76670, &unk_782B0);
  sub_720D0();
  v19 = v23;
  v20 = sub_720C0();
  (*(v4 + 8))(v6, v19);
  v24 = v20;
  sub_506C(&qword_A50A8, &qword_76678);
  sub_D9A8(&qword_A50B0, &qword_A50A8, &qword_76678, &protocol conformance descriptor for AnyValueFlow<A>);
  v21 = sub_71CF0();

  (*(v11 + 8))(v16, v18);
  return v21;
}

uint64_t sub_22EF0(uint64_t a1, uint64_t a2)
{
  v23 = sub_506C(&qword_A5118, &qword_766B0);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v7 = sub_506C(qword_A4068, qword_752D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_506C(&qword_A5120, &qword_766B8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = sub_731F0();
  sub_7CC4(v9, 1, 1, v17);
  sub_2475C(a1, a2, 0, v9, v16);
  sub_AEF4(v9, qword_A4068, qword_752D0);
  v18 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_506C(&qword_A5128, &qword_766C0);
  swift_allocObject();
  sub_71C40();
  v24 = 0;

  sub_506C(&qword_A5130, &qword_766C8);
  sub_D9A8(&qword_A5138, &qword_A5130, &qword_766C8, &unk_782B0);
  sub_720D0();
  v19 = v23;
  v20 = sub_720C0();
  (*(v4 + 8))(v6, v19);
  v24 = v20;
  sub_506C(&qword_A5140, &qword_766D0);
  sub_D9A8(&qword_A5148, &qword_A5140, &qword_766D0, &protocol conformance descriptor for AnyValueFlow<A>);
  v21 = sub_71CF0();

  (*(v11 + 8))(v16, v18);
  return v21;
}

uint64_t sub_2326C(uint64_t a1, uint64_t a2)
{
  v23 = sub_506C(&qword_A51B0, &qword_76708);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v7 = sub_506C(qword_A4068, qword_752D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_506C(&qword_A51B8, &qword_76710);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = sub_731F0();
  sub_7CC4(v9, 1, 1, v17);
  sub_240B4(a1, a2, 0, v9, v16);
  sub_AEF4(v9, qword_A4068, qword_752D0);
  v18 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_506C(&qword_A51C0, &qword_76718);
  swift_allocObject();
  sub_71C40();
  v24 = 0;

  sub_506C(&qword_A51C8, &qword_76720);
  sub_D9A8(&qword_A51D0, &qword_A51C8, &qword_76720, &unk_782B0);
  sub_720D0();
  v19 = v23;
  v20 = sub_720C0();
  (*(v4 + 8))(v6, v19);
  v24 = v20;
  sub_506C(&qword_A51D8, &qword_76728);
  sub_D9A8(&qword_A51E0, &qword_A51D8, &qword_76728, &protocol conformance descriptor for AnyValueFlow<A>);
  v21 = sub_71CF0();

  (*(v11 + 8))(v16, v18);
  return v21;
}

uint64_t sub_235E8(uint64_t a1, uint64_t a2)
{
  v23 = sub_506C(&qword_A5248, &qword_76760);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v7 = sub_506C(qword_A4068, qword_752D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_506C(&qword_A5250, &qword_76768);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = sub_731F0();
  sub_7CC4(v9, 1, 1, v17);
  sub_23A0C(a1, a2, 0, v9, v16);
  sub_AEF4(v9, qword_A4068, qword_752D0);
  v18 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_506C(&qword_A5258, &unk_76E70);
  swift_allocObject();
  sub_71C40();
  v24 = 0;

  sub_506C(&qword_A5260, &qword_76770);
  sub_D9A8(&qword_A5268, &qword_A5260, &qword_76770, &unk_782B0);
  sub_720D0();
  v19 = v23;
  v20 = sub_720C0();
  (*(v4 + 8))(v6, v19);
  v24 = v20;
  sub_506C(&qword_A5270, &qword_76778);
  sub_D9A8(&qword_A5278, &qword_A5270, &qword_76778, &protocol conformance descriptor for AnyValueFlow<A>);
  v21 = sub_71CF0();

  (*(v11 + 8))(v16, v18);
  return v21;
}

unint64_t sub_23964()
{
  result = qword_A4FD8;
  if (!qword_A4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4FD8);
  }

  return result;
}

uint64_t sub_23A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v29[1] = a5;
  v30 = a1;
  v34 = sub_506C(&qword_A5280, &qword_76780);
  __chkstk_darwin(v34);
  v32 = v29 - v7;
  sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
  v33 = sub_ADF8(0, &qword_A4390, INResumeWorkoutIntentResponse_ptr);
  sub_71C30();
  v8 = sub_73ED0();
  v10 = v9;
  sub_21FC0(a1, v49);
  sub_25B54(a2, v41);
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v13 = swift_allocObject();
  v35 = v13;
  v45 = &protocol witness table for ResponseFactory;
  v44 = v11;
  *&v43 = v12;
  v13[2] = v8;
  v13[3] = v10;
  sub_D8D8(v49, (v13 + 4));
  memcpy(v13 + 9, v41, 0xF0uLL);
  sub_D8D8(&v43, (v13 + 39));
  v41[0] = v13;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5250, &qword_76768);
  sub_71BE0();
  sub_25B54(a2, v49);
  swift_allocObject();
  v14 = sub_72230();
  v52 = v11;
  v53 = &protocol witness table for ResponseFactory;
  v51 = v14;
  v50 = v37;
  v31 = v37;
  sub_506C(&qword_A5288, &qword_76788);
  sub_D9A8(&qword_A5290, &qword_A5288, &qword_76788, &unk_78930);
  sub_71AF0();
  sub_71BD0();
  v15 = a2;
  sub_25B54(a2, &v43);
  swift_allocObject();
  v16 = sub_72230();
  v48 = &protocol witness table for ResponseFactory;
  v47 = v11;
  v46 = v16;
  sub_506C(&qword_A5298, &qword_76790);
  sub_D9A8(&qword_A52A0, &qword_A5298, &qword_76790, &unk_75230);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v41);
  v17 = v30;
  sub_21FC0(v30, v42);
  swift_allocObject();
  v18 = sub_72230();
  v42[9] = &protocol witness table for ResponseFactory;
  v42[8] = v11;
  v42[5] = v18;
  sub_506C(&qword_A52A8, &qword_76798);
  sub_D9A8(&qword_A52B0, &qword_A52A8, &qword_76798, &unk_7B898);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v40);
  swift_allocObject();
  v19 = sub_72230();
  v40[33] = v11;
  v40[34] = &protocol witness table for ResponseFactory;
  v40[30] = v19;
  sub_506C(&qword_A52B8, &qword_767A0);
  sub_D9A8(&qword_A52C0, &qword_A52B8, &qword_767A0, &unk_76880);
  sub_71BA0();
  sub_71C00();
  v20 = v17;
  v21 = v32;
  sub_21FC0(v17, v32);
  sub_25B54(v15, v21 + 40);
  v22 = v34;
  sub_AE84(v36, v21 + *(v34 + 52));
  swift_allocObject();
  v23 = sub_72230();
  v24 = (v21 + *(v22 + 56));
  v24[3] = v11;
  v24[4] = &protocol witness table for ResponseFactory;
  *v24 = v23;
  *(v21 + 280) = v37;
  sub_D9A8(&qword_A52C8, &qword_A5280, &qword_76780, &unk_753E8);
  v25 = v31;
  sub_71B30();
  sub_71BF0();
  v26 = v20[3];
  v27 = v20[4];
  sub_7C78(v20, v26);
  (*(v27 + 8))(v38, v26, v27);
  v38[8] = &type metadata for LabelTemplatesProvider;
  v38[9] = &off_98C30;
  v39[3] = sub_71FF0();
  v39[4] = &off_9A408;
  sub_5BAC(v39);
  sub_71FE0();
  sub_506C(&qword_A52D0, &qword_767A8);
  sub_D9A8(qword_A52D8, &qword_A52D0, &qword_767A8, &unk_78EE8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v38, &qword_A52D0, &qword_767A8);
  sub_AEF4(v21, &qword_A5280, &qword_76780);
  sub_AEF4(v40, &qword_A52B8, &qword_767A0);
  sub_AEF4(v41, &qword_A52A8, &qword_76798);
  sub_AEF4(&v43, &qword_A5298, &qword_76790);
  return sub_AEF4(v49, &qword_A5288, &qword_76788);
}

uint64_t sub_240B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v29[1] = a5;
  v30 = a1;
  v34 = sub_506C(&qword_A51E8, &qword_76730);
  __chkstk_darwin(v34);
  v32 = v29 - v7;
  sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  v33 = sub_ADF8(0, &qword_A4580, INCancelWorkoutIntentResponse_ptr);
  sub_71C30();
  v8 = sub_73ED0();
  v10 = v9;
  sub_21FC0(a1, v49);
  sub_25B54(a2, v41);
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v13 = swift_allocObject();
  v35 = v13;
  v45 = &protocol witness table for ResponseFactory;
  v44 = v11;
  *&v43 = v12;
  v13[2] = v8;
  v13[3] = v10;
  sub_D8D8(v49, (v13 + 4));
  memcpy(v13 + 9, v41, 0xF0uLL);
  sub_D8D8(&v43, (v13 + 39));
  v41[0] = v13;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A51B8, &qword_76710);
  sub_71BE0();
  sub_25B54(a2, v49);
  swift_allocObject();
  v14 = sub_72230();
  v52 = v11;
  v53 = &protocol witness table for ResponseFactory;
  v51 = v14;
  v50 = v37;
  v31 = v37;
  sub_506C(&qword_A51F0, &qword_76738);
  sub_D9A8(&qword_A51F8, &qword_A51F0, &qword_76738, &unk_78930);
  sub_71AF0();
  sub_71BD0();
  v15 = a2;
  sub_25B54(a2, &v43);
  swift_allocObject();
  v16 = sub_72230();
  v48 = &protocol witness table for ResponseFactory;
  v47 = v11;
  v46 = v16;
  sub_506C(&qword_A5200, &qword_76740);
  sub_D9A8(&qword_A5208, &qword_A5200, &qword_76740, &unk_75230);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v41);
  v17 = v30;
  sub_21FC0(v30, v42);
  swift_allocObject();
  v18 = sub_72230();
  v42[9] = &protocol witness table for ResponseFactory;
  v42[8] = v11;
  v42[5] = v18;
  sub_506C(&qword_A5210, &qword_76748);
  sub_D9A8(&qword_A5218, &qword_A5210, &qword_76748, &unk_7B898);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v40);
  swift_allocObject();
  v19 = sub_72230();
  v40[33] = v11;
  v40[34] = &protocol witness table for ResponseFactory;
  v40[30] = v19;
  sub_506C(&qword_A5220, &qword_76750);
  sub_D9A8(&qword_A5228, &qword_A5220, &qword_76750, &unk_76880);
  sub_71BA0();
  sub_71C00();
  v20 = v17;
  v21 = v32;
  sub_21FC0(v17, v32);
  sub_25B54(v15, v21 + 40);
  v22 = v34;
  sub_AE84(v36, v21 + *(v34 + 52));
  swift_allocObject();
  v23 = sub_72230();
  v24 = (v21 + *(v22 + 56));
  v24[3] = v11;
  v24[4] = &protocol witness table for ResponseFactory;
  *v24 = v23;
  *(v21 + 280) = v37;
  sub_D9A8(&qword_A5230, &qword_A51E8, &qword_76730, &unk_753E8);
  v25 = v31;
  sub_71B30();
  sub_71BF0();
  v26 = v20[3];
  v27 = v20[4];
  sub_7C78(v20, v26);
  (*(v27 + 8))(v38, v26, v27);
  v38[8] = &type metadata for LabelTemplatesProvider;
  v38[9] = &off_98C30;
  v39[3] = sub_71FF0();
  v39[4] = &off_9A408;
  sub_5BAC(v39);
  sub_71FE0();
  sub_506C(&qword_A5238, &qword_76758);
  sub_D9A8(&qword_A5240, &qword_A5238, &qword_76758, &unk_78EE8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v38, &qword_A5238, &qword_76758);
  sub_AEF4(v21, &qword_A51E8, &qword_76730);
  sub_AEF4(v40, &qword_A5220, &qword_76750);
  sub_AEF4(v41, &qword_A5210, &qword_76748);
  sub_AEF4(&v43, &qword_A5200, &qword_76740);
  return sub_AEF4(v49, &qword_A51F0, &qword_76738);
}

uint64_t sub_2475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v29[1] = a5;
  v30 = a1;
  v34 = sub_506C(&qword_A5150, &qword_766D8);
  __chkstk_darwin(v34);
  v32 = v29 - v7;
  sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
  v33 = sub_ADF8(0, &qword_A44A0, INPauseWorkoutIntentResponse_ptr);
  sub_71C30();
  v8 = sub_73ED0();
  v10 = v9;
  sub_21FC0(a1, v49);
  sub_25B54(a2, v41);
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v13 = swift_allocObject();
  v35 = v13;
  v45 = &protocol witness table for ResponseFactory;
  v44 = v11;
  *&v43 = v12;
  v13[2] = v8;
  v13[3] = v10;
  sub_D8D8(v49, (v13 + 4));
  memcpy(v13 + 9, v41, 0xF0uLL);
  sub_D8D8(&v43, (v13 + 39));
  v41[0] = v13;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5120, &qword_766B8);
  sub_71BE0();
  sub_25B54(a2, v49);
  swift_allocObject();
  v14 = sub_72230();
  v52 = v11;
  v53 = &protocol witness table for ResponseFactory;
  v51 = v14;
  v50 = v37;
  v31 = v37;
  sub_506C(&qword_A5158, &qword_766E0);
  sub_D9A8(&qword_A5160, &qword_A5158, &qword_766E0, &unk_78930);
  sub_71AF0();
  sub_71BD0();
  v15 = a2;
  sub_25B54(a2, &v43);
  swift_allocObject();
  v16 = sub_72230();
  v48 = &protocol witness table for ResponseFactory;
  v47 = v11;
  v46 = v16;
  sub_506C(&qword_A5168, &qword_766E8);
  sub_D9A8(&qword_A5170, &qword_A5168, &qword_766E8, &unk_75230);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v41);
  v17 = v30;
  sub_21FC0(v30, v42);
  swift_allocObject();
  v18 = sub_72230();
  v42[9] = &protocol witness table for ResponseFactory;
  v42[8] = v11;
  v42[5] = v18;
  sub_506C(&qword_A5178, &qword_766F0);
  sub_D9A8(&qword_A5180, &qword_A5178, &qword_766F0, &unk_7B898);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v40);
  swift_allocObject();
  v19 = sub_72230();
  v40[33] = v11;
  v40[34] = &protocol witness table for ResponseFactory;
  v40[30] = v19;
  sub_506C(&qword_A5188, &qword_766F8);
  sub_D9A8(&qword_A5190, &qword_A5188, &qword_766F8, &unk_76880);
  sub_71BA0();
  sub_71C00();
  v20 = v17;
  v21 = v32;
  sub_21FC0(v17, v32);
  sub_25B54(v15, v21 + 40);
  v22 = v34;
  sub_AE84(v36, v21 + *(v34 + 52));
  swift_allocObject();
  v23 = sub_72230();
  v24 = (v21 + *(v22 + 56));
  v24[3] = v11;
  v24[4] = &protocol witness table for ResponseFactory;
  *v24 = v23;
  *(v21 + 280) = v37;
  sub_D9A8(&qword_A5198, &qword_A5150, &qword_766D8, &unk_753E8);
  v25 = v31;
  sub_71B30();
  sub_71BF0();
  v26 = v20[3];
  v27 = v20[4];
  sub_7C78(v20, v26);
  (*(v27 + 8))(v38, v26, v27);
  v38[8] = &type metadata for LabelTemplatesProvider;
  v38[9] = &off_98C30;
  v39[3] = sub_71FF0();
  v39[4] = &off_9A408;
  sub_5BAC(v39);
  sub_71FE0();
  sub_506C(&qword_A51A0, &qword_76700);
  sub_D9A8(&qword_A51A8, &qword_A51A0, &qword_76700, &unk_78EE8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v38, &qword_A51A0, &qword_76700);
  sub_AEF4(v21, &qword_A5150, &qword_766D8);
  sub_AEF4(v40, &qword_A5188, &qword_766F8);
  sub_AEF4(v41, &qword_A5178, &qword_766F0);
  sub_AEF4(&v43, &qword_A5168, &qword_766E8);
  return sub_AEF4(v49, &qword_A5158, &qword_766E0);
}

uint64_t sub_24E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v29[1] = a5;
  v30 = a1;
  v34 = sub_506C(&qword_A50B8, &qword_76680);
  __chkstk_darwin(v34);
  v32 = v29 - v7;
  sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
  v33 = sub_ADF8(0, &qword_A4420, INEndWorkoutIntentResponse_ptr);
  sub_71C30();
  v8 = sub_73ED0();
  v10 = v9;
  sub_21FC0(a1, v49);
  sub_25B54(a2, v41);
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v13 = swift_allocObject();
  v35 = v13;
  v45 = &protocol witness table for ResponseFactory;
  v44 = v11;
  *&v43 = v12;
  v13[2] = v8;
  v13[3] = v10;
  sub_D8D8(v49, (v13 + 4));
  memcpy(v13 + 9, v41, 0xF0uLL);
  sub_D8D8(&v43, (v13 + 39));
  v41[0] = v13;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5088, &qword_76668);
  sub_71BE0();
  sub_25B54(a2, v49);
  swift_allocObject();
  v14 = sub_72230();
  v52 = v11;
  v53 = &protocol witness table for ResponseFactory;
  v51 = v14;
  v50 = v37;
  v31 = v37;
  sub_506C(&qword_A50C0, &qword_76688);
  sub_D9A8(&qword_A50C8, &qword_A50C0, &qword_76688, &unk_78930);
  sub_71AF0();
  sub_71BD0();
  v15 = a2;
  sub_25B54(a2, &v43);
  swift_allocObject();
  v16 = sub_72230();
  v48 = &protocol witness table for ResponseFactory;
  v47 = v11;
  v46 = v16;
  sub_506C(&qword_A50D0, &qword_76690);
  sub_D9A8(&qword_A50D8, &qword_A50D0, &qword_76690, &unk_75230);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v41);
  v17 = v30;
  sub_21FC0(v30, v42);
  swift_allocObject();
  v18 = sub_72230();
  v42[9] = &protocol witness table for ResponseFactory;
  v42[8] = v11;
  v42[5] = v18;
  sub_506C(&qword_A50E0, &qword_76698);
  sub_D9A8(&qword_A50E8, &qword_A50E0, &qword_76698, &unk_7B898);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v40);
  swift_allocObject();
  v19 = sub_72230();
  v40[33] = v11;
  v40[34] = &protocol witness table for ResponseFactory;
  v40[30] = v19;
  sub_506C(&qword_A50F0, &qword_766A0);
  sub_D9A8(&qword_A50F8, &qword_A50F0, &qword_766A0, &unk_76880);
  sub_71BA0();
  sub_71C00();
  v20 = v17;
  v21 = v32;
  sub_21FC0(v17, v32);
  sub_25B54(v15, v21 + 40);
  v22 = v34;
  sub_AE84(v36, v21 + *(v34 + 52));
  swift_allocObject();
  v23 = sub_72230();
  v24 = (v21 + *(v22 + 56));
  v24[3] = v11;
  v24[4] = &protocol witness table for ResponseFactory;
  *v24 = v23;
  *(v21 + 280) = v37;
  sub_D9A8(&qword_A5100, &qword_A50B8, &qword_76680, &unk_753E8);
  v25 = v31;
  sub_71B30();
  sub_71BF0();
  v26 = v20[3];
  v27 = v20[4];
  sub_7C78(v20, v26);
  (*(v27 + 8))(v38, v26, v27);
  v38[8] = &type metadata for LabelTemplatesProvider;
  v38[9] = &off_98C30;
  v39[3] = sub_71FF0();
  v39[4] = &off_9A408;
  sub_5BAC(v39);
  sub_71FE0();
  sub_506C(&qword_A5108, &qword_766A8);
  sub_D9A8(&qword_A5110, &qword_A5108, &qword_766A8, &unk_78EE8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v38, &qword_A5108, &qword_766A8);
  sub_AEF4(v21, &qword_A50B8, &qword_76680);
  sub_AEF4(v40, &qword_A50F0, &qword_766A0);
  sub_AEF4(v41, &qword_A50E0, &qword_76698);
  sub_AEF4(&v43, &qword_A50D0, &qword_76690);
  return sub_AEF4(v49, &qword_A50C0, &qword_76688);
}

uint64_t sub_254AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v29[1] = a5;
  v30 = a1;
  v34 = sub_506C(&qword_A5018, &qword_76630);
  __chkstk_darwin(v34);
  v32 = v29 - v7;
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v33 = sub_ADF8(0, &qword_A4520, INStartWorkoutIntentResponse_ptr);
  sub_71C30();
  v8 = sub_73ED0();
  v10 = v9;
  sub_21FC0(a1, v49);
  sub_25B54(a2, v41);
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v13 = swift_allocObject();
  v35 = v13;
  v45 = &protocol witness table for ResponseFactory;
  v44 = v11;
  *&v43 = v12;
  v13[2] = v8;
  v13[3] = v10;
  sub_D8D8(v49, (v13 + 4));
  memcpy(v13 + 9, v41, 0xF0uLL);
  sub_D8D8(&v43, (v13 + 39));
  v41[0] = v13;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A4FE8, &qword_76610);
  sub_71BE0();
  sub_25B54(a2, v49);
  swift_allocObject();
  v14 = sub_72230();
  v52 = v11;
  v53 = &protocol witness table for ResponseFactory;
  v51 = v14;
  v50 = v37;
  v31 = v37;
  sub_506C(&qword_A5028, &qword_76638);
  sub_D9A8(&qword_A5030, &qword_A5028, &qword_76638, &unk_78930);
  sub_71AF0();
  sub_71BD0();
  v15 = a2;
  sub_25B54(a2, &v43);
  swift_allocObject();
  v16 = sub_72230();
  v48 = &protocol witness table for ResponseFactory;
  v47 = v11;
  v46 = v16;
  sub_506C(&qword_A5038, &qword_76640);
  sub_D9A8(&qword_A5040, &qword_A5038, &qword_76640, &unk_75230);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v41);
  v17 = v30;
  sub_21FC0(v30, v42);
  swift_allocObject();
  v18 = sub_72230();
  v42[9] = &protocol witness table for ResponseFactory;
  v42[8] = v11;
  v42[5] = v18;
  sub_506C(&qword_A5048, &qword_76648);
  sub_D9A8(&qword_A5050, &qword_A5048, &qword_76648, &unk_7B898);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v40);
  swift_allocObject();
  v19 = sub_72230();
  v40[33] = v11;
  v40[34] = &protocol witness table for ResponseFactory;
  v40[30] = v19;
  sub_506C(&qword_A5058, &qword_76650);
  sub_D9A8(&qword_A5060, &qword_A5058, &qword_76650, &unk_76880);
  sub_71BA0();
  sub_71C00();
  v20 = v17;
  v21 = v32;
  sub_21FC0(v17, v32);
  sub_25B54(v15, v21 + 40);
  v22 = v34;
  sub_AE84(v36, v21 + *(v34 + 52));
  swift_allocObject();
  v23 = sub_72230();
  v24 = (v21 + *(v22 + 56));
  v24[3] = v11;
  v24[4] = &protocol witness table for ResponseFactory;
  *v24 = v23;
  *(v21 + 280) = v37;
  sub_D9A8(&qword_A5068, &qword_A5018, &qword_76630, &unk_753E8);
  v25 = v31;
  sub_71B30();
  sub_71BF0();
  v26 = v20[3];
  v27 = v20[4];
  sub_7C78(v20, v26);
  (*(v27 + 8))(v38, v26, v27);
  v38[8] = &type metadata for LabelTemplatesProvider;
  v38[9] = &off_98C30;
  v39[3] = sub_71FF0();
  v39[4] = &off_9A408;
  sub_5BAC(v39);
  sub_71FE0();
  sub_506C(&qword_A5070, &qword_76658);
  sub_D9A8(&qword_A5078, &qword_A5070, &qword_76658, &unk_78EE8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v38, &qword_A5070, &qword_76658);
  sub_AEF4(v21, &qword_A5018, &qword_76630);
  sub_AEF4(v40, &qword_A5058, &qword_76650);
  sub_AEF4(v41, &qword_A5048, &qword_76648);
  sub_AEF4(&v43, &qword_A5038, &qword_76640);
  return sub_AEF4(v49, &qword_A5028, &qword_76638);
}

unint64_t sub_25BB0()
{
  result = qword_A5020;
  if (!qword_A5020)
  {
    type metadata accessor for WorkoutAppResolutionStrategyAsync();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5020);
  }

  return result;
}

uint64_t sub_25C08()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_25CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25D08()
{
  sub_7F1C();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  sub_71F70();
  v1[6] = swift_task_alloc();
  v5 = sub_72580();
  v1[7] = v5;
  v1[8] = *(v5 - 8);
  v1[9] = swift_task_alloc();
  sub_506C(&qword_A3F98, qword_75450);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_25E2C);
}

uint64_t sub_25E2C()
{
  sub_72640();
  sub_72600();

  v1 = sub_72250();
  if (v1 && (v2 = v1, v3 = [v1 displayAppName], v2, v3))
  {
    sub_73790();

    sub_737F0();

    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  v5 = v0[10];
  v6 = sub_73350();
  sub_7CC4(v5, v4, 1, v6);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_25F90;
  v8 = v0[10];
  v9 = v0[4];

  return sub_26480(v8, v9);
}

uint64_t sub_25F90()
{
  sub_7F1C();
  v2 = *v1;
  *(v2 + 96) = v3;
  *(v2 + 104) = v0;

  if (v0)
  {
    v4 = sub_26350;
  }

  else
  {
    v4 = sub_260A0;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_260A0()
{
  sub_273D0();
  v1 = v0[5];
  sub_71F60();
  sub_72530();
  v2 = v1[33];
  v3 = v1[34];
  sub_7C78(v1 + 30, v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_26194;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v2, v3);
}

uint64_t sub_26194()
{
  sub_7F1C();
  v2 = *v1;
  sub_B044();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {
    v5 = sub_263D4;
  }

  else
  {
    v5 = sub_2629C;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_2629C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  (*(v4 + 8))(v1, v3);
  sub_2733C(v2);

  sub_7EA4();

  return v5();
}

uint64_t sub_26350()
{
  sub_273D0();
  sub_2733C(*(v0 + 80));

  sub_7EA4();

  return v1();
}

uint64_t sub_263D4()
{
  sub_273D0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  sub_2733C(*(v0 + 80));

  sub_7EA4();

  return v4();
}

uint64_t sub_26480(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_273C0();
}

uint64_t sub_26498()
{
  v1 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v1))
  {
    v2 = sub_273E8(*(v0 + 32), *(*(v0 + 32) + 24));
    *(v0 + 40) = v2;
    sub_27414(v2);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_268C8;

    return sub_2F18C();
  }

  else
  {
    v5 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v5))
    {
      sub_27438();
      v7 = sub_273E8((v6 + 40), *(v6 + 64));
      *(v0 + 56) = v7;
      sub_27414(v7);
      v8 = swift_task_alloc();
      *(v0 + 64) = v8;
      *v8 = v0;
      v8[1] = sub_269D4;

      return sub_62154();
    }

    else
    {
      v9 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v9))
      {
        sub_27438();
        v11 = sub_273E8((v10 + 80), *(v10 + 104));
        *(v0 + 72) = v11;
        sub_27414(v11);
        v12 = swift_task_alloc();
        *(v0 + 80) = v12;
        *v12 = v0;
        v12[1] = sub_26AE0;

        return sub_69A9C();
      }

      else
      {
        v13 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v13))
        {
          sub_27438();
          v15 = sub_273E8((v14 + 120), *(v14 + 144));
          *(v0 + 88) = v15;
          sub_27414(v15);
          v16 = swift_task_alloc();
          *(v0 + 96) = v16;
          *v16 = v0;
          v16[1] = sub_26BEC;

          return sub_666D4();
        }

        else
        {
          v17 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v17))
          {
            sub_27438();
            v19 = sub_273E8((v18 + 160), *(v18 + 184));
            *(v0 + 104) = v19;
            sub_27414(v19);
            v20 = swift_task_alloc();
            *(v0 + 112) = v20;
            *v20 = v0;
            v20[1] = sub_26CF8;

            return sub_6485C();
          }

          else
          {
            return sub_73CC0();
          }
        }
      }
    }
  }
}

uint64_t sub_268C8()
{
  sub_273D0();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_269D4()
{
  sub_273D0();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_26AE0()
{
  sub_273D0();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_26BEC()
{
  sub_273D0();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_26CF8()
{
  sub_273D0();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_26E04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_273C0();
}

uint64_t sub_26E18()
{
  sub_7F1C();
  sub_72640();
  sub_72610();
  sub_273DC();

  return v0();
}

uint64_t sub_26E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_AFA4(a2, a1);
  sub_737F0();
  v7 = sub_73350();
  sub_7CC4(v6, 0, 1, v7);
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  return sub_7CEC(v6, a1 + *(started + 24));
}

uint64_t sub_26F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27010;

  return sub_25D08();
}

uint64_t sub_27010()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  sub_7EA4();

  return v3();
}

uint64_t sub_270F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27190;

  return sub_26E04(a1, a2);
}

uint64_t sub_27190()
{
  sub_7F1C();
  sub_273B0();
  v3 = *v2;
  sub_B044();
  *v4 = v3;

  sub_273DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_27278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_273AC;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_2733C(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273E8(void *a1, uint64_t a2)
{
  sub_7C78(a1, a2);

  return swift_task_alloc();
}

uint64_t sub_27420(uint64_t a1)
{

  return _swift_dynamicCastMetatype(v1, a1);
}

void sub_27444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_2770C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_73970();
    v7 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_74B40;
    v9 = v7;
    v10 = [v5 description];
    v11 = sub_73790();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_5258();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    sub_73620(v6, &dword_0, v9, "Created INCancelWorkoutIntent: %@", 33, 2, v8);

    v23 = v5;
    (a3)(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_initStackObject();
    sub_B5BC(0);
    v14 = sub_73980();
    v15 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_74B40;
    v17 = v15;
    v18 = sub_B4FC();
    v20 = v19;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_5258();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_73620(v14, &dword_0, v17, "Pause- RCHFlow Strategy: %@", 27, 2, v16);

    swift_allocObject();
    v21 = sub_B5BC(1);
    sub_28130(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    swift_allocError();
    *v22 = v21;
    a3();
  }
}

id sub_2770C(uint64_t a1)
{
  v41 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = __chkstk_darwin(v1 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_731D0();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_72830();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, v41, v14);
  v24 = sub_5388();
  v26 = v25(v24);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v27 = sub_5388();
    v28(v27);
    (*(v10 + 32))(v13, v22, v8);
    (*(v10 + 16))(v7, v13, v8);
    sub_280EC();
    v29 = sub_5CD8C(v7);
    sub_51F8(v7, type metadata accessor for HealthNLIntent);
    (*(v10 + 8))(v13, v8);
  }

  else if (v26 == enum case for Parse.directInvocation(_:))
  {
    v23(v20, v41, v14);
    v30 = v39;
    sub_6AFB0(v20, v39);
    v31 = v40;
    sub_50B4(v30, v40);
    v32 = type metadata accessor for DirectInvocationData(0);
    if (sub_5124(v31, 1, v32) == 1)
    {
      sub_514C(v30);
      sub_514C(v31);
      v29 = 0;
    }

    else
    {
      sub_6B824(v43);
      sub_514C(v30);
      sub_51F8(v31, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_280EC();
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }
    }

    v35 = sub_5388();
    v36(v35);
  }

  else
  {
    v33 = sub_5388();
    v34(v33);
    return 0;
  }

  return v29;
}

uint64_t sub_27B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_27C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_27DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_27E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_27E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_27EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_280EC()
{
  result = qword_A4578;
  if (!qword_A4578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4578);
  }

  return result;
}

uint64_t sub_28130(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_28178()
{
  v0 = sub_72830();
  sub_5394();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_C2A4();
  v6 = v5 - v4;
  v7 = sub_73970();
  v8 = *sub_734D0();
  v9 = sub_506C(&qword_A3BA8, &unk_76BA0);
  v10 = sub_29ACC(v9);
  *(v10 + 16) = xmmword_74B40;
  v11 = v8;
  sub_727E0();
  sub_73C40();
  (*(v2 + 8))(v6, v0);
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_5258();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_73620(v7, &dword_0, v11, "Handling confirmation input: %@", 31, 2, v10);

  return sub_72060();
}

uint64_t sub_28300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v83 = a2;
  v86 = a9;
  v87 = a8;
  v9 = sub_506C(&qword_A54E8, &qword_76BB0);
  __chkstk_darwin(v9 - 8);
  v84 = &v81 - v10;
  v85 = sub_506C(qword_A54F0, &qword_76BB8);
  sub_1168C();
  __chkstk_darwin(v11);
  v13 = (&v81 - v12);
  type metadata accessor for HealthNLIntent(0);
  sub_1168C();
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = sub_72830();
  sub_5394();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_C2A4();
  v24 = v23 - v22;
  v25 = sub_731D0();
  sub_5394();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_C2A4();
  v31 = v30 - v29;
  sub_727E0();
  if ((*(v20 + 88))(v24, v18) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v82 = v13;
    (*(v20 + 96))(v24, v18);
    (*(v27 + 32))(v31, v24, v25);
    (*(v27 + 16))(v17, v31, v25);
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_29A0C(&qword_A42E8, 255, type metadata accessor for HealthNLIntent, &unk_7A328);
    sub_72E30();
    v32 = v88;
    if (v88 == 3)
    {
      type metadata accessor for HealthFlowError();
      v84 = v25;
      swift_allocObject();
      v33 = sub_B5BC(3);
      v34 = sub_73980();
      v35 = *sub_734D0();
      v36 = sub_506C(&qword_A3BA8, &unk_76BA0);
      v37 = sub_29ACC(v36);
      *(v37 + 16) = xmmword_74B40;
      v38 = v35;
      v39 = sub_B4FC();
      v40 = v17;
      v42 = v41;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_5258();
      *(v37 + 32) = v39;
      *(v37 + 40) = v42;
      sub_29AB0(v34, &dword_0, v38, "%@");

      sub_29A98();
      sub_29A0C(v43, 255, v44, &unk_7567C);
      v45 = swift_allocError();
      *v46 = v33;
      v47 = v82;
      *v82 = v45;
      swift_storeEnumTagMultiPayload();

      v87(v47);

      sub_10364(v47, qword_A54F0, &qword_76BB8);
      sub_BFD8(v40);
      return (*(v27 + 8))(v31, v84);
    }

    else
    {
      v62 = sub_73970();
      v63 = *sub_734D0();
      v64 = sub_506C(&qword_A3BA8, &unk_76BA0);
      v65 = sub_29ACC(v64);
      *(v65 + 16) = xmmword_74B40;
      sub_29A0C(&qword_A4D08, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v66 = v63;
      v67 = sub_73DA0();
      v69 = v68;
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = sub_5258();
      *(v65 + 32) = v67;
      *(v65 + 40) = v69;
      sub_73620(v62, &dword_0, v66, "Confirmation NL : %@", 20, 2, v65);

      sub_29A54();
      v70 = sub_5C4C8(v17);
      v71 = sub_72340();
      sub_1168C();
      v73 = *(v72 + 104);
      v74 = v25;
      v75 = (v27 + 8);
      v76 = v82;
      if (v32)
      {
        v77 = v84;
        v73(v84, enum case for ConfirmationResponse.rejected(_:), v71);
        sub_7CC4(v77, 0, 1, v71);
        v78 = v83;
        sub_72510();
        swift_storeEnumTagMultiPayload();
        v87(v76);
      }

      else
      {
        v79 = v84;
        v73(v84, enum case for ConfirmationResponse.confirmed(_:), v71);
        sub_7CC4(v79, 0, 1, v71);
        v80 = v70;
        sub_72510();
        swift_storeEnumTagMultiPayload();
        v87(v76);
      }

      sub_10364(v76, qword_A54F0, &qword_76BB8);
      sub_BFD8(v17);
      return (*v75)(v31, v74);
    }
  }

  else
  {
    (*(v20 + 8))(v24, v18);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v49 = sub_B5BC(0);
    v50 = sub_73980();
    v51 = *sub_734D0();
    v52 = sub_506C(&qword_A3BA8, &unk_76BA0);
    v53 = sub_29ACC(v52);
    *(v53 + 16) = xmmword_74B40;
    v54 = v51;
    v55 = sub_B4FC();
    v57 = v56;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_5258();
    *(v53 + 32) = v55;
    *(v53 + 40) = v57;
    sub_29AB0(v50, &dword_0, v54, "%@");

    sub_29A98();
    sub_29A0C(v58, 255, v59, &unk_7567C);
    v60 = swift_allocError();
    *v61 = v49;
    *v13 = v60;
    swift_storeEnumTagMultiPayload();

    v87(v13);

    return sub_10364(v13, qword_A54F0, &qword_76BB8);
  }
}

uint64_t sub_28B44(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v60 = a9;
  v61 = a8;
  sub_73390();
  sub_5394();
  v59 = v12;
  __chkstk_darwin(v13);
  sub_C2A4();
  v16 = v15 - v14;
  v17 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_721F0();
  sub_5394();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_C2A4();
  v26 = v25 - v24;

  v27 = sub_453DC(a3, a4);
  if (v27 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v28 = sub_B5BC(2);
    v29 = sub_73980();
    v30 = *sub_734D0();
    v31 = sub_506C(&qword_A3BA8, &unk_76BA0);
    v32 = sub_29ACC(v31);
    *(v32 + 16) = xmmword_74B40;
    v33 = v30;
    v34 = sub_B4FC();
    v36 = v35;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_5258();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    sub_29AB0(v29, &dword_0, v33, "%@");

    sub_29A98();
    sub_29A0C(v37, 255, v38, &unk_7567C);
    v39 = swift_allocError();
    *v40 = v28;
    v63 = v39;
    v65 = 1;

    v61(&v63);

    return sub_10364(&v63, &qword_A4810, &unk_760A0);
  }

  else
  {
    v42 = v27;
    v43 = sub_73970();
    v44 = sub_734D0();
    v58 = v22;
    v45 = *v44;
    v46 = sub_506C(&qword_A3BA8, &unk_76BA0);
    v47 = sub_29ACC(v46);
    v55 = xmmword_74B40;
    *(v47 + 16) = xmmword_74B40;
    v63 = 0;
    v64 = 0xE000000000000000;
    v62 = v42;
    v48 = v45;
    sub_73C40();
    v56 = a2;
    v57 = v20;
    v50 = v63;
    v49 = v64;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_5258();
    *(v47 + 32) = v50;
    *(v47 + 40) = v49;
    sub_73620(v43, &dword_0, v48, "Generating confirmation for : %@", 32, 2, v47);

    sub_37918(v51);
    sub_73280();
    v52 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v53 = swift_allocObject();
    *(v53 + 16) = v55;
    sub_73380();
    v63 = v53;
    sub_29A0C(&unk_A6CE0, 255, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    sub_4F648(v52, v16);
    sub_4FC14(v42, v56);

    __chkstk_darwin(v54);
    *(&v55 - 2) = v26;
    sub_541F4(sub_29A04, &v63);
    v61(&v63);
    sub_10364(&v63, &qword_A4810, &unk_760A0);
    sub_10364(v19, &unk_A6CD0, &unk_75B80);
    return (*(v58 + 8))(v26, v57);
  }
}

uint64_t sub_290A4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a3[3] = v9;
  a3[4] = &protocol witness table for AceOutput;
  sub_5BAC(a3);
  sub_720E0();
  sub_10364(v11, &unk_A6D20, &qword_76D80);
  sub_10364(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

uint64_t sub_292D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.shouldRequestUnlockForConfirmation(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_293A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_29458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_29508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makePromptForDeviceUnlock(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_295A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_29638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameterName:multicardinalIndex:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_296CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return sub_72690();
}

uint64_t sub_29750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_297E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();
  *v14 = v7;
  v14[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_298C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();
  *v16 = v8;
  v16[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

uint64_t sub_29A0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29A54()
{
  result = qword_A4518;
  if (!qword_A4518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4518);
  }

  return result;
}

uint64_t sub_29AB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{

  return sub_73620(a1, a2, a3, a4, 2, 2, v4);
}

uint64_t sub_29ACC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_29B4C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_ADF8(0, &qword_A4110, SAIntentGroupLaunchAppWithIntent_ptr);
  v11 = sub_73A10();
  v12 = *(v5 + 16);
  if (v12)
  {
    v19 = v12;
    sub_71E80();
    sub_7C78(v20, v20[3]);
    sub_73590();
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = a5;
    sub_ADF8(0, &qword_A4118, SABaseCommand_ptr);

    v14 = a2;
    v15 = a3;

    sub_72280();

    return sub_AE38(v20);
  }

  else
  {
    sub_506C(&unk_A63F0, &unk_760C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_752C0;
    *(v17 + 32) = v11;
    v18 = v11;
    sub_29D68(a1, a2, a3, v17, a4, a5);
  }
}

uint64_t sub_29D68(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v15 - 8);
  sub_2A950();
  v16 = sub_73910();
  sub_2A964(v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v8;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;

  v18 = a2;
  v19 = a3;

  sub_54390(0, 0, v7, &unk_76D90, v17);
}

uint64_t sub_29E90(void (*a1)(uint64_t *))
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  sub_2A950();
  v4 = sub_721F0();
  sub_2A964(v4);
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v8[3] = sub_72890();
  v8[4] = &protocol witness table for AceOutput;
  sub_5BAC(v8);
  sub_72110();
  sub_AEF4(v6, &unk_A6D20, &qword_76D80);
  sub_AEF4(v1, &qword_A4050, &unk_75290);
  v9 = 0;
  a1(v8);
  return sub_AEF4(v8, &qword_A4810, &unk_760A0);
}

void sub_2A010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a7;
  v12 = sub_506C(&qword_A5578, &unk_76DA0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_2A8DC(a1, &v17 - v13);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_AEF4(v14, &qword_A5578, &unk_76DA0);
  if (a1 == 1)
  {
    v15 = sub_73980();
    v16 = *sub_734D0();
    sub_73620(v15, &dword_0, v16, "Unable to successfully execute SAIntentGroupLaunchAppWithIntent on remote device", 80, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_29D68(a3, a4, a5, _swiftEmptyArrayStorage, a6, v18);
  }
}

uint64_t sub_2A188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v10;
  v8[23] = v11;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  return _swift_task_switch(sub_2A1BC);
}

uint64_t sub_2A1BC()
{
  sub_7F1C();
  (*(**(v0 + 136) + 120))(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_2A284;
  v2 = *(v0 + 168);

  return sub_2CCDC(v0 + 88, v0 + 16, v2);
}

uint64_t sub_2A284()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  return _swift_task_switch(sub_2A374);
}

uint64_t sub_2A374()
{
  sub_7F1C();
  (*(v0 + 176))(v0 + 88);
  sub_AEF4(v0 + 88, &qword_A4810, &unk_760A0);
  sub_160DC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A3F8()
{
  sub_29B2C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_2A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for HealthContinueInAppStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for HealthContinueInAppStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = sub_16228;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v15, a6);
}

uint64_t sub_2A5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_15F8C;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_2A718()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2A780(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_15F8C;

  return sub_2A188(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2A874()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2A8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A5578, &unk_76DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A964(uint64_t a1)
{

  return sub_7CC4(v1, 1, 1, a1);
}

uint64_t sub_2A984(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_D9F4(a3, v3 + 16);
  sub_2BB8C(a1, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent);
  sub_2BBF0(a2, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_directInvocationData);
  return v3;
}

uint64_t sub_2A9E8(uint64_t a1)
{
  v3 = sub_506C(&qword_A3B90, &qword_76E00);
  v4 = sub_B1C0(v3);
  __chkstk_darwin(v4);
  v5 = sub_2BF28();
  v6 = sub_B1C0(v5);
  __chkstk_darwin(v6);
  sub_C2A4();
  sub_2BD08(a1, v8 - v7, type metadata accessor for HealthNLIntent);
  v9 = type metadata accessor for DirectInvocationData(0);
  sub_7CC4(v1, 1, 1, v9);
  sub_72840();
  sub_2BD68(a1, type metadata accessor for HealthNLIntent);
  v10 = type metadata accessor for FlowRouter(0);
  sub_22274(v10);
  sub_2BF08();
  return a1;
}

uint64_t sub_2AAF0(uint64_t a1)
{
  v3 = sub_506C(&qword_A3B90, &qword_76E00);
  v4 = sub_B1C0(v3);
  __chkstk_darwin(v4);
  v5 = sub_2BF28();
  v6 = sub_B1C0(v5);
  __chkstk_darwin(v6);
  sub_C2A4();
  sub_6C72C(v8 - v7);
  sub_2BD08(a1, v1, type metadata accessor for DirectInvocationData);
  v9 = type metadata accessor for DirectInvocationData(0);
  sub_7CC4(v1, 0, 1, v9);
  sub_72840();
  sub_2BD68(a1, type metadata accessor for DirectInvocationData);
  v10 = type metadata accessor for FlowRouter(0);
  sub_22274(v10);
  sub_2BF08();
  return a1;
}

void sub_2AC00()
{
  v1 = sub_73390();
  v2 = sub_B1C0(v1);
  __chkstk_darwin(v2);
  sub_C2A4();
  type metadata accessor for HealthNLIntent(0);
  sub_1168C();
  __chkstk_darwin(v3);
  sub_C2A4();
  v6 = v5 - v4;
  sub_7C78((v0 + 16), *(v0 + 40));
  sub_DD2C();
  if (sub_71F10())
  {
    sub_2BD08(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent, v6, type metadata accessor for HealthNLIntent);
    v7 = type metadata accessor for SearchForRemoteDevicesFlow(0);
    sub_22274(v7);
    v8 = sub_2BE90();
    v11[0] = sub_5F32C(v8);
    sub_2BDC0(&qword_A5698, type metadata accessor for SearchForRemoteDevicesFlow, &unk_7A8D8);
    sub_71CF0();

LABEL_3:
    sub_2BF48();
    return;
  }

  sub_7C78((v0 + 16), *(v0 + 40));
  sub_2BE90();
  if ((sub_71F00() & 1) == 0)
  {
    sub_7C78((v0 + 16), *(v0 + 40));
    sub_2BE90();
    if ((sub_71EB0() & 1) == 0)
    {
      if (qword_A38F8 != -1)
      {
        swift_once();
      }

      sub_2BDC0(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
      v10 = sub_72E30();
      switch(LOBYTE(v11[0]))
      {
        case 0:
          sub_2B6D0();
          break;
        case 1:
          sub_2B2EC(v10);
          break;
        case 2:
          sub_2B1A0();
          break;
        case 3:
          sub_2B438(v10);
          break;
        case 4:
          sub_2B584(v10);
          break;
        default:
          type metadata accessor for DialogCATWrapper(0);
          sub_73380();
          sub_732B0();
          sub_72840();
          sub_71E80();
          sub_73440();
          sub_2BC60();
          sub_71CF0();
          sub_2BCB4(v11);
          break;
      }

      goto LABEL_3;
    }
  }

  sub_2BF48();

  sub_2AF64();
}

uint64_t sub_2AF64()
{
  v0 = sub_73390();
  v1 = sub_B1C0(v0);
  __chkstk_darwin(v1);
  sub_C2A4();
  sub_506C(&qword_A5668, &qword_76E08);
  sub_71AC0();
  *(swift_allocObject() + 16) = xmmword_74B40;
  sub_71AB0();
  sub_715C0();

  type metadata accessor for DialogCATWrapper(0);
  sub_73380();
  sub_732B0();
  sub_72840();
  sub_71E80();
  sub_73440();
  sub_71AA0();
  sub_2BC60();
  sub_71D30();
  sub_506C(&qword_A5678, &unk_76E10);
  sub_D9A8(&qword_A5680, &qword_A5678, &unk_76E10, &protocol conformance descriptor for ConditionalFlow<A>);
  v2 = sub_71CF0();

  sub_2BCB4(v4);
  return v2;
}

void sub_2B1A0()
{
  sub_506C(&qword_A4430, &qword_76E30);
  sub_19894();
  __chkstk_darwin(v0);
  sub_2BE50();
  __chkstk_darwin(v1);
  sub_2BE6C();
  type metadata accessor for HealthProducers();
  v2 = sub_2BED4();
  sub_C680(v2);
  v3 = sub_DD2C();
  sub_506C(v3, v4);
  sub_2BEF0();
  type metadata accessor for EndWorkoutStrategy();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_2BE34(v5);
  v7(v6);
  v8 = sub_506C(&qword_A5090, &unk_76E40);
  sub_22274(v8);
  sub_2BE90();
  v9 = sub_71C50();
  v10 = sub_2BE9C(v9);
  sub_2BEFC(v10);
  v11 = sub_2BE08(&qword_A56A8);
  sub_2BEB8(v11);
  sub_2BE90();

  v12 = sub_2BE80();
  v13(v12);
  sub_2BEE4();
  sub_2BF48();
}

uint64_t sub_2B6D0()
{
  sub_506C(&qword_A4530, &qword_75868);
  sub_19894();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  __chkstk_darwin(v5);
  sub_2BE6C();
  v8 = sub_73390();
  v9 = sub_B1C0(v8);
  __chkstk_darwin(v9);
  sub_C2A4();
  if (sub_593C4())
  {
    type metadata accessor for DialogCATWrapper(0);
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    v10 = sub_71CF0();
    sub_2BCB4(v18);
  }

  else
  {
    type metadata accessor for HealthProducers();
    sub_C2B4();
    v11 = sub_DD2C();
    sub_506C(v11, v12);
    type metadata accessor for StartWorkoutStrategy();
    v18[0] = swift_allocObject();
    (*(v3 + 16))(v7, v1, v0);
    v13 = sub_506C(&qword_A4FF0, &qword_76618);
    sub_22274(v13);
    sub_71C50();
    v18[0] = sub_72860();
    sub_2BE08(&qword_A5690);
    v10 = sub_71CF0();

    v14 = sub_2BE80();
    v15(v14);
  }

  return v10;
}

uint64_t sub_2B95C()
{
  sub_AE38((v0 + 16));
  sub_2BD68(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent, type metadata accessor for HealthNLIntent);
  sub_514C(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_directInvocationData);
  return v0;
}

uint64_t sub_2B9B0()
{
  sub_2B95C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for FlowRouter(uint64_t a1)
{
  result = qword_A55B8;
  if (!qword_A55B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2BA5C(uint64_t a1)
{
  sub_731D0();
  if (v1 <= 0x3F)
  {
    sub_2BB34(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2BB34(uint64_t a1)
{
  if (!qword_A55C8)
  {
    type metadata accessor for DirectInvocationData(255);
    v1 = sub_73A90();
    if (!v2)
    {
      atomic_store(v1, &qword_A55C8);
    }
  }
}

uint64_t sub_2BB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthNLIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2BC60()
{
  result = qword_A5670;
  if (!qword_A5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5670);
  }

  return result;
}

uint64_t sub_2BD08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1168C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2BD68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1168C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2BDC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2BE08(unint64_t *a1)
{

  return sub_D9A8(a1, v1, v2, &protocol conformance descriptor for RCHFlow<A>);
}

uint64_t sub_2BE9C(uint64_t a1)
{

  return sub_72860();
}

uint64_t sub_2BEB8(uint64_t a1)
{

  return sub_71CF0();
}

uint64_t sub_2BF08()
{

  return sub_2A984(v1, v0, (v2 - 72));
}

uint64_t sub_2BF28()
{

  return type metadata accessor for HealthNLIntent(0);
}

uint64_t sub_2BF5C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0x726F6F646E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_73DB0() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0x726F6F6474756FLL && a2 == 0xE700000000000000)
  {
  }

  else
  {
    v7 = sub_73DB0();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2C034(uint64_t a1, uint64_t a2)
{
  v4 = sub_23964();

  return Flow.deferToExecuteAsync(_:)(a1, a2, &type metadata for GenericErrorFlow, v4);
}

uint64_t sub_2C088()
{
  sub_7F1C();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_73720();
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();

  return _swift_task_switch(sub_2C144);
}

uint64_t sub_2C144(uint64_t a1)
{
  v3 = v1[44];
  v2 = v1[45];
  v4 = v1[43];
  v5 = sub_736F0();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_73710();
  v7 = sub_73980();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Executing a generic error response", v8, 2u);
  }

  v10 = v1[44];
  v9 = v1[45];
  v12 = v1[42];
  v11 = v1[43];

  (*(v10 + 8))(v9, v11);
  sub_2CB90(v12, (v1 + 2));
  v13 = swift_allocObject();
  memcpy((v13 + 16), v1 + 2, 0x118uLL);
  sub_72430();
  sub_71690();
  swift_allocObject();
  v1[40] = sub_71680();
  sub_72120();

  sub_7EA4();

  return v14();
}

uint64_t sub_2C328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_71F70();
  v2[4] = swift_task_alloc();
  v3 = sub_72580();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_2C414);
}

uint64_t sub_2C414()
{
  sub_273D0();
  v1 = *(v0 + 24);
  sub_71F60();
  sub_72530();
  sub_7C78((v1 + 200), *(v1 + 224));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2C4E8;

  return sub_4618C();
}

uint64_t sub_2C4E8()
{
  sub_7F1C();
  sub_B0BC();
  *(v2 + 72) = v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v3 = sub_2C7BC;
  }

  else
  {
    v3 = sub_2C5F4;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_2C5F4()
{
  sub_273D0();
  v1 = v0[3];
  v2 = v1[33];
  v3 = v1[34];
  sub_7C78(v1 + 30, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_2C6B8;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v2, v3);
}

uint64_t sub_2C6B8()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *v1;
  sub_B044();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_2C8CC;
  }

  else
  {
    v5 = sub_2C838;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_2C7BC()
{
  sub_273D0();
  v0 = sub_2CCC8();
  v1(v0);

  sub_7EA4();

  return v2();
}

uint64_t sub_2C838()
{
  sub_273D0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  sub_7EA4();

  return v4();
}

uint64_t sub_2C8CC()
{
  sub_273D0();

  v1 = sub_2CCC8();
  v2(v1);

  sub_7EA4();

  return v3();
}

uint64_t sub_2C950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2CA00;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_2CA00()
{
  sub_7F1C();
  v2 = v1;
  sub_B0BC();
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2CAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_ACC4;

  return sub_2C088();
}

uint64_t sub_2CBC8()
{
  sub_AE38(v0 + 2);
  sub_AE38(v0 + 7);
  sub_AE38(v0 + 12);
  sub_AE38(v0 + 17);
  sub_AE38(v0 + 22);
  sub_AE38(v0 + 27);
  sub_AE38(v0 + 32);

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_2CC30()
{
  sub_7F1C();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_ACC4;

  return sub_2C328(v3, v0 + 16);
}

uint64_t sub_2CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  sub_71F70();
  v3[19] = swift_task_alloc();
  v4 = sub_72580();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_73390();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_2CE28);
}

uint64_t sub_2CE28()
{
  v1 = *(v0 + 136);
  sub_73320();
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  v5 = v1[8];
  sub_73280();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = sub_73270();
  *(v0 + 208) = v6;
  sub_73380();
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_2CF44;
  v8 = *(v0 + 200);

  return static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)(v2, v4, v3, v5, v6, v0 + 16, v8);
}

uint64_t sub_2CF44()
{
  v2 = *v1;
  sub_7F04();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[25];
  v7 = v4[24];
  v8 = v4[23];
  v9 = *v1;
  sub_7F04();
  *v10 = v9;
  *(v2 + 224) = v11;
  *(v2 + 232) = v0;

  (*(v7 + 8))(v6, v8);
  sub_2D610(v2 + 16);
  if (v0)
  {
    v12 = sub_2D3A8;
  }

  else
  {
    v12 = sub_2D0D8;
  }

  return _swift_task_switch(v12);
}

uint64_t sub_2D0D8(uint64_t a1)
{
  v2 = v1[17];
  sub_71F30();
  sub_72530();

  sub_72560();
  v3 = v2[6];
  v4 = v2[7];
  sub_7C78(v2 + 3, v3);
  v5 = swift_task_alloc();
  v1[30] = v5;
  *v5 = v1;
  v5[1] = sub_2D1E0;
  v6 = v1[28];
  v7 = v1[22];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v1 + 7, v6, v7, v3, v4);
}

uint64_t sub_2D1E0()
{
  sub_7F04();
  *v3 = v2;
  v4 = *v1;
  sub_7F04();
  *v5 = v4;
  *(v6 + 248) = v0;

  if (v0)
  {
    v7 = sub_2D4C8;
  }

  else
  {
    v7 = sub_2D2EC;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_2D2EC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  sub_D8D8((v0 + 56), v4);
  *(v4 + 40) = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2D3A8()
{
  v1 = *sub_734D0();
  sub_73970();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v2 = swift_allocObject();
  sub_2D76C(v2, xmmword_74B40);
  v3 = sub_73DF0();
  v5 = v4;
  v2[3].n128_u64[1] = &type metadata for String;
  v2[4].n128_u64[0] = sub_5258();
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = v5;
  sub_2D748("Could not create output: %@", v6, v7, &dword_0);

  sub_2D720();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2D4C8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  (*(v2 + 8))(v1, v3);
  v4 = *sub_734D0();
  sub_73970();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v5 = swift_allocObject();
  sub_2D76C(v5, xmmword_74B40);
  v6 = sub_73DF0();
  v8 = v7;
  v5[3].n128_u64[1] = &type metadata for String;
  v5[4].n128_u64[0] = sub_5258();
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = v8;
  sub_2D748("Could not create output: %@", v9, v10, &dword_0);

  sub_2D720();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2D610(uint64_t a1)
{
  v2 = sub_506C(&qword_A56E0, qword_79400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D680(uint64_t a1, int a2)
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

uint64_t sub_2D6C0(uint64_t result, int a2, int a3)
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

uint64_t sub_2D720()
{
  *v1 = v0;
  *(v1 + 40) = 1;
}

uint64_t sub_2D748(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_73610(a1, 27, 2, a4, v4, v5, v6);
}

uint64_t sub_2D76C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_getErrorValue();
}

uint64_t type metadata accessor for DialogCATWrapper(uint64_t a1)
{
  result = qword_A56E8;
  if (!qword_A56E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

uint64_t sub_2D9E0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F90, &unk_74FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2DA48(uint64_t a1, uint64_t a2)
{
  v2 = sub_73DC0();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2DA9C(char a1)
{
  result = 0x736569726F6C6163;
  switch(a1)
  {
    case 1:
      result = 0x74616679646F62;
      break;
    case 2:
      result = 0x7461727472616568;
      break;
    case 3:
      result = 0x65636E6174736964;
      break;
    case 4:
      result = 1701669236;
      break;
    case 5:
    case 9:
    case 15:
      result = 0x7974697669746361;
      break;
    case 6:
      result = 0x746E6F6973736573;
      break;
    case 7:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0x677373656E746966;
      break;
    case 10:
      result = 0x6965772079646F62;
      break;
    case 11:
      result = 0x2074756F6B726F77;
      break;
    case 12:
      result = 1701011824;
      break;
    case 13:
      result = 0x616F67206E65706FLL;
      break;
    case 16:
      result = 6645601;
      break;
    case 17:
      result = 7890291;
      break;
    case 18:
      result = 0x746867696568;
      break;
    case 19:
      result = 0x746867696577;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2DD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2DA48(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2DD4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2DA9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthNoun(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x2DECCLL);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2DF08()
{
  result = qword_A5738;
  if (!qword_A5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5738);
  }

  return result;
}

uint64_t sub_2DF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E074();
  v5 = sub_2E0C8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_2DFC8()
{
  result = qword_A5740;
  if (!qword_A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5740);
  }

  return result;
}

unint64_t sub_2E020()
{
  result = qword_A5748;
  if (!qword_A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5748);
  }

  return result;
}

unint64_t sub_2E074()
{
  result = qword_A5750;
  if (!qword_A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5750);
  }

  return result;
}

unint64_t sub_2E0C8()
{
  result = qword_A5758;
  if (!qword_A5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5758);
  }

  return result;
}

uint64_t sub_2E11C(char a1)
{
  if (a1)
  {
    return 0x4E74756F6B726F77;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

uint64_t sub_2E160(uint64_t a1)
{
  if (sub_72800() == 0xD00000000000003DLL && 0x800000000007DCA0 == v2)
  {
  }

  else
  {
    v4 = sub_73DB0();

    if ((v4 & 1) == 0)
    {
      sub_72820();
      sub_2E638();
      (*(v5 + 8))(a1);
      return 0;
    }
  }

  v7 = sub_72810();
  if (!v7)
  {
    sub_72820();
    sub_2E638();
    (*(v9 + 8))(a1);
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_6CDBC(0x4E74756F6B726F77, 0xEB00000000656D61, v7, &v11);

  sub_72820();
  sub_2E638();
  (*(v8 + 8))(a1);
  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_2E308(&v11);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2E308(uint64_t a1)
{
  v2 = sub_506C(&qword_A42F0, &qword_77260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2E370(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2E534();
  v6 = sub_31BB8(0xD00000000000003DLL, 0x800000000007DCA0);
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  v8 = sub_73750();
  sub_31C68(v8, v6);
  v9 = objc_opt_self();
  sub_7C78(a1, a1[3]);
  v10 = sub_71F20();
  v11 = [v9 runSiriKitExecutorCommandWithContext:v10 payload:v6];

  v12 = [v9 wrapCommandInStartLocalRequest:v11];
  v13 = sub_73A50();

  return v13;
}

unint64_t sub_2E534()
{
  result = qword_A5760;
  if (!qword_A5760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A5760);
  }

  return result;
}

__n128 sub_2E578(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2E584(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2E5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2E6AC()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_301CC(v0, v14);
  return v2;
}

uint64_t sub_2E924()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  v11 = type metadata accessor for WorkoutCancelErrorWithCodeParameters(0);
  v12 = *(v0 + *(v11 + 20));
  if (v12)
  {
    v13 = sub_73360();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 120) = v13;
  *(v5 + 128) = 0x646F43726F727265;
  *(v5 + 136) = 0xE900000000000065;
  v15 = (v0 + *(v11 + 24));
  if (v15[1])
  {
    v16 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = &type metadata for Double;
  }

  *(v5 + 144) = v17;
  *(v5 + 168) = v16;

  return v5;
}

uint64_t sub_2EB08()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  sub_302B0(v6, xmmword_74B40);
  sub_5AEC(v1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C();
    (*(v8 + 32))();
  }

  return v6;
}

uint64_t sub_2EC50()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  sub_303DC();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  sub_302B0(v5, xmmword_77300);
  sub_3039C();
  sub_5AEC(v6, v7, v8, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v4, 1, v9) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    sub_3039C();
    v10();
  }

  *(v5 + 80) = 0x5074737269467369;
  *(v5 + 88) = 0xEF70704179747261;
  v11 = type metadata accessor for WorkoutCancelIntentHandledResponseParameters(0);
  *(v5 + 96) = *(v0 + *(v11 + 20));
  *(v5 + 120) = &type metadata for Bool;
  strcpy((v5 + 128), "isPunchingOut");
  *(v5 + 142) = -4864;
  v12 = *(v0 + *(v11 + 24));
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 144) = v12;
  return v5;
}

uint64_t sub_2EE04()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutCancelErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_2EE90()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  *(v1 + *(v2 + 20)) = 0;
  v7 = v1 + *(v2 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  v3(v1);
  v0[7] = sub_2E924();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  sub_30354(v9);

  return v11(0xD00000000000001BLL);
}

uint64_t sub_2EF98()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_2F0CC()
{
  sub_7F1C();
  sub_302FC();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_2F128()
{
  sub_7F1C();
  sub_302FC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F18C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutCancelUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_2F214()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_73350();
  sub_303A8(v3, v4, v5, v3);
  v2(v1);
  v0[6] = sub_2EB08();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  sub_30354(v7);

  return v9(0xD000000000000022);
}

uint64_t sub_2F2FC()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_2F430()
{
  sub_7F1C();
  sub_302D0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_2F498()
{
  sub_7F1C();
  sub_302D0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F4FC()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutCancelIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7);
}

uint64_t sub_2F590()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = sub_73350();
  sub_303A8(v6, v7, v8, v6);
  *(v1 + *(v2 + 20)) = v5;
  *(v1 + *(v2 + 24)) = v4;
  v3(v1);
  *(v0 + 56) = sub_2EC50();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD000000000000023);
}

uint64_t sub_2F69C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v6 = *v2;
  sub_7F04();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_2F7D0()
{
  sub_7F1C();
  sub_30328();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_2F82C()
{
  sub_7F1C();
  sub_30328();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  sub_303DC();
  __chkstk_darwin(v8);
  sub_5AEC(a1, &v13 - v9, &qword_A3F90, &unk_74FC0);
  sub_3039C();
  v10();
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_2FAAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5C0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2FB28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_2FC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }
}

void sub_2FCE8(uint64_t a1)
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    sub_2FDBC(319, &qword_A5830, &type metadata accessor for SirikitDeviceState);
    if (v2 <= 0x3F)
    {
      sub_2FE10();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2FDBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_73A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2FE10()
{
  if (!qword_A5838)
  {
    v0 = sub_73A90();
    if (!v1)
    {
      atomic_store(v0, &qword_A5838);
    }
  }
}

uint64_t sub_2FE74()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_2FED8()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

void sub_2FF20(uint64_t a1)
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v7 + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_30094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  sub_117C4();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_30368();

    sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

void sub_30134(uint64_t a1)
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_3020C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_3024C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 *sub_302B0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_302D0()
{
  v2 = *(v0 + 40);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelUnsupportedSlotValueParameters);
}

uint64_t sub_302FC()
{
  v2 = *(v0 + 48);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelErrorWithCodeParameters);
}

uint64_t sub_30328()
{
  v2 = *(v0 + 48);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelIntentHandledResponseParameters);
}

uint64_t sub_303A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_7CC4(v4, 1, 1, a4);
}

uint64_t sub_303FC@<X0>(void *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  swift_allocObject();
  v5 = sub_72230();
  a1[6] = v4;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v5;
  result = sub_73750();
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000000007D620;
  a1[2] = v3;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for EndWorkoutContinueInAppStrategy(uint64_t a1)
{
  result = qword_A59C8;
  if (!qword_A59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3054C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_506C(&qword_A5B40, qword_77590);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = sub_73720();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  v34[0] = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated) init];
  if (v34[0])
  {
    v13 = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals) init];
    if (v13)
    {
      v14 = v13;
      [v34[0] setInferenceWorkoutsAppSelectionTrainingIndependentSignals:v13];
      v38 = v2;
      type metadata accessor for WorkoutsSignalValuesProcessor();
      sub_30DCC();
      v15 = sub_72920();
      [v14 setCommonIndependent:v15];

      v16 = [v14 commonIndependent];
      if (v16)
      {
        v17 = v16;
        [v16 setAppResolutionType:*(v2 + 16)];
      }
    }

    else
    {
      v22 = sub_736E0();
      swift_beginAccess();
      (*(v7 + 16))(v12, v22, v6);
      v23 = sub_73710();
      v24 = sub_73980();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "WorkoutMessageBuilder: No independent values", v25, 2u);
      }

      (*(v7 + 8))(v12, v6);
    }

    v37 = v2;
    v26 = enum case for DomainUseCase.startWorkout(_:);
    v27 = sub_728B0();
    (*(*(v27 - 8) + 104))(v5, v26, v27);
    sub_7CC4(v5, 0, 1, v27);
    type metadata accessor for WorkoutsSignalValuesProcessor();
    sub_30DCC();
    v28 = sub_72910();
    sub_30E20(v5);
    v29 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage;
    v30 = sub_114FC(v28);
    for (i = 0; ; ++i)
    {
      if (v30 == i)
      {

        sub_30E88(v29, v34[0]);
        return;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = sub_73B70();
      }

      else
      {
        if (i >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v32 = *(v28 + 8 * i + 32);
      }

      v33 = v32;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v36 = v32;
      sub_30A58(&v36, &v35);

      if (v35)
      {
        sub_73850();
        if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_73890();
        }

        sub_738C0();
        v29 = v37;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v18 = sub_736E0();
    swift_beginAccess();
    (*(v7 + 16))(v10, v18, v6);
    v19 = sub_73710();
    v20 = sub_73980();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "WorkoutMessageBuilder: Could not create Message class.", v21, 2u);
    }

    (*(v7 + 8))(v10, v6);
  }
}

id sub_30A58@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_73720();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals) init];
  if (v9)
  {
    v10 = v9;
    v11 = sub_30F40(v8);
    v13 = v12;
    v14 = sub_733B0();
    if (v13)
    {
      if (v15)
      {
        if (v11 == v14 && v13 == v15)
        {

          v17 = 1;
        }

        else
        {
          v17 = sub_73DB0();
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      if (!v15)
      {
        v17 = 1;
        goto LABEL_17;
      }

      v17 = 0;
    }

LABEL_17:
    [v8 setIsResolvedApp:v17 & 1];
    v23 = sub_30F40(v8);
    if (v24)
    {
      v26[3] = v23;
      v26[4] = v24;
      v26[1] = 0x6C7070612E6D6F63;
      v26[2] = 0xE900000000000065;
      sub_30FA4();
      sub_30FF8();
      v25 = sub_73760();
    }

    else
    {
      v25 = 0;
    }

    [v8 setIsFirstPartyBundle:v25 & 1];
    result = [v10 setCommonDependent:v8];
    goto LABEL_21;
  }

  v18 = sub_736E0();
  swift_beginAccess();
  (*(v5 + 16))(v7, v18, v4);
  v19 = sub_73710();
  v20 = sub_73980();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "WorkoutMessageBuilder: Could not create DependentSignals Message.", v21, 2u);
  }

  result = (*(v5 + 8))(v7, v4);
  v10 = 0;
LABEL_21:
  *a2 = v10;
  return result;
}

uint64_t sub_30D44()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_30DCC()
{
  result = qword_A5B48;
  if (!qword_A5B48)
  {
    type metadata accessor for WorkoutsSignalValuesProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B48);
  }

  return result;
}

uint64_t sub_30E20(uint64_t a1)
{
  v2 = sub_506C(&qword_A5B40, qword_77590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_30E88(uint64_t a1, void *a2)
{
  sub_30EFC();
  isa = sub_73860().super.isa;

  [a2 setInferenceWorkoutsAppSelectionTrainingDependentSignals:isa];
}

unint64_t sub_30EFC()
{
  result = qword_A5B50;
  if (!qword_A5B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A5B50);
  }

  return result;
}

uint64_t sub_30F40(void *a1)
{
  v1 = [a1 appBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_73790();

  return v3;
}

unint64_t sub_30FA4()
{
  result = qword_A5B58;
  if (!qword_A5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B58);
  }

  return result;
}

unint64_t sub_30FF8()
{
  result = qword_A5B60;
  if (!qword_A5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B60);
  }

  return result;
}

uint64_t type metadata accessor for HealthLabelsCATs(uint64_t a1)
{
  result = qword_A5B68;
  if (!qword_A5B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

uint64_t sub_312A0()
{
  if (qword_A38E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_312FC()
{
  sub_72C60();
  swift_allocObject();
  result = sub_72C50();
  qword_AE6F0 = result;
  return result;
}

uint64_t sub_31360(uint64_t a1, uint64_t a2)
{
  v4 = sub_731D0();

  return sub_5124(a1, a2, v4);
}

uint64_t sub_313BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_731D0();

  return sub_7CC4(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DisambiguateAppNLIntent(uint64_t a1)
{
  result = qword_A5C20;
  if (!qword_A5C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31454(uint64_t a1)
{
  result = sub_731D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_314C0()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_74B40;
  if (qword_A38D0 != -1)
  {
    swift_once();
  }

  v1 = qword_AE6F0;
  *(v0 + 56) = sub_72C60();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  qword_A5BB8 = v0;
}

uint64_t sub_31578()
{
  if (qword_A38D8 != -1)
  {
    swift_once();
  }

  sub_72C80();
  swift_allocObject();

  result = sub_72C70();
  qword_A5BC0 = result;
  return result;
}

uint64_t sub_31618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_731D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_31698(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60, &unk_77650);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_31700(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60, &unk_77650);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_31758(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60, &unk_77650);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_31818(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DisambiguateAppNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3185C(uint64_t a1)
{
  if (sub_72800() == 0xD000000000000039 && 0x800000000007DED0 == v2)
  {
  }

  else
  {
    v4 = sub_73DB0();

    if ((v4 & 1) == 0)
    {
      sub_72820();
      sub_2E638();
      (*(v5 + 8))(a1);
      return 0;
    }
  }

  v7 = sub_72810();
  if (!v7)
  {
    sub_72820();
    sub_2E638();
    (*(v9 + 8))(a1);
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_6CDBC(0x6449656C646E7562, 0xE800000000000000, v7, &v11);

  sub_72820();
  sub_2E638();
  (*(v8 + 8))(a1);
  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_2E308(&v11);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_319FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2E534();
  v6 = sub_31BB8(0xD000000000000039, 0x800000000007DED0);
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  v8 = sub_73750();
  sub_31C68(v8, v6);
  v9 = objc_opt_self();
  sub_7C78(a1, a1[3]);
  v10 = sub_71F20();
  v11 = [v9 runSiriKitExecutorCommandWithContext:v10 payload:v6];

  v12 = [v9 wrapCommandInStartLocalRequest:v11];
  v13 = sub_73A50();

  return v13;
}

id sub_31BB8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_73780();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_31C2C(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0xD000000000000039;
  }
}

void sub_31C68(uint64_t a1, void *a2)
{
  isa = sub_73740().super.isa;

  [a2 setUserData:isa];
}

uint64_t sub_31CE8()
{
  sub_3241C();
  sub_7C78(v3, v3[3]);
  if (sub_71EF0())
  {

    return sub_31D94();
  }

  else
  {

    return sub_31ED8(v2, v1, v0);
  }
}

uint64_t sub_31D94()
{
  sub_3241C();
  v4 = sub_114FC(v3);
  if (!v4)
  {
LABEL_8:
    sub_72840();
    sub_7C78(v11, v11[3]);
    sub_71ED0();
    v10 = sub_71E50();

    sub_AE38(v11);
    return v10;
  }

  v5 = v4;
  v11[0] = _swiftEmptyArrayStorage;
  result = sub_73BE0();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_73B70();
      }

      else
      {
        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      sub_320EC(v8, v1, v0);

      sub_73BB0();
      sub_73BF0();
      sub_73C00();
      sub_73BC0();
    }

    while (v5 != v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_31ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_728A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_114FC(a1);
  if (!v10)
  {
LABEL_9:
    sub_72840();
    sub_7C78(v20, v20[3]);
    sub_71EC0();
    (*(v7 + 104))(v9, enum case for ImageSize.default(_:), v6);
    v16 = sub_71E40();

    (*(v7 + 8))(v9, v6);
    sub_AE38(v20);
    return v16;
  }

  v11 = v10;
  v20[0] = _swiftEmptyArrayStorage;
  result = sub_73BE0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v17 = v9;
    v18 = v7;
    v19 = v6;
    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = sub_73B70();
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      sub_320EC(v14, a2, v3);

      sub_73BB0();
      sub_73BF0();
      sub_73C00();
      sub_73BC0();
    }

    while (v11 != v13);
    v6 = v19;
    v9 = v17;
    v7 = v18;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_320EC(void *a1, uint64_t a2, char a3)
{
  v5 = sub_73970();
  v6 = *sub_734D0();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_74B40;
  v8 = v6;
  v9 = [a1 description];
  v10 = sub_73790();
  v12 = v11;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_5258();
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  sub_73620(v5, &dword_0, v8, "Making disambiguation item for workoutName: %@", 46, 2, v7);

  sub_71E30();
  v13 = [a1 spokenPhrase];
  sub_73790();

  sub_71E00();

  sub_71E10();

  v14 = sub_71E20();

  sub_72500();
  swift_allocObject();
  sub_724F0();
  sub_5C64(a3);
  sub_724C0();

  v15 = [a1 spokenPhrase];
  sub_73790();

  sub_724C0();

  sub_733B0();
  sub_724D0();

  sub_724E0();

  sub_506C(&unk_A63F0, &unk_760C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_752C0;
  *(v16 + 32) = v14;
  sub_71DC0();
  swift_allocObject();
  return sub_71DB0();
}

uint64_t type metadata accessor for HealthWorkoutEndCATs(uint64_t a1)
{
  result = qword_A5D08;
  if (!qword_A5D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32528(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_74F60;
  *(v10 + 32) = 1953459315;
  *(v10 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v9, &qword_A3F98, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v9, 1, v11) == 1)
  {
    sub_5B50(v9, &qword_A3F98, qword_75450);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_5BAC((v10 + 48));
    sub_5C0C();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x4E74756F6B726F77;
  *(v10 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v7, &qword_A3F98, qword_75450);
  if (sub_5124(v7, 1, v11) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    sub_5BAC((v10 + 96));
    sub_5C0C();
    (*(v13 + 32))();
  }

  sub_732A0();
}

uint64_t sub_327C0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_74B40;
  *(v5 + 32) = 0x656D614E707061;
  *(v5 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v4, &qword_A3F98, qword_75450);
  v6 = sub_73350();
  if (sub_5124(v4, 1, v6) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    (*(v7 + 32))();
  }

  sub_732A0();
}

uint64_t sub_329B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v13 - v10, &qword_A3F90, &unk_74FC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

unint64_t sub_32B44(char a1)
{
  result = 0x68746C616568;
  switch(a1)
  {
    case 1:
      result = 0x655668746C616568;
      break;
    case 2:
      result = 0x6F4E68746C616568;
      break;
    case 3:
      result = 0x634168746C616568;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x614D68746C616568;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
    case 17:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 7368801;
      break;
    case 10:
      result = 0x655268746C616568;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x656D614E707061;
      break;
    case 14:
      result = 0x6972747441707061;
      break;
    case 15:
      result = 0x746163696C707061;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_32DAC(char a1)
{
  sub_73B60(20);

  sub_32B44(a1);
  v2 = sub_73800();
  v4 = v3;

  v7._countAndFlagsBits = v2;
  v7._object = v4;
  sub_73820(v7);

  v8._countAndFlagsBits = 0xD000000000000012;
  v8._object = 0x800000000007E150;
  sub_73820(v8);
}

uint64_t getEnumTagSinglePayload for IntentConversionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x32FC8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_33004()
{
  result = qword_A5D58;
  if (!qword_A5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D58);
  }

  return result;
}

id sub_33058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v147 = a3;
  v144 = a2;
  v145 = a4;
  v146 = a1;
  v141 = sub_72820();
  sub_5394();
  v139 = v4;
  __chkstk_darwin(v5);
  sub_11544();
  v132 = v6;
  sub_11658();
  __chkstk_darwin(v7);
  v138 = &v125 - v8;
  sub_11658();
  __chkstk_darwin(v9);
  v140 = &v125 - v10;
  v11 = sub_506C(&qword_A42E0, &unk_77840);
  __chkstk_darwin(v11 - 8);
  v131 = &v125 - v12;
  v130 = sub_729E0();
  sub_5394();
  v129 = v13;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = (v16 - v15);
  v134 = sub_72AB0();
  sub_5394();
  v127 = v18;
  __chkstk_darwin(v19);
  sub_C2A4();
  v128 = v21 - v20;
  v137 = sub_72880();
  sub_5394();
  v133 = v22;
  __chkstk_darwin(v23);
  sub_C2A4();
  v135 = v25 - v24;
  sub_73720();
  sub_5394();
  v142 = v26;
  v143 = v27;
  __chkstk_darwin(v26);
  sub_11544();
  v136 = v28;
  sub_11658();
  __chkstk_darwin(v29);
  v126 = &v125 - v30;
  sub_11658();
  __chkstk_darwin(v31);
  v33 = &v125 - v32;
  v34 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v34 - 8);
  sub_C2A4();
  v37 = v36 - v35;
  v38 = sub_731D0();
  sub_5394();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_C2A4();
  v44 = v43 - v42;
  v45 = sub_72830();
  sub_5394();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_C2A4();
  v51 = v50 - v49;
  (*(v47 + 16))(v50 - v49, v146, v45);
  v52 = (*(v47 + 88))(v51, v45);
  if (v52 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v53 = sub_34794();
    v54(v53);
    (*(v40 + 32))(v44, v51, v38);
    (*(v40 + 16))(v37, v44, v38);
    v55 = v148;
    v56 = sub_33D50(v144, v147, v145);
    if (v55)
    {
      sub_BFD8(v37);
      (*(v40 + 8))(v44, v38);
    }

    else
    {
      v94 = v56;
      sub_BFD8(v37);
      v95 = sub_736E0();
      sub_34788();
      swift_beginAccess();
      v96 = v142;
      (*(v143 + 16))(v33, v95, v142);
      v17 = v94;
      v97 = sub_73710();
      v98 = sub_73970();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = sub_221D8();
        v148 = 0;
        v100 = v99;
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        *(v100 + 4) = v17;
        *v101 = v17;
        v102 = v17;
        _os_log_impl(&dword_0, v97, v98, "Converted intent to: %@", v100, 0xCu);
        sub_AEF4(v101, &qword_A4060, &qword_75440);
        v96 = v142;
        sub_34770();

        sub_34770();
      }

      (*(v143 + 8))(v33, v96);
      (*(v40 + 8))(v44, v38);
    }

    return v17;
  }

  v58 = v147;
  v57 = v148;
  if (v52 == enum case for Parse.directInvocation(_:))
  {
    v59 = sub_34794();
    v60(v59);
    v61 = v140;
    v62 = v51;
    v63 = v139;
    v64 = v141;
    (*(v139 + 32))(v140, v62, v141);
    v65 = *(v63 + 16);
    v66 = v138;
    v65(v138, v61, v64);
    v67 = sub_2E160(v66);
    if (v68 == 1)
    {
      v69 = sub_736F0();
      sub_34788();
      swift_beginAccess();
      v70 = v143;
      v71 = v136;
      v72 = v69;
      v73 = v61;
      v74 = v142;
      (*(v143 + 16))(v136, v72, v142);
      v75 = v132;
      v65(v132, v73, v64);
      v76 = sub_73710();
      v17 = sub_73980();
      if (os_log_type_enabled(v76, v17))
      {
        v77 = sub_221D8();
        v78 = v70;
        v79 = swift_slowAlloc();
        v149 = v79;
        *v77 = 136315138;
        v80 = sub_72800();
        v82 = v81;
        v83 = sub_347A4();
        v75(v83, v141);
        v84 = sub_19144(v80, v82, &v149);

        *(v77 + 4) = v84;
        _os_log_impl(&dword_0, v76, v17, "Unknow DirectInvocation with identifier: %s", v77, 0xCu);
        sub_AE38(v79);
        sub_34770();

        sub_34770();

        (*(v78 + 8))(v136, v142);
        v64 = v141;
      }

      else
      {

        v106 = sub_347A4();
        v75(v106, v64);
        (*(v70 + 8))(v71, v74);
      }

      sub_345F0();
      sub_3477C();
      swift_allocError();
      *v107 = 2;
      swift_willThrow();
      v75(v140, v64);
    }

    else
    {
      v103 = v67;
      v104 = v68;
      v17 = sub_342F8(v67, v68, v144, v58, v145);
      sub_10328(v103, v104);
      (*(v63 + 8))(v61, v64);
    }

    return v17;
  }

  if (v52 != enum case for Parse.uso(_:))
  {
    sub_345F0();
    sub_3477C();
    swift_allocError();
    *v105 = 3;
    swift_willThrow();
    (*(v47 + 8))(v51, v45);
    return v17;
  }

  v85 = sub_34794();
  v86(v85);
  v87 = v133;
  v88 = v135;
  v89 = v137;
  (*(v133 + 32))(v135, v51, v137);
  sub_72870();
  v90 = sub_729D0();
  (*(v129 + 8))(v17, v130);
  v91 = v131;
  sub_5F1B0(v90, v131);
  v92 = v91;

  v93 = v91;
  v17 = v134;
  if (sub_5124(v93, 1, v134) == 1)
  {
    sub_AEF4(v92, &qword_A42E0, &unk_77840);
LABEL_21:
    sub_345F0();
    sub_3477C();
    swift_allocError();
    *v111 = 0;
    swift_willThrow();
    (*(v87 + 8))(v88, v89);
    return v17;
  }

  v108 = v127;
  v109 = v128;
  (*(v127 + 32))(v128, v92, v17);
  v110 = sub_72C00();
  if (v57)
  {

    (*(v108 + 8))(v109, v17);
LABEL_20:
    v89 = v137;
    goto LABEL_21;
  }

  v113 = v110;
  if (!sub_114FC(v110))
  {
    (*(v108 + 8))(v128, v17);

    goto LABEL_20;
  }

  sub_11500();
  if ((v113 & 0xC000000000000001) != 0)
  {
    v114 = sub_73B70();
  }

  else
  {
    v114 = *(v113 + 32);
  }

  v115 = v142;
  v116 = v145;

  v117 = sub_72A60();
  v118 = sub_340B0(v114, v144, v117 & 1, v58, v116);
  v119 = sub_736E0();
  sub_34788();
  swift_beginAccess();
  (*(v143 + 16))(v126, v119, v115);
  v17 = v118;
  v120 = sub_73710();
  v121 = sub_73970();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = sub_221D8();
    v123 = swift_slowAlloc();
    *v122 = 138412290;
    *(v122 + 4) = v17;
    *v123 = v17;
    v124 = v17;
    _os_log_impl(&dword_0, v120, v121, "Converted intent to: %@", v122, 0xCu);
    sub_AEF4(v123, &qword_A4060, &qword_75440);
    v115 = v142;
    sub_34770();

    sub_34770();
  }

  (*(v143 + 8))(v126, v115);
  (*(v127 + 8))(v128, v134);
  (*(v87 + 8))(v135, v137);
  return v17;
}

uint64_t sub_33D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_73720();
  sub_5394();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_C2A4();
  v12 = v11 - v10;
  v13 = (*(a3 + 32))(v3, a2, a3);
  v14 = swift_dynamicCastUnknownClass();
  if (!v14)
  {

    v15 = sub_73700();
    sub_34788();
    swift_beginAccess();
    (*(v8 + 16))(v12, v15, v6);
    v16 = sub_73710();
    v17 = sub_73980();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_221D8();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v18 = 136315138;
      v19 = sub_73ED0();
      v21 = sub_19144(v19, v20, &v24);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_0, v16, v17, "Failed to convert %s to base Intent", v18, 0xCu);
      sub_AE38(v23);
      sub_34770();

      sub_34770();
    }

    (*(v8 + 8))(v12, v6);
    sub_3405C();
    sub_3477C();
    swift_allocError();
    swift_willThrow();
  }

  return v14;
}

Swift::Int sub_33FB4(unsigned __int8 a1)
{
  sub_73E40();
  sub_73E50(a1);
  return sub_73E60();
}

Swift::Int sub_34018(uint64_t a1)
{
  v2 = *v1;
  sub_73E40();
  sub_73E50(v2);
  return sub_73E60();
}

unint64_t sub_3405C()
{
  result = qword_A5D60;
  if (!qword_A5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D60);
  }

  return result;
}

uint64_t sub_340B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_73720();
  sub_5394();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_C2A4();
  v16 = v15 - v14;
  v17 = (*(a5 + 40))(a1, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
    v27 = v17;
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  v18 = sub_73700();
  sub_34788();
  swift_beginAccess();
  (*(v12 + 16))(v16, v18, v10);
  v19 = sub_73710();
  v20 = sub_73980();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_221D8();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = sub_73ED0();
    v25 = sub_19144(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v19, v20, "Failed ot convert %s to base Intent", v21, 0xCu);
    sub_AE38(v22);
    sub_34770();

    sub_34770();
  }

  (*(v12 + 8))(v16, v10);
  sub_3405C();
  sub_3477C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_342F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_73720();
  sub_5394();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_C2A4();
  v15 = v14 - v13;
  v16 = sub_736F0();
  sub_34788();
  swift_beginAccess();
  v36 = v9;
  (*(v11 + 16))(v15, v16, v9);

  v17 = sub_73710();
  v18 = sub_73970();

  v35 = a1;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136315394;

    v20 = sub_737A0();
    v34 = a5;
    v22 = a4;
    v23 = sub_19144(v20, v21, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_73ED0();
    v26 = sub_19144(v24, v25, &v37);

    *(v19 + 14) = v26;
    a4 = v22;
    a5 = v34;
    _os_log_impl(&dword_0, v17, v18, "Converting %s to %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_34770();

    sub_34770();
  }

  (*(v11 + 8))(v15, v36);
  if (a2)
  {
    swift_bridgeObjectRetain_n();
    sub_73430();
    v27 = sub_734C0();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = objc_allocWithZone(INSpeakableString);
    v32 = sub_5ED24(v29, v30, v35, a2, 0, 0);
  }

  else
  {
    v32 = 0;
  }

  (*(a5 + 48))(v32, a4, a5);

  sub_3477C();
  return swift_dynamicCastUnknownClassUnconditional();
}

unint64_t sub_345F0()
{
  result = qword_A5D68;
  if (!qword_A5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HealthNLIntentConversionError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x346E0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_3471C()
{
  result = qword_A5D70;
  if (!qword_A5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D70);
  }

  return result;
}

uint64_t sub_347BC(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_34800()
{

  sub_2733C(v0 + OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_3488C(uint64_t a1)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v6 = OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand;
  swift_beginAccess();
  sub_35730(a1 + v6, v5);

  sub_356C0(v5, v1 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  return v1;
}

uint64_t sub_34968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_506C(&qword_A3F98, qword_75450);
  sub_303DC();
  result = __chkstk_darwin(v7);
  v10 = &v16 - v9;
  if (a1 != 7368801 || a2 != 0xE300000000000000)
  {
    result = sub_73DB0();
    if ((result & 1) == 0)
    {
      v13 = a1 == 0x616D6D6F43656361 && a2 == 0xEA0000000000646ELL;
      if (v13 || (result = sub_73DB0(), (result & 1) != 0))
      {
        sub_35730(v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand, v10);
        v14 = sub_73350();
        if (sub_5124(v10, 1, v14) != 1)
        {
          *(a3 + 24) = v14;
          v15 = sub_5BAC(a3);
          return (*(*(v14 - 8) + 32))(v15, v10, v14);
        }

        result = sub_2733C(v10);
      }

      goto LABEL_17;
    }
  }

  v12 = *(v3 + 24);
  if (!v12)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_732E0();
  *a3 = v12;
}

uint64_t sub_34B34(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_98380;
  v7._object = a2;
  v4 = sub_73CE0(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_34B9C(char a1)
{
  if (a1)
  {
    return 0x616D6D6F43656361;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_34BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_34B34(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_34C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_34B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_34C58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_34B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_34C8C(uint64_t a1)
{
  v2 = sub_3566C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_34CC8(uint64_t a1)
{
  v2 = sub_3566C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_34D04()
{

  sub_2733C(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  return v0;
}

uint64_t sub_34D3C()
{
  sub_34D04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_34DBC(uint64_t a1)
{
  sub_3505C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_34E58(void *a1)
{
  v3 = v1;
  v5 = sub_506C(&qword_A5FC0, &qword_77A48);
  sub_5394();
  v7 = v6;
  sub_303DC();
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_7C78(a1, a1[3]);
  sub_3566C();
  sub_73EA0();
  v18 = *(v3 + 24);
  HIBYTE(v17) = 0;
  sub_732E0();
  sub_35A48();
  sub_35624(v11, v12, &protocol conformance descriptor for SirikitApp);
  sub_35A88(&v18, &v17 + 7);
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand;
    BYTE6(v17) = 1;
    sub_73350();
    sub_35A60();
    sub_35624(v14, v15, &protocol conformance descriptor for SpeakableString);
    sub_35A88(v3 + v13, &v17 + 6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_3500C(void *a1)
{
  v2 = swift_allocObject();
  sub_35178(a1);
  return v2;
}

void sub_3505C(uint64_t a1)
{
  if (!qword_A5828)
  {
    sub_73350();
    v1 = sub_73A90();
    if (!v2)
    {
      atomic_store(v1, &qword_A5828);
    }
  }
}

void sub_350DC(uint64_t a1)
{
  sub_3505C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_35178(void *a1)
{
  v3 = v1;
  sub_506C(&qword_A3F98, qword_75450);
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v18 = sub_506C(&qword_A5FA0, &qword_77A40);
  sub_5394();
  sub_303DC();
  __chkstk_darwin(v8);
  *(v1 + 16) = 0;
  sub_7C78(a1, a1[3]);
  sub_3566C();
  sub_73E90();
  if (v2)
  {

    type metadata accessor for WorkoutApp(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_732E0();
    v20 = 0;
    sub_35A48();
    sub_35624(v10, v11, &protocol conformance descriptor for SirikitApp);
    sub_35AA8(v9, &v20);
    *(v3 + 24) = v21;
    v13 = sub_73350();
    v19 = 1;
    sub_35A60();
    sub_35624(v14, v15, &protocol conformance descriptor for SpeakableString);
    sub_35AA8(v13, &v19);
    v16 = sub_35A78();
    v17(v16);
    sub_356C0(v7, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10WorkoutApp_aceCommand);
  }

  sub_AE38(a1);
  return v3;
}

void *sub_35434()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_3547C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_35544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3500C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_35624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_3566C()
{
  result = qword_A5FA8;
  if (!qword_A5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FA8);
  }

  return result;
}

uint64_t sub_356C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_35730(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkoutApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WorkoutApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x358F4);
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

unint64_t sub_3593C()
{
  result = qword_A5FD8;
  if (!qword_A5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FD8);
  }

  return result;
}

unint64_t sub_35994()
{
  result = qword_A5FE0;
  if (!qword_A5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FE0);
  }

  return result;
}

unint64_t sub_359EC()
{
  result = qword_A5FE8;
  if (!qword_A5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5FE8);
  }

  return result;
}

uint64_t sub_35A88(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(a1, a2, v2, v3);
}

uint64_t sub_35AA8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(a1, a2, v3, v2);
}

uint64_t sub_35AC8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    sub_71DF0();
    v4 = v3;
    v5 = sub_71DD0();

    return v5;
  }

  else
  {

    return sub_45750(a1, a2);
  }
}

uint64_t sub_35B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_35B70);
}

uint64_t sub_35B70()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_72240();
  swift_allocObject();
  v4 = sub_72230();
  v0[8] = v3;
  v0[9] = &protocol witness table for ResponseFactory;
  v0[5] = v4;
  v5 = sub_73750();
  v0[2] = 0xD000000000000014;
  v0[3] = 0x800000000007CFC0;
  v0[4] = v2;
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_35CF0;

  return sub_2CCDC((v0 + 11), (v0 + 2), _swiftEmptyArrayStorage);
}

uint64_t sub_35CF0()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  return _swift_task_switch(sub_35DE0);
}

uint64_t sub_35DE0()
{
  sub_7F1C();
  (*(v0 + 144))(v0 + 88);
  sub_16074(v0 + 88);
  sub_160DC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_35E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_73910();
  sub_7CC4(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = a4;
  v15[6] = a5;

  sub_54390(0, 0, v13, a7, v15);
}

uint64_t sub_35F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_35F8C);
}

uint64_t sub_35F8C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_15360;

  return sub_45028();
}

uint64_t sub_360D8()
{
  sub_AE38((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_3613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_361B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_36234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_362D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_36350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_363F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_3643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_364C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_36534()
{
  result = qword_A60B8;
  if (!qword_A60B8)
  {
    type metadata accessor for PauseWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A60B8);
  }

  return result;
}