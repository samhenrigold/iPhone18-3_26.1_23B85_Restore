uint64_t _s12SiriOntology15TerminalElementV16AdjustmentReasonV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1C095DF3C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

BOOL _s12SiriOntology15TerminalElementV6OriginV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1 + 8;
  v5 = *v1;
  memcpy(v19, v1 + 8, 0x301uLL);
  v8 = *v3;
  v6 = v3 + 8;
  v7 = v8;
  memcpy(v20, v6, 0x301uLL);
  if (v5 == 9)
  {
    if (v7 != 9)
    {
      return 0;
    }
  }

  else if (v7 == 9 || (sub_1C059221C(v5, v7) & 1) == 0)
  {
    return 0;
  }

  memcpy(v17, v4, 0x301uLL);
  memcpy(&v17[776], v6, 0x301uLL);
  memcpy(v18, v4, 0x301uLL);
  if (sub_1C05757D8(v18) == 1)
  {
    memcpy(__dst, v6, 0x301uLL);
    if (sub_1C05757D8(__dst) == 1)
    {
      memcpy(v16, v4, 0x301uLL);
      sub_1C05149F8(v19, v14, &qword_1EBE16C80, &qword_1C096E858);
      sub_1C05149F8(v20, v14, &qword_1EBE16C80, &qword_1C096E858);
      sub_1C05145B4(v16, &qword_1EBE16C80, &qword_1C096E858);
      return 1;
    }

    sub_1C05149F8(v19, v16, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v20, v16, &qword_1EBE16C80, &qword_1C096E858);
    goto LABEL_12;
  }

  memcpy(v16, v4, 0x301uLL);
  memcpy(v14, v4, 0x301uLL);
  memcpy(__dst, v6, 0x301uLL);
  if (sub_1C05757D8(__dst) == 1)
  {
    memcpy(__src, v4, 0x301uLL);
    sub_1C05149F8(v19, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v20, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C05149F8(v16, v12, &qword_1EBE16C80, &qword_1C096E858);
    sub_1C0575828(__src);
LABEL_12:
    memcpy(__dst, v17, 0x609uLL);
    sub_1C05145B4(__dst, &qword_1EBE16E28, &qword_1C0970500);
    return 0;
  }

  memcpy(__src, v6, 0x301uLL);
  sub_1C05149F8(v19, v12, &qword_1EBE16C80, &qword_1C096E858);
  sub_1C05149F8(v20, v12, &qword_1EBE16C80, &qword_1C096E858);
  sub_1C05149F8(v16, v12, &qword_1EBE16C80, &qword_1C096E858);
  v10 = _s12SiriOntology15TerminalElementV12OriginDetailO2eeoiySbAE_AEtFZ_0(v14);
  memcpy(v11, __src, 0x301uLL);
  sub_1C0575828(v11);
  memcpy(v12, v14, 0x301uLL);
  sub_1C0575828(v12);
  memcpy(__src, v4, 0x301uLL);
  sub_1C05145B4(__src, &qword_1EBE16C80, &qword_1C096E858);
  return v10;
}

BOOL _s12SiriOntology15TerminalElementV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v31, v1, 0x20AuLL);
  v5 = v4[66];
  memcpy(v32, v4 + 67, 0x309uLL);
  v6 = v4[165];
  v7 = v4[166];
  v8 = v4[167];
  memcpy(v33, v3, 0x20AuLL);
  v9 = v3[66];
  memcpy(v34, v3 + 67, 0x309uLL);
  v22 = v3[165];
  v10 = v3[166];
  v11 = v3[167];
  memcpy(v29, v4, 0x20AuLL);
  memcpy(&v29[528], v3, 0x20AuLL);
  memcpy(v35, v4, 0x20AuLL);
  if (sub_1C0573598(v35) == 1)
  {
    memcpy(__dst, v3, 0x20AuLL);
    if (sub_1C0573598(__dst) == 1)
    {
      v21 = v11;
      memcpy(v30, v4, 0x20AuLL);
      sub_1C05149F8(v31, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05149F8(v33, v28, &qword_1EBE16C70, &unk_1C099BB20);
      sub_1C05145B4(v30, &qword_1EBE16C70, &unk_1C099BB20);
      goto LABEL_10;
    }

    sub_1C05149F8(v31, v30, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v30, &qword_1EBE16C70, &unk_1C099BB20);
LABEL_7:
    memcpy(__dst, v29, 0x41AuLL);
    v12 = &qword_1EBE16C88;
    v13 = &qword_1C096E860;
LABEL_8:
    sub_1C05145B4(__dst, v12, v13);
    return 0;
  }

  memcpy(v30, v4, 0x20AuLL);
  memcpy(v28, v4, 0x20AuLL);
  memcpy(__dst, v3, 0x20AuLL);
  if (sub_1C0573598(__dst) == 1)
  {
    memcpy(__src, v4, 0x20AuLL);
    sub_1C05149F8(v31, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v33, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05149F8(v30, v25, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C05735E4(__src);
    goto LABEL_7;
  }

  v21 = v11;
  memcpy(__src, v3, 0x20AuLL);
  sub_1C05149F8(v31, v25, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v33, v25, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C05149F8(v30, v25, &qword_1EBE16C70, &unk_1C099BB20);
  v14 = _s12SiriOntology15TerminalElementV5ValueO2eeoiySbAE_AEtFZ_0(v28);
  memcpy(v24, __src, 0x20AuLL);
  sub_1C05735E4(v24);
  memcpy(v25, v28, 0x20AuLL);
  sub_1C05735E4(v25);
  memcpy(__src, v4, 0x20AuLL);
  sub_1C05145B4(__src, &qword_1EBE16C70, &unk_1C099BB20);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((sub_1C055B098(v5, v9) & 1) == 0)
  {
    return 0;
  }

  memcpy(v29, v32, 0x309uLL);
  memcpy(&v29[784], v34, 0x309uLL);
  memcpy(v30, v32, 0x309uLL);
  if (sub_1C0573614(v30) == 1)
  {
    memcpy(__dst, &v29[784], 0x309uLL);
    v15 = v7;
    v16 = v10;
    v17 = v8;
    v18 = v21;
    if (sub_1C0573614(__dst) == 1)
    {
      memcpy(v28, v29, 0x309uLL);
      sub_1C05149F8(v32, __src, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05149F8(v34, __src, &qword_1EBE16C78, &qword_1C096E850);
      sub_1C05145B4(v28, &qword_1EBE16C78, &qword_1C096E850);
      goto LABEL_20;
    }

    sub_1C05149F8(v32, v28, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v34, v28, &qword_1EBE16C78, &qword_1C096E850);
    goto LABEL_18;
  }

  memcpy(v28, v29, 0x309uLL);
  memcpy(__src, v29, 0x309uLL);
  memcpy(__dst, &v29[784], 0x309uLL);
  v15 = v7;
  v16 = v10;
  v17 = v8;
  v18 = v21;
  if (sub_1C0573614(__dst) == 1)
  {
    memcpy(v25, v29, 0x309uLL);
    sub_1C05149F8(v32, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v34, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05149F8(v28, v24, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05758D8(v25);
LABEL_18:
    memcpy(__dst, v29, 0x619uLL);
    v12 = &unk_1EBE16E38;
    v13 = &unk_1C0970510;
    goto LABEL_8;
  }

  memcpy(v25, &v29[784], 0x309uLL);
  sub_1C05149F8(v32, v24, &qword_1EBE16C78, &qword_1C096E850);
  sub_1C05149F8(v34, v24, &qword_1EBE16C78, &qword_1C096E850);
  sub_1C05149F8(v28, v24, &qword_1EBE16C78, &qword_1C096E850);
  v19 = _s12SiriOntology15TerminalElementV6OriginV2eeoiySbAE_AEtFZ_0(__src);
  memcpy(v23, v25, 0x309uLL);
  sub_1C05758D8(v23);
  memcpy(v24, __src, 0x309uLL);
  sub_1C05758D8(v24);
  memcpy(v25, v29, 0x309uLL);
  sub_1C05145B4(v25, &qword_1EBE16C78, &qword_1C096E850);
  if (!v19)
  {
    return 0;
  }

LABEL_20:
  if (v17)
  {
    if (v18)
    {
      return ((v6 ^ v22) & 1) == 0 && (v15 == v16 && v17 == v18 || (sub_1C095DF3C() & 1) != 0);
    }

LABEL_28:

    return 0;
  }

  if (v18)
  {
    goto LABEL_28;
  }

  return 1;
}

uint64_t sub_1C0573598(uint64_t a1)
{
  v1 = *(a1 + 145);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0573614(uint64_t a1)
{
  v1 = *(a1 + 546);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12SiriOntology15TerminalElementV13DerivedOriginV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  if (v3 != 1)
  {
    v14[0] = *a1;
    v14[1] = v3;
    v14[2] = v5;
    v14[3] = v4;
    if (v8 != 1)
    {
      v13[0] = v7;
      v13[1] = v8;
      v13[2] = v10;
      v13[3] = v9;
      v12 = _s12SiriOntology15TerminalElementV16AdjustmentReasonV2eeoiySbAE_AEtFZ_0(v14, v13);
      sub_1C0559D40(v2, v3, v5, v4);
      sub_1C0559D40(v7, v8, v10, v9);
      sub_1C0559D40(v2, v3, v5, v4);

      sub_1C05756F0(v2, v3, v5, v4);
      if (v12)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_1C0559D40(v2, v3, v5, v4);
    sub_1C0559D40(v7, 1, v10, v9);
    sub_1C0559D40(v2, v3, v5, v4);

LABEL_7:
    sub_1C05756F0(v2, v3, v5, v4);
    sub_1C05756F0(v7, v8, v10, v9);
    return 0;
  }

  sub_1C0559D40(*a1, 1, v5, v4);
  if (v8 != 1)
  {
    sub_1C0559D40(v7, v8, v10, v9);
    goto LABEL_7;
  }

  sub_1C0559D40(v7, 1, v10, v9);
  sub_1C05756F0(v2, 1, v5, v4);
LABEL_10:

  return sub_1C055B298(v6);
}

BOOL _s12SiriOntology15TerminalElementV12OriginDetailO2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x301uLL);
  memcpy(__src, v3, 0x301uLL);
  memcpy(v40, v4, 0x301uLL);
  memcpy(v41, v3, sizeof(v41));
  memcpy(v42, v4, 0x301uLL);
  v5 = sub_1C0573F8C(v42);
  if (!v5)
  {
    v9 = sub_1C0527300(v42);
    v11 = *v9;
    v10 = v9[1];
    memcpy(v37, __src, 0x301uLL);
    if (sub_1C0573F8C(v37))
    {
      goto LABEL_16;
    }

    v12 = sub_1C0527300(v37);
    v13 = v12[1];
    if (v10)
    {
      if (!v13)
      {
        sub_1C05757F0(__src, v36);
        sub_1C05757F0(__dst, v36);
        v27 = v36;
        goto LABEL_17;
      }

      if (v11 == *v12 && v10 == v13)
      {
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__src, v36);
        sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
        return 1;
      }

      v29 = sub_1C095DF3C();
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_1C05757F0(__src, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      if (v13)
      {
        sub_1C0575828(__src);
        return 0;
      }
    }

    return 1;
  }

  if (v5 != 1)
  {
    v14 = sub_1C0527300(v42);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    memcpy(v37, __src, 0x301uLL);
    if (sub_1C0573F8C(v37) != 2)
    {
      goto LABEL_16;
    }

    v20 = sub_1C0527300(v37);
    v22 = *v20;
    v21 = v20[1];
    v24 = v20[2];
    v23 = v20[3];
    v25 = v20[4];
    if (v19)
    {
      v35[0] = v16;
      v35[1] = v15;
      v35[2] = v18;
      v35[3] = v17;
      v35[4] = v19;
      if (v25)
      {
        v30 = v22;
        v31 = v21;
        v32 = v24;
        v33 = v23;
        v34 = v25;
        sub_1C05757F0(__src, v36);
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__dst, v36);
        sub_1C05757F0(__src, v36);
        sub_1C0575898(v16, v15, v18, v17, v19);
        v26 = _s12SiriOntology15TerminalElementV13DerivedOriginV2eeoiySbAE_AEtFZ_0(v35, &v30);
        sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
        sub_1C05756F0(v30, v31, v32, v33);

        sub_1C05756F0(v35[0], v35[1], v35[2], v35[3]);

        sub_1C0575858(v16, v15, v18, v17, v19);
        return (v26 & 1) != 0;
      }

      sub_1C05757F0(__src, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__dst, v36);
      sub_1C05757F0(__src, v36);
      sub_1C0575898(v16, v15, v18, v17, v19);
      sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
      sub_1C05756F0(v16, v15, v18, v17);

LABEL_25:
      sub_1C0575858(v16, v15, v18, v17, v19);
      sub_1C0575858(v22, v21, v24, v23, v25);
      return 0;
    }

    sub_1C05757F0(__src, v36);
    sub_1C05757F0(__dst, v36);
    sub_1C05757F0(__dst, v36);
    sub_1C05757F0(__src, v36);
    sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
    if (v25)
    {
      goto LABEL_25;
    }

    sub_1C0575858(v16, v15, v18, v17, 0);
    return 1;
  }

  v6 = sub_1C0527300(v42);
  memcpy(v37, __src, 0x301uLL);
  if (sub_1C0573F8C(v37) != 1)
  {
LABEL_16:
    sub_1C05757F0(__dst, v37);
    v27 = v37;
LABEL_17:
    sub_1C05757F0(__src, v27);
    sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
    return 0;
  }

  v7 = sub_1C0527300(v37);
  memcpy(v36, v6, 0x301uLL);
  memcpy(v35, v7, 0x301uLL);
  sub_1C05757F0(__src, &v30);
  sub_1C05757F0(__dst, &v30);
  sub_1C05757F0(__dst, &v30);
  sub_1C05757F0(__src, &v30);
  v8 = static TerminalElement.MatchingSpan.== infix(_:_:)(v36);
  sub_1C05145B4(v40, &qword_1EBE16E20, &qword_1C09704F8);
  sub_1C0575828(__src);
  sub_1C0575828(__dst);
  return v8;
}

uint64_t _s12SiriOntology15TerminalElementV13SemanticValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1C095DF3C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1C095DF3C();
}

unint64_t sub_1C0573F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16C90;
  if (!qword_1EBE16C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16C90);
  }

  return result;
}

uint64_t sub_1C0574050(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C05740A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CB8;
  if (!qword_1EBE16CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CB8);
  }

  return result;
}

unint64_t sub_1C0574100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CC0;
  if (!qword_1EBE16CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CC0);
  }

  return result;
}

unint64_t sub_1C0574158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CC8;
  if (!qword_1EBE16CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CC8);
  }

  return result;
}

unint64_t sub_1C05741B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CD0;
  if (!qword_1EBE16CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CD0);
  }

  return result;
}

unint64_t sub_1C0574208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CD8;
  if (!qword_1EBE16CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CD8);
  }

  return result;
}

unint64_t sub_1C0574260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CE0;
  if (!qword_1EBE16CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CE0);
  }

  return result;
}

unint64_t sub_1C05742B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CE8;
  if (!qword_1EBE16CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CE8);
  }

  return result;
}

unint64_t sub_1C0574310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16CF0;
  if (!qword_1EBE16CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16CF0);
  }

  return result;
}

unint64_t sub_1C05743D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16D00;
  if (!qword_1EBE16D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D00);
  }

  return result;
}

unint64_t sub_1C057442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16D08;
  if (!qword_1EBE16D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D08);
  }

  return result;
}

unint64_t sub_1C0574484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16D10;
  if (!qword_1EBE16D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV4DateVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 145);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV13DerivedOriginVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV12OriginDetailOSg(uint64_t a1)
{
  v1 = *(a1 + 538);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV6OriginVSg(uint64_t a1)
{
  v1 = *(a1 + 546);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C05745F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1344))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 528);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0574640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1336) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1344) = 1;
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
      *(result + 528) = (a2 - 1);
      return result;
    }

    *(result + 1344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C05747FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 522))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 145);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C0574848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 520) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 522) = 1;
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
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 144) = -a2 << 8;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 520) = 0;
      *(result + 152) = 0u;
      result += 152;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      *(result + 192) = 0u;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      *(result + 336) = 0u;
      *(result + 352) = 0u;
      return result;
    }

    *(result + 522) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C057496C(uint64_t result, char a2)
{
  v2 = *(result + 296);
  v3 = *(result + 312);
  v4 = *(result + 328);
  v5 = *(result + 344);
  v6 = *(result + 416) & 0xFFFFFFLL;
  v7 = *(result + 488) & 0xFFFFFFLL;
  v8 = *(result + 504) & 1;
  v9 = *(result + 520) & 0xFF01 | (16 * (a2 & 0xF));
  *(result + 144) = *(result + 144);
  *(result + 296) = v2;
  *(result + 312) = v3;
  *(result + 328) = v4;
  *(result + 344) = v5;
  *(result + 416) = v6;
  *(result + 488) = v7;
  *(result + 504) = v8;
  *(result + 520) = v9;
  return result;
}

uint64_t sub_1C05749E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0574A28(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C0574AAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 777))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 546);
  v4 = -2 - v3;
  if ((-2 - v3) < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

void sub_1C0574B10(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 776) = 0;
    *(a1 + 760) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 777) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 777) = 0;
    }

    if (a2)
    {
      v3 = ~a2 << 16;
      bzero((a1 + 8), 0x218uLL);
      *(a1 + 544) = v3;
      *(a1 + 552) = 0u;
      *(a1 + 568) = 0u;
      *(a1 + 584) = 0u;
      *(a1 + 600) = 0u;
      *(a1 + 616) = 0u;
      *(a1 + 632) = 0u;
      *(a1 + 648) = 0u;
      *(a1 + 664) = 0u;
      *(a1 + 680) = 0u;
      *(a1 + 696) = 0u;
      *(a1 + 712) = 0u;
      *(a1 + 728) = 0u;
      *(a1 + 744) = 0u;
      *(a1 + 760) = 0u;
      *(a1 + 776) = 0;
    }
  }
}

uint64_t sub_1C0574C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 769))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 538);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0574CEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 760) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 768) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 769) = 1;
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
      v4 = -a2 << 16;
      bzero(a1, 0x218uLL);
      *(a1 + 536) = v4;
      result = 0.0;
      *(a1 + 544) = 0u;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0u;
      *(a1 + 608) = 0u;
      *(a1 + 624) = 0u;
      *(a1 + 640) = 0u;
      *(a1 + 656) = 0u;
      *(a1 + 672) = 0u;
      *(a1 + 688) = 0u;
      *(a1 + 704) = 0u;
      *(a1 + 720) = 0u;
      *(a1 + 736) = 0u;
      *(a1 + 752) = 0u;
      *(a1 + 768) = 0;
      return result;
    }

    *(a1 + 769) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0574E44(uint64_t result, char a2)
{
  v2 = *(result + 672);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  v6 = *(result + 768) & 1 | (a2 << 6);
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v2;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for TerminalElement.OriginType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TerminalElement.OriginType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C0574FF0(uint64_t a1, int a2)
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

uint64_t sub_1C0575038(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0575090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 769))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 696);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C05750D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 760) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 768) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 769) = 1;
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
      *(result + 696) = (a2 - 1);
      return result;
    }

    *(result + 769) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TerminalElement.MatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalElement.MatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0575344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C05753A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0575418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0575460(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C05754DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FA30;
  if (!qword_1EBE0FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0FA30);
  }

  return result;
}

unint64_t sub_1C0575530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE16D20;
  if (!qword_1EBE16D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16D20);
  }

  return result;
}

uint64_t sub_1C0575584(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C0575620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0575688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C05756F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1C05757D8(uint64_t a1)
{
  v1 = *(a1 + 538);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0575858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1C05756F0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C0575898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1C0559D40(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C0575908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0575968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LandmarkIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 LandmarkIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static LandmarkIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C0575AC8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1C0575B14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C0575BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  IntentNodeTraversable.value<A>(forNode:)(inited, &v8, a1, *(*(a2 + 8) + 8), v6);
  return v8;
}

void *static UsoEntitySpanUtils.getGroupedEntitySpans(spans:maxGroups:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v49 = a2;
    v5 = 0;
    v6 = a1 + 32;
    v56 = @"homeAutomationEntityTag";
    v55 = @"homeAutomationSettingTag";
    v7 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v51 = a1 + 32;
    v52 = v4;
    do
    {
      v8 = (v6 + 192 * v5);
      v9 = v8[9];
      v77 = v8[8];
      v78 = v9;
      v79[0] = v8[10];
      *(v79 + 9) = *(v8 + 169);
      v10 = v8[5];
      v73 = v8[4];
      v74 = v10;
      v11 = v8[7];
      v75 = v8[6];
      v76 = v11;
      v12 = v8[1];
      v69 = *v8;
      v70 = v12;
      v13 = v8[3];
      v71 = v8[2];
      v72 = v13;
      if ((BYTE4(v77) & 1) == 0 && (BYTE12(v77) & 1) == 0)
      {
        v53 = v3;
        v54 = v7;
        v14 = *(&v76 + 1);
        v15 = *(*(&v76 + 1) + 16);
        v16 = sub_1C0521E78(&v69, &v58);
        v17 = v14 + 56;
        v57 = -v15;
        v3 = -1;
        while (v57 + v3 != -1)
        {
          if (++v3 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v20 = *(v17 - 24);
          v19 = *(v17 - 16);
          if (v20 == sub_1C095D75C() && v19 == v21)
          {
            goto LABEL_23;
          }

          v23 = sub_1C095DF3C();

          if (v23)
          {
            goto LABEL_20;
          }

          if (v20 == sub_1C095D75C() && v19 == v24)
          {

LABEL_20:

LABEL_23:

LABEL_24:
            v66 = v77;
            v67 = v78;
            v68[0] = v79[0];
            *(v68 + 9) = *(v79 + 9);
            v62 = v73;
            v63 = v74;
            v64 = v75;
            v65 = v76;
            v58 = v69;
            v59 = v70;
            v60 = v71;
            v61 = v72;
            MEMORY[0x1EEE9AC00](v16);
            v48 = v26;
            v3 = v53;
            v7 = v54;
            if ((sub_1C0576244(sub_1C057CBF0, v47, v54) & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_1C0522E00(0, *(v7 + 2) + 1, 1, v7);
              }

              v28 = *(v7 + 2);
              v27 = *(v7 + 3);
              if (v28 >= v27 >> 1)
              {
                v7 = sub_1C0522E00((v27 > 1), v28 + 1, 1, v7);
              }

              *(v7 + 2) = v28 + 1;
              v29 = &v7[192 * v28];
              goto LABEL_35;
            }

            sub_1C05755CC(&v69);
LABEL_4:
            v6 = v51;
            v4 = v52;
            goto LABEL_5;
          }

          v17 += 48;
          v18 = sub_1C095DF3C();

          if (v18)
          {
            goto LABEL_24;
          }
        }

        v66 = v77;
        v67 = v78;
        v68[0] = v79[0];
        *(v68 + 9) = *(v79 + 9);
        v62 = v73;
        v63 = v74;
        v64 = v75;
        v65 = v76;
        v58 = v69;
        v59 = v70;
        v60 = v71;
        v61 = v72;
        MEMORY[0x1EEE9AC00](v16);
        v48 = v25;
        v3 = v53;
        if (sub_1C0576244(sub_1C057CFE0, v47, v50))
        {
          sub_1C05755CC(&v69);
          v7 = v54;
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_1C0522E00(0, *(v50 + 2) + 1, 1, v50);
        }

        v32 = *(v50 + 2);
        v31 = *(v50 + 3);
        if (v32 >= v31 >> 1)
        {
          v50 = sub_1C0522E00((v31 > 1), v32 + 1, 1, v50);
        }

        v33 = v50;
        *(v50 + 2) = v32 + 1;
        v29 = &v33[192 * v32];
LABEL_35:
        v34 = v69;
        v35 = v70;
        v36 = v72;
        *(v29 + 4) = v71;
        *(v29 + 5) = v36;
        *(v29 + 2) = v34;
        *(v29 + 3) = v35;
        v37 = v73;
        v38 = v74;
        v39 = v76;
        *(v29 + 8) = v75;
        *(v29 + 9) = v39;
        *(v29 + 6) = v37;
        *(v29 + 7) = v38;
        v40 = v77;
        v41 = v78;
        v42 = v79[0];
        *(v29 + 201) = *(v79 + 9);
        *(v29 + 11) = v41;
        *(v29 + 12) = v42;
        *(v29 + 10) = v40;
        v6 = v51;
        v4 = v52;
      }

LABEL_5:
      ++v5;
    }

    while (v5 != v4);
    v2 = v49;
    v43 = v50;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v43 = MEMORY[0x1E69E7CC0];
  }

  *&v69 = v43;

  sub_1C0579E80(&v69);
  if (v3)
  {
LABEL_41:

    __break(1u);
  }

  else
  {

    v44 = sub_1C0576448(v69, v2);

    v45 = sub_1C057C7F4(v7, v44);

    return v45;
  }

  return result;
}

uint64_t sub_1C0576198(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C0576244(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[9];
      v10 = v7[7];
      v52 = v7[8];
      v53 = v9;
      v11 = v7[9];
      v54[0] = v7[10];
      *(v54 + 9) = *(v7 + 169);
      v12 = v7[5];
      v13 = v7[3];
      v48 = v7[4];
      v49 = v12;
      v14 = v7[5];
      v15 = v7[7];
      v50 = v7[6];
      v51 = v15;
      v16 = v7[1];
      v45[0] = *v7;
      v45[1] = v16;
      v17 = v7[3];
      v19 = *v7;
      v18 = v7[1];
      v46 = v7[2];
      v47 = v17;
      v42 = v52;
      v43 = v11;
      v44[0] = v7[10];
      *(v44 + 9) = *(v7 + 169);
      v38 = v48;
      v39 = v14;
      v40 = v50;
      v41 = v10;
      v34 = v19;
      v35 = v18;
      v36 = v46;
      v37 = v13;
      sub_1C0521E78(v45, &v23);
      v20 = a1(&v34);
      if (v3)
      {
        break;
      }

      v4 = v20;
      v31 = v42;
      v32 = v43;
      v33[0] = v44[0];
      *(v33 + 9) = *(v44 + 9);
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      sub_1C05755CC(&v23);
      v21 = v8-- == 0;
      v7 += 12;
      if ((v4 | v21))
      {
        return v4 & 1;
      }
    }

    v31 = v42;
    v32 = v43;
    v33[0] = v44[0];
    *(v33 + 9) = *(v44 + 9);
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    sub_1C05755CC(&v23);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void static UsoEntitySpanUtils.sortByStart(_:)(char *a1)
{
  v1 = a1;

  sub_1C0579E80(&v1);
}

uint64_t sub_1C0576448(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = -v4;
    v7 = 1;
    v8 = 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17350, &unk_1C0970B50);
      v9 = swift_allocObject();
      v10 = *(a1 + v8 + 144);
      v12 = *(a1 + v8 + 112);
      v35 = *(a1 + v8 + 128);
      v11 = v35;
      v36 = v10;
      v13 = *(a1 + v8 + 144);
      v37[0] = *(a1 + v8 + 160);
      *(v37 + 9) = *(a1 + v8 + 169);
      v14 = *(a1 + v8 + 80);
      v16 = *(a1 + v8 + 48);
      v31 = *(a1 + v8 + 64);
      v15 = v31;
      v32 = v14;
      v17 = *(a1 + v8 + 80);
      v18 = *(a1 + v8 + 112);
      v33 = *(a1 + v8 + 96);
      v19 = v33;
      v34 = v18;
      v20 = *(a1 + v8 + 16);
      v28[0] = *(a1 + v8);
      v28[1] = v20;
      v21 = *(a1 + v8 + 48);
      v23 = *(a1 + v8);
      v22 = *(a1 + v8 + 16);
      v29 = *(a1 + v8 + 32);
      v24 = v29;
      v30 = v21;
      v25 = *(a1 + v8 + 160);
      *(v9 + 176) = v13;
      *(v9 + 192) = v25;
      *(v9 + 201) = *(a1 + v8 + 169);
      *(v9 + 112) = v17;
      *(v9 + 128) = v19;
      *(v9 + 144) = v12;
      *(v9 + 160) = v11;
      *(v9 + 16) = xmmword_1C096E0C0;
      *(v9 + 32) = v23;
      *(v9 + 48) = v22;
      *(v9 + 64) = v24;
      *(v9 + 80) = v16;
      *(v9 + 96) = v15;
      v27 = v9;
      sub_1C0521E78(v28, v26);
      sub_1C05765B0(a1, &v27, v7, &v38, a2);

      ++v7;
      v8 += 192;
    }

    while (v6 + v7 != 1);
    return v38;
  }

  return result;
}

uint64_t sub_1C05765B0(uint64_t result, uint64_t **a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a4;
  v6 = *(*a4 + 16);
  if (v6 < a5)
  {
    v7 = a4;
    v8 = a3;
    v9 = result;
    v10 = *(result + 16);
    v11 = *a2;
    v76 = *a2;
    if (v10 <= a3)
    {
      if (v6)
      {
        if (v11[2])
        {

          v50 = sub_1C057C6F4(v47, v48, v49);

          v51 = v5 + 4;
          do
          {
            if (!v6)
            {

              v7 = a4;
              v11 = v76;
              goto LABEL_48;
            }

            ++v51;

            v55 = sub_1C057C6F4(v52, v53, v54);
            v56 = sub_1C0576B90(v55, v50);

            --v6;
          }

          while ((v56 & 1) == 0);
        }
      }

      else
      {
LABEL_48:

        result = swift_isUniquelyReferenced_nonNull_native();
        *v7 = v5;
        if ((result & 1) == 0)
        {
LABEL_63:
          result = sub_1C0578F40(0, v5[2] + 1, 1, v5, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
          v5 = result;
          *v7 = result;
        }

        v70 = v5[2];
        v69 = v5[3];
        if (v70 >= v69 >> 1)
        {
          result = sub_1C0578F40((v69 > 1), v70 + 1, 1, v5, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
          v5 = result;
        }

        v5[2] = v70 + 1;
        v5[v70 + 4] = v11;
        *v7 = v5;
      }
    }

    else
    {
      v74 = result;
      v77 = 0;
      v12 = v11[2];
      v82 = &v11[24 * v12 - 20];
      v83 = result + 32;
      v13 = a3;
      v80 = v12;
      v81 = *(result + 16);
      while (1)
      {
        if (v8 < 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v14 = (v83 + 192 * v13);
        v15 = v14[9];
        v5 = (v13 + 1);
        v93 = v14[8];
        v94 = v15;
        v95[0] = v14[10];
        *(v95 + 9) = *(v14 + 169);
        v16 = v14[5];
        v89 = v14[4];
        v90 = v16;
        v17 = v14[7];
        v91 = v14[6];
        v92 = v17;
        v18 = v14[1];
        v85 = *v14;
        v86 = v18;
        v19 = v14[3];
        v87 = v14[2];
        v88 = v19;
        if (v12)
        {
          v20 = v11[2];
          if (v12 > v20)
          {
            goto LABEL_62;
          }

          if ((BYTE4(v93) & 1) != 0 || (BYTE12(v93) & 1) != 0 || (*(v82 + 132) & 1) != 0 || (*(v82 + 140) & 1) != 0 || v93 >= *(v82 + 136) || *(v82 + 128) >= DWORD2(v93))
          {
            sub_1C0521E78(&v85, v84);

            v21 = v11;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1C0522E00(0, v20 + 1, 1, v11);
            }

            v23 = *(v21 + 2);
            v22 = *(v21 + 3);
            if (v23 >= v22 >> 1)
            {
              v21 = sub_1C0522E00((v22 > 1), v23 + 1, 1, v21);
            }

            *(v21 + 2) = v23 + 1;
            v24 = &v21[192 * v23];
            v25 = v85;
            v26 = v86;
            v27 = v88;
            *(v24 + 4) = v87;
            *(v24 + 5) = v27;
            *(v24 + 2) = v25;
            *(v24 + 3) = v26;
            v28 = v89;
            v29 = v90;
            v30 = v92;
            *(v24 + 8) = v91;
            *(v24 + 9) = v30;
            *(v24 + 6) = v28;
            *(v24 + 7) = v29;
            v31 = v93;
            v32 = v94;
            v33 = v95[0];
            *(v24 + 201) = *(v95 + 9);
            *(v24 + 11) = v32;
            *(v24 + 12) = v33;
            *(v24 + 10) = v31;
            v84[0] = v21;
            v34 = *v7;
            v35 = *(*v7 + 16);
            if (v35)
            {

              v39 = sub_1C057C6F4(v36, v37, v38);

              v40 = 0;
              v41 = (v34 + 32);
              while (1)
              {
                if (v35 == v40)
                {

                  v7 = a4;
                  v8 = a3;
                  v11 = v76;
                  v9 = v74;
                  goto LABEL_25;
                }

                if (v40 >= *(v34 + 16))
                {
                  break;
                }

                v7 = (v40 + 1);

                v45 = sub_1C057C6F4(v42, v43, v44);
                v46 = sub_1C0576B90(v45, v39);

                v40 = v7;
                if (v46)
                {

                  v7 = a4;
                  v8 = a3;
                  v11 = v76;
                  v9 = v74;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_54:

              goto LABEL_55;
            }

LABEL_25:
            sub_1C05765B0(v9, v84, v5, v7, a5);
            v77 = 1;
LABEL_26:

            v12 = v80;
            v10 = v81;
          }
        }

        if (v5 == v10)
        {
          break;
        }

        if (v5 >= v8)
        {
          v13 = v5;
          if (v5 < v10)
          {
            continue;
          }
        }

        goto LABEL_61;
      }

      if (v77)
      {
        return result;
      }

      v35 = *a2;
      v57 = (*a2)[2];
      if (v57 >= a5)
      {
        return result;
      }

      v41 = *v7;
      v58 = *(*v7 + 16);
      if (v58)
      {
        if (!v57)
        {
          return result;
        }

        v62 = sub_1C057C6F4(v59, v60, v61);

        v63 = v41 + 4;
        while (v58)
        {
          ++v63;

          v67 = sub_1C057C6F4(v64, v65, v66);
          v68 = sub_1C0576B90(v67, v62);

          v7 = a4;

          --v58;
          if (v68)
          {
          }
        }

        goto LABEL_54;
      }

LABEL_55:

      result = swift_isUniquelyReferenced_nonNull_native();
      *v7 = v41;
      if ((result & 1) == 0)
      {
        result = sub_1C0578F40(0, v41[2] + 1, 1, v41, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
        v41 = result;
        *v7 = result;
      }

      v72 = v41[2];
      v71 = v41[3];
      if (v72 >= v71 >> 1)
      {
        result = sub_1C0578F40((v71 > 1), v72 + 1, 1, v41, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
        v41 = result;
      }

      v41[2] = v72 + 1;
      v41[v72 + 4] = v35;
      *v7 = v41;
    }
  }

  return result;
}

uint64_t sub_1C0576B90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v44 = (v5 + 63) >> 6;
  v8 = a1 + 56;

  v10 = 0;
  v43 = v2;
  v11 = v44;
  if (v7)
  {
    while (1)
    {
      v12 = v10;
LABEL_10:
      v13 = (*(v2 + 48) + 192 * (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v81[2] = v13[2];
      v81[3] = v14;
      v81[0] = v16;
      v81[1] = v15;
      v17 = v13[6];
      v19 = v13[4];
      v18 = v13[5];
      v81[7] = v13[7];
      v81[6] = v17;
      v81[4] = v19;
      v81[5] = v18;
      v21 = v13[9];
      v20 = v13[10];
      v22 = v13[8];
      *(v82 + 9) = *(v13 + 169);
      v82[0] = v20;
      v81[8] = v22;
      v81[9] = v21;
      v23 = v13[9];
      v78 = v13[8];
      v79 = v23;
      v80[0] = v13[10];
      *(v80 + 9) = *(v13 + 169);
      v24 = v13[5];
      v74 = v13[4];
      v75 = v24;
      v25 = v13[7];
      v76 = v13[6];
      v77 = v25;
      v26 = v13[1];
      v70 = *v13;
      v71 = v26;
      v27 = v13[3];
      v72 = v13[2];
      v73 = v27;
      if (!*(a1 + 16))
      {
        break;
      }

      v67 = v13[8];
      v68 = v13[9];
      v69[0] = v13[10];
      *(v69 + 9) = *(v13 + 169);
      v63 = v13[4];
      v64 = v13[5];
      v65 = v13[6];
      v66 = v13[7];
      v59 = *v13;
      v60 = v13[1];
      v61 = v13[2];
      v62 = v13[3];
      sub_1C095DFEC();
      sub_1C0521E78(v81, v57);
      UsoEntitySpan.hash(into:)(&v46);
      v28 = sub_1C095E03C();
      v29 = -1 << *(a1 + 32);
      v30 = v28 & ~v29;
      if (((*(v8 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
LABEL_18:
        v67 = v78;
        v68 = v79;
        v69[0] = v80[0];
        *(v69 + 9) = *(v80 + 9);
        v63 = v74;
        v64 = v75;
        v65 = v76;
        v66 = v77;
        v59 = v70;
        v60 = v71;
        v61 = v72;
        v62 = v73;
        sub_1C05755CC(&v59);
        goto LABEL_19;
      }

      v7 &= v7 - 1;
      v31 = ~v29;
      while (1)
      {
        v32 = (*(a1 + 48) + 192 * v30);
        v33 = v32[3];
        v35 = *v32;
        v34 = v32[1];
        v57[2] = v32[2];
        v57[3] = v33;
        v57[0] = v35;
        v57[1] = v34;
        v36 = v32[7];
        v38 = v32[4];
        v37 = v32[5];
        v57[6] = v32[6];
        v57[7] = v36;
        v57[4] = v38;
        v57[5] = v37;
        v40 = v32[9];
        v39 = v32[10];
        v41 = v32[8];
        *(v58 + 9) = *(v32 + 169);
        v57[9] = v40;
        v58[0] = v39;
        v57[8] = v41;
        v54 = v32[8];
        v55 = v32[9];
        v56[0] = v32[10];
        *(v56 + 9) = *(v32 + 169);
        v50 = v32[4];
        v51 = v32[5];
        v52 = v32[6];
        v53 = v32[7];
        v46 = *v32;
        v47 = v32[1];
        v48 = v32[2];
        v49 = v32[3];
        sub_1C0521E78(v57, v45);
        v42 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v46, &v70);
        v67 = v54;
        v68 = v55;
        v69[0] = v56[0];
        *(v69 + 9) = *(v56 + 9);
        v63 = v50;
        v64 = v51;
        v65 = v52;
        v66 = v53;
        v59 = v46;
        v60 = v47;
        v61 = v48;
        v62 = v49;
        sub_1C05755CC(&v59);
        if (v42)
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v8 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v54 = v78;
      v55 = v79;
      v56[0] = v80[0];
      *(v56 + 9) = *(v80 + 9);
      v50 = v74;
      v51 = v75;
      v52 = v76;
      v53 = v77;
      v46 = v70;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      result = sub_1C05755CC(&v46);
      v10 = v12;
      v2 = v43;
      v11 = v44;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v67 = v78;
    v68 = v79;
    v69[0] = v80[0];
    *(v69 + 9) = *(v80 + 9);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v66 = v77;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v62 = v73;
    sub_1C0521E78(v81, v57);
    sub_1C05755CC(&v59);
LABEL_19:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *static UsoEntitySpanUtils.convert(from:)(uint64_t a1)
{

  v2 = 0;
  v3 = sub_1C057CCC0(v1);

  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1C0579D78(v3[2], 0);
  v6 = sub_1C057C49C(&v78, (v5 + 4), v4, v3);
  v7 = v78;

  sub_1C052281C(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v78 = v5;
  sub_1C0579EF4(&v78);

  v8 = v78;
  v72 = *(v78 + 16);
  if (!v72)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v71 = v78 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC8];
  v70 = v78;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_57;
    }

    v74 = v10;
    v75 = v9;
    v12 = *(v71 + 16 * v9 + 8);
    v88 = v11;
    v2 = *(v12 + 16);

    if (v2)
    {
      break;
    }

LABEL_29:
    v47 = v11[2];
    if (v47)
    {
      v48 = sub_1C0579D78(v11[2], 0);
      v73 = sub_1C057C49C(&v78, (v48 + 4), v47, v11);
      v49 = v78;
      v2 = *(&v79 + 1);

      sub_1C052281C(v49);
      if (v73 != v47)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    *&v78 = v48;
    v2 = 0;
    sub_1C0579EF4(&v78);

    v50 = *(v78 + 16);
    if (v50)
    {
      v51 = v50 - 1;
      v52 = 40;
      v53 = MEMORY[0x1E69E7CC0];
      while (1)
      {

        sub_1C0577690(v54, v76);

        v85 = v76[8];
        v86 = v76[9];
        v87[0] = v77[0];
        *(v87 + 9) = *(v77 + 9);
        *v82 = v76[4];
        *&v82[16] = v76[5];
        v83 = v76[6];
        v84 = v76[7];
        v78 = v76[0];
        v79 = v76[1];
        v80 = v76[2];
        v81 = v76[3];
        if (sub_1C057CF40(&v78) != 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1C0522E00(0, *(v53 + 2) + 1, 1, v53);
          }

          v56 = *(v53 + 2);
          v55 = *(v53 + 3);
          if (v56 >= v55 >> 1)
          {
            v53 = sub_1C0522E00((v55 > 1), v56 + 1, 1, v53);
          }

          *(v53 + 2) = v56 + 1;
          v57 = &v53[192 * v56];
          v58 = v78;
          v59 = v79;
          v60 = v81;
          *(v57 + 4) = v80;
          *(v57 + 5) = v60;
          *(v57 + 2) = v58;
          *(v57 + 3) = v59;
          v61 = *v82;
          v62 = *&v82[16];
          v63 = v84;
          *(v57 + 8) = v83;
          *(v57 + 9) = v63;
          *(v57 + 6) = v61;
          *(v57 + 7) = v62;
          v64 = v85;
          v65 = v86;
          v66 = v87[0];
          *(v57 + 201) = *(v87 + 9);
          *(v57 + 11) = v65;
          *(v57 + 12) = v66;
          *(v57 + 10) = v64;
        }

        if (!v51)
        {
          break;
        }

        --v51;
        v52 += 16;
      }
    }

    else
    {

      v53 = MEMORY[0x1E69E7CC0];
    }

    v10 = v74;
    if (*(v53 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1C0578F40(0, v74[2] + 1, 1, v74, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
      }

      v68 = v10[2];
      v67 = v10[3];
      if (v68 >= v67 >> 1)
      {
        v10 = sub_1C0578F40((v67 > 1), v68 + 1, 1, v10, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
      }

      v10[2] = v68 + 1;
      v10[v68 + 4] = v53;
    }

    else
    {
    }

    v9 = v75 + 1;
    v8 = v70;
    v11 = MEMORY[0x1E69E7CC8];
    if (v75 + 1 == v72)
    {

      return v10;
    }
  }

  v13 = 0;
  v14 = (v12 + 32);
  while (v13 < *(v12 + 16))
  {
    v20 = *(v14 + 73);
    v21 = v14[2];
    v22 = v14[4];
    v81 = v14[3];
    *v82 = v22;
    v23 = v14[1];
    v78 = *v14;
    v79 = v23;
    *&v82[9] = v20;
    v80 = v21;
    if (v82[0])
    {
      v24 = 0;
    }

    else
    {
      v24 = HIDWORD(v81);
    }

    v25 = sub_1C057EAB4(v24);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_55;
    }

    v30 = v26;
    if (v11[3] >= v29)
    {
      v33 = v25;
      sub_1C0518B04(&v78, v76);
      if (v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1C0518B04(&v78, v76);
      sub_1C057BD40(v29, 1, &unk_1EBE17460, &qword_1C0970B40);
      v11 = v88;
      v31 = sub_1C057EAB4(v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_59;
      }

      v33 = v31;
      if (v30)
      {
LABEL_25:
        v42 = v11[7];
        v43 = *(v42 + 8 * v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 8 * v33) = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_1C0519CF8(0, *(v43 + 2) + 1, 1, v43);
          *(v42 + 8 * v33) = v43;
        }

        v46 = *(v43 + 2);
        v45 = *(v43 + 3);
        if (v46 >= v45 >> 1)
        {
          v43 = sub_1C0519CF8((v45 > 1), v46 + 1, 1, v43);
          *(v42 + 8 * v33) = v43;
        }

        *(v43 + 2) = v46 + 1;
        v15 = &v43[96 * v46];
        v16 = v79;
        *(v15 + 2) = v78;
        *(v15 + 3) = v16;
        v17 = v80;
        v18 = v81;
        v19 = *v82;
        *(v15 + 105) = *&v82[9];
        *(v15 + 5) = v18;
        *(v15 + 6) = v19;
        *(v15 + 4) = v17;
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E48, &qword_1C09705F0);
    v34 = swift_allocObject();
    v35 = v80;
    v36 = *v82;
    v34[5] = v81;
    v34[6] = v36;
    *(v34 + 105) = *&v82[9];
    v37 = v78;
    v38 = v79;
    v34[1] = xmmword_1C096E0C0;
    v34[2] = v37;
    v34[3] = v38;
    v34[4] = v35;
    v11[(v33 >> 6) + 8] |= 1 << v33;
    *(v11[6] + 4 * v33) = v24;
    *(v11[7] + 8 * v33) = v34;
    v39 = v11[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_56;
    }

    v11[2] = v41;
LABEL_13:
    ++v13;
    v14 += 6;
    if (v2 == v13)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1C095DF6C();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1C0577690(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_1C057CF68(&v44);
    v6 = v47;
    a2[8] = v46;
    a2[9] = v6;
    a2[10] = *v48;
    *(a2 + 169) = *&v48[9];
    v7 = *&v45[64];
    a2[4] = *&v45[48];
    a2[5] = v7;
    v8 = *&v45[96];
    a2[6] = *&v45[80];
    a2[7] = v8;
    v9 = *v45;
    *a2 = v44;
    a2[1] = v9;
    v10 = *&v45[32];
    a2[2] = *&v45[16];
    a2[3] = v10;
    return;
  }

  v4 = *(a1 + 89);
  if (v4 == 7)
  {
    v5 = 7;
  }

  else
  {
    v11 = a1;
    UsoEntitySpan.SpanSource.init(rawValue:)(v4);
    a1 = v11;
    v5 = v44;
  }

  v36 = v5;
  v12 = 0;
  v38 = 0;
  v39 = 0.0;
  v41 = 0;
  v42 = 0;
  v13 = (a1 + 48);
  v40 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *(v13 + 2);
    v17 = *(v13 + 3);
    v18 = v13[4];
    v19 = *(v13 + 40);
    if (v12)
    {

      v12 = 1;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = *v13;
      v21 = *(v13 + 1);
      v22 = *v13 == 0x736E656B6F54 && v21 == 0xE600000000000000;
      if (v22 || (sub_1C095DF3C() & 1) != 0)
      {

        v12 = 0;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v12 = 1;
        v39 = v20;
        v42 = v21;
        if (!v17)
        {
          goto LABEL_7;
        }
      }
    }

    if (v16 == 0x65746C615F727361 && v17 == 0xEF65766974616E72 || (sub_1C095DF3C() & 1) != 0)
    {

      if (v19)
      {
LABEL_7:

        goto LABEL_8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1C0578148(0, *(v43 + 2) + 1, 1, v43);
      }

      v24 = *(v43 + 2);
      v23 = *(v43 + 3);
      if (v24 >= v23 >> 1)
      {
        v43 = sub_1C0578148((v23 > 1), v24 + 1, 1, v43);
      }

      v25 = v18;
      *(v43 + 2) = v24 + 1;
      v26 = &v43[24 * v24];
      *(v26 + 4) = v14;
      *(v26 + 5) = v15;
      *(v26 + 12) = v25;
      v26[52] = 0;
    }

    else if (v16 == 0x64695F6D657469 && v17 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
    {

      v38 = v14;
      v41 = v15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1C057802C(0, *(v40 + 2) + 1, 1, v40);
      }

      v28 = *(v40 + 2);
      v27 = *(v40 + 3);
      if (v28 >= v27 >> 1)
      {
        v40 = sub_1C057802C((v27 > 1), v28 + 1, 1, v40);
      }

      *(v40 + 2) = v28 + 1;
      v29 = &v40[48 * v28];
      *(v29 + 4) = v16;
      *(v29 + 5) = v17;
      *(v29 + 6) = v14;
      *(v29 + 7) = v15;
      *(v29 + 16) = 0;
      v29[68] = 1;
      v30 = BYTE2(v44);
      *(v29 + 69) = v44;
      v29[71] = v30;
      *(v29 + 18) = 0;
      v29[76] = 1;
    }

LABEL_8:
    v13 += 12;
    --v3;
  }

  while (v3);
  if (v42)
  {
    *&v44 = v39;
    *(&v44 + 1) = v42;
    v45[0] = v36;
    memset(&v45[8], 0, 96);
    *&v45[104] = v40;
    LODWORD(v46) = 0;
    BYTE4(v46) = 1;
    DWORD2(v46) = 0;
    BYTE12(v46) = 1;
    *&v47 = v43;
    *(&v47 + 1) = v38;
    *v48 = v41;
    v48[8] = 3;
    *&v48[16] = 0;
    v48[24] = 1;
    nullsub_1();
  }

  else
  {

    sub_1C057CF68(&v44);
  }

  v31 = v47;
  a2[8] = v46;
  a2[9] = v31;
  a2[10] = *v48;
  *(a2 + 169) = *&v48[9];
  v32 = *&v45[64];
  a2[4] = *&v45[48];
  a2[5] = v32;
  v33 = *&v45[96];
  a2[6] = *&v45[80];
  a2[7] = v33;
  v34 = *v45;
  *a2 = v44;
  a2[1] = v34;
  v35 = *&v45[32];
  a2[2] = *&v45[16];
  a2[3] = v35;
}

unint64_t static UsoEntitySpanUtils.getAlignedString(from:using:base:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 132))
  {
    return 0;
  }

  v4 = 0;
  if ((*(a1 + 140) & 1) != 0 || !a4)
  {
    return v4;
  }

  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 128);
  v9 = *(v6 + 32);
  v10 = v7 - 1;
  if (v7 != 1)
  {
    if (v7 >= 9)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFF8 | 1;
      v12 = vdupq_n_s32(v9);
      v13 = (v6 + 128);
      v14 = v10 & 0xFFFFFFFFFFFFFFF8;
      v15 = v12;
      do
      {
        v16.i32[0] = *(v13 - 18);
        v16.i32[1] = *(v13 - 12);
        v16.i32[2] = *(v13 - 6);
        v16.i32[3] = *v13;
        v17.i32[0] = v13[6];
        v17.i32[1] = v13[12];
        v17.i32[2] = v13[18];
        v17.i32[3] = v13[24];
        v12 = vminq_u32(v16, v12);
        v15 = vminq_u32(v17, v15);
        v13 += 48;
        v14 -= 8;
      }

      while (v14);
      v9 = vminvq_u32(vminq_u32(v12, v15));
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 1;
    }

    v18 = v7 - v11;
    v19 = (v6 + 24 * v11 + 32);
    do
    {
      v21 = *v19;
      v19 += 6;
      v20 = v21;
      if (v21 < v9)
      {
        v9 = v20;
      }

      --v18;
    }

    while (v18);
  }

LABEL_18:
  v22 = v8 - v9;
  if (v8 < v9)
  {
    return 0;
  }

  v23 = *(a1 + 136);
  result = sub_1C095D86C();
  if (v26)
  {
    return 0;
  }

  if (v23 < v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__CFADD__(v23 - v8, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = result;
  result = sub_1C095D86C();
  if (v28)
  {
    return 0;
  }

  v29 = result;
  if (result >> 14 >= v27 >> 14)
  {

    v30 = MEMORY[0x1C68DD720](v27, v29, a3, a4);
    v4 = MEMORY[0x1C68DD760](v30);

    return v4;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1C0577D94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17208, &qword_1C09709E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1C0577E98(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E80, &qword_1C0970648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E88, &unk_1C0970650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C057802C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
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

char *sub_1C0578148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17278, &unk_1C0970A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0578264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17288, &qword_1C0970A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1C0578380(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
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

void *sub_1C0578608(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C0578750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17268, &qword_1C0970A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1C0578844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17230, &unk_1C0970A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1C057895C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C68, &unk_1C096E840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 1344);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[1344 * v8])
    {
      memmove(v12, v13, 1344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0578A9C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17238, &qword_1C0970A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0578BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17250, &qword_1C0970A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C0578CFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1C0578DE8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17218, &qword_1C09709F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17220, &qword_1C09709F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0578F40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C0579090(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C057923C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_1C0579AFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C0579C30(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC0, &unk_1C0970690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0579D78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17348, &qword_1C0970B48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C0579DFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17210, &qword_1C09709E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_1C0579E80(char **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C0789594(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 2);
  v6[0] = (v2 + 32);
  v6[1] = v4;
  result = sub_1C057A05C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C0579EF4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C07895A8(v2);
    *a1 = v2;
  }

  v4 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v4;
  result = sub_1C095DEFC();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 4;
      do
      {
        v12 = v2[2 * v10 + 4];
        v13 = v9;
        v14 = v11;
        do
        {
          if (v12 >= *v14)
          {
            break;
          }

          v15 = v14[3];
          *(v14 + 1) = *v14;
          *v14 = v12;
          v14[1] = v15;
          v14 -= 2;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 2;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = result;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17340, &qword_1C0970B38);
      v8 = sub_1C095D9CC();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[1] = v7;
    v18 = 0;
    v17[0] = v8 + 32;
    sub_1C057AA7C(v17, &v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C057A05C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C095DEFC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C095D9CC();
        *(v5 + 16) = v2 / 2;
      }

      v8 = 0;
      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C057A2BC(v7, &v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C057A158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C057A158(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 192 * a3 - 192;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 + 324) & 1) != 0 || (*(v8 + 332) & 1) != 0 || (*(v8 + 132) & 1) != 0 || (*(v8 + 140) & 1) != 0 || (v9 = *(v8 + 320), v10 = *(v8 + 128), v9 >= v10) && (v10 < v9 || (v11 = *(v8 + 328), v12 = *(v8 + 136), v12 >= v11) && (v11 != v12 || *(v8 + 208) != 2)))
      {
LABEL_4:
        ++a3;
        v5 += 192;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v8 + 192;
      v30 = *(v8 + 320);
      v31 = *(v8 + 336);
      *v32 = *(v8 + 352);
      *&v32[9] = *(v8 + 361);
      v26 = *(v8 + 256);
      v27 = *(v8 + 272);
      v28 = *(v8 + 288);
      v29 = *(v8 + 304);
      v22 = *(v8 + 192);
      v23 = *(v8 + 208);
      v24 = *(v8 + 224);
      v25 = *(v8 + 240);
      v14 = *(v8 + 144);
      *(v8 + 320) = *(v8 + 128);
      *(v8 + 336) = v14;
      v15 = *(v8 + 176);
      *(v8 + 352) = *(v8 + 160);
      *(v8 + 368) = v15;
      v16 = *(v8 + 80);
      *(v8 + 256) = *(v8 + 64);
      *(v8 + 272) = v16;
      v17 = *(v8 + 112);
      *(v8 + 288) = *(v8 + 96);
      *(v8 + 304) = v17;
      v18 = *(v8 + 16);
      *(v8 + 192) = *v8;
      *(v8 + 208) = v18;
      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      *(v8 + 128) = v30;
      *(v8 + 144) = v31;
      *(v8 + 160) = *v32;
      *(v8 + 169) = *&v32[9];
      *(v8 + 64) = v26;
      *(v8 + 80) = v27;
      *(v8 + 96) = v28;
      *(v8 + 112) = v29;
      *v8 = v22;
      *(v8 + 16) = v23;
      *(v8 + 32) = v24;
      *(v8 + 48) = v25;
      v8 -= 192;
      *(v13 + 32) = v19;
      *(v13 + 48) = v20;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C057A2BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  __src = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_125:
    __src = *__src;
    if (!__src)
    {
      goto LABEL_163;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_157:
      result = sub_1C0789580(v7);
      v7 = result;
    }

    v94 = v7 + 16;
    v95 = *(v7 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v7[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1C057B014((*a3 + 192 * *v96), (*a3 + 192 * *v98), (*a3 + 192 * v99), __src);
        if (v4)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_149;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_150;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_151;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_161;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *a3 + 192 * v6;
      if ((*(v10 + 132) & 1) == 0)
      {
        v11 = 0;
        if (*(v10 + 140))
        {
          goto LABEL_7;
        }

        v16 = v9 + 192 * v8;
        if (*(v16 + 132) & 1) != 0 || (*(v16 + 140))
        {
          goto LABEL_7;
        }

        v17 = *(v10 + 128);
        v18 = *(v16 + 128);
        if (v17 < v18)
        {
          v11 = 1;
          goto LABEL_7;
        }

        if (v18 >= v17)
        {
          v90 = *(v10 + 16);
          v91 = *(v10 + 136);
          v92 = *(v16 + 136);
          v11 = v91 == v92 && v90 == 2;
          if (v92 < v91)
          {
            v11 = 1;
          }

          goto LABEL_7;
        }
      }

      v11 = 0;
LABEL_7:
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v12 = v9 + 192 * v8 + 320;
        do
        {
          if ((*(v12 + 196) & 1) != 0 || (*(v12 + 204) & 1) != 0 || (*(v12 + 4) & 1) != 0 || (*(v12 + 12) & 1) != 0 || (v13 = *(v12 + 192), v13 >= *v12) && (*v12 < v13 || (v14 = *(v12 + 200), v15 = *(v12 + 8), v15 >= v14) && (v14 != v15 || *(v12 + 80) != 2)))
          {
            if (v11)
            {
              goto LABEL_30;
            }
          }

          else if (!v11)
          {
            goto LABEL_39;
          }

          ++v6;
          v12 += 192;
        }

        while (v5 != v6);
        v6 = v5;
      }

      if (v11)
      {
LABEL_30:
        if (v6 < v8)
        {
          goto LABEL_154;
        }

        if (v8 < v6)
        {
          v19 = 192 * v6 - 192;
          v20 = 192 * v8;
          v21 = v8;
          v22 = v6;
          v101 = v21;
          do
          {
            if (v21 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v23 = (v24 + v19);
              v120 = *(v24 + v20 + 128);
              v122 = *(v24 + v20 + 144);
              *v124 = *(v24 + v20 + 160);
              *&v124[9] = *(v24 + v20 + 169);
              v112 = *(v24 + v20 + 64);
              v114 = *(v24 + v20 + 80);
              v116 = *(v24 + v20 + 96);
              v118 = *(v24 + v20 + 112);
              v104 = *(v24 + v20);
              v106 = *(v24 + v20 + 16);
              v108 = *(v24 + v20 + 32);
              v110 = *(v24 + v20 + 48);
              result = memmove((v24 + v20), (v24 + v19), 0xC0uLL);
              v23[8] = v120;
              v23[9] = v122;
              v23[10] = *v124;
              *(v23 + 169) = *&v124[9];
              v23[4] = v112;
              v23[5] = v114;
              v23[6] = v116;
              v23[7] = v118;
              *v23 = v104;
              v23[1] = v106;
              v23[2] = v108;
              v23[3] = v110;
            }

            ++v21;
            v19 -= 192;
            v20 += 192;
          }

          while (v21 < v22);
          v5 = a3[1];
          v8 = v101;
        }
      }
    }

LABEL_39:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_153;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_155;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_64:
    if (v6 < v8)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0577D94(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_1C0577D94((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *__src;
    if (!*__src)
    {
      goto LABEL_162;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_84:
          if (v52)
          {
            goto LABEL_140;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_143;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_147;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_98:
        if (v70)
        {
          goto LABEL_142;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_145;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_105:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_159;
        }

        v87 = *&v7[16 * v86 + 32];
        v88 = *&v7[16 * v48 + 40];
        sub_1C057B014((*a3 + 192 * v87), (*a3 + 192 * *&v7[16 * v48 + 32]), (*a3 + 192 * v88), v47);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C0789580(v7);
        }

        if (v86 >= *(v7 + 2))
        {
          goto LABEL_137;
        }

        v89 = &v7[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1C07894EC(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_138;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_139;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_141;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_144;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_148;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_125;
    }
  }

  v25 = *a3;
  v26 = *a3 + 192 * v6 - 192;
  v27 = v8 - v6;
LABEL_49:
  v28 = v27;
  v29 = v26;
  while (1)
  {
    if ((*(v29 + 324) & 1) != 0 || (*(v29 + 332) & 1) != 0 || (*(v29 + 132) & 1) != 0 || (*(v29 + 140) & 1) != 0 || (v30 = *(v29 + 320), v31 = *(v29 + 128), v30 >= v31) && (v31 < v30 || (v32 = *(v29 + 328), v33 = *(v29 + 136), v33 >= v32) && (v32 != v33 || *(v29 + 208) != 2)))
    {
LABEL_48:
      ++v6;
      v26 += 192;
      --v27;
      if (v6 != v5)
      {
        goto LABEL_49;
      }

      v6 = v5;
      goto LABEL_64;
    }

    if (!v25)
    {
      break;
    }

    v34 = v29 + 192;
    v121 = *(v29 + 320);
    v123 = *(v29 + 336);
    *v125 = *(v29 + 352);
    *&v125[9] = *(v29 + 361);
    v113 = *(v29 + 256);
    v115 = *(v29 + 272);
    v117 = *(v29 + 288);
    v119 = *(v29 + 304);
    v105 = *(v29 + 192);
    v107 = *(v29 + 208);
    v109 = *(v29 + 224);
    v111 = *(v29 + 240);
    v35 = *(v29 + 144);
    *(v29 + 320) = *(v29 + 128);
    *(v29 + 336) = v35;
    v36 = *(v29 + 176);
    *(v29 + 352) = *(v29 + 160);
    *(v29 + 368) = v36;
    v37 = *(v29 + 80);
    *(v29 + 256) = *(v29 + 64);
    *(v29 + 272) = v37;
    v38 = *(v29 + 112);
    *(v29 + 288) = *(v29 + 96);
    *(v29 + 304) = v38;
    v39 = *(v29 + 16);
    *(v29 + 192) = *v29;
    *(v29 + 208) = v39;
    v40 = *(v29 + 32);
    v41 = *(v29 + 48);
    *(v29 + 128) = v121;
    *(v29 + 144) = v123;
    *(v29 + 160) = *v125;
    *(v29 + 169) = *&v125[9];
    *(v29 + 64) = v113;
    *(v29 + 80) = v115;
    *(v29 + 96) = v117;
    *(v29 + 112) = v119;
    *v29 = v105;
    *(v29 + 16) = v107;
    *(v29 + 32) = v109;
    *(v29 + 48) = v111;
    v29 -= 192;
    *(v34 + 32) = v40;
    *(v34 + 48) = v41;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t sub_1C057AA7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C0789580(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1C057B2F8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0577D94(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1C0577D94((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1C057B2F8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C057B014(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 192;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 192;
  if (v9 >= v11)
  {
    v20 = 192 * v11;
    if (__src != a2 || &a2[v20] <= __src)
    {
      memmove(__src, a2, 192 * v11);
    }

    v13 = &v4[v20];
    if (v10 < 192 || v6 <= v7)
    {
LABEL_49:
      v28 = v6;
    }

    else
    {
      do
      {
        v21 = 0;
        v22 = v13;
        while (1)
        {
          v23 = &v22[v21];
          if ((v22[v21 - 60] & 1) == 0 && (*(v23 - 52) & 1) == 0 && (*(v6 - 60) & 1) == 0 && (*(v6 - 52) & 1) == 0)
          {
            v24 = *(v23 - 16);
            v25 = *(v6 - 16);
            if (v24 < v25)
            {
              break;
            }

            if (v25 >= v24)
            {
              v26 = *(v23 - 14);
              v27 = *(v6 - 14);
              if (v27 < v26 || v26 == v27 && *(v23 - 176) == 2)
              {
                break;
              }
            }
          }

          if (&v5[v21] != v23)
          {
            memmove(&v5[v21 - 192], v23 - 192, 0xC0uLL);
          }

          v21 -= 192;
          v13 = &v22[v21];
          if (&v22[v21] <= v4)
          {
            goto LABEL_49;
          }
        }

        v28 = v6 - 192;
        v29 = &v5[v21];
        v5 = &v5[v21 - 192];
        if (v29 != v6)
        {
          v30 = v6 - 192;
          memmove(v5, v30, 0xC0uLL);
          v28 = v30;
        }

        v13 = &v22[v21];
        if (&v22[v21] <= v4)
        {
          break;
        }

        v6 = v28;
      }

      while (v28 > v7);
      v13 = &v22[v21];
    }
  }

  else
  {
    v12 = 192 * v9;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      memmove(__src, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 192 && v6 < v5)
    {
      while ((v6[132] & 1) == 0)
      {
        if (v6[140])
        {
          break;
        }

        if (v4[132])
        {
          break;
        }

        if (v4[140])
        {
          break;
        }

        v16 = *(v6 + 32);
        v17 = *(v4 + 32);
        if (v16 >= v17)
        {
          if (v17 < v16)
          {
            break;
          }

          v18 = *(v6 + 34);
          v19 = *(v4 + 34);
          if (v19 >= v18 && (v18 != v19 || v6[16] != 2))
          {
            break;
          }
        }

        v14 = v6;
        v15 = v7 == v6;
        v6 += 192;
        if (!v15)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 192;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_48;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 192;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_9:
      memmove(v7, v14, 0xC0uLL);
      goto LABEL_10;
    }

LABEL_48:
    v28 = v7;
  }

  v31 = 192 * ((v13 - v4) / 192);
  if (v28 != v4 || v28 >= &v4[v31])
  {
    memmove(v28, v4, v31);
  }

  return 1;
}

uint64_t sub_1C057B2F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 4);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1C057B4FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
  v38 = v4;
  result = sub_1C095DD3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
      }

      sub_1C095DFEC();
      v24 = v22[5];
      v25 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v24);
      (*(v25 + 8))(v24, v25);
      sub_1C095D7BC();

      v26 = v22[5];
      v27 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v26);
      (*(v27 + 16))(v26, v27);
      sub_1C095E00C();
      result = sub_1C095E03C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v23;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v23;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C057B838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
  result = sub_1C095DD3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = sub_1C095DFDC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C057BA9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v34 = v4;
  result = sub_1C095DD3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68DDE60](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C057BD40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C095DD3C();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 4 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68DDE60](*(v9 + 40), v22, 4);
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1C057BFAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  result = sub_1C095DD3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {

        swift_unownedRetain();
      }

      result = sub_1C095DFDC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C057C22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  result = sub_1C095DD3C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_1C095DFDC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1C057C49C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 4 * v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C057C5F4(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C057C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_1C057CF8C(a1, a2, a3);
  result = MEMORY[0x1C68DD910](v4, &type metadata for UsoEntitySpan, v5);
  v17 = result;
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = v7[9];
      v18[8] = v7[8];
      v18[9] = v8;
      v19[0] = v7[10];
      *(v19 + 9) = *(v7 + 169);
      v9 = v7[5];
      v18[4] = v7[4];
      v18[5] = v9;
      v10 = v7[7];
      v18[6] = v7[6];
      v18[7] = v10;
      v11 = v7[1];
      v18[0] = *v7;
      v18[1] = v11;
      v12 = v7[3];
      v18[2] = v7[2];
      v18[3] = v12;
      sub_1C0521E78(v18, v15);
      sub_1C07A6750(v13, v18);
      v15[8] = v13[8];
      v15[9] = v13[9];
      v16[0] = v14[0];
      *(v16 + 9) = *(v14 + 9);
      v15[4] = v13[4];
      v15[5] = v13[5];
      v15[6] = v13[6];
      v15[7] = v13[7];
      v15[0] = v13[0];
      v15[1] = v13[1];
      v15[2] = v13[2];
      v15[3] = v13[3];
      sub_1C05755CC(v15);
      v7 += 12;
      --v4;
    }

    while (v4);
    return v17;
  }

  return result;
}

void *sub_1C057C7F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (!v3 || (v62 = a2[2]) == 0)
  {

    return v2;
  }

  v4 = 0;
  v61 = a2 + 4;
  v65 = v3 - 1;
  v66 = (a1 + 32);
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v61[v4];
    v6 = *(v5 + 16);
    if (!v6)
    {
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_38;
    }

    v63 = v2;
    v64 = v4;
    v7 = v5 + 32;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v68 = v6;
    v69 = v5;
    v67 = v5 + 32;
    while (2)
    {
      v10 = (v7 + 192 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v84 = v10[2];
      v85 = v13;
      v82 = v11;
      v83 = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v88 = v10[6];
      v89 = v16;
      v86 = v14;
      v87 = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[10];
      *(v92 + 9) = *(v10 + 169);
      v91 = v18;
      v92[0] = v19;
      v90 = v17;
      sub_1C0521E78(&v82, &v71);
      sub_1C0521E78(&v82, &v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C0522E00(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1C0522E00((v20 > 1), v21 + 1, 1, v9);
      }

      v22 = v83;
      *(v9 + 2) = v21 + 1;
      v23 = &v9[192 * v21];
      v24 = v82;
      v25 = v83;
      v26 = v85;
      *(v23 + 4) = v84;
      *(v23 + 5) = v26;
      *(v23 + 2) = v24;
      *(v23 + 3) = v25;
      v27 = v86;
      v28 = v87;
      v29 = v89;
      *(v23 + 8) = v88;
      *(v23 + 9) = v29;
      *(v23 + 6) = v27;
      *(v23 + 7) = v28;
      v30 = v90;
      v31 = v91;
      v32 = v92[0];
      *(v23 + 201) = *(v92 + 9);
      *(v23 + 11) = v31;
      *(v23 + 12) = v32;
      *(v23 + 10) = v30;
      if (v22 == 1)
      {
        result = sub_1C05755CC(&v82);
        goto LABEL_33;
      }

      v34 = DWORD2(v90);
      v35 = BYTE12(v90);
      v36 = v90;
      v38 = v65;
      v37 = v66;
      v39 = BYTE4(v90);
      while (1)
      {
        v40 = v37[9];
        v79 = v37[8];
        v80 = v40;
        v81[0] = v37[10];
        *(v81 + 9) = *(v37 + 169);
        v41 = v37[5];
        v75 = v37[4];
        v76 = v41;
        v42 = v37[7];
        v77 = v37[6];
        v78 = v42;
        v43 = v37[1];
        v71 = *v37;
        v72 = v43;
        v44 = v37[3];
        v73 = v37[2];
        v74 = v44;
        if (BYTE4(v79))
        {
          if (!v39)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v79 == v36)
          {
            v45 = v39;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            goto LABEL_30;
          }
        }

        if (BYTE12(v79))
        {
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (DWORD2(v79) == v34)
          {
            v46 = v35;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            goto LABEL_30;
          }
        }

        sub_1C0521E78(&v71, v70);
        v48 = *(v9 + 2);
        v47 = *(v9 + 3);
        if (v48 >= v47 >> 1)
        {
          v9 = sub_1C0522E00((v47 > 1), v48 + 1, 1, v9);
        }

        *(v9 + 2) = v48 + 1;
        v49 = &v9[192 * v48];
        v50 = v71;
        v51 = v72;
        v52 = v74;
        *(v49 + 4) = v73;
        *(v49 + 5) = v52;
        *(v49 + 2) = v50;
        *(v49 + 3) = v51;
        v53 = v75;
        v54 = v76;
        v55 = v78;
        *(v49 + 8) = v77;
        *(v49 + 9) = v55;
        *(v49 + 6) = v53;
        *(v49 + 7) = v54;
        v56 = v79;
        v57 = v80;
        v58 = v81[0];
        *(v49 + 201) = *(v81 + 9);
        *(v49 + 11) = v57;
        *(v49 + 12) = v58;
        *(v49 + 10) = v56;
LABEL_30:
        if (!v38)
        {
          break;
        }

        --v38;
        v37 += 12;
      }

      result = sub_1C05755CC(&v82);
      v6 = v68;
      v5 = v69;
      v7 = v67;
LABEL_33:
      if (++v8 != v6)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        continue;
      }

      break;
    }

    v2 = v63;
    v4 = v64;
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C0578F40(0, v2[2] + 1, 1, v2, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
    }

    v60 = v2[2];
    v59 = v2[3];
    if (v60 >= v59 >> 1)
    {
      v2 = sub_1C0578F40((v59 > 1), v60 + 1, 1, v2, &qword_1EBE17330, &qword_1C0970B28, &qword_1EBE17338, &qword_1C0970B30);
    }

    ++v4;
    v2[2] = v60 + 1;
    v2[v60 + 4] = v9;
  }

  while (v4 != v62);
  return v2;
}

uint64_t sub_1C057CC0C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[9];
  v16[8] = a1[8];
  v16[9] = v3;
  v17[0] = a1[10];
  *(v17 + 9) = *(a1 + 169);
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[7];
  v16[6] = a1[6];
  v16[7] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v16[2] = a1[2];
  v16[3] = v7;
  v8 = v2[9];
  v14[8] = v2[8];
  v14[9] = v8;
  v15[0] = v2[10];
  *(v15 + 9) = *(v2 + 169);
  v9 = v2[5];
  v14[4] = v2[4];
  v14[5] = v9;
  v10 = v2[7];
  v14[6] = v2[6];
  v14[7] = v10;
  v11 = v2[1];
  v14[0] = *v2;
  v14[1] = v11;
  v12 = v2[3];
  v14[2] = v2[2];
  v14[3] = v12;
  return _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(v16, v14) & 1;
}

void *sub_1C057CCC0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 6)
  {
    v9 = i[4];
    v39 = i[3];
    v40[0] = v9;
    v10 = i[2];
    v37 = i[1];
    v38 = v10;
    *(v40 + 9) = *(i + 73);
    v36 = *i;
    v11 = BYTE8(v40[0]) ? 0 : DWORD1(v40[0]);
    v12 = sub_1C057EAB4(v11);
    v14 = v1[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v13;
    if (v1[3] >= v16)
    {
      v20 = v12;
      sub_1C0518B04(&v36, v35);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C0518B04(&v36, v35);
      sub_1C057BD40(v16, 1, &unk_1EBE17460, &qword_1C0970B40);
      v1 = v41;
      v18 = sub_1C057EAB4(v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v20 = v18;
      if (v17)
      {
LABEL_15:
        v29 = v1[7];
        v30 = *(v29 + 8 * v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v20) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1C0519CF8(0, *(v30 + 2) + 1, 1, v30);
          *(v29 + 8 * v20) = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        if (v33 >= v32 >> 1)
        {
          v30 = sub_1C0519CF8((v32 > 1), v33 + 1, 1, v30);
          *(v29 + 8 * v20) = v30;
        }

        *(v30 + 2) = v33 + 1;
        v4 = &v30[96 * v33];
        v5 = v37;
        *(v4 + 2) = v36;
        *(v4 + 3) = v5;
        v6 = v38;
        v7 = v39;
        v8 = v40[0];
        *(v4 + 105) = *(v40 + 9);
        *(v4 + 5) = v7;
        *(v4 + 6) = v8;
        *(v4 + 4) = v6;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E48, &qword_1C09705F0);
    v21 = swift_allocObject();
    v22 = v38;
    v23 = v40[0];
    v21[5] = v39;
    v21[6] = v23;
    *(v21 + 105) = *(v40 + 9);
    v24 = v36;
    v25 = v37;
    v21[1] = xmmword_1C096E0C0;
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v22;
    v1[(v20 >> 6) + 8] |= 1 << v20;
    *(v1[6] + 4 * v20) = v11;
    *(v1[7] + 8 * v20) = v21;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_21;
    }

    v1[2] = v28;
LABEL_4:
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C057CF40(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C057CF68(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C057CF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17358;
  if (!qword_1EBE17358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17358);
  }

  return result;
}

uint64_t sub_1C057CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*(v4 + 16) + 48);
  if (*(v6 + 16))
  {
    v9 = a4;

    v10 = sub_1C0516A8C(a1, a2);
    if (v11)
    {
      v12 = *(*(v6 + 56) + 8 * v10);

      if (v12 >> 62)
      {
        result = sub_1C095DCDC();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C68DDAD0](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v14 = *(v12 + 32);
        }

        goto LABEL_13;
      }
    }

    v14 = 0;
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  sub_1C057DA48(v14, a3, a4);
}

char *sub_1C057D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + 16) + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = sub_1C057DD64(v12, a3);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v4 + 16) + 48);
  if (*(v6 + 16))
  {

    v9 = sub_1C0516A8C(a1, a2);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C057E268(a4, v11, a4, a4);

  return v12;
}

uint64_t CodeGenBase.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CodeGenBase.init(from:)(a1);
  return v2;
}

uint64_t *CodeGenBase.init(from:)(void *a1)
{
  v4 = *v1;
  sub_1C0526080(a1, v17);
  v5 = sub_1C051B318(v17);
  if (v2)
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    sub_1C057F43C(v5, 0, v7);
    swift_allocError();
    swift_willThrow();
LABEL_10:

LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CodeGenBase();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v8 = _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0();
  if (!v8)
  {
    sub_1C057F43C(0, v9, v10);
    swift_allocError();
    swift_willThrow();
LABEL_9:

    goto LABEL_10;
  }

  v11 = v8;

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)(v12, v4, v4, v17);

  if (!v17[0])
  {
    sub_1C057F43C(v13, v14, v15);
    swift_allocError();
    swift_willThrow();

    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v1[2] = v11;
  return v1;
}

uint64_t sub_1C057D4F4(void *a1)
{
  v3 = *(v1 + 16);

  sub_1C0523914(a1, v3);
}

uint64_t sub_1C057D548()
{
  v1 = *(*(*(v0 + 16) + 48) + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C057D59C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = *(v11 + 104);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    v12 = *(v11 + 112);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D7E8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = *(v11 + 120);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*(v4 + 16) + 32);
  if (*(v6 + 16))
  {
    v9 = a4;

    v10 = sub_1C0516A8C(a1, a2);
    if (v11)
    {
      v12 = *(*(v6 + 56) + 8 * v10);

      if (v12 >> 62)
      {
        result = sub_1C095DCDC();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C68DDAD0](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v14 = *(v12 + 32);
        }

        goto LABEL_13;
      }
    }

    v14 = 0;
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  sub_1C057DA48(v14, a3, a4);
}

uint64_t sub_1C057DA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E6158];
    if (a2 == MEMORY[0x1E69E6158])
    {
      sub_1C0519574();
      v10 = &qword_1EBE168C0;
      v11 = &qword_1C096DC90;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      if (a2 != MEMORY[0x1E69E7360])
      {
        v6 = type metadata accessor for UsoEntity();
        v7 = sub_1C0518BC4();
        if (v6 == a2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE173F0, &qword_1C0970C88);
          v13 = swift_dynamicCast();
          return (*(*(a2 - 8) + 56))(a3, v13 ^ 1u, 1, a2);
        }

        else
        {
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)(v7, a2, a2, a3);
        }
      }

      Node.int64Value.getter();
      v10 = &qword_1EBE173E8;
      v11 = &unk_1C0970D70;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v12 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a3, v12 ^ 1u, 1, v5);
  }

  v9 = *(*(a2 - 8) + 56);

  return v9(a3, 1, 1, a2);
}

char *sub_1C057DC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = sub_1C057DD64(v12, a3);

    return v13;
  }

  __break(1u);
  return result;
}

char *sub_1C057DD64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C095DB0C();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v43 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - v18;
  if (!a1)
  {
    return 0;
  }

  v44 = v17;
  result = sub_1C0518574();
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *(result + 4);
  if (a2 == MEMORY[0x1E69E6158])
  {
    if (v22)
    {

      v24 = sub_1C0519574();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *&v45 = v24;
    *(&v45 + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
    v32 = MEMORY[0x1E69E6158];
    v33 = swift_dynamicCast();
    (*(v4 + 56))(v19, v33 ^ 1u, 1, v32);
    type metadata accessor for CodeGenExpression(0, v32, v34, v35);
    v36 = v44;
    (*(v44 + 16))(v16, v19, v7);
    v37 = sub_1C057E778(v21, v16);
    (*(v36 + 8))(v19, v7);
    return v37;
  }

  if (a2 == MEMORY[0x1E69E7360])
  {
    if (v22)
    {
      v45 = *(v22 + 16);
      v27 = Node.int64Value.getter();
    }

    else
    {
      v27 = 0;
      v28 = 1;
    }

    *&v45 = v27;
    BYTE8(v45) = v28 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
    v38 = MEMORY[0x1E69E7360];
    v39 = swift_dynamicCast();
    (*(v4 + 56))(v13, v39 ^ 1u, 1, v38);
    type metadata accessor for CodeGenExpression(0, v38, v40, v41);
    v42 = v44;
    (*(v44 + 16))(v16, v13, v7);
    v37 = sub_1C057E778(v21, v16);
    (*(v42 + 8))(v13, v7);
    return v37;
  }

  sub_1C057DA48(v23, a2, v10);

  if ((*(v4 + 48))(v10, 1, a2) == 1)
  {

    (*(v44 + 8))(v10, v7);
    return 0;
  }

  v29 = *(v4 + 32);
  v29(v6, v10, a2);
  type metadata accessor for CodeGenExpression(0, a2, v30, v31);
  v29(v16, v6, a2);
  (*(v4 + 56))(v16, 0, 1, a2);
  return sub_1C057E778(v21, v16);
}

uint64_t sub_1C057E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v4 + 16) + 32);
  if (*(v6 + 16))
  {

    v9 = sub_1C0516A8C(a1, a2);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C057E268(a4, v11, a4, a4);

  return v12;
}

uint64_t sub_1C057E268(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  type metadata accessor for CodeGenListEntry(0, a3, a3, a4);
  result = sub_1C095D9BC();
  v14 = result;
  if (!(a2 >> 62))
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

    return v14;
  }

  result = sub_1C095DCDC();
  v7 = result;
  if (!result)
  {
    return v14;
  }

LABEL_4:
  if (v7 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {

      v8 = 0;
      do
      {
        v9 = MEMORY[0x1C68DDAD0](v8++, a2);
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = v9;
        sub_1C095D9FC();
        sub_1C095D9EC();
      }

      while (v7 != v8);
    }

    else
    {
      v11 = (a2 + 32);

      do
      {
        v12 = *v11++;
        v13 = swift_allocObject();
        *(v13 + 16) = a1;
        *(v13 + 24) = v12;
        sub_1C095D9FC();

        sub_1C095D9EC();
        --v7;
      }

      while (v7);
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057E3DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_1C095DB0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v3 + 16);
  v11 = v10[3];
  v20 = v10[2];
  v21 = v11;

  sub_1C095D92C();
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v9, 1, a1) != 1)
  {
    (*(v12 + 32))(a3, v9, a1);
    return (*(v12 + 56))(a3, 0, 1, a1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = v10[4];
  if (!*(v13 + 16))
  {
    return (*(v12 + 56))(a3, 1, 1, a1);
  }

  v14 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  if (v16 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_14:

    return (*(v12 + 56))(a3, 1, 1, a1);
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v18 = sub_1C0518BC4();

  if (v18)
  {
    v19 = v18[3];
    v20 = v18[2];
    v21 = v19;

    sub_1C095D92C();
  }

  return (*(v12 + 56))(a3, 1, 1, a1);
}

uint64_t CodeGenBase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C057E6F0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C057E72C(void *a1)
{
  v3 = *(*v1 + 16);

  sub_1C0523914(a1, v3);
}

char *sub_1C057E778(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  v6 = *(v5 + 96);
  v7 = sub_1C095DB0C();
  (*(*(v7 - 8) + 32))(&v4[v6], a2, v7);
  return v4;
}

uint64_t sub_1C057E828()
{
  v1 = *(*(v0 + 16) + 16);

  return v1;
}

uint64_t sub_1C057E85C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_1C095DB0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *CodeGenExpression.deinit()
{

  v1 = *(*v0 + 96);
  v2 = sub_1C095DB0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CodeGenExpression.__deallocating_deinit()
{
  CodeGenExpression.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C057E9E4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CodeGenListEntry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C057EAB4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C68DDE60](*(v1 + 40), a1, 4);

  return sub_1C057ED14(v2, v3);
}

unint64_t sub_1C057EAFC(void *a1)
{
  sub_1C095DFEC();
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  sub_1C095D7BC();

  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 16))(v4, v5);
  sub_1C095E00C();
  v6 = sub_1C095E03C();

  return sub_1C057ED80(a1, v6);
}

unint64_t sub_1C057EBF0(uint64_t *a1)
{
  sub_1C095DFEC();
  v2 = a1[4];
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v2 && (sub_1C095E00C(), *(v2 + 24)))
  {
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  v3 = sub_1C095E03C();

  return sub_1C057EE7C(a1, v3);
}

unint64_t sub_1C057ED14(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C057ED80(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    do
    {
      v8 = *(*(v6 + 48) + 8 * v5);
      v9 = v8[5];
      v10 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
      v11 = *(v10 + 24);

      v12 = v11(a1 + 16, v9, v10);

      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C057EE7C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = a1[1];
    v47 = a1[2];
    v48 = *a1;
    v46 = a1[3];
    v8 = a1[4];
    v38 = v2 + 64;
    v42 = ~v4;
    do
    {
      v9 = (*(v2 + 48) + 40 * v5);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = *v9 == v48 && v9[1] == v7;
      if (v13 || (sub_1C095DF3C() & 1) != 0)
      {
        v14 = v10 == v47 && v11 == v46;
        if (v14 || (sub_1C095DF3C() & 1) != 0)
        {
          if (!v12)
          {
            if (!v8)
            {
              return v5;
            }

            goto LABEL_4;
          }

          if (v8)
          {
            v15 = v12[1];
            v16 = v12[2];
            v17 = v12[4];
            v71 = v12[3];
            v72 = v17;
            v69 = v15;
            v70 = v16;
            v18 = v8[1];
            v19 = v8[2];
            v20 = v8[4];
            v73[2] = v8[3];
            v73[3] = v20;
            v73[0] = v18;
            v73[1] = v19;
            v66 = v70;
            v67 = v71;
            v68 = v72;
            v21 = *(&v18 + 1);
            v22 = v8[3];
            v63 = v8[2];
            v64 = v22;
            v65 = v8[4];
            v45 = v69;
            if (!*(&v69 + 1))
            {
              if (!*(&v18 + 1))
              {
                v54 = v69;
                v55 = v70;
                v56 = v71;
                v57 = v72;
                sub_1C057F900(&v69, v53);
                sub_1C057F900(v73, v53);
                sub_1C05145B4(&v54, &qword_1EBE16D80, &qword_1C0970448);
                return v5;
              }

              v44 = v18;
              v29 = 0;

              sub_1C057F900(&v69, &v54);
              sub_1C057F900(v73, &v54);
              goto LABEL_31;
            }

            v54 = v69;
            v56 = v71;
            v57 = v72;
            v55 = v70;
            if (!*(&v18 + 1))
            {
              v44 = v18;
              v29 = *(&v69 + 1);

              sub_1C057F900(&v69, v53);
              sub_1C057F900(v73, v53);
              sub_1C057F900(&v54, v53);

              v2 = v37;
              v3 = v38;
LABEL_31:
              *&v54 = v45;
              *(&v54 + 1) = v29;
              v55 = v66;
              v56 = v67;
              v57 = v68;
              v58 = v44;
              v59 = v21;
              v60 = v63;
              v61 = v64;
              v62 = v65;
              sub_1C05145B4(&v54, &qword_1EBE16D88, &qword_1C0970450);

              v6 = v42;
              v7 = v36;
              goto LABEL_4;
            }

            v39 = *(&v57 + 1);
            v41 = *(&v56 + 1);
            v43 = *(&v55 + 1);
            v23 = v55;
            v34 = v56;
            v32 = v57;
            v53[0] = v18;
            v53[2] = v64;
            v53[3] = v65;
            v53[1] = v63;
            v24 = v63;
            v33 = v64;
            v25 = *(&v65 + 1);
            v31 = v65;
            v40 = *(&v69 + 1);
            if (v69 == v18 || (v26 = v55, v27 = sub_1C095DF3C(), v23 = v26, (v27)) && (__PAIR128__(v43, v23) == v24 || (sub_1C095DF3C()))
            {
              v28 = v25;
              v6 = v42;
              if (__PAIR128__(v41, v34) == v33 || (sub_1C095DF3C() & 1) != 0)
              {
                v2 = v37;
                v3 = v38;
                if (v32 == v31 && v39 == v28)
                {

                  sub_1C057F900(&v69, v49);
                  sub_1C057F900(v73, v49);
                  sub_1C057F900(&v54, v49);
                  v35 = 1;
                }

                else
                {
                  v35 = sub_1C095DF3C();

                  sub_1C057F900(&v69, v49);
                  sub_1C057F900(v73, v49);
                  sub_1C057F900(&v54, v49);
                }
              }

              else
              {

                sub_1C057F900(&v69, v49);
                sub_1C057F900(v73, v49);
                sub_1C057F900(&v54, v49);
                v35 = 0;
                v2 = v37;
                v3 = v38;
              }
            }

            else
            {

              sub_1C057F900(&v69, v49);
              sub_1C057F900(v73, v49);
              sub_1C057F900(&v54, v49);
              v35 = 0;
              v2 = v37;
              v3 = v38;
              v6 = v42;
            }

            sub_1C05145B4(v53, &qword_1EBE16D80, &qword_1C0970448);

            v49[0] = v45;
            v49[1] = v40;
            v50 = v66;
            v51 = v67;
            v52 = v68;
            sub_1C05145B4(v49, &qword_1EBE16D80, &qword_1C0970448);

            if (v35)
            {
              return v5;
            }
          }
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}