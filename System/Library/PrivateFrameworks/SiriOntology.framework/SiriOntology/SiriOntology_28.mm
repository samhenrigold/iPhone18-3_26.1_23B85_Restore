uint64_t _s12SiriOntology21PayloadAttachmentInfoV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v132 = *(a1 + 16);
  v123 = a1[3];
  v129 = a1[4];
  v4 = *(a1 + 7);
  v5 = *(a1 + 11);
  v158[2] = *(a1 + 9);
  v158[3] = v5;
  v159 = *(a1 + 13);
  v158[0] = *(a1 + 5);
  v158[1] = v4;
  v6 = a1[15];
  v7 = *(a1 + 32);
  v8 = *(a1 + 132);
  v9 = *(a1 + 34);
  v10 = *(a1 + 140);
  v11 = a1[18];
  v12 = a1[19];
  v13 = a1[20];
  v14 = *(a1 + 168);
  v15 = a1[22];
  v16 = *(a1 + 184);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  v120 = a2[3];
  v126 = a2[4];
  v20 = *(a2 + 5);
  v21 = *(a2 + 13);
  v22 = *(a2 + 9);
  v160[3] = *(a2 + 11);
  v161 = v21;
  v23 = *(a2 + 7);
  v160[0] = v20;
  v160[1] = v23;
  v160[2] = v22;
  v24 = a2[15];
  v25 = *(a2 + 32);
  v26 = *(a2 + 132);
  v27 = *(a2 + 34);
  v28 = *(a2 + 140);
  v29 = a2[18];
  v30 = a2[19];
  v31 = a2[20];
  v32 = *(a2 + 168);
  v33 = a2[22];
  v34 = *(a2 + 184);
  if (v3)
  {
    if (!v18)
    {
      return 0;
    }

    if (v2 != v17 || v3 != v18)
    {
      v91 = v12;
      v94 = a2[22];
      v106 = *(a2 + 184);
      v101 = a2;
      v103 = a1;
      v111 = *(a2 + 168);
      v109 = v13;
      v89 = v16;
      v90 = v14;
      v88 = v15;
      v117 = a2[18];
      v35 = v11;
      v36 = a2[20];
      v37 = a2[19];
      v97 = v9;
      v38 = v10;
      v39 = v7;
      v40 = v8;
      v41 = v6;
      v99 = a2[15];
      v42 = *(a2 + 140);
      v114 = *(a2 + 34);
      v43 = *(a2 + 132);
      v44 = sub_1C095DF3C();
      v27 = v114;
      v26 = v43;
      v28 = v42;
      v24 = v99;
      a2 = v101;
      v29 = v117;
      v6 = v41;
      v8 = v40;
      v7 = v39;
      v10 = v38;
      v9 = v97;
      v30 = v37;
      v31 = v36;
      v11 = v35;
      v15 = v88;
      v16 = v89;
      v14 = v90;
      v12 = v91;
      v33 = v94;
      v13 = v109;
      v32 = v111;
      v45 = v44;
      a1 = v103;
      v34 = v106;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v132 == 7)
  {
    if (v19 != 7)
    {
      return 0;
    }
  }

  else
  {
    v46 = 0;
    if (v19 == 7 || v132 != v19)
    {
      return v46;
    }
  }

  if (v129)
  {
    if (!v126)
    {
      return 0;
    }

    if (v123 != v120 || v129 != v126)
    {
      v102 = a2;
      v104 = a1;
      v107 = v34;
      v118 = v29;
      v133 = v11;
      v92 = v30;
      v95 = v31;
      v47 = v9;
      v130 = v10;
      v100 = v24;
      v48 = v7;
      v127 = v8;
      v49 = v6;
      v124 = v28;
      v115 = v27;
      v121 = v26;
      v50 = sub_1C095DF3C();
      v27 = v115;
      v26 = v121;
      v28 = v124;
      v29 = v118;
      v6 = v49;
      v8 = v127;
      v7 = v48;
      v24 = v100;
      a2 = v102;
      v10 = v130;
      v9 = v47;
      v30 = v92;
      v31 = v95;
      v11 = v133;
      v34 = v107;
      v51 = v50;
      a1 = v104;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v126)
  {
    return 0;
  }

  v112 = v32;
  v110 = v13;
  v52 = *(&v159 + 1);
  v53 = *(&v161 + 1);
  if (!*(&v159 + 1))
  {
    if (!*(&v161 + 1))
    {
      v113 = v25;
      v116 = v27;
      v122 = v26;
      v125 = v28;
      v119 = v29;
      v108 = v6;
      v128 = v8;
      v105 = v7;
      v131 = v10;
      v98 = v9;
      v93 = v30;
      v96 = v31;
      v134 = v11;
      v73 = *(a1 + 7);
      v74 = *(a1 + 11);
      v149 = *(a1 + 9);
      v150 = v74;
      v75 = a1[13];
      v147 = *(a1 + 5);
      v148 = v73;
      v151 = v75;
      sub_1C0823F0C(v158, &v142);
      sub_1C0823F0C(v160, &v142);
      sub_1C05145B4(&v147, &qword_1EBE1F788, &unk_1C0999A60);
      goto LABEL_29;
    }

    v66 = a2;
    v58 = a1;
    sub_1C0823F0C(v158, &v147);
    sub_1C0823F0C(v160, &v147);
LABEL_27:
    v67 = *(v58 + 7);
    v68 = *(v58 + 11);
    v149 = *(v58 + 9);
    v150 = v68;
    v69 = v58[13];
    v147 = *(v58 + 5);
    v148 = v67;
    *&v151 = v69;
    *(&v151 + 1) = v52;
    v70 = *(v66 + 7);
    v71 = *(v66 + 11);
    v154 = *(v66 + 9);
    v155 = v71;
    v72 = v66[13];
    v152 = *(v66 + 5);
    v153 = v70;
    v156 = v72;
    v157 = v53;
    sub_1C05145B4(&v147, &qword_1EBE20050, &qword_1C09A7AC8);
    return 0;
  }

  v54 = v12;
  v55 = a1[13];
  v56 = *(a1 + 7);
  v57 = *(a1 + 11);
  v149 = *(a1 + 9);
  v150 = v57;
  v58 = a1;
  v147 = *(a1 + 5);
  v148 = v56;
  *&v151 = v55;
  *(&v151 + 1) = *(&v159 + 1);
  v144 = v149;
  v145 = v57;
  v142 = v147;
  v143 = v56;
  v146 = v151;
  if (!*(&v161 + 1))
  {
    v66 = a2;
    v139 = v149;
    v140 = v150;
    v141 = v151;
    v137 = v147;
    v138 = v148;
    sub_1C0823F0C(v158, v136);
    sub_1C0823F0C(v160, v136);
    sub_1C0823F0C(&v147, v136);
    sub_1C08271DC(&v137);
    goto LABEL_27;
  }

  v113 = v25;
  v116 = v27;
  v122 = v26;
  v125 = v28;
  v119 = v29;
  v108 = v6;
  v128 = v8;
  v105 = v7;
  v131 = v10;
  v98 = v9;
  v93 = v30;
  v96 = v31;
  v134 = v11;
  v59 = *(a2 + 7);
  v60 = *(a2 + 11);
  v139 = *(a2 + 9);
  v140 = v60;
  v61 = a2[13];
  v137 = *(a2 + 5);
  v138 = v59;
  *&v141 = v61;
  *(&v141 + 1) = *(&v161 + 1);
  matched = _s12SiriOntology9MatchInfoV2eeoiySbAC_ACtFZ_0(&v142, &v137);
  v135[2] = v139;
  v135[3] = v140;
  v135[4] = v141;
  v135[0] = v137;
  v135[1] = v138;
  sub_1C0823F0C(v158, v136);
  sub_1C0823F0C(v160, v136);
  sub_1C0823F0C(&v147, v136);
  sub_1C08271DC(v135);
  v136[2] = v144;
  v136[3] = v145;
  v136[4] = v146;
  v136[0] = v142;
  v136[1] = v143;
  sub_1C08271DC(v136);
  v63 = *(v58 + 7);
  v64 = *(v58 + 11);
  v139 = *(v58 + 9);
  v140 = v64;
  v65 = v58[13];
  v137 = *(v58 + 5);
  v138 = v63;
  *&v141 = v65;
  *(&v141 + 1) = v52;
  sub_1C05145B4(&v137, &qword_1EBE1F788, &unk_1C0999A60);
  v12 = v54;
  if ((matched & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if ((sub_1C055B6B8(v108, v24) & 1) == 0)
  {
    return 0;
  }

  if (v128)
  {
    v76 = v110;
    v77 = v112;
    v78 = v134;
    v79 = v98;
    v80 = v131;
    v81 = v119;
    v82 = v125;
    v83 = v116;
    v46 = v122;
    if (!v122)
    {
      return v46;
    }
  }

  else
  {
    v77 = v112;
    v84 = v122;
    if (v105 != v113)
    {
      v84 = 1;
    }

    v76 = v110;
    v78 = v134;
    v79 = v98;
    v80 = v131;
    v81 = v119;
    v82 = v125;
    v83 = v116;
    if (v84)
    {
      return 0;
    }
  }

  if (v80)
  {
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    if (v79 == v83)
    {
      v85 = v82;
    }

    else
    {
      v85 = 1;
    }

    if (v85)
    {
      return 0;
    }
  }

  if ((sub_1C055B824(v78, v81) & 1) == 0)
  {
    return 0;
  }

  if (v76)
  {
    if (!v96 || (v12 != v93 || v76 != v96) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  if (v14 != 3)
  {
    if (v77 != 3)
    {
      if (v14 == 2)
      {
        if (v77 != 2)
        {
          return 0;
        }
      }

      else if (v77 == 2 || ((v77 ^ v14) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_53;
    }

    return 0;
  }

  if (v77 != 3)
  {
    return 0;
  }

LABEL_53:
  if (v16)
  {
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v33)
    {
      v86 = v34;
    }

    else
    {
      v86 = 1;
    }

    if (v86)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1C0826EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3520;
  if (!qword_1ED5D3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3520);
  }

  return result;
}

unint64_t sub_1C0826F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BCFE0;
  if (!qword_1ED5BCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFE0);
  }

  return result;
}

unint64_t sub_1C0826F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BC888[0];
  if (!qword_1ED5BC888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5BC888);
  }

  return result;
}

unint64_t sub_1C0826FD8()
{
  result = qword_1ED5BC880;
  if (!qword_1ED5BC880)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FED8, &qword_1C09A6A60);
    sub_1C082705C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC880);
  }

  return result;
}

unint64_t sub_1C082705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BCFE8;
  if (!qword_1ED5BCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFE8);
  }

  return result;
}

unint64_t sub_1C08270B0()
{
  result = qword_1ED5BC870;
  if (!qword_1ED5BC870)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FEE0, &qword_1C09A6A68);
    sub_1C0827134(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC870);
  }

  return result;
}

unint64_t sub_1C0827134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BCFD0;
  if (!qword_1ED5BCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFD0);
  }

  return result;
}

unint64_t sub_1C0827188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BCFC8;
  if (!qword_1ED5BCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFC8);
  }

  return result;
}

unint64_t sub_1C082720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3528;
  if (!qword_1ED5D3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3528);
  }

  return result;
}

unint64_t sub_1C0827260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BDEC8;
  if (!qword_1ED5BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEC8);
  }

  return result;
}

unint64_t sub_1C08272B4()
{
  result = qword_1ED5BDEB8;
  if (!qword_1ED5BDEB8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FED8, &qword_1C09A6A60);
    sub_1C0827338(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEB8);
  }

  return result;
}

unint64_t sub_1C0827338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3530;
  if (!qword_1ED5D3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3530);
  }

  return result;
}

unint64_t sub_1C082738C()
{
  result = qword_1ED5BDEA0;
  if (!qword_1ED5BDEA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FEE0, &qword_1C09A6A68);
    sub_1C0827410(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEA0);
  }

  return result;
}

unint64_t sub_1C0827410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34D0;
  if (!qword_1ED5D34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34D0);
  }

  return result;
}

unint64_t sub_1C0827464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D2B10[0];
  if (!qword_1ED5D2B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5D2B10);
  }

  return result;
}

unint64_t sub_1C08274B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FEF8;
  if (!qword_1EBE1FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FEF8);
  }

  return result;
}

unint64_t sub_1C082750C()
{
  result = qword_1EBE1FF08;
  if (!qword_1EBE1FF08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FF00, &qword_1C09A6A80);
    sub_1C0827590(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF08);
  }

  return result;
}

unint64_t sub_1C0827590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF10;
  if (!qword_1EBE1FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF10);
  }

  return result;
}

unint64_t sub_1C08275E4()
{
  result = qword_1EBE1FF20;
  if (!qword_1EBE1FF20)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1FF00, &qword_1C09A6A80);
    sub_1C0827668(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF20);
  }

  return result;
}

unint64_t sub_1C0827668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF28;
  if (!qword_1EBE1FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF28);
  }

  return result;
}

unint64_t sub_1C08276BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF38;
  if (!qword_1EBE1FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF38);
  }

  return result;
}

unint64_t sub_1C0827710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3548[0];
  if (!qword_1ED5D3548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5D3548);
  }

  return result;
}

unint64_t sub_1C08277CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF60;
  if (!qword_1EBE1FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF60);
  }

  return result;
}

unint64_t sub_1C0827820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF68;
  if (!qword_1EBE1FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF68);
  }

  return result;
}

unint64_t sub_1C0827874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF78;
  if (!qword_1EBE1FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF78);
  }

  return result;
}

unint64_t sub_1C08278CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF80;
  if (!qword_1EBE1FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF80);
  }

  return result;
}

unint64_t sub_1C0827924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF88;
  if (!qword_1EBE1FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF88);
  }

  return result;
}

unint64_t sub_1C082797C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF90;
  if (!qword_1EBE1FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF90);
  }

  return result;
}

unint64_t sub_1C08279D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FF98;
  if (!qword_1EBE1FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FF98);
  }

  return result;
}

unint64_t sub_1C0827A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFA0;
  if (!qword_1EBE1FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFA0);
  }

  return result;
}

unint64_t sub_1C0827A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFA8;
  if (!qword_1EBE1FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFA8);
  }

  return result;
}

unint64_t sub_1C0827AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFB0;
  if (!qword_1EBE1FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFB0);
  }

  return result;
}

unint64_t sub_1C0827B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFB8;
  if (!qword_1EBE1FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFB8);
  }

  return result;
}

unint64_t sub_1C0827B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFC0;
  if (!qword_1EBE1FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFC0);
  }

  return result;
}

unint64_t sub_1C0827BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFC8;
  if (!qword_1EBE1FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFC8);
  }

  return result;
}

unint64_t sub_1C0827C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFD0;
  if (!qword_1EBE1FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFD0);
  }

  return result;
}

unint64_t sub_1C0827C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFD8;
  if (!qword_1EBE1FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFD8);
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1C0827D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0827D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C0827E14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0827E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchInfo.MatchSignals(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MatchInfo.MatchSignals(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1C0827F48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1C0827F90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0827FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_1C0828040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PayloadAttachmentInfo(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_1C08281B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFE0;
  if (!qword_1EBE1FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFE0);
  }

  return result;
}

unint64_t sub_1C082820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFE8;
  if (!qword_1EBE1FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFE8);
  }

  return result;
}

unint64_t sub_1C0828264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFF0;
  if (!qword_1EBE1FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFF0);
  }

  return result;
}

unint64_t sub_1C08282BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1FFF8;
  if (!qword_1EBE1FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1FFF8);
  }

  return result;
}

unint64_t sub_1C0828314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20000;
  if (!qword_1EBE20000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20000);
  }

  return result;
}

unint64_t sub_1C082836C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20008;
  if (!qword_1EBE20008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20008);
  }

  return result;
}

unint64_t sub_1C08283C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20010;
  if (!qword_1EBE20010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20010);
  }

  return result;
}

unint64_t sub_1C082841C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3538;
  if (!qword_1ED5D3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3538);
  }

  return result;
}

unint64_t sub_1C0828474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3540;
  if (!qword_1ED5D3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3540);
  }

  return result;
}

unint64_t sub_1C08284CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20018;
  if (!qword_1EBE20018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20018);
  }

  return result;
}

unint64_t sub_1C0828524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20020;
  if (!qword_1EBE20020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20020);
  }

  return result;
}

unint64_t sub_1C082857C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20028;
  if (!qword_1EBE20028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20028);
  }

  return result;
}

unint64_t sub_1C08285D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20030;
  if (!qword_1EBE20030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20030);
  }

  return result;
}

unint64_t sub_1C082862C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3510;
  if (!qword_1ED5D3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3510);
  }

  return result;
}

unint64_t sub_1C0828684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3518;
  if (!qword_1ED5D3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3518);
  }

  return result;
}

uint64_t sub_1C08286D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70416E696769726FLL && a2 == 0xEB00000000644970;
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43656372756F73 && a2 == 0xEF746E656E6F706DLL || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E49686374616DLL && a2 == 0xE90000000000006FLL || (sub_1C095DF3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1C095DF3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E497472617473 && a2 == 0xEA00000000007865 || (sub_1C095DF3C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669 || (sub_1C095DF3C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E456E696769726FLL && a2 == 0xEE00644979746974 || (sub_1C095DF3C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C0A0C8E0 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C0A03120 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1C095DF3C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1C0828A80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C0A0C900 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6353686374616DLL && a2 == 0xEA00000000006572 || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xED0000746E756F43 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0A0C920 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C0A0C940 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C0A0C960 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7473694474696465 && a2 == 0xEC00000065636E61 || (sub_1C095DF3C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7361696C4178616DLL && a2 == 0xED0000746E756F43 || (sub_1C095DF3C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0A0C980 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C0A0C9A0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1C095DF3C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1C0828DCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72745365756C6176 && a2 == 0xEB00000000676E69 || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E4965756C6176 && a2 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C4665756C6176 && a2 == 0xEA00000000007461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C095DF3C();

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

unint64_t sub_1C0828F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20038;
  if (!qword_1EBE20038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20038);
  }

  return result;
}

unint64_t sub_1C0828F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20040;
  if (!qword_1EBE20040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20040);
  }

  return result;
}

unint64_t sub_1C0828FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20048;
  if (!qword_1EBE20048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20048);
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
  a1[3] = sub_1C058BC4C(v2);
  type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.input.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.input.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.path.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.tags.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);

  return sub_1C082EF38(v3, a1);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.value.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);

  return sub_1C082EFA8(a1, v3);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.stringValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  sub_1C082EF38(v0 + *(v4 + 40), v3);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE16D40, &qword_1C09A7AD0);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C082F038(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    return 0;
  }

  return *v3;
}

uint64_t sub_1C0829458@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  sub_1C082EF38(a1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE16D40, &qword_1C09A7AD0);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v10 = *v6;
      v11 = v6[1];
      goto LABEL_7;
    }

    result = sub_1C082F038(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  }

  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_7:
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_1C0829594(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40));

  sub_1C05145B4(v4, &qword_1EBE16D40, &qword_1C09A7AD0);
  *v4 = v3;
  v4[1] = v2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40));
  sub_1C05145B4(v5, &qword_1EBE16D40, &qword_1C09A7AD0);
  *v5 = a1;
  v5[1] = a2;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 0, 1, v6);
}

void (*Com_Apple_Siri_Product_Proto_StatefulValue.stringValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  *(v5 + 48) = v9;
  sub_1C082EF38(v1 + v9, v8);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  *(v5 + 32) = v10;
  v11 = *(v10 - 8);
  *(v5 + 40) = v11;
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16D40, &qword_1C09A7AD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v12 = *v8;
      v13 = v8[1];
      goto LABEL_13;
    }

    sub_1C082F038(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_13:
  *v5 = v12;
  *(v5 + 8) = v13;
  return sub_1C082989C;
}

void sub_1C082989C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = *(*a1 + 12);
  v8 = (*a1)[3];
  v9 = ((*a1)[2] + v7);
  if (a2)
  {

    sub_1C05145B4(v9, &qword_1EBE16D40, &qword_1C09A7AD0);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  else
  {
    sub_1C05145B4((*a1)[2] + v7, &qword_1EBE16D40, &qword_1C09A7AD0);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  free(v8);

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.semanticValue.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  sub_1C082EF38(v1 + *(v6 + 40), v5);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE16D40, &qword_1C09A7AD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C082FE9C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    }

    sub_1C082F038(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0829B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C082FF74(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  sub_1C05145B4(a2 + v7, &qword_1EBE16D40, &qword_1C09A7AD0);
  sub_1C082FE9C(v6, a2 + v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2 + v7, 0, 1, v8);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.semanticValue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D40, &qword_1C09A7AD0);
  sub_1C082FE9C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_StatefulValue.semanticValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  *(v5 + 12) = v12;
  sub_1C082EF38(v1 + v12, v8);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16D40, &qword_1C09A7AD0);
LABEL_15:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    v11[6] = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    return sub_1C0829F58;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C082F038(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_1C082FE9C(v8, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return sub_1C0829F58;
}

void sub_1C0829F58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C082FF74((*a1)[3], v6, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C05145B4(v9 + v5, &qword_1EBE16D40, &qword_1C09A7AD0);
    sub_1C082FE9C(v6, v9 + v5, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1C082F038(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  else
  {
    sub_1C05145B4(v9 + v5, &qword_1EBE16D40, &qword_1C09A7AD0);
    sub_1C082FE9C(v7, v9 + v5, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 44);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 44);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = v2;
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValues.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalState.states.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalState.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082A544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C082A5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082A728@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C082A7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C082A8A4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.domainName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.domainName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.nodeValueListMap.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.mcNodeValueListMap.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C082AB78()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE20058);
  __swift_project_value_buffer(v0, qword_1EBE20058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0973520;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "input";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "confidence";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "inferred";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "path";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tags";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "stringValue";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "semanticValue";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1C082B02C(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_1C082B204(v5, a1, a2, a3);
        }
      }

      else
      {
        sub_1C095D4BC();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1C095D4EC();
      }

      else
      {
        sub_1C095D44C();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1C095D50C();
    }
  }

  return result;
}

uint64_t sub_1C082B02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = (a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40));
  sub_1C082EF38(v9, v8);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_1C05145B4(v8, &qword_1EBE16D40, &qword_1C09A7AD0);
  if (v12 == 1 || (result = sub_1C095D42C(), !v4))
  {
    v16 = 0;
    v17 = 0;
    result = sub_1C095D4FC();
    v14 = v17;
    if (v4)
    {
    }

    else if (v17)
    {
      v15 = v16;
      sub_1C05145B4(v9, &qword_1EBE16D40, &qword_1C09A7AD0);
      *v9 = v15;
      v9[1] = v14;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(v9, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_1C082B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v45 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v46 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v47 = v6;
  v24 = *(v6 + 56);
  v49 = v5;
  v40 = v24;
  v24(&v40 - v22, 1, 1, v5);
  v25 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  v44 = a1;
  sub_1C082EF38(a1 + v25, v12);
  v42 = v14;
  v26 = *(v14 + 48);
  v48 = v13;
  if (v26(v12, 1, v13) == 1)
  {
    v27 = v25;
    sub_1C05145B4(v12, &qword_1EBE16D40, &qword_1C09A7AD0);
    v28 = v49;
    v29 = v50;
  }

  else
  {
    sub_1C082FE9C(v12, v18, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    v32 = v50;
    sub_1C095D42C();
    v29 = v32;
    if (v32)
    {
      sub_1C082F038(v18, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      goto LABEL_8;
    }

    v27 = v25;
    v34 = v45;
    sub_1C082FE9C(v18, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v23, &qword_1EBE16B50, &unk_1C096E0F0);
      v35 = v34;
      v36 = v41;
      sub_1C082FE9C(v35, v41, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C082FE9C(v36, v23, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v28 = v49;
      v40(v23, 0, 1, v49);
    }

    else
    {
      sub_1C082F038(v34, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      v28 = v49;
    }
  }

  sub_1C082F118(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D55C();
  if (v29)
  {
LABEL_8:
    v31 = v23;
    return sub_1C05145B4(v31, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  v30 = v46;
  sub_1C082FF04(v23, v46);
  if ((*(v47 + 48))(v30, 1, v28) != 1)
  {
    v37 = v43;
    sub_1C082FE9C(v30, v43, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v38 = v44;
    sub_1C05145B4(v44 + v27, &qword_1EBE16D40, &qword_1C09A7AD0);
    sub_1C082FE9C(v37, v38 + v27, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v39 = v48;
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v27, 0, 1, v39);
  }

  v31 = v30;
  return sub_1C05145B4(v31, &qword_1EBE16B50, &unk_1C096E0F0);
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *(v3 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_1C095D66C(), !v4))
  {
    v15 = *(v3 + 24);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_1C095D66C(), !v4))
    {
      if (*(v3 + 32) == 0.0 || (result = sub_1C095D65C(), !v4))
      {
        if (*(v3 + 40) != 1 || (result = sub_1C095D5FC(), !v4))
        {
          if (!*(*(v3 + 48) + 16) || (result = sub_1C095D64C(), !v4))
          {
            if (!*(*(v3 + 56) + 16) || (result = sub_1C095D64C(), !v4))
            {
              v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
              sub_1C082EF38(v5 + *(v17 + 40), v11);
              v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
              if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
              {
                return sub_1C095D36C();
              }

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1C082BB94(v5, a1, a2, a3);
                result = sub_1C082F038(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
                if (!v4)
                {
                  return sub_1C095D36C();
                }
              }

              else
              {
                sub_1C082F038(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
                result = sub_1C082BA28(v5, a1, a2, a3);
                if (!v4)
                {
                  return sub_1C095D36C();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C082BA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  sub_1C082EF38(a1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16D40, &qword_1C09A7AD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C095D66C();
  }

  result = sub_1C082F038(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C082BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
  sub_1C082EF38(a1 + *(v11 + 40), v7);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16D40, &qword_1C09A7AD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C082FE9C(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C082F118(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C095D6AC();
    return sub_1C082F038(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  result = sub_1C082F038(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1C082BE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = v3;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C082BF38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C082C000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20190, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082C0A0(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE0FC68, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082C10C(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE0FC68, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_StatefulValues.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0), sub_1C082F118(&qword_1EBE0FC68, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue), result = sub_1C095D69C(), !v4))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C082C3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20188, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082C478(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE0FC58, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082C4E4(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE0FC58, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues);

  return sub_1C095D5AC();
}

uint64_t sub_1C082C594()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE20088);
  __swift_project_value_buffer(v0, qword_1EBE20088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "states";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D48C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0);
        sub_1C082F118(&qword_1EBE0FC68, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C095D62C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0), sub_1C082F118(&qword_1EBE0FC68, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValue), result = sub_1C095D69C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_MultiCardinalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_1C0561484(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082CA80@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082CAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20180, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalState);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082CB9C(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE200F8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalState);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082CC08(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE200F8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalState);

  return sub_1C095D5AC();
}

uint64_t sub_1C082CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1C0561484(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082CD58()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE200A0);
  __swift_project_value_buffer(v0, qword_1EBE200A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nodeName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stateValues";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C095D50C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0);
        sub_1C082F118(&qword_1EBE200F8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalState);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState(0), sub_1C082F118(&qword_1EBE200F8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalState), result = sub_1C095D69C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0);
  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082D26C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082D2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20178, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082D38C(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE20108, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082D3F8(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE20108, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo);

  return sub_1C095D5AC();
}

uint64_t sub_1C082D474(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C095DF3C() & 1) == 0 || (sub_1C05606D0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082D568(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C096E0C0;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "values";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69D26E0];
  v9 = sub_1C095D6BC();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_1C095D6CC();
}

uint64_t sub_1C082D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C082F118(a5, a6, a7);
      sub_1C095D54C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo(0), sub_1C082F118(&qword_1EBE20108, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombo), result = sub_1C095D69C(), !v4))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C082D93C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082DA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20170, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082DB28(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE20118, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082DB94(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE20118, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);

  return sub_1C095D5AC();
}

uint64_t sub_1C082DC28(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082DCF0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE200D0);
  __swift_project_value_buffer(v0, qword_1EBE200D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domainName";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nodeValueListMap";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mcNodeValueListMap";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C082E0D4(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C082DFDC(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C095D50C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C082DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C095D34C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
  sub_1C082F118(&qword_1EBE0FC58, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues);
  sub_1C082F118(&qword_1EBE0FC50, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues);
  return sub_1C095D3FC();
}

uint64_t sub_1C082E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C095D34C();
  type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
  sub_1C082F118(&qword_1EBE20118, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
  sub_1C082F118(&qword_1EBE20110, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
  return sub_1C095D3FC();
}

uint64_t Com_Apple_Siri_Product_Proto_NLState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    if (!*(v3[2] + 16) || (sub_1C095D34C(), type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0), sub_1C082F118(&qword_1EBE0FC58, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues), sub_1C082F118(&qword_1EBE0FC50, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_StatefulValues), result = sub_1C095D5BC(), !v4))
    {
      if (!*(v3[3] + 16) || (sub_1C095D34C(), type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0), sub_1C082F118(&qword_1EBE20118, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos), sub_1C082F118(&qword_1EBE20110, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos), result = sub_1C095D5BC(), !v4))
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C082E450(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C082F118(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C082E4D8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
  a1[3] = sub_1C058BC4C(v2);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C082E584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C082F118(&qword_1EBE20168, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NLState);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C082E624(uint64_t a1)
{
  v2 = sub_1C082F118(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NLState);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C082E690(uint64_t a1, uint64_t a2)
{
  sub_1C082F118(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NLState);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_StatefulValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D48, &qword_1C0970410);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || (sub_1C055B098(*(a1 + 48), *(a2 + 48)) & 1) == 0 || (sub_1C055B098(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue(0) + 40);
  v15 = *(v11 + 48);
  sub_1C082EF38(a1 + v14, v13);
  sub_1C082EF38(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16D40, &qword_1C09A7AD0);
LABEL_19:
      sub_1C095D38C();
      sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v17 = sub_1C095D73C();
      return v17 & 1;
    }

    goto LABEL_15;
  }

  sub_1C082EF38(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C082F038(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
LABEL_15:
    sub_1C05145B4(v13, &qword_1EBE16D48, &qword_1C0970410);
    goto LABEL_16;
  }

  sub_1C082FE9C(&v13[v15], v7, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  v19 = _s12SiriOntology010Com_Apple_A28_Product_Proto_StatefulValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1C082F038(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  sub_1C082F038(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  sub_1C05145B4(v13, &qword_1EBE16D40, &qword_1C09A7AD0);
  if (v19)
  {
    goto LABEL_19;
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_StatefulValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D38, &unk_1C0970400);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = (&v24 + *(v14 + 56) - v15);
  sub_1C082FF74(a1, &v24 - v15, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  sub_1C082FF74(a2, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C082FF74(v16, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
    v20 = *v12;
    v19 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v20 == *v17 && v19 == v17[1])
      {
      }

      else
      {
        v22 = sub_1C095DF3C();

        if ((v22 & 1) == 0)
        {
          sub_1C082F038(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
          goto LABEL_8;
        }
      }

      sub_1C082F038(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
      v18 = 1;
      return v18 & 1;
    }

LABEL_7:
    sub_1C05145B4(v16, &qword_1EBE16D38, &unk_1C0970400);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  sub_1C082FF74(v16, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C082F038(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    goto LABEL_7;
  }

  sub_1C082FE9C(v17, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v18 = static Com_Apple_Siri_Product_Proto_SemanticValue.== infix(_:_:)(v10, v6);
  sub_1C082F038(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C082F038(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C082F038(v16, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value);
  return v18 & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A22_Product_Proto_NLStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C095DF3C() & 1) == 0 || (sub_1C056AB64(a1[2], a2[2]) & 1) == 0 || (sub_1C056BC6C(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  sub_1C095D38C();
  sub_1C082F118(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C082EF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C082EFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C082F038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C082F118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C082F848(uint64_t a1)
{
  sub_1C0820804();
  if (v1 <= 0x3F)
  {
    sub_1C082F9EC(319, &qword_1EBE15168, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValue.OneOf_Value, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C095D38C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C082F938(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C082F9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_1C082FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1C082F9EC(319, a5, a6, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    sub_1C095D38C();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C082FC8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C082F9EC(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C095D38C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C082FD54(uint64_t a1)
{
  sub_1C082FE38(319, &unk_1EBE0FDE0, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
  if (v1 <= 0x3F)
  {
    sub_1C082FE38(319, &qword_1EBE0FDD8, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
    if (v2 <= 0x3F)
    {
      sub_1C095D38C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C082FE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C095D6FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C082FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C082FF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C082FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Edge.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t Edge.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Edge.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[7];
  MEMORY[0x1C68DDEC0](*v1);
  MEMORY[0x1C68DDEC0](v2);
  sub_1C095E01C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (!v3)
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  if (!*(v3 + 24))
  {
    return sub_1C095E00C();
  }

  sub_1C095E00C();
  sub_1C095D7BC();
  sub_1C095D7BC();
  sub_1C095D7BC();

  return sub_1C095D7BC();
}

uint64_t Edge.hashValue.getter()
{
  sub_1C095DFEC();
  Edge.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C08301E8()
{
  sub_1C095DFEC();
  Edge.hash(into:)(v1);
  return sub_1C095E03C();
}

uint64_t sub_1C083022C(uint64_t a1)
{
  sub_1C095DFEC();
  Edge.hash(into:)(v2);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology4EdgeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v6 = *(a2 + 48);
    v5 = *(a2 + 56);
    v8 = *(a2 + 32);
    v7 = *(a2 + 40);
    v9 = *(a2 + 24);
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16[0] = *(a1 + 24);
    v16[1] = v13;
    v16[2] = v12;
    v16[3] = v11;
    v16[4] = v10;
    v15[0] = v9;
    v15[1] = v8;
    v15[2] = v7;
    v15[3] = v6;
    v15[4] = v5;

    v4 = sub_1C051D4D0(v16, v15);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1C0830378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE20198;
  if (!qword_1EBE20198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE20198);
  }

  return result;
}

uint64_t sub_1C08303CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C0830414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AddressOntologyNode.CrossStreetJoin.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_1C0830500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE201A0;
  if (!qword_1EBE201A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE201A0);
  }

  return result;
}

uint64_t sub_1C0830554()
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C08305D8(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();
  return sub_1C095E03C();
}

uint64_t sub_1C0830634@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C095DD6C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1C08306B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C08306D8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C08306D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE201A8;
  if (!qword_1EBE201A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE201A8);
  }

  return result;
}

unint64_t sub_1C0830730()
{
  result = qword_1EBE201B0;
  if (!qword_1EBE201B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE201B8, &qword_1C09A86B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE201B0);
  }

  return result;
}

unint64_t sub_1C08307A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C08307CC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C08307CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE201C0;
  if (!qword_1EBE201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE201C0);
  }

  return result;
}

void siri::ontology::CompactIdToSetMap::initWithIdToSetMap(std::vector<int> *a1, void *a2)
{
  v4 = a2[2];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v6 <= *(v4 + 4))
      {
        v6 = *(v4 + 4);
      }

      v5 += *(v4 + 12);
      v4 = *v4;
    }

    while (v4);
    v7 = (v6 + 1);
    v8 = v5;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  __x = 0;
  std::vector<int>::resize(a1 + 1, v7, &__x);
  begin = a1->__begin_;
  end = a1->__end_;
  v11 = end - a1->__begin_;
  if (v8 > v11)
  {
    v12 = v8 - v11;
    value = a1->__end_cap_.__value_;
    if (v12 > value - end)
    {
      if (!(v8 >> 62))
      {
        v14 = value - begin;
        v15 = v14 >> 1;
        if (v14 >> 1 <= v8)
        {
          v15 = v8;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v16);
      }

LABEL_61:
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1->__end_, 4 * v12);
    v17 = &end[v12];
    goto LABEL_20;
  }

  if (v8 < v11)
  {
    v17 = &begin[v8];
LABEL_20:
    a1->__end_ = v17;
  }

  v19 = a1[1].__begin_;
  v18 = a1[1].__end_;
  if (v18 == v19)
  {
    return;
  }

  v20 = 0;
  do
  {
    v22 = a1->__begin_;
    v21 = a1->__end_;
    v23 = v21 - a1->__begin_;
    v19[v20] = v23 >> 2;
    v24 = a2[1];
    if (!*&v24)
    {
      goto LABEL_59;
    }

    v25 = vcnt_s8(v24);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = v20;
      if (*&v24 <= v20)
      {
        v26 = v20 % *&v24;
      }
    }

    else
    {
      v26 = (*&v24 + 0x7FFFFFFFFFFFFFFFLL) & v20;
    }

    v27 = *(*a2 + 8 * v26);
    if (!v27)
    {
      goto LABEL_59;
    }

    v28 = *v27;
    if (!v28)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v29 = v28[1];
      if (v29 == v20)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v29 >= *&v24)
        {
          v29 %= *&v24;
        }
      }

      else
      {
        v29 &= *&v24 - 1;
      }

      if (v29 != v26)
      {
        goto LABEL_59;
      }

LABEL_38:
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_59;
      }
    }

    if (v20 != *(v28 + 4))
    {
      goto LABEL_38;
    }

    v30 = v28[5];
    if (!v30)
    {
      goto LABEL_58;
    }

    v31 = -1;
    v32 = 4;
    v33 = v28[5];
    do
    {
      v34 = v31;
      v35 = v32;
      v33 = *v33;
      ++v31;
      v32 += 4;
    }

    while (v33);
    v36 = a1->__end_cap_.__value_;
    if (v31 < v36 - v21)
    {
      do
      {
        *v21++ = *(v30 + 4);
        v30 = *v30;
      }

      while (v30);
      a1->__end_ = v21;
      goto LABEL_58;
    }

    v37 = v34 + 2;
    v38 = v34 + 2 + (v23 >> 2);
    if (v38 >> 62)
    {
      goto LABEL_61;
    }

    v39 = v36 - v22;
    v40 = (v36 - v22) >> 1;
    if (v40 > v38)
    {
      v38 = v40;
    }

    if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v41 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v38;
    }

    if (v41)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v41);
    }

    v42 = v22 + v23;
    v43 = 4 * (v23 >> 2);
    v44 = (v43 + 4 * v37);
    v45 = v43;
    do
    {
      *v45++ = *(v30 + 4);
      v30 = *v30;
      v35 -= 4;
    }

    while (v35);
    memcpy(v44, v42, a1->__end_ - v21);
    v46 = a1->__begin_;
    v47 = &v44[(a1->__end_ - v21)];
    a1->__end_ = v42;
    v48 = (v43 - (v21 - v46));
    memcpy(v48, v46, v21 - v46);
    v49 = a1->__begin_;
    a1->__begin_ = v48;
    a1->__end_ = v47;
    a1->__end_cap_.__value_ = 0;
    if (v49)
    {
      operator delete(v49);
    }

LABEL_58:
    std::__sort<std::__less<int,int> &,int *>();
    v19 = a1[1].__begin_;
    v18 = a1[1].__end_;
LABEL_59:
    ++v20;
  }

  while (v20 < v18 - v19);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = (value - begin) >> 1;
        if (v9 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v10);
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = *__x;
    v13 = (v6 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v6 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = end + 2;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1C0999D30)));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        *(v16 - 1) = v12;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1C09A8730)))).i32[1])
      {
        *v16 = v12;
        v16[1] = v12;
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81186D8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t siri::ontology::CompactIdToSetMap::getSetForKey(siri::ontology::CompactIdToSetMap *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = (*(this + 4) - v2) >> 2;
  if (v3 <= a2)
  {
    return 0;
  }

  if (v3 <= a2)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return *this + 4 * *(v2 + 4 * a2);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E81186E0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

siri::ontology::UsoGraph *std::unique_ptr<siri::ontology::UsoGraph>::reset[abi:ne200100](siri::ontology::UsoGraph **a1, siri::ontology::UsoGraph *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    siri::ontology::UsoGraph::~UsoGraph(result);

    JUMPOUT(0x1C68DE200);
  }

  return result;
}

void siri::ontology::OntologyNodeName::~OntologyNodeName(void **this)
{
  *this = &unk_1F3FA5320;
  siri::ontology::OntologyUnitMetaData<2ul,4ul>::~OntologyUnitMetaData(this + 5);
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1C68DE200);
}

uint64_t *siri::ontology::OntologyUnitMetaData<2ul,4ul>::~OntologyUnitMetaData(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x1C68DE1E0](v2, 0x1000C8052888210);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    MEMORY[0x1C68DE1E0](v3, 0x1000C8000313F17);
  }

  return a1;
}

void siri::ontology::OntologyNodeName::~OntologyNodeName(siri::ontology::OntologyNodeName *this)
{
  *this = &unk_1F3FA5320;
  siri::ontology::OntologyUnitMetaData<2ul,4ul>::~OntologyUnitMetaData(this + 5);
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void siri::ontology::OntologyVerbName::~OntologyVerbName(siri::ontology::OntologyVerbName *this)
{
  *this = &unk_1F3FA5108;
  siri::ontology::OntologyUnitMetaData<2ul,4ul>::~OntologyUnitMetaData(this + 8);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA5108;
  siri::ontology::OntologyUnitMetaData<2ul,4ul>::~OntologyUnitMetaData(this + 8);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void siri::ontology::OntologyTaskName::~OntologyTaskName(void **this)
{
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void siri::ontology::OntologyEdgeName::~OntologyEdgeName(void **this)
{
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA5348;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

BOOL siri::ontology::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 8) : *(a1 + 8);
  v9 = v7 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  v12 = *(a2 + 63);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 48);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v16 = *(a1 + 40);
  v15 = (a1 + 40);
  v14 = v16;
  if (v10 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v20 = *(a2 + 40);
  v19 = (a2 + 40);
  v18 = v20;
  if (v13 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  return memcmp(v17, v21, v11) == 0;
}

{
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

BOOL siri::ontology::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  v3 = *(a2 + 36);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v6 = *(a2 + 8);
  v4 = a2 + 8;
  v5 = v6;
  v7 = *(v4 + 23);
  v10 = *(a1 + 8);
  v8 = a1 + 8;
  v9 = v10;
  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  if (v11 < 0)
  {
    v8 = v9;
  }

  if (v7 >= 0)
  {
    v13 = *(v4 + 23);
  }

  else
  {
    v13 = *(v4 + 8);
  }

  if (v7 < 0)
  {
    v4 = v5;
  }

  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v8, v4, v14);
  if (v15)
  {
    return v15 < 0;
  }

  else
  {
    return v12 < v13;
  }
}

BOOL siri::ontology::OntologyNodeName::existArgumentToEntity(siri::ontology::OntologyNodeName *this, int a2, int a3)
{
  v3 = *(this + 5);
  v4 = *(this + 14);
  v5 = &v3[2 * v4];
  if (v4)
  {
    v6 = *(this + 14);
    do
    {
      v7 = v6 >> 1;
      v8 = &v3[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v3 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v11 = *(this + 15);
  if (v3 != v5 && *v3 == a2)
  {
    return v3[1] == a3;
  }

  v12 = &v5[2 * (v11 - v4)];
  if (v11 == v4)
  {
    v3 = v5;
  }

  else
  {
    v13 = v11 - v4;
    v3 = v5;
    do
    {
      v14 = v13 >> 1;
      v15 = &v3[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 1;
      v13 += ~(v13 >> 1);
      if (v17 < a2)
      {
        v3 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
  }

  return v3 != v12 && *v3 == a2 && v3[1] == a3;
}

BOOL siri::ontology::OntologyNodeName::existSetArgumentToEntity(siri::ontology::OntologyNodeName *this, int a2, int a3)
{
  v3 = *(this + 14);
  v4 = (*(this + 5) + 8 * v3);
  v5 = *(this + 15) - v3;
  v6 = &v4[2 * v5];
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v4[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 1;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v4 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return v4 != v6 && *v4 == a2 && v4[1] == a3;
}

BOOL siri::ontology::OntologyNodeName::hasArgument(siri::ontology::OntologyNodeName *this, int a2)
{
  v2 = *(this + 5);
  v3 = *(this + 14);
  v4 = &v2[2 * v3];
  if (v3)
  {
    do
    {
      v5 = v3 >> 1;
      v6 = &v2[2 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 1;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    while (v3);
  }

  if (v2 == v4 || *v2 != a2)
  {
    v2 = v4;
  }

  return v2 != v4;
}

BOOL siri::ontology::OntologyNodeName::hasSetArgument(siri::ontology::OntologyNodeName *this, int a2)
{
  v2 = *(this + 14);
  v3 = (*(this + 5) + 8 * v2);
  v4 = *(this + 15) - v2;
  v5 = &v3[2 * v4];
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v3[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v3 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  if (v3 == v5 || *v3 != a2)
  {
    v3 = v5;
  }

  return v3 != v5;
}

BOOL siri::ontology::OntologyNodeName::hasVerb(siri::ontology::OntologyNodeName *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 16);
  v4 = &v2[v3];
  if (v3)
  {
    do
    {
      v5 = v3 >> 1;
      v6 = &v2[v3 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v3 += ~(v3 >> 1);
      v10 = __OFSUB__(v8, a2);
      v9 = v8 - a2 < 0;
      if (v8 >= a2)
      {
        v3 = v5;
      }

      if (v9 != v10)
      {
        v2 = v7;
      }
    }

    while (v3);
  }

  return v2 != v4 && *v2 <= a2;
}

uint64_t siri::ontology::OntologyNodeName::getOriginEntityForDefinedValue(siri::ontology::OntologyNodeName *this)
{
  if (*(this + 8) != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "OntologyException");
    std::operator+<char>();
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v5, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/OntologyUnitName.cpp", 79, "getOriginEntityForDefinedValue", v4);
  }

  v1 = *(this + 16);
  if (*(this + 17) - v1 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "OntologyException");
    std::operator+<char>();
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v5, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/OntologyUnitName.cpp", 84, "getOriginEntityForDefinedValue", v3);
  }

  return *(*(this + 6) + 4 * v1);
}

void sub_1C0832F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(__int128 *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = a3;
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v12, a2);
  std::string::basic_string[abi:ne200100]<0>(&v11, a4);
  siri::ontology::OntologyBaseException::OntologyBaseException(exception, a1, v12, v7, &v11, a5);
  *exception = &unk_1F3FA5460;
}

void sub_1C0833018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void siri::ontology::OntologyBaseException::~OntologyBaseException(std::exception *this)
{
  this->__vftable = &unk_1F3FA5488;
  if (SHIBYTE(this[13].__vftable) < 0)
  {
    operator delete(this[11].__vftable);
  }

  if (SHIBYTE(this[10].__vftable) < 0)
  {
    operator delete(this[8].__vftable);
  }

  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  siri::ontology::OntologyBaseException::~OntologyBaseException(this);

  JUMPOUT(0x1C68DE200);
}

uint64_t siri::ontology::OntologyBaseException::what(siri::ontology::OntologyBaseException *this)
{
  result = this + 88;
  if (*(this + 111) < 0)
  {
    return *result;
  }

  return result;
}

void siri::ontology::OntologyException::~OntologyException(std::exception *this)
{
  siri::ontology::OntologyBaseException::~OntologyBaseException(this);

  JUMPOUT(0x1C68DE200);
}

BOOL siri::ontology::OntologyNodeName::hasDefinedValue(siri::ontology::OntologyNodeName *this, int a2)
{
  v2 = *(this + 17);
  v3 = (*(this + 6) + 4 * v2);
  v4 = *(this + 18) - v2;
  v5 = &v3[v4];
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v3[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      v12 = __OFSUB__(v10, a2);
      v11 = v10 - a2 < 0;
      if (v10 >= a2)
      {
        v6 = v7;
      }

      if (v11 != v12)
      {
        v3 = v9;
      }
    }

    while (v6);
  }

  return v3 != v5 && *v3 <= a2;
}

BOOL siri::ontology::OntologyNodeName::hasOperator(siri::ontology::OntologyNodeName *this, int a2)
{
  v2 = *(this + 18);
  v3 = (*(this + 6) + 4 * v2);
  v4 = *(this + 19) - v2;
  v5 = &v3[v4];
  if (v4)
  {
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v3[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      v12 = __OFSUB__(v10, a2);
      v11 = v10 - a2 < 0;
      if (v10 >= a2)
      {
        v6 = v7;
      }

      if (v11 != v12)
      {
        v3 = v9;
      }
    }

    while (v6);
  }

  return v3 != v5 && *v3 <= a2;
}

BOOL siri::ontology::OntologyVerbName::existArgumentToEntity(siri::ontology::OntologyVerbName *this, int a2, int a3)
{
  v3 = *(this + 8);
  v4 = *(this + 20);
  v5 = &v3[2 * v4];
  if (v4)
  {
    do
    {
      v6 = v4 >> 1;
      v7 = &v3[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 1;
      v4 += ~(v4 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v4 = v6;
      }
    }

    while (v4);
  }

  return v3 != v5 && *v3 == a2 && v3[1] == a3;
}

BOOL siri::ontology::OntologyVerbName::hasArgument(siri::ontology::OntologyVerbName *this, int a2)
{
  v2 = *(this + 8);
  v3 = *(this + 20);
  v4 = &v2[2 * v3];
  if (v3)
  {
    do
    {
      v5 = v3 >> 1;
      v6 = &v2[2 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 1;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    while (v3);
  }

  if (v2 == v4 || *v2 != a2)
  {
    v2 = v4;
  }

  return v2 != v4;
}

void sub_1C0834990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  if (a20)
  {
    std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](a20);
  }

  if ((a66 & 1) != 0 && a65 < 0)
  {
    operator delete(__p);
  }

  if ((a69 & 1) != 0 && a68 < 0)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C68DE200);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1C0835154(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<siri::ontology::SpanProperty>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<siri::ontology::SpanProperty>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<siri::ontology::SpanProperty>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 48) == 1 && *(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68DE200](v2, 0x1012C40785BF0B2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<siri::ontology::AsrAlternative>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x1C68DE200);
}

uint64_t *std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 176) == 1 && *(v2 + 175) < 0)
    {
      operator delete(*(v2 + 152));
    }

    v5 = (v2 + 128);
    std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v2 + 88);
    std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(v2 + 80) == 1)
    {
      v3 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v3)
      {
        std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v3);
      }
    }

    if (*(v2 + 64) == 1 && *(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68DE200](v2, 0x1032C403F51C822);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<siri::ontology::SpanProperty>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 siri::ontology::UsoEntitySpan::UsoEntitySpan(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 *a9, __n128 *a10)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = a3;
  *(a1 + 64) = 0;
  if (*(a4 + 24) == 1)
  {
    v11 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v11;
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a5 + 8) == 1)
  {
    v12 = *a5;
    *a5 = 0;
    *(a1 + 72) = v12;
    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *a6;
  *(a1 + 104) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 112) = a7;
  *(a1 + 120) = a8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  result = *a9;
  *(a1 + 128) = *a9;
  *(a1 + 144) = a9[1].n128_u64[0];
  *a9 = 0uLL;
  a9[1].n128_u64[0] = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (a10[1].n128_u8[8] == 1)
  {
    result = *a10;
    *(a1 + 168) = a10[1].n128_u64[0];
    *(a1 + 152) = result;
    *(a10 + 8) = 0uLL;
    a10->n128_u64[0] = 0;
    *(a1 + 176) = 1;
  }

  return result;
}

void std::vector<siri::ontology::MatchInfo::AliasType>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void sub_1C0835808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v34 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_1C0835C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1C0835E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t **a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    siri::ontology::OntologyBaseException::OntologyBaseException(&a9, exception_ptr);
    a9 = &unk_1F3FA5460;
    __cxa_begin_catch(a1);
    if (a25 >= 0)
    {
      v28 = &a20;
    }

    else
    {
      v28 = a20;
    }

    [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:@"OntologyException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v29);
  }

  _Unwind_Resume(a1);
}

siri::ontology::OntologyBaseException *siri::ontology::OntologyBaseException::OntologyBaseException(siri::ontology::OntologyBaseException *this, const siri::ontology::OntologyBaseException *a2)
{
  *this = &unk_1F3FA5488;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  *(this + 14) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  return this;
}

void sub_1C0835FF0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_1C083617C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t **a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    siri::ontology::OntologyBaseException::OntologyBaseException(&__p, exception_ptr);
    __p = &unk_1F3FA5460;
    __cxa_begin_catch(a1);
    if (a28 >= 0)
    {
      v33 = &a23;
    }

    else
    {
      v33 = a23;
    }

    [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:@"OntologyException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1C0836728(_Unwind_Exception *a1)
{
  MEMORY[0x1C68DE200](v2, 0x10A0C403D23BABBLL);

  _Unwind_Resume(a1);
}

uint64_t siri::ontology::UsoOperatorNode::checkValidOntologyNameType(uint64_t this)
{
  if ((*(*(this + 24) + 32) - 5) > 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v1, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v1, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 767, "checkValidOntologyNameType", "UsoOperatorNode can only take OPERATOR, LIST_OPERATOR ontology name types");
  }

  return this;
}

void sub_1C0838E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(__int128 *a1, char *a2, uint64_t a3, char *a4, char *a5)
{
  v7 = a3;
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v13, a2);
  std::string::basic_string[abi:ne200100]<0>(v12, a4);
  std::string::basic_string[abi:ne200100]<0>(v11, a5);
  siri::ontology::OntologyBaseException::OntologyBaseException(exception, a1, v13, v7, v12, v11);
  *exception = &unk_1F3FA5460;
}

void sub_1C0838F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

uint64_t siri::ontology::UsoOperatorNode::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    result = siri::ontology::operator==(*(a1 + 24), *(result + 24));
    if (result)
    {
      return *(a1 + 16) == *(lpsrc + 2);
    }
  }

  return result;
}

void siri::ontology::UsoOperatorNode::toString(siri::ontology::UsoOperatorNode *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 3);
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    *a2 = *(v2 + 8);
  }
}

void sub_1C0839278(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoGraph::addNode(void *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  *__p = 0u;
  v35 = 0u;
  *v33 = 0u;
  v36 = v4;
  v6 = v5[4];
  if (v6 >= v5[5])
  {
    v7 = std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::__emplace_back_slow_path<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>(v5 + 3, v33);
    v8 = __p[1];
    v5[4] = v7;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v6[2] = 0;
    v6[3] = 0;
    *v6 = 0;
    v6[1] = 0;
    v33[1] = 0;
    __p[0] = 0;
    v33[0] = 0;
    v6[4] = 0;
    v6[5] = 0;
    v6[6] = v4;
    v5[4] = v6 + 7;
  }

  if (v33[0])
  {
    operator delete(v33[0]);
  }

  v9 = *a2;
  *(v9 + 16) = 0x6DB6DB6DB6DB6DB7 * ((v5[4] - v5[3]) >> 3) - 1;
  v10 = 0x9DDFEA08EB382D69 * ((8 * (v9 & 0x1FFFFFFF) + 8) ^ HIDWORD(v9));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = a1[7];
  if (!*&v13)
  {
    goto LABEL_24;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = v12 & (*&v13 - 1);
  }

  v16 = *(a1[6] + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v12)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= *&v13)
      {
        v18 %= *&v13;
      }
    }

    else
    {
      v18 &= *&v13 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if (v17[2] != v9)
  {
    goto LABEL_23;
  }

  v20 = a1[4];
  v19 = a1[5];
  if (v20 >= v19)
  {
    v23 = a1[3];
    v24 = v20 - v23;
    v25 = (v20 - v23) >> 3;
    v26 = v25 + 1;
    if ((v25 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v27 = v19 - v23;
    if (v27 >> 2 > v26)
    {
      v26 = v27 >> 2;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      if (!(v28 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = v25;
    v30 = (8 * v25);
    v31 = *a2;
    *a2 = 0;
    v32 = &v30[-v29];
    *v30 = v31;
    v22 = v30 + 1;
    memcpy(v32, v23, v24);
    a1[3] = v32;
    a1[4] = v22;
    a1[5] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v21 = *a2;
    *a2 = 0;
    *v20 = v21;
    v22 = v20 + 8;
  }

  a1[4] = v22;
}

uint64_t std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::__emplace_back_slow_path<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>(void *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>(v5);
  }

  v6 = 56 * v2;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = *(a2 + 24);
  v7 = *(a2 + 48);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v6 + 48) = v7;
  *&v15 = 56 * v2 + 56;
  v8 = a1[1];
  v9 = (56 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>,boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v15;
  *(a1 + 1) = v15;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v14[0] = v10;
  v14[1] = v10;
  std::__split_buffer<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex> &>::~__split_buffer(v14);
  return v13;
}

uint64_t boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex::~stored_vertex(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>,boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      v7 = *(v6 + 48);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      a4[6] = v7;
      v6 += 56;
      a4 += 7;
    }

    while (v6 != a3);
    do
    {
      std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>::destroy[abi:ne200100](v5);
      v5 += 56;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>::destroy[abi:ne200100](i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void siri::ontology::UsoGraph::addSuccessors(siri::ontology::UsoGraph *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphNode *a3)
{
  if (!std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::find<siri::ontology::UsoGraphNode const*>(this + 6, a2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "OntologyException");
    (*(a2->var0 + 6))(&v28, a2);
    v22 = std::string::insert(&v28, 0, "Attempting to process a node not owned by this graph: ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v39 = v22->__r_.__value_.__r.__words[2];
    v38 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v31, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 332, "addSuccessors", &v38);
  }

  if (!std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::find<siri::ontology::UsoGraphNode const*>(this + 6, a3))
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, "OntologyException");
    (*(*a3 + 48))(&v28, a3);
    v24 = std::string::insert(&v28, 0, "Attempting to process a node not owned by this graph: ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v37 = v24->__r_.__value_.__r.__words[2];
    v36 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v31, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 337, "addSuccessors", &v36);
  }

  v26 = this;
  v6 = *this;
  v7 = *(v6 + 24);
  v8 = (v7 + 56 * *(a3 + 2));
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    do
    {
      v11 = *(v9 + 8);
      v31 = *(v11 + 32);
      v32 = *(v11 + 48);
      v33 = &unk_1F3FA5348;
      if (*(v11 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v11 + 64), *(v11 + 72));
      }

      else
      {
        __p = *(v11 + 64);
      }

      v35 = *(v11 + 88);
      v33 = &unk_1F3FA5380;
      siri::ontology::UsoGraph::getSuccessors(&v28, a2->var1, a2, &v33);
      v12 = *&v28.__r_.__value_.__l.__data_;
      if (v28.__r_.__value_.__r.__words[0])
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v12 != *(&v12 + 1))
      {
        std::string::basic_string[abi:ne200100]<0>(&v28, "OntologyException");
        (*(*a3 + 48))(&v27, a3);
        v20 = std::string::insert(&v27, 0, "Can't add successors with the same edge to the target node ");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v30 = v20->__r_.__value_.__r.__words[2];
        v29 = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(&v28, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 350, "addSuccessors", &v29);
      }

      v33 = &unk_1F3FA5348;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 += 16;
    }

    while (v9 != v10);
    v7 = *(v6 + 24);
  }

  v13 = v7 + 56 * a2->var2;
  v14 = *v13;
  if (*v13 != *(v13 + 8))
  {
    v15 = v14[1];
    v31 = *(v15 + 32);
    v32 = *(v15 + 48);
    v33 = &unk_1F3FA5348;
    if (*(v15 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v15 + 64), *(v15 + 72));
    }

    else
    {
      __p = *(v15 + 64);
    }

    v35 = *(v15 + 88);
    v33 = &unk_1F3FA5380;
    v16 = *v14;
    siri::ontology::UsoGraphEdge::UsoGraphEdge(&v28, &v33, *(a3 + 2), *v14, v32);
    v17 = *(a3 + 2);
    v18 = *v26;
    if (v17 <= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = *(a3 + 2);
    }

    if (v19 >= 0x6DB6DB6DB6DB6DB7 * ((v18[4] - *(*v26 + 24)) >> 3))
    {
      std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::resize((*v26 + 24), v19 + 1);
    }

    boost::add_edge<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config>(&v27, v17, v16, &v28, v18);
  }
}

void sub_1C083A090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<siri::ontology::UsoGraphNode const*,std::hash<siri::ontology::UsoGraphNode const*>,std::equal_to<siri::ontology::UsoGraphNode const*>,std::allocator<siri::ontology::UsoGraphNode const*>>::find<siri::ontology::UsoGraphNode const*>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void siri::ontology::UsoGraph::getSuccessors(uint64_t *__return_ptr a1@<X8>, siri::ontology::UsoGraph *this@<X0>, const UsoGraphNode *a3@<X1>, const siri::ontology::OntologyEdgeName *a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *this;
  v6 = *(*this + 24) + 56 * a3->var2;
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*v6 != v8)
  {
    do
    {
      v10 = v7[1];
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      v14 = &unk_1F3FA5348;
      if (*(v10 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v10 + 64), *(v10 + 72));
      }

      else
      {
        __p = *(v10 + 64);
      }

      v16 = *(v10 + 88);
      v14 = &unk_1F3FA5380;
      if (siri::ontology::operator==(&v14, a4))
      {
        v11 = *(*(v5 + 24) + 56 * *v7 + 48);
        std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::push_back[abi:ne200100](a1, &v11);
      }

      v14 = &unk_1F3FA5348;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 += 2;
    }

    while (v7 != v8);
  }
}

void sub_1C083A3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

siri::ontology::UsoGraphEdge *siri::ontology::UsoGraphEdge::UsoGraphEdge(siri::ontology::UsoGraphEdge *this, const siri::ontology::OntologyEdgeName *a2, uint64_t a3, uint64_t a4, int a5)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 4) = a5;
  *(this + 3) = &unk_1F3FA5348;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v7 = *(a2 + 8);
    *(this + 6) = *(a2 + 3);
    *(this + 2) = v7;
  }

  *(this + 7) = *(a2 + 4);
  *(this + 3) = &unk_1F3FA5380;
  return this;
}

void std::vector<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex,std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v11 = v4 + 56 * a2;
      while (v3 != v11)
      {
        v3 = (v3 - 56);
        std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>::destroy[abi:ne200100](v3);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v8 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x492492492492492)
      {
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((v8 - v4) >> 3);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v4) >> 3)) >= 0x249249249249249)
        {
          v10 = 0x492492492492492;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config::stored_vertex>>(v10);
      }

      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v3 + 56 * v7;
    v13 = 56 * a2 - 8 * (v5 >> 3);
    do
    {
      v3[1] = 0uLL;
      v3[2] = 0uLL;
      *v3 = 0uLL;
      v3 = (v3 + 56);
      v13 -= 56;
    }

    while (v13);
    a1[1] = v12;
  }
}

void boost::add_edge<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,siri::ontology::UsoGraphNode *,siri::ontology::UsoGraphEdge,boost::no_property,boost::listS>::config>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v6 = a2;
  v7 = a3;
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = &unk_1F3FA5348;
  if (*(a4 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 4), *(a4 + 5));
  }

  else
  {
    __p = *(a4 + 2);
  }

  v12 = *(a4 + 7);
  v10 = &unk_1F3FA5380;
  operator new();
}

void sub_1C083A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *boost::graph_detail::push<std::vector<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge>>,boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>,void *>,siri::ontology::UsoGraphEdge>>(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 16);
}

void std::__list_imp<boost::list_edge<unsigned long,siri::ontology::UsoGraphEdge>>::__delete_node[abi:ne200100](char *__p)
{
  *(__p + 7) = &unk_1F3FA5348;
  if (__p[87] < 0)
  {
    operator delete(*(__p + 8));
  }

  operator delete(__p);
}

void std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t siri::ontology::UsoOperatorNode::isValidSuccessorWithEdge(UsoGraphNode *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3)
{
  if (*(this[1].var0 + 9) && *(a3 + 15))
  {
    siri::ontology::UsoGraph::getPredecessorsWithEdges(&v26, this->var1, this);
    v7 = v26;
    if (v27 == v26)
    {
      v17 = 1;
      if (!v26)
      {
        return v17;
      }

      goto LABEL_30;
    }

    if ((v27 - v26) >= 0x11)
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "OntologyException");
      std::operator+<char>();
      siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v25, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 803, "isValidSuccessorWithEdge", v24);
    }

    v8 = siri::ontology::oname::graph::ontology_init::Argument_operand(v6);
    if (!siri::ontology::operator==(a3 + 24, v8))
    {
      v17 = 0;
      if (!v7)
      {
        return v17;
      }

      goto LABEL_30;
    }

    v10 = *v7;
    v9 = *(v7 + 1);
    v11 = (*(**v7 + 16))(*v7);
    if (v11 == 1)
    {
      if (!v18)
      {
        __cxa_bad_cast();
      }

      v19 = v18;
      if (!v20)
      {
        __cxa_bad_cast();
      }

      if (*(v20[3] + 36) && *(v19[3] + 36) && *(v9 + 15) && (*(this[1].var0 + 8) - 5) >= 2)
      {
        std::string::basic_string[abi:ne200100]<0>(v25, "OntologyException");
        std::operator+<char>();
        siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v25, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 872, "isValidSuccessorWithEdge", v22);
      }
    }

    else
    {
      if (v11 != 2)
      {
LABEL_22:
        v17 = 0;
LABEL_30:
        operator delete(v7);
        return v17;
      }

      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12;
      if (!v14)
      {
        __cxa_bad_cast();
      }

      if (*(*(v14 + 3) + 36) && *(v13[3] + 9) && *(v9 + 15))
      {
        v15 = *(this[1].var0 + 8);
        if (v15 == 6)
        {
          isValidSetSuccessorWithEdge = siri::ontology::UsoEntityNode::isValidSetSuccessorWithEdge(v14, a2, v9, 1);
          goto LABEL_33;
        }

        if (v15 != 5)
        {
          std::string::basic_string[abi:ne200100]<0>(v25, "OntologyException");
          std::operator+<char>();
          siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v25, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 843, "isValidSuccessorWithEdge", v23);
        }

        if (siri::ontology::UsoEntityNode::isValidSetSuccessorWithEdge(v14, a2, v9, 0))
        {
          isValidSetSuccessorWithEdge = siri::ontology::OntologyNodeName::hasOperator(v13[3], *(this[1].var0 + 9));
LABEL_33:
          v17 = isValidSetSuccessorWithEdge;
          goto LABEL_30;
        }

        goto LABEL_22;
      }
    }

    v17 = 1;
    goto LABEL_30;
  }

  return 1;
}

void sub_1C083AEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, int a27, __int16 a28, char a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    std::string::basic_string[abi:ne200100]<0>(&a25, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(&a25, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 848, "isValidSuccessorWithEdge", "The successor of operator node should be an entity node or its derived class");
  }

  v32 = *(v29 - 72);
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C083B008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  v26 = *(v24 - 72);
  if (v26)
  {
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_1C083B030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void siri::ontology::UsoGraph::getPredecessorsWithEdges(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const UsoGraphNode *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *this;
  v5 = *(*this + 24) + 56 * a3->var2;
  v6 = *(v5 + 24);
  for (i = *(v5 + 32); v6 != i; v6 += 2)
  {
    v8 = v6[1] + 32;
    *&v9 = *(*(v4 + 24) + 56 * *v6 + 48);
    *(&v9 + 1) = v8;
    std::vector<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>::push_back[abi:ne200100](a1, &v9);
  }
}

void sub_1C083B114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::ontology::UsoEntityNode::isValidSetSuccessorWithEdge(siri::ontology::UsoEntityNode *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3, char a4)
{
  if (!*(*(this + 3) + 36) || !*(a3 + 15))
  {
    return 1;
  }

  v8 = (*(a2->var0 + 2))(a2);
  if ((v8 - 2) < 3)
  {
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + 3);
      v12 = *(v11 + 36);
      if (v12)
      {
        if (*(v11 + 32) == 3)
        {
          v13 = siri::ontology::oname::graph::ontology_init::Argument_definedValue(v9);
          v14 = siri::ontology::operator==(a3 + 24, v13);
          v15 = *(this + 3);
          if (v14)
          {

            return siri::ontology::OntologyNodeName::hasDefinedValue(v15, v12);
          }

          else
          {
            v31 = *(a3 + 15);
            OriginEntityForDefinedValue = siri::ontology::OntologyNodeName::getOriginEntityForDefinedValue(*(v10 + 3));

            return siri::ontology::OntologyNodeName::existArgumentToEntity(v15, v31, OriginEntityForDefinedValue);
          }
        }

        v22 = *(this + 3);
        v23 = *(a3 + 15);
        v24 = *(v11 + 36);
        if (a4)
        {
          if (!siri::ontology::OntologyNodeName::existSetArgumentToEntity(v22, v23, v24))
          {
            v25 = *(v11 + 64);
            v26 = *(v11 + 68) - v25;
            if (v26)
            {
              v27 = (*(v11 + 48) + 4 * v25);
              v28 = 4 - 4 * v26;
              do
              {
                v29 = *v27++;
                result = siri::ontology::OntologyNodeName::existSetArgumentToEntity(v22, v23, v29);
                if (result)
                {
                  break;
                }

                v30 = v28;
                v28 += 4;
              }

              while (v30);
              return result;
            }

            return 0;
          }
        }

        else if (!siri::ontology::OntologyNodeName::existArgumentToEntity(v22, v23, v24))
        {
          v35 = *(v11 + 64);
          v36 = *(v11 + 68) - v35;
          if (v36)
          {
            v37 = (*(v11 + 48) + 4 * v35);
            v38 = 4 - 4 * v36;
            do
            {
              v39 = *v37++;
              result = siri::ontology::OntologyNodeName::existArgumentToEntity(v22, v23, v39);
              if (result)
              {
                break;
              }

              v40 = v38;
              v38 += 4;
            }

            while (v40);
            return result;
          }

          return 0;
        }
      }

      return 1;
    }

LABEL_41:
    __cxa_bad_cast();
  }

  if (v8 != 5)
  {
    return 0;
  }

  if (!v17)
  {
    goto LABEL_41;
  }

  v18 = v17[3];
  if (!*(v18 + 36))
  {
    return 1;
  }

  v19 = *(v18 + 32);
  if (v19 == 6)
  {
    v33 = *(this + 3);
    v34 = *(a3 + 15);

    return siri::ontology::OntologyNodeName::hasSetArgument(v33, v34);
  }

  else
  {
    if (v19 != 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "OntologyException");
      std::operator+<char>();
      siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v42, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1159, "isValidSetSuccessorWithEdge", &v41);
    }

    v20 = *(this + 3);
    v21 = *(a3 + 15);

    return siri::ontology::OntologyNodeName::hasArgument(v20, v21);
  }
}

void sub_1C083B490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::reference_wrapper<siri::ontology::UsoGraphNode>,std::reference_wrapper<siri::ontology::UsoGraphEdge const>>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t siri::ontology::UsoEntityNode::checkValidOntologyNameType(uint64_t this)
{
  if (*(*(this + 24) + 32) > 3u)
  {
    std::string::basic_string[abi:ne200100]<0>(v1, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v1, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 897, "checkValidOntologyNameType", "UsoEntityNode can only take ENTITY, DEFINED_VALUE, EMPTY ontology name types");
  }

  return this;
}

void sub_1C083B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::ontology::UsoEntityNode::operator<(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    result = siri::ontology::operator<(*(a1 + 24), *(result + 24));
    if (result)
    {
      return *(a1 + 16) < *(lpsrc + 2);
    }
  }

  return result;
}

unint64_t siri::ontology::UsoEntityNode::operator==(void *a1, void *lpsrc)
{
  if (result)
  {
    v5 = result;
    v7 = a1[4];
    v6 = a1[5];
    v8 = v6 - v7;
    v9 = *(result + 32);
    if (v6 - v7 != *(result + 40) - v9)
    {
      return 0;
    }

    if (v6 != v7)
    {
      v10 = v8 >> 3;
      if ((v8 >> 3) <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8 >> 3;
      }

      do
      {
        if (!v10)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v12 = *v7;
        v13 = *v9;
        v14 = *(*v9 + 23);
        if (v14 >= 0)
        {
          v15 = *(*v9 + 23);
        }

        else
        {
          v15 = *(*v9 + 8);
        }

        v16 = *(v12 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v12 + 8);
        }

        if (v15 != v16)
        {
          return 0;
        }

        v18 = v14 >= 0 ? *v9 : *v13;
        v19 = v17 >= 0 ? *v7 : *v12;
        if (memcmp(v18, v19, v15))
        {
          return 0;
        }

        v20 = *(v13 + 47);
        if (v20 >= 0)
        {
          v21 = *(v13 + 47);
        }

        else
        {
          v21 = *(v13 + 32);
        }

        v22 = *(v12 + 47);
        v23 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(v12 + 32);
        }

        if (v21 != v22)
        {
          return 0;
        }

        v24 = v20 >= 0 ? (v13 + 24) : *(v13 + 24);
        v25 = v23 >= 0 ? (v12 + 24) : *(v12 + 24);
        if (memcmp(v24, v25, v21))
        {
          return 0;
        }

        result = std::operator==[abi:ne200100]<std::string,std::string>((v13 + 48), (v12 + 48));
        if (!result)
        {
          return result;
        }

        v26 = *(v13 + 88);
        v27 = *(v12 + 88);
        if (v26 == v27 && *(v13 + 88))
        {
          if (*(v13 + 80) != *(v12 + 80))
          {
            return 0;
          }
        }

        else if (v26 != v27)
        {
          return 0;
        }

        v28 = *(v13 + 100);
        v29 = *(v12 + 100);
        if (v28 == v29 && *(v13 + 100))
        {
          v28 = *(v13 + 96);
          v29 = *(v12 + 96);
        }

        if (v28 != v29)
        {
          return 0;
        }

        v30 = *(v13 + 108);
        v31 = *(v12 + 108);
        if (v30 == v31 && *(v13 + 108))
        {
          v30 = *(v13 + 104);
          v31 = *(v12 + 104);
        }

        if (v30 != v31)
        {
          return 0;
        }

        v32 = *(v13 + 116);
        v33 = *(v12 + 116);
        if (v32 == v33 && *(v13 + 116))
        {
          v32 = *(v13 + 112);
          v33 = *(v12 + 112);
        }

        if (v32 != v33)
        {
          return 0;
        }

        --v10;
        v7 += 8;
        v9 += 8;
      }

      while (--v11);
    }

    v35 = a1[7];
    v34 = a1[8];
    v36 = v5[7];
    if (v34 - v35 != v5[8] - v36)
    {
      return 0;
    }

    while (v35 != v34)
    {
      if (*v35 != *v36)
      {
        return 0;
      }

      v35 += 8;
      ++v36;
    }

    v37 = a1[10];
    v38 = a1[11];
    if (v38 - v37 != v5[11] - v5[10])
    {
      return 0;
    }

    if (v38 != v37)
    {
      v39 = 0;
      do
      {
        v40 = v5[10];
        if (v39 >= (v5[11] - v40) >> 3)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        if (!siri::ontology::UsoEntitySpan::operator==(*(v40 + 8 * v39), *(v37 + 8 * v39)))
        {
          return 0;
        }

        ++v39;
        v37 = a1[10];
      }

      while (v39 < (a1[11] - v37) >> 3);
    }

    result = siri::ontology::operator==(a1[3], v5[3]);
    if (result)
    {
      return a1[2] == *(lpsrc + 2);
    }
  }

  return result;
}

BOOL siri::ontology::UsoEntitySpan::operator==(uint64_t a1, uint64_t a2)
{
  if (std::operator!=[abi:ne200100]<std::string,std::string>(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 36);
  v5 = *(a2 + 36);
  if (v4 == v5 && v4 != 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
  }

  if (v4 != v5 || std::operator!=[abi:ne200100]<std::string,std::string>((a1 + 40), (a2 + 40)))
  {
    return 0;
  }

  v7 = *(a1 + 116);
  v8 = *(a2 + 116);
  if (v7 == v8 && *(a1 + 116))
  {
    v7 = *(a1 + 112);
    v8 = *(a2 + 112);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 124);
  v10 = *(a2 + 124);
  if (v9 == v10 && *(a1 + 124))
  {
    v9 = *(a1 + 120);
    v10 = *(a2 + 120);
  }

  if (v9 != v10 || std::operator!=[abi:ne200100]<std::string,std::string>((a1 + 152), (a2 + 152)))
  {
    return 0;
  }

  if (*(a1 + 80) == 1)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      return 0;
    }

    result = siri::ontology::MatchInfo::operator==(*(a2 + 72), *(a1 + 72));
    if (!result)
    {
      return result;
    }
  }

  else if (*(a2 + 80))
  {
    return 0;
  }

  v13 = *(a1 + 88);
  v12 = *(a1 + 96);
  v14 = v12 - v13;
  v15 = *(a2 + 88);
  if (v12 - v13 != *(a2 + 96) - v15)
  {
    return 0;
  }

  if (v12 != v13)
  {
    v16 = v14 >> 3;
    if ((v14 >> 3) <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 >> 3;
    }

    do
    {
      if (!v16)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *v13;
      v19 = *v15;
      v20 = *(*v15 + 23);
      if (v20 >= 0)
      {
        v21 = *(*v15 + 23);
      }

      else
      {
        v21 = *(*v15 + 8);
      }

      v22 = *(v18 + 23);
      v23 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v18 + 8);
      }

      if (v21 != v22)
      {
        return 0;
      }

      v24 = v20 >= 0 ? *v15 : *v19;
      v25 = v23 >= 0 ? *v13 : *v18;
      if (memcmp(v24, v25, v21))
      {
        return 0;
      }

      result = std::operator==[abi:ne200100]<std::string,std::string>((v19 + 24), (v18 + 24));
      if (!result)
      {
        return result;
      }

      v26 = *(v19 + 60);
      v27 = *(v18 + 60);
      if (v26 == v27 && v26 != 0)
      {
        v26 = *(v19 + 56);
        v27 = *(v18 + 56);
      }

      if (v26 != v27)
      {
        return 0;
      }

      v29 = *(v19 + 68);
      v30 = *(v18 + 68);
      if (v29 != v30 || v29 == 0)
      {
        if (v29 != v30)
        {
          return 0;
        }
      }

      else if (*(v19 + 64) != *(v18 + 64))
      {
        return 0;
      }

      --v16;
      v13 += 8;
      ++v15;
    }

    while (--v17);
  }

  v34 = a1 + 128;
  v33 = *(a1 + 128);
  v32 = *(v34 + 8);
  v35 = v32 - v33;
  v37 = a2 + 128;
  v36 = *(a2 + 128);
  if (v32 - v33 != *(v37 + 8) - v36)
  {
    return 0;
  }

  if (v32 == v33)
  {
    return 1;
  }

  v38 = v35 >> 3;
  if ((v35 >> 3) <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v35 >> 3;
  }

  v40 = v39 - 1;
  do
  {
    if (!v38)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v42 = *v33++;
    v41 = v42;
    v43 = *v36++;
    result = siri::ontology::AsrAlternative::operator==(v43, v41);
    v45 = v40-- != 0;
    if (!result)
    {
      break;
    }

    --v38;
  }

  while (v45);
  return result;
}

BOOL std::operator!=[abi:ne200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 24);
  v5 = v3 == v2;
  v4 = v3 != v2;
  v5 = !v5 || v3 == 0;
  if (!v5)
  {
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a2[1];
    }

    if (v7 == v8)
    {
      if (v6 < 0)
      {
        a1 = *a1;
      }

      if (v9 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v7) != 0;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

BOOL siri::ontology::MatchInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 == v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

LABEL_10:
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == v6 && v5 != 0)
  {
    v5 = *(a1 + 12);
    v6 = *(a2 + 12);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (v8 == v9 && *(a1 + 24))
  {
    v8 = *(a1 + 20);
    v9 = *(a2 + 20);
  }

  if (v8 != v9)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10 == v11 && *(a1 + 32))
  {
    v10 = *(a1 + 28);
    v11 = *(a2 + 28);
  }

  if (v10 != v11)
  {
    return 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a2 + 40);
  if (v12 == v13 && *(a1 + 40))
  {
    v12 = *(a1 + 36);
    v13 = *(a2 + 36);
  }

  if (v12 != v13)
  {
    return 0;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (v14 == v15 && *(a1 + 48))
  {
    v14 = *(a1 + 44);
    v15 = *(a2 + 44);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  if (v16 == v17 && *(a1 + 56))
  {
    v16 = *(a1 + 52);
    v17 = *(a2 + 52);
  }

  if (v16 != v17)
  {
    return 0;
  }

  v18 = *(a1 + 64);
  v19 = *(a2 + 64);
  if (v18 == v19 && *(a1 + 64))
  {
    v18 = *(a1 + 60);
    v19 = *(a2 + 60);
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = *(a1 + 72);
  v20 = *(a1 + 80);
  v22 = *(a2 + 72);
  if (v20 - v21 != *(a2 + 80) - v22)
  {
    return 0;
  }

  if (v21 == v20)
  {
    return 1;
  }

  v23 = v21 + 4;
  do
  {
    v24 = *v22++;
    result = *(v23 - 4) == v24;
    v26 = *(v23 - 4) != v24 || v23 == v20;
    v23 += 4;
  }

  while (!v26);
  return result;
}

BOOL siri::ontology::AsrAlternative::operator==(float *a1, float *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v6 + 28);
  v10 = *(v7 + 28);
  result = v10 == v9;
  if (v10 == v9)
  {
    if (*(v7 + 28))
    {
      return v7[6] == v6[6];
    }
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<std::string,std::string>(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void siri::ontology::UsoEntityNode::toString(siri::ontology::UsoEntityNode *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 3);
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    *a2 = *(v2 + 8);
  }
}

void sub_1C083C1D0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C083C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C083C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

siri::ontology::UsoEntitySpan *siri::ontology::UsoEntitySpan::UsoEntitySpan(siri::ontology::UsoEntitySpan *this, const siri::ontology::UsoEntitySpan *a2)
{
  v4 = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this, a2);
  v5 = *(a2 + 4);
  LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v5;
  v4[1].__r_.__value_.__s.__data_[12] = BYTE4(v5);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 40), (a2 + 40));
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v6 = *(a2 + 14);
  *(this + 28) = v6;
  *(this + 116) = BYTE4(v6);
  v7 = *(a2 + 15);
  *(this + 16) = 0;
  *(this + 30) = v7;
  *(this + 124) = BYTE4(v7);
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 152), (a2 + 152));
  if (*(a2 + 80) == 1)
  {
    operator new();
  }

  if (*(this + 80) == 1)
  {
    v8 = *(this + 9);
    *(this + 9) = 0;
    if (v8)
    {
      std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v8);
    }

    *(this + 80) = 0;
  }

  siri::ontology::UsoEntitySpan::getSpanProperties(&v10, a2);
  if (v10 != v11)
  {
    siri::ontology::UsoEntitySpan::addSpanProperty(this, *v10);
  }

  if (v10)
  {
    operator delete(v10);
  }

  siri::ontology::UsoEntitySpan::getAlternatives(&v10, a2);
  if (v10 != v11)
  {
    siri::ontology::UsoEntitySpan::addAlternative(this, *v10);
  }

  if (v10)
  {
    operator delete(v10);
  }

  return this;
}

void sub_1C083C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  MEMORY[0x1C68DE200](v13, 0x1010C400E9420BALL, a3, a4, a5, a6, a7, a8);
  if (*(v12 + 176) == 1 && *(v12 + 175) < 0)
  {
    operator delete(v14[3]);
  }

  a12 = v14;
  std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (*(v12 + 80) == 1)
  {
    v16 = *(v12 + 72);
    *(v12 + 72) = 0;
    if (v16)
    {
      std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v16);
    }
  }

  if (*(v12 + 64) == 1 && *(v12 + 63) < 0)
  {
    operator delete(*(v12 + 40));
  }

  if (*(v12 + 24) == 1 && *(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::ontology::MatchInfo::MatchInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  v2 = *(a2 + 60);
  *(a1 + 72) = 0;
  *(a1 + 60) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v4 = *(a2 + 72);
  v3 = *(a2 + 80);
  if (v3 != v4)
  {
    std::vector<siri::ontology::MatchInfo::AliasType>::__vallocate[abi:ne200100]((a1 + 72), (v3 - v4) >> 2);
  }

  return a1;
}

void sub_1C083C878(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoEntitySpan::getSpanProperties(void **__return_ptr a1@<X8>, siri::ontology::UsoEntitySpan *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 11);
  v3 = *(this + 12);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a1[2];
      if (v5 >= v7)
      {
        v8 = *a1;
        v9 = v5 - *a1;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a1 = 0;
        a1[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a1[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C083C9BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoEntitySpan::getAlternatives(void **__return_ptr a1@<X8>, siri::ontology::UsoEntitySpan *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 16);
  v3 = *(this + 17);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a1[2];
      if (v5 >= v7)
      {
        v8 = *a1;
        v9 = v5 - *a1;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a1 = 0;
        a1[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a1[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C083CB08(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<siri::ontology::AsrAlternative>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<siri::ontology::SpanProperty>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1C68DE200](v2, 0x1020C40E72D6CFBLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x1C68DE200](v6, 0x1000C405AAC83ABLL);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::ontology::UsoUtteranceAlignment::getSpans(void **__return_ptr a1@<X8>, siri::ontology::UsoUtteranceAlignment *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a1[2];
      if (v5 >= v7)
      {
        v8 = *a1;
        v9 = v5 - *a1;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = (v13 + 1);
        memcpy(0, v8, v9);
        *a1 = 0;
        a1[2] = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a1[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1C083D170(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C083D22C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x1C68DE200](a10, v10, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<siri::ontology::UsoUtteranceSpan>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

std::string *siri::ontology::UsoIdentifier::UsoIdentifier(std::string *this, const UsoIdentifier *a2)
{
  if (*(&a2->var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->var0.var0.var1.var0, a2->var0.var0.var1.var1);
  }

  else
  {
    v4 = *a2->var0.var0.var0.var0;
    this->__r_.__value_.__r.__words[2] = *(&a2->var0.var0.var1 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(&a2[1].var0.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, a2[1].var0.var0.var1.var0, a2[1].var0.var0.var1.var1);
  }

  else
  {
    v5 = *a2[1].var0.var0.var0.var0;
    this[1].__r_.__value_.__r.__words[2] = *(&a2[1].var0.var0.var1 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 2, a2[2].var0.var0.var0.var0);
  v6 = *(&a2[3].var0.var0.var1 + 2);
  this[3].__r_.__value_.__l.__size_ = a2[3].var0.var0.var1.var1;
  this[3].__r_.__value_.__s.__data_[16] = v6;
  var0 = a2[4].var0.var0.var1.var0;
  LODWORD(this[4].__r_.__value_.__l.__data_) = var0;
  this[4].__r_.__value_.__s.__data_[4] = BYTE4(var0);
  var1 = a2[4].var0.var0.var1.var1;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = var1;
  this[4].__r_.__value_.__s.__data_[12] = BYTE4(var1);
  v9 = *(&a2[4].var0.var0.var1 + 2);
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = v9;
  this[4].__r_.__value_.__s.__data_[20] = BYTE4(v9);
  return this;
}

void sub_1C083D410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siri::ontology::SpanProperty>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<siri::ontology::UsoIdentifier>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68DE200](v2, 0x1012C40071C2685);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<siri::ontology::UsoIdentifier>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

siri::ontology::UsoEntityNode *siri::ontology::UsoEntityNode::UsoEntityNode(siri::ontology::UsoEntityNode *this, siri::ontology::UsoGraph *a2, const siri::ontology::OntologyNodeName *a3)
{
  *(this + 1) = a2;
  *(this + 2) = 0;
  *this = &unk_1F3FA4D58;
  *(this + 3) = a3;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  siri::ontology::UsoEntityNode::checkValidOntologyNameType(this);
  return this;
}

void sub_1C083D684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = v10 + 80;
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 56;
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::ontology::UsoEntityNode::~UsoEntityNode(siri::ontology::UsoEntityNode *this)
{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t siri::ontology::UsoRootNode::checkValidOntologyNameType(uint64_t this)
{
  if (*(*(this + 24) + 32))
  {
    std::string::basic_string[abi:ne200100]<0>(v1, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v1, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1281, "checkValidOntologyNameType", "UsoRootNode can only take ROOT ontology name type");
  }

  return this;
}

void sub_1C083DA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::UsoRootNode::toString(siri::ontology::UsoRootNode *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 3);
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    *a2 = *(v2 + 8);
  }
}

siri::ontology::UsoEntityNode *siri::ontology::UsoRootNode::copyToGraph(siri::ontology::UsoRootNode *this, siri::ontology::UsoGraph *a2)
{
  v2 = *(a2 + 11);
  v3 = *(this + 4);
  if (v3 != *(this + 5))
  {
    siri::ontology::UsoEntityNode::addIdentifier(v2, *v3);
  }

  v4 = *(this + 7);
  if (v4 != *(this + 8))
  {
    siri::ontology::UsoEntityNode::addUtteranceAlignment(v2, *v4);
  }

  v5 = *(this + 10);
  if (v5 != *(this + 11))
  {
    siri::ontology::UsoEntityNode::addEntitySpan(v2, *v5);
  }

  return *(a2 + 11);
}

uint64_t siri::ontology::UsoRootNode::isValidSuccessorWithEdge(siri::ontology::UsoRootNode *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3)
{
  v5 = siri::ontology::oname::graph::ontology_init::Argument_task(this);
  result = siri::ontology::operator==(a3 + 24, v5);
  if (!result || (result = (*(a2->var0 + 2))(a2), result != 1))
  {
    v7 = siri::ontology::oname::graph::ontology_init::Argument_entity(result);
    v8 = siri::ontology::operator==(a3 + 24, v7);
    if (v8)
    {
      v8 = (*(a2->var0 + 2))(a2);
      if (v8 == 2)
      {
        return 1;
      }
    }

    v9 = siri::ontology::oname::graph::ontology_init::Argument_entity(v8);
    v10 = siri::ontology::operator==(a3 + 24, v9);
    if (v10 && (v10 = (*(a2->var0 + 2))(a2), v10 == 3))
    {
      return 1;
    }

    else
    {
      v11 = siri::ontology::oname::graph::ontology_init::Argument_entity(v10);
      result = siri::ontology::operator==(a3 + 24, v11);
      if (result)
      {
        return (*(a2->var0 + 2))(a2) == 4;
      }
    }
  }

  return result;
}

void siri::ontology::UsoRootNode::~UsoRootNode(siri::ontology::UsoRootNode *this)
{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t siri::ontology::UsoTaskNode::checkValidOntologyNameType(uint64_t this)
{
  v1 = *(this + 24);
  if (*(v1 + 36))
  {
    v2 = *(*(this + 104) + 36);
    if (v2)
    {
      if (*(v1 + 32) != 2)
      {
        v22 = std::string::basic_string[abi:ne200100]<0>(v27, "OntologyException");
        siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v22, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1195, "checkValidOntologyNameType", "UsoTaskNode can only take ENTITY + VERB ontology name types");
      }

      v3 = *(v1 + 48);
      v4 = *(v1 + 64);
      v5 = &v3[v4];
      if (v4)
      {
        do
        {
          v6 = v4 >> 1;
          v7 = &v3[v4 >> 1];
          v9 = *v7;
          v8 = v7 + 1;
          v4 += ~(v4 >> 1);
          if (v9 < v2)
          {
            v3 = v8;
          }

          else
          {
            v4 = v6;
          }
        }

        while (v4);
      }

      if (v3 == v5 || *v3 > v2)
      {
        v10 = this;
        std::string::basic_string[abi:ne200100]<0>(v27, "OntologyException");
        std::operator+<char>();
        v11 = std::string::append(&v23, "::");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = *(v10 + 104);
        v16 = *(v13 + 8);
        v14 = v13 + 8;
        v15 = v16;
        v17 = *(v14 + 23);
        if (v17 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v15;
        }

        if (v17 >= 0)
        {
          v19 = *(v14 + 23);
        }

        else
        {
          v19 = *(v14 + 8);
        }

        v20 = std::string::append(&v24, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v26 = v20->__r_.__value_.__r.__words[2];
        v25 = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,std::string>(v27, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1200, "checkValidOntologyNameType", &v25);
      }
    }
  }

  return this;
}

void sub_1C083DF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *siri::ontology::UsoTaskNode::operator==(void *a1, void *lpsrc)
{
  if (!v4 || !siri::ontology::operator==(a1[13], v4[13]))
  {
    return 0;
  }

  return siri::ontology::UsoEntityNode::operator==(a1, lpsrc);
}

void siri::ontology::UsoTaskNode::toString(siri::ontology::UsoTaskNode *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 13);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v19;
  std::string::basic_string[abi:ne200100](&v19, v5 + 2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  strcpy(v6 + v5, "::");
  v11 = *(this + 3);
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  v15 = *(v12 + 23);
  if (v15 >= 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 0)
  {
    v17 = *(v12 + 23);
  }

  else
  {
    v17 = *(v12 + 8);
  }

  v18 = std::string::append(&v19, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_1C083E140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void sub_1C083E354(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::ontology::UsoTaskNode::isValidSuccessorWithEdge(siri::ontology::UsoTaskNode *this, const UsoGraphNode *a2, const siri::ontology::UsoGraphEdge *a3)
{
  if (!*(*(this + 3) + 36) || !*(*(this + 13) + 36))
  {
    return 1;
  }

  v6 = (*(a2->var0 + 2))(a2);
  if ((v6 - 2) < 3)
  {
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7[3];
    v9 = *(v8 + 36);
    if (v9)
    {
      v10 = *(a3 + 15);
      if (v10)
      {
        v11 = *(this + 13);
        if (!siri::ontology::OntologyVerbName::existArgumentToEntity(v11, v10, v9))
        {
          v15 = *(this + 3);
          if (!siri::ontology::operator==(v15, v8) || !siri::ontology::OntologyVerbName::existArgumentToEntity(v11, v10, -1))
          {
            v16 = *(v8 + 64);
            v17 = *(v8 + 68) - v16;
            if (!v17)
            {
              return 0;
            }

            v18 = (*(v8 + 48) + 4 * v16);
            v19 = 4 * v17;
            while (1)
            {
              v20 = *v18;
              if (siri::ontology::OntologyVerbName::existArgumentToEntity(v11, v10, *v18) || *(v15 + 36) == v20 && siri::ontology::OntologyVerbName::existArgumentToEntity(v11, v10, -1))
              {
                break;
              }

              result = 0;
              ++v18;
              v19 -= 4;
              if (!v19)
              {
                return result;
              }
            }
          }
        }
      }
    }

    return 1;
  }

  if (v6 != 5)
  {
    return 0;
  }

  v13 = *(this + 13);
  v14 = *(a3 + 15);

  return siri::ontology::OntologyVerbName::hasArgument(v13, v14);
}

void siri::ontology::UsoTaskNode::~UsoTaskNode(siri::ontology::UsoTaskNode *this)
{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA4D58;
  v2 = (this + 32);
  v3 = (this + 80);
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

BOOL siri::ontology::UsoStringNode::checkValidOntologyNameType(siri::ontology::UsoStringNode *this)
{
  v1 = *(this + 3);
  v2 = siri::ontology::oname::graph::ontology_init::primitive_String(this);
  result = siri::ontology::operator==(v1, v2);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v4, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1314, "checkValidOntologyNameType", "UsoStringNode's entity must be primitive_String");
  }

  return result;
}

void sub_1C083E74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *siri::ontology::UsoStringNode::operator<(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    if (result[128] != 1)
    {
      return 0;
    }

    if (*(a1 + 128) != 1)
    {
      return (*(a1 + 16) < *(lpsrc + 2));
    }

    v5 = result + 104;
    v6 = result[127];
    v7 = *(result + 13);
    v8 = *(result + 14);
    v9 = *(a1 + 127);
    v10 = v9 >= 0 ? *(a1 + 127) : *(a1 + 112);
    v11 = v9 >= 0 ? (a1 + 104) : *(a1 + 104);
    v12 = (v6 & 0x80u) == 0 ? v6 : v8;
    v13 = (v6 & 0x80u) == 0 ? v5 : v7;
    v14 = v12 >= v10 ? v10 : v12;
    v15 = memcmp(v11, v13, v14);
    v16 = v10 < v12;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      return (*(a1 + 16) < *(lpsrc + 2));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *siri::ontology::UsoStringNode::operator==(void *a1, void *lpsrc)
{
  if (!v4 || !std::operator==[abi:ne200100]<std::string,std::string>(a1 + 13, v4 + 104))
  {
    return 0;
  }

  return siri::ontology::UsoEntityNode::operator==(a1, lpsrc);
}

void siri::ontology::UsoStringNode::toString(siri::ontology::UsoStringNode *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (*(this + 128) == 1)
  {
    v4 = *(this + 3);
    if (*(v4 + 31) >= 0)
    {
      v5 = *(v4 + 31);
    }

    else
    {
      v5 = *(v4 + 16);
    }

    v6 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v5 + 2);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v24.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      v9 = *(v4 + 8);
      v8 = (v4 + 8);
      v7 = v9;
      if (v8[23] >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      memmove(v6, v10, v5);
    }

    strcpy(v6 + v5, "(");
    if ((*(this + 128) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v11 = *(this + 127);
    if (v11 >= 0)
    {
      v12 = this + 104;
    }

    else
    {
      v12 = *(this + 13);
    }

    if (v11 >= 0)
    {
      v13 = *(this + 127);
    }

    else
    {
      v13 = *(this + 14);
    }

    v14 = std::string::append(&v24, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v25, ")");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v3[2] = *(&v16->__r_.__value_.__l + 2);
    *v3 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = *(this + 3);
    if (*(v18 + 31) >= 0)
    {
      v19 = *(v18 + 31);
    }

    else
    {
      v19 = *(v18 + 16);
    }

    std::string::basic_string[abi:ne200100](a2, v19 + 2);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    if (v19)
    {
      v22 = *(v18 + 8);
      v21 = (v18 + 8);
      v20 = v22;
      if (v21[23] >= 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = v20;
      }

      memmove(v3, v23, v19);
    }

    strcpy(v3 + v19, "()");
  }
}

void sub_1C083EB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C083ED04(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::ontology::UsoStringNode::UsoStringNode(uint64_t a1, siri::ontology::UsoGraph *a2, __int128 *a3)
{
  v6 = siri::ontology::oname::graph::ontology_init::primitive_String(a1);
  siri::ontology::UsoEntityNode::UsoEntityNode(a1, a2, v6);
  *a1 = &unk_1F3FA4EF0;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 104), a3);
  (*(*a1 + 104))(a1);
  return a1;
}

void sub_1C083EE10(_Unwind_Exception *a1)
{
  if (v1[128] == 1 && v1[127] < 0)
  {
    operator delete(*v2);
  }

  siri::ontology::UsoEntityNode::~UsoEntityNode(v1);
  _Unwind_Resume(a1);
}

void siri::ontology::UsoStringNode::~UsoStringNode(void **this)
{
  *this = &unk_1F3FA4EF0;
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F3FA4D58;
  v2 = this + 10;
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 7;
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x1C68DE200);
}

{
  *this = &unk_1F3FA4EF0;
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F3FA4D58;
  v2 = this + 10;
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 7;
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_1F3FA4EF0;
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F3FA4D58;
  v2 = this + 10;
  std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 7;
  std::vector<std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 4;
  std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

BOOL siri::ontology::UsoIntNode::checkValidOntologyNameType(siri::ontology::UsoIntNode *this)
{
  v1 = *(this + 3);
  v2 = siri::ontology::oname::graph::ontology_init::primitive_Integer(this);
  result = siri::ontology::operator==(v1, v2);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "OntologyException");
    siri::ontology::throwException<siri::ontology::OntologyException,char const*,int,char const*,char const*>(v4, "/Library/Caches/com.apple.xbs/Sources/SiriOntology/SiriOntology/nlv4/cpp/core/graph/UsoGraph.cpp", 1344, "checkValidOntologyNameType", "UsoIntNode's entity must be primitive_Integer");
  }

  return result;
}

void sub_1C083F10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *siri::ontology::UsoIntNode::operator<(uint64_t a1, void *lpsrc)
{
  if (result)
  {
    if (result[112] != 1 || *(a1 + 112) == 1 && *(a1 + 104) >= *(result + 13))
    {
      return 0;
    }

    else
    {
      return (*(a1 + 16) < *(lpsrc + 2));
    }
  }

  return result;
}

uint64_t *siri::ontology::UsoIntNode::operator==(uint64_t a1, void *lpsrc)
{
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 112);
  v6 = *(v4 + 112);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*(a1 + 104) != v4[13])
  {
    return 0;
  }

  return siri::ontology::UsoEntityNode::operator==(a1, lpsrc);
}

void siri::ontology::UsoIntNode::toString(siri::ontology::UsoIntNode *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (*(this + 112) == 1)
  {
    v4 = *(this + 3);
    if (*(v4 + 31) >= 0)
    {
      v5 = *(v4 + 31);
    }

    else
    {
      v5 = *(v4 + 16);
    }

    v6 = &v24;
    std::string::basic_string[abi:ne200100](&v24, v5 + 1);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v24.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      v9 = *(v4 + 8);
      v8 = (v4 + 8);
      v7 = v9;
      if (v8[23] >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      memmove(v6, v10, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 40;
    if ((*(this + 112) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::to_string(&__p, *(this + 13));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v24, p_p, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v25, ")");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v3[2] = *(&v15->__r_.__value_.__l + 2);
    *v3 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = *(this + 3);
    if (*(v17 + 31) >= 0)
    {
      v18 = *(v17 + 31);
    }

    else
    {
      v18 = *(v17 + 16);
    }

    std::string::basic_string[abi:ne200100](a2, v18 + 2);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    if (v18)
    {
      v21 = *(v17 + 8);
      v20 = (v17 + 8);
      v19 = v21;
      if (v20[23] >= 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = v19;
      }

      memmove(v3, v22, v18);
    }

    strcpy(v3 + v18, "()");
  }
}