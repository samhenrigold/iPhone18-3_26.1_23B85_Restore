void sub_1A459876C(uint64_t a1)
{
  if (!qword_1EB13DEA0)
  {
    sub_1A4598F0C(255, &qword_1EB13DEA8, sub_1A4598830, MEMORY[0x1E697E5E0]);
    sub_1A4599300(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DEA0);
    }
  }
}

void sub_1A4598830(uint64_t a1)
{
  if (!qword_1EB13DEB0)
  {
    sub_1A45988C4(255);
    sub_1A459C77C(&qword_1EB13DF08, sub_1A45988C4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DEB0);
    }
  }
}

void sub_1A45988F8(uint64_t a1, double a2)
{
  if (!qword_1EB13DEC0)
  {
    sub_1A45989CC(255, a2);
    sub_1A4598D98(255);
    sub_1A459818C(255, &qword_1EB13DF00, sub_1A429B9D8, sub_1A3E7440C, MEMORY[0x1E6981860]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13DEC0);
    }
  }
}

void sub_1A45989CC(uint64_t a1, double a2)
{
  if (!qword_1EB13DEC8)
  {
    sub_1A4598AAC(255, a2);
    sub_1A4598B6C(255);
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4598CFC();
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A524B894();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13DEC8);
    }
  }
}

void sub_1A4598AAC(uint64_t a1, double a2)
{
  if (!qword_1EB13DED0)
  {
    sub_1A4598B6C(255);
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4598CFC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DED0);
    }
  }
}

void sub_1A4598BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41ECA68(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4598C4C()
{
  result = qword_1EB13DEE8;
  if (!qword_1EB13DEE8)
  {
    sub_1A4598B6C(255);
    sub_1A3E7440C();
    sub_1A459C77C(&unk_1EB1277E0, sub_1A3F32A14, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DEE8);
  }

  return result;
}

unint64_t sub_1A4598CFC()
{
  result = qword_1EB13DEF0;
  if (!qword_1EB13DEF0)
  {
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4256C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DEF0);
  }

  return result;
}

unint64_t sub_1A4598DB8()
{
  result = qword_1EB13DF10;
  if (!qword_1EB13DF10)
  {
    sub_1A459876C(255);
    sub_1A4598E38();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF10);
  }

  return result;
}

unint64_t sub_1A4598E38()
{
  result = qword_1EB13DF18;
  if (!qword_1EB13DF18)
  {
    sub_1A4598F0C(255, &qword_1EB13DEA8, sub_1A4598830, MEMORY[0x1E697E5E0]);
    sub_1A459C77C(&qword_1EB13DF20, sub_1A4598830, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF18);
  }

  return result;
}

void sub_1A4598F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4598F70()
{
  result = qword_1EB13DF30;
  if (!qword_1EB13DF30)
  {
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724, MEMORY[0x1E697E5E0]);
    sub_1A459876C(255);
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF30);
  }

  return result;
}

unint64_t sub_1A4599044()
{
  result = qword_1EB13DF38;
  if (!qword_1EB13DF38)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    sub_1A45991B4();
    sub_1A4598724(255, v1);
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724, MEMORY[0x1E697E5E0]);
    sub_1A459876C(255);
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    sub_1A4598F70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF38);
  }

  return result;
}

unint64_t sub_1A45991B4()
{
  result = qword_1EB13DF40;
  if (!qword_1EB13DF40)
  {
    sub_1A4598604(255);
    sub_1A459C77C(&qword_1EB128AD0, sub_1A3F1D27C, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF40);
  }

  return result;
}

void sub_1A4599264(uint64_t a1)
{
  if (!qword_1EB122210)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    sub_1A4599368();
    v1 = sub_1A5249C54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122210);
    }
  }
}

void sub_1A4599300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4599368()
{
  result = qword_1EB127A30;
  if (!qword_1EB127A30)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127A30);
  }

  return result;
}

void sub_1A45993F8(uint64_t a1)
{
  if (!qword_1EB13DF48)
  {
    sub_1A5248A14();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1A5249D14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DF48);
    }
  }
}

unint64_t sub_1A459948C()
{
  result = qword_1EB13DF50;
  if (!qword_1EB13DF50)
  {
    sub_1A459845C(255);
    sub_1A459953C();
    sub_1A459C77C(&qword_1EB13DF78, sub_1A45993F8, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF50);
  }

  return result;
}

unint64_t sub_1A459953C()
{
  result = qword_1EB13DF58;
  if (!qword_1EB13DF58)
  {
    sub_1A45984A4(255);
    sub_1A45995EC();
    sub_1A459C77C(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF58);
  }

  return result;
}

unint64_t sub_1A45995EC()
{
  result = qword_1EB13DF60;
  if (!qword_1EB13DF60)
  {
    sub_1A45984EC(255);
    sub_1A459969C();
    sub_1A459C77C(&qword_1EB122218, sub_1A4599264, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF60);
  }

  return result;
}

unint64_t sub_1A459969C()
{
  result = qword_1EB13DF68;
  if (!qword_1EB13DF68)
  {
    sub_1A4598534(255);
    sub_1A459C77C(&qword_1EB13DF70, sub_1A459855C, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF68);
  }

  return result;
}

unint64_t sub_1A459974C()
{
  result = qword_1EB13DF80;
  if (!qword_1EB13DF80)
  {
    sub_1A4598360(255);
    sub_1A459845C(255);
    sub_1A5248A14();
    sub_1A459948C();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF80);
  }

  return result;
}

void sub_1A4599880(uint64_t a1, double a2)
{
  if (!qword_1EB13DF90)
  {
    sub_1A4599914(255);
    sub_1A3C48B3C(255, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DF90);
    }
  }
}

void sub_1A459995C(uint64_t a1, double a2)
{
  if (!qword_1EB13DFA0)
  {
    sub_1A4599A50(255, &qword_1EB13DFA8, sub_1A4598360, sub_1A459974C, MEMORY[0x1E697D548]);
    sub_1A4598360(255);
    sub_1A459974C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DFA0);
    }
  }
}

void sub_1A4599A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A4599ADC()
{
  result = qword_1EB13DFB8;
  if (!qword_1EB13DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFB8);
  }

  return result;
}

unint64_t sub_1A4599B30()
{
  result = qword_1EB13DFC0;
  if (!qword_1EB13DFC0)
  {
    sub_1A459820C(255);
    sub_1A4599BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFC0);
  }

  return result;
}

unint64_t sub_1A4599BA8()
{
  result = qword_1EB13DFC8;
  if (!qword_1EB13DFC8)
  {
    sub_1A459B878(255, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
    sub_1A4598360(255);
    sub_1A459974C();
    swift_getOpaqueTypeConformance2();
    sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFC8);
  }

  return result;
}

unint64_t sub_1A4599CCC()
{
  result = qword_1EB13DFD8;
  if (!qword_1EB13DFD8)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144, MEMORY[0x1E697E5E0]);
    sub_1A459C77C(&qword_1EB13DFE0, sub_1A4598144, MEMORY[0x1E697D7B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFD8);
  }

  return result;
}

void sub_1A4599DA0(uint64_t a1)
{
  if (!qword_1EB13DFE8)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144, MEMORY[0x1E697E5E0]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DFE8);
    }
  }
}

unint64_t sub_1A4599E4C()
{
  result = qword_1EB120CE0;
  if (!qword_1EB120CE0)
  {
    sub_1A3C48B3C(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C4CDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120CE0);
  }

  return result;
}

unint64_t sub_1A4599F08()
{
  result = qword_1EB13E000;
  if (!qword_1EB13E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E000);
  }

  return result;
}

void sub_1A4599FA0(uint64_t a1)
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A3E316EC(319);
    if (v2 <= 0x3F)
    {
      sub_1A459C4E8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C48B3C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A459C4E8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A459C4E8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A459C4E8(319, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1A459C4E8(319, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1A459C4E8(319, &qword_1EB13E010, sub_1A458D23C, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_1A459C4E8(319, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A3C48B3C(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

unint64_t sub_1A459A2BC()
{
  result = qword_1EB13E018;
  if (!qword_1EB13E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E018);
  }

  return result;
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v5 = v1[8];
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[9];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v1[12];
  v10 = type metadata accessor for LemonadeShelfItem(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9 + *(v10 + 20);
    type metadata accessor for LemonadeShelfItem.BackingItem(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          sub_1A3C53AEC(*(v11 + 56), *(v11 + 64));
          sub_1A3C53AEC(*(v11 + 72), *(v11 + 80));
          break;
        case 1u:

          break;
        case 2u:
        case 4u:
        case 6u:
        case 0xEu:
        case 0x12u:
        case 0x13u:
        case 0x14u:

          v12 = *(v11 + 24);
          goto LABEL_78;
        case 3u:

          sub_1A3C4AFFC(0);
          v11 += *(v16 + 40);

          v14 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider(0) + 28);
          goto LABEL_35;
        case 5u:

          v12 = *(v11 + 32);
          goto LABEL_78;
        case 7u:

          swift_unknownObjectRelease();
          break;
        case 8u:

          v11 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
          v15 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
          goto LABEL_34;
        case 9u:

          v96 = type metadata accessor for LemonadeICloudLinksFeature(0);
          v29 = (v11 + *(v96 + 20));

          v30 = type metadata accessor for LemonadeICloudLinksShelfProvider(0);
          v91 = *(v30 + 24);
          v31 = sub_1A5243334();
          (*(*(v31 - 8) + 8))(v29 + v91, v31);
          v86 = v30;
          v92 = v29;
          v32 = v29 + *(v30 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v30) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v32, *(v32 + 1), v32[16]);
          if (v30 == 1)
          {
            sub_1A3C4208C(*(v32 + 3), *(v32 + 4), v32[40]);
            sub_1A3C47A98(0);
            v34 = *(v33 + 64);
            v35 = sub_1A5242C84();
            (*(*(v35 - 8) + 8))(&v32[v34], v35);
          }

          else
          {
            if (*(v32 + 5) >= 3uLL)
            {
            }

            if (*(v32 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v32 + 9), *(v32 + 10), v32[88]);
          }

          v63 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v64 = sub_1A5241F84();
          v81 = *(v64 - 8);
          v84 = v63;
          v65 = &v32[v63];
          v66 = v64;
          if (!(*(v81 + 48))(v65, 1, v64))
          {
            (*(v81 + 8))(&v32[v84], v66);
          }

          v67 = *(v86 + 32);
          v68 = sub_1A5244094();
          (*(*(v68 - 8) + 8))(v92 + v67, v68);
          v62 = *(v96 + 28);
          goto LABEL_77;
        case 0xAu:

          v12 = *(v11 + 56);
          goto LABEL_78;
        case 0xBu:

          v17 = (v11 + *(type metadata accessor for LemonadeSharedWithYouFeature(0) + 20));

          v18 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider(0);
          v19 = *(v18 + 24);
          v20 = sub_1A5243334();
          (*(*(v20 - 8) + 8))(v17 + v19, v20);
          v21 = v17 + *(v18 + 28);
          goto LABEL_36;
        case 0xCu:

          v13 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
          v14 = v13 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
          goto LABEL_35;
        case 0xDu:

          v95 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature(0);
          v22 = (v11 + *(v95 + 20));

          v23 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
          v89 = *(v23 + 24);
          v24 = sub_1A5243334();
          (*(*(v24 - 8) + 8))(v22 + v89, v24);
          v85 = v23;
          v90 = v22;
          v25 = v22 + *(v23 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v23) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v25, *(v25 + 1), v25[16]);
          if (v23 == 1)
          {
            sub_1A3C4208C(*(v25 + 3), *(v25 + 4), v25[40]);
            sub_1A3C47A98(0);
            v27 = *(v26 + 64);
            v28 = sub_1A5242C84();
            (*(*(v28 - 8) + 8))(&v25[v27], v28);
          }

          else
          {
            if (*(v25 + 5) >= 3uLL)
            {
            }

            if (*(v25 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v25 + 9), *(v25 + 10), v25[88]);
          }

          v57 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v58 = sub_1A5241F84();
          v80 = *(v58 - 8);
          v82 = v57;
          v59 = &v25[v57];
          v60 = v58;
          if (!(*(v80 + 48))(v59, 1, v58))
          {
            (*(v80 + 8))(&v25[v82], v60);
          }

          v83 = *(v85 + 32);
          v61 = sub_1A5244094();
          (*(*(v61 - 8) + 8))(v90 + v83, v61);

          v62 = *(v95 + 24);
          goto LABEL_77;
        case 0xFu:

          v36 = (v11 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

          v93 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
          v37 = v36 + *(v93 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v37, *(v37 + 1), v37[16]);
          v97 = v36;
          if (EnumCaseMultiPayload == 1)
          {
            sub_1A3C4208C(*(v37 + 3), *(v37 + 4), v37[40]);
            sub_1A3C47A98(0);
            v40 = *(v39 + 64);
            v41 = sub_1A5242C84();
            (*(*(v41 - 8) + 8))(&v37[v40], v41);
          }

          else
          {
            if (*(v37 + 5) >= 3uLL)
            {
            }

            if (*(v37 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v37 + 9), *(v37 + 10), v37[88]);
          }

          v69 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v70 = sub_1A5241F84();
          v71 = *(v70 - 8);
          v87 = v69;
          v72 = &v37[v69];
          v73 = v70;
          if (!(*(v71 + 48))(v72, 1, v70))
          {
            (*(v71 + 8))(&v37[v87], v73);
          }

          v12 = *(v97 + *(v93 + 32));
          goto LABEL_78;
        case 0x10u:

          v11 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
          v15 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x11u:

          v11 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

          v15 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x15u:

          v11 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
          v15 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_34:
          v14 = *(v15 + 24);
LABEL_35:
          v21 = (v11 + v14);
LABEL_36:
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v48 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v21, *(v21 + 1), v21[16]);
          if (v48 == 1)
          {
            sub_1A3C4208C(*(v21 + 3), *(v21 + 4), v21[40]);
            sub_1A3C47A98(0);
            v50 = *(v49 + 64);
            v51 = sub_1A5242C84();
            (*(*(v51 - 8) + 8))(&v21[v50], v51);
          }

          else
          {
            if (*(v21 + 5) >= 3uLL)
            {
            }

            if (*(v21 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v21 + 9), *(v21 + 10), v21[88]);
          }

          v52 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v53 = sub_1A5241F84();
          v54 = *(v53 - 8);
          v99 = v52;
          v55 = &v21[v52];
          v56 = v53;
          if (!(*(v54 + 48))(v55, 1, v53))
          {
            (*(v54 + 8))(&v21[v99], v56);
          }

          break;
        case 0x16u:

          v42 = v11 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20);
          v94 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
          v98 = v42;
          v43 = v42 + *(v94 + 20);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v44 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v43, *(v43 + 8), *(v43 + 16));
          if (v44 == 1)
          {
            sub_1A3C4208C(*(v43 + 24), *(v43 + 32), *(v43 + 40));
            sub_1A3C47A98(0);
            v46 = *(v45 + 64);
            v47 = sub_1A5242C84();
            (*(*(v47 - 8) + 8))(v43 + v46, v47);
          }

          else
          {
            if (*(v43 + 40) >= 3uLL)
            {
            }

            if (*(v43 + 56) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v43 + 72), *(v43 + 80), *(v43 + 88));
          }

          v74 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v75 = sub_1A5241F84();
          v76 = *(v75 - 8);
          v88 = v74;
          v77 = v43 + v74;
          v78 = v75;
          if (!(*(v76 + 48))(v77, 1, v75))
          {
            (*(v76 + 8))(v43 + v88, v78);
          }

          v11 = v98;

          v62 = *(v94 + 32);
LABEL_77:
          v12 = *(v11 + v62);
LABEL_78:

          break;
        default:
          break;
      }
    }
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t sub_1A459B220()
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v0 = MEMORY[0x1E6981790];
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A491BAF4(v3, 1, v1);

  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v0);
  return sub_1A524B6B4();
}

uint64_t sub_1A459B32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1A458E6E0(a1, v6, a2);
}

uint64_t sub_1A459B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A459B48C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A459B520()
{
  result = qword_1EB1C7CB8[0];
  if (!qword_1EB1C7CB8[0])
  {
    type metadata accessor for DropViewDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C7CB8);
  }

  return result;
}

uint64_t sub_1A459B578(__int128 *a1)
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C4E8(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A459B650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A459B6B8()
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A459B764(uint64_t a1)
{
  if (!qword_1EB13E030)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E030);
    }
  }
}

uint64_t sub_1A459B810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A459B878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A459B8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A459B9A8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_1A459BA98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A459BAF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = **(v1 + 16);
  sub_1A3C5322C();
  result = (*(*v3 + 432))(&v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A459BB8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A459C4E8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A459BC34(uint64_t a1)
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeShelfItem(319);
    if (v2 <= 0x3F)
    {
      sub_1A459C4E8(319, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        sub_1A459C4E8(319, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1A459C4E8(319, &qword_1EB13E060, sub_1A458D23C, MEMORY[0x1E6981948]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A459BE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_1A459BEDC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A459C4E8(0, a5, a6, MEMORY[0x1E69E6F90]);
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

unint64_t sub_1A459C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LemonadeShelfItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

  if (v17 < 1)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

  result = sub_1A459C5E0(a4, v15, type metadata accessor for LemonadeShelfItem);
  if (v12 >= v17)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_1A459C28C(uint64_t (*a1)(void))
{
  a1(0);
  sub_1A524BD24();
  sub_1A52483D4();

  return result;
}

uint64_t sub_1A459C330()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DropViewDelegate(0);
  v3 = (v1 + *(v2 + 28));
  v11 = *v3;
  v12 = *(v3 + 1);
  v4 = MEMORY[0x1E6981948];
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v10);
  v6 = sub_1A491BAF4(v10, 1, v5);

  v7 = (v1 + *(v2 + 32));
  v8 = *v7;
  v10 = v6;
  v11 = v8;
  v12 = *(v7 + 1);
  sub_1A459C4E8(0, &qword_1EB13E060, sub_1A458D23C, v4);
  return sub_1A524B904();
}

void sub_1A459C47C(uint64_t a1)
{
  if (!qword_1EB13E070)
  {
    type metadata accessor for LemonadeTwoShelfItemsRow(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E070);
    }
  }
}

void sub_1A459C4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A459C54C(uint64_t a1, uint64_t a2)
{
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A459C5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A459C648()
{
  result = qword_1EB13E080;
  if (!qword_1EB13E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E080);
  }

  return result;
}

void sub_1A459C6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A459C71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A459C77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A459C7CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A459C824@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v101 = a1;
  v4 = MEMORY[0x1E697F948];
  sub_1A45A8CF8(0, &qword_1EB122B58, MEMORY[0x1E697F948], a2);
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v91 = v82 - v6;
  sub_1A45A8D84(0, &qword_1EB122CB0, v4);
  v82[2] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = v82 - v8;
  v9 = MEMORY[0x1E697F960];
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = v82 - v11;
  v86 = type metadata accessor for LemonadePlaceholderView(0);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v89 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8CF8(0, &qword_1EB1224E0, v9, v12);
  v96 = *(v14 - 8);
  v97 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v90 = v82 - v15;
  sub_1A45A87E8(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5244EE4();
  v19 = *(v18 - 8);
  v98 = v18;
  v99 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v85 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v94 = v82 - v23;
  sub_1A45A8DE8(0, v22);
  v104 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v95 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB122C80, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A45A8DE8, MEMORY[0x1E697F948]);
  v103 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v100 = v82 - v27;
  v102 = type metadata accessor for LemonadeShelfPlaceholderView(0);
  MEMORY[0x1EEE9AC00](v102);
  v92 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(*v2 + 16);
  [v29 isCloudPhotoLibraryEnabled];
  v30 = sub_1A524C634();
  v31 = PXLocalizedString(v30);

  v32 = sub_1A524C674();
  v34 = v33;

  v35 = v3;
  v36 = sub_1A524C634();

  v37 = PXLocalizedString(v36);

  sub_1A524C674();
  v39 = v38;

  v40 = sub_1A3C38BD4(0xD000000000000029);
  v42 = v41;
  sub_1A3C38BD4(0xD000000000000020);
  if (*(v35 + 8) == 1)
  {
    v43 = v29;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v82[1] = v39;
  v92 = v29;

  v44 = type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0);
  v45 = v93;
  sub_1A45A986C(v35 + *(v44 + 24), v93, sub_1A45A87E8);
  v47 = v98;
  v46 = v99;
  if ((*(v99 + 48))(v45, 1, v98) == 1)
  {

    sub_1A45A74A4(v45, sub_1A45A87E8);
    v48 = 1;
    v49 = v100;
    v50 = v95;
    v51 = v92;
  }

  else
  {
    v52 = v94;
    (*(v46 + 32))(v94, v45, v47);
    v53 = v85;
    (*(v46 + 16))(v85, v52, v47);
    v54 = (*(v46 + 88))(v53, v47);
    v55 = v92;
    if (v54 == *MEMORY[0x1E69C12C0])
    {

      v56 = sub_1A524C634();
      v57 = PXLocalizedString(v56);

      sub_1A524C674();
      v58 = v55;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v59 = v42;
    v60 = v34;
    if (v54 != *MEMORY[0x1E69C12A0])
    {
      v78 = v92;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v61 = sub_1A524C634();
    v62 = PXLocalizedString(v61);

    v63 = sub_1A524C674();
    v64 = v47;
    v66 = v65;

    v67 = sub_1A524C634();
    v68 = PXLocalizedString(v67);

    v69 = sub_1A524C674();
    v71 = v70;

    v72 = v92;
    v73 = sub_1A3C5A374() & 1;
    v81 = v71;
    v74 = v89;
    v75 = v72;
    v51 = v92;
    sub_1A463DB54(v75, 1, 1, v73, 0x736569726F6D656DLL, 0xE800000000000000, v63, v66, v89, v69, v81, v32, v60, v40, v59, 0, 0, 0, 0);
    sub_1A45A986C(v74, v83, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    v76 = v84;
    sub_1A5249744();
    sub_1A45A90DC(v76, v91);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    v77 = v90;
    sub_1A5249744();
    sub_1A45A915C(v76);
    sub_1A45A74A4(v74, type metadata accessor for LemonadePlaceholderView);
    (*(v99 + 8))(v94, v64);
    v49 = v100;
    v50 = v95;
    sub_1A45A905C(v77, v95, v79);
    v48 = 0;
  }

  (*(v96 + 56))(v50, v48, 1, v97);
  sub_1A45A986C(v50, v49, sub_1A45A8DE8);
  swift_storeEnumTagMultiPayload();
  sub_1A459ECA0(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
  sub_1A45A8E5C(&qword_1EB1224D0, sub_1A45A8DE8, sub_1A45A8ECC, MEMORY[0x1E6982090]);
  sub_1A5249744();

  return sub_1A45A74A4(v50, sub_1A45A8DE8);
}

uint64_t sub_1A459D720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  *(a6 + 24) = v14;
  *(a6 + 40) = v15;
  *(a6 + 48) = swift_getKeyPath();
  *(a6 + 56) = 0;
  v12 = *(type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) + 40);
  *(a6 + v12) = swift_getKeyPath();
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

void sub_1A459D84C(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 18))
  {
    v11 = 0;
    LOBYTE(v12) = 1;
  }

  else
  {
    v22 = v8;
    if (shouldUseNewCollectionsLayout()())
    {
      v12 = *(v1 + 48);
      if (*(v1 + 56) != 1)
      {

        v13 = sub_1A524D254();
        v14 = sub_1A524A014();
        sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v12, 0);
        (*(v7 + 8))(v10, v22);
        LOBYTE(v12) = v23;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v11 = shouldUseNewCollectionsLayout()();
  }

  *a1 = sub_1A524BC74();
  a1[1] = v15;
  sub_1A459E74C(0, v16);
  sub_1A459DB4C(v11, v1, v12 & 1, a1 + *(v17 + 44));
  sub_1A45A986C(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_1A45A6F90(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  sub_1A459EF80(0, &qword_1EB13E100, sub_1A459FBA4, sub_1A410AB24, MEMORY[0x1E697E830]);
  v21 = (a1 + *(v20 + 36));
  *v21 = sub_1A410AEF4;
  v21[1] = 0;
  v21[2] = sub_1A459FAE4;
  v21[3] = v19;
}

uint64_t sub_1A459DB4C@<X0>(char a1@<W0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v92) = a3;
  v93 = a4;
  v6 = sub_1A52404F4();
  v82 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697F948];
  sub_1A459EF80(0, &qword_1EB13E1C8, sub_1A459E994, sub_1A459F004, MEMORY[0x1E697F948]);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v79 - v11;
  v12 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v85 = *(v12 - 8);
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EAF0(0);
  v84 = v14;
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E994(0);
  v88 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v87 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF38(0, v18);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v90 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E1D0, sub_1A459E7F8, sub_1A459EF38, v9);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v79 - v25;
  sub_1A459E7F8(0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v30 = sub_1A524BC74();
    v30[1] = v31;
    sub_1A45A9580(0);
    sub_1A459F0B4(a2, v92 & 1, v30 + *(v32 + 44));
    sub_1A45A9804(v30, v26, sub_1A459E7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8, MEMORY[0x1E6981880]);
    sub_1A459FD40(v33);
    sub_1A5249744();
    v34 = sub_1A459E7F8;
    v35 = v30;
  }

  else
  {
    v79[4] = v24;
    v79[5] = v28;
    v80 = v26;
    v81 = v21;
    if (v92)
    {
      v82 = v79;
      v36 = a2;
      v37 = *a2;
      LODWORD(v92) = *(v36 + 17);
      MEMORY[0x1EEE9AC00](v28);
      v79[3] = v78;
      MEMORY[0x1EEE9AC00](v38);
      v79[2] = v78;
      MEMORY[0x1EEE9AC00](v39);
      v79[1] = v78;
      sub_1A3F93438(0);
      v41 = v40;
      v79[0] = sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438, MEMORY[0x1E69C22B0]);
      sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438, MEMORY[0x1E69C22D8]);
      v42 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
      v43 = sub_1A459ECE8();
      v44 = sub_1A459ED3C();
      v45 = sub_1A459ED90();
      swift_retain_n();
      v78[2] = v44;
      v78[3] = v45;
      v78[0] = v42;
      v78[1] = v43;
      sub_1A5241E74();
      *(&v97 + 1) = v41;
      *&v98 = v42;
      *&v96 = v37;
      sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0, MEMORY[0x1E69C1C70]);
      v46 = v87;
      v47 = v84;
      sub_1A524A554();
      (*(v83 + 8))(v16, v47);
      __swift_destroy_boxed_opaque_existential_0(&v96);
      v48 = v86;
      sub_1A45A986C(v36, v86, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
      v49 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v50 = swift_allocObject();
      sub_1A45A6F90(v48, v50 + v49, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
      v51 = (v46 + *(v88 + 36));
      *v51 = sub_1A45A957C;
      v51[1] = v50;
      v51[2] = 0;
      v51[3] = 0;
      sub_1A45A9804(v46, v91, sub_1A459E994);
      swift_storeEnumTagMultiPayload();
      sub_1A459F004(0);
      sub_1A459FDF0();
      sub_1A459ECA0(&qword_1EB125750, sub_1A459F004, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
      v52 = v90;
      sub_1A5249744();
      sub_1A45A94FC(v46, sub_1A459E994);
    }

    else
    {
      v95 = *a2;

      sub_1A5242E44();
      if (v53)
      {
        v54 = sub_1A524C634();

        sub_1A52404E4();
        v55 = sub_1A52404B4();
        (v82[1])(v8, v6);
        v56 = [v54 px:v55 stringByDeletingCharactersInSet:?];

        v92 = sub_1A524C674();
        v58 = v57;
      }

      else
      {
        v92 = 0;
        v58 = 0;
      }

      sub_1A5242E54();
      v59 = v94;
      sub_1A3F93438(0);
      v61 = v60;
      v62 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
      v63 = MEMORY[0x1E6981E70];
      v64 = MEMORY[0x1E6981E60];
      v65 = sub_1A41F7694();
      v66 = sub_1A3C5A374();
      v67 = sub_1A43C9BB4();
      v69 = v68;
      v70 = swift_allocObject();
      *(v70 + 16) = v67;
      *(v70 + 24) = v69;
      v71 = sub_1A43C9BD0();
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v95, 0, 0, v92, v58, v59, v66 & 1, sub_1A3F8B548, &v96, v65, v70, v71, v63, v61, v64, v62);
      v72 = v101;
      v73 = v91;
      *(v91 + 64) = v100;
      *(v73 + 80) = v72;
      *(v73 + 96) = v102;
      v74 = v97;
      *v73 = v96;
      *(v73 + 16) = v74;
      v75 = v99;
      *(v73 + 32) = v98;
      *(v73 + 48) = v75;
      swift_storeEnumTagMultiPayload();
      sub_1A459F004(0);
      sub_1A459FDF0();
      sub_1A459ECA0(&qword_1EB125750, sub_1A459F004, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
      v52 = v90;
      sub_1A5249744();
    }

    sub_1A45A9804(v52, v80, sub_1A459EF38);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8, MEMORY[0x1E6981880]);
    sub_1A459FD40(v76);
    sub_1A5249744();
    v34 = sub_1A459EF38;
    v35 = v52;
  }

  return sub_1A45A94FC(v35, v34);
}

void sub_1A459E74C(uint64_t a1, double a2)
{
  if (!qword_1EB13E088)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13E088);
    }
  }
}

void sub_1A459E7F8(uint64_t a1)
{
  if (!qword_1EB13E098)
  {
    sub_1A459E88C(255);
    sub_1A459ECA0(&qword_1EB13E0F0, sub_1A459E88C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E098);
    }
  }
}

void sub_1A459E8C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A459E9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A459EA3C(uint64_t a1, double a2)
{
  if (!qword_1EB13E0C0)
  {
    sub_1A459EAF0(255);
    sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0, MEMORY[0x1E69C1C70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E0C0);
    }
  }
}

void sub_1A459EAF0(uint64_t a1)
{
  if (!qword_1EB13E0C8)
  {
    sub_1A3F93438(255);
    sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438, MEMORY[0x1E69C22B0]);
    sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438, MEMORY[0x1E69C22D8]);
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    sub_1A459ECE8();
    sub_1A459ED3C();
    sub_1A459ED90();
    v1 = sub_1A5241E64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E0C8);
    }
  }
}

void sub_1A459EC38(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A459ECA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A459ECE8()
{
  result = qword_1EB1C7D88;
  if (!qword_1EB1C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C7D88);
  }

  return result;
}

unint64_t sub_1A459ED3C()
{
  result = qword_1EB1C7D90;
  if (!qword_1EB1C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C7D90);
  }

  return result;
}

unint64_t sub_1A459ED90()
{
  result = qword_1EB1C7D98[0];
  if (!qword_1EB1C7D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C7D98);
  }

  return result;
}

void sub_1A459EE20(uint64_t a1)
{
  if (!qword_1EB13E0E0)
  {
    sub_1A3F93438(255);
    v3 = v2;
    v4 = sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438, MEMORY[0x1E69C22B0]);
    v5 = sub_1A459ECA0(&qword_1EB13E0E8, sub_1A3F93438, MEMORY[0x1E69C22D0]);
    v6 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    v9[0] = MEMORY[0x1E6981E70];
    v9[1] = v3;
    v9[2] = MEMORY[0x1E6981E60];
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v6;
    v7 = type metadata accessor for LemonadeFavoritingMaterialTitleCell(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB13E0E0);
    }
  }
}

void sub_1A459EF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A459F004(uint64_t a1)
{
  if (!qword_1EB125748)
  {
    sub_1A3F93438(255);
    v3 = v2;
    v4 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    v7[0] = MEMORY[0x1E6981E70];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E6981E60];
    v7[3] = v4;
    v5 = type metadata accessor for LemonadeMaterialTitleCell(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125748);
    }
  }
}

uint64_t sub_1A459F0B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v92 = a3;
  v74 = sub_1A52404F4();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EE20(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EDE4(0);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v71 - v12;
  v13 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v84 = *(v13 - 8);
  v83 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EAF0(0);
  v78 = v15;
  v79 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E994(0);
  v80 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v77 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E958(0);
  v81 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v86 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v71 - v26;
  v76 = a1;
  v27 = *a1;
  v75 = *(a1 + 17);
  v97 = a1;
  v96 = a1;
  v95 = a1;
  sub_1A3F93438(0);
  v29 = v28;
  v30 = sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438, MEMORY[0x1E69C22B0]);
  sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438, MEMORY[0x1E69C22D8]);
  v31 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
  sub_1A459ECE8();
  sub_1A459ED3C();
  sub_1A459ED90();
  swift_retain_n();
  v85 = v30;
  sub_1A5241E74();
  v32 = v31;
  v98[3] = v29;
  v98[4] = v31;
  v98[0] = v27;
  sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0, MEMORY[0x1E69C1C70]);
  v33 = v77;
  v34 = v78;
  sub_1A524A554();
  (*(v79 + 8))(v17, v34);
  __swift_destroy_boxed_opaque_existential_0(v98);
  v35 = v82;
  sub_1A45A986C(v76, v82, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v36 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v37 = swift_allocObject();
  sub_1A45A6F90(v35, v37 + v36, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v38 = (v33 + *(v80 + 44));
  *v38 = sub_1A45A9D60;
  v38[1] = v37;
  if (v94)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  v38[2] = 0;
  v38[3] = 0;
  sub_1A45A979C(v33, v24, sub_1A459E994);
  *&v24[*(v81 + 44)] = v39;
  sub_1A45A979C(v24, v93, sub_1A459E958);

  sub_1A5242E44();
  if (v40)
  {
    v41 = sub_1A524C634();

    v42 = v72;
    sub_1A52404E4();
    v43 = sub_1A52404B4();
    (*(v73 + 8))(v42, v74);
    v44 = [v41 px:v43 stringByDeletingCharactersInSet:?];

    v84 = sub_1A524C674();
    v83 = v45;
  }

  else
  {
    v84 = 0;
    v83 = 0;
  }

  sub_1A5242E54();
  v46 = v98[0];
  v47 = sub_1A459ECA0(&qword_1EB13E0E8, sub_1A3F93438, MEMORY[0x1E69C22D0]);
  v48 = MEMORY[0x1E6981E70];
  v49 = MEMORY[0x1E6981E60];
  v50 = v85;
  v51 = v32;
  v52 = sub_1A41F7694();
  v53 = sub_1A43C9BB4();
  v55 = v54;
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  *(v56 + 24) = v55;
  v70 = v47;
  *&v69 = v49;
  *(&v69 + 1) = v50;
  *&v68 = v48;
  *(&v68 + 1) = v29;
  v57 = v89;
  LemonadeFavoritingMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:background:)(v27, 0, 0, v84, v83, v46, sub_1A4276878, v56, v89, v52, v68, v69, v70, v51);
  if (v94)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = 1.0;
  }

  v59 = v57;
  v60 = v87;
  sub_1A45A6F90(v59, v87, sub_1A459EE20);
  *(v60 + *(v88 + 36)) = v58;
  v61 = v90;
  sub_1A45A6F90(v60, v90, sub_1A459EDE4);
  v62 = v93;
  v63 = v86;
  sub_1A45A9804(v93, v86, sub_1A459E958);
  v64 = v91;
  sub_1A45A986C(v61, v91, sub_1A459EDE4);
  v65 = v92;
  sub_1A45A9804(v63, v92, sub_1A459E958);
  sub_1A459E924(0);
  sub_1A45A986C(v64, v65 + *(v66 + 48), sub_1A459EDE4);
  sub_1A45A74A4(v61, sub_1A459EDE4);
  sub_1A45A94FC(v62, sub_1A459E958);
  sub_1A45A74A4(v64, sub_1A459EDE4);
  return sub_1A45A94FC(v63, sub_1A459E958);
}

uint64_t sub_1A459FAE4(_OWORD *a1)
{
  type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  sub_1A459E8C0(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A459FBA4(uint64_t a1)
{
  if (!qword_1EB13E108)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    sub_1A459FC4C();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E108);
    }
  }
}

unint64_t sub_1A459FC4C()
{
  result = qword_1EB13E110;
  if (!qword_1EB13E110)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8, MEMORY[0x1E6981880]);
    sub_1A459FD40(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E110);
  }

  return result;
}

unint64_t sub_1A459FD40(double a1)
{
  result = qword_1EB13E120;
  if (!qword_1EB13E120)
  {
    sub_1A459EF38(255, a1);
    sub_1A459FDF0();
    sub_1A459ECA0(&qword_1EB125750, sub_1A459F004, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E120);
  }

  return result;
}

unint64_t sub_1A459FDF0()
{
  result = qword_1EB13E128;
  if (!qword_1EB13E128)
  {
    sub_1A459E994(255);
    sub_1A459EAF0(255);
    sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0, MEMORY[0x1E69C1C70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E128);
  }

  return result;
}

uint64_t sub_1A459FED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *a1;

  v5 = shouldUseNewCollectionsLayout()();
  sub_1A459E8C0(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v6 = shouldUseNewCollectionsLayout()();
  LOBYTE(v2) = *(v2 + 18);
  v7 = v6;
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v9 > 250.0;
  *(a2 + 10) = v7;
  *(a2 + 11) = v2;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1A459FFC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 18);

  v5 = shouldUseNewCollectionsLayout()();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_1A45A0024()
{
  sub_1A3F93438(0);
  v1 = v0;
  sub_1A459ECA0(&qword_1EB1291C8, sub_1A3F93438, MEMORY[0x1E69C22A8]);
  v2 = PhotosModel.photokitObject.getter(v1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      sub_1A3C48B8C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A52F8E10;
      *(v6 + 56) = sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
      *(v6 + 32) = v5;
      sub_1A3C52C70(0, &qword_1EB126690, 0x1E695DEC8);
      v7 = v3;
      v8 = MEMORY[0x1A5908EF0](v6);
      v9 = [objc_opt_self() defaultHelper];
      [v9 clearAnyPendingNotificationsFromMemories_];
      [v9 clearAnyPendingStateFromMemories_];
    }

    else
    {
    }
  }
}

uint64_t sub_1A45A01C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v27 = sub_1A5243834();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E8C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v30 = sub_1A5243EC4();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &unk_1EB127F40, sub_1A45A8A18, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1A45A8A18(0);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 enableInlinePlaybackMemories];

  if (v17)
  {
    sub_1A5242E24();
    v46[0] = v46[1];
    sub_1A5242E54();
    v18 = v38;
    sub_1A5242E34();
    v19 = *(v45 + 16);

    v43 = v19;
    v44 = 0;
    v20 = MEMORY[0x1E69E5FE0];
    v21 = MEMORY[0x1E69E5FE8];
    j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ();
    v32 = v38;
    v33 = v39;
    v34 = *(&v39 + 1);
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v22 = sub_1A3D41FBC();
    LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(v46, v18, 0, 0, v20, v21, v15, v22);
    sub_1A45A986C(v15, v12, sub_1A45A8A18);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return sub_1A45A74A4(v15, sub_1A45A8A18);
  }

  else
  {
    sub_1A5242E54();
    v38 = 0u;
    v39 = 0u;
    v40 = 1;
    v24 = sub_1A52429A4();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v27);
    sub_1A5243ED4();
    v25 = v30;
    (*(v7 + 16))(v12, v9, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return (*(v7 + 8))(v9, v25);
  }
}

uint64_t sub_1A45A0808@<X0>(uint64_t a1@<X8>)
{
  sub_1A459E9D0(0, &qword_1EB13E1C0, type metadata accessor for LemonadeMemoryCellPlayButtonView, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeMemoryCellPlayButtonView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 9) == 1)
  {
    v25 = *v1;
    v26 = a1;
    v13 = v1[2];
    v14 = *(v1 + 24);
    v24 = *(v1 + 8);
    if (v24)
    {
      if (v14)
      {
        v30 = v13 & 1;
        v15 = v13;
      }

      else
      {
        sub_1A3D35B8C(v13, 0);
        v23 = sub_1A524D254();
        v21 = sub_1A524A014();
        sub_1A5246DF4(v23, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v13, 0);
        (*(v7 + 8))(v9, v6);
        v15 = v30;
      }

      v29 = v15 & 1;
      v28 = 1;
      v17 = 0;
      v19 = 0;
      v20 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v29, &v28);
    }

    else
    {
      v27 = 8;
      v17 = sub_1A3DD18A8();
      v19 = v18;
      v20 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = v24;
    *(v22 + 25) = 1;
    *(v22 + 32) = v13;
    *(v22 + 40) = v14;

    sub_1A3D35B8C(v13, v14);
    sub_1A3EC0634(v20, v17, v19, sub_1A45A8CD8, v22, v12);
    sub_1A45A986C(v12, v5, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView, &unk_1A5304F30);
    sub_1A5249744();
    return sub_1A45A74A4(v12, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView, &unk_1A5304F30);
    return sub_1A5249744();
  }
}

void sub_1A45A0C28(unsigned __int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = a2;
  v3 = a1;
  v2 = a1;
  sub_1A5245BA4();
}

uint64_t sub_1A45A1010@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  sub_1A45A8AC8(0);
  v57 = v2;
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E1A0, MEMORY[0x1E69C2858], sub_1A45A8AC8, MEMORY[0x1E697F948]);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v42 - v5;
  v6 = sub_1A5249234();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1A5243C34();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52404F4();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5243C54();
  MEMORY[0x1EEE9AC00](v12);
  v15 = *v1;
  v16 = *(v1 + 9);
  v17 = *(v1 + 10);
  v18 = *(v1 + 11);
  v19 = v1[2];
  v20 = *(v1 + 24);
  if (*(v1 + 8) == 1)
  {
    v42 = *(v1 + 11);
    v43 = v20;
    v44 = v17;
    v45 = v16;
    v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v14;
    v52 = v12;
    v21 = sub_1A5242E44();
    if (v22)
    {
      v23 = sub_1A524C634();

      sub_1A52404E4();
      v24 = sub_1A52404B4();
      (*(v51 + 8))(v11, v9);
      v25 = [v23 px:v24 stringByDeletingCharactersInSet:?];

      v54 = sub_1A524C674();
    }

    else
    {
      v54 = v21;
    }

    v32 = v42;
    v31 = v43;
    sub_1A5242E64();
    v33 = MEMORY[0x1E69C2848];
    if (v32)
    {
      if (v31)
      {
        v34 = v19;
        v63 = v19 & 1;
      }

      else
      {
        sub_1A3D35B8C(v19, 0);
        v37 = sub_1A524D254();
        v38 = sub_1A524A014();
        sub_1A5246DF4(v37, &dword_1A3C1C000, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v39 = v48;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v19, 0);
        (*(v49 + 8))(v39, v50);
        v34 = v63;
      }

      v36 = v52;
      v62 = v34 & 1;
      v61 = 1;
      if (!static LemonadeRootViewOrientation.== infix(_:_:)(&v62, &v61))
      {
        v33 = MEMORY[0x1E69C2850];
      }

      v35 = v59;
    }

    else
    {
      v35 = v59;
      v36 = v52;
    }

    (*(v53 + 104))(v56, *v33, v55);
    v40 = v46;
    sub_1A5243C44();
    v41 = v47;
    (*(v47 + 16))(v35, v40, v36);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858], MEMORY[0x1E69C2840]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8, MEMORY[0x1E69C2528]);
    sub_1A5249744();
    return (*(v41 + 8))(v40, v36);
  }

  else
  {
    v64 = *v1;
    v26 = swift_allocObject();
    *(v26 + 16) = v15;
    *(v26 + 24) = 0;
    *(v26 + 25) = v16;
    *(v26 + 26) = v17;
    *(v26 + 27) = v18;
    *(v26 + 32) = v19;
    *(v26 + 40) = v20;
    swift_retain_n();
    sub_1A3D35B8C(v19, v20);
    sub_1A3F93438(0);
    sub_1A459ECA0(&qword_1EB13E198, sub_1A3F93438, MEMORY[0x1E69C22E0]);
    v27 = v52;
    sub_1A52435F4();
    v28 = v54;
    v29 = v57;
    (*(v54 + 16))(v59, v27, v57);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858], MEMORY[0x1E69C2840]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8, MEMORY[0x1E69C2528]);
    sub_1A5249744();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_1A45A17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1A524CC54();
  v3[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45A1884, v5, v4);
}

uint64_t sub_1A45A1884(double a1)
{
  sub_1A5242E34();
  v2 = *(v1[2] + 16);
  v1[9] = v2;
  v3 = v2;

  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1A45A1944;
  v5 = v1[3];
  v6 = v1[4];

  return sub_1A45A1ACC(v5, v3, v6);
}

uint64_t sub_1A45A1944()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A45A1A60;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DB3864;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45A1A60()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A45A1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1A459E8C0(0, &qword_1EB127698, MEMORY[0x1E6980FE0], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  v4 = sub_1A5242AE4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45A1BF8, 0, 0);
}

uint64_t sub_1A45A1BF8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = [v2 storyTitleCategory];
  v4 = objc_opt_self();
  sub_1A5243294();
  v5 = sub_1A524C634();

  v6 = [v4 stylePairingFromTitleCategory:v3 string:v5 kind:1 layoutScheme:0];

  v7 = [v4 titleFontDescriptorForStylePairing:v6 kind:1];
  sub_1A52432A4();
  v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];
  LODWORD(v4) = [v4 titleShouldBeUppercasedForStylePairing:v6 kind:1];
  sub_1A45A1F30(v2, v1);
  v21 = v9;
  sub_1A524A284();
  v22 = v3;
  if (v4)
  {
    v10 = v0[5];
    v11 = *MEMORY[0x1E6980FD8];
    v12 = sub_1A524A394();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v10, v11, v12);
    v14 = 0;
  }

  else
  {
    v12 = sub_1A524A394();
    v13 = *(v12 - 8);
    v14 = 1;
  }

  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  (*(v13 + 56))(v0[5], v14, 1, v12);
  (*(v17 + 16))(v16, v15, v18);
  sub_1A5242624();

  (*(v17 + 8))(v15, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A45A1F30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_1A5242AB4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8C0C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v48 - v17;
  v19 = [a1 localIdentifier];
  if (!v19)
  {
    sub_1A524C674();
    v19 = sub_1A524C634();
  }

  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v20 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

  if (!v20)
  {
    sub_1A45A8C40();
    swift_allocError();
    *v27 = 1;
    *(v27 + 8) = 1;
    return swift_willThrow();
  }

  v51 = v11;
  v50 = sub_1A524C674();
  v52 = v21;
  sub_1A5243294();
  v22 = sub_1A524C634();

  v23 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v22, v20);

  if (v23 == 1)
  {
    v32 = sub_1A52432B4();
    if (v33)
    {
      v34 = v32;
      v35 = sub_1A524C634();
      v36 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v35, v20);

      if (v36 != 1)
      {
        v49 = v34;
        if (qword_1EB15B4C8 != -1)
        {
          swift_once();
        }

        v47 = sub_1A5246F24();
        __swift_project_value_buffer(v47, qword_1EB15B4D0);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v23 = 1;
  }

  else
  {
  }

  if (MEMORY[0x1A590D320]())
  {
    v24 = *MEMORY[0x1E69C20E8];
    v25 = sub_1A5242AD4();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v18, v24, v25);
    (*(v26 + 56))(v18, 0, 1, v25);
  }

  else
  {
    v29 = sub_1A5242AD4();
    (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  }

  v30 = v56;
  if (v23 == 2)
  {

    v31 = MEMORY[0x1E69C20D8];
  }

  else
  {
    if (v23 == 1)
    {
      v49 = v6;
      sub_1A45A986C(v18, v56, sub_1A45A8C0C);
      v37 = sub_1A5242AD4();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v30, 1, v37) == 1)
      {
        sub_1A459E8C0(0, &qword_1EB13E1B8, MEMORY[0x1E69C20F8], MEMORY[0x1E69E6F90]);
        v48[0] = v39;
        v48[1] = v2;
        v40 = *(v38 + 72);
        v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1A52FC9F0;
        v43 = v42 + v41;
        v44 = *(v38 + 104);
        v44(v43, *MEMORY[0x1E69C20E8], v37);
        v44(v43 + v40, *MEMORY[0x1E69C20F0], v37);
        sub_1A524CA84();
      }

      v46 = v51;
      (*(v38 + 32))(v51, v30, v37);
      (*(v38 + 56))(v46, 0, 1, v37);
      (*(v53 + 104))(v49, *MEMORY[0x1E69C20E0], v54);
      sub_1A45A986C(v46, v14, sub_1A45A8C0C);
      sub_1A5242AC4();
      sub_1A45A74A4(v46, sub_1A45A8C0C);
      return sub_1A45A74A4(v18, sub_1A45A8C0C);
    }

    if (v23)
    {

      sub_1A45A8C40();
      swift_allocError();
      *v45 = v23;
      *(v45 + 8) = 0;
      swift_willThrow();
      return sub_1A45A74A4(v18, sub_1A45A8C0C);
    }

    v31 = MEMORY[0x1E69C20D0];
  }

  (*(v53 + 104))(v6, *v31, v54);
  sub_1A45A986C(v18, v14, sub_1A45A8C0C);
  sub_1A5242AC4();
  return sub_1A45A74A4(v18, sub_1A45A8C0C);
}

void sub_1A45A27E8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  v7 = [v4 transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:*(a2 + 16)];

  v8 = *(a2 + 24);
  sub_1A459EC38(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 2;
  v9 = v7;
  v10 = v8;
  sub_1A3C6C180(&v17);
  v25 = v17;
  v26 = v18;
  sub_1A3C6C18C(&v23);
  v21 = v23;
  v22 = v24;
  LOBYTE(v7) = sub_1A3C5A374();
  v11 = sub_1A3C30368();
  v12 = sub_1A3C5A374();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v25, 0, &unk_1F17170C0, 0, 1, &v21, v7 & 1, &v27, v20, v11, v12 & 1, v13 & 1, v14 & 1, 0);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a1;

  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, v8, v28, v20, &v17, sub_1A45A2A28, v15);
}

id sub_1A45A2A28()
{
  v1 = *(v0 + 24);
  sub_1A459EC38(0, &qword_1EB12A020, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v2 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v3 = sub_1A45A6D74(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    sub_1A3C48B8C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F8E10;
    *(v6 + 56) = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_1A524CA14();

    v9 = [v5 transientCollectionListWithCollections:v8 title:0 identifier:0];

    sub_1A3C52C70(0, &qword_1EB120A70, 0x1E6978760);
    v10 = [swift_getObjCClassFromMetadata() fetchCollectionsInCollectionList:v9 options:v2];
  }

  else
  {

    return 0;
  }

  return v10;
}

double sub_1A45A2BDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3C38BD4(0xD000000000000020);
  v29 = v8;
  v30 = v7;
  v32 = 8;
  v27 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v28 = v9;
  v10 = MEMORY[0x1E69C12C8];
  sub_1A459E8C0(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v11 = *(v4 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = v12 + 2 * v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v12;
  v16 = *(v5 + 104);
  v16(v15, *MEMORY[0x1E69C12A8], v3);
  v16(v15 + v11, *MEMORY[0x1E69C12C0], v3);
  v17 = v26;
  v16(v26, *MEMORY[0x1E69C12A0], v3);
  v18 = sub_1A45A6954(1, 3, 1, v14, &qword_1EB126230, v10, MEMORY[0x1E69C12C8]);
  *(v18 + 2) = 3;
  v19 = (*(v5 + 32))(&v18[v13], v17, v3);
  v20 = MEMORY[0x1A590D320](v19);
  v21 = v30;
  *a2 = v31;
  *(a2 + 8) = 1;
  v22 = v29;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(a2 + 32) = v18;
  *(a2 + 40) = v24;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = v23;
  *(a2 + 72) = v20 ^ 1;
  type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_1A45A2EA4@<X0>(uint64_t a1@<X8>)
{
  sub_1A459E8C0(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {

    return sub_1A42E7F0C(2, 1, 2, a1);
  }

  else
  {
    v9 = sub_1A3C47918();
    v11 = v10;
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v21 = a1;
    v19 = v18;
    v20 = sub_1A3C4ED50(v15);
    v22 = 1;
    *v7 = sub_1A45A3090;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 6;
    v7[32] = 1;
    *(v7 + 5) = v9;
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    *(v7 + 8) = v14;
    *(v7 + 9) = v15;
    *(v7 + 10) = v17;
    v7[88] = v19;
    v7[89] = v20;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 2, v4, v21);
  }
}

uint64_t sub_1A45A3090(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 0;
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

double sub_1A45A31C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  *(a2 + 24) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) + 40);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = 1;

  return result;
}

void sub_1A45A3600(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v19[3] = a5;
    sub_1A45A2BDC(a3, v15);
    sub_1A45A986C(v15, v12, type metadata accessor for LemonadeNavigationDestination);
    v16 = sub_1A45A6954(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1A45A6954((v17 > 1), v18 + 1, 1, v16, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    sub_1A45A74A4(v15, type metadata accessor for LemonadeNavigationDestination);
    v16[2] = v18 + 1;
    sub_1A45A6F90(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, type metadata accessor for LemonadeNavigationDestination);
  }

  sub_1A45A32B8();
}

uint64_t sub_1A45A3968()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E8C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A45A3B90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isMemoriesVirtualCollection])
  {
    sub_1A45A2BDC(a2, a3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t sub_1A45A3C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A45A2BDC(a1, a2);
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_1A45A3CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3C6F83C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

double sub_1A45A3D68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v5 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0) + 24);
  v6 = sub_1A5244EE4();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *a2 = v4;
  *(a2 + 8) = 1;

  return result;
}

unint64_t sub_1A45A3E0C(uint64_t a1)
{
  v2 = sub_1A3C411C8();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45A3E48()
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A45A3EF4(uint64_t a1)
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  return sub_1A524C4B4();
}

uint64_t sub_1A45A3F84(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

id sub_1A45A4030()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 memoriesCollection];

  return v2;
}

void sub_1A45A408C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeMemoriesFeature.FeedProvider(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = *(*v1 + 40);
  v10 = *(v9 + 24);
  v11 = sub_1A5244EE4();
  (*(*(v11 - 8) + 16))(&v5[v10], a1, v11);
  *v5 = v7;
  *(v5 + 1) = v8;
  v12 = sub_1A459ECA0(&qword_1EB12A0A8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CB28);
  v13 = sub_1A3C6F83C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
  v14 = v7;
  v15 = v8;
  sub_1A4997A44(v5, a1, v6, v3, v12, v13);
}

uint64_t sub_1A45A4230(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A459ECA0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  if (*(v2 + 24))
  {
    sub_1A524ECB4();
    sub_1A524C794();
  }

  else
  {
    sub_1A524ECB4();
  }

  v3 = *(v2 + 32);
  v4 = *(v3 + 16);
  MEMORY[0x1A590A010](v4);
  if (v4)
  {
    v5 = *(sub_1A5244EE4() - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1A459ECA0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
    do
    {
      sub_1A524C4B4();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  sub_1A524C794();
  sub_1A3F3D084();
  return sub_1A524C4B4();
}

uint64_t sub_1A45A441C()
{
  sub_1A524EC94();
  sub_1A45A4230(v2, v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A45A4460(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A45A4230(v3, v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A45A449C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1A45A6C78(v7, v9) & 1;
}

uint64_t sub_1A45A44F8()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeMemoriesFeature.FeedProvider(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 24), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x1E69C12A8])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x1E69C12C0])
  {
    v7 = 0xD000000000000035;
    return sub_1A3C38BD4(v7);
  }

  if (v6 == *MEMORY[0x1E69C12B8])
  {
LABEL_2:
    v7 = 0xD000000000000030;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69C12B0])
    {
      if (v6 == *MEMORY[0x1E69C12A0])
      {
        v8 = sub_1A524C634();
        v9 = PXMemoryCreationLocalizedString(v8);

        v10 = sub_1A524C674();
        return v10;
      }

      (*(v2 + 8))(v4, v1);
    }

    v7 = 0xD000000000000020;
  }

  return sub_1A3C38BD4(v7);
}

uint64_t sub_1A45A4708@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 8))
  {
    v6 = sub_1A437C79C();
    return sub_1A45A986C(v6, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v8 = sub_1A3C47918();
    v10 = v9;
    v11 = sub_1A3C47918();
    v13 = v12;
    v14 = sub_1A3C52D68();
    v16 = v15;
    v18 = v17;
    v19 = sub_1A3C4ED50(v14);
    v22[8] = 1;
    *v5 = sub_1A45A4864;
    *(v5 + 1) = 0;
    v5[16] = 2;
    *(v5 + 3) = 6;
    v5[32] = 1;
    *(v5 + 5) = v8;
    *(v5 + 6) = v10;
    *(v5 + 7) = v11;
    *(v5 + 8) = v13;
    *(v5 + 9) = v14;
    *(v5 + 10) = v16;
    v5[88] = v18;
    v5[89] = v19;
    swift_storeEnumTagMultiPayload();
    v20 = sub_1A3DC1AF8();
    return sub_1A437C3B8(v5, 3, v20, v21 & 1, a1);
  }
}

uint64_t sub_1A45A4864()
{
  if (shouldUseNewCollectionsLayout()())
  {
    return 41;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_1A45A4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v40 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52486A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242D14();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x1E69C2210], v11, v13);
  sub_1A459ECA0(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v16 = sub_1A524C594();
  v17 = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) != 0 || (MEMORY[0x1EEE9AC00](v17), *(&v40 - 2) = a1, sub_1A3F2A5C4(v10), v18 = sub_1A41875F0(sub_1A45A7504, (&v40 - 4), a1, v10), (*(v8 + 8))(v10, v7), (v18 & 1) == 0))
  {
    if (*(v3 + 8))
    {
      v32 = sub_1A437C79C();
      return sub_1A45A986C(v32, v41, type metadata accessor for LemonadeFeedBodyStyle);
    }

    v19 = sub_1A3C47918();
    v21 = v34;
    v22 = sub_1A3C47918();
    v24 = v35;
    v25 = sub_1A3C52D68();
    v27 = v36;
    v29 = v37;
    v30 = sub_1A3C4ED50(v25);
    v43 = 1;
    v31 = sub_1A45A4864;
  }

  else
  {
    v19 = sub_1A43A1980(12.0);
    v21 = v20;
    v22 = sub_1A43A1980(32.0);
    v24 = v23;
    v25 = sub_1A3C52D68();
    v27 = v26;
    v29 = v28;
    v30 = sub_1A3C4ED50(v25);
    v42 = 1;
    v31 = sub_1A45A4C40;
  }

  *v6 = v31;
  *(v6 + 1) = 0;
  v6[16] = 2;
  *(v6 + 3) = 6;
  v6[32] = 1;
  *(v6 + 5) = v19;
  *(v6 + 6) = v21;
  *(v6 + 7) = v22;
  *(v6 + 8) = v24;
  *(v6 + 9) = v25;
  *(v6 + 10) = v27;
  v6[88] = v29;
  v6[89] = v30;
  swift_storeEnumTagMultiPayload();
  v38 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v6, 3, v38, v39 & 1, v41);
}

uint64_t sub_1A45A4C40(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C2200] || v7 == *MEMORY[0x1E69C21F8])
  {
    return 16;
  }

  (*(v3 + 8))(v6, v2);
  return 13;
}

uint64_t sub_1A45A4D8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultHelper];
  [v2 clearAnyPendingNotificationsFromMemories_];
  [v2 clearAnyPendingStateFromMemories_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A45A4E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E130, sub_1A45A7620, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, MEMORY[0x1E697F948]);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1A5243284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7620(0);
  v30 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 8);
  if (v18)
  {
    v19 = *MEMORY[0x1E69E7D40] & *v18;
    v28 = v4;
    v20 = *(v19 + 1344);
    v27 = v18;
    v20();
    *&v34 = a1;

    sub_1A5242E44();
    v26 = v21;
    (*(v11 + 104))(v13, *MEMORY[0x1E69C23E0], v10);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3F93438(0);
    sub_1A5243EC4();
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5242AA4();
    v22 = v30;
    (*(v15 + 16))(v9, v17, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620, MEMORY[0x1E69C20C8]);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, &unk_1A534C998);
    sub_1A5249744();

    return (*(v15 + 8))(v17, v22);
  }

  else
  {
    type metadata accessor for CGSize(0);
    v32 = 0;
    v33 = 0;
    sub_1A524B694();
    v24 = v35;
    *(v6 + 24) = v34;
    *(v6 + 5) = v24;
    *(v6 + 6) = swift_getKeyPath();
    v6[56] = 0;
    v25 = *(v4 + 40);
    *&v6[v25] = swift_getKeyPath();
    sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *v6 = a1;
    *(v6 + 1) = 0;
    v6[16] = 1;
    *(v6 + 17) = 257;
    sub_1A45A986C(v6, v9, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620, MEMORY[0x1E69C20C8]);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, &unk_1A534C998);

    sub_1A5249744();
    return sub_1A45A74A4(v6, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  }
}

uint64_t sub_1A45A5440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v44[1] = a1;
  v47 = a2;
  sub_1A424ADF0(0, a3);
  v50 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74(0);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7714(0, v9);
  v49 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1A45A77C8(0);
  v16 = v15;
  v44[0] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A7868(0);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMemoryCreationEnabled] && (sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0), v22 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v23 = objc_msgSend(v22, sel_showFreeformMemoryCreationButtonInMemoryFeed), v22, v23))
  {
    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 1 || (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v26 = [swift_getObjCClassFromMetadata() sharedInstance], v27 = objc_msgSend(v26, sel_defaultPhoneFeedNavigationType), v26, v27))
    {
      sub_1A5249834();
    }

    else
    {
      sub_1A5249824();
    }

    v28 = v47;
    type metadata accessor for LemonadeMemoriesCreationButton(0);
    sub_1A459ECA0(&qword_1EB1297B0, type metadata accessor for LemonadeMemoriesCreationButton, &unk_1A5324740);
    sub_1A5247F24();
    v29 = sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8, MEMORY[0x1E697BEF0]);
    v30 = v45;
    MEMORY[0x1A5904CD0](v18, v16, v29);
    v51 = v16;
    v52 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
    v51 = v8;
    v52 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v49;
    MEMORY[0x1A5904CE0](v30, v49, v50, OpaqueTypeConformance2, v33);
    (*(v46 + 8))(v30, v34);
    (*(v44[0] + 8))(v18, v16);
  }

  else
  {
    sub_1A3F930BC();
    (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
    v36 = sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
    MEMORY[0x1A5904CD0](v11, v8, v36);
    v37 = sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8, MEMORY[0x1E697BEF0]);
    v51 = v16;
    v52 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v51 = v8;
    v52 = v36;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = v50;
    MEMORY[0x1A5904CF0](v6, v49, v50, v38, v39);
    (*(v4 + 8))(v6, v40);
    sub_1A45A74A4(v11, sub_1A424AE74);
    v28 = v47;
  }

  v41 = sub_1A45A78B0();
  MEMORY[0x1A5904CD0](v21, v48, v41);
  sub_1A45A94FC(v21, sub_1A45A7868);
  sub_1A45A7A00(0);
  return (*(*(v42 - 8) + 56))(v28, 0, 1, v42);
}

id sub_1A45A5B5C(uint64_t a1)
{
  sub_1A44CB134(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1A52453A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMemoryCreationEnabled];
  if (result)
  {
    v13 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 56);
    if (v13)
    {
      v14 = *(*v13 + 192);

      v14(v15);
      (*(v9 + 56))(v4, 0, 1, v8);
      sub_1A475C0F0(v4, v16, v7);
      sub_1A45A74A4(v4, sub_1A44CB134);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_1A45A74A4(v7, sub_1A44CB134);
      }

      else
      {
        (*(v9 + 32))(v11, v7, v8);
        v17 = sub_1A475C3A0(v11);

        (*(v9 + 8))(v11, v8);
        if (v17)
        {
          return (*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext) < 2u);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1A45A5DEC(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  sub_1A5245BA4();
}

uint64_t sub_1A45A6194(uint64_t a1)
{
  MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE90000000000002DLL);
  sub_1A5244EE4();
  sub_1A524E624();
  return 0;
}

uint64_t sub_1A45A6224(uint64_t a1)
{
  v3 = sub_1A5244EE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 24), v3, v5);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69C12A0])
  {
    return 7169887;
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

double sub_1A45A6398(uint64_t a1)
{
  sub_1A3DB4F20(0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*a1 + 24);
  if (v6)
  {
    v7 = v6;
    sub_1A524CC64();
    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_1A3D4D930(0, 0, v5, &unk_1A534D110, v9);
  }

  return result;
}

uint64_t sub_1A45A64D8@<X0>(uint64_t a1@<X8>)
{

  return sub_1A3FF28EC(v2, a1);
}

uint64_t sub_1A45A6510@<X0>(void *a2@<X8>)
{
  MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE90000000000002DLL);
  sub_1A5244EE4();
  result = sub_1A524E624();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id sub_1A45A65A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v4 = *(a1 + 24);
  v5 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0) + 20);
  v6 = sub_1A5244EE4();
  (*(*(v6 - 8) + 16))(&a2[v5], v2 + v4, v6);
  *a2 = v8;

  return v8;
}

double sub_1A45A6654@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v8 = *(type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0) + 24);
  v9 = *(a2 + 24);
  v10 = sub_1A5244EE4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3 + v8, v4 + v9, v10);
  (*(v11 + 56))(a3 + v8, 0, 1, v10);
  *a3 = v7;
  *(a3 + 8) = 0;

  return result;
}

uint64_t sub_1A45A6740()
{
  sub_1A459ECA0(&qword_1EB12A0A0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CB60);

  return sub_1A3C47918();
}

id sub_1A45A67AC()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 memoriesCollection];

  return v2;
}

void sub_1A45A6804()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4D0);
  __swift_project_value_buffer(v0, qword_1EB15B4D0);
  sub_1A5246EF4();
}

uint64_t PXStoryTitleInternationalStyle.description.getter(uint64_t a1, __n128 a2)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x6164696873616BLL;
    case 1:
      return 0x6C61636974726576;
  }

  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  MEMORY[0x1A5907B60](62, 0xE100000000000000);
  return 0x6E776F6E6B6E753CLL;
}

void *sub_1A45A6954(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A459E8C0(0, a5, a6, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A45A6B48(void *a1, void *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0);
    sub_1A5244EE4();
    sub_1A459ECA0(&qword_1EB128F98, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12E0]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A45A6C78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(*a1, *a2) & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6 || (*(a1 + 16) != *(a2 + 16) || v5 != v6) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_1A4333BDC(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a1 + 72);

  return sub_1A457F668(v7, v8, v12, v9, v10, v11);
}

id sub_1A45A6D74(uint64_t a1, void *a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setFetchLimit_];
  v9 = *(a1 + 16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12A8], v4);
  sub_1A5244EF4();
  swift_allocObject();
  v10 = v9;
  v11 = a2;
  sub_1A5244ED4();
  sub_1A5244B94();
  v12 = sub_1A5244B84();
  v13 = [v12 firstObject];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v13 options:v11];
    if (v15)
    {
      v16 = v15;
      v17 = [v10 px_virtualCollections];
      v18 = [v17 featuredMemoriesCollectionsWithAssetFetchResult_];

      return v18;
    }
  }

  return 0;
}

uint64_t sub_1A45A6F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A6FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45A986C(a1, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    v12 = *(a2 + 16);
    (*(v5 + 104))(v7, *MEMORY[0x1E69C12B0], v4);
    sub_1A3C6BD20(v12, a2, v7, 1, 0);
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v14 = v10[1];
    v15 = objc_opt_self();
    v16 = sub_1A524CA14();
    v17 = [v15 transientCollectionListWithCollections:v16 title:0 identifier:0 photoLibrary:*(a2 + 16)];

    v18 = *(a2 + 24);
    sub_1A459EC38(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v38 = 2;
    v19 = v17;
    v20 = v18;
    sub_1A3C6C180(&v28);
    v36 = v28;
    v37 = v29;
    sub_1A3C6C18C(&v34);
    v32 = v34;
    v33 = v35;
    LOBYTE(v17) = sub_1A3C5A374();
    v21 = sub_1A3C30368();
    v22 = sub_1A3C5A374();
    v23 = sub_1A3C5A374();
    v24 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v36, 0, &unk_1F1717110, 0, 1, &v32, v17 & 1, &v38, v31, v21, v22 & 1, v23 & 1, v24 & 1, 0);
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    *(v25 + 24) = v14;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v19, v18, v39, v31, &v28, sub_1A45A9334, v25);
  }

  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xE000000000000000;
  sub_1A524E404();

  *&v31[0] = 0xD00000000000001BLL;
  *(&v31[0] + 1) = 0x80000001A53B42A0;
  sub_1A459ECA0(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
  v26 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v26);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A45A74A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45A7504@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for LemonadeFeedStyleOptions(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

void sub_1A45A753C(void **a1, uint64_t a2)
{
  if ([objc_opt_self() isMemoryCreationEnabled])
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      sub_1A524CC54();

      sub_1A3C67884(sub_1A45A92E4, v4, "PhotosUICore/LemonadeMemoriesFeature.swift", 42, 2u, 673);
    }
  }

  v5 = *a1;
  v6 = a1 + *(type metadata accessor for LemonadeMemoriesFeature.MemoriesListManagerOptions(0) + 20);

  sub_1A3C6BD20(v5, a2, v6, 0, 1);
}

void sub_1A45A7620(uint64_t a1)
{
  if (!qword_1EB13E138)
  {
    sub_1A3F93438(255);
    sub_1A5243EC4();
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E138);
    }
  }
}

void sub_1A45A7714(uint64_t a1, double a2)
{
  if (!qword_1EB127CA0)
  {
    sub_1A45A77C8(255);
    sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127CA0);
    }
  }
}

void sub_1A45A77C8(uint64_t a1)
{
  if (!qword_1EB128A18)
  {
    type metadata accessor for LemonadeMemoriesCreationButton(255);
    sub_1A459ECA0(&qword_1EB1297B0, type metadata accessor for LemonadeMemoriesCreationButton, &unk_1A5324740);
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128A18);
    }
  }
}

unint64_t sub_1A45A78B0()
{
  result = qword_1EB127D78;
  if (!qword_1EB127D78)
  {
    sub_1A45A7868(255);
    sub_1A45A77C8(255);
    sub_1A459ECA0(&unk_1EB128A20, sub_1A45A77C8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74(255);
    sub_1A45A8E5C(&qword_1EB128050, sub_1A424AE74, sub_1A3D6FEF0, MEMORY[0x1E697D7E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D78);
  }

  return result;
}

void sub_1A45A7A00(uint64_t a1)
{
  if (!qword_1EB127CA8)
  {
    sub_1A45A7868(255);
    sub_1A45A78B0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127CA8);
    }
  }
}

uint64_t sub_1A45A7A84@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 56);

  return sub_1A41DEA74(v4, v3, a1);
}

unint64_t sub_1A45A7AEC()
{
  result = qword_1EB13E148;
  if (!qword_1EB13E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E148);
  }

  return result;
}

uint64_t sub_1A45A7B5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A459EC38(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45A7C18(uint64_t a1)
{
  result = sub_1A3C411C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A45A7CC4()
{
  result = qword_1EB13E158;
  if (!qword_1EB13E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E158);
  }

  return result;
}

uint64_t sub_1A45A7D18(uint64_t a1)
{
  *(a1 + 8) = sub_1A459ECA0(&qword_1EB12A0A0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CB60);
  result = sub_1A459ECA0(&qword_1EB12A0B8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CB7C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A45A7F44(uint64_t a1)
{
  result = sub_1A459ECA0(&qword_1EB12A0B0, type metadata accessor for LemonadeMemoriesFeature.FeedProvider, &unk_1A534CBB4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45A8054(uint64_t a1)
{
  sub_1A3F93438(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C48B8C(319, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A459E8C0(319, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A3C48B8C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A459E8C0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A45A8218(uint64_t a1)
{
  result = sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v2 <= 0x3F)
  {
    result = sub_1A5244EE4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A45A82AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A45A82F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A45A8380(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A459E8C0(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A5244EE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A45A845C()
{
  result = qword_1EB13E160;
  if (!qword_1EB13E160)
  {
    sub_1A459EF80(255, &qword_1EB13E100, sub_1A459FBA4, sub_1A410AB24, MEMORY[0x1E697E830]);
    sub_1A459ECA0(&qword_1EB13E168, sub_1A459FBA4, MEMORY[0x1E6981880]);
    sub_1A459ECA0(&unk_1EB127B30, sub_1A410AB24, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E160);
  }

  return result;
}

unint64_t sub_1A45A8580()
{
  result = qword_1EB169410[0];
  if (!qword_1EB169410[0])
  {
    type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB169410);
  }

  return result;
}

unint64_t sub_1A45A85D8()
{
  result = qword_1EB13E170;
  if (!qword_1EB13E170)
  {
    sub_1A459EF80(255, &qword_1EB13E178, sub_1A45A7620, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E140, sub_1A45A7620, MEMORY[0x1E69C20C8]);
    sub_1A459ECA0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, &unk_1A534C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E170);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_65Tm_0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_66Tm_0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1A45A88D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A45A87E8(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A45A8A18(uint64_t a1)
{
  if (!qword_1EB1298A8)
  {
    v2 = type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
    v3 = sub_1A459ECA0(&qword_1EB12A9A0, type metadata accessor for PhotosPreviewableCollectionPlaceholder, &protocol conformance descriptor for PhotosPreviewableCollectionPlaceholder);
    v6[0] = MEMORY[0x1E69E5FE0];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E69E5FE8];
    v6[3] = v3;
    v4 = type metadata accessor for LemonadeInlineStoryPlayerView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB1298A8);
    }
  }
}

void sub_1A45A8AC8(uint64_t a1)
{
  if (!qword_1EB13E190)
  {
    sub_1A3F93438(255);
    sub_1A459ECA0(&qword_1EB13E198, sub_1A3F93438, MEMORY[0x1E69C22E0]);
    v1 = sub_1A5243604();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E190);
    }
  }
}

uint64_t sub_1A45A8B5C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return sub_1A45A17E8(a1, a2, v6);
}

unint64_t sub_1A45A8C40()
{
  result = qword_1EB1C8420[0];
  if (!qword_1EB1C8420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C8420);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  sub_1A3C53AEC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1A45A8CD8(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1A45A0C28(v2 | *(v1 + 24), a1);
}

void sub_1A45A8CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A45A8D84(255, &unk_1EB122940, MEMORY[0x1E697F960]);
    v8 = v7;
    v9 = type metadata accessor for LemonadePlaceholderView(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45A8D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadePlaceholderView(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A45A8DE8(uint64_t a1, double a2)
{
  if (!qword_1EB1224D8)
  {
    sub_1A45A8CF8(255, &qword_1EB1224E0, MEMORY[0x1E697F960], a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1224D8);
    }
  }
}

uint64_t sub_1A45A8E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45A8ECC(double a1)
{
  result = qword_1EB1224E8;
  if (!qword_1EB1224E8)
  {
    sub_1A45A8CF8(255, &qword_1EB1224E0, MEMORY[0x1E697F960], a1);
    sub_1A45A8F98();
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224E8);
  }

  return result;
}

unint64_t sub_1A45A8F98()
{
  result = qword_1EB122950;
  if (!qword_1EB122950)
  {
    sub_1A45A8D84(255, &unk_1EB122940, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView, &unk_1A5352A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122950);
  }

  return result;
}

uint64_t sub_1A45A905C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A45A8CF8(0, &qword_1EB1224E0, MEMORY[0x1E697F960], a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A90DC(uint64_t a1, uint64_t a2)
{
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45A915C(uint64_t a1)
{
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A45A91D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45A4D6C(v3, v4, v5, v2);
}

void sub_1A45A9268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A45A9334()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A459EC38(0, &unk_1EB129FF0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v3 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C48B8C(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = sub_1A524C674();
  *(v4 + 40) = v5;
  v6 = sub_1A524CA14();

  [v3 setFetchPropertySets_];

  [v3 setIncludePendingMemories_];
  [v3 setIncludeStoryMemories_];
  objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45A94FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A45A955C@<D0>(void *a1@<X8>)
{
  *a1 = **(v1 + 16);

  return result;
}

void sub_1A45A9580(uint64_t a1)
{
  if (!qword_1EB13E1D8)
  {
    sub_1A459E88C(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E1D8);
    }
  }
}

uint64_t objectdestroyTm_63()
{
  v1 = (type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A3C53AEC(*(v2 + 48), *(v2 + 56));
  v3 = v1[12];
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A45A973C()
{
  type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);

  sub_1A45A0024();
}

uint64_t sub_1A45A979C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A9804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45A986C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A45A98E4()
{
  result = qword_1EB127DE0;
  if (!qword_1EB127DE0)
  {
    sub_1A459EF80(255, &qword_1EB127DD8, sub_1A45A8A18, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DE0);
  }

  return result;
}

unint64_t sub_1A45A9A08()
{
  result = qword_1EB13E1E0;
  if (!qword_1EB13E1E0)
  {
    sub_1A459EF80(255, &qword_1EB13E1E8, MEMORY[0x1E69C2858], sub_1A45A8AC8, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858], MEMORY[0x1E69C2840]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8, MEMORY[0x1E69C2528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E1E0);
  }

  return result;
}

unint64_t sub_1A45A9B2C()
{
  result = qword_1EB13E1F0;
  if (!qword_1EB13E1F0)
  {
    sub_1A459E9D0(255, &qword_1EB13E1F8, type metadata accessor for LemonadeMemoryCellPlayButtonView, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView, &unk_1A5304F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E1F0);
  }

  return result;
}

unint64_t sub_1A45A9C14()
{
  result = qword_1EB1228D8;
  if (!qword_1EB1228D8)
  {
    sub_1A459EF80(255, &qword_1EB1228D0, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A45A8DE8, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView, &unk_1A53287E8);
    sub_1A45A8E5C(&qword_1EB1224D0, sub_1A45A8DE8, sub_1A45A8ECC, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228D8);
  }

  return result;
}

void Image.makeSharedAlbumPreview()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3, v5);
  v8 = sub_1A524B5C4();
  (*(v4 + 8))(v7, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  v32 = 1;
  *&v31[8] = v33;
  *&v31[24] = v34;
  *&v31[40] = v35;
  sub_1A432388C(0);
  v10 = (a2 + *(v9 + 36));
  v11 = *(sub_1A5248A14() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1A52494A4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  sub_1A3E42C88(0);
  *&v10[*(v19 + 36)] = 256;
  v20 = *&v31[18];
  *(a2 + 18) = *&v31[2];
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  *(a2 + 34) = v20;
  *(a2 + 50) = *&v31[34];
  *(a2 + 64) = *&v31[48];
  LOBYTE(v8) = sub_1A524A074();
  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1A4323920(0);
  v30 = a2 + *(v29 + 36);
  *v30 = v8;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
}

void sub_1A45AA004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A45AA070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A45AA0D8(a1, a2 + *(v4 + 44));
}

uint64_t sub_1A45AA0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v37[-v13];
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3, v12);
  v15 = sub_1A524B5C4();
  (*(v4 + 8))(v6, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  v39 = 1;
  *&v38[6] = v40;
  *&v38[22] = v41;
  *&v38[38] = v42;
  sub_1A432388C(0);
  v17 = &v14[*(v16 + 36)];
  v18 = *(sub_1A5248A14() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1A52494A4();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #20.0 }

  *v17 = _Q0;
  sub_1A3E42C88(0);
  *&v17[*(v26 + 36)] = 256;
  v27 = *&v38[16];
  *(v14 + 18) = *v38;
  *v14 = v15;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v27;
  *(v14 + 50) = *&v38[32];
  *(v14 + 8) = *&v38[46];
  LOBYTE(v15) = sub_1A524A074();
  sub_1A5247BC4();
  v28 = &v14[*(v8 + 44)];
  *v28 = v15;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_1A45AF504(v14, v10, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v34 = v33;
  sub_1A45AF504(v10, a2 + *(v33 + 48), sub_1A4323920);
  v35 = a2 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1A45AEA1C(v14, sub_1A4323920);
  return sub_1A45AEA1C(v10, sub_1A4323920);
}

uint64_t sub_1A45AA408@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x6F746F6870;
  v6[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E69C1D38], v2, v4);
  v7 = sub_1A5242B94();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1A45AA518@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1A5243834();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243844();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[0] = sub_1A5243374();
  MEMORY[0x1EEE9AC00](v12[0]);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  swift_unknownObjectRetain_n();
  sub_1A5243384();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2680], v2);
  swift_unknownObjectRetain();
  v10 = v9;
  sub_1A5243814();
  sub_1A4327924(v7, v8);
  sub_1A4327A6C(0);
  sub_1A45AC828(&qword_1EB138418, MEMORY[0x1E69C2440], MEMORY[0x1E69C2438]);
  sub_1A45AC828(&qword_1EB138420, sub_1A4327A6C, MEMORY[0x1E69817F8]);
  return sub_1A5241E04();
}

uint64_t sub_1A45AA7DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42[-v13];
  v15 = a1;
  sub_1A524B524();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v16 = sub_1A524B5C4();
  (*(v5 + 8))(v7, v4);
  sub_1A524BC74();
  sub_1A52481F4();
  v44 = 1;
  *&v43[6] = v45;
  *&v43[22] = v46;
  *&v43[38] = v47;
  sub_1A432388C(0);
  v18 = &v14[*(v17 + 36)];
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v18 = _Q0;
  sub_1A3E42C88(0);
  *&v18[*(v27 + 36)] = 256;
  v28 = *&v43[16];
  *(v14 + 18) = *v43;
  *v14 = v16;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v28;
  *(v14 + 50) = *&v43[32];
  *(v14 + 8) = *&v43[46];
  LOBYTE(v16) = sub_1A524A074();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = &v14[*(v9 + 44)];
  *v37 = v16;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_1A45AF504(v14, v11, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v39 = v38;
  sub_1A45AF504(v11, a2 + *(v38 + 48), sub_1A4323920);
  v40 = a2 + *(v39 + 64);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1A45AEA1C(v14, sub_1A4323920);
  return sub_1A45AEA1C(v11, sub_1A4323920);
}

uint64_t sub_1A45AAB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DBD0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A45AF56C(v2, &v17 - v11, &qword_1EB128A70, v8, v9, sub_1A45AAEB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A45AAD80@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A45AA7DC(v4, a2 + *(v5 + 44));
}

uint64_t SharedAlbumPreviewsSection.viewModel.getter()
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t type metadata accessor for SharedAlbumPreviewsSection(uint64_t a1)
{
  result = qword_1EB1C8560;
  if (!qword_1EB1C8560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A45AAEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1A45AAF1C@<X0>(void *a2@<X8>)
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a2 = v4;
  return result;
}

uint64_t sub_1A45AAFB4(void **a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v3 = v2;
  return sub_1A524B6B4();
}

uint64_t SharedAlbumPreviewsSection.viewModel.setter(uint64_t a1)
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedAlbumPreviewsSection.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedAlbumPreviewsSection(0) + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumPreviewsSection.$viewModel.getter()
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void sub_1A45AB24C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SharedAlbumPreviewsSection(0);
  v5 = a2 + v4[6];
  sub_1A524B694();
  *v5 = v17;
  *(v5 + 1) = v18;
  v6 = v4[8];
  v7 = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  v8 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *(a2 + v6) = v8;
  v9 = v4[9];
  v10 = [objc_allocWithZone(off_1E7721750) init];
  [v10 setNetworkAccessAllowed_];
  [v10 setAllowSecondaryDegradedImage_];
  [v10 setDeliveryMode_];
  *(a2 + v9) = v10;
  v11 = (a2 + v4[5]);
  type metadata accessor for SharedAlbumActionViewModel(0);
  v12 = a1;
  v13 = sub_1A524B694();
  *v11 = v17;
  v11[1] = v18;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x148))(v13);

  v15 = *(v14 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v16 = *(v15 + 16);

  *(a2 + v4[7]) = v16;
}

void SharedAlbumPreviewsSection.body.getter(_BYTE *a1@<X8>)
{
  v68 = a1;
  v57 = sub_1A5249544();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45ACDD0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v55 = v3;
  v56 = *(v3 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v52 = v41 - v5;
  sub_1A45AC74C(0, v4);
  v59 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC870(0);
  v60 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AA004(0, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = v41 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v66 = v41 - v15;
  v51 = sub_1A523FBA4();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A523FBD4();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC8AC(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v44 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SharedAlbumPreviewsSection(0);
  v42 = *(v20 - 8);
  v21 = *(v42 + 64);
  v22 = v20 - 8;
  v41[6] = v20 - 8;
  v73 = v21;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC8E0(0);
  v71 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v69 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AD3BC(0);
  v63 = v26;
  v62 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v61 = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v72 = v41 - v29;
  v74 = v1;
  v41[4] = sub_1A5249314();
  v76 = 1;
  v30 = (v1 + *(v22 + 28));
  v32 = v30[1];
  v77 = *v30;
  v31 = v77;
  v78 = v32;
  v43 = type metadata accessor for SharedAlbumActionViewModel;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v41[5] = v33;
  v34 = sub_1A524B6A4();
  v35 = v75;
  v36 = MEMORY[0x1E69E7D40];
  v37 = (*((*MEMORY[0x1E69E7D40] & *v75) + 0x648))(v34);

  v77 = v31;
  v78 = v32;
  v38 = sub_1A524B6A4();
  v39 = v75;
  v40 = (*((*v36 & *v75) + 0x3A0))(v38);

  PXLocalizedAssetCountForUsage(v37, v40, 0, 0);
}

void sub_1A45AC794(uint64_t a1)
{
  if (!qword_1EB13E200)
  {
    sub_1A419A588(255);
    sub_1A45ACDD0(255, &qword_1EB13E220, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980BC0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E200);
    }
  }
}

uint64_t sub_1A45AC828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A45AC964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A45ACA30(uint64_t a1)
{
  if (!qword_1EB13E258)
  {
    sub_1A45AC964(255, &unk_1EB13E260, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F960]);
    sub_1A3FF7634(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E258);
    }
  }
}

void sub_1A45ACAE4(uint64_t a1)
{
  if (!qword_1EB13E270)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    sub_1A45ACE24();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E270);
    }
  }
}

void sub_1A45ACBF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A45ACDD0(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    a3(255);
    sub_1A3DE77C8();
    v6 = sub_1A524B9D4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45ACCDC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, double a6)
{
  if (!*a2)
  {
    sub_1A45ACD50(255, a3, a4, a5, a6);
    sub_1A41EF370(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A45ACD50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, double a5)
{
  if (!*a2)
  {
    sub_1A45ACDD0(255, a3, a4, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45ACDD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A45ACE24()
{
  result = qword_1EB13E2D0;
  if (!qword_1EB13E2D0)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
    sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E2D0);
  }

  return result;
}

unint64_t sub_1A45ACF7C(double a1)
{
  result = qword_1EB13E2E8;
  if (!qword_1EB13E2E8)
  {
    sub_1A45ACD50(255, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, a1);
    sub_1A45AD2CC(&unk_1EB13E2F0, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, sub_1A45AD048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E2E8);
  }

  return result;
}

unint64_t sub_1A45AD048()
{
  result = qword_1EB1C84B8;
  if (!qword_1EB1C84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C84B8);
  }

  return result;
}

uint64_t sub_1A45AD09C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A45AD14C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A45AC828(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45AD200(double a1)
{
  result = qword_1EB13E310;
  if (!qword_1EB13E310)
  {
    sub_1A45ACD50(255, &qword_1EB13E2C0, &qword_1EB13E2C8, &type metadata for SharedAlbumSourcePreview, a1);
    sub_1A45AD2CC(&qword_1EB13E318, &qword_1EB13E2C8, &type metadata for SharedAlbumSourcePreview, sub_1A45AD368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E310);
  }

  return result;
}

uint64_t sub_1A45AD2CC(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A45ACDD0(255, a2, a3, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45AD368()
{
  result = qword_1EB1C84C0[0];
  if (!qword_1EB1C84C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C84C0);
  }

  return result;
}

void sub_1A45AD3BC(uint64_t a1)
{
  if (!qword_1EB13E330)
  {
    sub_1A45AC8E0(255);
    sub_1A45AF030(&qword_1EB13E338, sub_1A45AC8E0, sub_1A45AD478);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E330);
    }
  }
}

unint64_t sub_1A45AD478(__n128 a1)
{
  result = qword_1EB13E340;
  if (!qword_1EB13E340)
  {
    sub_1A45AC91C(255, a1);
    sub_1A45AD528();
    sub_1A45AC828(&qword_1EB1383F0, sub_1A3F332F4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E340);
  }

  return result;
}

unint64_t sub_1A45AD528()
{
  result = qword_1EB13E348;
  if (!qword_1EB13E348)
  {
    sub_1A45AC9E8(255);
    sub_1A45AD5D8();
    sub_1A45AC828(&qword_1EB1302A0, sub_1A3F33AEC, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E348);
  }

  return result;
}

unint64_t sub_1A45AD5D8()
{
  result = qword_1EB13E350;
  if (!qword_1EB13E350)
  {
    sub_1A45ACA30(255);
    sub_1A45AD694();
    sub_1A45AC828(&qword_1EB13AFA0, sub_1A3FF7634, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E350);
  }

  return result;
}

unint64_t sub_1A45AD694()
{
  result = qword_1EB13E358;
  if (!qword_1EB13E358)
  {
    sub_1A45AC964(255, &unk_1EB13E260, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F960]);
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E358);
  }

  return result;
}

uint64_t sub_1A45AD7B8(uint64_t a1)
{
  sub_1A45ACAE4(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A45AC964(0, &unk_1EB13E3A0, sub_1A4326158, sub_1A45ACAE4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1A4326158(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for SharedAlbumPreviewsSection(0) + 20));
  v13 = *v11;
  v12 = v11[1];
  v26 = v13;
  v27 = v12;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v25;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0x648))(v14);

  if (v16 <= 0)
  {
    *v10 = sub_1A5249314();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_1A4327BBC(0, &qword_1EB138440, sub_1A43261EC);
    sub_1A45ADBF4(a1, &v10[*(v22 + 44)]);
    sub_1A45AF504(v10, v7, sub_1A4326158);
    swift_storeEnumTagMultiPayload();
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4, MEMORY[0x1E6981880]);
    sub_1A5249744();
    v20 = sub_1A4326158;
    v21 = v10;
  }

  else
  {
    *v4 = sub_1A524BC74();
    v4[1] = v17;
    sub_1A45AF13C(0);
    sub_1A45AE058(a1, v4 + *(v18 + 44), v19);
    sub_1A45AF504(v4, v7, sub_1A45ACAE4);
    swift_storeEnumTagMultiPayload();
    sub_1A45AC828(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A45AC828(&qword_1EB13E368, sub_1A45ACAE4, MEMORY[0x1E6981880]);
    sub_1A5249744();
    v20 = sub_1A45ACAE4;
    v21 = v4;
  }

  return sub_1A45AEA1C(v21, v20);
}

uint64_t sub_1A45ADBF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_1A5247E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326240(0, v11);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v45 = sub_1A5249574();
  *v13 = 0x6F746F6870;
  v13[1] = 0xE500000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x1E69C1D38], v9);
  v43 = sub_1A5242B94();
  (*(v10 + 8))(v13, v9);
  sub_1A524BC74();
  sub_1A52481F4();
  v48 = 1;
  sub_1A45AAB40(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  LOBYTE(v9) = sub_1A5247DF4();
  v23 = *(v3 + 8);
  v23(v5, v2);
  v23(v8, v2);
  if (v9)
  {
    v24 = sub_1A524B2E4();
  }

  else
  {
    v24 = sub_1A524B2A4();
  }

  v25 = v24;
  v26 = sub_1A524A064();
  v27 = &v19[*(v44 + 36)];
  v28 = *(sub_1A5248A14() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1A52494A4();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #20.0 }

  *v27 = _Q0;
  sub_1A3E42C88(0);
  *&v27[*(v36 + 36)] = 256;
  *v19 = v45;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v19 + 3) = v43;
  v37 = v50;
  *(v19 + 2) = v49;
  *(v19 + 3) = v37;
  *(v19 + 4) = v51;
  *(v19 + 10) = v25;
  v19[88] = v26;
  sub_1A45AF49C(v19, v22, sub_1A4326240);
  sub_1A45AF504(v22, v16, sub_1A4326240);
  v38 = v47;
  *v47 = 0;
  *(v38 + 8) = 1;
  sub_1A4326220(0);
  v40 = v39;
  sub_1A45AF504(v16, v38 + *(v39 + 48), sub_1A4326240);
  v41 = v38 + *(v40 + 64);
  *v41 = 0;
  v41[8] = 1;
  sub_1A45AEA1C(v22, sub_1A4326240);
  return sub_1A45AEA1C(v16, sub_1A4326240);
}

unint64_t sub_1A45AE058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v52 = a2;
  sub_1A45ACBD0(0, a3);
  v53 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AC964(0, &qword_1EB13E3B8, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F948]);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  v8 = type metadata accessor for SharedAlbumPreviewsSection(0);
  v9 = v8 - 8;
  v47 = *(v8 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  sub_1A45ACB8C(0, v11);
  v50 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 28);
  v48 = a1;
  v17 = (a1 + v16);
  v19 = *v17;
  v18 = v17[1];
  v55 = *v17;
  v56 = v18;
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v21 = v20;
  v22 = sub_1A524B6A4();
  v23 = v54;
  v24 = MEMORY[0x1E69E7D40];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v54) + 0x208))(v22);

  if (v25 >> 62)
  {
    v26 = sub_1A524E2B4();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 >= 1)
  {
    v55 = v19;
    v56 = v18;
    v27 = sub_1A524B6A4();
    v28 = v54;
    v29 = (*((*v24 & *v54) + 0x208))(v27);

    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      if (v30 >= 3)
      {
        v31 = 3;
      }

      else
      {
        v31 = v30;
      }

      v55 = 0;
      v56 = v31;
      swift_getKeyPath();
      sub_1A45AF504(v48, &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumPreviewsSection);
      v32 = (*(v47 + 80) + 24) & ~*(v47 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      sub_1A45AF49C(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for SharedAlbumPreviewsSection);
      *(v33 + ((v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
      sub_1A45ACDD0(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A45ACBAC(0, v34);
      sub_1A3DE77C8();
      sub_1A45ACF48();
      sub_1A524B9B4();
      v35 = v50;
      (*(v13 + 16))(v51, v15, v50);
      swift_storeEnumTagMultiPayload();
      sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
      sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
      sub_1A5249744();
      return (*(v13 + 8))(v15, v35);
    }

    v30 = sub_1A524E2B4();
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_20;
  }

  v55 = v19;
  v56 = v18;
  v37 = sub_1A524B6A4();
  v38 = v54;
  v21 = (*((*v24 & *v54) + 0x3D0))(v37);

  if (v21 >> 62)
  {
LABEL_20:
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  if (result >= 3)
  {
    v39 = 3;
  }

  else
  {
    v39 = result;
  }

  v55 = 0;
  v56 = v39;
  swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v21;
  *(v40 + 24) = v39;
  sub_1A45ACDD0(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1A45ACCB8(0, v41);
  sub_1A3DE77C8();
  sub_1A45AD118();
  v42 = v45;
  sub_1A524B9B4();
  v43 = v46;
  v44 = v53;
  (*(v46 + 16))(v51, v42, v53);
  swift_storeEnumTagMultiPayload();
  sub_1A45AD09C(&qword_1EB13E2D8, sub_1A45ACB8C, sub_1A45ACF48);
  sub_1A45AD09C(&qword_1EB13E300, sub_1A45ACBD0, sub_1A45AD118);
  sub_1A5249744();
  return (*(v43 + 8))(v42, v44);
}

void sub_1A45AE848()
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AAEB8(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x650))(v0);
}

uint64_t sub_1A45AE94C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45AEA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_64()
{
  v1 = type metadata accessor for SharedAlbumPreviewsSection(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A45AAEB8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1A45AEC08()
{
  type metadata accessor for SharedAlbumPreviewsSection(0);
  sub_1A45AED04(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();

  return result;
}

void sub_1A45AED04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A45AED54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A45AEDBC(uint64_t a1)
{
  if (!qword_1EB13E378)
  {
    sub_1A45AD3BC(255);
    sub_1A45AA004(255, &unk_1EB13E230, sub_1A45AC870, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E378);
    }
  }
}

void sub_1A45AEEA8(uint64_t a1)
{
  sub_1A45AAEB8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A45AAEB8(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A45AED04(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
        if (v4 <= 0x3F)
        {
          sub_1A4327388();
          if (v5 <= 0x3F)
          {
            sub_1A3C52C70(319, &qword_1EB13E380, &off_1E7721750);
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

uint64_t sub_1A45AF030(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A45AF13C(uint64_t a1)
{
  if (!qword_1EB13E3B0)
  {
    sub_1A45AC964(255, &qword_1EB13E278, sub_1A45ACB8C, sub_1A45ACBD0, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E3B0);
    }
  }
}

uint64_t sub_1A45AF1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharedAlbumPreviewsSection(0);
  v6 = result;
  v7 = (*(*(result - 8) + 80) + 24) & ~*(*(result - 8) + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(*(result - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](*a1);
  }

  else
  {
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v8 + 8 * v10 + 32);
  }

  v12 = v11;
  v13 = *(v6 + 36);
  v14 = *(v2 + v7 + *(v6 + 32));
  v15 = *(v2 + v7 + v13);
  result = swift_getKeyPath();
  v16 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = result;
    v20 = v10 * -0.1 + 1.0;
    v21 = v18;
    v22 = v10 * 10.0 * -2.0;
    swift_unknownObjectRetain();
    v23 = v15;
    sub_1A524BE94();
    v29[88] = 0;
    *&v30 = v19;
    BYTE8(v30) = 0;
    *&v31 = v12;
    *(&v31 + 1) = v14;
    v32 = v23;
    *&v33 = v22;
    *(&v33 + 1) = v20;
    *&v34 = v20;
    *(&v34 + 1) = v24;
    v35 = v25;
    v47 = v30;
    v48 = v31;
    v52 = v25;
    v50 = v33;
    v51 = v34;
    v49 = v23;
    v36 = v19;
    v37 = 0;
    v38 = v12;
    v39 = v14;
    v40 = v23;
    v41 = 0;
    v42 = v22;
    v43 = v20;
    v44 = v20;
    v45 = v24;
    v46 = v25;
    sub_1A45AF56C(&v30, v29, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, sub_1A45ACD50);
    result = sub_1A45AF428(&v36, v26);
    v27 = v50;
    *(a2 + 32) = v49;
    *(a2 + 48) = v27;
    *(a2 + 64) = v51;
    *(a2 + 80) = v52;
    v28 = v48;
    *a2 = v47;
    *(a2 + 16) = v28;
    *(a2 + 88) = v21;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A45AF428(uint64_t a1, double a2)
{
  sub_1A45ACD50(0, &qword_1EB13E298, &unk_1EB13E2A0, &type metadata for SharedAlbumAssetPreview, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A45AF49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45AF504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45AF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A45AF74C()
{
  v1 = [v0 spec];
  type metadata accessor for PhotosPagingLayoutSpec();

  return swift_dynamicCastClassUnconditional();
}

id sub_1A45AF81C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A45AF8A8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [*(a2 + 24) viewMode];
  v7 = *v3;
  v20[3] = type metadata accessor for MapItem(0, v8);
  v20[4] = sub_1A3CA3F30(&qword_1EB124FF0, type metadata accessor for MapItem, &protocol conformance descriptor for MapItem);
  v20[0] = a1;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = v7;

  sub_1A3C6C180(&v18);
  v16 = v18;
  v17 = v19;
  LOBYTE(a1) = sub_1A3C5A374();
  v14 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v13, v20, &v16, v6, 0, 0, 1, a1 & 1, a3, v9, v10, v11, v12, v14 & 1);
  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A45AF9EC@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C2E0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-1] - v3;
  v13[0] = sub_1A3F2CCA4();
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v14 = 0;
  v8 = sub_1A3C47918();
  v10 = v9;
  sub_1A417147C(v8);
  return sub_1A416D188(v13, v8, v10, v4, a1);
}

void sub_1A45AFB20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for MapDataProvider(0, a2);
  static MapDataProvider.sharedProvider(for:)(v2);
}

uint64_t sub_1A45AFB6C(uint64_t a1)
{
  v2 = type metadata accessor for MapSnapshotView(0);
  v3 = sub_1A3CA3F30(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);

  return MEMORY[0x1EEE2BCF8](sub_1A45B02A0, a1, v2, v3, v4);
}

id sub_1A45AFC3C(uint64_t a1)
{
  sub_1A3C2F0BC(a1, v4);
  sub_1A3DB7F50();
  sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = [v3 px_isPlacesSmartAlbum];

    return v2;
  }

  return result;
}

uint64_t sub_1A45AFCC8(double **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45AF8A8(*a1, a3, v8);
  sub_1A3C4C2E0(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  sub_1A40B671C(v8, v10 + v9);
  return v10;
}

unint64_t sub_1A45AFE10(uint64_t a1)
{
  v2 = sub_1A3CA3F30(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider, &unk_1A534D504);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A45AFE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 24) viewMode];
  v5 = *(a1 + 16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v6 = v5;
  sub_1A3C6C180(&v19);
  v17 = v19;
  v18 = v20;
  v7 = sub_1A412FAA0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v6, v21, &v17, v4, 0, 0, 1, v14 & 1, a2, v7, v9, v11, v13, v15 & 1);
  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A45AFFC0()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 mapCollection];

  return v2;
}

uint64_t sub_1A45B0160(uint64_t a1)
{
  result = sub_1A3CA3F30(&qword_1EB13E3F0, type metadata accessor for LemonadeMapFeature, &unk_1A534D574);
  *(a1 + 8) = result;
  return result;
}

void sub_1A45B0208(uint64_t a1)
{
  if (!qword_1EB13E400)
  {
    type metadata accessor for MapSnapshotView(255);
    sub_1A3CA3F30(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);
    v1 = sub_1A5243D74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E400);
    }
  }
}

uint64_t sub_1A45B02A4()
{
  v1 = [v0 px_localizedName];
  v2 = sub_1A524C674();

  String.validatedForGenerativeStory.getter(v2);
  v4 = v3;

  return v4;
}

void String.validatedForGenerativeStory.getter(uint64_t a1)
{
  v1 = sub_1A52404F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524C634();
  v6 = CEMCreateStringByStrippingEmojiCharacters();

  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;

    v18[0] = v8;
    v18[1] = v10;
    sub_1A5240474();
    sub_1A3D5F9DC();
    v11 = sub_1A524DF74();
    (*(v2 + 8))(v4, v1);

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = (v11 + 40);
    while (1)
    {
      if (*(v11 + 16) == v12)
      {

        v18[0] = v13;
        sub_1A3C2DE64(0, &qword_1EB126ED0, MEMORY[0x1E69E62F8]);
        sub_1A3CAD85C();
        sub_1A524C514();

        return;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      ++v12;
      v16 = *(v14 - 1);
      v15 = *v14;
      v14 += 2;
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1A45B0594()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A45B063C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  *a2 = *(v3 + 32);
  swift_unknownObjectRetain();
  return result;
}

double sub_1A45B06EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415C4();

  return result;
}

void sub_1A45B07DC()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45B0880(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  *a2 = *(v3 + 64);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A45B0AF4(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 168) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A45B0C1C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  isUniquelyReferenced_nonNull_native = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_27:
    v8 = MEMORY[0x1E69E7CC8];
LABEL_28:
    v31 = swift_allocObject();
    *(v31 + 16) = MEMORY[0x1E69E7CC0];
    [a1 firstItemIndexPath];
    v42 = v46;
    v44 = aBlock;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = v8;
    v32[4] = v36;
    v32[5] = a3;
    v32[6] = a4;
    v32[7] = v31;
    v47 = sub_1A45B33D4;
    v48 = v32;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_1A3E4F338;
    *(&v46 + 1) = &block_descriptor_215;
    v33 = _Block_copy(&aBlock);
    v34 = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    aBlock = v44;
    v46 = v42;
    [v34 enumerateItemIndexPathsStartingAtIndexPath:&aBlock reverseDirection:0 usingBlock:v33];
    _Block_release(v33);
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_3:
  v7 = 0;
  v43 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v8 = MEMORY[0x1E69E7CC8];
  v40 = isUniquelyReferenced_nonNull_native;
  v41 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v43)
    {
      v11 = MEMORY[0x1A59097F0](v7, isUniquelyReferenced_nonNull_native, a5);
    }

    else
    {
      if (v7 >= *(v41 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(isUniquelyReferenced_nonNull_native + 8 * v7 + 32);
    }

    v12 = v11;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v6 = sub_1A524E2B4();
      if (!v6)
      {
        goto LABEL_27;
      }

      goto LABEL_3;
    }

    v14 = [objc_msgSend(*&v11[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item] assetCollection)];
    swift_unknownObjectRelease();
    v15 = sub_1A524C674();
    v17 = v16;

    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v8;
    v20 = sub_1A3C5DCA4(v15, v17);
    v21 = v8[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v8[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1A45B2394();
      if (v24)
      {
LABEL_4:

        v8 = aBlock;
        v9 = *(aBlock + 56);
        v10 = *(v9 + 8 * v20);
        *(v9 + 8 * v20) = v18;

        goto LABEL_5;
      }
    }

LABEL_17:
    v8 = aBlock;
    *(aBlock + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v27 = (v8[6] + 16 * v20);
    *v27 = v15;
    v27[1] = v17;
    *(v8[7] + 8 * v20) = v18;

    v28 = v8[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_25;
    }

    v8[2] = v30;
LABEL_5:
    ++v7;
    isUniquelyReferenced_nonNull_native = v40;
    if (v13 == v6)
    {
      goto LABEL_28;
    }
  }

  sub_1A45B20FC(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_1A3C5DCA4(v15, v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void sub_1A45B0FEC()
{
  v1 = [*(v0 + 24) dataSource];
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B12A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A45B13FC(void *a1, unint64_t a2, __n128 a3)
{
  if (a2 >> 62)
  {
    v24 = a2;
    v25 = sub_1A524E2B4();
    a2 = v24;
    v4 = v25;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A45B24F4(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    v5 = v30;
    v8 = v6;
    v26 = a1;
    v27 = v6 & 0xC000000000000001;
    v28 = v6;
    do
    {
      if (v27)
      {
        v9 = MEMORY[0x1A59097F0](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item;
      v12 = *&v9[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item];
      v13 = sub_1A41445F4();
      v14 = sub_1A414424C();
      if (!v14)
      {
        v14 = [*&v10[v11] assetCollection];
      }

      v15 = v14;
      v16 = sub_1A4143E20();
      sub_1A435E89C(v12, v13, v15, v16, v29);

      v17 = v29[0];
      v18 = v29[1];
      v19 = v29[2];
      v20 = v29[3];
      v30 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A45B24F4((v21 > 1), v22 + 1, 1);
        v5 = v30;
      }

      ++v7;
      *(v5 + 16) = v22 + 1;
      v23 = (v5 + 32 * v22);
      v23[4] = v17;
      v23[5] = v18;
      v23[6] = v19;
      v23[7] = v20;
      v8 = v28;
    }

    while (v4 != v7);
    a1 = v26;
  }

  *a1 = v5;
}

uint64_t sub_1A45B15C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A45B2C6C(v1 + 72, a1);
}

uint64_t sub_1A45B1680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A45B2C6C(v3 + 72, a2);
}

uint64_t sub_1A45B1740(uint64_t a1, uint64_t *a2)
{
  sub_1A45B2C6C(a1, v3);
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415C4();

  return sub_1A45B2C18(v3);
}

double sub_1A45B1954()
{
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  swift_beginAccess();

  return result;
}

double sub_1A45B1A0C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A45B2D88(&qword_1EB13E410, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D788);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 168);

  return result;
}

void sub_1A45B1AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

uint64_t sub_1A45B1B70()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore28SharedWithYouItemListManagerP33_B4CB001E2627E9987899D619ED555A877Mutator__itemList;
  sub_1A45B3120(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A45B1C14(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A45B2C6C(a1, &v2);

  sub_1A52456B4();
}

void sub_1A45B1C94(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

id *sub_1A45B1D38()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A45B2C18((v0 + 9));

  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedWithYouItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A45B1DE0()
{
  sub_1A45B1D38();

  return swift_deallocClassInstance();
}

void sub_1A45B1E38()
{
  type metadata accessor for SharedWithYouItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A45B2CE8();
  sub_1A52456D4();
}

void sub_1A45B1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A45B2D88(&qword_1EB13E450, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D630);

  sub_1A5245F44();
}

id sub_1A45B1F60@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 176);
  *a1 = v2;
  return v2;
}

void sub_1A45B1F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A45B2D88(&qword_1EB13E418, type metadata accessor for SharedWithYouItemListManager, &unk_1A534D708);

  sub_1A5245C54();
}

void sub_1A45B1FF4(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A45B2070(uint64_t a1, uint64_t *a2)
{
  sub_1A45B2C6C(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A45B2C6C(v3, &v2);

  sub_1A52456B4();
}

void sub_1A45B20FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A45B3600(0);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A45B2394()
{
  v1 = v0;
  sub_1A45B3600(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

char *sub_1A45B24F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A45B2514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A45B2514(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A45B3384();
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A45B2614(unint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = type metadata accessor for SharedWithYouItemObserver(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1A59097F0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1A59097F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1A524DBF4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1A524DBF4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v6 = sub_1A524E2B4();
  }

  result = sub_1A524E2B4();
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

void sub_1A45B2B88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 168) = v1;
}

unint64_t sub_1A45B2CE8()
{
  result = qword_1EB1C87A0[0];
  if (!qword_1EB1C87A0[0])
  {
    type metadata accessor for SharedWithYouItemListManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C87A0);
  }

  return result;
}

uint64_t sub_1A45B2D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A45B2E64()
{
  result = qword_1EB13E430;
  if (!qword_1EB13E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E430);
  }

  return result;
}

uint64_t sub_1A45B2F98(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A45B3080(uint64_t a1, __n128 a2)
{
  sub_1A45B3120(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A45B3120(uint64_t a1)
{
  if (!qword_1EB13E440)
  {
    type metadata accessor for SharedWithYouItemListManager.Mutator(255);
    sub_1A45B2CE8();
    sub_1A52456C4();
  }
}

double sub_1A45B31F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      sub_1A45B0FEC();
    }
  }

  return result;
}

double sub_1A45B3250()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A45B0FEC();
  }

  return result;
}

uint64_t (*sub_1A45B32A4())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A3D607F0(v1, v2);
  return sub_1A45B3354;
}

uint64_t sub_1A45B3354()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1A45B3384()
{
  if (!qword_1EB13E458)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E458);
    }
  }
}

void sub_1A45B33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v11 = [v6 contentSyndicationItemAtItemIndexPath_];
  v12 = [objc_msgSend(v11 assetCollection)];
  swift_unknownObjectRelease();
  v13 = sub_1A524C674();
  v15 = v14;

  if (!*(v7 + 16))
  {

    goto LABEL_6;
  }

  v16 = sub_1A3C5DCA4(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

  v19 = *(*(v7 + 56) + 8 * v16);
  v20 = *&v19[OBJC_IVAR____TtC12PhotosUICore25SharedWithYouItemObserver_item];
  v21 = v19;
  v22 = [v20 assetCollection];
  v23 = [v11 assetCollection];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v22 == v23)
  {
    v24 = v21;
    v21 = v24;
    goto LABEL_8;
  }

LABEL_7:
  type metadata accessor for SharedWithYouItemObserver(0);
  v25 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1A4144D80(v25, v8, v9);
LABEL_8:
  swift_beginAccess();
  v26 = v24;
  MEMORY[0x1A5907D70]();
  if (*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  swift_endAccess();
}

void sub_1A45B3600(uint64_t a1)
{
  if (!qword_1EB13E460)
  {
    type metadata accessor for SharedWithYouItemObserver(255);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13E460);
    }
  }
}

void sub_1A45B368C()
{
  v1 = sub_1A5244EE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_sourceGroup;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 && (v7 = &v0[OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_destinationIndex], swift_beginAccess(), (v7[8] & 1) == 0))
  {
    v10 = v0;
    v11 = *v7;
    v12 = v6;
    v13 = [v12 photoLibrary];
    if (v13)
    {
      v14 = v13;
      (*(v2 + 104))(v4, *MEMORY[0x1E69C12A8], v1);
      sub_1A5244EF4();
      swift_allocObject();
      v15 = v14;
      sub_1A5244ED4();
      sub_1A5244BF4();
      v16 = sub_1A5244BE4();

      type metadata accessor for SocialGroupReorderAction();
      v17 = v12;
      v18 = v16;
      v19 = sub_1A471E5FC(v17, v18, v11);
      v20 = [v10 undoManager];
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v17;
      *(v22 + 24) = v21;
      aBlock[4] = sub_1A45B3E6C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_216;
      v23 = _Block_copy(aBlock);
      v24 = v17;

      [v19 executeWithUndoManager:v20 completionHandler:v23];
      _Block_release(v23);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = sub_1A524D244();
    v9 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Failed to perform Social Group reorder action because the initial state is invalid.", 83, 2, MEMORY[0x1E69E7CC0]);

    [v0 completeBackgroundTaskWithSuccess:0 error:0];
  }
}

uint64_t sub_1A45B39D4(char a1, void *a2, void *a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524D224();
  v15 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v15, v14))
  {
    v26[2] = v10;
    v26[3] = v11;
    v26[4] = v8;
    v26[5] = v7;
    v26[1] = v15;
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = [a3 localIdentifier];
    v18 = sub_1A524C674();
    v20 = v19;

    sub_1A3C2EF94(v18, v20, aBlock);
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v21 = sub_1A524D474();
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = a1 & 1;
  *(v22 + 32) = a2;
  aBlock[4] = sub_1A45B4030;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_10_9;
  v23 = _Block_copy(aBlock);
  v24 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C38304(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C38304(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v23);
  _Block_release(v23);

  (*(v8 + 8))(v10, v7);
  return (*(v28 + 8))(v13, v11);
}

void sub_1A45B4030()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v2 = sub_1A5240B74();
    }

    [v4 completeBackgroundTaskWithSuccess:v1 error:v2];
  }
}

void LemonadeAccountViewSpecs.init(cornerRadius:buttonPadding:toggleButtonPadding:avatarSizeDimension:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11;
}

uint64_t sub_1A45B4140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A45B4160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void *EnvironmentValues.containerViewControllerReference.getter()
{
  sub_1A45B41F8();

  return sub_1A5249244();
}

unint64_t sub_1A45B41F8()
{
  result = qword_1EB1822A0[0];
  if (!qword_1EB1822A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1822A0);
  }

  return result;
}

void (*EnvironmentValues.containerViewControllerReference.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A3D63A58(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v5[4] = sub_1A45B41F8();
  sub_1A5249244();
  return sub_1A45B4390;
}

uint64_t EnvironmentValues.selectionLimit.getter()
{
  sub_1A45B43EC();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B43EC()
{
  result = qword_1EB189FD8[0];
  if (!qword_1EB189FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB189FD8);
  }

  return result;
}

uint64_t (*EnvironmentValues.selectionLimit.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1A45B43EC();
  sub_1A5249244();
  return sub_1A45B44DC;
}

void *EnvironmentValues.detailsContext.getter()
{
  sub_1A45B4530();

  return sub_1A5249244();
}

unint64_t sub_1A45B4530()
{
  result = qword_1EB1C8B80[0];
  if (!qword_1EB1C8B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C8B80);
  }

  return result;
}

uint64_t sub_1A45B45BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = a2(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1A45B4678(a1, &v12 - v9, a3);
  a4(v10);
  sub_1A5249254();
  return sub_1A45B46E0(a1, a3);
}

uint64_t sub_1A45B4678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45B46E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*EnvironmentValues.detailsContext.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1A40730A4(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  v5[4] = sub_1A45B4530();
  sub_1A5249244();
  return sub_1A45B484C;
}

void sub_1A45B486C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = *a1;
  sub_1A45B4678((*a1)[3], (*a1)[2], a3);
  v7 = v6[3];
  v8 = v6[1];
  v9 = v6[2];
  if (a2)
  {
    sub_1A45B4678(v6[2], v6[1], a3);
    sub_1A5249254();
    sub_1A45B46E0(v9, a3);
  }

  else
  {
    sub_1A5249254();
  }

  sub_1A45B46E0(v7, a3);
  free(v7);
  free(v9);
  free(v8);

  free(v6);
}

uint64_t EnvironmentValues.collectionPreviewRepository.getter()
{
  sub_1A45B4988();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B4988()
{
  result = qword_1EB17D758[0];
  if (!qword_1EB17D758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D758);
  }

  return result;
}

uint64_t (*EnvironmentValues.collectionPreviewRepository.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1A45B4988();
  sub_1A5249244();
  return sub_1A45B4A78;
}

void sub_1A45B4A78(void *a1, char a2, __n128 a3)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1A5249254();
  }

  else
  {
    sub_1A5249254();
  }
}

uint64_t EnvironmentValues.sceneOrientation.getter()
{
  sub_1A45B4B48();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A45B4B48()
{
  result = qword_1EB189750[0];
  if (!qword_1EB189750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB189750);
  }

  return result;
}

uint64_t (*EnvironmentValues.sceneOrientation.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1A45B4B48();
  sub_1A5249244();
  return sub_1A45B4C38;
}

uint64_t sub_1A45B4CF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB182330 != -1)
  {
    swift_once();
  }

  sub_1A3D63A58(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB182338);
  return sub_1A45B4678(v3, a1, sub_1A3D63A58);
}

uint64_t sub_1A45B4D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4269A68();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A45B4E28(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

uint64_t sub_1A45B4ECC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C8B60 != -1)
  {
    swift_once();
  }

  sub_1A40730A4(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB1C8B68);
  return sub_1A45B4678(v3, a1, sub_1A40730A4);
}

uint64_t sub_1A45B4F4C()
{
  sub_1A524CC54();
  result = sub_1A45B4FF8(sub_1A45B4FC0, 0, "PhotosUICore/EnvironmentValues+Photos.swift", 43, 2, 76, v0);
  qword_1EB17D7E8 = result;
  return result;
}

double sub_1A45B4FC0@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *sub_1A4758804();

  return result;
}

uint64_t sub_1A45B4FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1A3C75D98(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v16[0];
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v15 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v15);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A45B51B0@<D0>(void *a1@<X8>)
{
  if (qword_1EB17D7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB17D7E8;

  return result;
}

uint64_t sub_1A45B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A45B52B4(&unk_1EB126838, type metadata accessor for PXUserInterfaceOrientation, &unk_1A534DBD0);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A45B52B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A45B52FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A45B53B0(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v7 = *((v5 & v3) + 0x50);
  v8 = *(v7 - 8);
  (*(v8 + 24))(&v1[v6], a1, v7);
  swift_endAccess();
  [*&v1[*((*v4 & *v1) + 0x70)] viewContentDidChange];
  return (*(v8 + 8))(a1, v7);
}

id (*sub_1A45B54CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A45B554C;
}

id sub_1A45B554C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + *((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x70));

    return [v5 viewContentDidChange];
  }

  return result;
}

uint64_t sub_1A45B55C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  sub_1A45B6A2C(a1, a2, a3, a4);
  v12 = v11;

  (*(*(*(v5 + 10) - 8) + 8))(a1);
  return v12;
}

unint64_t sub_1A45B5670()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1A45B573C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_1A45B576C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id sub_1A45B579C()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  result = *(v0 + v1[20]);
  if (result)
  {
    [result updateIfNeeded];
    v4 = type metadata accessor for PhotosPageLayout(0, v1[10], v1[11], v3);
    v5.receiver = v0;
    v5.super_class = v4;
    return objc_msgSendSuper2(&v5, sel_update);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A45B5844(void *a1)
{
  v1 = a1;
  sub_1A45B579C();
}

id sub_1A45B588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosPageLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, sel_referenceSizeDidChange);
  return sub_1A45B5C10();
}

void sub_1A45B5900(void *a1)
{
  v4 = a1;
  sub_1A45B588C(v4, v1, v2, v3);
}

id sub_1A45B5948(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A45B5A34(v6);

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_1A45B5AB0(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 168))(v3);
  sub_1A5245C84();
}

id sub_1A45B5C10()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  if (result)
  {
    return [result setNeedsUpdateOf_];
  }

  __break(1u);
  return result;
}

void sub_1A45B5C54()
{
  [v0 referenceSize];
  v2 = v1;
  v4 = v3;
  [v0 setFrame:0 forSublayoutAtIndex:{0.0, 0.0, v1, v3}];
  [v0 referenceDepth];
  [v0 setReferenceDepth:0 forSublayoutAtIndex:?];
  v5 = [v0 localNumberOfSprites] << 32;
  v6 = swift_allocObject();
  v6[3] = 0.0;
  v6[4] = 0.0;
  *(v6 + 2) = v0;
  v6[5] = v2;
  v6[6] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A45B7600;
  *(v7 + 24) = v6;
  v10[4] = sub_1A41FF85C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A41FBEA8;
  v10[3] = &block_descriptor_217;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v9 modifySpritesInRange:v5 state:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [v9 referenceSize];
    [v9 setContentSize_];
  }
}

void sub_1A45B5E54(void *a1)
{
  v1 = a1;
  sub_1A45B5C54();
}

void *sub_1A45B5EA4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A45B6DE4(v5);

  return v6;
}

void sub_1A45B5F00(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 168))(v3);
  sub_1A5246244();
}

void sub_1A45B60C0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B5F00(&v5);
}

void sub_1A45B613C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 168))(v4);
  sub_1A5246244();
}

void sub_1A45B6410(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B613C(v5, &v7);
}

void sub_1A45B64A4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  if (v6)
  {
    v8 = v6;
    sub_1A45B6628(a2, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    [v8 setPlacementOverride:a1 forItemReference:sub_1A524EA94()];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v12);
    v5 = *v4;
  }

  v9 = *((v5 & *v2) + 0x88);
  v10 = *(v2 + v9);
  *(v2 + v9) = a1;
  v11 = a1;

  sub_1A45B5C10();
}

uint64_t sub_1A45B65A4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A45B64A4(a3, v9);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_1A45B6628(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A3C2F0BC(a1, v8);
  sub_1A45B77BC(0, v3);
  swift_dynamicCast();
  v4 = *(v7 + 16);
  a2[3] = sub_1A42C381C(0, v5);
  v6 = v4;

  *a2 = v6;
}

id sub_1A45B66B4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v6 = a4;
  v7 = a1;
  v8 = sub_1A45B7404(v4);

  return v8;
}

void sub_1A45B6718(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A45B74C8();
}

id sub_1A45B67C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosPageLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A45B6838(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  MEMORY[0x1A590F020](&a1[*((*v2 & *a1) + 0x80)]);

  v3 = *&a1[*((*v2 & *a1) + 0xA0)];
}

void sub_1A45B69C8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B730);
  __swift_project_value_buffer(v0, qword_1EB15B730);
  sub_1A5246EF4();
}

void sub_1A45B6A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  *&v4[*((*v9 & *v4) + 0x88)] = 0;
  *&v4[*((*v9 & *v4) + 0x90)] = 0;
  *&v4[*((*v9 & *v4) + 0x98)] = 0;
  *&v4[*((*v9 & *v4) + 0xA0)] = 0;
  v11 = *((v10 & v8) + 0x50);
  (*(*(v11 - 8) + 16))(&v4[*((*v9 & *v4) + 0x60)], a1, v11);
  swift_unknownObjectWeakAssign();
  v12 = &v4[*((*v9 & *v4) + 0x78)];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = objc_allocWithZone(off_1E77216B8);

  *&v4[*((*v9 & *v4) + 0x70)] = [v13 init];
  *&v4[*((*v9 & *v4) + 0x68)] = 0;
  v15 = type metadata accessor for PhotosPageLayout(0, v11, *((v10 & v8) + 0x58), v14);
  v24.receiver = v4;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, sel_init);
  [v16 setContentSource_];
  [v16 addSpriteCount:1 withInitialState:0];
  v17 = [objc_allocWithZone(off_1E7721940) initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

  swift_unknownObjectRelease();
  v18 = *((*v9 & *v16) + 0xA0);
  v19 = *(v16 + v18);
  *(v16 + v18) = v17;
  v20 = v17;

  if (v20)
  {
    [v20 addUpdateSelector:sel_updateContentLayout needsUpdate:1];

    v21 = *((*v9 & *v16) + 0x70);
    v22 = *(v16 + v21);
    type metadata accessor for PhotosPageContainerView(0, v23);
    [v22 setContentViewClass_];
    [*(v16 + v21) setStyle_];
    [*(v16 + v21) setDelegate_];
    [v16 addSublayout_];
    sub_1A45B5C10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A45B6DE4(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = v4[10];
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v45 - v8;
  v10 = v4[21];
  v11 = *(v1 + v4[15]);
  v10(v7);
  v12 = v11(v9);
  (*(v6 + 8))(v9, v5);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v14 = *((*v3 & *v2) + 0x90);
    v15 = *(v2 + v14);
    *(v2 + v14) = v13;
    v16 = v12;

    v17 = [v13 contentController];
    v18 = [v17 layout];

    v19 = *((*v3 & *v2) + 0x98);
    v20 = *(v2 + v19);
    *(v2 + v19) = v18;

    type metadata accessor for PhotosPageContainerView.Configuration(0, v21);
    v22 = v16;
    v23 = sub_1A42B3278(v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v28 = *((*v3 & *v23) + 0xB8);

    v28(sub_1A45B7814, v27);

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v32 = *((*v3 & *v23) + 0xD0);

    v32(sub_1A45B78A4, v31);

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = *((*v3 & *v23) + 0xE8);

    v34(sub_1A45B7930, v33);

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v36 = *((*v3 & *v23) + 0x100);

    v36(sub_1A45B798C, v35);
  }

  else
  {
    if (qword_1EB1C8C10 != -1)
    {
      swift_once();
    }

    v37 = sub_1A5246F24();
    __swift_project_value_buffer(v37, qword_1EB15B730);
    v38 = v2;
    v39 = sub_1A5246F04();
    v40 = sub_1A524D244();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v41 = 136315138;
      (v10)();
      v42 = sub_1A524C714();
      sub_1A3C2EF94(v42, v43, &v46);
    }

    return 0;
  }

  return v23;
}

id sub_1A45B7404(int a1)
{
  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) == a1)
  {
    v2 = [objc_opt_self() systemBackgroundColor];

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A45B7528(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1A45B7600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 2);
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = MEMORY[0x1E69E7D40];
  v14 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x68));
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = v12;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v9;
  v33.origin.y = v10;
  v33.size.width = v11;
  v33.size.height = v12;
  MidY = CGRectGetMidY(v33);
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v9;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v12;
  Height = CGRectGetHeight(v35);
  v18.f64[0] = Width;
  v18.f64[1] = Height;
  v19 = (a2 + 32 * v14);
  *v19 = MidX;
  *&v19[1] = MidY;
  v19[2] = 0x3FF0000000000000;
  v19[3] = vcvt_f32_f64(v18);
  v20 = (a3 + 160 * *(v8 + *((*v13 & *v8) + 0x68)));
  v21 = *(off_1E7722048 + 1);
  *v20 = *off_1E7722048;
  v20[1] = v21;
  v22 = *(off_1E7722048 + 5);
  v20[4] = *(off_1E7722048 + 4);
  v20[5] = v22;
  v23 = *(off_1E7722048 + 3);
  v20[2] = *(off_1E7722048 + 2);
  v20[3] = v23;
  v24 = *(off_1E7722048 + 9);
  v20[8] = *(off_1E7722048 + 8);
  v20[9] = v24;
  v25 = *(off_1E7722048 + 7);
  v20[6] = *(off_1E7722048 + 6);
  v20[7] = v25;
  *(a4 + 40 * *(v8 + *((*v13 & *v8) + 0x68)) + 1) = 5;
  __asm { FMOV            V0.2S, #1.0 }

  *(a4 + 40 * *(v8 + *((*v13 & *v8) + 0x68)) + 8) = result;
  return result;
}

void sub_1A45B77BC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB125C40)
  {
    v3 = sub_1A42C381C(255, a2);
    v6 = type metadata accessor for PhotoKitItem(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB125C40);
    }
  }
}

void sub_1A45B7814()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v1 addChildViewController_];

      v1 = v3;
    }
  }
}

void sub_1A45B78A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      [v2 didMoveToParentViewController_];

      v1 = v3;
    }
  }
}

void sub_1A45B7930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong willMoveToParentViewController_];
  }
}

void sub_1A45B798C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromParentViewController];
}

void sub_1A45B79E0()
{
  swift_getKeyPath();
  (*(*v0 + 472))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45B7A54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45B7C00()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager____lazy_storage___suggestionProvider);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1A45B7C70(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1A41B617C(v4);
  }

  sub_1A41EDCF0(v2);
  return v3;
}

uint64_t sub_1A45B7C70(uint64_t a1)
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1A5244F64();
  v5 = *(a1 + 24);
  v6 = sub_1A5244F34();
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v6;

  sub_1A3D4D930(0, 0, v4, &unk_1A534DEB0, v10);

  return v6;
}

void sub_1A45B7F40()
{
  swift_getKeyPath();
  (*(*v0 + 472))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A45B7FBC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__initialSuggestions);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A45B81B4()
{
  swift_getKeyPath();
  (*(*v0 + 472))();

  return result;
}

double sub_1A45B8230@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask);

  return result;
}

double sub_1A45B82C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 480))(KeyPath, sub_1A45C0FA4, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A45B8370@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 472))();

  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  return sub_1A3C5DBA4(v1 + v3, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B8428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 472))();

  v4 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  return sub_1A3C5DBA4(v3 + v4, a2, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B84E4(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A3C5DBA4(a1, &v7 - v4, &qword_1EB12AFE0, v2);
  return sub_1A45B85B4(v5);
}

uint64_t sub_1A45B85B4(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3C5DBA4(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A45BF410(v6, a1);
  sub_1A3C42DA0(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 480))(v10);
  }

  else
  {
    sub_1A3C5DBA4(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A3DBE288(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C42DA0(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A45B87D8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A3C5DBA4(a2, &v10 - v6, &qword_1EB12AFE0, v4);
  v8 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
  swift_beginAccess();
  sub_1A3DBE288(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_1A45B88D0()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_1A3C4A700(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB15EC98 = result;
  return result;
}

uint64_t GenerativeStoryPromptSuggestionManager.CacheInvalidationIntent.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A45B89BC(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v2 + 48) = swift_task_alloc();
  sub_1A45C0E40(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  *(v2 + 56) = swift_task_alloc();
  v5 = sub_1A5241144();
  *(v2 + 64) = v5;
  *(v2 + 72) = *(v5 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 136) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A45B8B40, 0, 0);
}

uint64_t sub_1A45B8B40()
{
  if (!*(v0 + 136))
  {
    goto LABEL_5;
  }

  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    KeyPath = swift_getKeyPath();
    (*(*v4 + 472))(KeyPath);

    v6 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__lastFetchDate;
    swift_beginAccess();
    sub_1A3C5DBA4(v4 + v6, v3, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_1A3C42DA0(*(v0 + 56), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
LABEL_5:
      v7 = 1;
      goto LABEL_8;
    }

    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 40);
    (*(v11 + 32))(v8, *(v0 + 56), v10);
    sub_1A5241104();
    sub_1A5241054();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    v7 = v14 < *(v12 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_refetchCooldownInterval);
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  *(v0 + 137) = v7;
  v16 = **(v0 + 40) + 200;
  *(v0 + 96) = *v16;
  *(v0 + 104) = v16 & 0xFFFFFFFFFFFFLL | 0x7120000000000000;
  *(v0 + 112) = sub_1A524CC54();
  *(v0 + 120) = sub_1A524CC44();
  v18 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A45B8D9C, v18, v17);
}

uint64_t sub_1A45B8D9C()
{
  v1 = *(v0 + 96);

  *(v0 + 128) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A45B8E1C, 0, 0);
}

uint64_t sub_1A45B8E1C()
{
  v1 = *(v0 + 137);
  v2 = *(*(v0 + 128) + 16);

  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (*(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_wantsMockSuggestions) == 1)
    {
      v5 = *(v0 + 48);
      v6 = sub_1A45BF9F4();
      v7 = sub_1A524CCB4();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      v8 = swift_allocObject();
      swift_weakInit();

      v9 = sub_1A524CC44();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      v10[5] = v6;

      sub_1A3D4D930(0, 0, v5, &unk_1A534DCF8, v10);
    }

    else
    {
      v12 = *(v0 + 137);
      KeyPath = swift_getKeyPath();
      (*(*v3 + 472))(KeyPath);

      v14 = *(v3 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager__currentFetchTask);
      v15 = swift_task_alloc();
      *(v15 + 16) = v3;
      *(v15 + 24) = v12;

      os_unfair_lock_lock((v14 + 24));
      sub_1A45BD6CC((v14 + 16));
      os_unfair_lock_unlock((v14 + 24));
    }
  }

  else
  {
    sub_1A45BA3EC();
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_1A45B9090(uint64_t *a1, uint64_t a2, char a3)
{
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1A45B7C00();
  if (v8)
  {
    v9 = v8;
    v10 = *a1;
    if ((a3 & 1) != 0 && v10)
    {
      v11 = sub_1A5246F04();
      v12 = sub_1A524D264();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "Ignoring new request to fetch suggestions, because previous task did not finish", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }
    }

    else
    {
      sub_1A524CC74();
      v17 = sub_1A524CCB4();
      (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = v10;
      v19[6] = v9;

      v20 = sub_1A4064334(0, 0, v7, &unk_1A534DED0, v19);

      sub_1A3C42DA0(v7, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

      *a1 = v20;
    }
  }

  else
  {
    v22 = sub_1A5246F04();
    v14 = sub_1A524D244();
    if (os_log_type_enabled(v22, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v22, v14, "Missing an instance of PromptSuggestionProvider", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    v16 = v22;
  }
}

uint64_t sub_1A45B93A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1A45C0E40(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45B9468, 0, 0);
}

uint64_t sub_1A45B9468()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (!Strong)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if (sub_1A524CDC4())
  {
LABEL_3:

    goto LABEL_4;
  }

  v4 = v0[8];
  if (v4)
  {

    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "Waiting for previous prompt suggestion fetch to finish before starting a new fetch", v7, 2u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v8 = sub_1A3DBD9A0();
    v9 = MEMORY[0x1E69E7CA8];
    v10 = MEMORY[0x1E69E7288];
    sub_1A524CD94();
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1A45B9778;

    return MEMORY[0x1EEE6DA20](v0 + 5, v4, v9 + 8, v8, v10);
  }

  else
  {
    v0[13] = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, v13, "Starting new prompt suggestions fetch", v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    v15 = v0[11];

    v16 = v15 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest;
    v17 = *(v15 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
    if (v17)
    {
      v18 = *(v16 + 8);

      v17(v19);
      sub_1A3C784D4(v17, v18);
      goto LABEL_3;
    }

    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_1A45B9A44;
    v21 = v0[9];

    return sub_1A45BAF5C(v21);
  }
}

uint64_t sub_1A45B9778()
{
  v1 = *v0;

  sub_1A452FD58(*(v1 + 40), *(v1 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1A45B9898, 0, 0);
}

uint64_t sub_1A45B9898()
{

  v0[13] = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_logger;
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Starting new prompt suggestions fetch", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = v0[11];

  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest;
  v6 = *(v4 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryPromptSuggestionManager_fetchSuggestionsForTest);
  if (v6)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1A3C784D4(v6, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1A45B9A44;
    v12 = v0[9];

    return sub_1A45BAF5C(v12);
  }
}

uint64_t sub_1A45B9A44(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A45B9B44, 0, 0);
}

uint64_t sub_1A45B9B44(uint64_t a1)
{
  if ((sub_1A524CDC4() & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A45B9D78(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1A45C0E40(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  v3[6] = swift_task_alloc();
  v4 = sub_1A5244A54();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45B9E98, 0, 0);
}

uint64_t sub_1A45B9E98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for GenerativeStorySuggestion(0);
  sub_1A3C5DBA4(v4 + *(v5 + 28), v3, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A3C42DA0(v0[6], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
LABEL_8:

    v10 = v0[1];

    return v10();
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v6 = sub_1A45B7C00();
  v0[10] = v6;
  if (!v6)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_8;
  }

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1A45BA054;
  v8 = v0[9];
  v9 = v0[4];

  return MEMORY[0x1EEE2A1A8](v8, v9);
}

uint64_t sub_1A45BA054()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A45BA1F4;
  }

  else
  {

    v2 = sub_1A45BA170;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A45BA170()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A45BA1F4()
{
  v16 = v0;
  v1 = *(v0 + 96);

  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315138;
    *(v0 + 16) = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    v8 = sub_1A524C714();
    sub_1A3C2EF94(v8, v9, &v15);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);

  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}