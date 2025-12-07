uint64_t WalletOrderMatcher.execute()()
{
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D58514, 0, 0);
}

uint64_t sub_1C4D58514()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for WalletOrderMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C4D58CA8;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4D58F58;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C4643148();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA4C0, &unk_1C4F141F0);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

void sub_1C4D58910(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4D57374(a1, a2, &unk_1EC0BC900, byte_1C4F142D0, sub_1C44F1938, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, &qword_1EC0BAA28, a3, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple, type metadata accessor for GraphTriple, sub_1C44FE5AC, sub_1C44F1938, type metadata accessor for GraphTriple, sub_1C4D5575C);
  if (!v3)
  {
    v5 = type metadata accessor for EntityMatch(0);
    sub_1C440BAA8(a3, 0, 1, v5);
  }
}

uint64_t sub_1C4D58A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4D55EB0(a1, a2, a3);
  if (!v3)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v5, v6, v7, v8);
  }

  return result;
}

void sub_1C4D58A98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C4D57374(a1, a2, &unk_1EC0BCAE0, byte_1C4F142A0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, &qword_1EC0C6968, a3, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C4812AF0, sub_1C486854C, type metadata accessor for ConstructionGraphTriple, sub_1C4D55A80);
  if (!v3)
  {
    v5 = type metadata accessor for EntityMatch(0);
    sub_1C440BAA8(a3, 0, 1, v5);
  }
}

uint64_t sub_1C4D58BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return WalletOrderMatcher.execute()();
}

uint64_t sub_1C4D58CC4(uint64_t a1)
{
  result = sub_1C44FDE5C(&qword_1EDDE58F8, type metadata accessor for WalletOrderMatcher, &protocol conformance descriptor for WalletOrderMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D58D1C(uint64_t a1)
{
  result = sub_1C44FDE5C(qword_1EDDE5908, type metadata accessor for WalletOrderMatcher, &protocol conformance descriptor for WalletOrderMatcher);
  *(a1 + 8) = result;
  return result;
}

void *sub_1C4D58D9C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A8D668(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D58F70(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D5909C, 0, 0);
}

uint64_t sub_1C4D5909C()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D59460(&qword_1EDDDC6F0, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FE08);
        v4 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v2, v5 + v6, v7);
        v8 = qword_1EDDFD1C8;
        v9 = 2;
        v10 = v4;
      }

      else
      {
        v11 = *(v0 + 96);
        v3 = type metadata accessor for WalletTrackedOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D59460(&qword_1EDDDDB38, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FE30);
        v10 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v11, v10, v12);
        v4 = (v10 + *(v3 + 20));
        v8 = qword_1EDDFD1C8;
        v9 = 1;
      }

      if (v8 != -1)
      {
        sub_1C4413D94(&qword_1EDDFD1C8);
      }

      v13 = *(v0 + 160);
      v14 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1D0);
      sub_1C44068F0();
      sub_1C4471750(v15, v4, v16);
      *(v10 + *(v3 + 24)) = v9;
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v14, v13, v17);
      if (qword_1EDDFD1C8 != -1)
      {
        sub_1C4413D94(&qword_1EDDFD1C8);
      }

      v18 = *(v0 + 185);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1D0);
      *(v0 + 168) = v23;
      sub_1C4471750(v23, v19, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v23, v21, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v22, v20, v24);
      *(v0 + 184) = v18;
      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = sub_1C4657140;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletTrackedOrderEventPhase(uint64_t a1)
{
  result = qword_1EDDDF9C0;
  if (!qword_1EDDDF9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D59460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *BMWalletPaymentsCommerceTrackedOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v754 = a5;
  v6 = sub_1C456902C(&qword_1EC0C6970, &unk_1C4F6FC20);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v773 = v8;
  v9 = sub_1C43FBE44();
  type metadata accessor for WalletTrackedOrderStructs.OrderTransactionRelationshipType(v9);
  sub_1C43FCDF8();
  v771 = v11;
  v772 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v779 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v778 = v14;
  v15 = sub_1C43FBE44();
  v787 = type metadata accessor for WalletTrackedOrderStructs.Transaction(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v784 = v17;
  v18 = sub_1C456902C(&qword_1EC0C6978, &qword_1C4F804B0);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v747 = v20;
  v21 = sub_1C456902C(&qword_1EC0C6980, &unk_1C4F6FC30);
  sub_1C43FBD18(v21);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v745 = v23;
  v24 = sub_1C43FBE44();
  v746 = type metadata accessor for WalletTrackedOrderStructs.OrderPaymentRelationshipType(v24);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v748 = v26;
  v27 = sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v775 = v29;
  v30 = sub_1C43FBE44();
  v774 = type metadata accessor for WalletTrackedOrderStructs.QuantityRelationshipType(v30);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v777 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v749 = v34;
  v35 = sub_1C43FBE44();
  v744 = type metadata accessor for WalletTrackedOrderStructs.Payment(v35);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v764 = v37;
  v38 = sub_1C456902C(&qword_1EC0C6990, &qword_1C4F6FC40);
  sub_1C43FBD18(v38);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v804 = v40;
  v41 = sub_1C43FBE44();
  type metadata accessor for WalletTrackedOrderStructs.OrderShipmentFullFillmentRelationshipType(v41);
  sub_1C43FCDF8();
  v802 = v43;
  v803 = v42;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v813 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v812 = v46;
  v47 = sub_1C43FBE44();
  v808 = type metadata accessor for WalletTrackedOrderStructs.ShipmentFullFillmentInfo(v47);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  v821 = v49;
  v50 = sub_1C456902C(&qword_1EC0C6998, &qword_1C4F6FC48);
  sub_1C43FBD18(v50);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  v763 = v52;
  v53 = sub_1C456902C(&qword_1EC0C69A0, &qword_1C4F6FC50);
  sub_1C43FBD18(v53);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  v760 = v55;
  v56 = sub_1C43FBE44();
  v761 = type metadata accessor for WalletTrackedOrderStructs.OrderPersonRelationshipType(v56);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD2D8();
  v762 = v58;
  v59 = sub_1C456902C(&qword_1EC0C69A8, &qword_1C4F6FC58);
  sub_1C43FBD18(v59);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBC74();
  v752 = v61;
  v62 = sub_1C43FBE44();
  v750 = type metadata accessor for WalletTrackedOrderStructs.AddressRelationshipType(v62);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD2D8();
  v751 = v64;
  v65 = sub_1C43FBE44();
  v767 = type metadata accessor for WalletTrackedOrderStructs.Person(v65);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD2D8();
  *&v791 = v67;
  v68 = sub_1C456902C(&qword_1EC0C69B0, &qword_1C4F6FC60);
  sub_1C43FBD18(v68);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBC74();
  v759 = v70;
  v71 = sub_1C456902C(&qword_1EC0C69B8, &unk_1C4F6FC68);
  sub_1C43FBD18(v71);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBC74();
  v756 = v73;
  v74 = sub_1C43FBE44();
  v758 = type metadata accessor for WalletTrackedOrderStructs.EntityOrganizationRelationshipType(v74);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FD2D8();
  v757 = v76;
  v77 = sub_1C43FBE44();
  v765 = type metadata accessor for WalletTrackedOrderStructs.Organization(v77);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FD2D8();
  v770 = v79;
  v80 = sub_1C43FBE44();
  v786 = type metadata accessor for WalletTrackedOrderStructs.IdentifierRelationshipType(v80);
  sub_1C43FCDF8();
  v776 = v81;
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBFDC();
  v755 = v83;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBF38();
  v766 = v85;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBF38();
  v769 = v87;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBF38();
  v816 = v89;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FD230();
  v781 = v91;
  v92 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v93 = sub_1C43FBD18(v92);
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBFDC();
  *&v790 = v94;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FBF38();
  v768 = v96;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FBF38();
  v783 = v98;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FBF38();
  v782 = v100;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1C43FD230();
  v796 = v102;
  v103 = sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
  sub_1C43FBD18(v103);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FBC74();
  v810 = v105;
  sub_1C43FBE44();
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v797 = v107;
  v798 = v106;
  MEMORY[0x1EEE9AC00](v106);
  sub_1C43FD2D8();
  v794 = v108;
  sub_1C43FBE44();
  v795 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v793 = v109;
  MEMORY[0x1EEE9AC00](v110);
  sub_1C43FD2D8();
  *&v792 = v111;
  sub_1C43FBE44();
  v806 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v823 = v112;
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FBFDC();
  v789 = v114;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v115);
  sub_1C43FBF38();
  v788 = v116;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v117);
  sub_1C43FBF38();
  v780 = v118;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C43FBF38();
  v822 = v120;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v744 - v122;
  v124 = type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType(0);
  sub_1C43FCDF8();
  v801 = v125;
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBFDC();
  v820 = v127;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v128);
  sub_1C43FBF38();
  v819 = v129;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v130);
  sub_1C43FBF38();
  i = v131;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FBF38();
  v817 = v133;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v134);
  sub_1C43FBF38();
  v811 = v135;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v744 - v137;
  v800 = type metadata accessor for WalletTrackedOrderStructs.WalletOrder(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v139);
  v141 = (&v744 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
  v785 = *a4;
  v827[0] = MEMORY[0x1E69E7CD0];
  v142 = sub_1C4F019E8();
  if (qword_1EDDE92A8 != -1)
  {
LABEL_163:
    swift_once();
  }

  v753 = type metadata accessor for SourceIdPrefix(0);
  v809 = sub_1C442B738(v753, &qword_1EDE2CFC0);
  String.base64EncodedSHA(withPrefix:)();
  v144 = v143;
  v146 = v145;

  v147 = 0xE700000000000000;
  switch(v785)
  {
    case 1:

      goto LABEL_7;
    case 2:
      v147 = 0xE500000000000000;
      break;
    case 3:
      v147 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  v142 = sub_1C4F02938();

  if (v142)
  {
LABEL_7:
    sub_1C45B4BF8(v814, &selRef_trackedOrderIdentifier);
    if (v148)
    {
      sub_1C43FC1CC();

      v144 = v147;
      v146 = v142;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v149 = v824;
  sub_1C4EBD278(v144, v146, v150, v151, v152, v153, v154, v155, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
  v156 = v149;
  if (v149)
  {

    return v147;
  }

  v799 = v144;
  v807 = v146;
  v815 = 0;
  v157 = sub_1C45B4BF8(v814, &selRef_orderNumber);
  if (v158)
  {
    v156 = v157;
    v159 = v158;
    v160 = v141 + v800[9];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *v160 = v156;
    *(v160 + 1) = v159;
    v147 = v827;
    sub_1C44869B4(&v825, v156, v159, v161, v162, v163, v164, v165, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765);
  }

  v166 = sub_1C45B4BF8(v814, &selRef_orderDate);
  v805 = v141;
  if (v167)
  {
    v156 = v166;
    v168 = v167;
    sub_1C4EFEEF8();
    v169 = sub_1C440FF78();
    sub_1C440BAA8(v169, v170, v171, v172);
    sub_1C4EFD168();
    v173 = v124[6];
    if (qword_1EDDFD1C8 != -1)
    {
LABEL_165:
      sub_1C44072AC();
      swift_once();
    }

    v174 = type metadata accessor for Source(0);
    sub_1C442B738(v174, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v175, v138 + v173);
    sub_1C4EFE658();
    v176 = v124[8];
    sub_1C4EFEEE8();
    v177 = (v138 + v124[10]);
    sub_1C4EFE7B8();
    sub_1C44262E0(v124[12]);
    sub_1C4EFECE8();
    sub_1C44262E0(v124[14]);
    sub_1C4EFE668();
    sub_1C44262E0(v124[16]);
    sub_1C4EFE698();
    sub_1C44262E0(v124[18]);
    sub_1C4EFEA38();
    v178 = (v138 + v124[20]);
    *(v138 + v176) = xmmword_1C4F6F5A0;
    sub_1C4D4308C(v156, v168, 0x2D4D4D2D79797979, 0xEA00000000006464);
    sub_1C4EF9AC8();
    *v178 = v156;
    v178[1] = v168;
    v179 = v792;
    sub_1C4EF9F58();
    if (qword_1EDDE6518 != -1)
    {
      sub_1C440A36C(&qword_1EDDE6518);
    }

    v180 = v794;
    sub_1C4EF9EA8();
    sub_1C44CDAD4();
    sub_1C43FC1CC();
    (*(v797 + 8))(v180, v798);
    (*(v793 + 8))(v179, v795);
    *v177 = v180;
    v177[1] = v156;
    sub_1C442C1A4();
    v181 = sub_1C43FD680();
    v184 = sub_1C441400C(v181, v182, v183, v124);
    v141 = v805;
    v147 = v805;
    sub_1C4EBDA9C(v184);
    (*(v823 + 8))(v123, v806);
    sub_1C4405548();
  }

  v185 = [v814 orderUpdateDate];
  if (v185)
  {
    v186 = v185;
    v187 = v780;
    sub_1C4EF9C78();

    v156 = v823;
    v188 = v806;
    (*(v823 + 32))(v822, v187, v806);
    sub_1C4EFEEF8();
    v189 = sub_1C440FF78();
    sub_1C440BAA8(v189, v190, v191, v192);
    sub_1C4EFD168();
    v193 = v124[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v194 = type metadata accessor for Source(0);
    sub_1C442B738(v194, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v195, v138 + v193);
    sub_1C4EFE658();
    v196 = v124[8];
    sub_1C4EFEEE8();
    v824 = (v138 + v124[10]);
    sub_1C4EFE7B8();
    sub_1C44262E0(v124[12]);
    sub_1C4EFECE8();
    sub_1C44262E0(v124[14]);
    sub_1C4EFE668();
    sub_1C44262E0(v124[16]);
    sub_1C4EFE698();
    sub_1C44262E0(v124[18]);
    sub_1C4EFEA38();
    v197 = (v138 + v124[20]);
    *(v138 + v196) = xmmword_1C4F6FC10;
    v198 = v796;
    (v156)[2](v796, v822, v188);
    sub_1C440BAA8(v198, 0, 1, v188);
    sub_1C4D5CB50(v198);
    sub_1C43FC1CC();
    sub_1C44686E4(v198);
    *v197 = v196;
    v197[1] = v156;
    v199 = v792;
    sub_1C4EF9F58();
    if (qword_1EDDE6518 != -1)
    {
      sub_1C440A36C(&qword_1EDDE6518);
    }

    v200 = v794;
    v201 = v822;
    sub_1C4EF9EA8();
    sub_1C44CDAD4();
    sub_1C43FC1CC();
    (*(v797 + 8))(v200, v798);
    (*(v793 + 8))(v199, v795);
    v202 = v824;
    *v824 = v200;
    v202[1] = v156;
    sub_1C442C1A4();
    v203 = sub_1C43FD680();
    v206 = sub_1C441400C(v203, v204, v205, v124);
    v147 = v805;
    sub_1C4EBDA9C(v206);
    v207 = v201;
    v141 = v147;
    (*(v823 + 8))(v207, v188);
    sub_1C4405548();
  }

  sub_1C45B4BF8(v814, &selRef_trackedOrderIdentifier);
  if (v208)
  {
    sub_1C43FC1CC();
    sub_1C4EFEEF8();
    v209 = v781;
    sub_1C43FCF64();
    sub_1C440BAA8(v210, v211, v212, v213);
    v214 = v786;
    sub_1C4EFD258();
    v138 = *(v214 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v215 = type metadata accessor for Source(0);
    sub_1C442B738(v215, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v216, v209 + v138);
    sub_1C4EFE558();
    sub_1C440C150();
    sub_1C4EFE658();
    sub_1C44255F4();
    *v218 = v217 + 1;
    v218[1] = v219;
    *v138 = v147;
    *(v138 + 8) = v156;
    sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
    sub_1C441BF04();
    v222 = v221 & ~v220;
    v223 = swift_allocObject();
    *(v223 + 16) = xmmword_1C4F0D130;
    sub_1C440148C();
    sub_1C448D1F8(v209, v224 + v222);
    v225 = v800[17];

    *(v141 + v225) = v223;
    v147 = v141;
    sub_1C4ED872C();
    sub_1C4420A48();
    sub_1C4D5CFF4(v209, v226);
  }

  sub_1C45B4BF8(v814, &selRef_orderNumber);
  if (v227)
  {
    sub_1C44106D4();
    sub_1C4EFEEF8();
    v228 = v816;
    sub_1C43FCF64();
    sub_1C440BAA8(v229, v230, v231, v232);
    v233 = v786;
    sub_1C4EFD258();
    v234 = *(v233 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v235 = type metadata accessor for Source(0);
    sub_1C442B738(v235, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v236, v228 + v234);
    sub_1C4EFE558();
    sub_1C4EFE658();
    sub_1C44255F4();
    *v238 = v237 - 2;
    v238[1] = v239;
    sub_1C456902C(&qword_1EC0C69D8, &unk_1C4F6FC98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F23100;
    *(inited + 32) = 0x6D754E726564726FLL;
    *(inited + 40) = 0xEB00000000726562;
    *(inited + 48) = v147;
    *(inited + 56) = v138;
    strcpy((inited + 64), "trackingNumber");
    *(inited + 79) = -18;
    v241 = [v814 shippingFulfillments];
    sub_1C4461BB8(0, &qword_1EC0C69C8, 0x1E698F048);
    v242 = sub_1C4F01678();

    if (sub_1C4428DA0(v242))
    {
      sub_1C4431590(0, (v242 & 0xC000000000000001) == 0, v242);
      v243 = v782;
      if ((v242 & 0xC000000000000001) != 0)
      {
        v244 = MEMORY[0x1C6940F90](0, v242);
      }

      else
      {
        v244 = *(v242 + 32);
      }

      v245 = v244;

      v246 = sub_1C45C28F0(v245, &selRef_trackingNumber);
      if (v247)
      {
        goto LABEL_38;
      }
    }

    else
    {

      v243 = v782;
    }

    v246 = 0;
    v247 = 0xE000000000000000;
LABEL_38:
    *(inited + 80) = v246;
    *(inited + 88) = v247;
    *(inited + 96) = 0x746144726564726FLL;
    *(inited + 104) = 0xE900000000000065;
    v248 = v814;
    *(inited + 112) = sub_1C45B4BF8(v814, &selRef_orderDate);
    *(inited + 120) = v249;
    *(inited + 128) = 0x617453726564726FLL;
    *(inited + 136) = 0xEB00000000737574;
    LODWORD(v825) = [v248 orderStatus];
    *(inited + 144) = sub_1C4F00FB8();
    *(inited + 152) = v250;
    strcpy((inited + 160), "merchantName");
    *(inited + 173) = 0;
    *(inited + 174) = -5120;
    v251 = [v248 merchant];
    if (v251)
    {
      v251 = sub_1C45C28F0(v251, &selRef_displayName);
    }

    else
    {
      v252 = 0;
    }

    v253 = v806;
    *(inited + 176) = v251;
    *(inited + 184) = v252;
    *(inited + 192) = 0x614E6E69616D6F64;
    *(inited + 200) = 0xEA0000000000656DLL;
    v254 = [v814 merchant];
    if (!v254 || (v255 = sub_1C45C28F0(v254, &selRef_domainName), !v256))
    {

      v255 = 0;
      v256 = 0xE000000000000000;
    }

    *(inited + 208) = v255;
    *(inited + 216) = v256;
    sub_1C43FBDF0();
    *(inited + 224) = 0xD000000000000015;
    *(inited + 232) = v257;
    v258 = [v814 earliestEmailDateSent];
    if (v258)
    {
      v259 = v258;
      sub_1C4EF9C78();

      v260 = 0;
    }

    else
    {
      v260 = 1;
    }

    sub_1C440BAA8(v243, v260, 1, v253);
    v261 = sub_1C4D5CB50(v243);
    v262 = v253;
    v264 = v263;
    sub_1C44686E4(v243);
    *(inited + 240) = v261;
    *(inited + 248) = v264;
    sub_1C43FBDF0();
    *(inited + 256) = 0xD000000000000015;
    *(inited + 264) = v265;
    v266 = [v814 merchant];
    if (v266)
    {
      v267 = v266;
      v264 = [v266 displayNameUpdateDate];

      if (v264)
      {
        v261 = v768;
        sub_1C4EF9C78();

        v268 = 0;
        v269 = v816;
        v270 = v783;
      }

      else
      {
        v268 = 1;
        v269 = v816;
        v270 = v783;
        v261 = v768;
      }

      v275 = sub_1C441400C(v261, v268, 1, v806);
      sub_1C45B69E4(v275, v270);
    }

    else
    {
      sub_1C43FCF64();
      v271 = v262;
      v270 = v272;
      sub_1C440BAA8(v272, v273, v274, v271);
      v269 = v816;
    }

    sub_1C4D5CB50(v270);
    sub_1C44106D4();
    sub_1C44686E4(v270);
    *(inited + 272) = v261;
    *(inited + 280) = v264;
    sub_1C43FBDF0();
    *(inited + 288) = 0xD000000000000015;
    *(inited + 296) = v276;
    v277 = [v814 orderStatusUpdateDate];
    if (v277)
    {
      v278 = v277;
      v279 = v790;
      sub_1C4EF9C78();

      v280 = 0;
      v281 = v806;
    }

    else
    {
      v280 = 1;
      v281 = v806;
      v279 = v790;
    }

    sub_1C440BAA8(v279, v280, 1, v281);
    v282 = (v269 + *(v786 + 32));
    v283 = sub_1C4D5CB50(v279);
    v284 = v279;
    v286 = v285;
    sub_1C44686E4(v284);
    *(inited + 304) = v283;
    *(inited + 312) = v286;
    sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    v825 = sub_1C4F00F28();
    v287 = sub_1C456902C(&qword_1EC0C69E0, &qword_1C4F6FCA8);
    sub_1C4D5D04C();
    sub_1C4F00FB8();
    sub_1C44106D4();

    *v282 = &v825;
    v282[1] = v287;
    v288 = v800[17];
    v289 = *(v141 + v288);
    if (v289)
    {
      sub_1C440148C();
      v290 = v269;
      v291 = v769;
      sub_1C448D1F8(v290, v769);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v292 = v289;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v732 = sub_1C43FCEC0();
        sub_1C458C654(v732, v733, v734, v289);
        v292 = v735;
      }

      v294 = *(v292 + 16);
      v293 = *(v292 + 24);
      if (v294 >= v293 >> 1)
      {
        v736 = sub_1C43FCFE8(v293);
        sub_1C458C654(v736, v294 + 1, 1, v292);
        v292 = v737;
      }

      *(v292 + 16) = v294 + 1;
      sub_1C43FBF6C();
      sub_1C443049C();
      sub_1C4D5CF98(v291, v295);

      v141 = v805;
      v269 = v816;
    }

    else
    {
      sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
      sub_1C441BF04();
      v298 = v297 & ~v296;
      v292 = swift_allocObject();
      *(v292 + 16) = xmmword_1C4F0D130;
      sub_1C440148C();
      sub_1C448D1F8(v269, v299 + v298);
    }

    *(v141 + v288) = v292;
    sub_1C4ED872C();
    sub_1C4420A48();
    sub_1C4D5CFF4(v269, v300);
  }

  v301 = [v814 merchant];
  if (v301)
  {
    v302 = sub_1C45C28F0(v301, &selRef_displayName);
    v138 = v808;
    if (!v303)
    {
      goto LABEL_75;
    }

    v304 = v302;
    v147 = v303;
    String.base64EncodedSHA(withPrefix:)();
    v305 = v770;
    v306 = v815;
    sub_1C4EBDB8C(v307, v308, v309, v310, v311, v312, v313, v314, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
    v815 = v306;
    if (v306)
    {

      goto LABEL_87;
    }

    v315 = (v305 + *(v765 + 36));

    *v315 = v304;
    v315[1] = v147;
    v316 = [v814 merchant];
    if (v316)
    {
      sub_1C45C28F0(v316, &selRef_domainName);
      sub_1C43FC1CC();
    }

    else
    {
      v147 = 0;
      v304 = 0;
    }

    v317 = v765;
    v318 = v770;
    v319 = (v770 + *(v765 + 52));

    *v319 = v147;
    v319[1] = v304;
    sub_1C4EFEEF8();
    v320 = v757;
    v321 = sub_1C440FF78();
    sub_1C440BAA8(v321, v322, v323, v324);
    v325 = v758;
    sub_1C4EFD348();
    v326 = *(v325 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v327 = type metadata accessor for Source(0);
    sub_1C442B738(v327, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v328, v320 + v326);
    sub_1C43FCF64();
    sub_1C440BAA8(v329, v330, v331, v317);
    sub_1C448D1F8(v318, v756);
    v332 = sub_1C43FD680();
    v335 = sub_1C441400C(v332, v333, v334, v317);
    sub_1C4EBE314(v335);
    v336 = sub_1C442A548();
    sub_1C448D1F8(v336, v759);
    v337 = sub_1C43FD680();
    v340 = sub_1C441400C(v337, v338, v339, v325);
    sub_1C4EBE414(v340);
    sub_1C4D5CFF4(v320, type metadata accessor for WalletTrackedOrderStructs.EntityOrganizationRelationshipType);
    sub_1C4D5CFF4(v318, type metadata accessor for WalletTrackedOrderStructs.Organization);
  }

  v138 = v808;
LABEL_75:
  v341 = [v814 customer];
  if (v341)
  {
    v342 = v341;
    v825 = 0;
    v826 = 0xE000000000000000;
    v343 = sub_1C45B4BF8(v341, &selRef_fullName);
    if (v344)
    {
      v345 = v344;
    }

    else
    {
      v343 = 0;
      v345 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v343, v345);

    v346 = sub_1C45B4BF8(v342, &selRef_emailAddress);
    if (v347)
    {
      v348 = v347;
    }

    else
    {
      v346 = 0;
      v348 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v346, v348);

    v349 = sub_1C45B4BF8(v342, &selRef_phoneNumber);
    if (v350)
    {
      v351 = v350;
    }

    else
    {
      v349 = 0;
      v351 = 0xE000000000000000;
    }

    MEMORY[0x1C6940010](v349, v351);

    String.base64EncodedSHA(withPrefix:)();
    v353 = v352;
    v355 = v354;

    v356 = v791;
    v357 = v815;
    sub_1C4EBE504(v353, v355, v358, v359, v360, v361, v362, v363, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
    v815 = v357;
    if (v357)
    {
      v147 = v827[0];

LABEL_87:

      sub_1C442DA58();
      v365 = v141;
LABEL_88:
      sub_1C4D5CFF4(v365, v364);
      return v147;
    }

    sub_1C45B4BF8(v342, &selRef_fullName);
    sub_1C44106D4();
    v367 = (v366 + *(v767 + 60));

    *v367 = v356;
    v367[1] = v353;
    v368 = [v342 billingAddress];
    if (v368)
    {
      v369 = v368;
      sub_1C4EFEEF8();
      v370 = v751;
      v371 = sub_1C440FF78();
      sub_1C440BAA8(v371, v372, v373, v374);
      v375 = v750;
      sub_1C4EFD1D8();
      v376 = v375[6];
      if (qword_1EDDFD1C8 != -1)
      {
        sub_1C44072AC();
        swift_once();
      }

      v377 = type metadata accessor for Source(0);
      sub_1C442B738(v377, &qword_1EDDFD1D0);
      sub_1C441AB68();
      sub_1C448D1F8(v378, v370 + v376);
      sub_1C4EFE518();
      v824 = (v370 + v375[8]);
      sub_1C4EFE4E8();
      sub_1C44262E0(v375[10]);
      sub_1C4EFE478();
      v822 = (v370 + v375[12]);
      sub_1C4EFE318();
      sub_1C44262E0(v375[14]);
      sub_1C4EFEB08();
      sub_1C44262E0(v375[16]);
      sub_1C4EFE5A8();
      v379 = (v370 + v375[18]);
      sub_1C4EFEDE8();
      v380 = (v370 + v375[20]);
      sub_1C4EFE8D8();
      v381 = (v370 + v375[22]);
      sub_1C4EFE378();
      v798 = (v370 + v375[24]);
      sub_1C4EFECD8();
      v810 = (v370 + v375[26]);
      sub_1C4EFE888();
      v816 = (v370 + v375[28]);
      *v379 = sub_1C45B4BF8(v369, &selRef_street);
      v379[1] = v382;
      *v380 = sub_1C45B4BF8(v369, &selRef_city);
      v380[1] = v383;
      *v381 = sub_1C45B4BF8(v369, &selRef_state);
      v381[1] = v384;
      v385 = sub_1C45B4BF8(v369, &selRef_postalCode);
      v386 = v798;
      *v798 = v385;
      v386[1] = v387;
      v388 = sub_1C45B4BF8(v369, &selRef_country);
      v389 = v810;
      *v810 = v388;
      v389[1] = v390;
      v391 = sub_1C45B4BF8(v342, &selRef_phoneNumber);
      v392 = v822;
      *v822 = v391;
      v392[1] = v393;
      v394 = sub_1C45B4BF8(v342, &selRef_emailAddress);
      v395 = v824;
      *v824 = v394;
      v395[1] = v396;
      v397 = sub_1C45B4BF8(v369, &selRef_rawAddress);
      v398 = v816;
      *v816 = v397;
      v398[1] = v399;
      v400 = sub_1C442A548();
      sub_1C448D1F8(v400, v752);
      v401 = sub_1C43FD680();
      v404 = sub_1C441400C(v401, v402, v403, v375);
      sub_1C4EBEC5C(v404);

      sub_1C4D5CFF4(v370, type metadata accessor for WalletTrackedOrderStructs.AddressRelationshipType);
      v141 = v805;
    }

    sub_1C4EFEEF8();
    v405 = v762;
    v406 = sub_1C440FF78();
    sub_1C440BAA8(v406, v407, v408, v409);
    v410 = v761;
    sub_1C4EFD288();
    v411 = *(v410 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v412 = type metadata accessor for Source(0);
    sub_1C442B738(v412, &qword_1EDDFD1D0);
    sub_1C441AB68();
    sub_1C448D1F8(v413, v405 + v411);
    sub_1C43FCF64();
    v414 = v767;
    sub_1C440BAA8(v415, v416, v417, v767);
    sub_1C448D1F8(v791, v760);
    v418 = sub_1C43FD680();
    v421 = sub_1C441400C(v418, v419, v420, v414);
    sub_1C4EBED4C(v421);
    v422 = sub_1C442A548();
    sub_1C448D1F8(v422, v763);
    v423 = sub_1C43FD680();
    v426 = sub_1C441400C(v423, v424, v425, v410);
    sub_1C4EBEE4C(v426);

    sub_1C4D5CFF4(v405, type metadata accessor for WalletTrackedOrderStructs.OrderPersonRelationshipType);
    sub_1C4D5CFF4(v791, type metadata accessor for WalletTrackedOrderStructs.Person);
    v138 = v808;
  }

  v427 = [v814 shippingFulfillments];
  sub_1C4461BB8(0, &qword_1EC0C69C8, 0x1E698F048);
  v123 = sub_1C4F01678();

  v428 = sub_1C4428DA0(v123);
  v142 = 0;
  v797 = v123 & 0xC000000000000001;
  v798 = v428;
  sub_1C43FBDF0();
  v793 = v429;
  v794 = v430;
  sub_1C43FBDF0();
  v782 = v431;
  v783 = v432;
  v780 = (v433 + 8);
  v781 = (v433 + 16);
  v816 = MEMORY[0x1E69E7CC0];
  v792 = xmmword_1C4F6F7F0;
  v791 = xmmword_1C4F6F800;
  v790 = xmmword_1C4F13950;
  v795 = v123;
  while (v798 != v142)
  {
    v434 = v797;
    sub_1C4431590(v142, v797 == 0, v123);
    if (v434)
    {
      v435 = MEMORY[0x1C6940F90](v142, v123);
    }

    else
    {
      v435 = *(v123 + 8 * v142 + 32);
    }

    v436 = v435;
    v437 = v807;
    if (__OFADD__(v142, 1))
    {
      __break(1u);
      goto LABEL_163;
    }

    v810 = v142;
    String.base64EncodedSHA(withPrefix:)();
    v439 = v438;
    v441 = v440;
    v825 = v799;
    v826 = v437;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v442 = &v825;
    MEMORY[0x1C6940010](v439, v441);

    v443 = v815;
    sub_1C4EBEF3C(v825, v826, v444, v445, v446, v447, v448, v449, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
    v450 = v443;
    if (v443)
    {
      v147 = v827[0];

      goto LABEL_118;
    }

    v815 = 0;
    sub_1C45B4BF8(v436, &selRef_carrierName);
    sub_1C43FC1CC();
    v451 = (v821 + *(v138 + 52));

    *v451 = &v825;
    v451[1] = 0;
    v452 = v821;
    v453 = sub_1C45B4BF8(v436, &selRef_trackingNumber);
    if (v454)
    {
      v450 = v453;
      v455 = v454;
      v456 = (v452 + *(v138 + 44));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v456 = v450;
      v456[1] = v455;
      v457 = (v141 + v800[11]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v457 = v450;
      v457[1] = v455;
      v442 = v827;
      sub_1C44869B4(&v825, v450, v455, v458, v459, v460, v461, v462, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765);
    }

    sub_1C45B4BF8(v436, &selRef_shippingMethod);
    sub_1C43FC1CC();
    v463 = (v452 + *(v138 + 60));

    *v463 = v442;
    v463[1] = v450;
    sub_1C4EFEEF8();
    v464 = v811;
    sub_1C43FCF64();
    v824 = v465;
    sub_1C440BAA8(v466, v467, v468, v465);
    sub_1C4EFD168();
    v469 = v124[6];
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v470 = type metadata accessor for Source(0);
    sub_1C442B738(v470, &qword_1EDDFD1D0);
    sub_1C441AB68();
    v822 = v471;
    v473 = v472;
    v823 = v472;
    sub_1C448D1F8(v472, v469 + v464);
    sub_1C44026C4();
    v474 = v124[8];
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C443F464();
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C43FC4DC(v124[16]);
    sub_1C4EFE698();
    sub_1C440C150();
    sub_1C4EFEA38();
    v475 = (v464 + v124[20]);
    *(v474 + v464) = v792;
    *v138 = sub_1C45B4BF8(v436, &selRef_shippingDate);
    *(v138 + 8) = v476;
    *v475 = sub_1C45B4BF8(v436, &selRef_shippingDate);
    v475[1] = v477;
    *v469 = sub_1C45B4BF8(v436, &selRef_shippingTime);
    v469[1] = v478;
    v479 = v817;
    sub_1C43FCF64();
    sub_1C440C888(v480, v481, v482);
    sub_1C448D1F8(v473, &v479[v124[6]]);
    sub_1C44026C4();
    v483 = &v479[v124[8]];
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C443F464();
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C43FC4DC(v124[16]);
    sub_1C4EFE698();
    sub_1C440C150();
    sub_1C4EFEA38();
    sub_1C4418D7C();
    v485 = v484 - 3;
    v486 = v794;
    *v483 = v485;
    *(v483 + 1) = v486;
    *v138 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryStartDate);
    *(v138 + 8) = v487;
    *v474 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryStartDate);
    v474[1] = v488;
    *v469 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryStartTime);
    v469[1] = v489;
    v490 = i;
    sub_1C43FCF64();
    sub_1C440C888(v491, v492, v493);
    sub_1C448D1F8(v823, v490 + v124[6]);
    sub_1C44026C4();
    v494 = (v490 + v124[8]);
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C43FC4DC(v124[12]);
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C440C150();
    sub_1C4EFE698();
    sub_1C443F464();
    sub_1C4EFEA38();
    sub_1C4418D7C();
    v496 = v495 - 5;
    v497 = v793;
    *v494 = v496;
    v494[1] = v497;
    *v469 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryEndDate);
    v469[1] = v498;
    *v474 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryEndDate);
    v474[1] = v499;
    *v138 = sub_1C45B4BF8(v436, &selRef_estimatedDeliveryEndTime);
    *(v138 + 8) = v500;
    v501 = v819;
    sub_1C43FCF64();
    sub_1C440C888(v502, v503, v504);
    v505 = v823;
    sub_1C448D1F8(v823, v501 + v124[6]);
    sub_1C44026C4();
    v506 = v124[8];
    sub_1C4EFEEE8();
    sub_1C4411540();
    sub_1C43FC4DC(v124[12]);
    sub_1C4EFECE8();
    sub_1C440DBEC();
    sub_1C440C150();
    sub_1C4EFE698();
    sub_1C443F464();
    sub_1C4EFEA38();
    v507 = (v501 + v124[20]);
    *(v501 + v506) = v791;
    *v469 = sub_1C45B4BF8(v436, &selRef_deliveryDate);
    v469[1] = v508;
    *v507 = sub_1C45B4BF8(v436, &selRef_deliveryDate);
    v507[1] = v509;
    *v138 = sub_1C45B4BF8(v436, &selRef_deliveryTime);
    *(v138 + 8) = v510;
    v511 = v820;
    sub_1C43FCF64();
    sub_1C440BAA8(v512, v513, v514, v824);
    sub_1C4EFD168();
    sub_1C448D1F8(v505, v511 + v124[6]);
    sub_1C4EFE658();
    v515 = (v511 + v124[8]);
    *v515 = 0;
    v515[1] = 0;
    sub_1C4EFEEE8();
    sub_1C4405034(v124[10]);
    sub_1C4EFE7B8();
    sub_1C4405034(v124[12]);
    sub_1C4EFECE8();
    sub_1C4405034(v124[14]);
    sub_1C4EFE668();
    sub_1C4405034(v124[16]);
    sub_1C4EFE698();
    v516 = (v511 + v124[18]);
    *v516 = 0;
    v516[1] = 0;
    sub_1C4EFEA38();
    sub_1C4405034(v124[20]);
    v517 = [v436 fulfillmentUpdateDate];
    if (v517)
    {
      v518 = v517;
      v519 = v789;
      sub_1C4EF9C78();

      v520 = v788;
      v521 = v806;
      (*v783)(v788, v519, v806);
      v522 = v782;
      *v515 = 0xD000000000000016;
      v515[1] = v522;
      v523 = v796;
      (*v781)(v796, v520, v521);
      sub_1C440BAA8(v523, 0, 1, v521);
      v524 = sub_1C4D5CB50(v523);
      v526 = v525;
      sub_1C44686E4(v523);
      (*v780)(v520, v521);
      *v516 = v524;
      v516[1] = v526;
    }

    sub_1C456902C(&qword_1EC0C0320, &unk_1C4F6FC80);
    v527 = *(v801 + 72);
    v528 = (*(v801 + 80) + 32) & ~*(v801 + 80);
    v529 = swift_allocObject();
    *(v529 + 16) = v790;
    v530 = v811;
    sub_1C448D1F8(v811, v529 + v528);
    sub_1C448D1F8(v817, v529 + v528 + v527);
    sub_1C448D1F8(i, v529 + v528 + 2 * v527);
    sub_1C448D1F8(v819, v529 + v528 + 3 * v527);
    sub_1C448D1F8(v820, v529 + v528 + 4 * v527);
    v138 = v808;
    v531 = *(v808 + 64);
    v532 = v821;

    *(v532 + v531) = v529;
    sub_1C4ECAB48();
    v533 = v812;
    sub_1C43FCF64();
    sub_1C440BAA8(v534, v535, v536, v824);
    sub_1C4EFD398();
    sub_1C441AB68();
    sub_1C448D1F8(v823, v533 + v537);
    sub_1C43FCF64();
    sub_1C440BAA8(v538, v539, v540, v138);
    sub_1C448D1F8(v532, v804);
    v541 = sub_1C43FD680();
    v544 = sub_1C441400C(v541, v542, v543, v138);
    sub_1C4EBF6FC(v544);
    sub_1C448D1F8(v533, v813);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v550 = sub_1C43FCEC0();
      sub_1C458C6D4(v550, v551, v552, v553);
      v816 = v554;
    }

    v141 = v805;
    v546 = v816[2];
    v545 = v816[3];
    if (v546 >= v545 >> 1)
    {
      v555 = sub_1C43FCFE8(v545);
      sub_1C458C6D4(v555, v546 + 1, 1, v816);
      v816 = v556;
    }

    sub_1C4D5CFF4(v812, type metadata accessor for WalletTrackedOrderStructs.OrderShipmentFullFillmentRelationshipType);
    v816[2] = v546 + 1;
    sub_1C43FBF6C();
    sub_1C4D5CF98(v813, v548 + v547 + *(v549 + 72) * v546);
    sub_1C4D5CFF4(v820, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v819, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(i, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v817, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v530, type metadata accessor for WalletTrackedOrderStructs.DateRelationshipType);
    sub_1C4D5CFF4(v532, type metadata accessor for WalletTrackedOrderStructs.ShipmentFullFillmentInfo);
    v142 = v810 + 1;
    v123 = v795;
  }

  v557 = v800[14];

  *(v141 + v557) = v816;
  sub_1C4ED8364();
  v558 = [v814 payment];
  if (v558)
  {
    v559 = v558;
    String.base64EncodedSHA(withPrefix:)();
    v561 = v560;
    v563 = v562;
    v825 = v799;
    v826 = v807;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v561, v563);

    v564 = v815;
    sub_1C4EBF7FC(v825, v826, v565, v566, v567, v568, v569, v570, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
    v571 = v786;
    if (v564)
    {
      v147 = v827[0];

LABEL_118:

      sub_1C442DA58();
      sub_1C4D5CFF4(v141, v572);
      return v147;
    }

    v817 = v559;
    v815 = 0;
    sub_1C4EFEEF8();
    v575 = v749;
    sub_1C43FCF64();
    v821 = v576;
    sub_1C440BAA8(v577, v578, v579, v576);
    v123 = v774;
    sub_1C4EFD208();
    v580 = *(v123 + 24);
    if (qword_1EDDFD1C8 != -1)
    {
      sub_1C44072AC();
      swift_once();
    }

    v581 = type metadata accessor for Source(0);
    v582 = sub_1C442B738(v581, &qword_1EDDFD1D0);
    sub_1C441AB68();
    v823 = v583;
    sub_1C448D1F8(v584, v575 + v580);
    sub_1C4EFEE08();
    v585 = (v575 + *(v123 + 32));
    sub_1C4EFEC18();
    v586 = (v575 + *(v123 + 40));
    v587 = v817;
    *v585 = sub_1C45B4BF8(v817, &selRef_totalAmount);
    v585[1] = v588;
    *v586 = sub_1C45B4BF8(v587, &selRef_totalIsoCurrencyCode);
    v586[1] = v589;
    sub_1C440633C();
    sub_1C448D1F8(v575, v775);
    v590 = sub_1C43FD680();
    v593 = sub_1C441400C(v590, v591, v592, v123);
    sub_1C4EC0050(v593);
    v594 = v748;
    sub_1C43FCF64();
    sub_1C440BAA8(v595, v596, v597, v821);
    v598 = v746;
    sub_1C4EFD2A8();
    v599 = v594 + v598[6];
    v824 = v582;
    sub_1C448D1F8(v582, v599);
    sub_1C4EFE558();
    v600 = (v594 + v598[8]);
    *v600 = 0;
    v600[1] = 0;
    sub_1C4EFE658();
    v601 = (v594 + v598[10]);
    *v601 = 0;
    v601[1] = 0;
    sub_1C43FCF64();
    v602 = v744;
    sub_1C440BAA8(v603, v604, v605, v744);
    v606 = sub_1C442A548();
    v607 = v745;
    sub_1C448D1F8(v606, v745);
    v608 = v602;
    v168 = v821;
    sub_1C440BAA8(v607, 0, 1, v608);
    sub_1C4EC0140(v607);
    sub_1C448D1F8(v594, v747);
    v609 = sub_1C43FD680();
    v612 = sub_1C441400C(v609, v610, v611, v598);
    sub_1C4EC0240(v612);
    v613 = [v817 transactions];
    sub_1C4461BB8(0, &qword_1EC0C69D0, 0x1E698F050);
    v138 = sub_1C4F01678();

    v820 = sub_1C4428DA0(v138);
    v614 = 0;
    v819 = v138 & 0xC000000000000001;
    v615 = MEMORY[0x1E69E7CC0];
    v616 = v784;
    for (i = v138; ; v138 = i)
    {
      v173 = v807;
      if (v820 == v614)
      {
        break;
      }

      v124 = v819;
      sub_1C4431590(v614, v819 == 0, v138);
      if (v124)
      {
        v617 = MEMORY[0x1C6940F90](v614, v138);
      }

      else
      {
        v617 = *(v138 + 8 * v614 + 32);
      }

      v618 = v614;
      v156 = v617;
      v823 = v618;
      if (__OFADD__(v618, 1))
      {
        __break(1u);
        goto LABEL_165;
      }

      String.base64EncodedSHA(withPrefix:)();
      v620 = v619;
      v622 = v621;
      v825 = v799;
      v826 = v173;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v620, v622);

      v623 = v815;
      sub_1C4EC0330(v825, v826, v624, v625, v626, v627, v628, v629, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755);
      v815 = v623;
      if (v623)
      {

        sub_1C440EB1C();
        sub_1C4417BDC();
        v147 = v827[0];

        sub_1C4403BC8();
        sub_1C4D5CFF4(v749, v691);
        sub_1C442DA58();
        v365 = v805;
        goto LABEL_88;
      }

      v822 = v615;
      v630 = v777;
      sub_1C43FCF64();
      sub_1C440BAA8(v631, v632, v633, v168);
      sub_1C4EFD208();
      sub_1C441AB68();
      sub_1C448D1F8(v824, v630 + v634);
      sub_1C4EFEE08();
      v635 = (v630 + *(v123 + 32));
      sub_1C4EFEC18();
      v636 = (v630 + *(v123 + 40));
      *v635 = sub_1C45B4BF8(v156, &selRef_amount);
      v635[1] = v637;
      *v636 = sub_1C45B4BF8(v156, &selRef_isoCurrencyCode);
      v636[1] = v638;
      sub_1C45B4BF8(v156, &selRef_amount);
      sub_1C44106D4();
      v639 = sub_1C45B4BF8(v156, &selRef_isoCurrencyCode);
      v640 = v123;
      v642 = v616;
      v643 = sub_1C4D42F2C(v635, v636, v639, v641);

      sub_1C4D400DC(v643);
      sub_1C440633C();
      sub_1C448D1F8(v630, v775);
      v644 = sub_1C43FD680();
      v647 = sub_1C441400C(v644, v645, v646, v640);
      sub_1C4EC0CD8(v647);
      sub_1C45B4BF8(v156, &selRef_transactionIdenifier);
      sub_1C44106D4();
      v648 = (v642 + v787[11]);

      *v648 = v642;
      v648[1] = v636;
      v649 = [v156 paymentMethod];
      v650 = v649;
      if (v649)
      {
        v651 = [v649 description];

        v650 = sub_1C4F01138();
        v653 = v652;
      }

      else
      {
        v653 = 0;
      }

      v654 = v784;
      v655 = (v784 + v787[13]);

      *v655 = v650;
      v655[1] = v653;
      v656 = [v156 paymentMethod];
      v168 = v821;
      v615 = v822;
      if (v656)
      {
        sub_1C45C28F0(v656, &selRef_lastFourDigits);
      }

      v657 = (v654 + v787[17]);

      v658 = [v156 paymentMethod];
      if (v658)
      {
        v659 = sub_1C45C28F0(v658, &selRef_lastFourDigits);
        v661 = v660;
      }

      else
      {

        v659 = 0;
        v661 = 0;
      }

      *v657 = v659;
      v657[1] = v661;
      v662 = v778;
      v663 = sub_1C440FF78();
      sub_1C440BAA8(v663, v664, v665, v168);
      v666 = v772;
      sub_1C4EFD328();
      sub_1C441AB68();
      sub_1C448D1F8(v824, v662 + v667);
      sub_1C4EFE558();
      sub_1C44262E0(*(v666 + 32));
      sub_1C4EFE658();
      sub_1C44262E0(*(v666 + 40));
      sub_1C43FCF64();
      v668 = v787;
      sub_1C440BAA8(v669, v670, v671, v787);
      sub_1C448D1F8(v784, v773);
      v672 = sub_1C43FD680();
      v675 = sub_1C441400C(v672, v673, v674, v668);
      sub_1C4EC0DC8(v675);
      v676 = sub_1C442A548();
      sub_1C448D1F8(v676, v779);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v682 = sub_1C43FCEC0();
        sub_1C458C714(v682, v683, v684, v615);
        v615 = v685;
      }

      v123 = v774;
      v571 = v786;
      v678 = *(v615 + 16);
      v677 = *(v615 + 24);
      v616 = v784;
      if (v678 >= v677 >> 1)
      {
        v686 = sub_1C43FCFE8(v677);
        sub_1C458C714(v686, v678 + 1, 1, v615);
        v615 = v687;
      }

      sub_1C4D5CFF4(v778, type metadata accessor for WalletTrackedOrderStructs.OrderTransactionRelationshipType);
      *(v615 + 16) = v678 + 1;
      sub_1C43FBF6C();
      sub_1C4D5CF98(v779, v615 + v679 + *(v680 + 72) * v678);
      sub_1C4403BC8();
      sub_1C4D5CFF4(v777, v681);
      sub_1C4D5CFF4(v616, type metadata accessor for WalletTrackedOrderStructs.Transaction);
      v614 = v823 + 1;
    }

    v688 = v749;
    if (*(v615 + 16))
    {
      v689 = v800[15];
      v690 = v615;
      v141 = v805;

      *(v141 + v689) = v690;
      sub_1C4ED8548();

      sub_1C440EB1C();
      sub_1C4417BDC();
      v574 = v766;
    }

    else
    {

      sub_1C440EB1C();
      sub_1C4417BDC();

      v574 = v766;
      v141 = v805;
    }

    sub_1C4403BC8();
    sub_1C4D5CFF4(v688, v692);
  }

  else
  {
    v574 = v766;
    v571 = v786;
  }

  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v693, v694, v695, v696);
  sub_1C4EFD258();
  v697 = v574;
  v698 = *(v571 + 24);
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v699 = type metadata accessor for Source(0);
  sub_1C442B738(v699, &qword_1EDDFD1D0);
  sub_1C441AB68();
  sub_1C448D1F8(v700, v697 + v698);
  sub_1C4EFE558();
  v701 = (v697 + *(v571 + 32));
  sub_1C4EFE658();
  sub_1C44255F4();
  *v703 = v702 - 1;
  v703[1] = v704;
  sub_1C44EC90C(v827[0], v705, v706, v707, v708, v709, v710, v711, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761);
  v825 = v712;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  if (qword_1EDDE92E8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v753, qword_1EDE2D008);
  String.base64EncodedSHA(withPrefix:)();
  v714 = v713;
  v716 = v715;

  *v701 = v714;
  v701[1] = v716;
  v717 = v800[17];
  v718 = *(v141 + v717);
  if (v718)
  {
    sub_1C440148C();
    sub_1C448D1F8(v766, v755);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v719 = v718;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v738 = sub_1C43FCEC0();
      sub_1C458C654(v738, v739, v740, v718);
      v719 = v741;
    }

    v721 = *(v719 + 16);
    v720 = *(v719 + 24);
    if (v721 >= v720 >> 1)
    {
      v742 = sub_1C43FCFE8(v720);
      sub_1C458C654(v742, v721 + 1, 1, v719);
      v719 = v743;
    }

    *(v719 + 16) = v721 + 1;
    sub_1C43FBF6C();
    sub_1C443049C();
    sub_1C4D5CF98(v755, v722);

    v141 = v805;
    *(v805 + v717) = v719;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C0310, &qword_1C4F6FC90);
    sub_1C441BF04();
    v725 = v724 & ~v723;
    v726 = swift_allocObject();
    *(v726 + 16) = xmmword_1C4F0D130;
    sub_1C440148C();
    sub_1C448D1F8(v766, v727 + v725);
    *(v141 + v717) = v726;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  sub_1C4ED872C();
  v147 = *(*(v754 + *(type metadata accessor for PhaseStores(0) + 48)) + 16);

  v728 = v815;
  sub_1C448E5DC();

  if (!v728)
  {
    LOBYTE(v825) = v785;
    sub_1C4EC0EC8();
    v147 = v731;
  }

  sub_1C4420A48();
  sub_1C4D5CFF4(v766, v729);
  sub_1C442DA58();
  sub_1C4D5CFF4(v141, v730);
  return v147;
}

uint64_t sub_1C4D5CB50(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1C4467FE0(a1, &v11 - v7);
  if (sub_1C44157D4(v8, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1C4EF9AD8();
  v9 = sub_1C4F019E8();
  (*(v3 + 8))(v5, v2);
  return v9;
}

void sub_1C4D5CCC8()
{
  sub_1C467DBC4();
  type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(0);
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1D0);
  sub_1C4D46320();
}

uint64_t sub_1C4D5CD84()
{
  sub_1C4D5CCC8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4D5CE4C()
{
  type metadata accessor for WalletTrackedOrderSourceIngestor(0);
  if (qword_1EDDFD1C8 != -1)
  {
    sub_1C44072AC();
    swift_once();
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1D0);
  sub_1C4D44DDC();
}

uint64_t sub_1C4D5CED0()
{
  sub_1C4D5CE4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5CF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4D5CFF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C4D5D04C()
{
  result = qword_1EC0C69E8;
  if (!qword_1EC0C69E8)
  {
    sub_1C4572308(&qword_1EC0C69E0, &qword_1C4F6FCA8);
    sub_1C45C0BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C69E8);
  }

  return result;
}

uint64_t sub_1C4D5D168(uint64_t a1)
{
  result = sub_1C4D5D218(qword_1EDDDDB40, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FD04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D1C0(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDDB28, type metadata accessor for WalletTrackedOrderSourceIngestor, &unk_1C4F6FD2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D5D260(uint64_t a1)
{
  result = sub_1C4D5D218(qword_1EDDDC6F8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FD80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D2B8(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDC6E0, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor, &unk_1C4F6FDA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5D318(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D5D444, 0, 0);
}

uint64_t sub_1C4D5D444()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D5D808(&qword_1EDDDC368, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F70038);
        v4 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v2, v5 + v6, v7);
        v8 = qword_1EDDFD1A0;
        v9 = 2;
        v10 = v4;
      }

      else
      {
        v11 = *(v0 + 96);
        v3 = type metadata accessor for WalletTransactionOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D5D808(&qword_1EDDDCA90, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F70060);
        v10 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v11, v10, v12);
        v4 = (v10 + *(v3 + 20));
        v8 = qword_1EDDFD1A0;
        v9 = 1;
      }

      if (v8 != -1)
      {
        sub_1C4413DB4(&qword_1EDDFD1A0);
      }

      v13 = *(v0 + 160);
      v14 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1A8);
      sub_1C44068F0();
      sub_1C4471750(v15, v4, v16);
      *(v10 + *(v3 + 24)) = v9;
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v14, v13, v17);
      if (qword_1EDDFD1A0 != -1)
      {
        sub_1C4413DB4(&qword_1EDDFD1A0);
      }

      v18 = *(v0 + 185);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1A8);
      *(v0 + 168) = v23;
      sub_1C4471750(v23, v19, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v23, v21, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v22, v20, v24);
      *(v0 + 184) = v18;
      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = sub_1C4657140;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletTransactionOrderEventPhase(uint64_t a1)
{
  result = qword_1EDDDDA78;
  if (!qword_1EDDDDA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D5D808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*BMWalletPaymentsCommerceTransaction.ingestEvent(startTime:endTime:pipelineType:stores:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4))(void)
{
  v329 = type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType(0);
  sub_1C43FCDF8();
  v330 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FCE30(v8);
  v9 = sub_1C456902C(&qword_1EC0C69F0, &unk_1C4F6FE90);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  sub_1C43FCE30(v11);
  v12 = sub_1C456902C(&qword_1EC0C69F8, &unk_1C4F82560);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v15 = sub_1C43FD2C8(v14);
  v327 = type metadata accessor for WalletTransactionOrderStructs.OrderPaymentRelationshipType(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v325 = type metadata accessor for WalletTransactionOrderStructs.Payment(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = sub_1C456902C(&qword_1EC0C6A00, &unk_1C4F6FEA0);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v347 = v26;
  v27 = sub_1C43FBE44();
  type metadata accessor for WalletTransactionOrderStructs.OrderTransactionRelationshipType(v27);
  sub_1C43FCDF8();
  v346 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v348 = v30;
  v31 = sub_1C456902C(&qword_1EC0C6A08, &unk_1C4F82440);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  sub_1C43FCE30(v33);
  v34 = sub_1C456902C(&qword_1EC0C6A10, &unk_1C4F6FEB0);
  sub_1C43FBD18(v34);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v37 = sub_1C43FD2C8(v36);
  v323 = type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType(v37);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FCE30(v39);
  v40 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v41 = sub_1C43FBD18(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  v44 = sub_1C43FD2C8(v43);
  v331 = type metadata accessor for WalletTransactionOrderStructs.Organization(v44);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD2D8();
  v345 = v46;
  v47 = sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
  sub_1C43FBD18(v47);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  v344 = v49;
  sub_1C43FBE44();
  v343 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v342 = v50;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v52);
  v341 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v339 = v53;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD2D8();
  v56 = sub_1C43FD2C8(v55);
  v338 = type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType(v56);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  v60 = v59 - v58;
  v349 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v337 = v61;
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD230();
  sub_1C43FCE30(v64);
  v65 = sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
  sub_1C43FBD18(v65);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  v351 = v67;
  v68 = sub_1C43FBE44();
  v350 = type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType(v68);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FD230();
  v352 = v71;
  v72 = sub_1C43FBE44();
  v354 = type metadata accessor for WalletTransactionOrderStructs.Transaction(v72);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FD2D8();
  v356 = v74;
  v75 = sub_1C43FBE44();
  v353 = type metadata accessor for WalletTransactionOrderStructs.WalletOrder(v75);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBCC4();
  v79 = v78 - v77;
  HIDWORD(v317) = *a4;
  v359 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE9270 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for SourceIdPrefix(0);
  v81 = sub_1C442B738(v80, qword_1EDE2CF90);
  String.base64EncodedSHA(withPrefix:)();
  v83 = v82;
  v85 = v84;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EDE7DC(v83, v85, v86, v87, v88, v89, v90, v91, v272, v277, v281, v285, v289, v293, v297, v302, v306, v309, v313, v317);
  if (v357)
  {
  }

  else
  {
    v298 = v80;
    v358 = v79;
    String.base64EncodedSHA(withPrefix:)();
    v93 = v92;
    v95 = v94;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v93, v95);

    sub_1C4EDF098(v83, v85, v96, v97, v98, v99, v100, v101, v273, v278, v282, v286, v290, v294, v298, v303, v307, v310, v314, v318);
    v291 = v81;
    v279 = v83;
    v287 = v85;
    v274 = v19;
    v283 = v23;
    sub_1C4EFEEF8();
    sub_1C43FCF64();
    v295 = v103;
    sub_1C440BAA8(v104, v105, v106, v103);
    sub_1C4EFD208();
    v107 = *(v350 + 24);
    if (qword_1EDDFD1A0 != -1)
    {
      sub_1C4413DB4(&qword_1EDDFD1A0);
    }

    v108 = type metadata accessor for Source(0);
    sub_1C442B738(v108, &qword_1EDDFD1A8);
    sub_1C441AB80();
    v304 = v109;
    sub_1C448D254(v109, v352 + v107, v110);
    sub_1C4EFEE08();
    v111 = (v352 + *(v350 + 32));
    sub_1C4EFEC18();
    v112 = (v352 + *(v350 + 40));
    sub_1C45B4BF8(v355, &selRef_amount);
    sub_1C440496C();
    *v111 = v113;
    v111[1] = v114;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v115 = sub_1C45B4BF8(v355, &selRef_currencyCode);
    v117 = v116;
    *v112 = v115;
    v112[1] = v116;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v118 = sub_1C4D42F2C(v107, v95, v115, v117);

    sub_1C4D400DC(v118);
    sub_1C4417C04();
    sub_1C448D254(v352, v351, v119);
    sub_1C43FBD94();
    sub_1C440BAA8(v120, v121, v122, v350);
    v123 = v356;
    sub_1C4EDFA4C(v351);
    sub_1C45B4BF8(v355, &selRef_transactionID);
    sub_1C4408DEC();
    v124 = (v356 + *(v354 + 36));

    *v124 = v356;
    v124[1] = v117;
    [v355 transactionStatus];
    v125 = MEMORY[0x1E69E72F0];
    sub_1C442E750();
    sub_1C440496C();
    sub_1C441F19C();
    *v350 = v356;
    *(v350 + 8) = v95;
    sub_1C45B4BF8(v355, &selRef_transactionDescription);
    sub_1C440496C();
    sub_1C441F19C();
    *v350 = v356;
    *(v350 + 8) = v95;
    [v355 transactionSource];
    sub_1C442E750();
    sub_1C4408DEC();
    sub_1C441F19C();
    *v350 = v356;
    *(v350 + 8) = v125;
    v126 = [v355 account];
    if (v126)
    {
      sub_1C45C28F0(v126, &selRef_lastFourDigits);
      sub_1C440496C();
    }

    else
    {
      v123 = 0;
      v95 = 0;
    }

    v127 = (v356 + *(v354 + 60));

    *v127 = v123;
    v127[1] = v95;
    v128 = [v355 account];
    if (v128)
    {
      sub_1C45C28F0(v128, &selRef_institutionName);
      sub_1C440496C();
    }

    else
    {
      v123 = 0;
      v95 = 0;
    }

    sub_1C441F19C();
    *v127 = v123;
    v127[1] = v95;
    [v355 accountType];
    v129 = MEMORY[0x1E69E72F0];
    sub_1C442E750();
    sub_1C440496C();
    sub_1C441F19C();
    *v127 = v123;
    v127[1] = v95;
    [v355 transactionType];
    sub_1C442E750();
    sub_1C4408DEC();
    v130 = v356;
    sub_1C441F19C();
    *v127 = v123;
    v127[1] = v129;
    v131 = [v355 transactionDate];
    v132 = v353;
    v133 = v295;
    sub_1C441BF18();
    if (v134)
    {
      v135 = v134;
      sub_1C4EF9C78();

      (*(v337 + 32))(v335, v334, v349);
      sub_1C43FCF64();
      sub_1C440BAA8(v136, v137, v138, v295);
      sub_1C4EFD168();
      sub_1C441AB80();
      sub_1C448D254(v127, v60 + v139, v140);
      sub_1C4EFE658();
      v141 = v338[8];
      sub_1C4EFEEE8();
      sub_1C4405034(v338[10]);
      sub_1C4EFE7B8();
      sub_1C4405034(v338[12]);
      sub_1C4EFECE8();
      sub_1C4405034(v338[14]);
      sub_1C4EFE668();
      sub_1C4405034(v338[16]);
      sub_1C4EFE698();
      v142 = (v60 + v338[18]);
      sub_1C4EFEA38();
      v143 = (v60 + v338[20]);
      *(v60 + v141) = xmmword_1C4F6FE80;
      sub_1C4EF9AD8();
      *v143 = sub_1C4F019E8();
      v143[1] = v144;
      v127 = v336;
      sub_1C4EF9F58();
      if (qword_1EDDF4920 != -1)
      {
        swift_once();
      }

      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C4408DEC();
      (*(v342 + 8))(v340, v343);
      (*(v339 + 8))(v336, v341);
      *v142 = v340;
      v142[1] = v129;
      sub_1C448D254(v60, v344, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
      v145 = sub_1C43FC024();
      sub_1C440BAA8(v145, v146, v147, v338);
      v130 = v356;
      sub_1C4EDFB3C(v344);
      (*(v337 + 8))(v335, v349);
      sub_1C4D5F434(v60, type metadata accessor for WalletTransactionOrderStructs.DateRelationshipType);
      sub_1C441BF18();
      v132 = v353;
      v133 = v295;
    }

    v148 = [v355 merchant];
    if (v148)
    {
      v149 = sub_1C45C28F0(v148, &selRef_merchantName);
      if (v150)
      {
        v151 = v149;
        v152 = v150;
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4EDFC2C(v153, v154, v155, v156, v157, v158, v159, v160, v275, v279, v283, v287, v291, v295, v299, v304, 0, v311, v315, v319);
        sub_1C441F19C();
        *v127 = v151;
        v127[1] = v152;
        v161 = [v355 merchant];
        if (v161)
        {
          v162 = v161;
          v163 = [v161 webURL];

          if (v163)
          {
            v164 = v311;
            sub_1C4EF98C8();

            v165 = 0;
            v166 = v345;
            v167 = v315;
          }

          else
          {
            v165 = 1;
            v166 = v345;
            v167 = v315;
            v164 = v311;
          }

          v170 = sub_1C4EF98F8();
          sub_1C440BAA8(v164, v165, 1, v170);
          sub_1C49C45B0(v164, v167);
          if (sub_1C44157D4(v167, 1, v170) == 1)
          {
            sub_1C46CF3CC(v167);
            v168 = 0;
            v169 = 0;
          }

          else
          {
            v168 = sub_1C4EF9818();
            v169 = v171;
            (*(*(v170 - 8) + 8))(v167, v170);
          }
        }

        else
        {
          v168 = 0;
          v169 = 0;
          v166 = v345;
        }

        v172 = (v166 + *(v331 + 52));

        *v172 = v168;
        v172[1] = v169;
        v173 = v166;
        sub_1C43FCF64();
        v133 = v295;
        sub_1C440BAA8(v174, v175, v176, v295);
        sub_1C4EFD348();
        sub_1C441AB80();
        sub_1C448D254(v304, v322 + v177, v178);
        sub_1C43FCF64();
        sub_1C440BAA8(v179, v180, v181, v331);
        sub_1C448D254(v173, v321, type metadata accessor for WalletTransactionOrderStructs.Organization);
        v182 = sub_1C43FC024();
        sub_1C440BAA8(v182, v183, v184, v331);
        sub_1C4EE0428(v321);
        sub_1C448D254(v322, v324, type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType);
        v185 = sub_1C43FC024();
        sub_1C440BAA8(v185, v186, v187, v323);
        sub_1C4EE0538(v324);
        v127 = v304;
        sub_1C4D5F434(v322, type metadata accessor for WalletTransactionOrderStructs.EntityOrganizationRelationshipType);
        sub_1C4D5F434(v345, type metadata accessor for WalletTransactionOrderStructs.Organization);
        v132 = v353;
      }
    }

    v188 = v283;
    sub_1C43FCF64();
    sub_1C440BAA8(v189, v190, v191, v133);
    sub_1C4EFD328();
    sub_1C441AB80();
    sub_1C448D254(v127, v348 + v192, v193);
    sub_1C43FCF64();
    sub_1C440BAA8(v194, v195, v196, v354);
    sub_1C448D254(v130, v347, type metadata accessor for WalletTransactionOrderStructs.Transaction);
    v197 = sub_1C43FC024();
    sub_1C440BAA8(v197, v198, v199, v354);
    sub_1C4EE0628(v347);
    sub_1C456902C(&qword_1EC0C0300, &unk_1C4F6FED0);
    v200 = (*(v346 + 80) + 32) & ~*(v346 + 80);
    v201 = swift_allocObject();
    *(v201 + 16) = xmmword_1C4F0D130;
    sub_1C448D254(v348, v201 + v200, type metadata accessor for WalletTransactionOrderStructs.OrderTransactionRelationshipType);
    v202 = *(v132 + 60);

    *(v358 + v202) = v201;
    sub_1C4EECB34();
    String.base64EncodedSHA(withPrefix:)();
    v204 = v203;
    v206 = v205;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v204, v206);

    sub_1C4EE0738(v279, v287, v207, v208, v209, v210, v211, v212, v275, v279, v283, v287, v291, v295, v299, v304, 0, v311, v315, v319);
    sub_1C43FCF64();
    sub_1C440BAA8(v214, v215, v216, v133);
    sub_1C4EFD208();
    sub_1C448D254(v127, v333 + *(v350 + 24), type metadata accessor for Source);
    sub_1C4EFEE08();
    v217 = (v333 + *(v350 + 32));
    sub_1C4EFEC18();
    v218 = (v333 + *(v350 + 40));
    *v217 = sub_1C45B4BF8(v355, &selRef_amount);
    v217[1] = v219;
    *v218 = sub_1C45B4BF8(v355, &selRef_currencyCode);
    v218[1] = v220;
    sub_1C4417C04();
    sub_1C448D254(v333, v351, v221);
    sub_1C43FBD94();
    sub_1C440BAA8(v222, v223, v224, v350);
    sub_1C4EE0FBC(v351);
    sub_1C43FCF64();
    sub_1C440BAA8(v225, v226, v227, v133);
    sub_1C4EFD2A8();
    sub_1C448D254(v305, v276 + *(v327 + 24), type metadata accessor for Source);
    sub_1C43FCF64();
    sub_1C440BAA8(v228, v229, v230, v325);
    sub_1C448D254(v188, v326, type metadata accessor for WalletTransactionOrderStructs.Payment);
    sub_1C43FBD94();
    sub_1C440BAA8(v231, v232, v233, v325);
    sub_1C4EE10AC(v326);
    sub_1C448D254(v276, v328, type metadata accessor for WalletTransactionOrderStructs.OrderPaymentRelationshipType);
    sub_1C43FBD94();
    sub_1C440BAA8(v234, v235, v236, v327);
    sub_1C4EE11BC(v328);
    sub_1C43FCF64();
    v238 = v237;
    sub_1C440BAA8(v237, v239, v240, v133);
    sub_1C4EFD258();
    sub_1C448D254(v305, v238 + v329[6], type metadata accessor for Source);
    sub_1C4EFE558();
    v241 = (v238 + v329[8]);
    sub_1C4EFE658();
    v242 = (v238 + v329[10]);
    *v242 = 0xD000000000000014;
    v242[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v359, v243, v244, v245, v246, v247, v248, v249, v276, v280, v284, v288, v292, v296, v300, v305, 0, v312, v316, v320, v321, v322, v323, v324, v325, v326);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();

    if (qword_1EDDE92E8 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v301, qword_1EDE2D008);
    String.base64EncodedSHA(withPrefix:)();
    v251 = v250;
    v253 = v252;

    *v241 = v251;
    v241[1] = v253;
    v254 = *(v353 + 68);
    v255 = *(v358 + v254);
    if (v255)
    {
      sub_1C440FF88();
      sub_1C448D254(v238, v332, v256);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v257 = v255;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458C794(0, *(v255 + 16) + 1, 1, v255);
        v257 = v270;
      }

      v259 = *(v257 + 16);
      v258 = *(v257 + 24);
      if (v259 >= v258 >> 1)
      {
        sub_1C458C794(v258 > 1, v259 + 1, 1, v257);
        v257 = v271;
      }

      *(v257 + 16) = v259 + 1;
      sub_1C4D5F3D0(v332, v257 + ((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v259);

      v260 = v358;
      *(v358 + v254) = v257;
    }

    else
    {
      sub_1C456902C(&qword_1EC0C02F8, &unk_1C4F3E690);
      v261 = (*(v330 + 80) + 32) & ~*(v330 + 80);
      v262 = swift_allocObject();
      *(v262 + 16) = xmmword_1C4F0D130;
      sub_1C440FF88();
      sub_1C448D254(v238, v263 + v261, v264);
      *(v358 + v254) = v262;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v260 = v358;
    }

    sub_1C4EECD54();
    type metadata accessor for PhaseStores(0);

    sub_1C448E5DC();

    if (v308)
    {

      sub_1C44093F0();
      sub_1C44262EC();
      sub_1C4420A60();
      sub_1C4D5F434(v348, v265);
      sub_1C4408344();
      sub_1C4D5F434(v260, v266);
      sub_1C4433A70();
      v81 = type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType;
    }

    else
    {

      sub_1C4EE12AC();
      v81 = v267;

      sub_1C44093F0();
      sub_1C44262EC();
      sub_1C4420A60();
      sub_1C4D5F434(v348, v268);
      sub_1C4408344();
      sub_1C4D5F434(v260, v269);
      sub_1C4433A70();
    }

    sub_1C4D5F434(v333, type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType);
    sub_1C4D5F434(v352, type metadata accessor for WalletTransactionOrderStructs.QuantityRelationshipType);
    sub_1C442DA70();
    sub_1C4D5F434(v356, v102);
  }

  return v81;
}

void sub_1C4D5F108()
{
  sub_1C467E090();
  type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(0);
  if (qword_1EDDFD1A0 != -1)
  {
    sub_1C4413DB4(&qword_1EDDFD1A0);
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1A8);
  sub_1C4D46740();
}

uint64_t sub_1C4D5F1C0()
{
  sub_1C4D5F108();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4D5F288()
{
  type metadata accessor for WalletTransactionOrderSourceIngestor(0);
  if (qword_1EDDFD1A0 != -1)
  {
    sub_1C4413DB4(&qword_1EDDFD1A0);
  }

  v0 = type metadata accessor for Source(0);
  sub_1C442B738(v0, &qword_1EDDFD1A8);
  sub_1C4D45AE0();
}

uint64_t sub_1C4D5F308()
{
  sub_1C4D5F288();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4D5F3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D5F434(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D5F51C(uint64_t a1)
{
  result = sub_1C4D5F5CC(qword_1EDDDCA98, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F6FF38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F574(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDCA80, type metadata accessor for WalletTransactionOrderSourceIngestor, &unk_1C4F6FF60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D5F614(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDC370, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F6FFB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F66C(uint64_t a1)
{
  result = sub_1C4D5F5CC(&unk_1EDDDC350, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor, &unk_1C4F6FFDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D5F75C()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 2, 0);
  v0 = 0;
  v1 = 0;
  v2 = v12;
  v3 = *(v12 + 16);
  v4 = 16 * v3;
  do
  {
    v5 = v0;
    if (*(&unk_1F43D2770 + v1 + 32))
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v6 = 0x5F676E696B726F77;
    }

    if (*(&unk_1F43D2770 + v1 + 32))
    {
      v7 = 0x80000001C4FC7B50;
    }

    else
    {
      v7 = 0xEB0000000074756FLL;
    }

    v13 = v2;
    v8 = *(v2 + 24);
    v9 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      sub_1C44CD9C0(v8 > 1, v3 + 1, 1);
      v2 = v13;
    }

    *(v2 + 16) = v9;
    v10 = v2 + v4;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    v4 += 16;
    v0 = 1;
    v3 = v9;
    v1 = 1u;
  }

  while ((v5 & 1) == 0);

  return sub_1C4499940();
}

uint64_t sub_1C4D5F898(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D5F8F0(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D5F8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a3;
  v55 = a2;
  v52 = a1;
  v3 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v44 - v4;
  v5 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_1C4EF9648();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EF9F88();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = sub_1C4EF9CD8();
  v45 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v54 = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v53 = v24 + 16;
  sub_1C4EF9F58();
  sub_1C440BAA8(v7, 1, 1, v11);
  v25 = sub_1C4EFA018();
  v26 = v46;
  sub_1C440BAA8(v46, 1, 1, v25);
  sub_1C4EF9618(v7, v26, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, -30);
  sub_1C4EF9F18();
  (*(v49 + 8))(v10, v50);
  (*(v47 + 8))(v13, v11);
  if (sub_1C44157D4(v20, 1, v21) == 1)
  {
    sub_1C4EF9CC8();
    v27 = sub_1C44157D4(v20, 1, v21);
    v28 = v45;
    if (v27 != 1)
    {
      sub_1C44686E4(v20);
    }
  }

  else
  {
    v28 = v45;
    (*(v45 + 32))(v23, v20, v21);
  }

  v29 = v55;
  v30 = *(v55 + 16);
  v31 = v48;
  (*(v28 + 16))(v48, v23, v21);
  sub_1C440BAA8(v31, 0, 1, v21);
  v32 = v51;
  sub_1C440BAA8(v51, 1, 1, v21);
  v33 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v34 = v23;
  v35 = sub_1C457A86C(v31, v32, 0, 1, 0);
  v36 = [v30 publisherWithOptions_];

  v61 = sub_1C4D6150C;
  v62 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C44405F8;
  v60 = &unk_1F440DA30;
  v37 = _Block_copy(&aBlock);

  v38 = swift_allocObject();
  v39 = v54;
  *(v38 + 16) = v29;
  *(v38 + 24) = v39;
  v61 = sub_1C4D61530;
  v62 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1C4440590;
  v60 = &unk_1F440DA80;
  v40 = _Block_copy(&aBlock);

  v41 = [v36 sinkWithCompletion:v37 receiveInput:v40];
  _Block_release(v40);
  _Block_release(v37);

  (*(v28 + 8))(v34, v21);
  swift_beginAccess();
  v42 = *(v39 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v56 = v42;
  return result;
}

void sub_1C4D5FFBC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 eventBody])
  {
    v4 = swift_beginAccess();
    MEMORY[0x1C6940330](v4);
    sub_1C4427EF0();
    sub_1C4F01748();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v6 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136315138;
      v9 = [*(a2 + 16) description];
      v10 = sub_1C4F01138();
      v12 = v11;

      v13 = sub_1C441D828(v10, v12, v15);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1C43F8000, oslog, v6, "Unable to parse event body from read event in the stream %s", v7, 0xCu);
      sub_1C440962C(v8);
      MEMORY[0x1C6942830](v8, -1, -1);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4D601D8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D60230(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D60230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(a1 + 16);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v8, a2, v14);
  sub_1C440BAA8(v8, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v30 = sub_1C4D61538;
  v31 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F440DAD0;
  v18 = _Block_copy(&aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v12;
  v30 = sub_1C4D6159C;
  v31 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C4440590;
  v29 = &unk_1F440DB20;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 sinkWithCompletion:v18 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v18);

  swift_beginAccess();
  v22 = *(v12 + 16);
  *a3 = v22;
  v23 = v22;
}

void sub_1C4D60544(void *a1, uint64_t a2, const char *a3)
{
  v5 = [a1 error];
  if (v5)
  {
    v6 = v5;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDDFECB8);

    v8 = v6;
    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = [*(a2 + 16) description];
      v12 = sub_1C4F01138();
      v14 = v13;

      v15 = sub_1C441D828(v12, v14, &v21);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = v8;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, &v21);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1C43F8000, oslog, v9, a3, v10, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}

void sub_1C4D60770(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = [*(a2 + 16) description];
      v13 = sub_1C4F01138();
      v15 = v14;

      v16 = sub_1C441D828(v13, v15, v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, oslog, v9, "BiomeLibraryUtils: Unable to parse event body from stream: %s", v10, 0xCu);
      sub_1C440962C(v11);
      MEMORY[0x1C6942830](v11, -1, -1);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4D60960(uint64_t a1)
{
  v2 = sub_1C4D601D8(a1);
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_1C4D5F898(a1);
  if (!v4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "WorkoutSignal: Could not fetch workout events", v15, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();
    v16 = sub_1C4F00F28();

    return v16;
  }

  v5 = v4;
  v6 = [v3 eventType] == 1 || objc_msgSend(v3, sel_eventType) == 3;
  v17 = sub_1C4428DA0(v5);
  v18 = 0;
  while (1)
  {
    v19 = v18;
    if (v17 == v18)
    {
LABEL_30:

      goto LABEL_31;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6940F90](v18, v5);
    }

    else
    {
      if (v18 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v20 = *(v5 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (sub_1C4412A34() == 1 || sub_1C4412A34() == 3 || sub_1C4412A34() == 4)
    {

LABEL_31:
      v23 = v17 != v19;
      sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0CE60;
      *(inited + 32) = 0x5F676E696B726F77;
      *(inited + 40) = 0xEB0000000074756FLL;
      sub_1C4577DBC();
      *(inited + 48) = sub_1C4A3B8F8(v6);
      *(inited + 56) = 0xD000000000000026;
      *(inited + 64) = 0x80000001C4FC7B50;
      *(inited + 72) = sub_1C4A3B8F8(v23);
      sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
      v25 = sub_1C4F00F28();
      v26 = sub_1C467894C(v25);

      return v26;
    }

    v22 = sub_1C4412A34();

    v18 = v19 + 1;
    if (v22 == 2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1C43FFB88(&qword_1EDDFECB0);
LABEL_6:
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDDFECB8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "WorkoutSignal: Unable to fetch most recent workout event", v10, 2u);
    sub_1C43FBE2C();
  }

  sub_1C4577DBC();

  return sub_1C4F00F28();
}

void sub_1C4D60D5C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4D60960(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4D615A4(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4D61010()
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v3 = v2 - v1;
  sub_1C4EF9C88();
  v4 = sub_1C4D60960(v3);
  v5 = sub_1C4404C28();
  v6(v5);
  return v4;
}

uint64_t sub_1C4D610C8()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4D5F75C();
  v8 = sub_1C4404C28();
  v10 = sub_1C4499AD0(v8, v9, v7);

  if (v10)
  {
    sub_1C4EF9C88();
    sub_1C4D60960(v6);
    (*(v2 + 8))(v6, v0);
    v11 = sub_1C4404C28();
    v12 = sub_1C44F9274(v11);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v16 = 136315138;
      v17 = sub_1C4404C28();
      *(v16 + 4) = sub_1C441D828(v17, v18, v19);
      _os_log_impl(&dword_1C43F8000, v14, v15, "Feature with name %s doesn't exist", v16, 0xCu);
      sub_1C440962C(v21);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v12;
}

uint64_t sub_1C4D61340()
{
  sub_1C44067F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D61394(uint64_t a1)
{
  v2 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v3 = [v2 Workout];
  swift_unknownObjectRelease();
  *(v1 + 16) = v3;
  return v1;
}

unint64_t sub_1C4D61490(uint64_t a1)
{
  result = sub_1C4D614B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D614B8()
{
  result = qword_1EC0C6A28;
  if (!qword_1EC0C6A28)
  {
    type metadata accessor for WorkoutSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6A28);
  }

  return result;
}

uint64_t sub_1C4D6155C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

_BYTE *sub_1C4D615A4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4D61780(uint64_t a1)
{
  sub_1C4EFDF28();
  sub_1C43FCDF8();
  v101 = v4;
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442DA88();
  v5 = sub_1C4EFFD78();
  sub_1C43FCDF8();
  v105 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v86 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v86 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v86 - v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v86 - v16;
  v17 = type metadata accessor for Configuration(0);
  v18 = sub_1C43FCF7C(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = (a1 + *(v23 + 28));
  v26 = *v24;
  v25 = v24[1];
  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v27 = (xmmword_1EDDFFA80 & ~v26 | *(&xmmword_1EDDFFA80 + 1) & ~v25) == 0;
  if (qword_1EDDFEBA0 != -1)
  {
    swift_once();
  }

  v100 = v1;
  if ((xmmword_1EDDFEBA8 & ~v26) == 0)
  {
    LODWORD(v97) = (*(&xmmword_1EDDFEBA8 + 1) & v25) == *(&xmmword_1EDDFEBA8 + 1);
    if (!v27)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1C4EFDF58();
    sub_1C44098F0(a1, &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v29 = swift_allocObject();
    sub_1C4409954(&v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_1C4EFDF48();
    v30 = *MEMORY[0x1E69A9B98];
    v31 = v104;
    v32 = v105;
    goto LABEL_11;
  }

  LODWORD(v97) = 0;
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_10:
  v31 = v104;
  v32 = v105;
  v30 = *MEMORY[0x1E69A9B90];
LABEL_11:
  v96 = *(v32 + 104);
  v96(v31, v30, v5);
  v33 = v102;
  v34 = sub_1C4EFDF58();
  v35 = v100;
  sub_1C4EFDF38();
  v36 = v99;
  sub_1C4EFDF18();
  v38 = v101 + 8;
  v37 = *(v101 + 8);
  v37(v35, v33);
  v101 = sub_1C4D62D28(&qword_1EDDFF9B8, MEMORY[0x1E69A9BA0], MEMORY[0x1E69A9BA8]);
  v39 = sub_1C4F010B8();
  v42 = *(v32 + 8);
  v41 = v32 + 8;
  v40 = v42;
  v43 = sub_1C4404C28();
  v42(v43);
  v98 = v42;
  if ((v39 & 1) == 0)
  {
    v93 = v37;
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDE2DCD8);
    v45 = *(v105 + 16);
    v46 = v95;
    v45(v95, v104, v5);
    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CE8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v92 = v49;
      v89 = swift_slowAlloc();
      v106[0] = v89;
      *v49 = 136315394;
      v35 = v100;
      v90 = v47;
      sub_1C4EFDF38();
      v88 = v48;
      v36 = v99;
      sub_1C4EFDF18();
      v33 = v102;
      v87 = v45;
      v37 = v93;
      v93(v35, v102);
      sub_1C4404C28();
      v50 = sub_1C4F01198();
      v52 = sub_1C441D828(v50, v51, v106);
      v91 = v41;
      v53 = v52;

      v54 = v92;
      *(v92 + 1) = v53;
      *(v54 + 6) = 2080;
      v55 = v95;
      v87(v36, v95, v5);
      sub_1C4404C28();
      v87 = sub_1C4F01198();
      v57 = v56;
      v40 = v98;
      (v98)(v55, v5);
      v58 = sub_1C441D828(v87, v57, v106);

      v59 = v92;
      *(v92 + 14) = v58;
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      v40 = v98;
      (v98)(v46, v5);
      v33 = v102;
      v36 = v99;
      v35 = v100;
      v37 = v93;
    }
  }

  v60 = MEMORY[0x1E69A9B90];
  if (v97)
  {
    v60 = MEMORY[0x1E69A9B98];
  }

  v61 = v34;
  v62 = v33;
  v63 = v103;
  v96(v103, *v60, v5);
  v100 = v61;
  sub_1C4EFDF38();
  sub_1C4EFDF08();
  v37(v35, v62);
  LOBYTE(v61) = sub_1C4F010B8();
  v64 = sub_1C4404C28();
  v40(v64);
  if (v61)
  {
    (v40)(v63, v5);
    return (v40)(v104, v5);
  }

  else
  {
    v66 = v36;
    v101 = v38;
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v67 = sub_1C4F00978();
    sub_1C442B738(v67, qword_1EDE2DCD8);
    v68 = *(v105 + 16);
    v69 = v94;
    v68(v94, v103, v5);
    v70 = sub_1C4F00968();
    LODWORD(v105) = sub_1C4F01CE8();
    if (os_log_type_enabled(v70, v105))
    {
      v71 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v106[0] = v99;
      *v71 = 136315394;
      v97 = v70;
      sub_1C4EFDF38();
      sub_1C4EFDF08();
      v37(v35, v102);
      v72 = sub_1C4F01198();
      v74 = v66;
      v75 = sub_1C441D828(v72, v73, v106);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v68(v74, v69, v5);
      v76 = sub_1C4F01198();
      v78 = v77;
      v79 = sub_1C4402E08();
      v80 = v98;
      v98(v79);
      v81 = sub_1C441D828(v76, v78, v106);

      *(v71 + 14) = v81;
      v82 = v97;
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      v80(v103, v5);
      return (v80)(v104, v5);
    }

    else
    {

      v83 = sub_1C4402E08();
      v84 = v98;
      v98(v83);
      v85 = sub_1C4404C28();
      v84(v85);
      return (v84)(v104, v5);
    }
  }
}

uint64_t sub_1C4D62120(uint64_t a1)
{
  v55 = sub_1C4EFFD18();
  sub_1C43FCDF8();
  v57 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442DA88();
  v5 = sub_1C4EFFF98();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for Configuration(0);
  v18 = sub_1C43FCF7C(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = *(a1 + *(v23 + 28));
  if (qword_1EDDFFA40 != -1)
  {
    v54 = *(a1 + *(v23 + 28));
    swift_once();
    v24 = v54;
  }

  v25 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFFA48, v24), xmmword_1EDDFFA48));
  v56 = v10;
  if (v25.i32[0] & v25.i32[1])
  {
    sub_1C44098F0(a1, &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v27 = swift_allocObject();
    sub_1C4409954(&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    sub_1C4EFFCE8();
    v28 = MEMORY[0x1E69A9C48];
  }

  else
  {
    v28 = MEMORY[0x1E69A9C40];
  }

  v29 = v16;
  (*(v7 + 104))(v16, *v28, v5);
  sub_1C4EFFD28();
  sub_1C4EFFD08();
  v30 = *(v57 + 8);
  v31 = v55;
  v57 += 8;
  v30(v1, v55);
  sub_1C4D62D28(&qword_1EDDFF9B0, MEMORY[0x1E69A9C50], MEMORY[0x1E69A9C58]);
  v32 = sub_1C4F010B8();
  v33 = *(v7 + 8);
  v34 = sub_1C4402E08();
  v33(v34);
  if (v32)
  {
    goto LABEL_12;
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2DCD8);
  v53 = *(v7 + 16);
  v53(v56, v29, v5);
  v36 = sub_1C4F00968();
  v54.i32[0] = sub_1C4F01CE8();
  if (!os_log_type_enabled(v36, v54.i8[0]))
  {

    (v33)(v56, v5);
LABEL_12:
    v48 = v29;
    return (v33)(v48, v5);
  }

  v37 = swift_slowAlloc();
  v52 = v29;
  v38 = v37;
  v51 = swift_slowAlloc();
  v58 = v51;
  *v38 = 136315394;
  sub_1C4EFFD28();
  v50 = v36;
  sub_1C4EFFD08();
  v30(v1, v31);
  sub_1C4402E08();
  v39 = sub_1C4F01198();
  v41 = sub_1C441D828(v39, v40, &v58);

  *(v38 + 4) = v41;
  *(v38 + 12) = 2080;
  v42 = v56;
  v53(v13, v56, v5);
  sub_1C4402E08();
  v43 = sub_1C4F01198();
  v45 = v44;
  (v33)(v42, v5);
  v46 = sub_1C441D828(v43, v45, &v58);

  *(v38 + 14) = v46;
  v47 = v50;
  swift_arrayDestroy();
  sub_1C43FBE2C();
  sub_1C43FBE2C();

  v48 = v52;
  return (v33)(v48, v5);
}

uint64_t sub_1C4D62674(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess(0);
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  sub_1C4D62D28(&qword_1EDDFD468, type metadata accessor for AssetRegistryRemoteBackendInProcess, &unk_1C4F0F21C);
  sub_1C4D62D28(&qword_1EDDDC220, type metadata accessor for AssetRegistryRemoteWritableBackendInProcess, &unk_1C4F0F1EC);
  return sub_1C4EFDEF8();
}

uint64_t sub_1C4D6285C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess(0);
  sub_1C456902C(&qword_1EC0B94F8, &unk_1C4F0F260);
  sub_1C4D62D28(&qword_1EDDFD468, type metadata accessor for AssetRegistryRemoteBackendInProcess, &unk_1C4F0F21C);
  sub_1C4D62E34();
  return sub_1C4EFDEF8();
}

uint64_t sub_1C4D629E8(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  sub_1C4D62D28(&qword_1EDDFD418, type metadata accessor for InferenceSupportRemoteBackendInProcess, &unk_1C4F3AB98);
  return sub_1C4EFFCF8();
}

char *sub_1C4D62B9C()
{
  v0 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v0);
  sub_1C4420A78(*(v1 + 80));
  return sub_1C4933370();
}

uint64_t sub_1C4D62C24(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v1);
  v3 = sub_1C4420A78(*(v2 + 80));

  return a1(v3);
}

uint64_t *sub_1C4D62CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v2);
  v4 = sub_1C4420A78(*(v3 + 80));
  return sub_1C45A4868(v4, a1);
}

uint64_t sub_1C4D62D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D62D70()
{
  v1 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1C4EF98F8();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

unint64_t sub_1C4D62E34()
{
  result = qword_1EDDFCC78;
  if (!qword_1EDDFCC78)
  {
    sub_1C4572308(&qword_1EC0B94F8, &unk_1C4F0F260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCC78);
  }

  return result;
}

void sub_1C4D62E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v137 = v25;
  v27 = v26;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v131 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v129 = v29;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v132 = v31;
  v133 = v30;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v128 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v130 = v34;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v135 = v36;
  v136 = v35;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v134 = v37;
  sub_1C43FBE44();
  v142 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v125 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C440D100();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v126 = v44;
  v127 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v122 = v46;
  v47 = sub_1C43FBE44();
  v48 = type metadata accessor for BMAppleMusicEventStructs.Event(v47);
  v49 = v48[5];
  v50 = sub_1C4EFEEF8();
  v124 = v49;
  sub_1C43FCF64();
  sub_1C440BAA8(v51, v52, v53, v50);
  v54 = v48[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v55 = (v27 + v48[7]);
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v56 = type metadata accessor for Source(0);
  sub_1C442B738(v56, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v57, v55, v58);
  v121 = v48[8];
  sub_1C4EFECC8();
  v59 = (v27 + v48[9]);
  *v59 = 0;
  v59[1] = 0;
  type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v60, v61, v62, v63);
  type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v68 = sub_1C4F00978();
  sub_1C442B738(v68, qword_1EDE2DE10);
  v120 = *(v39 + 16);
  v120(v20, v27 + v54, v142);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = sub_1C4F00968();
  v70 = sub_1C4F01CB8();

  v138 = v27;
  v139 = v54;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v118 = v55;
    v140 = swift_slowAlloc();
    *v71 = 136381187;
    v72 = v39;
    v73 = v137;
    *(v71 + 4) = sub_1C441D828(v137, v24, &v140);
    *(v71 + 12) = 2080;
    sub_1C4420A88();
    sub_1C44CD310(v74, v75, MEMORY[0x1E69A92F8]);
    v117 = v70;
    v76 = v50;
    v77 = sub_1C4F02858();
    v79 = v78;
    v119 = *(v72 + 8);
    v119(v20, v142);
    v80 = sub_1C441D828(v77, v79, &v140);
    v50 = v76;

    *(v71 + 14) = v80;
    *(v71 + 22) = 1024;
    *(v71 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v69, v117, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v71, 0x1Cu);
    swift_arrayDestroy();
    v55 = v118;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v119 = *(v39 + 8);
    v119(v20, v142);
    v73 = v137;
  }

  v81 = *v55;
  v82 = v55[1];
  v140 = v73;
  v141 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v81, v82);

  v83 = v140;
  v84 = v141;
  sub_1C4F01178();
  sub_1C4F01148();
  v86 = v85;
  (*(v135 + 8))(v134, v136);
  if (v86 >> 60 == 15)
  {
    v87 = v55;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v88 = sub_1C4F00968();
    v89 = sub_1C4F01CD8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v140 = v91;
      *v90 = 136380675;
      v92 = sub_1C441D828(v83, v84, &v140);

      *(v90 + 4) = v92;
      sub_1C4403218(&dword_1C43F8000, v93, v94, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v91);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v108 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v108);
    *v109 = 5;
    swift_willThrow();
    sub_1C4420C3C(v138 + v124, &qword_1EC0B9A08, &unk_1C4F107B0);
    v119(v138 + v139, v142);
    sub_1C4411564();
    sub_1C4D6D038(v87, v110);
    (*(*(v50 - 8) + 8))(v138 + v121, v50);
    v111 = sub_1C4429108(&a15);
    sub_1C4420C3C(v111, v112, v113);
    v114 = sub_1C4429108(&a14);
    sub_1C4420C3C(v114, v115, v116);
  }

  else
  {

    sub_1C4435D68();
    sub_1C44CD310(v95, v96, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v97 = sub_1C440DE18();
    sub_1C44344B8(v97, v98);
    v99 = sub_1C440DE18();
    sub_1C4498FD8(v99, v100, v129);
    v101 = sub_1C440DE18();
    sub_1C441DFEC(v101, v102);
    sub_1C4F00DA8();
    v103 = sub_1C4416968();
    v104(v103, v131);
    v120(v125, v138 + v139, v142);
    (*(v132 + 16))(v128, v130, v133);
    sub_1C4EFF028();
    v105 = sub_1C440DE18();
    sub_1C441DFEC(v105, v106);
    (*(v132 + 8))(v130, v133);
    v107 = *(v126 + 32);
    v107(v122, v123, v127);
    v107(v138, v122, v127);
  }

  sub_1C43FBC80();
}

void sub_1C4D637D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v148 = v24;
  v26 = v25;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v140 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v138 = v28;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v141 = v30;
  v142 = v29;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v137 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v139 = v33;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v144 = v35;
  v145 = v34;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  v143 = v36;
  sub_1C43FBE44();
  a10 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  v134 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v43 = v42;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v135 = v45;
  v136 = v44;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  v131 = v47;
  v48 = sub_1C43FBE44();
  v49 = type metadata accessor for BMAppleMusicEventStructs.Song(v48);
  v50 = v49[5];
  v51 = sub_1C4EFEEF8();
  v133 = v50;
  sub_1C43FCF64();
  sub_1C440BAA8(v52, v53, v54, v51);
  v55 = v49[6];
  sub_1C4EFD3E8();
  v56 = (v26 + v49[7]);
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v57 = type metadata accessor for Source(0);
  sub_1C442B738(v57, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v58, v56, v59);
  sub_1C442AA98(v49[8]);
  sub_1C4EFEBF8();
  sub_1C4401738(v49[9]);
  sub_1C442AA98(v49[10]);
  sub_1C4EFEC48();
  sub_1C4401738(v49[11]);
  sub_1C442AA98(v49[12]);
  sub_1C4EFE298();
  sub_1C4401738(v49[13]);
  sub_1C442AA98(v49[14]);
  sub_1C4EFE768();
  sub_1C4401738(v49[15]);
  sub_1C442AA98(v49[16]);
  sub_1C4EFE718();
  sub_1C4401738(v49[17]);
  sub_1C442AA98(v49[18]);
  sub_1C4EFEE28();
  sub_1C4401738(v49[19]);
  type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v60, v61, v62, v63);
  type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v67);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v68 = sub_1C4F00978();
  sub_1C442B738(v68, qword_1EDE2DE10);
  v147 = v55;
  v69 = v43;
  v130 = *(v38 + 16);
  v130(v43, v26 + v55, a10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v70 = sub_1C4F00968();
  v71 = sub_1C4F01CB8();

  v146 = v56;
  if (os_log_type_enabled(v70, v71))
  {
    v72 = v38;
    v73 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v73 = 136381187;
    *(v73 + 4) = sub_1C441D828(v148, v23, &v149);
    *(v73 + 12) = 2080;
    sub_1C4420A88();
    sub_1C44CD310(v74, v75, MEMORY[0x1E69A92F8]);
    v128 = v71;
    v129 = v23;
    v76 = a10;
    v77 = sub_1C4F02858();
    v78 = v76;
    v79 = v51;
    v81 = v80;
    v82 = v72;
    v56 = v146;
    v83 = *(v82 + 8);
    v83(v69, v78);
    v84 = sub_1C441D828(v77, v81, &v149);
    v51 = v79;
    v23 = v129;

    *(v73 + 14) = v84;
    v85 = v148;
    *(v73 + 22) = 1024;
    *(v73 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v70, v128, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v73, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v83 = *(v38 + 8);
    v83(v69, a10);
    v85 = v148;
  }

  v86 = *v56;
  v87 = v56[1];
  v149 = v85;
  v150 = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v86, v87);

  v89 = v149;
  v88 = v150;
  sub_1C4F01178();
  sub_1C4F01148();
  v91 = v90;
  (*(v144 + 8))(v143, v145);
  if (v91 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v92 = sub_1C4F00968();
    v93 = sub_1C4F01CD8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v149 = v95;
      *v94 = 136380675;
      v96 = sub_1C441D828(v89, v88, &v149);

      *(v94 + 4) = v96;
      sub_1C4403218(&dword_1C43F8000, v97, v98, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v95);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v112 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v112);
    *v113 = 5;
    swift_willThrow();
    sub_1C4420C3C(v26 + v133, &qword_1EC0B9A08, &unk_1C4F107B0);
    v83(v26 + v147, a10);
    sub_1C4411564();
    sub_1C4D6D038(v146, v114);
    v115 = *(*(v51 - 8) + 8);
    v116 = sub_1C4401918(&a16);
    v115(v116);
    v117 = sub_1C4401918(&a15);
    v115(v117);
    v118 = sub_1C4401918(&a14);
    v115(v118);
    v119 = sub_1C4401918(&a13);
    v115(v119);
    v120 = sub_1C4401918(&a12);
    v115(v120);
    v121 = sub_1C4401918(&a11);
    v115(v121);
    v122 = sub_1C4429108(&a10);
    sub_1C4420C3C(v122, v123, v124);
    v125 = sub_1C4429108(&a9);
    sub_1C4420C3C(v125, v126, v127);
  }

  else
  {

    sub_1C4435D68();
    sub_1C44CD310(v99, v100, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v101 = sub_1C43FD018();
    sub_1C44344B8(v101, v102);
    v103 = sub_1C43FD018();
    sub_1C4498FD8(v103, v104, v138);
    v105 = sub_1C43FD018();
    sub_1C441DFEC(v105, v106);
    sub_1C4F00DA8();
    v107 = sub_1C4416968();
    v108(v107, v140);
    v130(v134, v26 + v147, a10);
    (*(v141 + 16))(v137, v139, v142);
    sub_1C4EFF028();
    v109 = sub_1C43FD018();
    sub_1C441DFEC(v109, v110);
    (*(v141 + 8))(v139, v142);
    v111 = *(v135 + 32);
    v111(v131, v132, v136);
    v111(v26, v131, v136);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D641D0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for BMAppleMusicEventStructs.Song(v4);
  sub_1C441E0D8(v5, v6, &qword_1EC0BA6B8, &unk_1C4F70150);
  v7 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  if (sub_1C446250C(v7))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BA6B8, &unk_1C4F70150);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C440CBF4(v9);
  return sub_1C445BAB4(v10, v11, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D642C0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for BMAppleMusicEventStructs.Song(v4);
  sub_1C441E0D8(v5, v6, &qword_1EC0BA6B0, &unk_1C4F145F0);
  v7 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  if (sub_1C446250C(v7))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6B0, &unk_1C4F145F0);
  }

  sub_1C4EFED58();
  sub_1C4420C3C(a1, &qword_1EC0BA6B0, &unk_1C4F145F0);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C440CBF4(v9);
  return sub_1C445BAB4(v10, v11, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D643B0(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = v2 + *(type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v6) + 28);
  sub_1C44D7768(a1, v7, &qword_1EC0BA6A8, &qword_1C4F145E8);
  v8 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  if (sub_1C44157D4(v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6A8, &qword_1C4F145E8);
  }

  sub_1C4EFE6D8();
  sub_1C4420C3C(a1, &qword_1EC0BA6A8, &qword_1C4F145E8);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v7 + *(v8 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D644D0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for BMAppleMusicEventStructs.Event(v4);
  sub_1C441E0D8(v5, v6, &qword_1EC0BA6A0, &qword_1C4F145E0);
  v7 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  if (sub_1C446250C(v7))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  sub_1C4EFED08();
  sub_1C4420C3C(a1, &qword_1EC0BA6A0, &qword_1C4F145E0);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C440CBF4(v9);
  return sub_1C445BAB4(v10, v11, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D645C0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for BMAppleMusicEventStructs.Event(v4);
  sub_1C441E0D8(v5, v6, &qword_1EC0BA698, &qword_1C4F145D8);
  v7 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  if (sub_1C446250C(v7))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA698, &qword_1C4F145D8);
  }

  sub_1C4EFECF8();
  sub_1C4420C3C(a1, &qword_1EC0BA698, &qword_1C4F145D8);
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C440CBF4(v9);
  return sub_1C445BAB4(v10, v11, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D646B0()
{
  sub_1C43FE628();
  v5 = v4;
  v94 = v6;
  v8 = v7;
  v9 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v92 = v11;
  v12 = sub_1C43FBE44();
  v13 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v90 = v15;
  v16 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C43FECFC();
  v91 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v18);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v87 = v20;
  v21 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v21);
  sub_1C43FCDF8();
  v89 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v88 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440D100();
  v93 = *v5;
  v25 = v0;
  v95 = MEMORY[0x1E69E7CC0];
  v26 = type metadata accessor for BMAppleMusicEventStructs.Event(0);
  v27 = (v25 + v26[9]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v86 = v13;
      sub_1C445AC50();
      sub_1C43FCE50();
      (*(v31 + 16))(v3, v25);
      v32 = v26[8];
      v33 = v89[5];
      sub_1C4EFEEF8();
      sub_1C43FCE50();
      (*(v34 + 16))(v3 + v33, v25 + v32);
      sub_1C441AB98();
      sub_1C448D2B4(v25 + v35, v3 + v36, v37);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v39 = v38;
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v40 = (v3 + v89[8]);
      *v40 = v85;
      v40[1] = v28;
      v41 = (v3 + v89[10]);
      *v41 = v8;
      v41[1] = v94;
      *(v3 + v89[11]) = v39;
      *(v3 + v89[12]) = v93;
      v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v42, v43, v44, MEMORY[0x1E69E7CC0]);
      v46 = v45;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        v75 = sub_1C43FCFE8(v47);
        sub_1C44C9240(v75, v48 + 1, 1, v46);
        v46 = v76;
      }

      *(v46 + 16) = v48 + 1;
      sub_1C43FBF6C();
      sub_1C440835C();
      sub_1C44DD858(v3, v49, v50);
      v95 = v46;
      v13 = v86;
    }
  }

  sub_1C445FFA8(v25 + v26[10], v2, &qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C440175C(v2, 1, v91);
  if (v51)
  {
    sub_1C4420C3C(v2, &qword_1EC0BA698, &qword_1C4F145D8);
  }

  else
  {
    sub_1C44DD858(v2, v87, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
    sub_1C43FE664();
    sub_1C4D64D58();
    if (v1)
    {
      sub_1C440941C();
      sub_1C4D6D038(v87, v53);
LABEL_19:

      goto LABEL_27;
    }

    sub_1C49D3614(v52);
    sub_1C440941C();
    sub_1C4D6D038(v87, v54);
  }

  sub_1C445FFA8(v25 + v26[11], v92, &qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C440175C(v92, 1, v13);
  if (v51)
  {
    v55 = v8;
    sub_1C4420C3C(v92, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  else
  {
    sub_1C44DD858(v92, v90, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
    sub_1C43FE664();
    sub_1C4D6AE90();
    if (v1)
    {
      sub_1C442E76C();
      sub_1C4D6D038(v90, v57);
      goto LABEL_19;
    }

    v55 = v8;
    sub_1C49D3614(v56);
    sub_1C442E76C();
    sub_1C4D6D038(v90, v58);
  }

  v59 = v95;
  if (*(v95 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v60 + 16))(v88, v25);
    sub_1C4EFEBB8();
    v61 = sub_1C4EFD2F8();
    v63 = v62;
    sub_1C441AB98();
    sub_1C448D2B4(v25 + v64, v88 + v65, v66);
    sub_1C4EF9AE8();
    v68 = v67;
    sub_1C4EFF888();
    sub_1C4EFEC38();
    v69 = (v88 + v89[8]);
    *v69 = v61;
    v69[1] = v63;
    v70 = (v88 + v89[10]);
    *v70 = v55;
    v70[1] = v94;
    *(v88 + v89[11]) = v68;
    *(v88 + v89[12]) = v93;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_1C43FCEC0();
      sub_1C44C9240(v77, v78, v79, v95);
      v59 = v80;
    }

    sub_1C440F0B4();
    if (v72)
    {
      v81 = sub_1C43FFD98(v71);
      sub_1C44C9240(v81, v82, v83, v59);
      v59 = v84;
    }

    *(v59 + 16) = v61;
    sub_1C43FBF6C();
    sub_1C440835C();
    sub_1C44DD858(v88, v73, v74);
  }

LABEL_27:
  sub_1C4403810();
  sub_1C44109F8();
}

void sub_1C4D64D58()
{
  sub_1C43FE96C();
  v5 = v4;
  v175 = v6;
  v169 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v168 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v166 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v165 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v164 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v163 = v16;
  sub_1C43FBE44();
  v174 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v171 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v167 = v19;
  sub_1C43FBE44();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v177 = v21;
  v178 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v22 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4413644();
  v24 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v170 = *v5;
  v28 = v0;
  sub_1C445FFA8(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v24);
  if (v29)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    v30 = sub_1C45CF650();
    v31 = sub_1C43FFB2C(&type metadata for MappingError, v30);
    sub_1C4414040(v31, v32);
  }

  else
  {
    v176 = v26;
    (*(v26 + 32))(v3, v2, v24);
    v33 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    v34 = v28;
    v35 = v28 + v33[5];
    v36 = v167;
    (*(v171 + 16))(v167, v35, v174);
    sub_1C4EFF838();
    v179 = v33;
    v37 = (v34 + v33[8]);
    v38 = v37[1];
    v173 = v1;
    v172 = v3;
    if (!v38)
    {
      goto LABEL_11;
    }

    v39 = *v37;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      sub_1C445AC50();
      sub_1C43FCE50();
      v41 = sub_1C443E050();
      v42(v41);
      v43 = *(v176 + 16);
      (v43)(v163 + v169[5], v3, v24);
      v44 = sub_1C4401940(v169[6]);
      v45(v44, v1);
      sub_1C447CE84();
      v43();
      sub_1C441AB98();
      sub_1C448D2B4(v34 + v46, v163 + v47, v48);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v49 = (v163 + v169[8]);
      *v49 = v167;
      v49[1] = v38;
      sub_1C441695C((v163 + v169[10]));
      *(v163 + v169[11]) = v50;
      v51 = v170;
      *(v163 + v169[12]) = v170;
      v52 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v52, v53, v54, MEMORY[0x1E69E7CC0]);
      v56 = v55;
      v36 = *(v55 + 16);
      v57 = *(v55 + 24);
      if (v36 >= v57 >> 1)
      {
        v135 = sub_1C4413F5C(v57);
        sub_1C44C9240(v135, v136, v137, v56);
        v56 = v138;
      }

      *(v56 + 16) = v36 + 1;
      sub_1C4426314();
      sub_1C440835C();
      sub_1C44DD858(v163, v58, v59);
      v60 = v176;
    }

    else
    {
LABEL_11:
      v56 = MEMORY[0x1E69E7CC0];
      v60 = v176;
      v51 = v170;
    }

    v61 = *(v34 + v33[10] + 8);
    if (v61)
    {
      sub_1C43FF988();
      if (v62)
      {
        sub_1C445AC50();
        sub_1C43FCE50();
        v36 = v164;
        v63 = sub_1C443E050();
        v64(v63);
        v65 = *(v60 + 16);
        (v65)(v164 + v169[5], v172, v24);
        sub_1C442A554();
        v67(v164 + v66, v173);
        sub_1C447CE84();
        v65();
        sub_1C441AB98();
        sub_1C448D2B4(v34 + v68, v164 + v69, v70);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v71 = (v164 + v169[8]);
        *v71 = v167;
        v71[1] = v61;
        sub_1C441B1E0((v164 + v169[10]));
        *(v164 + v72) = v73;
        *(v164 + v169[12]) = v51;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1C43FCEC0();
          sub_1C44C9240(v139, v140, v141, v56);
          v56 = v142;
        }

        sub_1C4414030();
        v60 = v176;
        if (v75)
        {
          v143 = sub_1C43FFD98(v74);
          sub_1C44C9240(v143, v144, v145, v56);
          v56 = v146;
        }

        *(v56 + 16) = v61;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v164, v76, v77);
      }
    }

    v78 = *(v34 + v179[12] + 8);
    if (v78)
    {
      sub_1C43FF988();
      if (v79)
      {
        sub_1C445AC50();
        sub_1C43FCE50();
        (*(v80 + 16))(v165, v175);
        v81 = *(v60 + 16);
        v36 = v51;
        (v81)(v165 + v169[5], v172, v24);
        sub_1C442A554();
        v83(v165 + v82, v173);
        sub_1C447CE84();
        v81();
        sub_1C441AB98();
        sub_1C448D2B4(v34 + v84, v165 + v85, v86);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v87 = (v165 + v169[8]);
        *v87 = v167;
        v87[1] = v78;
        sub_1C441B1E0((v165 + v169[10]));
        *(v165 + v88) = v89;
        *(v165 + v169[12]) = v51;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_1C43FCEC0();
          sub_1C44C9240(v147, v148, v149, v56);
          v56 = v150;
        }

        sub_1C4414030();
        v60 = v176;
        if (v75)
        {
          v151 = sub_1C43FFD98(v90);
          sub_1C44C9240(v151, v152, v153, v56);
          v56 = v154;
        }

        *(v56 + 16) = v78;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v165, v91, v92);
      }
    }

    v93 = *(v34 + v179[14] + 8);
    if (v93)
    {
      sub_1C44026DC();
      if (v94)
      {
        sub_1C4EFF0C8();
        sub_1C43FCE50();
        (*(v95 + 16))(v166, v175);
        v96 = *(v60 + 16);
        (v96)(v166 + v169[5], v172, v24);
        sub_1C442A554();
        v98(v166 + v97, v173);
        sub_1C447CE84();
        v96();
        sub_1C441AB98();
        sub_1C448D2B4(v34 + v99, v166 + v100, v101);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v102 = (v166 + v169[8]);
        *v102 = v36;
        v102[1] = v93;
        sub_1C441B1E0((v166 + v169[10]));
        *(v166 + v103) = v104;
        *(v166 + v169[12]) = v170;
        LOBYTE(v51) = v170;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_1C43FCEC0();
          sub_1C44C9240(v155, v156, v157, v56);
          v56 = v158;
        }

        sub_1C4414030();
        v60 = v176;
        if (v75)
        {
          v159 = sub_1C43FFD98(v105);
          sub_1C44C9240(v159, v160, v161, v56);
          v56 = v162;
        }

        *(v56 + 16) = v93;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v166, v106, v107);
      }
    }

    if (*(v56 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v108 = sub_1C443E050();
      v109(v108);
      v110 = sub_1C4401940(v169[5]);
      v111(v110, v172, v24);
      sub_1C442A554();
      v113(v168 + v112, v173);
      sub_1C4EFEBB8();
      v114 = sub_1C4EFD2F8();
      v116 = v115;
      sub_1C441AB98();
      sub_1C448D2B4(v34 + v117, v168 + v118, v119);
      sub_1C4EF9AE8();
      v120 = (v168 + v169[8]);
      *v120 = v114;
      v120[1] = v116;
      sub_1C441B1E0((v168 + v169[10]));
      *(v168 + v121) = v122;
      *(v168 + v169[12]) = v51;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_1C43FCEC0();
        sub_1C44C9240(v127, v128, v129, v56);
        v56 = v130;
      }

      v124 = *(v56 + 16);
      v123 = *(v56 + 24);
      if (v124 >= v123 >> 1)
      {
        v131 = sub_1C43FFD98(v123);
        sub_1C44C9240(v131, v132, v133, v56);
        v56 = v134;
      }

      (*(v177 + 8))(v173, v178);
      (*(v176 + 8))(v172, v24);
      *(v56 + 16) = v124 + 1;
      sub_1C4426314();
      sub_1C440835C();
      sub_1C44DD858(v168, v125, v126);
    }

    else
    {
      (*(v177 + 8))(v173, v178);
      (*(v60 + 8))(v172, v24);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6580C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C4FC7CA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C4FC7CC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7CE0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC7D00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x80000001C4FC7D20 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x4564657475706D69 && a2 == 0xEE00656D6954646ELL)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4D65B70(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x656D6954646E65;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x4564657475706D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D65CD4()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C6BA0, &qword_1C4F704E8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DE28();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v3, v4, MEMORY[0x1E69A9750]);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v12 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v5, v6, MEMORY[0x1E69A92D0]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v7 = sub_1C4401FFC();
    type metadata accessor for Source(v7);
    sub_1C44014A4();
    sub_1C44CD310(v8, v9, &protocol conformance descriptor for Source);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v12[8]));
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v12[10]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v12[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v12[14]);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v10 = sub_1C440231C();
  v11(v10);
  sub_1C43FBC80();
}

void sub_1C4D66008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v71 = v27;
  v28 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v74 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v75 = v34;
  v35 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v35);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  v76 = v37;
  v78 = sub_1C456902C(&qword_1EC0C6B90, &qword_1C4F704E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBC74();
  v39 = sub_1C43FBE44();
  v40 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v39);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C43FCF64();
  v77 = v28;
  sub_1C440BAA8(v42, v43, v44, v28);
  sub_1C4EFD168();
  v45 = v40[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v46 = type metadata accessor for Source(0);
  sub_1C442B738(v46, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v47, v24 + v45, v48);
  v73 = v40[7];
  sub_1C4EFEEE8();
  v49 = (v24 + v40[8]);
  *v49 = 0;
  v49[1] = 0;
  v72 = v40[9];
  sub_1C4EFECE8();
  v50 = (v24 + v40[10]);
  *v50 = 0;
  v50[1] = 0;
  v51 = v40[11];
  sub_1C4EFE7B8();
  v52 = (v24 + v40[12]);
  *v52 = 0;
  v52[1] = 0;
  v53 = v40[13];
  sub_1C4EFE668();
  v54 = (v24 + v40[14]);
  *v54 = 0;
  v54[1] = 0;
  sub_1C4409678(v26, v26[3]);
  sub_1C4D6DE28();
  sub_1C4F02BC8();
  if (!v23)
  {
    v79 = v49;
    sub_1C442DAA4();
    sub_1C44CD310(v55, v56, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v76, v24, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v57 = *(v74 + 40);
    v57(v24 + v73, v75, v77);
    sub_1C4428F20();
    v58 = sub_1C4F02618();
    sub_1C44147E8(v58, v60, v79);
    sub_1C4423DB4();
    sub_1C4F026C8();
    v61 = sub_1C4401928(v72);
    (v57)(v61);
    sub_1C440CE58();
    sub_1C4424818();
    *v50 = sub_1C4F02618();
    v50[1] = v62;
    sub_1C4423DB4();
    sub_1C4424818();
    sub_1C4F026C8();
    v63 = sub_1C4401928(v51);
    (v57)(v63);
    sub_1C4424818();
    *v52 = sub_1C4F02618();
    v52[1] = v64;
    sub_1C4423DB4();
    sub_1C4424818();
    sub_1C4F026C8();
    v65 = sub_1C4401928(v53);
    (v57)(v65);
    sub_1C4424818();
    v66 = sub_1C4F02618();
    v68 = v67;
    v69 = sub_1C43FE5EC();
    v70(v69, v78);
    *v54 = v66;
    v54[1] = v68;
    sub_1C448D2B4(v24, v71, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
  }

  sub_1C440962C(v26);
  sub_1C440941C();
  sub_1C4D6D038(v24, v59);
  sub_1C43FBC80();
}

uint64_t sub_1C4D665EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6580C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D66614(uint64_t a1)
{
  v2 = sub_1C4D6DE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D66650(uint64_t a1)
{
  v2 = sub_1C4D6DE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D666D4()
{
  sub_1C43FE96C();
  v3 = v0;
  v99 = v4;
  v100 = v5;
  v95 = v6;
  v98 = v7;
  v97 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v93 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v90 = v11;
  sub_1C43FBE44();
  v91 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v103 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v102 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v20);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4413644();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v94 = *v100;
  v29 = v28;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v29);
  if (v30)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v31 = sub_1C45CF650();
    v32 = sub_1C43FFB2C(&type metadata for MappingError, v31);
    sub_1C4414040(v32, v33);
    goto LABEL_21;
  }

  v96 = v27;
  v101 = v29;
  (*(v23 + 32))(v27, v1, v29);
  v34 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  (*(v13 + 16))(v2, v3 + *(v34 + 20), v91);
  sub_1C4EFF838();
  v92 = v34;
  v35 = (v3 + *(v34 + 32));
  v36 = v35[1];
  v37 = v19;
  if (v36)
  {
    v89 = v19;
    v38 = *v35;
    v39 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v39 = v38 & 0xFFFFFFFFFFFFLL;
    }

    v40 = v103;
    if (v39)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v41 + 16))(v90, v95);
      v42 = *(v23 + 16);
      v42(v90 + v97[5], v96, v101);
      sub_1C443F008();
      v44(v90 + v43, v89, v103);
      v42(v90 + v97[7], v3 + *(v92 + 28), v101);
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v45, v90 + v46, v47);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v48 = (v90 + v97[8]);
      *v48 = v38;
      v48[1] = v36;
      v49 = (v90 + v97[10]);
      *v49 = v98;
      v49[1] = v99;
      *(v90 + v97[11]) = v50;
      *(v90 + v97[12]) = v94;
      v51 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v51, v52, v53, MEMORY[0x1E69E7CC0]);
      v55 = v54;
      v57 = *(v54 + 16);
      v56 = *(v54 + 24);
      if (v57 >= v56 >> 1)
      {
        v87 = sub_1C43FCFE8(v56);
        sub_1C44C9240(v87, v57 + 1, 1, v55);
        v55 = v88;
      }

      *(v55 + 16) = v57 + 1;
      v58 = v93;
      sub_1C440835C();
      sub_1C44DD858(v90, v59, v60);
      v37 = v89;
      v61 = v96;
      v40 = v103;
      goto LABEL_14;
    }

    v55 = MEMORY[0x1E69E7CC0];
    v58 = v93;
    v37 = v89;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
    v58 = v93;
    v40 = v103;
  }

  v61 = v96;
LABEL_14:
  if (*(v55 + 16))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    (*(v62 + 16))(v58, v95);
    (*(v23 + 16))(v58 + v97[5], v61, v101);
    sub_1C443F008();
    v64(v58 + v63, v37, v40);
    sub_1C4EFEBB8();
    v65 = sub_1C4EFD2F8();
    v67 = v66;
    sub_1C441AB98();
    sub_1C44BBD20(v68, v69);
    sub_1C4EF9AE8();
    v70 = (v58 + v97[8]);
    *v70 = v65;
    v70[1] = v67;
    v71 = (v58 + v97[10]);
    *v71 = v98;
    v71[1] = v99;
    *(v58 + v97[11]) = v72;
    *(v58 + v97[12]) = v94;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1C43FCEC0();
      sub_1C44C9240(v79, v80, v81, v55);
      v55 = v82;
    }

    sub_1C440F0B4();
    if (v74)
    {
      v83 = sub_1C43FFD98(v73);
      sub_1C44C9240(v83, v84, v85, v55);
      v55 = v86;
    }

    v75 = sub_1C43FEBB4();
    v76(v75);
    (*(v23 + 8))(v96, v101);
    *(v55 + 16) = v65;
    sub_1C440835C();
    sub_1C44DD858(v58, v77, v78);
  }

  else
  {
    (*(v102 + 8))(v37, v40);
    (*(v23 + 8))(v61, v101);
  }

LABEL_21:
  sub_1C43FBC80();
}

uint64_t sub_1C4D66D84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C4FC7BE0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D66F34(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x797469746E617571;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D66FDC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6B58, &qword_1C4F704B8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DD2C();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v3, v4, MEMORY[0x1E69A9750]);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v12 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v5, v6, MEMORY[0x1E69A92D0]);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v7 = sub_1C4401FFC();
    type metadata accessor for Source(v7);
    sub_1C44014A4();
    sub_1C44CD310(v8, v9, &protocol conformance descriptor for Source);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + *(v12 + 32)));
    sub_1C4F02738();
  }

  v10 = sub_1C440231C();
  v11(v10);
  sub_1C43FBC80();
}

void sub_1C4D671E8()
{
  sub_1C43FE96C();
  v3 = v2;
  v36 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v37 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v38 = v8;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  v39 = v11;
  sub_1C456902C(&qword_1EC0C6B48, &qword_1C4F704B0);
  sub_1C43FCDF8();
  v40 = v12;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C43FECFC();
  v15 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v17, v18, v19, v5);
  sub_1C4EFD208();
  v20 = v15[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v21 = type metadata accessor for Source(0);
  sub_1C442B738(v21, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v22, v1 + v20, v23);
  v24 = v15[7];
  sub_1C4EFEE08();
  v25 = (v1 + v15[8]);
  *v25 = 0;
  v25[1] = 0;
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DD2C();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DAA4();
    sub_1C44CD310(v26, v27, MEMORY[0x1E69A9778]);
    sub_1C43FE6CC();
    sub_1C43FE664();
    sub_1C4F02658();
    sub_1C444088C(v39, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    (*(v37 + 40))(v1 + v24, v38, v5);
    sub_1C4428F20();
    sub_1C43FE664();
    v29 = sub_1C4F02618();
    v31 = v30;
    v32 = sub_1C4416968();
    v33(v32, v40);
    *v25 = v29;
    v25[1] = v31;
    v34 = sub_1C442A548();
    sub_1C448D2B4(v34, v36, v35);
  }

  sub_1C440962C(v3);
  sub_1C4406354();
  sub_1C4D6D038(v1, v28);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D67578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D66D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D675A0(uint64_t a1)
{
  v2 = sub_1C4D6DD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D675DC(uint64_t a1)
{
  v2 = sub_1C4D6DD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D67660()
{
  sub_1C43FE96C();
  v3 = v0;
  v126 = v4;
  v124 = v5;
  v125 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v120 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v119 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v118 = v11;
  sub_1C43FBE44();
  v122 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v128 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v19);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C44058BC();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v127 = *v126;
  v28 = v27;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v28);
  if (v29)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    v30 = sub_1C45CF650();
    v31 = sub_1C43FFB2C(&type metadata for MappingError, v30);
    sub_1C4414040(v31, v32);
  }

  else
  {
    (*(v22 + 32))(v26, v1, v28);
    v33 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
    (*(v13 + 16))(v2, v3 + *(v33 + 20), v122);
    sub_1C4EFF838();
    v121 = v3;
    v123 = v33;
    v34 = (v3 + *(v33 + 32));
    v35 = v34[1];
    v36 = v18;
    v117 = v18;
    v37 = v22;
    if (!v35)
    {
      goto LABEL_11;
    }

    v38 = *v34;
    v39 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v39 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v40 + 16))(v118, v124);
      v41 = *(v22 + 16);
      v41(v118 + v125[5], v26, v28);
      sub_1C443F008();
      v43(v118 + v42, v36, v128);
      v41(v118 + v125[7], v3 + v123[7], v28);
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v44, v118 + v45, v46);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v47 = (v118 + v125[8]);
      *v47 = v38;
      v47[1] = v35;
      sub_1C441695C((v118 + v125[10]));
      *(v118 + v125[11]) = v48;
      *(v118 + v125[12]) = v127;
      v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v49, v50, v51, MEMORY[0x1E69E7CC0]);
      v53 = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        v105 = sub_1C4413F5C(v54);
        sub_1C44C9240(v105, v106, v107, v53);
        v53 = v108;
      }

      *(v53 + 16) = v55 + 1;
      sub_1C43FBF6C();
      sub_1C440835C();
      sub_1C44DD858(v118, v56, v57);
      v36 = v117;
    }

    else
    {
LABEL_11:
      v53 = MEMORY[0x1E69E7CC0];
    }

    v58 = (v3 + v123[10]);
    v59 = v58[1];
    if (!v59)
    {
      goto LABEL_21;
    }

    v60 = *v58;
    v61 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v61 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v62 = sub_1C443E050();
      v63(v62);
      v64 = *(v37 + 16);
      v64(v119 + v125[5]);
      v65 = sub_1C4401940(v125[6]);
      v66(v65, v36, v128);
      (v64)(v119 + v125[7], v121 + v123[9], v28);
      v3 = v121;
      sub_1C441AB98();
      sub_1C448D2B4(v121 + v67, v119 + v68, v69);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v70 = (v119 + v125[8]);
      *v70 = v60;
      v70[1] = v59;
      sub_1C441695C((v119 + v125[10]));
      *(v119 + v125[11]) = v71;
      *(v119 + v125[12]) = v127;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_1C43FCEC0();
        sub_1C44C9240(v109, v110, v111, v53);
        v53 = v112;
      }

      v73 = *(v53 + 16);
      v72 = *(v53 + 24);
      v74 = v120;
      if (v73 >= v72 >> 1)
      {
        v113 = sub_1C4413F5C(v72);
        sub_1C44C9240(v113, v114, v115, v53);
        v53 = v116;
      }

      *(v53 + 16) = v73 + 1;
      sub_1C43FBF6C();
      sub_1C440835C();
      sub_1C44DD858(v119, v75, v76);
      v36 = v117;
    }

    else
    {
LABEL_21:
      v74 = v120;
    }

    if (*(v53 + 16))
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v77 + 16))(v74, v124);
      v78 = v26;
      (*(v37 + 16))(v74 + v125[5], v26, v28);
      sub_1C443F008();
      v80(v74 + v79, v36, v128);
      sub_1C4EFEBB8();
      v81 = sub_1C4EFD2F8();
      v83 = v82;
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v84, v74 + v85, v86);
      sub_1C4EF9AE8();
      v87 = (v74 + v125[8]);
      *v87 = v81;
      v87[1] = v83;
      sub_1C441695C((v74 + v125[10]));
      *(v74 + v125[11]) = v88;
      *(v74 + v125[12]) = v127;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_1C43FCEC0();
        sub_1C44C9240(v97, v98, v99, v53);
        v53 = v100;
      }

      sub_1C440F0B4();
      if (v90)
      {
        v101 = sub_1C43FFD98(v89);
        sub_1C44C9240(v101, v102, v103, v53);
        v53 = v104;
      }

      v91 = sub_1C43FEBB4();
      v92(v91);
      (*(v37 + 8))(v78, v28);
      *(v53 + 16) = v81;
      sub_1C43FBF6C();
      sub_1C440835C();
      sub_1C44DD858(v74, v93, v94);
    }

    else
    {
      v95 = sub_1C43FEBB4();
      v96(v95);
      (*(v37 + 8))(v26, v28);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D67E9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x696669746E656469 && a2 == 0xEE00657079547265)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D680E4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D681C8()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6B40, &qword_1C4F704A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DCD8();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v3, v4, MEMORY[0x1E69A9750]);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v12 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v5, v6, MEMORY[0x1E69A92D0]);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v7 = sub_1C4401FFC();
    type metadata accessor for Source(v7);
    sub_1C44014A4();
    sub_1C44CD310(v8, v9, &protocol conformance descriptor for Source);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + *(v12 + 32)));
    sub_1C4F02738();
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v10 = sub_1C440231C();
  v11(v10);
  sub_1C43FBC80();
}

void sub_1C4D68430()
{
  sub_1C43FE96C();
  v3 = v2;
  v44 = v4;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v45 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v47 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v48 = v13;
  sub_1C456902C(&qword_1EC0C6B30, &qword_1C4F704A0);
  sub_1C43FCDF8();
  v50 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v16 = sub_1C43FBE44();
  v17 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v49 = v5;
  sub_1C440BAA8(v19, v20, v21, v5);
  sub_1C4EFD258();
  v22 = v17[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v23 = type metadata accessor for Source(0);
  sub_1C442B738(v23, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v24, v1 + v22, v25);
  v26 = v17[7];
  sub_1C4EFE558();
  v27 = (v1 + v17[8]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v17[9];
  sub_1C4EFE658();
  v29 = (v1 + v17[10]);
  *v29 = 0;
  v29[1] = 0;
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DCD8();
  sub_1C4F02BC8();
  if (!v0)
  {
    v43 = v27;
    sub_1C442DAA4();
    sub_1C44CD310(v30, v31, MEMORY[0x1E69A9778]);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v48, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v32 = *(v46 + 40);
    v32(v1 + v26, v47, v49);
    sub_1C4428F20();
    sub_1C43FE664();
    v33 = sub_1C4F02618();
    sub_1C44147E8(v33, v34, v43);
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v32(v1 + v28, v45, v49);
    sub_1C440CE58();
    sub_1C43FE664();
    v36 = sub_1C4F02618();
    v38 = v37;
    v39 = sub_1C4416968();
    v40(v39, v50);
    *v29 = v36;
    v29[1] = v38;
    v41 = sub_1C442A548();
    sub_1C448D2B4(v41, v44, v42);
  }

  sub_1C440962C(v3);
  sub_1C442C1D4();
  sub_1C4D6D038(v1, v35);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D68884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D67E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D688AC(uint64_t a1)
{
  v2 = sub_1C4D6DCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D688E8(uint64_t a1)
{
  v2 = sub_1C4D6DCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D6896C()
{
  sub_1C43FE628();
  v226 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v228 = v7;
  v8 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v216 = v10;
  v11 = sub_1C43FBE44();
  v215 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v11);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v217 = v13;
  v14 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v223 = v16;
  v17 = sub_1C43FBE44();
  v222 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v17);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  v224 = v19;
  v20 = sub_1C43FBE44();
  v21 = type metadata accessor for EntityTriple(v20);
  sub_1C43FCDF8();
  v227 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v214 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v221 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v220 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v219 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v218 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v213 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v213 - v37;
  v229 = *v4;
  v39 = MEMORY[0x1E69E7CC0];
  v232 = MEMORY[0x1E69E7CC0];
  v40 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  v41 = (v0 + v40[9]);
  v42 = v41[1];
  v225 = v6;
  if (v42)
  {
    v43 = *v41;
    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v45 + 16))(v38, v0);
      sub_1C4480478();
      sub_1C43FCE50();
      sub_1C43FE790();
      v46();
      sub_1C441AB98();
      sub_1C448D2B4(v0 + v47, &v38[v48], v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v51 = v50;
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v52 = &v38[v21[8]];
      *v52 = v43;
      *(v52 + 1) = v42;
      v53 = &v38[v21[10]];
      *v53 = v228;
      *(v53 + 1) = v6;
      *&v38[v21[11]] = v51;
      v38[v21[12]] = v229;
      v54 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v54, v55, v56, MEMORY[0x1E69E7CC0]);
      v39 = v57;
      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        v169 = sub_1C43FCFE8(v58);
        sub_1C44C9240(v169, v59 + 1, 1, v39);
        v39 = v170;
      }

      *(v39 + 16) = v59 + 1;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v38, v60, v61);
      v232 = v39;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }
  }

  v62 = (v2 + v40[11]);
  v63 = v62[1];
  if (v63)
  {
    v64 = *v62;
    v65 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v65 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      (*(v66 + 16))(v35, v2);
      sub_1C4480478();
      sub_1C43FCE50();
      sub_1C43FE790();
      v67();
      sub_1C441AB98();
      sub_1C448D2B4(v2 + v68, &v35[v69], v70);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v72 = v71;
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v73 = &v35[v21[8]];
      *v73 = v64;
      *(v73 + 1) = v63;
      v74 = &v35[v21[10]];
      *v74 = v228;
      *(v74 + 1) = v6;
      *&v35[v21[11]] = v72;
      v35[v21[12]] = v229;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = sub_1C43FCEC0();
        sub_1C44C9240(v171, v172, v173, v39);
        v39 = v174;
      }

      v76 = *(v39 + 16);
      v75 = *(v39 + 24);
      v63 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v175 = sub_1C4413F5C(v75);
        sub_1C44C9240(v175, v176, v177, v39);
        v39 = v178;
      }

      *(v39 + 16) = v63;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v35, v77, v78);
      v232 = v39;
    }
  }

  v79 = *(v2 + v40[13] + 8);
  if (v79 && (sub_1C4434384(), v80))
  {
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v81 = sub_1C4400068();
    v82(v81);
    sub_1C4480478();
    sub_1C43FCE50();
    sub_1C43FE790();
    v83();
    sub_1C441AB98();
    sub_1C44BBD20(v84, v85);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4461DE4();
    sub_1C4428F30();
    sub_1C445BE50();
    *v86 = v63;
    v86[1] = v79;
    sub_1C4480894();
    v87 = v228;
    *v88 = v228;
    v88[1] = v6;
    sub_1C441BF2C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = sub_1C43FCEC0();
      sub_1C44C9240(v179, v180, v181, v39);
      v39 = v182;
    }

    v90 = *(v39 + 16);
    v89 = *(v39 + 24);
    if (v90 >= v89 >> 1)
    {
      v183 = sub_1C43FCFE8(v89);
      sub_1C44C9240(v183, v90 + 1, 1, v39);
      v39 = v184;
    }

    *(v39 + 16) = v90 + 1;
    sub_1C4417C1C();
    sub_1C440835C();
    sub_1C44DD858(v218, v91, v92);
    v232 = v39;
  }

  else
  {
    v87 = v228;
  }

  v93 = *(v2 + v40[15] + 8);
  if (v93)
  {
    sub_1C4434384();
    if (v94)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v95 = sub_1C4400068();
      v96(v95);
      sub_1C4480478();
      sub_1C43FCE50();
      sub_1C43FE790();
      v97();
      sub_1C441AB98();
      sub_1C44BBD20(v98, v99);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v100 = v87;
      v100[1] = v93;
      sub_1C4480894();
      v87 = v228;
      *v101 = v228;
      v101[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1C43FCEC0();
        sub_1C44C9240(v185, v186, v187, v39);
        v39 = v188;
      }

      v103 = *(v39 + 16);
      v102 = *(v39 + 24);
      v93 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        v189 = sub_1C43FCFE8(v102);
        sub_1C44C9240(v189, v103 + 1, 1, v39);
        v39 = v190;
      }

      *(v39 + 16) = v93;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v219, v104, v105);
      v232 = v39;
    }

    else
    {
      v87 = v228;
    }
  }

  v106 = *(v2 + v40[17] + 8);
  if (v106)
  {
    sub_1C44026DC();
    if (v107)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v108 = v220;
      v109 = sub_1C4400068();
      v110(v109);
      v111 = v40[16];
      sub_1C4480478();
      sub_1C43FCE50();
      v113 = v108 + v6;
      v6 = v225;
      v114 = v2 + v111;
      v87 = v228;
      (*(v112 + 16))(v113, v114);
      sub_1C441AB98();
      sub_1C44BBD20(v115, v116);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v117 = v93;
      v117[1] = v106;
      sub_1C4480894();
      *v118 = v87;
      v118[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v191 = sub_1C43FCEC0();
        sub_1C44C9240(v191, v192, v193, v39);
        v39 = v194;
      }

      sub_1C4414030();
      if (v120)
      {
        v195 = sub_1C43FFD98(v119);
        sub_1C44C9240(v195, v196, v197, v39);
        v39 = v198;
      }

      *(v39 + 16) = v106;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v220, v121, v122);
      v232 = v39;
    }
  }

  v123 = *(v2 + v40[19] + 8);
  if (v123)
  {
    sub_1C44026DC();
    if (v124)
    {
      sub_1C4EFF0C8();
      sub_1C43FCE50();
      v125 = v40;
      v126 = v221;
      v127 = sub_1C4400068();
      v128(v127);
      v129 = v40[18];
      sub_1C4480478();
      sub_1C43FCE50();
      v131 = v126 + v6;
      v6 = v225;
      v132 = v2 + v129;
      v133 = v228;
      (*(v130 + 16))(v131, v132);
      v220 = v125;
      v87 = v133;
      sub_1C441AB98();
      sub_1C44BBD20(v134, v135);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v136 = v93;
      v136[1] = v123;
      sub_1C4480894();
      *v137 = v133;
      v137[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = sub_1C43FCEC0();
        sub_1C44C9240(v199, v200, v201, v39);
        v39 = v202;
      }

      sub_1C4414030();
      v40 = v220;
      if (v120)
      {
        v203 = sub_1C43FFD98(v138);
        sub_1C44C9240(v203, v204, v205, v39);
        v39 = v206;
      }

      *(v39 + 16) = v123;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v221, v139, v140);
      v232 = v39;
    }
  }

  v141 = v223;
  sub_1C445FFA8(v2 + v40[20], v223, &qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C440175C(v141, 1, v222);
  v142 = v224;
  if (v143)
  {
    sub_1C4420C3C(v141, &qword_1EC0BA6B0, &unk_1C4F145F0);
  }

  else
  {
    sub_1C44DD858(v141, v224, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
    v230 = v229;
    sub_1C4485E00();
    v144 = v226;
    sub_1C4D666D4();
    v226 = v144;
    if (v144)
    {
      sub_1C4406354();
      sub_1C4D6D038(v142, v146);

      goto LABEL_66;
    }

    sub_1C49D3614(v145);
    sub_1C4406354();
    sub_1C4D6D038(v142, v147);
  }

  v148 = v216;
  sub_1C445FFA8(v2 + v40[21], v216, &qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C440175C(v148, 1, v215);
  v149 = v217;
  v150 = v226;
  if (v143)
  {
    sub_1C4420C3C(v148, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  else
  {
    sub_1C44DD858(v148, v217, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
    v231 = v229;
    sub_1C4485E00();
    sub_1C4D67660();
    if (v150)
    {
      sub_1C442C1D4();
      sub_1C4D6D038(v149, v152);

      goto LABEL_66;
    }

    sub_1C49D3614(v151);
    sub_1C442C1D4();
    sub_1C4D6D038(v149, v153);
  }

  v154 = v232;
  if (*(v232 + 16))
  {
    v226 = v150;
    sub_1C4EFF0C8();
    sub_1C43FCE50();
    v155 = sub_1C4400068();
    v156(v155);
    sub_1C4EFEBB8();
    v157 = sub_1C4EFD2F8();
    v158 = v87;
    v160 = v159;
    sub_1C441AB98();
    sub_1C44BBD20(v161, v162);
    sub_1C4EF9AE8();
    sub_1C4461DE4();
    sub_1C4428F30();
    sub_1C445BE50();
    *v163 = v157;
    v163[1] = v160;
    sub_1C4480894();
    *v164 = v158;
    v164[1] = v6;
    sub_1C441BF2C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v207 = sub_1C43FCEC0();
      sub_1C44C9240(v207, v208, v209, v154);
      v154 = v210;
    }

    v166 = *(v154 + 16);
    v165 = *(v154 + 24);
    if (v166 >= v165 >> 1)
    {
      v211 = sub_1C43FCFE8(v165);
      sub_1C44C9240(v211, v166 + 1, 1, v154);
      v154 = v212;
    }

    *(v154 + 16) = v166 + 1;
    sub_1C43FBF6C();
    sub_1C440835C();
    sub_1C44DD858(v214, v167, v168);
  }

LABEL_66:
  sub_1C44109F8();
}

uint64_t sub_1C4D695D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72705F65726E6567 && a2 == 0xEF65746163696465;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC7C00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7C20 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000001C4FC7C40 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4FC7C60 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6564496D75626C61 && a2 == 0xEF7265696669746ELL;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001C4FC7C80 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1C4F02938();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D69B48(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x72705F65726E6567;
      break;
    case 7:
      result = 0x65726E6567;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x614E747369747261;
      break;
    case 10:
      v3 = 10;
      goto LABEL_19;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0x6564496D75626C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6D614E6D75626C61;
      break;
    case 16:
      result = 0x6E6F697461727564;
      break;
    case 17:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D69D60()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C6B70, &qword_1C4F704C8);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4D6DD80();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FF970();
  sub_1C44CD310(v6, v7, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
    sub_1C4424DE8(1);
    sub_1C4EFEEF8();
    sub_1C442DAA4();
    sub_1C44CD310(v9, v10, MEMORY[0x1E69A9750]);
    sub_1C4417C38();
    sub_1C4F02778();
    sub_1C4424DE8(2);
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v11, v12, MEMORY[0x1E69A92D0]);
    sub_1C4425608();
    sub_1C4F027E8();
    v13 = sub_1C4424DE8(3);
    type metadata accessor for Source(v13);
    sub_1C44014A4();
    sub_1C44CD310(v14, v15, &protocol conformance descriptor for Source);
    sub_1C4425608();
    sub_1C4F027E8();
    sub_1C4405584(v8[8]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[9]);
    sub_1C44151C4(5);
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v8[11]);
    sub_1C44151C4(7);
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v8[13]);
    sub_1C44151C4(9);
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v8[15]);
    sub_1C44151C4(11);
    sub_1C4405584(v8[16]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[17]);
    sub_1C44151C4(13);
    sub_1C4405584(v8[18]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v8[19]);
    sub_1C44151C4(15);
    v16 = sub_1C4424DE8(16);
    type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v16);
    sub_1C443F8AC();
    sub_1C44CD310(v17, v18, &unk_1C4F7034C);
    sub_1C4425608();
    sub_1C4F02778();
    v19 = sub_1C4424DE8(17);
    type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v19);
    sub_1C4418634();
    sub_1C44CD310(v20, v21, &unk_1C4F703B8);
    sub_1C4425608();
    sub_1C4F02778();
  }

  (*(v4 + 8))(v1, v2);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D6A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v110 = v27;
  v28 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v111 = v30;
  v31 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v112 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v128 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v117 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  v118 = v43;
  v44 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v44);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBC74();
  v119 = v46;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  sub_1C456902C(&qword_1EC0C6B60, &qword_1C4F704C0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C4402A68();
  v49 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v130 = *(v51 + 20);
  v131 = v34;
  sub_1C43FCF64();
  sub_1C440BAA8(v52, v53, v54, v34);
  v121 = v49[6];
  sub_1C4EFD3E8();
  v55 = v49[7];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v56 = type metadata accessor for Source(0);
  sub_1C442B738(v56, &qword_1EDDFD270);
  sub_1C441AB98();
  v122 = v55;
  sub_1C448D2B4(v57, v24 + v55, v58);
  v129 = v49[8];
  sub_1C4EFEBF8();
  v127 = v49[10];
  sub_1C4EFEC48();
  v126 = v49[12];
  sub_1C4EFE298();
  v125 = v49[14];
  sub_1C4EFE768();
  v124 = v49[16];
  sub_1C4EFE718();
  v123 = v49[18];
  sub_1C4EFEE28();
  v59 = v49[20];
  v60 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  v120 = v59;
  sub_1C43FCF64();
  sub_1C440BAA8(v61, v62, v63, v60);
  v64 = v49[21];
  v65 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v66, v67, v68, v65);
  sub_1C4409678(v26, v26[3]);
  sub_1C4D6DD80();
  sub_1C444FECC();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v26);
    sub_1C4420C3C(v24 + v130, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v71 + 8))(v24 + v121);
    sub_1C4411564();
    sub_1C4D6D038(v24 + v122, v72);
    v73 = *(v128 + 8);
    v74 = sub_1C443E494(v129);
    v73(v74);

    v75 = sub_1C443E494(v127);
    v73(v75);

    v76 = sub_1C443E494(v126);
    v73(v76);

    v77 = sub_1C443E494(v125);
    v73(v77);

    v78 = sub_1C443E494(v124);
    v73(v78);

    v79 = sub_1C443E494(v123);
    v73(v79);

    sub_1C4420C3C(v24 + v120, &qword_1EC0BA6B0, &unk_1C4F145F0);
    sub_1C4420C3C(v24 + v64, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  else
  {
    sub_1C43FF970();
    sub_1C44CD310(v69, v70, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    v80 = sub_1C447553C();
    v81(v80);
    sub_1C442DAA4();
    sub_1C44CD310(v82, v83, MEMORY[0x1E69A9778]);
    sub_1C4F02658();
    sub_1C444088C(v119, v24 + v130, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441599C(4);
    sub_1C4F026C8();
    v84 = *(v128 + 40);
    v84(v24 + v129, v118, v131);
    sub_1C443500C(5);
    v85 = sub_1C4F02618();
    sub_1C44160B4(v85, v86, v49[9]);
    sub_1C441599C(6);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v84(v24 + v127, v117, v131);
    sub_1C443500C(7);
    v87 = sub_1C4F02618();
    sub_1C44160B4(v87, v88, v49[11]);
    sub_1C441599C(8);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v84(v24 + v126, v116, v131);
    sub_1C443500C(9);
    v89 = sub_1C4F02618();
    sub_1C44160B4(v89, v90, v49[13]);
    sub_1C441599C(10);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v84(v24 + v125, v115, v131);
    sub_1C443500C(11);
    v91 = sub_1C4F02618();
    sub_1C44160B4(v91, v92, v49[15]);
    sub_1C441599C(12);
    sub_1C442A564(v93, v94);
    v84(v24 + v124, v114, v131);
    sub_1C443500C(13);
    sub_1C444AE84();
    v95 = sub_1C4F02618();
    sub_1C44160B4(v95, v96, v49[17]);
    sub_1C441599C(14);
    sub_1C442A564(v97, v98);
    v84(v24 + v123, v113, v131);
    sub_1C443500C(15);
    sub_1C444AE84();
    v99 = sub_1C4F02618();
    sub_1C44160B4(v99, v100, v49[19]);
    sub_1C443F8AC();
    sub_1C44CD310(v101, v102, &unk_1C4F70374);
    sub_1C43FE6CC();
    sub_1C444AE84();
    sub_1C4F02658();
    sub_1C444088C(v112, v24 + v120, &qword_1EC0BA6B0, &unk_1C4F145F0);
    sub_1C4418634();
    sub_1C44CD310(v103, v104, &unk_1C4F703E0);
    sub_1C43FE6CC();
    sub_1C444AE84();
    sub_1C4F02658();
    v105 = sub_1C441D068();
    v106(v105);
    sub_1C444088C(v111, v24 + v64, &qword_1EC0BA6B8, &unk_1C4F70150);
    v107 = sub_1C442A548();
    sub_1C448D2B4(v107, v110, v108);
    sub_1C440962C(v26);
    sub_1C440FFA0();
    sub_1C4D6D038(v24, v109);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D695D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6ADA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D69B40();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D6ADD0(uint64_t a1)
{
  v2 = sub_1C4D6DD80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6AE0C(uint64_t a1)
{
  v2 = sub_1C4D6DD80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D6AE90()
{
  sub_1C43FE628();
  v134 = v4;
  v135 = v1;
  v140 = v5;
  v124 = v6;
  v136 = v7;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v129 = v9;
  v130 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v119 = v10;
  v11 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v11);
  sub_1C43FCDF8();
  v125 = v12;
  v126 = v13;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v128 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v120 = v16;
  v17 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v133 = v19;
  v20 = sub_1C43FBE44();
  v137 = type metadata accessor for BMAppleMusicEventStructs.Song(v20);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v127 = v22;
  sub_1C43FBE44();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v131 = v24;
  v132 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  sub_1C43FECFC();
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v138 = v26;
  v139 = v25;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - v28;
  v30 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C440D100();
  v33 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v114 - v38;
  LODWORD(v140) = *v140;
  sub_1C445FFA8(v0, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v33);
  if (v50)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v40 = sub_1C45CF650();
    v41 = sub_1C43FFB2C(&type metadata for MappingError, v40);
    sub_1C4414040(v41, v42);
LABEL_25:
    sub_1C44109F8();
    return;
  }

  v122 = v39;
  v123 = v35;
  v43 = *(v35 + 32);
  v44 = sub_1C440DE18();
  v121 = v33;
  v43(v44);
  v45 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  v46 = *(v131 + 16);
  v115 = *(v45 + 20);
  v46(v2, v0 + v115, v132);
  v132 = v29;
  sub_1C4EFF838();
  v142 = MEMORY[0x1E69E7CC0];
  v131 = v45;
  v47 = v0;
  v48 = v0 + *(v45 + 28);
  v49 = v133;
  sub_1C445FFA8(v48, v133, &qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C440175C(v49, 1, v137);
  if (v50)
  {
    sub_1C4420C3C(v49, &qword_1EC0BA6A8, &qword_1C4F145E8);
    v51 = MEMORY[0x1E69E7CC0];
    v57 = v134;
    v52 = v128;
    v53 = v139;
    v54 = v121;
    goto LABEL_18;
  }

  v55 = v127;
  sub_1C44DD858(v49, v127, type metadata accessor for BMAppleMusicEventStructs.Song);
  v141 = v140;
  v56 = v135;
  v57 = v134;
  sub_1C4D6896C();
  if (v56)
  {
    sub_1C440FFA0();
    sub_1C4D6D038(v55, v59);
    (*(v138 + 8))(v132, v139);
    (*(v123 + 8))(v122, v121);
    goto LABEL_25;
  }

  v54 = v121;
  if (!*(v58 + 16))
  {
    sub_1C440FFA0();
    sub_1C4D6D038(v55, v79);

    v51 = MEMORY[0x1E69E7CC0];
    v52 = v128;
LABEL_17:
    v53 = v139;
LABEL_18:
    if (*(v51 + 16))
    {
      (*(v129 + 16))(v52, v124, v130);
      v80 = v125;
      v81 = sub_1C4401940(v125[5]);
      v82(v81);
      v83 = sub_1C4401940(v80[6]);
      v84(v83, v132, v53);
      sub_1C4EFEBB8();
      v85 = sub_1C4EFD2F8();
      v87 = v86;
      sub_1C441AB98();
      sub_1C448D2B4(v47 + v88, v52 + v89, v90);
      sub_1C4EF9AE8();
      v91 = (v52 + v80[8]);
      *v91 = v85;
      v91[1] = v87;
      v92 = (v52 + v80[10]);
      *v92 = v136;
      v92[1] = v57;
      *(v52 + v80[11]) = v93;
      *(v52 + v80[12]) = v140;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1C43FCEC0();
        sub_1C44C9240(v102, v103, v104, v51);
        v51 = v105;
      }

      v95 = *(v51 + 16);
      v94 = *(v51 + 24);
      v97 = v122;
      v96 = v123;
      if (v95 >= v94 >> 1)
      {
        v106 = sub_1C43FCFE8(v94);
        sub_1C44C9240(v106, v95 + 1, 1, v51);
        v51 = v107;
      }

      v98 = sub_1C43FE5EC();
      v99(v98);
      (*(v96 + 8))(v97, v121);
      *(v51 + 16) = v95 + 1;
      sub_1C43FBF6C();
      sub_1C440835C();
      sub_1C44DD858(v52, v100, v101);
    }

    else
    {
      (*(v138 + 8))(v132, v53, v130);
      (*(v123 + 8))(v122, v54);
    }

    goto LABEL_25;
  }

  v60 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v60);
  (*(v129 + 16))(v119, v124, v130);
  (*(v123 + 16))(v116, v122, v54);
  (*(v138 + 16))(v118, v132, v139);
  v61 = v117;
  sub_1C445FFA8(v55 + *(v137 + 20), v117, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v61, 1, v54);
  if (!v50)
  {

    v137 = sub_1C4EFF048();
    v63 = v62;
    v64 = v125;
    sub_1C441AB98();
    v66 = v120;
    sub_1C448D2B4(v47 + v65, v120 + v67, v68);
    sub_1C4EF9AE8();
    v70 = v69;
    (*(v129 + 32))(v66, v119, v130);
    (v43)(v66 + v64[5], v116, v54);
    (*(v138 + 32))(v66 + v64[6], v118, v139);
    (v43)(v66 + v64[7], v117, v54);
    v71 = (v66 + v64[8]);
    v72 = v136;
    *v71 = v137;
    v71[1] = v63;
    v73 = (v66 + v64[10]);
    *v73 = v72;
    v73[1] = v57;
    *(v66 + v64[11]) = v70;
    *(v66 + v64[12]) = v140;
    v51 = v142;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_1C43FCEC0();
      sub_1C44C9240(v108, v109, v110, v51);
      v51 = v111;
    }

    v52 = v128;
    v75 = *(v51 + 16);
    v74 = *(v51 + 24);
    if (v75 >= v74 >> 1)
    {
      v112 = sub_1C43FCFE8(v74);
      sub_1C44C9240(v112, v75 + 1, 1, v51);
      v51 = v113;
    }

    sub_1C440FFA0();
    sub_1C4D6D038(v127, v76);
    *(v51 + 16) = v75 + 1;
    sub_1C43FBF6C();
    sub_1C440835C();
    sub_1C44DD858(v120, v77, v78);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1C4D6B818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E656449676E6F73 && a2 == 0xEE00726569666974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4D6B980(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x6E656449676E6F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D6BA18()
{
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6B88, &qword_1C4F704D8);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DDD4();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v6, v7, MEMORY[0x1E69A9750]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v8, v9, MEMORY[0x1E69A92D0]);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v10 = sub_1C4401FFC();
    type metadata accessor for Source(v10);
    sub_1C44014A4();
    sub_1C44CD310(v11, v12, &protocol conformance descriptor for Source);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for BMAppleMusicEventStructs.Song(0);
    sub_1C441DF40();
    sub_1C44CD310(v13, v14, &unk_1C4F702E0);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1C4D6BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v57 = v27;
  v28 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v58 = v30;
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v59 = v33;
  sub_1C456902C(&qword_1EC0C6B78, &qword_1C4F704D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  v35 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v37 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v38, v39, v40, v37);
  sub_1C4EFD178();
  v41 = *(v35 + 24);
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v42 = type metadata accessor for Source(0);
  sub_1C442B738(v42, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v43, v24 + v41, v44);
  v45 = *(v35 + 28);
  v46 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v47, v48, v49, v46);
  sub_1C4409678(v26, v26[3]);
  sub_1C4D6DDD4();
  sub_1C4F02BC8();
  if (!v23)
  {
    sub_1C442DAA4();
    sub_1C44CD310(v50, v51, MEMORY[0x1E69A9778]);
    sub_1C43FE6CC();
    sub_1C4F02658();
    sub_1C444088C(v59, v24, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441DF40();
    sub_1C44CD310(v52, v53, &unk_1C4F70308);
    sub_1C4F02658();
    v54 = sub_1C43FD018();
    v55(v54);
    sub_1C444088C(v58, v24 + v45, &qword_1EC0BA6A8, &qword_1C4F145E8);
    sub_1C448D2B4(v24, v57, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
  }

  sub_1C440962C(v26);
  sub_1C442E76C();
  sub_1C4D6D038(v24, v56);
  sub_1C43FBC80();
}

uint64_t sub_1C4D6BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6B818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6C00C(uint64_t a1)
{
  v2 = sub_1C4D6DDD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6C048(uint64_t a1)
{
  v2 = sub_1C4D6DDD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D6C0CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FC7B80 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x676E6F53736168 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D6C358(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = 0x65746144736168;
      break;
    case 7:
      result = 0x676E6F53736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D6C440()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0C6B28, &qword_1C4F70498);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DC84();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FF970();
  sub_1C44CD310(v2, v3, MEMORY[0x1E69A9818]);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for BMAppleMusicEventStructs.Event(0);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DAA4();
    sub_1C44CD310(v4, v5, MEMORY[0x1E69A9750]);
    sub_1C4402150();
    sub_1C4F02778();
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v6, v7, MEMORY[0x1E69A92D0]);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    type metadata accessor for Source(0);
    sub_1C44014A4();
    sub_1C44CD310(v8, v9, &protocol conformance descriptor for Source);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02738();
    type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    sub_1C441B1C8();
    sub_1C44CD310(v10, v11, &unk_1C4F70208);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
    type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
    sub_1C443436C();
    sub_1C44CD310(v12, v13, &unk_1C4F70274);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v14 = sub_1C440231C();
  v15(v14);
  sub_1C43FBC80();
}

void sub_1C4D6C774()
{
  sub_1C43FE96C();
  v3 = v2;
  v59 = v4;
  v5 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBC74();
  v60 = v7;
  v8 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v61 = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v62 = v14;
  v15 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v63 = v17;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  sub_1C456902C(&qword_1EC0C6B18, &qword_1C4F70490);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C4413644();
  v21 = type metadata accessor for BMAppleMusicEventStructs.Event(v20);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v69 = *(v23 + 20);
  v70 = v11;
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v11);
  v64 = v21[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v27 = v21[7];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC(&qword_1EDDFD268);
  }

  v28 = type metadata accessor for Source(0);
  sub_1C442B738(v28, &qword_1EDDFD270);
  sub_1C441AB98();
  v65 = v27;
  sub_1C448D2B4(v29, v1 + v27, v30);
  v68 = v21[8];
  sub_1C4EFECC8();
  v31 = v21[10];
  v32 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  v66 = v31;
  sub_1C43FCF64();
  sub_1C440BAA8(v33, v34, v35, v32);
  v36 = v21[11];
  v37 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v38, v39, v40, v37);
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DC84();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v69, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C4EFD548();
    sub_1C43FBCE0();
    (*(v43 + 8))(v1 + v64);
    sub_1C4411564();
    sub_1C4D6D038(v1 + v65, v44);
    (*(v67 + 8))(v1 + v68, v70);

    sub_1C4420C3C(v1 + v66, &qword_1EC0BA698, &qword_1C4F145D8);
    sub_1C4420C3C(v1 + v36, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  else
  {
    sub_1C43FF970();
    sub_1C44CD310(v41, v42, MEMORY[0x1E69A9838]);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    v45 = sub_1C447553C();
    v46(v45);
    sub_1C442DAA4();
    sub_1C44CD310(v47, v48, MEMORY[0x1E69A9778]);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v63, v1 + v69, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v67 + 40))(v1 + v68, v62, v70);
    sub_1C440194C();
    v49 = sub_1C4F02618();
    sub_1C44160B4(v49, v50, v21[9]);
    sub_1C441B1C8();
    sub_1C44CD310(v51, v52, &unk_1C4F70230);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v61, v1 + v66, &qword_1EC0BA698, &qword_1C4F145D8);
    sub_1C443436C();
    sub_1C44CD310(v53, v54, &unk_1C4F7029C);
    sub_1C440194C();
    sub_1C4F02658();
    v55 = sub_1C44151B0();
    v56(v55);
    sub_1C444088C(v60, v1 + v36, &qword_1EC0BA6A0, &qword_1C4F145E0);
    v57 = sub_1C442A548();
    sub_1C448D2B4(v57, v59, v58);
    sub_1C440962C(v3);
    sub_1C4D6D038(v1, type metadata accessor for BMAppleMusicEventStructs.Event);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D6CF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6C0CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6CF78(uint64_t a1)
{
  v2 = sub_1C4D6DC84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6CFB4(uint64_t a1)
{
  v2 = sub_1C4D6DC84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D6D038(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C4D6D118(uint64_t a1)
{
  sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Source(319);
        if (v4 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v5 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v6 <= 0x3F)
            {
              sub_1C4D6D280(319, &qword_1EC0C6A40, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
              if (v7 <= 0x3F)
              {
                sub_1C4D6D280(319, &qword_1EC0C6A48, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
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
  }
}

void sub_1C4D6D280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4D6D2FC(uint64_t a1)
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFD548();
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for Source(319);
      if (v5 <= 0x3F)
      {
        v2 = sub_1C4EFEEF8();
        if (v6 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C4D6D434(uint64_t a1)
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C4EFEEF8();
        if (v4 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C4D6D544(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v1 = type metadata accessor for Source(319);
        if (v6 <= 0x3F)
        {
          v1 = sub_1C4EFEEF8();
          if (v7 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v9 > 0x3F)
            {
              return v8;
            }

            else
            {
              sub_1C4D6D280(319, &qword_1EC0C6A80, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
              v1 = v10;
              if (v11 <= 0x3F)
              {
                sub_1C4D6D280(319, &qword_1EC0C6A88, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
                v1 = v12;
                if (v13 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C4D6D72C(uint64_t a1)
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Source(319);
      if (v3 <= 0x3F)
      {
        sub_1C4D6D280(319, &qword_1EC0C6AA0, type metadata accessor for BMAppleMusicEventStructs.Song);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4D6D850(uint64_t a1)
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFD548();
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for Source(319);
      if (v5 <= 0x3F)
      {
        v2 = sub_1C4EFEEF8();
        if (v6 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C4D6D96C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AB8, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType, &unk_1C4F70230);
  result = sub_1C44CD310(&qword_1EC0C6AC0, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType, &unk_1C4F70208);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6D9F0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AC8, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType, &unk_1C4F7029C);
  result = sub_1C44CD310(&qword_1EC0C6AD0, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType, &unk_1C4F70274);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DA74(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AD8, type metadata accessor for BMAppleMusicEventStructs.Song, &unk_1C4F70308);
  result = sub_1C44CD310(&qword_1EC0C6AE0, type metadata accessor for BMAppleMusicEventStructs.Song, &unk_1C4F702E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DAF8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AE8, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType, &unk_1C4F70374);
  result = sub_1C44CD310(&qword_1EC0C6AF0, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType, &unk_1C4F7034C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DB7C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AF8, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType, &unk_1C4F703E0);
  result = sub_1C44CD310(&qword_1EC0C6B00, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType, &unk_1C4F703B8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DC00(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6B08, type metadata accessor for BMAppleMusicEventStructs.Event, &unk_1C4F7044C);
  result = sub_1C44CD310(&qword_1EC0C6B10, type metadata accessor for BMAppleMusicEventStructs.Event, &unk_1C4F70424);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D6DC84()
{
  result = qword_1EC0C6B20;
  if (!qword_1EC0C6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B20);
  }

  return result;
}

unint64_t sub_1C4D6DCD8()
{
  result = qword_1EC0C6B38;
  if (!qword_1EC0C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B38);
  }

  return result;
}

unint64_t sub_1C4D6DD2C()
{
  result = qword_1EC0C6B50;
  if (!qword_1EC0C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B50);
  }

  return result;
}

unint64_t sub_1C4D6DD80()
{
  result = qword_1EC0C6B68;
  if (!qword_1EC0C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B68);
  }

  return result;
}

unint64_t sub_1C4D6DDD4()
{
  result = qword_1EC0C6B80;
  if (!qword_1EC0C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B80);
  }

  return result;
}

unint64_t sub_1C4D6DE28()
{
  result = qword_1EC0C6B98;
  if (!qword_1EC0C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.DateRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.SongRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.Song.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.QuantityRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D6E3A8()
{
  result = qword_1EC0C6BA8;
  if (!qword_1EC0C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BA8);
  }

  return result;
}

unint64_t sub_1C4D6E400()
{
  result = qword_1EC0C6BB0;
  if (!qword_1EC0C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BB0);
  }

  return result;
}

unint64_t sub_1C4D6E458()
{
  result = qword_1EC0C6BB8;
  if (!qword_1EC0C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BB8);
  }

  return result;
}

unint64_t sub_1C4D6E4B0()
{
  result = qword_1EC0C6BC0;
  if (!qword_1EC0C6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BC0);
  }

  return result;
}

unint64_t sub_1C4D6E508()
{
  result = qword_1EC0C6BC8;
  if (!qword_1EC0C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BC8);
  }

  return result;
}

unint64_t sub_1C4D6E560()
{
  result = qword_1EC0C6BD0;
  if (!qword_1EC0C6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BD0);
  }

  return result;
}

unint64_t sub_1C4D6E5B8()
{
  result = qword_1EC0C6BD8;
  if (!qword_1EC0C6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BD8);
  }

  return result;
}

unint64_t sub_1C4D6E610()
{
  result = qword_1EC0C6BE0;
  if (!qword_1EC0C6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BE0);
  }

  return result;
}

unint64_t sub_1C4D6E668()
{
  result = qword_1EC0C6BE8;
  if (!qword_1EC0C6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BE8);
  }

  return result;
}

unint64_t sub_1C4D6E6C0()
{
  result = qword_1EC0C6BF0;
  if (!qword_1EC0C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BF0);
  }

  return result;
}

unint64_t sub_1C4D6E718()
{
  result = qword_1EC0C6BF8;
  if (!qword_1EC0C6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BF8);
  }

  return result;
}

unint64_t sub_1C4D6E770()
{
  result = qword_1EC0C6C00;
  if (!qword_1EC0C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C00);
  }

  return result;
}

unint64_t sub_1C4D6E7C8()
{
  result = qword_1EC0C6C08;
  if (!qword_1EC0C6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C08);
  }

  return result;
}

unint64_t sub_1C4D6E820()
{
  result = qword_1EC0C6C10;
  if (!qword_1EC0C6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C10);
  }

  return result;
}

unint64_t sub_1C4D6E878()
{
  result = qword_1EC0C6C18;
  if (!qword_1EC0C6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C18);
  }

  return result;
}

unint64_t sub_1C4D6E8D0()
{
  result = qword_1EC0C6C20;
  if (!qword_1EC0C6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C20);
  }

  return result;
}

unint64_t sub_1C4D6E928()
{
  result = qword_1EC0C6C28;
  if (!qword_1EC0C6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C28);
  }

  return result;
}

unint64_t sub_1C4D6E980()
{
  result = qword_1EC0C6C30;
  if (!qword_1EC0C6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C30);
  }

  return result;
}

void sub_1C4D6E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v120 = v29;
  v121 = v28;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v118 = v30;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v122 = v32;
  v123 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v117 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v119 = v35;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v124 = v37;
  v125 = v36;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v38 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  v44 = v43;
  sub_1C43FBE44();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v114 = v46;
  v115 = v45;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v49 = sub_1C43FD2C8(v48);
  v50 = type metadata accessor for CNContactStructs.Organization(v49);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  v116 = v51;
  sub_1C440BAA8(v52, v53, v54, v51);
  v55 = v50[6];
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v131 = (v27 + v50[7]);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v56 = type metadata accessor for Source(0);
  sub_1C442B738(v56, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v57, v131, v58);
  sub_1C4EFEBF8();
  v59 = (v27 + v50[9]);
  *v59 = 0;
  v59[1] = 0;
  sub_1C4EFE578();
  v60 = (v27 + v50[11]);
  *v60 = 0;
  v60[1] = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v61 = sub_1C4F00978();
  sub_1C442B738(v61, qword_1EDE2DE10);
  v126 = v27;
  sub_1C4D871A8(v40 + 16);
  v62();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = sub_1C4F00968();
  v64 = sub_1C4F01CB8();

  v127 = v55;
  v128 = v38;
  if (os_log_type_enabled(v63, v64))
  {
    swift_slowAlloc();
    v129 = sub_1C441D7BC();
    *v55 = 136381187;
    v65 = sub_1C4404DC8();
    v68 = sub_1C441D828(v65, v66, v67);
    sub_1C44587AC(v68);
    sub_1C4432F18();
    sub_1C44CD358(v69, v70, MEMORY[0x1E69A92F8]);
    v71 = sub_1C4F02858();
    v72 = v38;
    v74 = v73;
    v75 = *(v40 + 8);
    v75(v44, v72);
    v76 = sub_1C441D828(v71, v74, &v129);

    *(v55 + 14) = v76;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v63, v64, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v55, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v75 = *(v40 + 8);
    v75(v44, v38);
  }

  v77 = *v131;
  v78 = v131[1];
  v129 = v25;
  v130 = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v77, v78);

  v79 = v129;
  v80 = v130;
  sub_1C450B3B4();
  sub_1C4F01178();
  sub_1C4F01148();
  v82 = v81;
  (*(v124 + 8))(v63, v125);
  if (v82 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v83 = sub_1C4F00968();
    v84 = sub_1C4F01CD8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v75;
      v87 = swift_slowAlloc();
      v129 = v87;
      *v85 = 136380675;
      v88 = sub_1C441D828(v79, v80, &v129);

      *(v85 + 4) = v88;
      _os_log_impl(&dword_1C43F8000, v83, v84, "Source: failed to encode identifier as UTF8 data: %{private}s", v85, 0xCu);
      sub_1C440962C(v87);
      v75 = v86;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v103 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v103);
    sub_1C43FE7A8(v104, 5);
    sub_1C440C668();
    sub_1C4420C3C(v126 + v105, v106, v107);
    v75(v126 + v127, v128);
    sub_1C440636C();
    sub_1C44D474C(v131, v108);
    v109 = *(*(v116 - 8) + 8);
    v110 = sub_1C4429108(&a15);
    v109(v110, v116);
    v111 = sub_1C4429108(&a14);
    v109(v111, v116);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v89, v90, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v91 = sub_1C4404DC8();
    sub_1C44344B8(v91, v92);
    v93 = sub_1C4404DC8();
    sub_1C4498FD8(v93, v94, v118);
    v95 = sub_1C4404DC8();
    sub_1C441DFEC(v95, v96);
    sub_1C4F00DA8();
    (*(v120 + 8))(v118, v121);
    sub_1C4D87134();
    v97();
    (*(v122 + 16))(v117, v119, v123);
    sub_1C4EFF028();
    v98 = sub_1C4404DC8();
    sub_1C441DFEC(v98, v99);
    v100 = sub_1C4410CBC();
    v101(v100);
    v102 = *(v114 + 32);
    v102(v112, v113, v115);
    v102(v126, v112, v115);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}