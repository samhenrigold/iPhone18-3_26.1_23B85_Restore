uint64_t sub_1DAA88D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88E98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAA80804(v16, a4 & 1);
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB656FC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 136 * v11;

    return sub_1DACA6C64(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 136 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 64);
  *(v25 + 48) = *(a1 + 48);
  *(v25 + 64) = v28;
  *(v25 + 16) = v26;
  *(v25 + 32) = v27;
  v29 = *(a1 + 80);
  v30 = *(a1 + 96);
  v31 = *(a1 + 112);
  *(v25 + 128) = *(a1 + 128);
  *(v25 + 96) = v30;
  *(v25 + 112) = v31;
  *(v25 + 80) = v29;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;

  return sub_1DACB71E4();
}

void *sub_1DAA89048()
{
  v1 = v0;
  v2 = type metadata accessor for Quote(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1DACB9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAB697A0(*(v4 + 56) + v26, v30, type metadata accessor for Quote);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DAA7C55C(v25, *(v27 + 56) + v26, type metadata accessor for Quote);
        result = sub_1DACB71E4();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1DAA892C4(void *a1)
{
  sub_1DAA86CA8(0, &qword_1EE11F558, sub_1DAA895A0, &type metadata for Chart.Entry.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA895A0();
  sub_1DACBA304();
  v15 = 0;
  sub_1DACB7CC4();
  sub_1DAA804AC(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DACBA0E4();
  if (!v1)
  {
    type metadata accessor for Chart.Entry(0);
    v14 = 1;
    sub_1DACBA044();
    v13 = 2;
    sub_1DACBA044();
    v12 = 3;
    sub_1DACBA044();
    v11 = 4;
    sub_1DACBA044();
    v10 = 5;
    sub_1DACBA044();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAA895A0()
{
  result = qword_1EE1204A8;
  if (!qword_1EE1204A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204A8);
  }

  return result;
}

unint64_t sub_1DAA895F8()
{
  result = qword_1EE120498;
  if (!qword_1EE120498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120498);
  }

  return result;
}

unint64_t sub_1DAA89650()
{
  result = qword_1EE1204A0;
  if (!qword_1EE1204A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204A0);
  }

  return result;
}

uint64_t sub_1DAA896A4()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 1751607656;
  v4 = 7827308;
  if (v1 != 4)
  {
    v4 = 0x656D756C6F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852141679;
  if (v1 != 1)
  {
    v5 = 0x65736F6C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAA8974C()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x695474656B72616DLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x7365727574616566;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E615265746164;
  if (v1 != 1)
  {
    v5 = 0x73756F6976657270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAA89828(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49610(255);
    sub_1DAA804AC(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA898B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA495C0(255, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA89948()
{
  result = qword_1EE1203D0[0];
  if (!qword_1EE1203D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1203D0);
  }

  return result;
}

unint64_t sub_1DAA899EC()
{
  result = qword_1EE1203C8;
  if (!qword_1EE1203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1203C8);
  }

  return result;
}

uint64_t sub_1DAA89A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89AC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA49A38(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89B2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAB77B14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89C68(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA530C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAB77B14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC4E5A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC6B1F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  LODWORD(v88) = a5;
  v87 = type metadata accessor for WidgetQuote(0);
  v13 = MEMORY[0x1EEE9AC00](v87);
  v84 = (v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v83 = (v74 - v15);
  v86 = type metadata accessor for Quote(0);
  v89 = *(v86 - 8);
  v16 = MEMORY[0x1EEE9AC00](v86);
  v85 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v90 = v74 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v91 = v74 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v74 - v22;
  sub_1DAA8A968(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = (v74 - v28);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v30 = a1;
  if (sub_1DAA92AFC(a3, a1))
  {
    result = sub_1DAA8FFC4(a4, a2);
    if ((result & 1) != 0 && (v88 & 1) == 0)
    {
LABEL_35:
      *a7 = v30;
      a7[1] = a2;
      return result;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v94[0] = a1;
    v94[1] = a2;
    sub_1DAA8B75C(v94);
  }

  if (*(a3 + 16) != *(a1 + 16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v92 = a1;
      v93 = a2;
      sub_1DAA8AA28(&v92);
    }

    goto LABEL_35;
  }

  v74[1] = a6;
  v75 = a7;
  v76 = a2;
  v32 = *(a3 + 64);
  v78 = a3 + 64;
  v33 = 1 << *(a3 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v77 = (v33 + 63) >> 6;
  v82 = a3;
  result = sub_1DACB71E4();
  v36 = 0;
  v79 = a1;
  v80 = v29;
  v37 = a1;
  v81 = v27;
  if (v35)
  {
    while (1)
    {
      v38 = v36;
LABEL_18:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = v41 | (v38 << 6);
      v43 = (*(v82 + 48) + 16 * v42);
      v45 = *v43;
      v44 = v43[1];
      sub_1DAA8898C(*(v82 + 56) + *(v89 + 72) * v42, v23, type metadata accessor for Quote);
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v47 = v46;
      v48 = *(v46 + 48);
      *v27 = v45;
      v27[1] = v44;
      sub_1DAA92FD0(v23, v27 + v48, type metadata accessor for Quote);
      (*(*(v47 - 8) + 56))(v27, 0, 1, v47);
      sub_1DACB71E4();
      v40 = v38;
      v37 = v79;
LABEL_19:
      sub_1DAA93038(v27, v29, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      if ((*(*(v47 - 8) + 48))(v29, 1, v47) == 1)
      {
        v30 = v37;

        goto LABEL_33;
      }

      v50 = *v29;
      v49 = v29[1];
      sub_1DAA92FD0(v29 + *(v47 + 48), v91, type metadata accessor for Quote);
      if (!*(v37 + 16))
      {
        break;
      }

      v88 = v40;
      v51 = sub_1DAA4BF3C(v50, v49);
      v53 = v52;

      v54 = v91;
      if ((v53 & 1) == 0)
      {
        goto LABEL_30;
      }

      v55 = *(v37 + 56) + *(v89 + 72) * v51;
      v56 = v85;
      sub_1DAA8898C(v55, v85, type metadata accessor for Quote);
      v57 = v56;
      v58 = v90;
      sub_1DAA92FD0(v57, v90, type metadata accessor for Quote);
      sub_1DAA8898C(v58, v23, type metadata accessor for Quote);
      v59 = v23[8];
      v60 = v83;
      *v83 = *v23;
      *(v60 + 8) = v59;
      v61 = v23[24];
      *(v60 + 16) = *(v23 + 2);
      *(v60 + 24) = v61;
      v62 = v23[40];
      *(v60 + 32) = *(v23 + 4);
      *(v60 + 40) = v62;
      v63 = *(v23 + 15);
      *(v60 + 48) = *(v23 + 14);
      *(v60 + 56) = v63;
      *(v60 + 64) = v23[128];
      v65 = v86;
      v64 = v87;
      sub_1DAA77630(&v23[*(v86 + 60)], v60 + *(v87 + 36));
      sub_1DACB71E4();
      sub_1DAA4D03C(v23, type metadata accessor for Quote);
      sub_1DAA8898C(v54, v23, type metadata accessor for Quote);
      v66 = v23[8];
      v67 = v84;
      *v84 = *v23;
      *(v67 + 8) = v66;
      v68 = v23[24];
      *(v67 + 16) = *(v23 + 2);
      *(v67 + 24) = v68;
      v69 = v23[40];
      *(v67 + 32) = *(v23 + 4);
      *(v67 + 40) = v69;
      v70 = *(v23 + 15);
      *(v67 + 48) = *(v23 + 14);
      *(v67 + 56) = v70;
      *(v67 + 64) = v23[128];
      sub_1DAA77630(&v23[*(v65 + 60)], v67 + *(v64 + 36));
      sub_1DACB71E4();
      sub_1DAA4D03C(v23, type metadata accessor for Quote);
      LOBYTE(v70) = _s10StocksCore11WidgetQuoteV2eeoiySbAC_ACtFZ_0(v60, v67);
      v71 = v67;
      v29 = v80;
      sub_1DAA4D03C(v71, type metadata accessor for WidgetQuote);
      v72 = v60;
      v27 = v81;
      sub_1DAA4D03C(v72, type metadata accessor for WidgetQuote);
      sub_1DAA4D03C(v90, type metadata accessor for Quote);
      if ((v70 & 1) == 0)
      {
        goto LABEL_30;
      }

      result = sub_1DAA4D03C(v54, type metadata accessor for Quote);
      v36 = v88;
      if (!v35)
      {
        goto LABEL_11;
      }
    }

LABEL_30:
    v30 = v37;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a2 = v76;
      v92 = v37;
      v93 = v76;
      sub_1DAA8AA28(&v92);

      result = sub_1DAA4D03C(v91, type metadata accessor for Quote);
      goto LABEL_34;
    }

    result = sub_1DAA4D03C(v91, type metadata accessor for Quote);
LABEL_33:
    a2 = v76;
LABEL_34:
    a7 = v75;
    goto LABEL_35;
  }

LABEL_11:
  if (v77 <= v36 + 1)
  {
    v39 = v36 + 1;
  }

  else
  {
    v39 = v77;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v77)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v47 = v73;
      (*(*(v73 - 8) + 56))(v27, 1, 1, v73);
      v35 = 0;
      goto LABEL_19;
    }

    v35 = *(v78 + 8 * v38);
    ++v36;
    if (v35)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WidgetQuote(uint64_t a1)
{
  result = qword_1EE123738;
  if (!qword_1EE123738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA8A7E0(uint64_t a1)
{
  sub_1DAA49218(319, &qword_1EE11F998, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    sub_1DAA49218(319, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1DAA492B4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DAA8A8AC@<X0>(void *a2@<X8>)
{
  sub_1DAA888A0(0);
  sub_1DACB9DD4();
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  type metadata accessor for Quote(0);
  result = sub_1DACB9DD4();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_1DAA8A968(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA8A9C0(255, a3, a4);
    v5 = sub_1DACB9AF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA8A9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1DAA8AA28(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB9004();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  sub_1DACB8144();
  swift_beginAccess();
  v12 = *(v2 + 144);
  sub_1DACB71E4();
  sub_1DACB8154();
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v13 = sub_1DACB9954();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = v10;
  aBlock[4] = sub_1DAA94D18;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_21;
  v16 = _Block_copy(aBlock);
  sub_1DACB71E4();
  sub_1DACB71E4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA8AD7C(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA57250(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v9, v6, v16);
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_1DAA8AD7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1DAA8ADC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v34);
  v4 = sub_1DAA6CBB4(v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SDSBaseOperationFactory();
      v32 = v11;
      v33 = &off_1F5690858;
      v31[0] = v10;
      v12 = type metadata accessor for SDSSearchService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5690858;
      v13[2] = v18;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F5692638;
LABEL_6:
      a2[3] = v12;
      a2[4] = v19;
      *a2 = v13;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v25 = type metadata accessor for YahooBaseOperationFactory();
      v32 = v25;
      v33 = &off_1F56825C8;
      v31[0] = v24;
      v12 = type metadata accessor for YahooSearchService();
      v13 = swift_allocObject();
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v25);
      MEMORY[0x1EEE9AC00](v26);
      v28 = (v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v13[5] = v25;
      v13[6] = &off_1F56825C8;
      v13[2] = v30;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F56857A0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DAA8B1E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44304(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BB8, &protocol descriptor for SDSAuthTokenManagerType, 1);
  result = sub_1DACB8254();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20, &protocol descriptor for NetworkMonitorType, 1);
  result = sub_1DACB8254();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v9)
  {
    v6 = type metadata accessor for SDSBaseOperationFactory();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_1DAA4D460(&v12, v7 + 24);
    sub_1DAA4D460(&v10, v7 + 64);
    result = sub_1DAA4D460(&v8, v7 + 104);
    a2[3] = v6;
    a2[4] = &off_1F5690858;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1DAA8B3E8(void *a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v17)
  {
    sub_1DAA4D460(&v15, v19);
    v6 = v20;
    v7 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v7 + 8))(v6, v7);
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      v10 = sub_1DACB9324();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    sub_1DAA8B654(v10, v12, &v15);

    sub_1DAA640AC(v4);
    if (*(&v15 + 1))
    {
      sub_1DAB326A8(v15, *(&v15 + 1), v16, v17, v18);
    }

    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    swift_getKeyPath();
    (*(v13 + 56))();

    sub_1DACB7AB4();
    v14 = sub_1DACB8BC4();

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA8B654@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = *(v3 + 1192);
    v8 = (v7 + 64);
    v9 = *(v7 + 16) + 1;
    while (1)
    {
      if (!--v9)
      {
        goto LABEL_10;
      }

      v11 = *(v8 - 4);
      v10 = *(v8 - 3);
      v12 = *(v8 - 16);
      v14 = *(v8 - 1);
      v13 = *v8;
      if (v11 == v6 && v10 == v5)
      {
        break;
      }

      v8 += 5;
      result = sub_1DACBA174();
      if (result)
      {
        v5 = v10;
LABEL_12:
        *a3 = v11;
        a3[1] = v5;
        a3[2] = v12;
        a3[3] = v14;
        a3[4] = v13;
        sub_1DACB71E4();

        return sub_1DACB71E4();
      }
    }

    v11 = v6;
    goto LABEL_12;
  }

LABEL_10:
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1DAA8B75C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB9004();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  sub_1DACB8144();
  swift_beginAccess();
  v12 = *(v2 + 136);
  sub_1DACB71E4();
  sub_1DACB8154();
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v13 = sub_1DACB9954();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = v10;
  aBlock[4] = sub_1DAA94B0C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_24_1;
  v16 = _Block_copy(aBlock);
  sub_1DACB71E4();
  sub_1DACB71E4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA8AD7C(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA57250(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v9, v6, v16);
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_1DAA8BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  sub_1DACB8BE4();
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = v11;
  *(v13 + 4) = a3;
  (*(v8 + 32))(&v13[v12], &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *&v13[(v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;
  sub_1DACB71F4();
  return sub_1DACB8BF4();
}

uint64_t sub_1DAA8BC7C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DAA8BD10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BA8, &protocol descriptor for SDSAuthTokenServiceType, 1);
  sub_1DACB8254();
  if (v9[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v4 = sub_1DACB8224();
    if (v4)
    {
      v5 = v4;
      v8[3] = &type metadata for Clock;
      v8[4] = &off_1F5687E08;
      v6 = type metadata accessor for SDSAuthTokenManager();
      swift_allocObject();
      result = sub_1DAA8C514(v9, v5, v8);
      a2[3] = v6;
      a2[4] = &off_1F568E368;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_1DAA8BE98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA44304(0, &qword_1EE1255B8, MEMORY[0x1E69D6498], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44304(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DACB8204();
  sub_1DACB8254();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v6, 1, v9);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20, &protocol descriptor for NetworkMonitorType, 1);
  result = sub_1DACB8254();
  if (v15)
  {
    v11 = type metadata accessor for SDSAuthTokenService(0);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    (*(v10 + 32))(v12 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy, v6, v9);
    result = sub_1DAA4D460(&v14, v12 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
    a2[3] = v11;
    a2[4] = &off_1F5690FC8;
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8C118@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6490];
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1DAA8C1B0(uint64_t a1)
{
  if (!qword_1EE124048)
  {
    type metadata accessor for NetworkEvent(255);
    v1 = sub_1DACB8F14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124048);
    }
  }
}

uint64_t type metadata accessor for NetworkEvent(uint64_t a1)
{
  result = qword_1EE125108;
  if (!qword_1EE125108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA8C264(uint64_t a1)
{
  sub_1DACB8754();
  if (v1 <= 0x3F)
  {
    sub_1DAA8C2EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DAA8C2EC(uint64_t a1)
{
  if (!qword_1EE11FF90)
  {
    sub_1DACB8754();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FF90);
    }
  }
}

uint64_t sub_1DAA8C358@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  sub_1DAA8C1B0(0);
  a1[3] = v4;
  a1[4] = sub_1DAA8C3C0();
  *a1 = v3;

  return sub_1DACB71F4();
}

unint64_t sub_1DAA8C3C0()
{
  result = qword_1EE11D288;
  if (!qword_1EE11D288)
  {
    sub_1DAA8C1B0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D288);
  }

  return result;
}

uint64_t sub_1DAA8C438(uint64_t a1)
{
  result = sub_1DACB8204();
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

uint64_t sub_1DAA8C514(void *a1, uint64_t a2, void *a3)
{
  v17 = a2;
  v13 = a1;
  v14 = a3;
  v4 = sub_1DACB81D4();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v16 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v6);
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD00(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  sub_1DAA5EE58(0);
  v7 = MEMORY[0x1E69E6328];
  sub_1DAA5CD00(&qword_1EE125508, sub_1DAA5EE58, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  sub_1DAA8C8AC(0);
  swift_allocObject();
  *(v3 + 96) = sub_1DACB8354();
  v8 = v13;
  sub_1DAA4D678(v13, v3 + 16);
  v9 = v14;
  sub_1DAA4D678(v14, v3 + 56);
  sub_1DAA5FF54(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v18 = v10;
  sub_1DAA5CD00(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CD00(&qword_1EE125530, sub_1DAA5EFBC, v7);
  sub_1DACB9BB4();
  sub_1DAA5FF54(0, &qword_1EE1240D0, sub_1DAA8CC04, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v11 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v3 + 104) = v11;
  return v3;
}

void sub_1DAA8C8AC(uint64_t a1)
{
  if (!qword_1EE124110)
  {
    sub_1DAA6FE48(255);
    sub_1DAA8C974(255, &qword_1EE124010, MEMORY[0x1E69E5E28]);
    sub_1DAA5CD00(&qword_1EE1254D8, sub_1DAA6FE48, MEMORY[0x1E69E64F8]);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124110);
    }
  }
}

void sub_1DAA8C974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7AB4();
    v7 = type metadata accessor for SDSAuthToken(255);
    v8 = sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for SDSAuthToken(uint64_t a1)
{
  result = qword_1EE125060;
  if (!qword_1EE125060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA8CA74(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB7AB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAA8CB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SDSAuthTokenManager.StoreDescriptor;
    v8[1] = type metadata accessor for SDSAuthToken(255);
    v8[2] = sub_1DAA8CC24();
    v8[3] = sub_1DAA5CD00(&qword_1EE125070, type metadata accessor for SDSAuthToken, &protocol conformance descriptor for SDSAuthToken);
    v8[4] = sub_1DAA5CD00(&qword_1EE125078, type metadata accessor for SDSAuthToken, &protocol conformance descriptor for SDSAuthToken);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA8CC24()
{
  result = qword_1EE124C98;
  if (!qword_1EE124C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124C98);
  }

  return result;
}

void sub_1DAA8CCD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 80));
  sub_1DAA8CD3C((v5 + 88), a1, a2);

  os_unfair_lock_unlock((v5 + 80));
}

uint64_t sub_1DAA8CD3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      goto LABEL_59;
    }
  }

  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v12 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v13 = sub_1DACB9E14();
      if (v13 >= v8)
      {
LABEL_23:
        sub_1DAA8D0E4(v8, v13);
        v14 = type metadata accessor for QuoteManagerObserverProxy();
        ObjectType = swift_getObjectType();
        sub_1DAA8D3D8(a2, v14, ObjectType, a3);
        MEMORY[0x1E12770F0]();
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v12 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v16 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      sub_1DACB71F4();
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v16 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v18 = MEMORY[0x1E12777A0](v8, v4);
      v19 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v20)
      {
        goto LABEL_70;
      }

      if (v16 >= v20)
      {
        goto LABEL_71;
      }

      v18 = *(v4 + 8 * v8 + 32);
      v19 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4();
        v21 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

      if ((v4 & 0x8000000000000000) != 0 || v21)
      {
        v4 = sub_1DACA83E4();
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v16 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      *(v6 + 8 * v5) = v18;

      *a1 = v4;
LABEL_48:
      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v22 = sub_1DACB9E14();
      }

      else
      {
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v22)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8D110(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1DACB9E14();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_1DACB9E14();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_1DAA8D2B0(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1DAA8D1F4(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1DACB9E14();
    }

    result = sub_1DACB9CD4();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DAA8D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DACB9E14();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DACB9E14();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA8D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t WatchlistEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v21 = sub_1DACB78E4();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = a1[1];
  v20 = *a1;
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  HIDWORD(v19) = *(a1 + 20);
  sub_1DAA8D89C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v21);
  sub_1DACB7914();
  v13 = sub_1DACB6F34();
  v14 = v22;
  v22[1] = v12;
  v14[2] = v13;
  *v14 = v10;
  v25 = v20;
  v26 = v9;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v30 = WORD2(v19);
  sub_1DACB71E4();
  v15 = sub_1DAA6BA64();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAA8D708(uint64_t a1, uint64_t a2)
{
  v17 = *v2;
  off_1F5687178(&v12);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v5 = (*(a2 + 112))(&v7, a1, a2);

  return v5;
}

void sub_1DAA8D7CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB855C0(0, &qword_1ECBE80C0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E8300]);
  }
}

void sub_1DAA8D834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1DAA8D89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1DAA8D904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1DAA8D96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAA8D9E8()
{
  result = qword_1EE11FCF8;
  if (!qword_1EE11FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCF8);
  }

  return result;
}

uint64_t sub_1DAA8DA4C(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v10 = *a1;
  v11[0] = v3;
  *(v11 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 42) = *(a1 + 26);
  sub_1DAA8DB84(&v10, &v9);
  v6 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v7 = sub_1DACB8A74();

  return v7;
}

unint64_t sub_1DAA8DBF8()
{
  result = qword_1EE122E78;
  if (!qword_1EE122E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E78);
  }

  return result;
}

unint64_t sub_1DAA8DC68()
{
  result = qword_1EE122E60;
  if (!qword_1EE122E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E60);
  }

  return result;
}

void sub_1DAA8DCBC(int a1, os_unfair_lock_t lock)
{
  v4 = lock + 12;
  os_unfair_lock_lock(lock + 12);
  v5 = sub_1DACB71E4();
  v6 = sub_1DAA6BD48(v5, &lock[14]);
  v23 = v2;

  os_unfair_lock_unlock(v4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 32;
    while (v8 < *(v6 + 16))
    {
      v10 = *(v6 + v9);
      v11 = *(v6 + v9 + 16);
      *&v22[10] = *(v6 + v9 + 26);
      v21 = v10;
      *v22 = v11;
      v12 = *&v22[16];
      if (*(&v11 + 1) == sub_1DACB9324() && v12 == v13)
      {
        sub_1DAA8DB84(&v21, v20);

LABEL_12:

        sub_1DACB8BB4();
        v17 = swift_allocObject();
        v18 = *v22;
        v17[1] = v21;
        v17[2] = v18;
        *(v17 + 42) = *&v22[10];
        sub_1DAA8DB84(&v21, v20);
        v19 = sub_1DACB89D4();
        sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
        sub_1DACB8A74();

        sub_1DAA934A8(&v21);
        return;
      }

      v15 = sub_1DACBA174();
      sub_1DAA8DB84(&v21, v20);

      if (v15)
      {
        goto LABEL_12;
      }

      ++v8;
      sub_1DAA934A8(&v21);
      v9 += 48;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_1DAC990D4();
    swift_allocError();
    *v16 = 2;
    sub_1DAA763B0(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    swift_allocObject();
    sub_1DACB8AD4();
  }
}

unint64_t sub_1DAA8DFC4()
{
  result = qword_1EE122E58;
  if (!qword_1EE122E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E58);
  }

  return result;
}

unint64_t sub_1DAA8E020()
{
  result = qword_1EE122E70;
  if (!qword_1EE122E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E70);
  }

  return result;
}

unint64_t sub_1DAA8E078()
{
  result = qword_1EE122E68;
  if (!qword_1EE122E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E68);
  }

  return result;
}

unint64_t sub_1DAA8E0D0()
{
  result = qword_1EE122E50;
  if (!qword_1EE122E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E50);
  }

  return result;
}

unint64_t sub_1DAA8E124()
{
  result = qword_1EE122E48;
  if (!qword_1EE122E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E48);
  }

  return result;
}

unint64_t sub_1DAA8E17C()
{
  result = qword_1EE122E40;
  if (!qword_1EE122E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E40);
  }

  return result;
}

uint64_t sub_1DAA8E1D0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t WatchlistEntity.displayRepresentation.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA8E498(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1DACB7904();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DACB92C4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v8 + 56))(v6, 1, 1, v7);
  v10 = sub_1DACB7164();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_1DACB7174();
}

void sub_1DAA8E498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA8E4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA8E560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA8E5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA8E608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAA8E69C(uint64_t a1, unint64_t a2)
{
  sub_1DACB8144();
  swift_beginAccess();
  v4 = *(v2 + 136);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_1DACB9E14();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v5)
  {
    v11 = a2;
    a2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](a2, v4);
        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v7 = v12;
          a2 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        sub_1DACB71F4();
        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++a2;
      if (v6 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v2 + 136) = v7;

  type metadata accessor for StockPriceDataManagerObserverProxy();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v9 = swift_beginAccess();
  MEMORY[0x1E12770F0](v9);
  if (*((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAA8E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB8FB4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB9004();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = sub_1DAA7390C;
  v15[3] = v14;
  v15[4] = a5;
  aBlock[4] = sub_1DAA8E8E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v17);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_4Tm_0(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAA8EC8C(uint64_t a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1DACB81B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1[15];
  v11 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v10);
  (*(v11 + 8))(v10, v11);
  v12 = *(v5 + 25);
  sub_1DAA4D03C(v5, type metadata accessor for AppConfiguration);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x1E69D63D8], v6);
  v20 = v1;
  v16 = &v20;
  v17 = a1;
  v18 = v9;
  v19 = v9;
  sub_1DAA8EE80();
  swift_allocObject();
  v13 = sub_1DACB8B44();
  (*(v7 + 8))(v9, v6);
  return v13;
}

void sub_1DAA8EE80()
{
  if (!qword_1EE11D428)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D428);
    }
  }
}

uint64_t sub_1DAA8EED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v115 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA492B4(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v111 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = &v101[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v101[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v101[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v101[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v101[-v19];
  sub_1DAA8FF60(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v101[-v25];
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v101[-v28];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v101[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v37 = &v101[-v36];
  v38 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_72;
    }
  }

  v39 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_72;
    }
  }

  v40 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_72;
    }
  }

  v41 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_72;
    }
  }

  v42 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_72;
    }
  }

  v43 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_72;
    }
  }

  v44 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_72;
    }
  }

  v45 = *(a1 + 120);
  v46 = *(a2 + 120);
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_72;
    }

    v108 = v34;
    v109 = v35;
    v110 = v33;
    if ((*(a1 + 112) != *(a2 + 112) || v45 != v46) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v108 = v34;
    v109 = v35;
    v110 = v33;
    if (v46)
    {
      goto LABEL_72;
    }
  }

  if ((sub_1DAA95188(*(a1 + 128), *(a2 + 128)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v47 = type metadata accessor for Quote(0);
  v48 = *(v110 + 48);
  v106 = *(v47 + 52);
  v107 = v48;
  v104 = v47;
  v105 = sub_1DAA492B4;
  sub_1DAA89B98(a1 + v106, v37, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v106, &v107[v37], v105);
  v105 = *(v115 + 48);
  v106 = v115 + 48;
  if ((v105)(v37, 1, v4) == 1)
  {
    if ((v105)(&v107[v37], 1, v4) == 1)
    {
      sub_1DAA89DF0(v37, sub_1DAA492B4);
      goto LABEL_58;
    }

LABEL_56:
    v49 = v37;
LABEL_71:
    sub_1DAA89DF0(v49, sub_1DAA8FF60);
    goto LABEL_72;
  }

  sub_1DAA89B98(v37, v20, sub_1DAA492B4);
  if ((v105)(&v107[v37], 1, v4) == 1)
  {
    (*(v115 + 8))(v20, v4);
    goto LABEL_56;
  }

  (*(v115 + 32))(v114, &v107[v37], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v102 = sub_1DACB9264();
  v50 = *(v115 + 8);
  v103 = v115 + 8;
  v107 = v50;
  (v50)(v114, v4);
  (v107)(v20, v4);
  sub_1DAA89DF0(v37, sub_1DAA492B4);
  if ((v102 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_58:
  v107 = v104[14];
  v51 = *(v110 + 48);
  sub_1DAA89B98(&v107[a1], v32, sub_1DAA492B4);
  v52 = &v107[a2];
  v107 = v51;
  sub_1DAA89B98(v52, &v51[v32], sub_1DAA492B4);
  v53 = v105;
  if ((v105)(v32, 1, v4) == 1)
  {
    if ((v53)(&v107[v32], 1, v4) == 1)
    {
      sub_1DAA89DF0(v32, sub_1DAA492B4);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  sub_1DAA89B98(v32, v18, sub_1DAA492B4);
  if ((v53)(&v107[v32], 1, v4) == 1)
  {
    (*(v115 + 8))(v18, v4);
LABEL_63:
    v49 = v32;
    goto LABEL_71;
  }

  v54 = v115;
  (*(v115 + 32))(v114, &v107[v32], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LODWORD(v107) = sub_1DACB9264();
  v55 = *(v54 + 8);
  v55(v114, v4);
  v55(v18, v4);
  v53 = v105;
  sub_1DAA89DF0(v32, sub_1DAA492B4);
  if ((v107 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_65:
  v56 = v104[15];
  v57 = *(v110 + 48);
  sub_1DAA89B98(a1 + v56, v29, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v56, &v29[v57], sub_1DAA492B4);
  if ((v53)(v29, 1, v4) == 1)
  {
    if ((v53)(&v29[v57], 1, v4) == 1)
    {
      sub_1DAA89DF0(v29, sub_1DAA492B4);
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  sub_1DAA89B98(v29, v15, sub_1DAA492B4);
  if ((v53)(&v29[v57], 1, v4) == 1)
  {
    (*(v115 + 8))(v15, v4);
LABEL_70:
    v49 = v29;
    goto LABEL_71;
  }

  v61 = v114;
  v60 = v115;
  (*(v115 + 32))(v114, &v29[v57], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v62 = sub_1DACB9264();
  v63 = *(v60 + 8);
  v63(v61, v4);
  v63(v15, v4);
  sub_1DAA89DF0(v29, sub_1DAA492B4);
  if ((v62 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_75:
  v64 = v104[16];
  v65 = *(a1 + v64);
  v66 = *(a2 + v64);
  if (v65 == 7)
  {
    if (v66 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v66 == 7 || (sub_1DAC383D4(v65, v66) & 1) == 0)
  {
    goto LABEL_72;
  }

  v67 = v104[17];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68 == 7)
  {
    if (v69 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v69 == 7 || (sub_1DAC383D4(v68, v69) & 1) == 0)
  {
    goto LABEL_72;
  }

  v70 = v104[18];
  v71 = *(a1 + v70);
  v72 = *(a2 + v70);
  if (v71 == 7)
  {
    if (v72 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v72 == 7 || (sub_1DAC383D4(v71, v72) & 1) == 0)
  {
    goto LABEL_72;
  }

  v73 = v104[19];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = *(a2 + v73 + 8);
  if (v75)
  {
    if (!v77)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*v74 != *v76)
    {
      LOBYTE(v77) = 1;
    }

    if (v77)
    {
      goto LABEL_72;
    }
  }

  v78 = v104[20];
  v79 = *(v110 + 48);
  sub_1DAA89B98(a1 + v78, v26, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v78, &v26[v79], sub_1DAA492B4);
  if ((v105)(v26, 1, v4) == 1)
  {
    if ((v105)(&v26[v79], 1, v4) != 1)
    {
      goto LABEL_107;
    }

    sub_1DAA89DF0(v26, sub_1DAA492B4);
  }

  else
  {
    sub_1DAA89B98(v26, v113, sub_1DAA492B4);
    if ((v105)(&v26[v79], 1, v4) == 1)
    {
      (*(v115 + 8))(v113, v4);
      goto LABEL_107;
    }

    v81 = v114;
    v80 = v115;
    (*(v115 + 32))(v114, &v26[v79], v4);
    sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v82 = v113;
    v83 = sub_1DACB9264();
    v84 = *(v80 + 8);
    v84(v81, v4);
    v84(v82, v4);
    sub_1DAA89DF0(v26, sub_1DAA492B4);
    if ((v83 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v85 = v104[21];
  v86 = v109;
  v87 = *(v110 + 48);
  sub_1DAA89B98(a1 + v85, v109, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v85, v86 + v87, sub_1DAA492B4);
  v26 = v86;
  if ((v105)(v86, 1, v4) != 1)
  {
    sub_1DAA89B98(v86, v112, sub_1DAA492B4);
    if ((v105)(v86 + v87, 1, v4) != 1)
    {
      v89 = v114;
      v88 = v115;
      (*(v115 + 32))(v114, &v26[v87], v4);
      sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v90 = v112;
      v91 = sub_1DACB9264();
      v92 = *(v88 + 8);
      v92(v89, v4);
      v92(v90, v4);
      sub_1DAA89DF0(v26, sub_1DAA492B4);
      if ((v91 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_109;
    }

    (*(v115 + 8))(v112, v4);
LABEL_107:
    v49 = v26;
    goto LABEL_71;
  }

  if ((v105)(v86 + v87, 1, v4) != 1)
  {
    goto LABEL_107;
  }

  sub_1DAA89DF0(v86, sub_1DAA492B4);
LABEL_109:
  if ((sub_1DACB7C64() & 1) == 0)
  {
    goto LABEL_72;
  }

  v93 = v104[23];
  v94 = *(v110 + 48);
  v95 = v108;
  sub_1DAA89B98(a1 + v93, v108, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v93, v95 + v94, sub_1DAA492B4);
  v26 = v95;
  if ((v105)(v95, 1, v4) == 1)
  {
    if ((v105)(v95 + v94, 1, v4) == 1)
    {
      sub_1DAA89DF0(v95, sub_1DAA492B4);
LABEL_116:
      v58 = MEMORY[0x1E1275A20](a1 + v104[24], a2 + v104[24]);
      return v58 & 1;
    }

    goto LABEL_107;
  }

  sub_1DAA89B98(v95, v111, sub_1DAA492B4);
  if ((v105)(v95 + v94, 1, v4) == 1)
  {
    (*(v115 + 8))(v111, v4);
    goto LABEL_107;
  }

  v97 = v114;
  v96 = v115;
  (*(v115 + 32))(v114, &v26[v94], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v98 = v111;
  v99 = sub_1DACB9264();
  v100 = *(v96 + 8);
  v100(v97, v4);
  v100(v98, v4);
  sub_1DAA89DF0(v26, sub_1DAA492B4);
  if (v99)
  {
    goto LABEL_116;
  }

LABEL_72:
  v58 = 0;
  return v58 & 1;
}

void sub_1DAA8FF60(uint64_t a1)
{
  if (!qword_1EE123A28)
  {
    sub_1DAA492B4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A28);
    }
  }
}

uint64_t sub_1DAA8FFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v60 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - v11;
  sub_1DAA8A968(0, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v68 = (&v60 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 64);
  v60 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v66 = a2;
  v67 = v15;
  v62 = a1;
  v63 = v4;
  v61 = v23;
  while (v22)
  {
    v65 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_17:
    v29 = (*(a1 + 48) + 16 * v24);
    v31 = *v29;
    v30 = v29[1];
    v32 = v64;
    sub_1DAA8898C(*(a1 + 56) + *(v69 + 72) * v24, v64, type metadata accessor for Chart);
    sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
    v34 = v33;
    v35 = *(v33 + 48);
    v36 = v67;
    *v67 = v31;
    *(v36 + 1) = v30;
    v15 = v36;
    sub_1DAA92FD0(v32, &v36[v35], type metadata accessor for Chart);
    (*(*(v34 - 8) + 56))(v15, 0, 1, v34);
    sub_1DACB71E4();
    a2 = v66;
LABEL_18:
    v37 = v15;
    v38 = v68;
    sub_1DAA93038(v37, v68, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
    sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
    v39 = 1;
    if ((*(*(v34 - 8) + 48))(v38, 1, v34) == 1)
    {
      return v39;
    }

    v41 = *v38;
    v40 = v38[1];
    sub_1DAA92FD0(v38 + *(v34 + 48), v10, type metadata accessor for Chart);
    v42 = sub_1DAA4BF3C(v41, v40);
    LOBYTE(v41) = v43;

    if ((v41 & 1) == 0)
    {
      goto LABEL_47;
    }

    sub_1DAA8898C(*(a2 + 56) + *(v69 + 72) * v42, v7, type metadata accessor for Chart);
    v44 = sub_1DAA931B0(*v7, *v10);
    v45 = v63;
    if ((v44 & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1DACB7CC4();
    sub_1DAA8AD7C(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1DACB9264() & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1DAA49610(0);
    if ((sub_1DACB9264() & 1) == 0)
    {
      goto LABEL_46;
    }

    v46 = v45[6];
    v47 = (v7 + v46);
    v48 = *(v7 + v46 + 8);
    v49 = (v10 + v46);
    v50 = *(v10 + v46 + 8);
    if (v48)
    {
      if (!v50)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (*v47 != *v49)
      {
        LOBYTE(v50) = 1;
      }

      if (v50)
      {
LABEL_46:
        sub_1DAA4D03C(v7, type metadata accessor for Chart);
LABEL_47:
        sub_1DAA4D03C(v10, type metadata accessor for Chart);
        return 0;
      }
    }

    if ((MEMORY[0x1E1275A20](v7 + v45[7], v10 + v45[7]) & 1) == 0)
    {
      goto LABEL_46;
    }

    result = sub_1DACB7C64();
    if ((result & 1) == 0)
    {
      goto LABEL_46;
    }

    v51 = v45[9];
    v52 = *(v7 + v51);
    v53 = *(v10 + v51);
    v54 = *(v52 + 16);
    if (v54 != *(v53 + 16))
    {
      goto LABEL_46;
    }

    a1 = v62;
    v15 = v67;
    if (v52 != v53 && v54)
    {
      v55 = v54 - 1;
      if (v54 < v54 - 1)
      {
        v55 = v54;
      }

      if (v55 >= 2)
      {
        v56 = v55 & 0x7FFFFFFFFFFFFFFELL;
        v58 = v56;
        do
        {
          v58 -= 2;
        }

        while (v58);
      }

      else
      {
        v56 = 0;
      }

      v59 = v54 - v56;
      while (v59)
      {
        if (!--v59)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_6:
    sub_1DAA4D03C(v7, type metadata accessor for Chart);
    result = sub_1DAA4D03C(v10, type metadata accessor for Chart);
    v22 = v65;
    a2 = v66;
    v23 = v61;
  }

  if (v23 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
      v34 = v57;
      (*(*(v57 - 8) + 56))(v15, 1, 1, v57);
      v65 = 0;
      v18 = v26;
      goto LABEL_18;
    }

    v28 = *(v60 + 8 * v27);
    ++v18;
    if (v28)
    {
      v65 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v18 = v27;
      goto LABEL_17;
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1DAA90720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v6 = sub_1DACB8FB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB9004();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v3;
  aBlock[4] = sub_1DAA4F974;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  sub_1DAA4F924(a2, a3);
  v15 = v3;
  sub_1DACB8FD4();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v16);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_1DAA90A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    v6 = a3;
    sub_1DAA5859C(0, v3, 0);
    v4 = v16;
    v7 = (a1 + 56);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      sub_1DACB71E4();
      if (v11 >= v10 >> 1)
      {
        sub_1DAA5859C((v10 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v7 += 17;
      --v3;
    }

    while (v3);
    a3 = v6;
    a2 = v15;
  }

  v13 = (*(a3 + 8))(v4, a2);

  return v13;
}

void sub_1DAA90B28(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *))
{
  v7 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a1 + 64));
  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1DAB4DBC0;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DAB4DBC0;
    *(v14 + 24) = v12;
    *(a1 + 72) = sub_1DAB4DC78;
    *(a1 + 80) = v14;
    sub_1DACB71F4();
    os_unfair_lock_unlock((a1 + 64));
    (*(v13 + 16))();
    sub_1DAA4F910(sub_1DAB4DBE8, v13);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 64));
  }

  os_unfair_lock_lock((a1 + 40));
  v15 = *(a1 + 44);
  os_unfair_lock_unlock((a1 + 40));
  if (v15 == 1)
  {
    sub_1DAB4DB6C();
    v16 = swift_allocError();
    a2();
  }

  else
  {
    sub_1DACB83C4();
    a4(v9);
    sub_1DAA4CFDC(v9, type metadata accessor for AppConfiguration);
  }
}

uint64_t sub_1DAA90D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA90DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C707061;
  if (v2 != 1)
  {
    v3 = 0x6F6F686179;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F72467265666E69;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEF6E6F696765526DLL;
  }

  v6 = 0x656C707061;
  if (*a2 != 1)
  {
    v6 = 0x6F6F686179;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F72467265666E69;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xEF6E6F696765526DLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

void sub_1DAA90EB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v59 = a2;
  v60 = a4;
  v58 = a1;
  v9 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1DACB81B4();
  v12 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a3[5];
  v16 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v15);
  v57 = sub_1DAA78E98(a4, a5, v15, v16);
  v18 = a3[5];
  v17 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v18);
  v19 = a3[15];
  v20 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v19);
  (*(v20 + 8))(v19, v20);
  v21 = *(v11 + 25);
  v54 = type metadata accessor for AppConfiguration;
  sub_1DAA4D03C(v11, type metadata accessor for AppConfiguration);
  *v14 = v21;
  v53 = *MEMORY[0x1E69D63D8];
  v22 = *(v12 + 104);
  v49 = v12 + 104;
  v50 = v22;
  v23 = v48;
  v22(v14);
  v24 = v60;
  v55 = sub_1DAA78E98(v60, v14, v18, v17);
  v25 = *(v12 + 8);
  v51 = v12 + 8;
  v52 = v25;
  v26 = v23;
  v25(v14, v23);
  v27 = a3[10];
  v28 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v27);
  (*(v28 + 8))(v24, v56, v27, v28);
  v29 = sub_1DACB89D4();
  v56 = sub_1DACB8B14();

  v30 = a3[10];
  v31 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v30);
  v32 = a3[15];
  v33 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v32);
  (*(v33 + 8))(v32, v33);
  v34 = *(v11 + 25);
  sub_1DAA4D03C(v11, v54);
  *v14 = v34;
  v50(v14, v53, v26);
  (*(v31 + 8))(v60, v14, v30, v31);
  v52(v14, v26);
  v35 = sub_1DACB89D4();
  v36 = sub_1DACB8B14();

  v61 = v55;
  v62 = v36;
  sub_1DAA81178(0);
  sub_1DACB8BB4();
  v37 = swift_allocObject();
  v38 = v56;
  *(v37 + 16) = v57;
  *(v37 + 24) = v38;
  *(v37 + 32) = a3;
  *(v37 + 40) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1DAA91E70;
  *(v39 + 24) = v37;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v40 = sub_1DACB89D4();
  sub_1DACB8A54();

  v41 = swift_allocObject();
  v43 = v58;
  v42 = v59;
  *(v41 + 16) = v58;
  *(v41 + 24) = v42;
  sub_1DACB71F4();
  v44 = sub_1DACB89D4();
  sub_1DACB8A64();

  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 24) = v42;
  sub_1DACB71F4();
  v46 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA91450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7270;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x316F6D6564;
  v7 = 0xE500000000000000;
  if (a1 != 6)
  {
    v6 = 0x326F6D6564;
    v5 = 0xE500000000000000;
  }

  v8 = 0x6C65766564;
  if (a1 != 4)
  {
    v8 = 0x786F62646E6173;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 24945;
  if (a1 != 2)
  {
    v10 = 1953719668;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E6967617473;
  if (!a1)
  {
    v12 = 0x69746375646F7270;
    v11 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE500000000000000;
      if (a2 == 6)
      {
        if (v13 != 0x316F6D6564)
        {
          goto LABEL_41;
        }
      }

      else if (v13 != 0x326F6D6564)
      {
        goto LABEL_41;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6C65766564)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x786F62646E6173)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE200000000000000;
        if (v13 != 24945)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE400000000000000;
      v3 = 1953719668;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x676E6967617473)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1DACBA174();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1DAA91680(char a1, void *a2, uint64_t a3)
{
  v5 = sub_1DACB8874();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DACB8864();
    result = sub_1DACB8244();
    if (result)
    {
      sub_1DAA917E8();
      (*(v6 + 104))(v9, *MEMORY[0x1E69D6918], v5);
      sub_1DACB8844();

      (*(v6 + 8))(v9, v5);
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1DAA917E8()
{
  result = qword_1EE11F940;
  if (!qword_1EE11F940)
  {
    sub_1DAA420F4(255, &qword_1EE1254C8, off_1E85E2088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F940);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  sub_1DAA7C8BC(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAA91964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAA919FC@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA6E428(a1);
  type metadata accessor for RawAttributionSourceLogo(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DAA91A60(uint64_t a1)
{
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB89C4();

  return v2;
}

BOOL sub_1DAA91AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawAttributionSourceLogo(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  sub_1DAA91E0C(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 56);
  sub_1DAA91EDC(a1, v19, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA91EDC(a2, &v19[v20], type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAA91EDC(v19, v13, type metadata accessor for RawAttributionSourceLogo);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DAA6E94C(&v19[v20], v6, type metadata accessor for RawAttributionSourceLogo.Resolved);
      v21 = sub_1DAB4A96C(v13, v6);
      sub_1DAA7133C(v6, type metadata accessor for RawAttributionSourceLogo.Resolved);
      v22 = v13;
      v23 = type metadata accessor for RawAttributionSourceLogo.Resolved;
LABEL_9:
      sub_1DAA7133C(v22, v23);
      v26 = type metadata accessor for RawAttributionSourceLogo;
      goto LABEL_10;
    }

    v24 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v25 = v13;
  }

  else
  {
    sub_1DAA91EDC(v19, v15, type metadata accessor for RawAttributionSourceLogo);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DAA6E94C(&v19[v20], v9, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v21 = sub_1DAA91F44(v15, v9);
      sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v22 = v15;
      v23 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
      goto LABEL_9;
    }

    v24 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v25 = v15;
  }

  sub_1DAA7133C(v25, v24);
  v21 = 0;
  v26 = sub_1DAA91E0C;
LABEL_10:
  sub_1DAA7133C(v19, v26);
  return v21;
}

void sub_1DAA91E0C(uint64_t a1)
{
  if (!qword_1EE11DEF8)
  {
    type metadata accessor for RawAttributionSourceLogo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11DEF8);
    }
  }
}

uint64_t sub_1DAA91E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA91EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1DAA91F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v52 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - v8;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  sub_1DAA712D8(0, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v17 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  if ((sub_1DACB7A34() & 1) == 0 || *(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v47 = v7;
  v48 = v13;
  v50 = v20;
  v23 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v51 = v4;
  v49 = v23;
  v24 = *(v23 + 20);
  v25 = *(v17 + 48);
  sub_1DAA70878(a1 + v24, v22, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v26 = a2 + v24;
  v27 = v51;
  sub_1DAA70878(v26, &v22[v25], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v29 = v52 + 48;
  v28 = *(v52 + 48);
  if (v28(v22, 1, v27) == 1)
  {
    if (v28(&v22[v25], 1, v27) == 1)
    {
      v52 = v29;
      sub_1DAA92844(v22, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      goto LABEL_11;
    }

LABEL_8:
    sub_1DAB4C530(v22, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  sub_1DAA70878(v22, v15, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v28(&v22[v25], 1, v27) == 1)
  {
    sub_1DAA7133C(v15, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    goto LABEL_8;
  }

  sub_1DAA6E94C(&v22[v25], v9, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v15, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v41 = v22;
LABEL_22:
    sub_1DAA92844(v41, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  v52 = v29;
  v30 = *(v27 + 20);
  v31 = *&v15[v30];
  v32 = *&v9[v30];
  sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA7133C(v15, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA92844(v22, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v31 != v32)
  {
    return 0;
  }

LABEL_11:
  v33 = *(v49 + 24);
  v34 = *(v17 + 48);
  v35 = a1 + v33;
  v36 = v50;
  sub_1DAA70878(v35, v50, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v37 = a2 + v33;
  v38 = v51;
  sub_1DAA70878(v37, v36 + v34, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v28(v36, 1, v38) == 1)
  {
    if (v28((v36 + v34), 1, v38) == 1)
    {
      sub_1DAA92844(v36, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      return 1;
    }

    goto LABEL_16;
  }

  v40 = v48;
  sub_1DAA70878(v36, v48, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v28((v36 + v34), 1, v38) == 1)
  {
    sub_1DAA7133C(v40, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
LABEL_16:
    sub_1DAB4C530(v36, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  v42 = v36 + v34;
  v43 = v47;
  sub_1DAA6E94C(v42, v47, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v40, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v41 = v36;
    goto LABEL_22;
  }

  v44 = *(v38 + 20);
  v45 = *(v40 + v44);
  v46 = *(v43 + v44);
  sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA7133C(v40, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA92844(v36, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  return v45 == v46;
}

uint64_t sub_1DAA92620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1DACB89D4();
  sub_1DACB89C4();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a6;
  *(v11 + 40) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DAA929B8;
  *(v12 + 24) = v11;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8A64();

  return v14;
}

uint64_t sub_1DAA92754()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA9278C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA927D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAADF8F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA92844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA52FAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA928A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA53000(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA92910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA53064(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1DAA929C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAA92AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote(0);
  v55 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v46 - v8;
  sub_1DAA8A968(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v46 - v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v7;
  v52 = v13;
  v15 = 0;
  v49 = (&v46 - v12);
  v50 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v47 = (v19 + 63) >> 6;
  v48 = v17;
  while (v21)
  {
    v53 = (v21 - 1) & v21;
    v22 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    v31 = v54;
    sub_1DAA8898C(*(v50 + 56) + *(v55 + 72) * v22, v54, type metadata accessor for Quote);
    sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
    v33 = v32;
    v34 = *(v32 + 48);
    v25 = v52;
    *v52 = v29;
    *(v25 + 8) = v30;
    sub_1DAA92FD0(v31, v25 + v34, type metadata accessor for Quote);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
    sub_1DACB71E4();
    v14 = v49;
LABEL_17:
    sub_1DAA93038(v25, v14, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
    sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
    v35 = (*(*(v33 - 8) + 48))(v14, 1, v33);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v38 = *v14;
    v37 = v14[1];
    v39 = v51;
    sub_1DAA92FD0(v14 + *(v33 + 48), v51, type metadata accessor for Quote);
    v40 = sub_1DAA4BF3C(v38, v37);
    LOBYTE(v38) = v41;

    if ((v38 & 1) == 0)
    {
      sub_1DAA4D03C(v39, type metadata accessor for Quote);
      return 0;
    }

    v42 = *(a2 + 56) + *(v55 + 72) * v40;
    v43 = v54;
    sub_1DAA8898C(v42, v54, type metadata accessor for Quote);
    v44 = sub_1DAA8EED0(v43, v39);
    sub_1DAA4D03C(v43, type metadata accessor for Quote);
    result = sub_1DAA4D03C(v39, type metadata accessor for Quote);
    v21 = v53;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v47 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v47;
  }

  v24 = v23 - 1;
  v25 = v52;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v47)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v33 = v45;
      (*(*(v45 - 8) + 56))(v25, 1, 1, v45);
      v53 = 0;
      v15 = v24;
      goto LABEL_17;
    }

    v27 = *(v48 + 8 * v26);
    ++v15;
    if (v27)
    {
      v53 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA92FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA93038(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1DAA8A968(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAA930A8(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v7 = v2[1];
  v8[0] = v5;
  *(v8 + 10) = *(v2 + 42);
  return (*(v4 + 128))(&v7, v3, v4);
}

uint64_t sub_1DAA93124()
{
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA931B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart.Entry(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1DAC3CDD8(v13, v10, type metadata accessor for Chart.Entry);
      sub_1DAC3CDD8(v14, v7, type metadata accessor for Chart.Entry);
      if ((sub_1DACB7C64() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      v18 = &v10[v17];
      v19 = v10[v17 + 8];
      v20 = &v7[v17];
      v21 = v7[v17 + 8];
      if (v19)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (*v18 != *v20)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          break;
        }
      }

      v22 = v4[6];
      v23 = &v10[v22];
      v24 = v10[v22 + 8];
      v25 = &v7[v22];
      v26 = v7[v22 + 8];
      if (v24)
      {
        if (!v26)
        {
          break;
        }
      }

      else
      {
        if (*v23 != *v25)
        {
          LOBYTE(v26) = 1;
        }

        if (v26)
        {
          break;
        }
      }

      v27 = v4[7];
      v28 = &v10[v27];
      v29 = v10[v27 + 8];
      v30 = &v7[v27];
      v31 = v7[v27 + 8];
      if (v29)
      {
        if (!v31)
        {
          break;
        }
      }

      else
      {
        if (*v28 != *v30)
        {
          LOBYTE(v31) = 1;
        }

        if (v31)
        {
          break;
        }
      }

      v32 = v4[8];
      v33 = &v10[v32];
      v34 = v10[v32 + 8];
      v35 = &v7[v32];
      v36 = v7[v32 + 8];
      if (v34)
      {
        if (!v36)
        {
          break;
        }
      }

      else
      {
        if (*v33 != *v35)
        {
          LOBYTE(v36) = 1;
        }

        if (v36)
        {
          break;
        }
      }

      v37 = &v10[v4[9]];
      v38 = *v37;
      v39 = v37[8];
      sub_1DAA85404(v10, type metadata accessor for Chart.Entry);
      v40 = &v7[v4[9]];
      v41 = *v40;
      v42 = v40[8];
      sub_1DAA85404(v7, type metadata accessor for Chart.Entry);
      if (v39)
      {
        if (!v42)
        {
          return 0;
        }
      }

      else
      {
        if (v38 == v41)
        {
          v43 = v42;
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    sub_1DAA85404(v7, type metadata accessor for Chart.Entry);
    sub_1DAA85404(v10, type metadata accessor for Chart.Entry);
  }

  return 0;
}

void sub_1DAA93504(os_unfair_lock_s *a1)
{
  v9 = *&a1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(a1 + 38);
  v2 = *&a1[40]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(a1 + 38);
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v10[3] = v9;
          v10[4] = &off_1F5692AD8;
          v10[0] = a1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v7 = *(v5 + 16);
            sub_1DACB71F4();
            v7(v10, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v10);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t objectdestroy_261Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_0()
{

  if (v0[48] != 1)
  {
    if (v0[28] != 1)
    {
    }

    if (v0[32] != 1)
    {
    }

    if (v0[36] != 1)
    {
    }

    if (v0[40] != 1)
    {
    }

    if (v0[44] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 521, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1DACB8EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 64);
  if (v1 <= 2)
  {
    if (*(v0 + 64))
    {
      if (v1 == 1)
      {
        swift_unknownObjectRelease();
      }

      else if (v1 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }
  }

  else
  {
    if (*(v0 + 64) <= 6u)
    {
      if (v1 != 3 && v1 != 6)
      {
        goto LABEL_13;
      }

LABEL_12:

      goto LABEL_13;
    }

    if (v1 == 7 || v1 == 8)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DAA93CB4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t storeEnumTagSinglePayload for WatchlistSortState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAA93E04(char *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v10 = a1;
  v6 = v4 >> 5;
  if (v4 >> 5 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71F4();
        v7 = sub_1DAC08AB0;
        v8 = sub_1DAC087CC;
      }

      else
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71F4();
        v7 = sub_1DAC0A664;
        v8 = sub_1DAC09CF4;
      }

      sub_1DAC09BF4(&v10, v5, v3, v4 & 1, v7, v8);
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DAC086E4(&v10, v5, v3, v4 & 1);
    }

    goto LABEL_14;
  }

  if (v6 == 3)
  {
    sub_1DACB71E4();
    sub_1DACB71F4();
    v9 = sub_1DAC0CF74;
    goto LABEL_10;
  }

  if (v6 == 4)
  {
    sub_1DACB71E4();
    sub_1DACB71F4();
    v9 = sub_1DAC0F05C;
LABEL_10:
    sub_1DAC0F1B8(&v10, v3, v4 & 1, v9);
LABEL_14:

    return;
  }

  sub_1DACB71E4();
}

uint64_t getEnumTagSinglePayload for WatchlistSortState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t sub_1DAA94044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAA9A3AC;

  return sub_1DAA94374(a1, v4);
}

uint64_t sub_1DAA940FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (a1 != 6)
  {
    v5 = 0x75466C617574756DLL;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = 0xE300000000000000;
  v7 = 6714469;
  if (a1 != 4)
  {
    v7 = 0x73657275747566;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75636F7470797263;
  v9 = 0xEE0079636E657272;
  if (a1 != 2)
  {
    v8 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  v10 = 0x79636E6572727563;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7865646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA0000000000646ELL;
        if (v11 != 0x75466C617574756DLL)
        {
LABEL_45:
          v14 = sub_1DACBA174();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6714469)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73657275747566)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0079636E657272;
      if (v11 != 0x75636F7470797263)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x797469757165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x79636E6572727563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1DAA94374(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAA94980;

  return v6(a1);
}

uint64_t sub_1DAA944B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1DACB9794();
  v5[9] = sub_1DACB9784();
  v7 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DAA9459C, v7, v6);
}

void sub_1DAA9459C()
{
  v1 = v0[7];

  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 88);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 80));
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v12 = v3;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12777A0](v4, v2);
    }

    else
    {
      v9 = *(v2 + 8 * v4 + 32);
      sub_1DACB71F4();
    }

    v10 = v0[7];
    v0[5] = type metadata accessor for QuoteManager();
    v0[6] = &off_1F56819B0;
    v0[2] = v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = v0[8];
      v5 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);
      sub_1DACB71F4();
      v8 = v5;
      v3 = v12;
      v7(v0 + 2, v13, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1DACB71F4();
    }

    ++v4;

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  while (v3 != v4);
LABEL_13:

  v11 = v0[1];

  v11();
}

uint64_t sub_1DAA94754()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAA94848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA948B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA94918@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7CC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DAA94980()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_1DAA94A84(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 32))(a1) + 16);

  return v2 > 1;
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA94B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2 >> 62)
    {
      result = sub_1DACB9E14();
      v7 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1E12777A0](i, a2);
          }

          else
          {
            v12 = *(a2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v16[3] = type metadata accessor for StockPriceDataManager();
          v16[4] = &off_1F568B128;
          v16[0] = v6;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v12 + 24);
            ObjectType = swift_getObjectType();
            v15[0] = a3;
            v15[1] = a4;
            v11 = *(v9 + 8);
            swift_retain_n();
            v11(v16, v15, ObjectType, v9);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v16);
        }
      }
    }
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA94D1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

BOOL _s10StocksCore11WidgetQuoteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA8FF60(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v12;
    if ((*(a1 + 48) != *(a2 + 48) || v18 != v19) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = v12;
    if (v19)
    {
      return 0;
    }
  }

  if ((sub_1DAA95188(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v21 = *(type metadata accessor for WidgetQuote(0) + 36);
  v22 = *(v20 + 48);
  sub_1DAA89C00(a1 + v21, v14, sub_1DAA492B4);
  sub_1DAA89C00(a2 + v21, &v14[v22], sub_1DAA492B4);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) != 1)
  {
    sub_1DAA89C00(v14, v10, sub_1DAA492B4);
    if (v23(&v14[v22], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_32;
    }

    (*(v5 + 32))(v7, &v14[v22], v4);
    sub_1DAA5D520(&qword_1EE123A40, MEMORY[0x1E6969550]);
    v25 = sub_1DACB9264();
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v10, v4);
    sub_1DAA88DD8(v14, sub_1DAA492B4);
    return (v25 & 1) != 0;
  }

  if (v23(&v14[v22], 1, v4) != 1)
  {
LABEL_32:
    sub_1DAA88DD8(v14, sub_1DAA8FF60);
    return 0;
  }

  sub_1DAA88DD8(v14, sub_1DAA492B4);
  return 1;
}

uint64_t sub_1DAA95188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1852141679;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6465736F6C63;
  }

  else if (a1 == 3)
  {
    v3 = 0x656B72614D657270;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x756F487265746661;
    v4 = 0xEA00000000007372;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1852141679;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656B72614D657270;
    v6 = 0xE900000000000074;
    if (a2 != 3)
    {
      v5 = 0x756F487265746661;
      v6 = 0xEA00000000007372;
    }

    if (a2 == 2)
    {
      v7 = 0x6465736F6C63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void sub_1DAA95318(void *a1@<X8>, const void *a2@<X0>)
{
  v3 = sub_1DAA953C0(a2);
  sub_1DAA55EB0(v3);

  v4 = objc_allocWithZone(MEMORY[0x1E69B5428]);
  v5 = sub_1DACB9114();

  v6 = [v4 initWithConfigDictionary_];

  *a1 = v6;
}

unint64_t sub_1DAA953C0(const void *a1)
{
  __dst[64] = *MEMORY[0x1E69E9840];
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  memcpy(__dst, a1, 0x1F9uLL);
  sub_1DAA955A0();
  v2 = sub_1DACB7584();
  v4 = v3;

  v5 = objc_opt_self();
  v6 = sub_1DACB7B44();
  __dst[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:4 error:__dst];

  if (v7)
  {
    v8 = __dst[0];
    sub_1DACB9B74();
    swift_unknownObjectRelease();
    sub_1DAA61100();
    if (swift_dynamicCast())
    {
      sub_1DAA563C0(v2, v4);
      return v13;
    }
  }

  else
  {
    v10 = __dst[0];
    v11 = sub_1DACB78C4();

    swift_willThrow();
  }

  v12 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
  sub_1DAA563C0(v2, v4);
  return v12;
}

unint64_t sub_1DAA955A0()
{
  result = qword_1EE1247A8;
  if (!qword_1EE1247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247A8);
  }

  return result;
}

void sub_1DAA955F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA961D4();
    v7 = a3(a1, &type metadata for PaidBundleConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA95658(void *a1)
{
  sub_1DAA955F4(0, &qword_1EE123BD8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v92 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - v5;
  v7 = *v1;
  v90 = v1[1];
  v89 = *(v1 + 16);
  v88 = *(v1 + 17);
  v87 = *(v1 + 18);
  v86 = *(v1 + 19);
  v85 = v1[3];
  v84 = *(v1 + 32);
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  v82 = v1[7];
  v83 = v8;
  v79 = v10;
  v11 = v1[10];
  v80 = v1[9];
  v81 = v9;
  v12 = v1[11];
  v13 = v1[12];
  v77 = v11;
  v78 = v12;
  v14 = v1[13];
  v15 = v1[14];
  v75 = v13;
  v76 = v14;
  v16 = v1[15];
  v17 = v1[16];
  v73 = v15;
  v74 = v16;
  v18 = v1[17];
  v19 = v1[18];
  v71 = v17;
  v72 = v18;
  v20 = v1[20];
  v69 = v1[19];
  v70 = v19;
  v21 = v1[21];
  v22 = v1[22];
  v45 = v20;
  v46 = v21;
  v23 = v1[23];
  v24 = v1[24];
  v47 = v22;
  v48 = v23;
  v25 = v1[46];
  v26 = v1[47];
  v50 = v24;
  v51 = v26;
  v119 = v25;
  v49 = v1[25];
  v27 = *(v1 + 22);
  v117 = *(v1 + 21);
  v118 = v27;
  v28 = *(v1 + 18);
  v113 = *(v1 + 17);
  v114 = v28;
  v29 = *(v1 + 20);
  v115 = *(v1 + 19);
  v116 = v29;
  v30 = *(v1 + 14);
  v109 = *(v1 + 13);
  v110 = v30;
  v31 = *(v1 + 16);
  v111 = *(v1 + 15);
  v112 = v31;
  v32 = v1[49];
  LODWORD(v25) = *(v1 + 400);
  v52 = *(v1 + 384);
  v53 = v25;
  v33 = v1[51];
  v34 = v1[52];
  v54 = v32;
  v55 = v33;
  v35 = v1[53];
  v36 = v1[54];
  v56 = v34;
  v57 = v35;
  v37 = v1[55];
  v38 = v1[56];
  v58 = v36;
  v59 = v37;
  v39 = v1[57];
  v40 = v1[58];
  v60 = v38;
  v61 = v39;
  v41 = v1[59];
  v62 = v40;
  v63 = v41;
  LODWORD(v41) = *(v1 + 481);
  v64 = *(v1 + 480);
  v65 = v41;
  v42 = v1[62];
  v66 = v1[61];
  v67 = v42;
  v68 = *(v1 + 504);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA961D4();
  sub_1DACB71E4();
  sub_1DACBA304();
  *&v98 = v7;
  LOBYTE(v95[0]) = 0;
  sub_1DAA5260C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA96338(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v120 = v4;
  v43 = v91;
  sub_1DACBA074();

  if (v43)
  {
    return (*(v92 + 8))(v6, v120);
  }

  *&v98 = v90;
  LOBYTE(v95[0]) = 1;
  sub_1DACBA074();
  LOBYTE(v98) = 2;
  sub_1DACBA0A4();
  LOBYTE(v98) = 3;
  sub_1DACBA0A4();
  LOBYTE(v98) = 4;
  sub_1DACBA0A4();
  LOBYTE(v98) = 5;
  sub_1DACBA0A4();
  LOBYTE(v98) = 6;
  sub_1DACBA0C4();
  LOBYTE(v98) = 7;
  sub_1DACBA0A4();
  LOBYTE(v98) = 8;
  sub_1DACBA0C4();
  LOBYTE(v98) = 9;
  sub_1DACBA094();
  LOBYTE(v98) = 10;
  sub_1DACBA094();
  LOBYTE(v98) = 11;
  sub_1DACBA094();
  LOBYTE(v98) = 12;
  sub_1DACBA094();
  LOBYTE(v98) = 13;
  sub_1DACBA094();
  LOBYTE(v98) = 14;
  sub_1DACBA024();
  LOBYTE(v98) = 15;
  sub_1DACBA0C4();
  LOBYTE(v98) = 16;
  sub_1DACBA0C4();
  LOBYTE(v98) = 17;
  sub_1DACBA0C4();
  *&v98 = v46;
  LOBYTE(v95[0]) = 18;
  sub_1DAA5260C(0, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96934(&qword_1EE123F88, sub_1DAA969C4, MEMORY[0x1E69E6300]);
  sub_1DACBA074();
  *&v98 = v47;
  LOBYTE(v95[0]) = 19;
  sub_1DAA5260C(0, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96A18();
  sub_1DACBA074();
  *&v98 = v48;
  LOBYTE(v95[0]) = 20;
  sub_1DACBA074();
  *&v98 = v49;
  LOBYTE(v95[0]) = 21;
  sub_1DACBA074();
  *&v98 = v50;
  LOBYTE(v95[0]) = 22;
  sub_1DACBA074();
  v106 = v117;
  v107 = v118;
  v108 = v119;
  v102 = v113;
  v103 = v114;
  v104 = v115;
  v105 = v116;
  v98 = v109;
  v99 = v110;
  v100 = v111;
  v101 = v112;
  v97 = 23;
  sub_1DAA5265C(&v109, v95);
  sub_1DAA96B08();
  sub_1DACBA074();
  v95[8] = v106;
  v95[9] = v107;
  v96 = v108;
  v95[4] = v102;
  v95[5] = v103;
  v95[6] = v104;
  v95[7] = v105;
  v95[0] = v98;
  v95[1] = v99;
  v95[2] = v100;
  v95[3] = v101;
  sub_1DAA52740(v95);
  LOBYTE(v94) = 24;
  sub_1DACBA064();
  LOBYTE(v94) = 25;
  sub_1DACBA064();
  LOBYTE(v94) = 26;
  sub_1DACBA024();
  LOBYTE(v94) = 27;
  sub_1DACBA094();
  LOBYTE(v94) = 28;
  sub_1DACBA024();
  LOBYTE(v94) = 29;
  sub_1DACBA0F4();
  LOBYTE(v94) = 30;
  sub_1DACBA0F4();
  LOBYTE(v94) = 31;
  sub_1DACBA0F4();
  LOBYTE(v94) = 32;
  sub_1DACBA0A4();
  LOBYTE(v94) = 33;
  sub_1DACBA0A4();
  LOBYTE(v94) = 34;
  sub_1DACBA0F4();
  v94 = v67;
  v93 = 35;
  sub_1DAA4BB3C(0, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96BA0(&qword_1EE123F60, &qword_1EE124D68, &unk_1DACDCE08, MEMORY[0x1E69E6300]);
  sub_1DACBA074();
  LOBYTE(v94) = 36;
  sub_1DACBA0A4();
  return (*(v92 + 8))(0, v120);
}

unint64_t sub_1DAA961D4()
{
  result = qword_1EE1247C0;
  if (!qword_1EE1247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247C0);
  }

  return result;
}

unint64_t sub_1DAA9622C()
{
  result = qword_1EE1247B0;
  if (!qword_1EE1247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247B0);
  }

  return result;
}

unint64_t sub_1DAA96284()
{
  result = qword_1EE1247B8;
  if (!qword_1EE1247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247B8);
  }

  return result;
}

uint64_t sub_1DAA962D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA613E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA96338(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5260C(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA963BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA9642C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61680(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA964B0(char a1)
{
  result = 0x4C64656C62616E65;
  switch(a1)
  {
    case 1:
    case 35:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
    case 32:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0x6C63697472416564;
      break;
    case 10:
      result = 0x6C63697472416572;
      break;
    case 11:
      result = 0x6C63697472416873;
      break;
    case 12:
    case 36:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD00000000000002ALL;
      break;
    case 14:
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000027;
      break;
    case 18:
      result = 0x436C6C6177796170;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD00000000000002ELL;
      break;
    case 24:
      result = 0xD00000000000001DLL;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0xD000000000000019;
      break;
    case 27:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0xD000000000000025;
      break;
    case 30:
      result = 0xD000000000000021;
      break;
    case 31:
      result = 0xD00000000000002FLL;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DAA96934(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5260C(255, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA969C4()
{
  result = qword_1EE124FE0;
  if (!qword_1EE124FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FE0);
  }

  return result;
}

unint64_t sub_1DAA96A18()
{
  result = qword_1EE123F18;
  if (!qword_1EE123F18)
  {
    sub_1DAA5260C(255, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA96AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F18);
  }

  return result;
}

unint64_t sub_1DAA96AB4()
{
  result = qword_1EE124580;
  if (!qword_1EE124580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124580);
  }

  return result;
}

unint64_t sub_1DAA96B08()
{
  result = qword_1EE124E90;
  if (!qword_1EE124E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E90);
  }

  return result;
}

uint64_t sub_1DAA96B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioUpsellConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA96BA0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4BB3C(255, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA96B5C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PaidBundleConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaidBundleConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DAA96D8C()
{
  if (!qword_1EE11F698)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F698);
    }
  }
}

uint64_t sub_1DAA96E08()
{
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8284();
}

uint64_t sub_1DAA96E78()
{
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8284();
}

uint64_t sub_1DAA96F40(uint64_t a1)
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v1 = sub_1DACB9AD4();
  v2 = sub_1DACB9914();
  sub_1DACB8C64("will sync NewsCore private data controllers", 43, 2, &dword_1DAA3F000, v1, v2, MEMORY[0x1E69E7CC0]);

  sub_1DAA97008(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA97008(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACB8B74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA9705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_1DAA98788;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8C14();
}

uint64_t sub_1DAA97134()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA9716C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAA971C8()
{
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA97284()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[11];
  v5 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 507);
  v7 = v3[4064];
  sub_1DAA640AC(v3);
  if (v7)
  {
    v8 = [objc_opt_self() enabledForCurrentLevel_];
  }

  else
  {
    sub_1DACB8014();
    sub_1DACB7FF4();
    if (qword_1EE11D5C0 != -1)
    {
      swift_once();
    }

    [objc_opt_self() enabledForCurrentLevel_];
    v8 = sub_1DACB8004();
  }

  return v8 & 1;
}

uint64_t sub_1DAA9741C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5C8 = result;
  return result;
}

void sub_1DAA97614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  v8 = [v7 subscriptionList];
  if ([v8 isDirty])
  {
    sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC2610;
    v10 = [v8 subscribedTagIDs];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DACB9804();

      v13 = *(v12 + 16);

      v14 = MEMORY[0x1E69E6530];
      v15 = MEMORY[0x1E69E65A8];
      *(v9 + 56) = MEMORY[0x1E69E6530];
      *(v9 + 64) = v15;
      *(v9 + 32) = v13;
      v16 = [v8 autoFavoriteTagIDs];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1DACB9804();

        v19 = *(v18 + 16);

        *(v9 + 96) = v14;
        *(v9 + 104) = v15;
        *(v9 + 72) = v19;
        v20 = [v8 mutedTagIDs];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1DACB9804();

          v23 = *(v22 + 16);

          *(v9 + 136) = v14;
          *(v9 + 144) = v15;
          *(v9 + 112) = v23;
          sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
          v24 = sub_1DACB9AD4();
          sub_1DACB9914();
          sub_1DACB8C64("will sync News subscriptions from %ld subscriptions, %ld auto-favorites, and %ld muted tags", v64, v65, v66);

          MEMORY[0x1EEE9AC00](v25);
          sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          sub_1DACB8B44();
          *(swift_allocObject() + 16) = v8;
          v26 = v8;
          v27 = sub_1DACB89D4();
          sub_1DACB8AF4();

          MEMORY[0x1E12770F0]();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DACB9694();
          }

          sub_1DACB96F4();
          goto LABEL_8;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_8:
  v28 = [v7 userInfo];
  if ([v28 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v29 = sub_1DACB9AD4();
    v30 = sub_1DACB9914();
    sub_1DACB8C64("will sync News user info", 24, 2, &dword_1DAA3F000, v29, v30, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v31);
    sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1DACB8B44();
    v32 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v68 = a4;
  v69 = a5;
  sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB8B44();
  MEMORY[0x1E12770F0]();
  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v33 = [v7 readingList];
  if ([v33 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v34 = sub_1DACB9AD4();
    v35 = sub_1DACB9914();
    sub_1DACB8C64("will sync News reading list", 27, 2, &dword_1DAA3F000, v34, v35, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v36);
    swift_allocObject();
    sub_1DACB8B44();
    v37 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v38 = [v7 audioPlaylist];
  if ([v38 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v39 = sub_1DACB9AD4();
    v40 = sub_1DACB9914();
    sub_1DACB8C64("will sync News audio playlist", 29, 2, &dword_1DAA3F000, v39, v40, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v41);
    swift_allocObject();
    sub_1DACB8B44();
    v42 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v67 = v28;
  v43 = [v7 readingHistory];
  if ([v43 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v44 = sub_1DACB9AD4();
    v45 = sub_1DACB9914();
    sub_1DACB8C64("will sync News reading/listening history", 40, 2, &dword_1DAA3F000, v44, v45, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v46);
    swift_allocObject();
    sub_1DACB8B44();
    v47 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v48 = [v7 personalizationData];
  if ([v48 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v49 = sub_1DACB9AD4();
    v50 = sub_1DACB9914();
    sub_1DACB8C64("will sync News personalization data", 35, 2, &dword_1DAA3F000, v49, v50, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v51);
    swift_allocObject();
    sub_1DACB8B44();
    v52 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v53 = [v7 userEventHistory];
  if ([v53 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v54 = sub_1DACB9AD4();
    v55 = sub_1DACB9914();
    sub_1DACB8C64("will sync News user event history", 33, 2, &dword_1DAA3F000, v54, v55, MEMORY[0x1E69E7CC0]);

    MEMORY[0x1EEE9AC00](v56);
    swift_allocObject();
    sub_1DACB8B44();
    v57 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v58 = sub_1DACB89D4();
  type metadata accessor for FCFetchResult(0);
  sub_1DACB8934();

  v59 = swift_allocObject();
  *(v59 + 16) = a2;
  *(v59 + 24) = a3;
  sub_1DACB71F4();
  v60 = sub_1DACB89D4();
  sub_1DACB8A64();

  v61 = swift_allocObject();
  *(v61 + 16) = v68;
  *(v61 + 24) = v69;
  sub_1DACB71F4();
  v62 = sub_1DACB89D4();
  sub_1DACB8AA4();

  v63 = sub_1DACB89D4();
  sub_1DACB8AF4();
}

uint64_t sub_1DAA98478()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA984E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA9854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71F4();
  v9 = sub_1DACB9AD4();
  v10 = sub_1DACB9914();
  sub_1DACB8C64("will sync News+ bundle subscription", 35, 2, &dword_1DAA3F000, v9, v10, MEMORY[0x1E69E7CC0]);

  v11 = *(a5 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DAA7390C;
  *(v12 + 24) = v8;
  v14[4] = sub_1DAA98758;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAA74E58;
  v14[3] = &block_descriptor_25;
  v13 = _Block_copy(v14);

  [v11 refreshBundleSubscriptionWithCachePolicy:2 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1DAA986C4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v3 = sub_1DACB9AD4();
  v4 = sub_1DACB9914();
  sub_1DACB8C64("did sync News+ bundle subscription", 34, 2, &dword_1DAA3F000, v3, v4, MEMORY[0x1E69E7CC0]);

  return a2(0);
}

void sub_1DAA987F4(const char *a1, uint64_t a2)
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v5 = sub_1DACB9AD4();
  v4 = sub_1DACB9914();
  sub_1DACB8C64(a1, a2, 2, &dword_1DAA3F000, v5, v4, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1DAA9888C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1DACB7664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  if (a3)
  {
    v78 = a1;
    v79 = a2;
    sub_1DACB71E4();
    sub_1DACB8994();
    if (v75)
    {
LABEL_8:
      a1 = v74;

      return a1;
    }
  }

  else
  {
    sub_1DACB71E4();
  }

  v11 = *(v3 + 24);
  v78 = a1;
  v79 = a2;
  sub_1DACB71E4();
  sub_1DACB8994();

  if (v75)
  {
    goto LABEL_8;
  }

  v66 = v11;
  v70 = a3;
  sub_1DAA66A98(&qword_1EE11F138, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
  sub_1DACB9BA4();
  LODWORD(v78) = 44;
  sub_1DACB9B84();
  LODWORD(v78) = 46;
  v12 = sub_1DACB9B84();
  v74 = 32;
  v75 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v12);
  *(&v61 - 2) = &v74;
  sub_1DACB71E4();
  result = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88710, (&v61 - 4), a1, a2, v13);
  v69 = *(result + 16);
  if (!v69)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v74 = v16;
    sub_1DAA613E8();
    sub_1DAA66A98(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v58 = sub_1DACB9214();
    v60 = v59;

    v74 = v58;
    v75 = v60;
    v78 = a1;
    v79 = a2;
    sub_1DACB71E4();
    sub_1DACB89A4();
    (*(v9 + 8))(v72, v8);
    return v58;
  }

  v61 = v4;
  v62 = a2;
  v63 = v9;
  v64 = v8;
  v65 = a1;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v67 = result + 32;
  v68 = result;
  while (v15 < *(result + 16))
  {
    v73 = v16;
    v17 = (v67 + 32 * v15);
    v19 = *v17;
    v18 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    sub_1DACB71E4();
    v74 = sub_1DACB9B04();
    v75 = v22;
    sub_1DAA642D8();
    v23 = sub_1DACB9B34();
    v25 = v24;

    v71 = v18;
    if (v70)
    {
      if (qword_1EE11E130 != -1)
      {
        swift_once();
      }

      v26 = off_1EE11E140;
      v74 = v23;
      v75 = v25;
      v27 = sub_1DACB94D4();
      v29 = v28;
      if (!v26[2] || (v30 = v27, sub_1DACBA284(), sub_1DACB9404(), v31 = sub_1DACBA2C4(), v32 = -1 << *(v26 + 32), v33 = v31 & ~v32, ((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0))
      {
LABEL_26:

        v74 = v19;
        v75 = v71;
        v76 = v21;
        v77 = v20;
        sub_1DAA9A358();
        v37 = sub_1DACB9B34();
        v39 = v38;

        v74 = v37;
        v75 = v39;
        v40 = sub_1DACB94D4();
        v42 = v41;
LABEL_39:
        v16 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1DAA9A3B0(0, *(v16 + 2) + 1, 1, v16);
        }

        v56 = *(v16 + 2);
        v55 = *(v16 + 3);
        if (v56 >= v55 >> 1)
        {
          v16 = sub_1DAA9A3B0((v55 > 1), v56 + 1, 1, v16);
        }

        *(v16 + 2) = v56 + 1;
        v57 = &v16[16 * v56];
        *(v57 + 4) = v40;
        *(v57 + 5) = v42;
        goto LABEL_12;
      }

      v34 = ~v32;
      while (1)
      {
        v35 = (v26[6] + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (sub_1DACBA174() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v26 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (qword_1ECBE5BB8 != -1)
      {
        swift_once();
      }

      v43 = off_1ECBE94F8;
      v74 = v23;
      v75 = v25;
      v44 = sub_1DACB94D4();
      v46 = v45;
      if (!v43[2] || (v47 = v44, sub_1DACBA284(), sub_1DACB9404(), v48 = sub_1DACBA2C4(), v49 = -1 << *(v43 + 32), v50 = v48 & ~v49, ((*(v43 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0))
      {
LABEL_38:

        v40 = MEMORY[0x1E1276EB0](v19, v71, v21, v20);
        v42 = v54;

        goto LABEL_39;
      }

      v51 = ~v49;
      while (1)
      {
        v52 = (v43[6] + 16 * v50);
        v53 = *v52 == v47 && v52[1] == v46;
        if (v53 || (sub_1DACBA174() & 1) != 0)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        if (((*(v43 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    v16 = v73;
LABEL_12:
    ++v15;
    result = v68;
    if (v15 == v69)
    {

      a1 = v65;
      v8 = v64;
      v9 = v63;
      a2 = v62;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA99090()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return sub_1DAA990D4(v1, v2);
}

uint64_t sub_1DAA990D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DAA65E94();
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DACB8A44();
}

uint64_t sub_1DAA99210()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAA99290(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

uint64_t sub_1DAA992E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DAA9997C(a1, v1 + v6, v4, v5);
}

void *sub_1DAA993D0()
{
  result = sub_1DAA99408(0xD00000000000001DLL, 0x80000001DACF02C0);
  off_1EE11E140 = result;
  return result;
}

uint64_t sub_1DAA99408(uint64_t a1, unint64_t a2)
{
  v46 = MEMORY[0x1E69E7CD0];
  if (qword_1EE123DD8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v43 = qword_1EE13E470;
    v3 = [qword_1EE13E470 localizations];
    v4 = sub_1DACB9644();

    v42 = *(v4 + 16);
    if (!v42)
    {
      break;
    }

    v6 = 0;
    *&v5 = 136315138;
    v41 = v5;
    while (v6 < *(v4 + 16))
    {
      v7 = (v4 + 32 + 16 * v6);
      v8 = *v7;
      v9 = v7[1];
      sub_1DACB71E4();
      v10 = sub_1DACB92F4();
      v11 = sub_1DACB92F4();
      v12 = sub_1DACB92F4();
      v13 = sub_1DACB92F4();
      v14 = [v43 localizedStringForKey:v10 value:v11 table:v12 localization:v13];

      sub_1DACB9324();
      v15 = sub_1DACB93A4();
      v17 = v16;

      v18 = v15 == 32 && v17 == 0xE100000000000000;
      if (v18 || (sub_1DACBA174() & 1) != 0)
      {

        if (qword_1EE11D350 != -1)
        {
          swift_once();
        }

        v19 = sub_1DACB8C94();
        __swift_project_value_buffer(v19, qword_1EE13E240);
        sub_1DACB71E4();
        sub_1DACB71E4();
        v20 = sub_1DACB8C74();
        v21 = sub_1DACB9904();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v45[0] = v23;
          *v22 = 136315394;
          *(v22 + 4) = sub_1DAA7ABE4(a1, a2, v45);
          *(v22 + 12) = 2080;
          v24 = sub_1DAA7ABE4(v8, v9, v45);

          *(v22 + 14) = v24;
          _os_log_impl(&dword_1DAA3F000, v20, v21, "Could not find unnecessary words for key=%s, localizations=%s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E1278C00](v23, -1, -1);
          MEMORY[0x1E1278C00](v22, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        if (qword_1EE11D350 != -1)
        {
          swift_once();
        }

        v25 = sub_1DACB8C94();
        __swift_project_value_buffer(v25, qword_1EE13E240);
        sub_1DACB71E4();
        v26 = sub_1DACB8C74();
        v27 = sub_1DACB98F4();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v45[0] = v29;
          *v28 = v41;
          *(v28 + 4) = sub_1DAA7ABE4(v15, v17, v45);
          _os_log_impl(&dword_1DAA3F000, v26, v27, "Found unnecessary words: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1E1278C00](v29, -1, -1);
          MEMORY[0x1E1278C00](v28, -1, -1);
        }

        v45[0] = v15;
        v45[1] = v17;
        sub_1DAA99C4C();
        v30 = sub_1DACB9874();

        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = (v30 + 56);
          do
          {
            v33 = *(v32 - 3);
            v34 = *(v32 - 2);
            v35 = *(v32 - 1);
            v36 = *v32;
            sub_1DACB71E4();
            v37 = MEMORY[0x1E1276EB0](v33, v34, v35, v36);
            v39 = v38;

            sub_1DAA4C8A0(v45, v37, v39);

            v32 += 4;
            --v31;
          }

          while (v31);
        }
      }

      if (++v6 == v42)
      {

        return v46;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DAA9997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(a4 + 8) + **(a4 + 8));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DAA9A3AC;

  return v9(a3, a4);
}

uint64_t sub_1DAA99A98()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E240);
  __swift_project_value_buffer(v0, qword_1EE13E240);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAA99B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAA94980;

  return sub_1DAA99C30();
}

unint64_t sub_1DAA99C4C()
{
  result = qword_1EE11D260;
  if (!qword_1EE11D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D260);
  }

  return result;
}

uint64_t sub_1DAA99CA0()
{
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  __swift_project_value_buffer(v1, qword_1EE13E2D0);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Will fetch for deprecated stocks using noop deprecation service", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAA99DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
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
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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

uint64_t sub_1DAA99FFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
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
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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

uint64_t sub_1DAA9A26C()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E2D0);
  __swift_project_value_buffer(v0, qword_1EE13E2D0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

unint64_t sub_1DAA9A358()
{
  result = qword_1EE11D228;
  if (!qword_1EE11D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D228);
  }

  return result;
}

char *sub_1DAA9A3B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1DAA9A4D4(uint64_t a1)
{
  sub_1DAA9A574(319);
  if (v1 <= 0x3F)
  {
    sub_1DACB7AB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAA9A574(uint64_t a1)
{
  if (!qword_1EE123A98)
  {
    sub_1DAA8D9E8();
    v1 = sub_1DACB6F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123A98);
    }
  }
}

uint64_t type metadata accessor for SymbolEntity(uint64_t a1)
{
  result = qword_1EE123508;
  if (!qword_1EE123508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA9A61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SymbolEntity.displayRepresentation.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1DAA8E4FC(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1DACB7904();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DACB92C4();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB9294();
  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_1DACB7164();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_1DACB7174();
}

uint64_t sub_1DAA9AADC@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7724();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  sub_1DACB7714();
  sub_1DACB7704();
  MEMORY[0x1E12751C0](0xD000000000000010, 0x80000001DACE59F0);
  v15 = 0x2F6C6F626D79732FLL;
  v16 = 0xE800000000000000;
  MEMORY[0x1E1276F20](v10, v11);
  MEMORY[0x1E12751D0](v15, v16);
  sub_1DACB76D4();
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v5, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return (*(v13 + 32))(a1, v5, v12);
  }

  return result;
}

uint64_t SymbolEntity.init(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a1[7];
  v39 = a1[6];
  v40 = v10;
  v41 = *(a1 + 16);
  v11 = a1[3];
  v35 = a1[2];
  v36 = v11;
  v12 = a1[5];
  v37 = a1[4];
  v38 = v12;
  v13 = a1[1];
  v33 = *a1;
  v34 = v13;
  sub_1DAA9A574(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v14 = *MEMORY[0x1E6968DF0];
  v15 = *(v4 + 104);
  v26 = v3;
  v27 = v4 + 104;
  v15(v6, v14, v3);
  sub_1DACB7914();
  v29 = sub_1DACB6F34();
  v16 = v30;
  *(v30 + 16) = v29;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v15(v6, v14, v3);
  sub_1DACB7914();
  v28 = sub_1DACB6F34();
  *(v16 + 24) = v28;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v15(v6, v14, v26);
  sub_1DACB7914();
  v17 = sub_1DACB6F34();
  v18 = v34;
  *v16 = v34;
  v19 = *(&v37 + 1);
  v20 = v38;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = *(&v38 + 1);
  v22 = v39;
  *(v16 + 48) = v20;
  *(v16 + 56) = v21;
  *(v16 + 64) = v22;
  v31[6] = v39;
  v31[7] = v40;
  v32 = v41;
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  v23 = *(type metadata accessor for SymbolEntity(0) + 40);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA9AADC(v16 + v23);
  v31[0] = v18;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v31[0] = v35;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v31[0] = v36;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  return sub_1DAA9B1C8(&v33);
}

uint64_t sub_1DAA9B234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7AB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAA9B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DACB7AB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAA9B398(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v31 = a1[7];
  v32 = a1[6];
  v30 = *(a1 + 64);
  v27 = a1[10];
  v28 = a1[9];
  v23 = a1[12];
  v24 = a1[11];
  v16 = a1[13];
  v20 = a1[14];
  v13 = a1[15];
  v18 = a1[16];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v29 = *(a2 + 64);
  v25 = *(a2 + 80);
  v26 = *(a2 + 72);
  v21 = *(a2 + 96);
  v22 = *(a2 + 88);
  v19 = *(a2 + 112);
  v14 = *(a2 + 120);
  v15 = *(a2 + 104);
  v17 = *(a2 + 128);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1DACBA174() & 1) == 0 || (v32 != v11 || v31 != v10) && (sub_1DACBA174() & 1) == 0 || (sub_1DAA940FC(v30, v29) & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DACBA174() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19 || (v16 != v15 || v20 != v19) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1DAA9B684()
{
  v1 = v0[7];
  v6[6] = v0[6];
  v6[7] = v1;
  v6[8] = v0[8];
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v3 = v0[5];
  v6[4] = v0[4];
  v6[5] = v3;
  v4 = v0[1];
  v6[0] = *v0;
  v6[1] = v4;
  sub_1DAA9B6F0(v6);
  sub_1DAA9B6E0(v6);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DAA9B6FC@<X0>(uint64_t a2@<X8>)
{
  sub_1DAA53000(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v40 - v11;
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = v19;
  swift_unknownObjectRetain();
  v21 = [v20 contentURL];
  if (!v21)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_1DACB9A34();
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_1DAA928A0(v7, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      return (*(v13 + 56))(a2, 1, 1, v12);
    }

    else
    {
      URL.replacingHostWithStocksHost()(a2);
      (*(v13 + 8))(v7, v12);
      return (*(v13 + 56))(a2, 0, 1, v12);
    }
  }

  v43 = v10;
  v44 = v2;
  v45 = a2;
  v22 = v21;
  sub_1DACB7A44();

  (*(v13 + 32))(v18, v16, v12);
  v42 = objc_opt_self();
  sub_1DAB4CC70();
  v23 = swift_allocObject();
  v40 = xmmword_1DACC1D20;
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 16) = xmmword_1DACC1D20;
  *(v23 + 56) = v24;
  *(v23 + 32) = 0x656C6369747261;
  *(v23 + 40) = 0xE700000000000000;
  v41 = sub_1DACB9634();

  sub_1DAA53000(0, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  sub_1DACB7684();
  *(swift_allocObject() + 16) = v40;
  v25 = sub_1DACB79E4();
  v27 = v26;
  sub_1DACB7B54();
  sub_1DAA563C0(v25, v27);
  sub_1DACB7674();

  v28 = sub_1DACB9634();

  v29 = v41;
  v30 = [v42 fc:v41 NewsURLWithPathComponents:v28 queryItems:0 internal:?];

  if (v30)
  {
    v31 = v43;
    sub_1DACB7A44();

    v32 = 0;
    v33 = v46;
  }

  else
  {
    v32 = 1;
    v33 = v46;
    v31 = v43;
  }

  v35 = *(v13 + 56);
  v35(v31, v32, 1, v12);
  sub_1DAB4CCC4(v31, v33);
  if ((*(v13 + 48))(v33, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    swift_unknownObjectRelease();
    sub_1DAA928A0(v33, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v36 = v45;
    v37 = 1;
  }

  else
  {
    v38 = v45;
    URL.replacingHostWithStocksHost()(v45);
    swift_unknownObjectRelease();
    v39 = *(v13 + 8);
    v39(v18, v12);
    v39(v33, v12);
    v36 = v38;
    v37 = 0;
  }

  return (v35)(v36, v37, 1, v12);
}

uint64_t URL.replacingHostWithStocksHost()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1DAA52F58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1DAA52F58(0, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1DACB7724();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB76C4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DAB1FAB0(v9, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
    v14 = sub_1DACB7AB4();
    return (*(*(v14 - 8) + 16))(a1, v2, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x1E12751C0](0xD000000000000010, 0x80000001DACE59F0);
    sub_1DACB76D4();
    (*(v11 + 8))(v13, v10);
    v16 = sub_1DACB7AB4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      sub_1DAB1FAB0(v6, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      return (*(v17 + 16))(a1, v2, v16);
    }

    else
    {
      return (*(v17 + 32))(a1, v6, v16);
    }
  }
}

uint64_t sub_1DAA9C01C()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v8[8] = v0[8];
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v3 = v0[5];
  v8[4] = v0[4];
  v8[5] = v3;
  v4 = v0[1];
  v8[0] = *v0;
  v8[1] = v4;
  sub_1DAA9B6F0(v8);
  v5 = [*sub_1DAA9B6E0(v8) identifier];
  v6 = sub_1DACB9324();

  return v6;
}

uint64_t sub_1DAA9C0D8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D540 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 176);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAA9C250(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v12 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v13;
          a2 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        sub_1DACB71F4();
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v3 + 64) = v8;

  type metadata accessor for LanguageSettingsObserverProxy();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x1E12770F0](v10);
  if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  return swift_endAccess();
}

uint64_t storeEnumTagSinglePayload for ChartRange(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAA9C550(uint64_t a1)
{
  sub_1DAA581BC(0, &qword_1ECBE99C8, sub_1DAA9CB70, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t getEnumTagSinglePayload for ChartRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void *sub_1DAA9C670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125E60, &protocol descriptor for LanguageSettingsType, 1);
    result = sub_1DACB8254();
    if (v9)
    {
      v6 = type metadata accessor for StockEntityService();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1DAA4D460(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F5686DC0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1DAA9C7C0(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v8 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA420F4(0, &unk_1EE125358, 0x1E69B5378);
    if (*a2 != -1)
    {
      swift_once();
    }

    result = sub_1DACB8224();
    if (result)
    {
      v9 = result;
      v10 = [v8 recordSourceWithSchema_];
      swift_unknownObjectRelease();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA9C930(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_7:
    v14 = *(v10 + 56);

    v14(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_7;
  }

  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[20];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[26]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1DACB7CC4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[28];

    v16(v17, a2, a2, v15);
  }
}

void sub_1DAA9CB70(uint64_t a1)
{
  if (!qword_1EE11FC60)
  {
    sub_1DAA614EC(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FC60);
    }
  }
}

_OWORD *sub_1DAA9CBF4()
{
  sub_1DAAA12F0(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v2 = v0[4];
  v17 = v0[5];
  v3 = v17;
  v18 = v2;
  v1[1] = xmmword_1DACD6260;
  v1[2] = v2;
  v5 = v0[7];
  v16 = v0[6];
  v4 = v16;
  v1[3] = v3;
  v1[4] = v4;
  v7 = v0[9];
  v14 = v0[8];
  v6 = v14;
  v15 = v5;
  v1[5] = v5;
  v1[6] = v6;
  v8 = v0[9];
  v12 = v0[10];
  v9 = v12;
  v13 = v7;
  v1[7] = v8;
  v1[8] = v9;
  sub_1DAAA1344(&v18, v11);
  sub_1DAAA1344(&v17, v11);
  sub_1DAAA1344(&v16, v11);
  sub_1DAAA1344(&v15, v11);
  sub_1DAAA1344(&v14, v11);
  sub_1DAAA1344(&v13, v11);
  sub_1DAAA1344(&v12, v11);
  return v1;
}

uint64_t sub_1DAA9CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v416 = a3;
  v413 = a2;
  v410 = a1;
  v353 = a4;
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA7BD0C(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v351 = &v331 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v352 = &v331 - v8;
  v402 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], v4);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v348 = &v331 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v349 = &v331 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v370 = &v331 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v369 = &v331 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v409 = &v331 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v366 = &v331 - v20;
  sub_1DAA7BD0C(0, qword_1EE123840, type metadata accessor for QuoteDetail, v4);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v350 = &v331 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v343 = &v331 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v332 = &v331 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v346 = &v331 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v379 = &v331 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v378 = &v331 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v354 = &v331 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v377 = &v331 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v376 = &v331 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v342 = &v331 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v375 = &v331 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v341 = &v331 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v374 = &v331 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v340 = &v331 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v372 = &v331 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v339 = &v331 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v371 = &v331 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v338 = &v331 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v368 = &v331 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v337 = &v331 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v336 = &v331 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v335 = &v331 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v334 = &v331 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v333 = &v331 - v68;
  v412 = type metadata accessor for Quote;
  sub_1DAA7BD0C(0, qword_1EE120250, type metadata accessor for Quote, v4);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v347 = &v331 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v345 = &v331 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v365 = &v331 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v364 = &v331 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v363 = &v331 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v362 = &v331 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v360 = &v331 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v359 = &v331 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v357 = &v331 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v356 = &v331 - v88;
  v89 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], v4);
  v91 = MEMORY[0x1EEE9AC00](v90 - 8);
  v380 = &v331 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v385 = &v331 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v373 = &v331 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v384 = &v331 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v383 = &v331 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v367 = &v331 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v382 = &v331 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v361 = &v331 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v411 = &v331 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v358 = &v331 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v415 = &v331 - v112;
  MEMORY[0x1EEE9AC00](v111);
  v381 = &v331 - v113;
  v355 = type metadata accessor for SymbolEntity;
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v4);
  v115 = MEMORY[0x1EEE9AC00](v114 - 8);
  v387 = (&v331 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v115);
  v386 = &v331 - v117;
  v118 = sub_1DACB78E4();
  v119 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v331 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v122 - 8);
  v123 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v123 - 8);
  v124 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v124 - 8);
  sub_1DAAA113C(0, &qword_1EE11F1E0, qword_1EE11EF28, type metadata accessor for SymbolEntity, sub_1DAAA11C4);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v125 = *MEMORY[0x1E6968DF0];
  v126 = *(v119 + 104);
  v126(v121, v125, v118);
  sub_1DACB7914();
  sub_1DAAA15D8(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v408 = sub_1DACB6F04();
  sub_1DAAA113C(0, &qword_1EE11F1D8, &qword_1EE11F180, v89, sub_1DAAA16DC);
  v128 = v127;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v407 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v406 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v405 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v414 = v128;
  v404 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v403 = sub_1DACB6F14();
  sub_1DAAA113C(0, &unk_1EE11F1E8, &qword_1EE125280, v402, sub_1DAAA1870);
  v130 = v129;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v402 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v388 = v130;
  v401 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v400 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v399 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v398 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v397 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v396 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v395 = sub_1DACB6F14();
  sub_1DAAA1AEC(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v394 = sub_1DACB6F44();
  sub_1DAAA2198(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v393 = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v392 = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v391 = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v390 = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v389 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  sub_1DACB7914();
  v388 = sub_1DACB6F24();
  sub_1DAAA2870(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v126(v121, v125, v118);
  v131 = v413;
  sub_1DACB7914();
  v344 = sub_1DACB6F34();
  v132 = v386;
  sub_1DAAA2C80(v410, v386);
  v133 = type metadata accessor for SymbolEntity(0);
  (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
  v134 = v355;
  sub_1DAAA2D3C(v132, v387, qword_1EE11EF28, v355);
  sub_1DACB6EE4();
  v135 = v356;
  sub_1DAAA2DBC(v132, qword_1EE11EF28, v134);
  v136 = v131;
  sub_1DAAA2D3C(v131, v135, qword_1EE120250, v412);
  v137 = type metadata accessor for Quote(0);
  v138 = *(v137 - 1);
  v139 = *(v138 + 48);
  v140 = v138 + 48;
  v412 = v137;
  v141 = v139;
  if ((v139)(v135, 1) == 1)
  {
    sub_1DAAA2DBC(v135, qword_1EE120250, type metadata accessor for Quote);
    v142 = 1;
    v143 = v358;
    goto LABEL_9;
  }

  v144 = *v135;
  v145 = *(v135 + 8);
  sub_1DAA88E38(v135, type metadata accessor for Quote);
  v143 = v358;
  if ((v145 & 1) == 0)
  {
    v146 = v333;
    sub_1DAAA2D3C(v416, v333, qword_1EE123840, type metadata accessor for QuoteDetail);
    v147 = type metadata accessor for QuoteDetail(0);
    if ((*(*(v147 - 8) + 48))(v146, 1, v147) == 1)
    {
      sub_1DAAA2DBC(v146, qword_1EE123840, type metadata accessor for QuoteDetail);
    }

    else
    {
      v148 = *(v146 + *(v147 + 68) + 8);
      sub_1DACB71E4();
      v149 = sub_1DAA88E38(v146, type metadata accessor for QuoteDetail);
      if (v148)
      {
        MEMORY[0x1E12775A0](v149, v144);
        sub_1DACB7124();
        v142 = 0;
        goto LABEL_9;
      }
    }
  }

  v142 = 1;
LABEL_9:
  v150 = sub_1DACB7134();
  v151 = *(v150 - 8);
  v152 = *(v151 + 56);
  v153 = v381;
  v414 = v151 + 56;
  v154 = v152;
  v152(v381, v142, 1, v150);
  v155 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v153, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v153, &qword_1EE11F180, v155);
  v156 = v357;
  sub_1DAAA2D3C(v136, v357, qword_1EE120250, type metadata accessor for Quote);
  v157 = v140;
  if (v141(v156, 1, v412) == 1)
  {
    sub_1DAAA2DBC(v156, qword_1EE120250, type metadata accessor for Quote);
    v158 = 1;
    v159 = v136;
    v160 = v141;
LABEL_15:
    v165 = v412;
    goto LABEL_16;
  }

  v161 = *(v156 + 16);
  v162 = *(v156 + 24);
  sub_1DAA88E38(v156, type metadata accessor for Quote);
  v159 = v136;
  if (v162)
  {
    v158 = 1;
    v160 = v141;
    goto LABEL_15;
  }

  v163 = v334;
  sub_1DAAA2D3C(v416, v334, qword_1EE123840, type metadata accessor for QuoteDetail);
  v164 = type metadata accessor for QuoteDetail(0);
  v160 = v141;
  if ((*(*(v164 - 8) + 48))(v163, 1, v164) == 1)
  {
    sub_1DAAA2DBC(v163, qword_1EE123840, type metadata accessor for QuoteDetail);
    v158 = 1;
    goto LABEL_15;
  }

  v185 = *(v163 + *(v164 + 68) + 8);
  sub_1DACB71E4();
  v186 = sub_1DAA88E38(v163, type metadata accessor for QuoteDetail);
  v165 = v412;
  if (v185)
  {
    MEMORY[0x1E12775A0](v186, v161);
    sub_1DACB7124();
    v158 = 0;
  }

  else
  {
    v158 = 1;
  }

LABEL_16:
  v154(v143, v158, 1, v150);
  v166 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v143, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v143, &qword_1EE11F180, v166);
  v167 = v359;
  sub_1DAAA2D3C(v159, v359, qword_1EE120250, type metadata accessor for Quote);
  if (v160(v167, 1, v165) == 1)
  {
    v168 = qword_1EE120250;
    v169 = type metadata accessor for Quote;
    v170 = v167;
LABEL_18:
    sub_1DAAA2DBC(v170, v168, v169);
LABEL_20:
    v173 = 1;
    goto LABEL_21;
  }

  v171 = *(v167 + 32);
  v172 = *(v167 + 40);
  sub_1DAA88E38(v167, type metadata accessor for Quote);
  if (v172)
  {
    goto LABEL_20;
  }

  v183 = v335;
  sub_1DAAA2D3C(v416, v335, qword_1EE123840, type metadata accessor for QuoteDetail);
  v184 = type metadata accessor for QuoteDetail(0);
  if ((*(*(v184 - 8) + 48))(v183, 1, v184) == 1)
  {
    v168 = qword_1EE123840;
    v169 = type metadata accessor for QuoteDetail;
    v170 = v183;
    goto LABEL_18;
  }

  v327 = *(v183 + *(v184 + 68) + 8);
  sub_1DACB71E4();
  v328 = sub_1DAA88E38(v183, type metadata accessor for QuoteDetail);
  if (!v327)
  {
    goto LABEL_20;
  }

  MEMORY[0x1E12775A0](v328, v171);
  sub_1DACB7124();
  v173 = 0;
LABEL_21:
  v174 = v411;
  v154(v411, v173, 1, v150);
  v175 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v174, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v174, &qword_1EE11F180, v175);
  v176 = v360;
  sub_1DAAA2D3C(v159, v360, qword_1EE120250, type metadata accessor for Quote);
  if (v160(v176, 1, v165) == 1)
  {
    sub_1DAAA2DBC(v176, qword_1EE120250, type metadata accessor for Quote);
    v177 = 1;
    v178 = v361;
    goto LABEL_33;
  }

  v179 = *(v176 + 48);
  v180 = *(v176 + 56);
  sub_1DAA88E38(v176, type metadata accessor for Quote);
  v178 = v361;
  if ((v180 & 1) == 0)
  {
    v181 = v336;
    sub_1DAAA2D3C(v416, v336, qword_1EE123840, type metadata accessor for QuoteDetail);
    v182 = type metadata accessor for QuoteDetail(0);
    if ((*(*(v182 - 8) + 48))(v181, 1, v182) == 1)
    {
      sub_1DAAA2DBC(v181, qword_1EE123840, type metadata accessor for QuoteDetail);
    }

    else
    {
      v187 = *(v181 + *(v182 + 68) + 8);
      sub_1DACB71E4();
      v188 = sub_1DAA88E38(v181, type metadata accessor for QuoteDetail);
      if (v187)
      {
        MEMORY[0x1E12775A0](v188, v179);
        sub_1DACB7124();
        v177 = 0;
        goto LABEL_33;
      }
    }
  }

  v177 = 1;
LABEL_33:
  v154(v178, v177, 1, v150);
  v189 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v178, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v178, &qword_1EE11F180, v189);
  v190 = v362;
  sub_1DAAA2D3C(v159, v362, qword_1EE120250, type metadata accessor for Quote);
  if (v160(v190, 1, v165) == 1)
  {
    v191 = qword_1EE120250;
    v192 = type metadata accessor for Quote;
    v193 = v190;
LABEL_35:
    sub_1DAAA2DBC(v193, v191, v192);
    goto LABEL_37;
  }

  v194 = *(v190 + 64);
  v195 = *(v190 + 72);
  sub_1DAA88E38(v190, type metadata accessor for Quote);
  if (v195)
  {
    goto LABEL_37;
  }

  v234 = v337;
  sub_1DAAA2D3C(v416, v337, qword_1EE123840, type metadata accessor for QuoteDetail);
  v235 = type metadata accessor for QuoteDetail(0);
  if ((*(*(v235 - 8) + 48))(v234, 1, v235) == 1)
  {
    v191 = qword_1EE123840;
    v192 = type metadata accessor for QuoteDetail;
    v193 = v234;
    goto LABEL_35;
  }

  v329 = *(v234 + *(v235 + 68) + 8);
  sub_1DACB71E4();
  v330 = sub_1DAA88E38(v234, type metadata accessor for QuoteDetail);
  if (v329)
  {
    MEMORY[0x1E12775A0](v330, v194);
    sub_1DACB7124();
    v196 = 0;
    goto LABEL_38;
  }

LABEL_37:
  v196 = 1;
LABEL_38:
  v197 = v382;
  v411 = v150;
  v154(v382, v196, 1, v150);
  v198 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v197, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v197, &qword_1EE11F180, v198);
  v199 = v363;
  sub_1DAAA2D3C(v159, v363, qword_1EE120250, type metadata accessor for Quote);
  v200 = v154;
  if (v160(v199, 1, v165) == 1)
  {
    sub_1DAAA2DBC(v199, qword_1EE120250, type metadata accessor for Quote);
    v201 = sub_1DACB7CC4();
    v202 = v366;
    (*(*(v201 - 8) + 56))(v366, 1, 1, v201);
  }

  else
  {
    v202 = v366;
    sub_1DAAA2D3C(v199 + v165[13], v366, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v199, type metadata accessor for Quote);
  }

  v203 = v409;
  v204 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v202, v409, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v202, &qword_1EE125280, v204);
  v205 = v364;
  sub_1DAAA2D3C(v159, v364, qword_1EE120250, type metadata accessor for Quote);
  if (v160(v205, 1, v165) == 1)
  {
    sub_1DAAA2DBC(v205, qword_1EE120250, type metadata accessor for Quote);
    v206 = sub_1DACB7CC4();
    v207 = v369;
    (*(*(v206 - 8) + 56))(v369, 1, 1, v206);
  }

  else
  {
    v207 = v369;
    sub_1DAAA2D3C(v205 + v165[14], v369, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v205, type metadata accessor for Quote);
  }

  v208 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v207, v203, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v207, &qword_1EE125280, v208);
  v209 = v365;
  sub_1DAAA2D3C(v159, v365, qword_1EE120250, type metadata accessor for Quote);
  v210 = v160(v209, 1, v165);
  v387 = v160;
  if (v210 == 1)
  {
    sub_1DAAA2DBC(v209, qword_1EE120250, type metadata accessor for Quote);
    v211 = sub_1DACB7CC4();
    v212 = v370;
    (*(*(v211 - 8) + 56))(v370, 1, 1, v211);
  }

  else
  {
    v212 = v370;
    sub_1DAAA2D3C(v209 + v165[15], v370, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v209, type metadata accessor for Quote);
  }

  v213 = v367;
  v214 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v212, v203, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v212, &qword_1EE125280, v214);
  v215 = v368;
  sub_1DAAA2D3C(v416, v368, qword_1EE123840, type metadata accessor for QuoteDetail);
  v216 = type metadata accessor for QuoteDetail(0);
  v217 = *(*(v216 - 1) + 48);
  if (v217(v215, 1, v216) == 1)
  {
    goto LABEL_48;
  }

  v218 = *v215;
  v219 = *(v215 + 8);
  sub_1DAA88E38(v215, type metadata accessor for QuoteDetail);
  if (v219)
  {
    goto LABEL_50;
  }

  v215 = v338;
  sub_1DAAA2D3C(v416, v338, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v215, 1, v216) == 1)
  {
LABEL_48:
    sub_1DAAA2DBC(v215, qword_1EE123840, type metadata accessor for QuoteDetail);
  }

  else
  {
    v236 = *(v215 + v216[17] + 8);
    sub_1DACB71E4();
    v237 = sub_1DAA88E38(v215, type metadata accessor for QuoteDetail);
    if (v236)
    {
      MEMORY[0x1E12775A0](v237, v218);
      sub_1DACB7124();
      v220 = 0;
      goto LABEL_51;
    }
  }

LABEL_50:
  v220 = 1;
LABEL_51:
  v200(v213, v220, 1, v411);
  v221 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v213, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v213, &qword_1EE11F180, v221);
  v222 = v371;
  sub_1DAAA2D3C(v416, v371, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v222, 1, v216) == 1)
  {
    goto LABEL_52;
  }

  v223 = *(v222 + 16);
  v224 = *(v222 + 24);
  sub_1DAA88E38(v222, type metadata accessor for QuoteDetail);
  if (v224)
  {
    goto LABEL_54;
  }

  v222 = v339;
  sub_1DAAA2D3C(v416, v339, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v222, 1, v216) == 1)
  {
LABEL_52:
    sub_1DAAA2DBC(v222, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_54:
    v225 = 1;
    goto LABEL_55;
  }

  v238 = *(v222 + v216[17] + 8);
  sub_1DACB71E4();
  v239 = sub_1DAA88E38(v222, type metadata accessor for QuoteDetail);
  if (!v238)
  {
    goto LABEL_54;
  }

  MEMORY[0x1E12775A0](v239, v223);
  sub_1DACB7124();
  v225 = 0;
LABEL_55:
  v226 = v383;
  v200(v383, v225, 1, v411);
  v227 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v226, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v226, &qword_1EE11F180, v227);
  v228 = v372;
  sub_1DAAA2D3C(v416, v372, qword_1EE123840, type metadata accessor for QuoteDetail);
  v229 = v217(v228, 1, v216);
  v386 = v157;
  if (v229 == 1)
  {
LABEL_56:
    v230 = v200;
    sub_1DAAA2DBC(v228, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_57:
    v231 = 1;
    goto LABEL_71;
  }

  v232 = *(v228 + 32);
  v233 = *(v228 + 40);
  sub_1DAA88E38(v228, type metadata accessor for QuoteDetail);
  if (v233)
  {
    v231 = 1;
    v230 = v200;
  }

  else
  {
    v228 = v340;
    sub_1DAAA2D3C(v416, v340, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v217(v228, 1, v216) == 1)
    {
      goto LABEL_56;
    }

    v240 = *(v228 + v216[17] + 8);
    sub_1DACB71E4();
    v241 = sub_1DAA88E38(v228, type metadata accessor for QuoteDetail);
    v230 = v200;
    if (!v240)
    {
      goto LABEL_57;
    }

    MEMORY[0x1E12775A0](v241, v232);
    sub_1DACB7124();
    v231 = 0;
  }

LABEL_71:
  v243 = v411;
  v242 = v412;
  v244 = v384;
  v230(v384, v231, 1, v411);
  v245 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v244, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v244, &qword_1EE11F180, v245);
  v246 = v374;
  sub_1DAAA2D3C(v416, v374, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v246, 1, v216) == 1)
  {
    v247 = v373;
LABEL_73:
    sub_1DAAA2DBC(v246, qword_1EE123840, type metadata accessor for QuoteDetail);
    goto LABEL_75;
  }

  v248 = *(v246 + 48);
  v249 = *(v246 + 56);
  sub_1DAA88E38(v246, type metadata accessor for QuoteDetail);
  v247 = v373;
  if (v249)
  {
    goto LABEL_75;
  }

  v246 = v341;
  sub_1DAAA2D3C(v416, v341, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v246, 1, v216) == 1)
  {
    goto LABEL_73;
  }

  v269 = *(v246 + v216[17] + 8);
  sub_1DACB71E4();
  v270 = sub_1DAA88E38(v246, type metadata accessor for QuoteDetail);
  if (v269)
  {
    MEMORY[0x1E12775A0](v270, v248);
    sub_1DACB7124();
    v250 = 0;
    goto LABEL_76;
  }

LABEL_75:
  v250 = 1;
LABEL_76:
  v230(v247, v250, 1, v243);
  v251 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v247, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v247, &qword_1EE11F180, v251);
  v252 = v375;
  sub_1DAAA2D3C(v416, v375, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v252, 1, v216) == 1)
  {
    goto LABEL_77;
  }

  v253 = *(v252 + 64);
  v254 = *(v252 + 72);
  sub_1DAA88E38(v252, type metadata accessor for QuoteDetail);
  if (v254)
  {
    goto LABEL_79;
  }

  v252 = v342;
  sub_1DAAA2D3C(v416, v342, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v252, 1, v216) == 1)
  {
LABEL_77:
    sub_1DAAA2DBC(v252, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_79:
    v255 = 1;
    goto LABEL_80;
  }

  v271 = *(v252 + v216[17] + 8);
  sub_1DACB71E4();
  v272 = sub_1DAA88E38(v252, type metadata accessor for QuoteDetail);
  if (!v271)
  {
    goto LABEL_79;
  }

  MEMORY[0x1E12775A0](v272, v253);
  sub_1DACB7124();
  v255 = 0;
LABEL_80:
  v256 = v385;
  v230(v385, v255, 1, v243);
  v257 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v256, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v256, &qword_1EE11F180, v257);
  v258 = v376;
  sub_1DAAA2D3C(v416, v376, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v258, 1, v216) == 1)
  {
    sub_1DAAA2DBC(v258, qword_1EE123840, type metadata accessor for QuoteDetail);
    v259 = 0;
    v260 = 1;
  }

  else
  {
    v259 = *(v258 + 80);
    v260 = *(v258 + 88);
    sub_1DAA88E38(v258, type metadata accessor for QuoteDetail);
  }

  v261 = v379;
  v262 = v378;
  v417 = v259;
  LOBYTE(v418) = v260;
  sub_1DACB6EE4();
  v263 = v377;
  sub_1DAAA2D3C(v416, v377, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v263, 1, v216) == 1)
  {
    sub_1DAAA2DBC(v263, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_86:
    v265 = 0;
    v268 = 1;
    goto LABEL_95;
  }

  v264 = v263;
  v265 = *(v263 + 96);
  v266 = *(v264 + 104);
  result = sub_1DAA88E38(v264, type metadata accessor for QuoteDetail);
  if (v266)
  {
    goto LABEL_86;
  }

  if (v265 < 0)
  {
    __break(1u);
    goto LABEL_140;
  }

  v268 = 0;
LABEL_95:
  v417 = v265;
  LOBYTE(v418) = v268;
  sub_1DACB6EE4();
  v273 = v354;
  sub_1DAAA2D3C(v416, v354, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v273, 1, v216) != 1)
  {
    v274 = v273;
    v275 = *(v273 + 112);
    v276 = *(v274 + 120);
    result = sub_1DAA88E38(v274, type metadata accessor for QuoteDetail);
    if (v276)
    {
      goto LABEL_98;
    }

    if ((v275 & 0x8000000000000000) == 0)
    {
      v277 = 0;
      goto LABEL_101;
    }

LABEL_140:
    __break(1u);
    return result;
  }

  sub_1DAAA2DBC(v273, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_98:
  v275 = 0;
  v277 = 1;
LABEL_101:
  v417 = v275;
  LOBYTE(v418) = v277;
  sub_1DACB6EE4();
  sub_1DAAA2D3C(v416, v262, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v262, 1, v216) == 1)
  {
    sub_1DAAA2DBC(v262, qword_1EE123840, type metadata accessor for QuoteDetail);
    v278 = 0;
    v279 = 1;
  }

  else
  {
    v278 = *(v262 + 128);
    v279 = *(v262 + 136);
    sub_1DAA88E38(v262, type metadata accessor for QuoteDetail);
  }

  v417 = v278;
  LOBYTE(v418) = v279;
  sub_1DACB6EE4();
  sub_1DAAA2D3C(v416, v261, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v261, 1, v216) == 1)
  {
    sub_1DAAA2DBC(v261, qword_1EE123840, type metadata accessor for QuoteDetail);
    v280 = 0;
    v281 = 1;
  }

  else
  {
    v280 = *(v261 + 144);
    v281 = *(v261 + 152);
    sub_1DAA88E38(v261, type metadata accessor for QuoteDetail);
  }

  v417 = v280;
  LOBYTE(v418) = v281;
  sub_1DACB6EE4();
  v282 = v346;
  sub_1DAAA2D3C(v416, v346, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v282, 1, v216) == 1)
  {
    goto LABEL_108;
  }

  v283 = *(v282 + 160);
  v284 = *(v282 + 168);
  sub_1DAA88E38(v282, type metadata accessor for QuoteDetail);
  if (v284)
  {
    goto LABEL_110;
  }

  v282 = v332;
  sub_1DAAA2D3C(v416, v332, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v217(v282, 1, v216) == 1)
  {
LABEL_108:
    sub_1DAAA2DBC(v282, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_110:
    v285 = 1;
    goto LABEL_111;
  }

  v300 = *(v282 + v216[17] + 8);
  sub_1DACB71E4();
  v301 = sub_1DAA88E38(v282, type metadata accessor for QuoteDetail);
  if (!v300)
  {
    goto LABEL_110;
  }

  MEMORY[0x1E12775A0](v301, v283);
  sub_1DACB7124();
  v285 = 0;
LABEL_111:
  v286 = v380;
  v230(v380, v285, 1, v243);
  v287 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v286, v415, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v286, &qword_1EE11F180, v287);
  v288 = v345;
  sub_1DAAA2D3C(v413, v345, qword_1EE120250, type metadata accessor for Quote);
  if (v387(v288, 1, v242) == 1)
  {
    sub_1DAAA2DBC(v288, qword_1EE120250, type metadata accessor for Quote);
    v289 = sub_1DACB7CC4();
    v290 = v348;
    (*(*(v289 - 8) + 56))(v348, 1, 1, v289);
    v291 = v351;
    v292 = v350;
    v293 = v349;
    goto LABEL_114;
  }

  v290 = v348;
  sub_1DAAA2D3C(v288 + *(v242 + 20), v348, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA88E38(v288, type metadata accessor for Quote);
  v294 = sub_1DACB7CC4();
  v295 = *(v294 - 8);
  v296 = (*(v295 + 48))(v290, 1, v294);
  v291 = v351;
  v292 = v350;
  v293 = v349;
  if (v296 == 1)
  {
LABEL_114:
    v297 = v343;
    sub_1DAAA2D3C(v416, v343, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v217(v297, 1, v216) == 1)
    {
      sub_1DAAA2DBC(v297, qword_1EE123840, type metadata accessor for QuoteDetail);
      v298 = sub_1DACB7CC4();
      (*(*(v298 - 8) + 56))(v293, 1, 1, v298);
    }

    else
    {
      sub_1DAAA2D3C(v297 + v216[15], v293, &qword_1EE125280, MEMORY[0x1E6969530]);
      sub_1DAA88E38(v297, type metadata accessor for QuoteDetail);
    }

    v299 = sub_1DACB7CC4();
    if ((*(*(v299 - 8) + 48))(v290, 1, v299) != 1)
    {
      sub_1DAAA2DBC(v290, &qword_1EE125280, MEMORY[0x1E6969530]);
    }

    goto LABEL_123;
  }

  (*(v295 + 32))(v349, v290, v294);
  (*(v295 + 56))(v293, 0, 1, v294);
LABEL_123:
  v302 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v293, v409, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v293, &qword_1EE125280, v302);
  v303 = v347;
  sub_1DAAA2D3C(v413, v347, qword_1EE120250, type metadata accessor for Quote);
  if (v387(v303, 1, v242) == 1)
  {
    sub_1DAAA2DBC(v303, qword_1EE120250, type metadata accessor for Quote);
    v304 = sub_1DACB7F54();
    v305 = *(v304 - 8);
    v306 = *(v305 + 56);
    v306(v291, 1, 1, v304);
    sub_1DAAA2D3C(v416, v292, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v217(v292, 1, v216) == 1)
    {
      sub_1DAAA2DBC(v292, qword_1EE123840, type metadata accessor for QuoteDetail);
      v307 = v352;
      v306(v352, 1, 1, v304);
    }

    else
    {
      v307 = v352;
      sub_1DAAA2D3C(v292 + v216[20], v352, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      sub_1DAA88E38(v292, type metadata accessor for QuoteDetail);
    }

    if ((*(v305 + 48))(v291, 1, v304) != 1)
    {
      sub_1DAAA2DBC(v291, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    }
  }

  else
  {
    v308 = *(v242 + 24);
    v304 = sub_1DACB7F54();
    v309 = *(v304 - 8);
    (*(v309 + 16))(v291, v303 + v308, v304);
    sub_1DAA88E38(v303, type metadata accessor for Quote);
    v310 = *(v309 + 56);
    v310(v291, 0, 1, v304);
    v307 = v352;
    (*(v309 + 32))(v352, v291, v304);
    v310(v307, 0, 1, v304);
  }

  sub_1DACB7F54();
  v311 = *(v304 - 8);
  if ((*(v311 + 48))(v307, 1, v304) == 1)
  {
    sub_1DAAA2DBC(v307, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    v312 = 0;
    v313 = 0;
  }

  else
  {
    v312 = sub_1DACB7F04();
    v313 = v314;
    (*(v311 + 8))(v307, v304);
  }

  v417 = v312;
  v418 = v313;
  v315 = v344;
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v416, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DAAA2DBC(v413, qword_1EE120250, type metadata accessor for Quote);
  result = sub_1DAA88E38(v410, type metadata accessor for SymbolEntity);
  v316 = v353;
  v317 = v407;
  *v353 = v408;
  v316[1] = v317;
  v318 = v405;
  v316[2] = v406;
  v316[3] = v318;
  v319 = v403;
  v316[4] = v404;
  v316[5] = v319;
  v320 = v401;
  v316[6] = v402;
  v316[7] = v320;
  v321 = v399;
  v316[8] = v400;
  v316[9] = v321;
  v322 = v397;
  v316[10] = v398;
  v316[11] = v322;
  v323 = v395;
  v316[12] = v396;
  v316[13] = v323;
  v324 = v393;
  v316[14] = v394;
  v316[15] = v324;
  v325 = v391;
  v316[16] = v392;
  v316[17] = v325;
  v326 = v389;
  v316[18] = v390;
  v316[19] = v326;
  v316[20] = v388;
  v316[21] = v315;
  return result;
}