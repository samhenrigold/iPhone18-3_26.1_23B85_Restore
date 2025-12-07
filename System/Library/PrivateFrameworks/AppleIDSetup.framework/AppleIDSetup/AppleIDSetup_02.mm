uint64_t _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v27 = *(a1 + 32);
    sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
    v11 = v6;
    v12 = v2;
    v13 = sub_24075A6D4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v27 = *(a1 + 32);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7188, 0x277CF02D8);
    v14 = v7;
    v15 = v3;
    v16 = sub_24075A6D4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7180, 0x277CCAA40);
    v17 = v9;
    v18 = v5;
    v19 = sub_24075A6D4();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
    v20 = v8;
    v21 = v4;
    v22 = sub_24075A6D4();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v27)
  {
    if (v10)
    {
      sub_240590794(0, &unk_27E4B8900, 0x277CBEAC0);
      v23 = v10;
      v24 = v27;
      v25 = sub_24075A6D4();

      if (v25)
      {
        return 1;
      }
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV14NativeRecoveryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
    v10 = v6;
    v11 = v2;
    v12 = sub_24075A6D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7190, 0x277CF0140);
    v13 = v7;
    v14 = v3;
    v15 = sub_24075A6D4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
    v16 = v9;
    v17 = v5;
    v18 = sub_24075A6D4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      sub_240590794(0, &unk_27E4B8900, 0x277CBEAC0);
      v19 = v8;
      v20 = v4;
      v21 = sub_24075A6D4();

      if (v21)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV13FidoChallengeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
    v10 = v6;
    v11 = v2;
    v12 = sub_24075A6D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B71A0, 0x277CF0240);
    v13 = v7;
    v14 = v3;
    v15 = sub_24075A6D4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7198, 0x277CF0230);
    v16 = v9;
    v17 = v5;
    v18 = sub_24075A6D4();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v19 = v8;
      v20 = v4;
      v21 = sub_24075A6D4();

      if (v21)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV9KeepUsingV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
    v10 = v7;
    v11 = v3;
    v12 = sub_24075A6D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v13 = v2 == v6 && v4 == v8;
    if (!v13 && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || ((v9 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s12AppleIDSetup19AuthenticationModelV5AlertV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v44 = a1[6];
  v45 = a1[7];
  v46 = a1[8];
  v47 = a1[9];
  v51 = *(a1 + 80);
  v42 = *(a1 + 81);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v48 = *(a2 + 56);
  v49 = *(a2 + 64);
  v50 = *(a2 + 72);
  v11 = *(a2 + 80);
  v40 = *(a2 + 81);
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 80);
    v15 = *(a2 + 48);
    v16 = sub_24075ACF4();
    v10 = v15;
    v11 = v14;
    v8 = v13;
    v9 = v12;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 != v6 || v4 != v7)
  {
    v17 = v10;
    v18 = sub_24075ACF4();
    v10 = v17;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v51 != 255)
  {
    v59 = v3;
    v60 = v5;
    v19 = v44;
    v20 = v45;
    v61 = v44;
    v62 = v45;
    v22 = v46;
    v21 = v47;
    v63 = v46;
    v64 = v47;
    v65 = v51;
    v39 = v8;
    if (v11 != 255)
    {
      v52 = v9;
      v53 = v8;
      v54 = v10;
      v55 = v48;
      v56 = v49;
      v57 = v50;
      v58 = v11;
      v37 = v3;
      v23 = v3;
      v24 = v10;
      sub_2405B02E8(v23, v5, v44, v45, v46, v47, v51);
      sub_2405B02E8(v9, v8, v24, v48, v49, v50, v11);
      sub_2405B02E8(v37, v5, v44, v45, v46, v47, v51);
      v25 = static SetupError.== infix(_:_:)(&v59, &v52);
      sub_2405AEA70(v52, v53, v54, v55, v56, v57, v58);
      sub_2405AEA70(v59, v60, v61, v62, v63, v64, v65);
      sub_2405AEA5C(v37, v5, v44, v45, v46, v47, v51);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      return v42 ^ v40 ^ 1u;
    }

    v32 = v51;
    v33 = v10;
    v43 = -1;
    sub_2405B02E8(v3, v5, v44, v45, v46, v47, v51);
    v34 = v9;
    v35 = v8;
    v38 = v33;
    v36 = v33;
    v29 = v48;
    v41 = v9;
    v31 = v49;
    v30 = v50;
    sub_2405B02E8(v34, v35, v36, v48, v49, v50, 0xFFu);
    sub_2405B02E8(v3, v5, v44, v45, v46, v47, v51);
    sub_2405AEA70(v3, v5, v44, v45, v46, v47, v51);
LABEL_14:
    sub_2405AEA5C(v3, v5, v19, v20, v22, v21, v32);
    sub_2405AEA5C(v41, v39, v38, v29, v31, v30, v43);
    return 0;
  }

  v38 = v10;
  v19 = v44;
  v20 = v45;
  v22 = v46;
  v21 = v47;
  sub_2405B02E8(v3, v5, v44, v45, v46, v47, 0xFFu);
  if (v11 != 255)
  {
    v27 = v9;
    v28 = v8;
    v29 = v48;
    v39 = v8;
    v41 = v9;
    v31 = v49;
    v30 = v50;
    sub_2405B02E8(v27, v28, v38, v48, v49, v50, v11);
    v43 = v11;
    v32 = -1;
    goto LABEL_14;
  }

  sub_2405B02E8(v9, v8, v38, v48, v49, v50, 0xFFu);
  sub_2405AEA5C(v3, v5, v44, v45, v46, v47, 0xFFu);
  return v42 ^ v40 ^ 1u;
}

BOOL _s12AppleIDSetup19AuthenticationModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71A8, &unk_240762410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = *(v12 + 56);
  sub_2405B044C(a1, &v26 - v13, &qword_27E4B6418, &unk_24075D910);
  sub_2405B044C(a2, &v14[v15], &qword_27E4B6418, &unk_24075D910);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2405B044C(v14, v10, &qword_27E4B6418, &unk_24075D910);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2405AE39C(&v14[v15], v7, type metadata accessor for IdMSAccount);
      v17 = _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_240593D7C(v7, type metadata accessor for IdMSAccount);
      sub_240593D7C(v10, type metadata accessor for IdMSAccount);
      sub_2405B8A50(v14, &qword_27E4B6418, &unk_24075D910);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_240593D7C(v10, type metadata accessor for IdMSAccount);
LABEL_6:
    sub_2405B8A50(v14, &qword_27E4B71A8, &unk_240762410);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2405B8A50(v14, &qword_27E4B6418, &unk_24075D910);
LABEL_8:
  v18 = type metadata accessor for AuthenticationModel(0);
  if (*(a1 + *(v18 + 24)) != *(a2 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = v18;
  if ((static AuthenticationModel.State.== infix(_:_:)((a1 + *(v18 + 40)), a2 + *(v18 + 40)) & 1) == 0)
  {
    return 0;
  }

  v20 = v19[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  return *(a1 + v19[9]) == *(a2 + v19[9]) && (sub_2406E44F0(*(a1 + v19[8]), *(a2 + v19[8])) & 1) != 0;
}

uint64_t sub_2405AE26C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2405AE39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2405AE404()
{
  result = qword_27E4B6530;
  if (!qword_27E4B6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6530);
  }

  return result;
}

unint64_t sub_2405AE458()
{
  result = qword_27E4B6538;
  if (!qword_27E4B6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6538);
  }

  return result;
}

unint64_t sub_2405AE4AC()
{
  result = qword_27E4B6540;
  if (!qword_27E4B6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6540);
  }

  return result;
}

unint64_t sub_2405AE500()
{
  result = qword_27E4B6548;
  if (!qword_27E4B6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6548);
  }

  return result;
}

unint64_t sub_2405AE554()
{
  result = qword_27E4B6550;
  if (!qword_27E4B6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6550);
  }

  return result;
}

unint64_t sub_2405AE5A8()
{
  result = qword_27E4B6558;
  if (!qword_27E4B6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6558);
  }

  return result;
}

unint64_t sub_2405AE5FC()
{
  result = qword_27E4B6560;
  if (!qword_27E4B6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6560);
  }

  return result;
}

unint64_t sub_2405AE650()
{
  result = qword_27E4B6568;
  if (!qword_27E4B6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6568);
  }

  return result;
}

unint64_t sub_2405AE6A4()
{
  result = qword_27E4B6570;
  if (!qword_27E4B6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6570);
  }

  return result;
}

unint64_t sub_2405AE6F8()
{
  result = qword_27E4B6578;
  if (!qword_27E4B6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6578);
  }

  return result;
}

unint64_t sub_2405AE74C()
{
  result = qword_27E4B6580;
  if (!qword_27E4B6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6580);
  }

  return result;
}

unint64_t sub_2405AE7A0()
{
  result = qword_27E4B6588;
  if (!qword_27E4B6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6588);
  }

  return result;
}

unint64_t sub_2405AE7F4()
{
  result = qword_27E4B6590;
  if (!qword_27E4B6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6590);
  }

  return result;
}

unint64_t sub_2405AE848()
{
  result = qword_27E4B6598;
  if (!qword_27E4B6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6598);
  }

  return result;
}

unint64_t sub_2405AE89C()
{
  result = qword_27E4B65A0;
  if (!qword_27E4B65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B65A0);
  }

  return result;
}

uint64_t sub_2405AE8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_2405AE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2405AEA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_2405AEA70(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_2405AEA70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
    if (a7)
    {
      if (a7 == 1)
      {
LABEL_11:
      }

      if (a7 != 2)
      {
        return v7;
      }
    }

    goto LABEL_11;
  }

  if (a7 != 3)
  {
    if (a7 != 4 && a7 != 5)
    {
      return v7;
    }

    goto LABEL_11;
  }
}

uint64_t _s12AppleIDSetup19AuthenticationModelV13BindableStateV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v227 = v2;
    v228 = v3;
    v6 = type metadata accessor for AuthenticationModel.BindableState(0);
    v7 = v6[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&a1[v7], &a2[v7]) & 1) == 0)
    {
      goto LABEL_4;
    }

    v10 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
    if (v8[*(v10 + 20)] != v9[*(v10 + 20)])
    {
      goto LABEL_4;
    }

    v13 = *(v10 + 24);
    v14 = *&v8[v13];
    v15 = *&v9[v13];
    if (v14)
    {
      if (!v15)
      {
        goto LABEL_4;
      }

      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v16 = v15;
      v17 = v14;
      v18 = sub_24075A6D4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v15)
    {
      goto LABEL_4;
    }

    v19 = &a1[v6[6]];
    v20 = *(v19 + 2);
    v219[3] = *(v19 + 3);
    v21 = *(v19 + 3);
    v219[4] = *(v19 + 4);
    v22 = *(v19 + 4);
    v219[5] = *(v19 + 5);
    v220 = v19[96];
    v23 = *(v19 + 1);
    v219[0] = *v19;
    v24 = *v19;
    v25 = *(v19 + 1);
    v219[1] = v23;
    v219[2] = *(v19 + 2);
    v215 = v21;
    v216 = v22;
    v217 = *(v19 + 5);
    v218 = v19[96];
    v213 = v25;
    v214 = v20;
    v212 = v24;
    v26 = &a2[v6[6]];
    v27 = *(v26 + 2);
    v221[3] = *(v26 + 3);
    v28 = *(v26 + 3);
    v221[4] = *(v26 + 4);
    v29 = *(v26 + 4);
    v221[5] = *(v26 + 5);
    v30 = *v26;
    v221[1] = *(v26 + 1);
    v31 = *(v26 + 1);
    v221[2] = *(v26 + 2);
    v221[0] = *v26;
    v208 = v28;
    v209 = v29;
    v210 = *(v26 + 5);
    v205 = v30;
    v206 = v31;
    v222 = v26[96];
    v211 = v26[96];
    v207 = v27;
    sub_2405AE958(v219, v203);
    sub_2405AE958(v221, v203);
    v32 = _s12AppleIDSetup19AuthenticationModelV10BasicLoginV2eeoiySbAE_AEtFZ_0(&v212, &v205);
    v223[3] = v208;
    v223[4] = v209;
    v223[5] = v210;
    v224 = v211;
    v223[0] = v205;
    v223[1] = v206;
    v223[2] = v207;
    sub_2405AE36C(v223);
    v225[3] = v215;
    v225[4] = v216;
    v225[5] = v217;
    v226 = v218;
    v225[0] = v212;
    v225[1] = v213;
    v225[2] = v214;
    sub_2405AE36C(v225);
    if (!v32)
    {
      goto LABEL_4;
    }

    v33 = &a1[v6[7]];
    v34 = *(v33 + 1);
    v35 = *(v33 + 3);
    v195 = *(v33 + 2);
    v196 = v35;
    v36 = *(v33 + 3);
    v197 = *(v33 + 4);
    v37 = *(v33 + 1);
    v194[0] = *v33;
    v194[1] = v37;
    v213 = v34;
    v214 = v195;
    v215 = v36;
    v216 = *(v33 + 4);
    v212 = v194[0];
    v38 = &a2[v6[7]];
    v39 = *(v38 + 4);
    v40 = *(v38 + 1);
    v41 = *(v38 + 2);
    v199 = *(v38 + 3);
    v200 = v39;
    v42 = *v38;
    v43 = *v38;
    v198[1] = *(v38 + 1);
    v198[2] = v41;
    v198[0] = v42;
    v206 = v40;
    v207 = v41;
    v208 = v199;
    v209 = *(v38 + 4);
    v205 = v43;
    sub_2405AE9EC(v194, v203);
    sub_2405AE9EC(v198, v203);
    v44 = sub_2405AD0D8(&v212, &v205);
    v201[2] = v207;
    v201[3] = v208;
    v201[4] = v209;
    v201[0] = v205;
    v201[1] = v206;
    sub_2405AE30C(v201);
    v202[2] = v214;
    v202[3] = v215;
    v202[4] = v216;
    v202[0] = v212;
    v202[1] = v213;
    sub_2405AE30C(v202);
    if (!v44)
    {
      goto LABEL_4;
    }

    v45 = &a1[v6[8]];
    v46 = *(v45 + 3);
    v47 = *(v45 + 1);
    v185 = *(v45 + 2);
    v186 = v46;
    v48 = *(v45 + 3);
    v187 = *(v45 + 4);
    v49 = *(v45 + 1);
    v184[0] = *v45;
    v184[1] = v49;
    v214 = v185;
    v215 = v48;
    v216 = *(v45 + 4);
    v213 = v47;
    v212 = v184[0];
    v50 = &a2[v6[8]];
    v51 = *(v50 + 1);
    v52 = *(v50 + 3);
    v189 = *(v50 + 2);
    v190 = v52;
    v53 = *(v50 + 3);
    v191 = *(v50 + 4);
    v54 = *(v50 + 1);
    v188[0] = *v50;
    v188[1] = v54;
    v206 = v51;
    v207 = v189;
    v208 = v53;
    v209 = *(v50 + 4);
    v205 = v188[0];
    sub_2405AEA24(v184, v203);
    sub_2405AEA24(v188, v203);
    v55 = sub_2405AD0D8(&v212, &v205);
    v192[2] = v207;
    v192[3] = v208;
    v192[4] = v209;
    v192[0] = v205;
    v192[1] = v206;
    sub_2405AE33C(v192);
    v193[2] = v214;
    v193[3] = v215;
    v193[4] = v216;
    v193[0] = v212;
    v193[1] = v213;
    sub_2405AE33C(v193);
    if (!v55)
    {
      goto LABEL_4;
    }

    v56 = &a1[v6[9]];
    v58 = *(v56 + 1);
    v59 = *(v56 + 2);
    v60 = *(v56 + 3);
    v159 = *(v56 + 4);
    *&v212 = *v56;
    v57 = v212;
    *(&v212 + 1) = v58;
    *&v213 = v59;
    *(&v213 + 1) = v60;
    *&v214 = v159;
    v61 = &a2[v6[9]];
    v63 = *v61;
    v62 = *(v61 + 1);
    v161 = *(v61 + 1);
    v64 = *(v61 + 4);
    *&v205 = v63;
    *(&v205 + 1) = v62;
    v206 = v161;
    *&v207 = v64;
    v65 = v64;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v69 = v60;
    v70 = v159;
    v71 = v63;
    v72 = v62;
    v73 = v161;
    v74 = *(&v161 + 1);
    LOBYTE(v57) = _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(&v212, &v205);
    v75 = *(&v205 + 1);
    v76 = v206;
    v77 = v207;

    v78 = *(&v212 + 1);
    v79 = v213;
    v80 = v214;

    if ((v57 & 1) == 0)
    {
      goto LABEL_4;
    }

    v81 = v6[10];
    v83 = *&a1[v81 + 8];
    v84 = *&a1[v81 + 16];
    v85 = *&a1[v81 + 24];
    *&v212 = *&a1[v81];
    v82 = v212;
    *(&v212 + 1) = v83;
    *&v213 = v84;
    *(&v213 + 1) = v85;
    v86 = &a2[v81];
    v87 = *v86;
    v88 = *(v86 + 1);
    v90 = *(v86 + 2);
    v89 = *(v86 + 3);
    v163 = v90;
    *&v205 = v87;
    *(&v205 + 1) = v88;
    *&v206 = v90;
    *(&v206 + 1) = v89;
    v91 = v89;
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v95 = v85;
    v96 = v87;
    v97 = v88;
    v98 = v163;
    LOBYTE(v82) = _s12AppleIDSetup19AuthenticationModelV14NativeRecoveryV2eeoiySbAE_AEtFZ_0(&v212, &v205);
    v99 = *(&v205 + 1);
    v100 = v206;

    v101 = *(&v212 + 1);
    v102 = v213;

    if ((v82 & 1) == 0)
    {
      goto LABEL_4;
    }

    v103 = v6[11];
    v105 = *&a1[v103 + 8];
    v106 = *&a1[v103 + 16];
    v107 = *&a1[v103 + 24];
    *&v212 = *&a1[v103];
    v104 = v212;
    *(&v212 + 1) = v105;
    *&v213 = v106;
    *(&v213 + 1) = v107;
    v108 = &a2[v103];
    v109 = *v108;
    v110 = *(v108 + 1);
    v112 = *(v108 + 2);
    v111 = *(v108 + 3);
    v164 = v112;
    *&v205 = v109;
    *(&v205 + 1) = v110;
    *&v206 = v112;
    *(&v206 + 1) = v111;
    v113 = v111;
    v114 = v104;
    v115 = v105;
    v116 = v106;
    v117 = v107;
    v118 = v109;
    v119 = v110;
    v120 = v164;
    LOBYTE(v104) = _s12AppleIDSetup19AuthenticationModelV13FidoChallengeV2eeoiySbAE_AEtFZ_0(&v212, &v205);
    v121 = *(&v205 + 1);
    v122 = v206;

    v123 = *(&v212 + 1);
    v124 = v213;

    if ((v104 & 1) == 0)
    {
      goto LABEL_4;
    }

    v125 = v6[12];
    v127 = *&a1[v125];
    v126 = *&a1[v125 + 8];
    v128 = *&a1[v125 + 16];
    v129 = a1[v125 + 24];
    v130 = &a2[v125];
    v132 = *v130;
    v131 = *(v130 + 1);
    v133 = *(v130 + 2);
    v134 = v130[24];
    if (v127)
    {
      if (!v132)
      {
        goto LABEL_4;
      }

      v157 = v131;
      v158 = v126;
      v162 = v134;
      v165 = v129;
      sub_240590794(0, &qword_27E4B7178, 0x277CF0170);
      v160 = v127;
      v135 = v127;

      v136 = v132;

      v137 = v136;
      v138 = v135;
      v139 = sub_24075A6D4();

      if ((v139 & 1) == 0)
      {

        goto LABEL_4;
      }
    }

    else
    {
      if (v132)
      {
        goto LABEL_4;
      }

      v157 = v131;
      v158 = v126;
      v160 = 0;
      v162 = v134;
      v165 = v129;
    }

    if (v158 == v157 && v128 == v133)
    {

      v140 = v165;
      v141 = v162;
    }

    else
    {
      v142 = sub_24075ACF4();

      v140 = v165;
      v141 = v162;
      if ((v142 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v140 == 2)
    {
      if (v141 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v141 == 2 || ((v141 ^ v140) & 1) != 0)
    {
      goto LABEL_4;
    }

    v143 = &a1[v6[13]];
    v144 = *(v143 + 3);
    v145 = *(v143 + 1);
    v180 = *(v143 + 2);
    v181 = v144;
    v146 = *(v143 + 3);
    v182 = *(v143 + 4);
    v183 = *(v143 + 40);
    v147 = *(v143 + 1);
    v179[0] = *v143;
    v179[1] = v147;
    v148 = *(v143 + 4);
    v176 = v146;
    v177 = v148;
    v178 = *(v143 + 40);
    v174 = v145;
    v175 = v180;
    v173 = v179[0];
    v149 = &a2[v6[13]];
    v150 = *(v149 + 3);
    v151 = *(v149 + 4);
    v152 = *(v149 + 1);
    v153 = v152;
    v203[0] = *v149;
    v203[1] = v152;
    v154 = *(v149 + 2);
    v203[3] = *(v149 + 3);
    v203[4] = v151;
    v203[2] = v154;
    v168 = v153;
    v169 = v154;
    v155 = *(v149 + 4);
    v170 = v150;
    v171 = v155;
    v204 = *(v149 + 40);
    v172 = *(v149 + 40);
    v167 = v203[0];
    sub_2405AE2A4(v179, v166);
    sub_2405AE2A4(v203, v166);
    v156 = _s12AppleIDSetup19AuthenticationModelV5AlertV2eeoiySbAE_AEtFZ_0(&v173, &v167);
    v207 = v169;
    v208 = v170;
    v209 = v171;
    LOWORD(v210) = v172;
    v205 = v167;
    v206 = v168;
    sub_2405AE2DC(&v205);
    v214 = v175;
    v215 = v176;
    v216 = v177;
    LOWORD(v217) = v178;
    v212 = v173;
    v213 = v174;
    sub_2405AE2DC(&v212);
    if ((v156 & 1) != 0 && a1[v6[14]] == a2[v6[14]])
    {
      v11 = a1[v6[15]] ^ a2[v6[15]] ^ 1;
      return v11 & 1;
    }

LABEL_4:
    v11 = 0;
    return v11 & 1;
  }

  return 0;
}

BOOL _s12AppleIDSetup19AuthenticationModelV15PreflightRepairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (v8)
    {
      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v9 = v8;
      v10 = v7;
      v11 = sub_24075A6D4();

      if (v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v8;
}

unint64_t sub_2405AF590()
{
  result = qword_27E4B6630;
  if (!qword_27E4B6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6630);
  }

  return result;
}

unint64_t sub_2405AF5E4()
{
  result = qword_27E4B6638;
  if (!qword_27E4B6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6638);
  }

  return result;
}

unint64_t sub_2405AF638()
{
  result = qword_27E4B6648;
  if (!qword_27E4B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6648);
  }

  return result;
}

unint64_t sub_2405AF68C()
{
  result = qword_27E4B6650;
  if (!qword_27E4B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6650);
  }

  return result;
}

unint64_t sub_2405AF6E0()
{
  result = qword_27E4B6658;
  if (!qword_27E4B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6658);
  }

  return result;
}

unint64_t sub_2405AF734()
{
  result = qword_27E4B6660;
  if (!qword_27E4B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6660);
  }

  return result;
}

unint64_t sub_2405AF788()
{
  result = qword_27E4B6668;
  if (!qword_27E4B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6668);
  }

  return result;
}

unint64_t sub_2405AF7DC()
{
  result = qword_27E4B6670;
  if (!qword_27E4B6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6670);
  }

  return result;
}

unint64_t sub_2405AF830()
{
  result = qword_27E4B6678;
  if (!qword_27E4B6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6678);
  }

  return result;
}

unint64_t sub_2405AF884()
{
  result = qword_27E4B6680;
  if (!qword_27E4B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6680);
  }

  return result;
}

uint64_t sub_2405AF8D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
    if (a7)
    {
      if (a7 != 1)
      {
        if (a7 != 2)
        {
          return v7;
        }
      }
    }

    else
    {
    }

LABEL_11:
  }

  if (a7 != 3)
  {
    if (a7 != 4 && a7 != 5)
    {
      return v7;
    }

    goto LABEL_11;
  }
}

double sub_2405AF9F8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x8000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return result;
}

void sub_2405AFA1C(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_2405AFA60()
{
  result = qword_27E4B6698;
  if (!qword_27E4B6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6698);
  }

  return result;
}

unint64_t sub_2405AFAB4()
{
  result = qword_27E4B66A8;
  if (!qword_27E4B66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66A8);
  }

  return result;
}

unint64_t sub_2405AFB08()
{
  result = qword_27E4B66B0;
  if (!qword_27E4B66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66B0);
  }

  return result;
}

unint64_t sub_2405AFB5C()
{
  result = qword_27E4B66B8;
  if (!qword_27E4B66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66B8);
  }

  return result;
}

unint64_t sub_2405AFBB0()
{
  result = qword_27E4B66C0;
  if (!qword_27E4B66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66C0);
  }

  return result;
}

unint64_t sub_2405AFC04()
{
  result = qword_27E4B66C8;
  if (!qword_27E4B66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66C8);
  }

  return result;
}

unint64_t sub_2405AFC58()
{
  result = qword_27E4B66D0;
  if (!qword_27E4B66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66D0);
  }

  return result;
}

unint64_t sub_2405AFCAC()
{
  result = qword_27E4B66D8;
  if (!qword_27E4B66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66D8);
  }

  return result;
}

unint64_t sub_2405AFD00()
{
  result = qword_27E4B66E0;
  if (!qword_27E4B66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B66E0);
  }

  return result;
}

unint64_t sub_2405AFD54()
{
  result = qword_27E4B6770;
  if (!qword_27E4B6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6770);
  }

  return result;
}

unint64_t sub_2405AFDA8()
{
  result = qword_27E4B6778;
  if (!qword_27E4B6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6778);
  }

  return result;
}

unint64_t sub_2405AFDFC()
{
  result = qword_27E4B6780;
  if (!qword_27E4B6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6780);
  }

  return result;
}

unint64_t sub_2405AFE50()
{
  result = qword_27E4B6788;
  if (!qword_27E4B6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6788);
  }

  return result;
}

unint64_t sub_2405AFEA4()
{
  result = qword_27E4B6790;
  if (!qword_27E4B6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6790);
  }

  return result;
}

unint64_t sub_2405AFEF8()
{
  result = qword_27E4B6798;
  if (!qword_27E4B6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6798);
  }

  return result;
}

unint64_t sub_2405AFF4C()
{
  result = qword_27E4B67A0;
  if (!qword_27E4B67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67A0);
  }

  return result;
}

unint64_t sub_2405AFFA0()
{
  result = qword_27E4B67A8;
  if (!qword_27E4B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67A8);
  }

  return result;
}

unint64_t sub_2405AFFF4()
{
  result = qword_27E4B67B0;
  if (!qword_27E4B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67B0);
  }

  return result;
}

unint64_t sub_2405B0048()
{
  result = qword_27E4B67B8;
  if (!qword_27E4B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67B8);
  }

  return result;
}

unint64_t sub_2405B009C()
{
  result = qword_27E4B67C0;
  if (!qword_27E4B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67C0);
  }

  return result;
}

unint64_t sub_2405B00F0()
{
  result = qword_27E4B67C8;
  if (!qword_27E4B67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67C8);
  }

  return result;
}

unint64_t sub_2405B0144()
{
  result = qword_27E4B67D0;
  if (!qword_27E4B67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67D0);
  }

  return result;
}

unint64_t sub_2405B0198()
{
  result = qword_27E4B67D8;
  if (!qword_27E4B67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67D8);
  }

  return result;
}

unint64_t sub_2405B01EC()
{
  result = qword_27E4B67E0;
  if (!qword_27E4B67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67E0);
  }

  return result;
}

unint64_t sub_2405B0240()
{
  result = qword_27E4B67E8;
  if (!qword_27E4B67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67E8);
  }

  return result;
}

unint64_t sub_2405B0294()
{
  result = qword_27E4B67F0;
  if (!qword_27E4B67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B67F0);
  }

  return result;
}

uint64_t sub_2405B02E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_2405AF8D8(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

unint64_t sub_2405B02FC()
{
  result = qword_27E4B68A0;
  if (!qword_27E4B68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B68A0);
  }

  return result;
}

unint64_t sub_2405B0350()
{
  result = qword_27E4B68A8;
  if (!qword_27E4B68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B68A8);
  }

  return result;
}

unint64_t sub_2405B03A4()
{
  result = qword_27E4B68B0;
  if (!qword_27E4B68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B68B0);
  }

  return result;
}

unint64_t sub_2405B03F8()
{
  result = qword_27E4B68B8;
  if (!qword_27E4B68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B68B8);
  }

  return result;
}

uint64_t sub_2405B044C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_2405B04B4(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2405B04C8(result, a2, a3, a4, a5);
  }

  return result;
}

id sub_2405B04C8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {

    return result;
  }

  else
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return result;
      }
    }
  }
}

void sub_2405B0544(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_2405B0558(result, a2, a3, a4, a5);
  }
}

void sub_2405B0558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return;
      }
    }
  }
}

unint64_t sub_2405B05D4()
{
  result = qword_27E4B6910;
  if (!qword_27E4B6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6910);
  }

  return result;
}

unint64_t sub_2405B0628()
{
  result = qword_27E4B6918;
  if (!qword_27E4B6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6918);
  }

  return result;
}

unint64_t sub_2405B067C()
{
  result = qword_27E4B6920;
  if (!qword_27E4B6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6920);
  }

  return result;
}

unint64_t sub_2405B06D0()
{
  result = qword_27E4B6928;
  if (!qword_27E4B6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6928);
  }

  return result;
}

unint64_t sub_2405B0724()
{
  result = qword_27E4B6930;
  if (!qword_27E4B6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6930);
  }

  return result;
}

uint64_t sub_2405B0778(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_2405B07D8()
{
  result = qword_27E4B6948;
  if (!qword_27E4B6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6948);
  }

  return result;
}

unint64_t sub_2405B082C()
{
  result = qword_27E4B6980;
  if (!qword_27E4B6980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6938, &qword_24075DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6980);
  }

  return result;
}

unint64_t sub_2405B08A8()
{
  result = qword_27E4B6998;
  if (!qword_27E4B6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6998);
  }

  return result;
}

unint64_t sub_2405B08FC()
{
  result = qword_27E4B69B0;
  if (!qword_27E4B69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B69B0);
  }

  return result;
}

unint64_t sub_2405B0950()
{
  result = qword_27E4B69C8;
  if (!qword_27E4B69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B69C8);
  }

  return result;
}

void sub_2405B09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    v6 = a5;
  }
}

unint64_t sub_2405B09F4()
{
  result = qword_27E4B69D8;
  if (!qword_27E4B69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B69D8);
  }

  return result;
}

unint64_t sub_2405B0A48()
{
  result = qword_27E4B69E0;
  if (!qword_27E4B69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B69E0);
  }

  return result;
}

unint64_t sub_2405B0A9C()
{
  result = qword_27E4B69F0;
  if (!qword_27E4B69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B69F0);
  }

  return result;
}

unint64_t sub_2405B0AF0()
{
  result = qword_27E4B6A00;
  if (!qword_27E4B6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6A00);
  }

  return result;
}

unint64_t sub_2405B0B44()
{
  result = qword_27E4B6A18;
  if (!qword_27E4B6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6A18);
  }

  return result;
}

unint64_t sub_2405B0B98()
{
  result = qword_27E4B6A30;
  if (!qword_27E4B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6A30);
  }

  return result;
}

unint64_t sub_2405B0BEC()
{
  result = qword_27E4B6A90;
  if (!qword_27E4B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6A90);
  }

  return result;
}

unint64_t sub_2405B0C40()
{
  result = qword_27E4B6AC0;
  if (!qword_27E4B6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6AC0);
  }

  return result;
}

unint64_t sub_2405B0C94()
{
  result = qword_27E4B6B08;
  if (!qword_27E4B6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B08);
  }

  return result;
}

unint64_t sub_2405B0CE8()
{
  result = qword_27E4B6B20;
  if (!qword_27E4B6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B20);
  }

  return result;
}

unint64_t sub_2405B0D3C()
{
  result = qword_27E4B6B38;
  if (!qword_27E4B6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B38);
  }

  return result;
}

unint64_t sub_2405B0D90()
{
  result = qword_27E4B6B40;
  if (!qword_27E4B6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B40);
  }

  return result;
}

unint64_t sub_2405B0DE4()
{
  result = qword_27E4B6B50;
  if (!qword_27E4B6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B50);
  }

  return result;
}

unint64_t sub_2405B0E38()
{
  result = qword_27E4B6B60;
  if (!qword_27E4B6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B60);
  }

  return result;
}

uint64_t sub_2405B0EB8(void *a1)
{
  a1[1] = sub_240594D3C(&qword_27E4B6B70, type metadata accessor for AuthenticationModel, &protocol conformance descriptor for AuthenticationModel);
  a1[2] = sub_240594D3C(&qword_27E4B6B78, type metadata accessor for AuthenticationModel, &protocol conformance descriptor for AuthenticationModel);
  result = sub_240594D3C(&qword_27E4B6B80, type metadata accessor for AuthenticationModel, &protocol conformance descriptor for AuthenticationModel);
  a1[3] = result;
  return result;
}

unint64_t sub_2405B0FB0()
{
  result = qword_27E4B6B90;
  if (!qword_27E4B6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B90);
  }

  return result;
}

unint64_t sub_2405B1044()
{
  result = qword_27E4B6B98;
  if (!qword_27E4B6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6B98);
  }

  return result;
}

uint64_t sub_2405B1098(void *a1)
{
  a1[1] = sub_240594D3C(&qword_27E4B6BA0, type metadata accessor for AuthenticationModel.BindableState, "=íA");
  a1[2] = sub_240594D3C(&qword_27E4B6BA8, type metadata accessor for AuthenticationModel.BindableState, &protocol conformance descriptor for AuthenticationModel.BindableState);
  result = sub_240594D3C(&qword_27E4B6BB0, type metadata accessor for AuthenticationModel.BindableState, &protocol conformance descriptor for AuthenticationModel.BindableState);
  a1[3] = result;
  return result;
}

uint64_t sub_2405B118C(void *a1)
{
  a1[1] = sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
  a1[2] = sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
  result = sub_240594D3C(&qword_27E4B6BC0, type metadata accessor for AuthenticationModel.State, &protocol conformance descriptor for AuthenticationModel.State);
  a1[3] = result;
  return result;
}

unint64_t sub_2405B1284()
{
  result = qword_27E4B6BD0;
  if (!qword_27E4B6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BD0);
  }

  return result;
}

unint64_t sub_2405B1318()
{
  result = qword_27E4B6BD8;
  if (!qword_27E4B6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BD8);
  }

  return result;
}

unint64_t sub_2405B13AC()
{
  result = qword_27E4B6BE0;
  if (!qword_27E4B6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BE0);
  }

  return result;
}

unint64_t sub_2405B1404()
{
  result = qword_27E4B6BE8;
  if (!qword_27E4B6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BE8);
  }

  return result;
}

unint64_t sub_2405B1498()
{
  result = qword_27E4B6BF0;
  if (!qword_27E4B6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BF0);
  }

  return result;
}

unint64_t sub_2405B14F0()
{
  result = qword_27E4B6BF8;
  if (!qword_27E4B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6BF8);
  }

  return result;
}

unint64_t sub_2405B1584()
{
  result = qword_27E4B6C00;
  if (!qword_27E4B6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C00);
  }

  return result;
}

unint64_t sub_2405B15DC()
{
  result = qword_27E4B6C08;
  if (!qword_27E4B6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C08);
  }

  return result;
}

unint64_t sub_2405B1670()
{
  result = qword_27E4B6C10;
  if (!qword_27E4B6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C10);
  }

  return result;
}

unint64_t sub_2405B16C8()
{
  result = qword_27E4B6C18;
  if (!qword_27E4B6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C18);
  }

  return result;
}

unint64_t sub_2405B175C()
{
  result = qword_27E4B6C20;
  if (!qword_27E4B6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C20);
  }

  return result;
}

unint64_t sub_2405B17B4()
{
  result = qword_27E4B6C28;
  if (!qword_27E4B6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C28);
  }

  return result;
}

unint64_t sub_2405B1848()
{
  result = qword_27E4B6C30;
  if (!qword_27E4B6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C30);
  }

  return result;
}

unint64_t sub_2405B18A0()
{
  result = qword_27E4B6C38;
  if (!qword_27E4B6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C38);
  }

  return result;
}

unint64_t sub_2405B1934()
{
  result = qword_27E4B6C40;
  if (!qword_27E4B6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C40);
  }

  return result;
}

unint64_t sub_2405B198C()
{
  result = qword_27E4B6C48;
  if (!qword_27E4B6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C48);
  }

  return result;
}

unint64_t sub_2405B1A20()
{
  result = qword_27E4B6C50;
  if (!qword_27E4B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C50);
  }

  return result;
}

unint64_t sub_2405B1A78()
{
  result = qword_27E4B6C58;
  if (!qword_27E4B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C58);
  }

  return result;
}

unint64_t sub_2405B1B0C()
{
  result = qword_27E4B6C60;
  if (!qword_27E4B6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C60);
  }

  return result;
}

unint64_t sub_2405B1B64()
{
  result = qword_27E4B6C68;
  if (!qword_27E4B6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C68);
  }

  return result;
}

uint64_t sub_2405B1BB8(void *a1)
{
  a1[1] = sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
  a1[2] = sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
  result = sub_240594D3C(&qword_27E4B6C70, type metadata accessor for AuthenticationModel.PreflightRepair, &protocol conformance descriptor for AuthenticationModel.PreflightRepair);
  a1[3] = result;
  return result;
}

uint64_t sub_2405B1CEC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2405B1D40()
{
  result = qword_27E4B6C80;
  if (!qword_27E4B6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C80);
  }

  return result;
}

unint64_t sub_2405B1D98()
{
  result = qword_27E4B6C88;
  if (!qword_27E4B6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6C88);
  }

  return result;
}

void sub_2405B1E14(uint64_t a1)
{
  sub_2405B1FD4(319, &qword_27E4B6CA0, type metadata accessor for IdMSAccount, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2405B1F88(319, &qword_27E4B6CA8, &type metadata for IdMSAccount.ID);
    if (v2 <= 0x3F)
    {
      sub_2405B1F88(319, &qword_27E4B6CB0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2405B1FD4(319, &qword_27E4B6CB8, type metadata accessor for AIDAServiceType, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AuthenticationModel.State(319);
          if (v5 <= 0x3F)
          {
            sub_2405B2038(319);
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

void sub_2405B1F88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24075A714();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2405B1FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2405B2038(uint64_t a1)
{
  if (!qword_27E4B6CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6CC8, &qword_24075EC18);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B6CC0);
    }
  }
}

uint64_t sub_2405B20C4(uint64_t a1)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2405B2208(uint64_t a1)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup19AuthenticationModelV10BasicLoginV10SubmissionO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup19AuthenticationModelV10BasicLoginV10SubmissionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2405B2330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2405B2378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2405B23F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2405B2440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2405B2488(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup19AuthenticationModelV9ErrorInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_2405B2504(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2405B2560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t sub_2405B25EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2405B2648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2405B26B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2405B2710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2405B2798(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2405B27F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2405B286C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2405B28B4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_2405B2930(uint64_t a1)
{
  type metadata accessor for IdMSAccount(319);
  if (v1 <= 0x3F)
  {
    sub_2405B29BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2405B29BC(uint64_t a1)
{
  if (!qword_27E4B6D00)
  {
    v2 = sub_240590794(255, &qword_27E4B63F0, 0x277CCA9B8);
    v5 = type metadata accessor for _objcCodable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27E4B6D00);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10SetupErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 5)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10SetupErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2405B2A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_2405B2AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationModel.BasicLogin.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthenticationModel.BasicLogin.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AISAppleIDSetupError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AISAppleIDSetupError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AgeMigrationError.GenericCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _AgeMigrationError.GenericCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AuthenticationModel.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationModel.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepairError.NestedCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RepairError.NestedCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ShieldPresenterError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ShieldPresenterError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationModel.BindableState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationModel.BindableState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscoveryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2405B3964()
{
  result = qword_27E4B6D08;
  if (!qword_27E4B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D08);
  }

  return result;
}

unint64_t sub_2405B39BC()
{
  result = qword_27E4B6D10;
  if (!qword_27E4B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D10);
  }

  return result;
}

unint64_t sub_2405B3A14()
{
  result = qword_27E4B6D18;
  if (!qword_27E4B6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D18);
  }

  return result;
}

unint64_t sub_2405B3A6C()
{
  result = qword_27E4B6D20;
  if (!qword_27E4B6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D20);
  }

  return result;
}

unint64_t sub_2405B3AC4()
{
  result = qword_27E4B6D28;
  if (!qword_27E4B6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D28);
  }

  return result;
}

unint64_t sub_2405B3B1C()
{
  result = qword_27E4B6D30;
  if (!qword_27E4B6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D30);
  }

  return result;
}

unint64_t sub_2405B3B74()
{
  result = qword_27E4B6D38;
  if (!qword_27E4B6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D38);
  }

  return result;
}

unint64_t sub_2405B3BCC()
{
  result = qword_27E4B6D40;
  if (!qword_27E4B6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D40);
  }

  return result;
}

unint64_t sub_2405B3C24()
{
  result = qword_27E4B6D48;
  if (!qword_27E4B6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D48);
  }

  return result;
}

unint64_t sub_2405B3C7C()
{
  result = qword_27E4B6D50;
  if (!qword_27E4B6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D50);
  }

  return result;
}

unint64_t sub_2405B3CD4()
{
  result = qword_27E4B6D58;
  if (!qword_27E4B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D58);
  }

  return result;
}

unint64_t sub_2405B3D2C()
{
  result = qword_27E4B6D60;
  if (!qword_27E4B6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D60);
  }

  return result;
}

unint64_t sub_2405B3D84()
{
  result = qword_27E4B6D68;
  if (!qword_27E4B6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D68);
  }

  return result;
}

unint64_t sub_2405B3DDC()
{
  result = qword_27E4B6D70;
  if (!qword_27E4B6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D70);
  }

  return result;
}

unint64_t sub_2405B3E34()
{
  result = qword_27E4B6D78;
  if (!qword_27E4B6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D78);
  }

  return result;
}

unint64_t sub_2405B3E8C()
{
  result = qword_27E4B6D80;
  if (!qword_27E4B6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D80);
  }

  return result;
}

unint64_t sub_2405B3EE4()
{
  result = qword_27E4B6D88;
  if (!qword_27E4B6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D88);
  }

  return result;
}

unint64_t sub_2405B3F3C()
{
  result = qword_27E4B6D90;
  if (!qword_27E4B6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D90);
  }

  return result;
}

unint64_t sub_2405B3F94()
{
  result = qword_27E4B6D98;
  if (!qword_27E4B6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6D98);
  }

  return result;
}

unint64_t sub_2405B3FEC()
{
  result = qword_27E4B6DA0;
  if (!qword_27E4B6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DA0);
  }

  return result;
}

unint64_t sub_2405B4044()
{
  result = qword_27E4B6DA8;
  if (!qword_27E4B6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DA8);
  }

  return result;
}

unint64_t sub_2405B409C()
{
  result = qword_27E4B6DB0;
  if (!qword_27E4B6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DB0);
  }

  return result;
}

unint64_t sub_2405B40F4()
{
  result = qword_27E4B6DB8;
  if (!qword_27E4B6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DB8);
  }

  return result;
}

unint64_t sub_2405B414C()
{
  result = qword_27E4B6DC0;
  if (!qword_27E4B6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DC0);
  }

  return result;
}

unint64_t sub_2405B41A4()
{
  result = qword_27E4B6DC8;
  if (!qword_27E4B6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DC8);
  }

  return result;
}

unint64_t sub_2405B41FC()
{
  result = qword_27E4B6DD0;
  if (!qword_27E4B6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DD0);
  }

  return result;
}

unint64_t sub_2405B4254()
{
  result = qword_27E4B6DD8;
  if (!qword_27E4B6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DD8);
  }

  return result;
}

unint64_t sub_2405B42AC()
{
  result = qword_27E4B6DE0;
  if (!qword_27E4B6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DE0);
  }

  return result;
}

unint64_t sub_2405B4304()
{
  result = qword_27E4B6DE8;
  if (!qword_27E4B6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DE8);
  }

  return result;
}

unint64_t sub_2405B435C()
{
  result = qword_27E4B6DF0;
  if (!qword_27E4B6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DF0);
  }

  return result;
}

unint64_t sub_2405B43B4()
{
  result = qword_27E4B6DF8;
  if (!qword_27E4B6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6DF8);
  }

  return result;
}

unint64_t sub_2405B440C()
{
  result = qword_27E4B6E00;
  if (!qword_27E4B6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E00);
  }

  return result;
}

unint64_t sub_2405B4464()
{
  result = qword_27E4B6E08;
  if (!qword_27E4B6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E08);
  }

  return result;
}

unint64_t sub_2405B44BC()
{
  result = qword_27E4B6E10;
  if (!qword_27E4B6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E10);
  }

  return result;
}

unint64_t sub_2405B4514()
{
  result = qword_27E4B6E18;
  if (!qword_27E4B6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E18);
  }

  return result;
}

unint64_t sub_2405B456C()
{
  result = qword_27E4B6E20;
  if (!qword_27E4B6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E20);
  }

  return result;
}

unint64_t sub_2405B45C4()
{
  result = qword_27E4B6E28;
  if (!qword_27E4B6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E28);
  }

  return result;
}

unint64_t sub_2405B461C()
{
  result = qword_27E4B6E30;
  if (!qword_27E4B6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E30);
  }

  return result;
}

unint64_t sub_2405B4674()
{
  result = qword_27E4B6E38;
  if (!qword_27E4B6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E38);
  }

  return result;
}

unint64_t sub_2405B46CC()
{
  result = qword_27E4B6E40;
  if (!qword_27E4B6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E40);
  }

  return result;
}

unint64_t sub_2405B4724()
{
  result = qword_27E4B6E48;
  if (!qword_27E4B6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E48);
  }

  return result;
}

unint64_t sub_2405B477C()
{
  result = qword_27E4B6E50;
  if (!qword_27E4B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E50);
  }

  return result;
}

unint64_t sub_2405B47D4()
{
  result = qword_27E4B6E58;
  if (!qword_27E4B6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E58);
  }

  return result;
}

unint64_t sub_2405B482C()
{
  result = qword_27E4B6E60;
  if (!qword_27E4B6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E60);
  }

  return result;
}

unint64_t sub_2405B4884()
{
  result = qword_27E4B6E68;
  if (!qword_27E4B6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E68);
  }

  return result;
}

unint64_t sub_2405B48DC()
{
  result = qword_27E4B6E70;
  if (!qword_27E4B6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E70);
  }

  return result;
}

unint64_t sub_2405B4934()
{
  result = qword_27E4B6E78;
  if (!qword_27E4B6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E78);
  }

  return result;
}

unint64_t sub_2405B498C()
{
  result = qword_27E4B6E80;
  if (!qword_27E4B6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E80);
  }

  return result;
}

unint64_t sub_2405B49E4()
{
  result = qword_27E4B6E88;
  if (!qword_27E4B6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E88);
  }

  return result;
}

unint64_t sub_2405B4A3C()
{
  result = qword_27E4B6E90;
  if (!qword_27E4B6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E90);
  }

  return result;
}

unint64_t sub_2405B4A94()
{
  result = qword_27E4B6E98;
  if (!qword_27E4B6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6E98);
  }

  return result;
}

unint64_t sub_2405B4AEC()
{
  result = qword_27E4B6EA0;
  if (!qword_27E4B6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EA0);
  }

  return result;
}

unint64_t sub_2405B4B44()
{
  result = qword_27E4B6EA8;
  if (!qword_27E4B6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EA8);
  }

  return result;
}

unint64_t sub_2405B4B9C()
{
  result = qword_27E4B6EB0;
  if (!qword_27E4B6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EB0);
  }

  return result;
}

unint64_t sub_2405B4BF4()
{
  result = qword_27E4B6EB8;
  if (!qword_27E4B6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EB8);
  }

  return result;
}

unint64_t sub_2405B4C4C()
{
  result = qword_27E4B6EC0;
  if (!qword_27E4B6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EC0);
  }

  return result;
}

unint64_t sub_2405B4CA4()
{
  result = qword_27E4B6EC8;
  if (!qword_27E4B6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EC8);
  }

  return result;
}

unint64_t sub_2405B4CFC()
{
  result = qword_27E4B6ED0;
  if (!qword_27E4B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6ED0);
  }

  return result;
}

unint64_t sub_2405B4D54()
{
  result = qword_27E4B6ED8;
  if (!qword_27E4B6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6ED8);
  }

  return result;
}

unint64_t sub_2405B4DAC()
{
  result = qword_27E4B6EE0;
  if (!qword_27E4B6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EE0);
  }

  return result;
}

unint64_t sub_2405B4E04()
{
  result = qword_27E4B6EE8;
  if (!qword_27E4B6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EE8);
  }

  return result;
}

unint64_t sub_2405B4E5C()
{
  result = qword_27E4B6EF0;
  if (!qword_27E4B6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EF0);
  }

  return result;
}

unint64_t sub_2405B4EB4()
{
  result = qword_27E4B6EF8;
  if (!qword_27E4B6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6EF8);
  }

  return result;
}

unint64_t sub_2405B4F0C()
{
  result = qword_27E4B6F00;
  if (!qword_27E4B6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F00);
  }

  return result;
}

unint64_t sub_2405B4F64()
{
  result = qword_27E4B6F08;
  if (!qword_27E4B6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F08);
  }

  return result;
}

unint64_t sub_2405B4FBC()
{
  result = qword_27E4B6F10;
  if (!qword_27E4B6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F10);
  }

  return result;
}

unint64_t sub_2405B5014()
{
  result = qword_27E4B6F18;
  if (!qword_27E4B6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F18);
  }

  return result;
}

unint64_t sub_2405B506C()
{
  result = qword_27E4B6F20;
  if (!qword_27E4B6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F20);
  }

  return result;
}

unint64_t sub_2405B50C4()
{
  result = qword_27E4B6F28;
  if (!qword_27E4B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F28);
  }

  return result;
}

unint64_t sub_2405B511C()
{
  result = qword_27E4B6F30;
  if (!qword_27E4B6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F30);
  }

  return result;
}

unint64_t sub_2405B5174()
{
  result = qword_27E4B6F38;
  if (!qword_27E4B6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F38);
  }

  return result;
}

unint64_t sub_2405B51CC()
{
  result = qword_27E4B6F40;
  if (!qword_27E4B6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F40);
  }

  return result;
}

unint64_t sub_2405B5224()
{
  result = qword_27E4B6F48;
  if (!qword_27E4B6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F48);
  }

  return result;
}

unint64_t sub_2405B527C()
{
  result = qword_27E4B6F50;
  if (!qword_27E4B6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F50);
  }

  return result;
}

unint64_t sub_2405B52D4()
{
  result = qword_27E4B6F58;
  if (!qword_27E4B6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F58);
  }

  return result;
}

unint64_t sub_2405B532C()
{
  result = qword_27E4B6F60;
  if (!qword_27E4B6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F60);
  }

  return result;
}

unint64_t sub_2405B5384()
{
  result = qword_27E4B6F68;
  if (!qword_27E4B6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F68);
  }

  return result;
}

unint64_t sub_2405B53DC()
{
  result = qword_27E4B6F70;
  if (!qword_27E4B6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F70);
  }

  return result;
}

unint64_t sub_2405B5434()
{
  result = qword_27E4B6F78;
  if (!qword_27E4B6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F78);
  }

  return result;
}

unint64_t sub_2405B548C()
{
  result = qword_27E4B6F80;
  if (!qword_27E4B6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F80);
  }

  return result;
}

unint64_t sub_2405B54E4()
{
  result = qword_27E4B6F88;
  if (!qword_27E4B6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F88);
  }

  return result;
}

unint64_t sub_2405B553C()
{
  result = qword_27E4B6F90;
  if (!qword_27E4B6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F90);
  }

  return result;
}

unint64_t sub_2405B5594()
{
  result = qword_27E4B6F98;
  if (!qword_27E4B6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6F98);
  }

  return result;
}

unint64_t sub_2405B55EC()
{
  result = qword_27E4B6FA0;
  if (!qword_27E4B6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FA0);
  }

  return result;
}

unint64_t sub_2405B5644()
{
  result = qword_27E4B6FA8;
  if (!qword_27E4B6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FA8);
  }

  return result;
}

unint64_t sub_2405B569C()
{
  result = qword_27E4B6FB0;
  if (!qword_27E4B6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FB0);
  }

  return result;
}

unint64_t sub_2405B56F4()
{
  result = qword_27E4B6FB8;
  if (!qword_27E4B6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FB8);
  }

  return result;
}

unint64_t sub_2405B574C()
{
  result = qword_27E4B6FC0;
  if (!qword_27E4B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FC0);
  }

  return result;
}

unint64_t sub_2405B57A4()
{
  result = qword_27E4B6FC8;
  if (!qword_27E4B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FC8);
  }

  return result;
}

unint64_t sub_2405B57FC()
{
  result = qword_27E4B6FD0;
  if (!qword_27E4B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FD0);
  }

  return result;
}

unint64_t sub_2405B5854()
{
  result = qword_27E4B6FD8;
  if (!qword_27E4B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FD8);
  }

  return result;
}

unint64_t sub_2405B58AC()
{
  result = qword_27E4B6FE0;
  if (!qword_27E4B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FE0);
  }

  return result;
}

unint64_t sub_2405B5904()
{
  result = qword_27E4B6FE8;
  if (!qword_27E4B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FE8);
  }

  return result;
}

unint64_t sub_2405B595C()
{
  result = qword_27E4B6FF0;
  if (!qword_27E4B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FF0);
  }

  return result;
}

unint64_t sub_2405B59B4()
{
  result = qword_27E4B6FF8;
  if (!qword_27E4B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6FF8);
  }

  return result;
}

unint64_t sub_2405B5A0C()
{
  result = qword_27E4B7000;
  if (!qword_27E4B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7000);
  }

  return result;
}

unint64_t sub_2405B5A64()
{
  result = qword_27E4B7008;
  if (!qword_27E4B7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7008);
  }

  return result;
}

unint64_t sub_2405B5ABC()
{
  result = qword_27E4B7010;
  if (!qword_27E4B7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7010);
  }

  return result;
}

unint64_t sub_2405B5B14()
{
  result = qword_27E4B7018;
  if (!qword_27E4B7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7018);
  }

  return result;
}

unint64_t sub_2405B5B6C()
{
  result = qword_27E4B7020;
  if (!qword_27E4B7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7020);
  }

  return result;
}

unint64_t sub_2405B5BC4()
{
  result = qword_27E4B7028;
  if (!qword_27E4B7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7028);
  }

  return result;
}

unint64_t sub_2405B5C1C()
{
  result = qword_27E4B7030;
  if (!qword_27E4B7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7030);
  }

  return result;
}

unint64_t sub_2405B5C74()
{
  result = qword_27E4B7038;
  if (!qword_27E4B7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7038);
  }

  return result;
}

unint64_t sub_2405B5CCC()
{
  result = qword_27E4B7040;
  if (!qword_27E4B7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7040);
  }

  return result;
}

unint64_t sub_2405B5D24()
{
  result = qword_27E4B7048;
  if (!qword_27E4B7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7048);
  }

  return result;
}

unint64_t sub_2405B5D7C()
{
  result = qword_27E4B7050;
  if (!qword_27E4B7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7050);
  }

  return result;
}

unint64_t sub_2405B5DD4()
{
  result = qword_27E4B7058;
  if (!qword_27E4B7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7058);
  }

  return result;
}

unint64_t sub_2405B5E2C()
{
  result = qword_27E4B7060;
  if (!qword_27E4B7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7060);
  }

  return result;
}

unint64_t sub_2405B5E84()
{
  result = qword_27E4B7068;
  if (!qword_27E4B7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7068);
  }

  return result;
}

unint64_t sub_2405B5EDC()
{
  result = qword_27E4B7070;
  if (!qword_27E4B7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7070);
  }

  return result;
}

unint64_t sub_2405B5F34()
{
  result = qword_27E4B7078;
  if (!qword_27E4B7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7078);
  }

  return result;
}

unint64_t sub_2405B5F8C()
{
  result = qword_27E4B7080;
  if (!qword_27E4B7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7080);
  }

  return result;
}

unint64_t sub_2405B5FE4()
{
  result = qword_27E4B7088;
  if (!qword_27E4B7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7088);
  }

  return result;
}

unint64_t sub_2405B603C()
{
  result = qword_27E4B7090;
  if (!qword_27E4B7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7090);
  }

  return result;
}

unint64_t sub_2405B6094()
{
  result = qword_27E4B7098;
  if (!qword_27E4B7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7098);
  }

  return result;
}

unint64_t sub_2405B60EC()
{
  result = qword_27E4B70A0;
  if (!qword_27E4B70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70A0);
  }

  return result;
}

unint64_t sub_2405B6144()
{
  result = qword_27E4B70A8;
  if (!qword_27E4B70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70A8);
  }

  return result;
}

unint64_t sub_2405B619C()
{
  result = qword_27E4B70B0;
  if (!qword_27E4B70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70B0);
  }

  return result;
}

unint64_t sub_2405B61F4()
{
  result = qword_27E4B70B8;
  if (!qword_27E4B70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70B8);
  }

  return result;
}

unint64_t sub_2405B624C()
{
  result = qword_27E4B70C0;
  if (!qword_27E4B70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70C0);
  }

  return result;
}

unint64_t sub_2405B62A4()
{
  result = qword_27E4B70C8;
  if (!qword_27E4B70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70C8);
  }

  return result;
}

unint64_t sub_2405B62FC()
{
  result = qword_27E4B70D0;
  if (!qword_27E4B70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70D0);
  }

  return result;
}

unint64_t sub_2405B6354()
{
  result = qword_27E4B70D8;
  if (!qword_27E4B70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70D8);
  }

  return result;
}

unint64_t sub_2405B63AC()
{
  result = qword_27E4B70E0;
  if (!qword_27E4B70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70E0);
  }

  return result;
}

unint64_t sub_2405B6404()
{
  result = qword_27E4B70E8;
  if (!qword_27E4B70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70E8);
  }

  return result;
}

unint64_t sub_2405B645C()
{
  result = qword_27E4B70F0;
  if (!qword_27E4B70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70F0);
  }

  return result;
}

unint64_t sub_2405B64B4()
{
  result = qword_27E4B70F8;
  if (!qword_27E4B70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B70F8);
  }

  return result;
}

unint64_t sub_2405B650C()
{
  result = qword_27E4B7100;
  if (!qword_27E4B7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7100);
  }

  return result;
}

unint64_t sub_2405B6564()
{
  result = qword_27E4B7108;
  if (!qword_27E4B7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7108);
  }

  return result;
}

unint64_t sub_2405B65BC()
{
  result = qword_27E4B7110;
  if (!qword_27E4B7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7110);
  }

  return result;
}

unint64_t sub_2405B6614()
{
  result = qword_27E4B7118;
  if (!qword_27E4B7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7118);
  }

  return result;
}

unint64_t sub_2405B666C()
{
  result = qword_27E4B7120;
  if (!qword_27E4B7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7120);
  }

  return result;
}

unint64_t sub_2405B66C4()
{
  result = qword_27E4B7128;
  if (!qword_27E4B7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7128);
  }

  return result;
}

unint64_t sub_2405B671C()
{
  result = qword_27E4B7130;
  if (!qword_27E4B7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7130);
  }

  return result;
}

unint64_t sub_2405B6774()
{
  result = qword_27E4B7138;
  if (!qword_27E4B7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7138);
  }

  return result;
}

unint64_t sub_2405B67CC()
{
  result = qword_27E4B7140;
  if (!qword_27E4B7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7140);
  }

  return result;
}

unint64_t sub_2405B6824()
{
  result = qword_27E4B7148;
  if (!qword_27E4B7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7148);
  }

  return result;
}

unint64_t sub_2405B687C()
{
  result = qword_27E4B7150;
  if (!qword_27E4B7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7150);
  }

  return result;
}

unint64_t sub_2405B68D4()
{
  result = qword_27E4B7158;
  if (!qword_27E4B7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7158);
  }

  return result;
}

unint64_t sub_2405B692C()
{
  result = qword_27E4B7160;
  if (!qword_27E4B7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7160);
  }

  return result;
}

unint64_t sub_2405B6984()
{
  result = qword_27E4B7168;
  if (!qword_27E4B7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7168);
  }

  return result;
}

uint64_t sub_2405B69D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEF72696170655274 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000240786200 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7369331 && a2 == 0xE300000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F4C6369736162 && a2 == 0xEA00000000006E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240786220 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6146646E6F636573 && a2 == 0xEC000000726F7463 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240786240 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240786260 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEE00746365726964 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786280 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x655265766974616ELL && a2 == 0xEE00797265766F63 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C6168436F646966 && a2 == 0xED000065676E656CLL || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6973557065656BLL && a2 == 0xE900000000000067)
  {

    return 13;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_2405B6E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEF72696170655274 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676F4C6369736162 && a2 == 0xEA00000000006E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6146646E6F636573 && a2 == 0xEC000000726F7463 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240786260 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEE00746365726964 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655265766974616ELL && a2 == 0xEE00797265766F63 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6168436F646966 && a2 == 0xED000065676E656CLL || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6973557065656BLL && a2 == 0xE900000000000067 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407862A0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6964616F4C7369 && a2 == 0xE900000000000067)
  {

    return 11;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_2405B7270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEF72696170655274 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000240786200 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7369331 && a2 == 0xE300000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F4C6369736162 && a2 == 0xEA00000000006E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002407862C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6146646E6F636573 && a2 == 0xEC000000726F7463 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240786260 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240786240 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEE00746365726964 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407862E0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x655265766974616ELL && a2 == 0xEE00797265766F63 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C6168436F646966 && a2 == 0xED000065676E656CLL || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6973557065656BLL && a2 == 0xE900000000000067 || (sub_24075ACF4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_2405B7798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405B78AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72657355796C6E6FLL && a2 == 0xEC000000656D616ELL;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240786300 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657070696B73 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2405B7A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000240786320 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65636E61437369 && a2 == 0xEB0000000064656CLL || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657070696B537369 && a2 == 0xE900000000000064 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240785DD0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240786340 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xEF73656369767265 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D62755372657375 && a2 == 0xEE006E6F69737369)
  {

    return 10;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405B7E00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E654C65646F63 && a2 == 0xEA00000000006874 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657463656C6C6F63 && a2 == 0xED000065646F4364 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2405B7FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405B80E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240786380 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002407863A0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2405B82A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657265766F636572 && a2 == 0xED00006F666E4964)
  {

    return 3;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2405B841C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2405B8588(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6973557065656BLL && a2 == 0xE900000000000067)
  {

    return 2;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2405B86B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405B87C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65736572507369 && a2 == 0xEB00000000646574)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405B8928(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2405B8998()
{
  result = qword_27E4BB830;
  if (!qword_27E4BB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB830);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2405B8A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2405B8BDC()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B71B0);
  v1 = __swift_project_value_buffer(v0, qword_27E4B71B0);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4BE2A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t MessagePacker.encoder.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2405B8D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MessagePacker.pack(_:)(uint64_t a1, uint64_t a2)
{
  v117 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = &v94 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v6 = (&v94 - v5);
  v99 = sub_2407597B4();
  v98 = *(v99 - 8);
  v7 = MEMORY[0x28223BE20](v99);
  v97 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a2;
  v9 = *(a2 + 16);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v7);
  v102 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v94 - v16;
  if (qword_27E4B5E98 != -1)
  {
    swift_once();
  }

  v18 = sub_240759AE4();
  v19 = __swift_project_value_buffer(v18, qword_27E4B71B0);
  v20 = *(v10 + 16);
  v20(v17, v117, v9);
  v106 = v19;
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  v23 = os_log_type_enabled(v21, v22);
  v101 = v10 + 16;
  v100 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v96 = v6;
    v25 = v24;
    v95 = swift_slowAlloc();
    v114[0] = v95;
    *v25 = 136315138;
    v20(v15, v17, v9);
    v26 = sub_24075A0E4();
    v28 = v27;
    (*(v10 + 8))(v17, v9);
    v29 = sub_2405BBA7C(v26, v28, v114);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_240579000, v21, v22, "Packing up outMessage: %s", v25, 0xCu);
    v30 = v95;
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x245CC76B0](v30, -1, -1);
    v31 = v25;
    v6 = v96;
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v17, v9);
  }

  v32 = *(v109 + 24);
  v33 = v107;
  v107 = sub_240759494();
  if (!v33)
  {
    v35 = v34;
    v95 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D8, &qword_240762460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240762420;
    *(inited + 32) = 0x726576676B70;
    *(inited + 40) = 0xE600000000000000;
    v114[0] = 1;
    sub_24075A814();
    *(inited + 88) = 25712;
    *(inited + 96) = 0xE200000000000000;
    v114[0] = v107;
    v114[1] = v35;
    sub_2405BB9D4(v107, v35);
    v94 = sub_2405BBA28();
    sub_24075A814();
    v37 = v9;
    v38 = sub_2405BCC60(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71E8, &qword_240762468);
    swift_arrayDestroy();
    v100(v102, v117, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71F0, &qword_240762470);
    v102 = v37;
    if (swift_dynamicCast())
    {
      sub_24058C9C0(v112, v114);
      v39 = v115;
      v40 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      LOBYTE(v110) = (*(v40 + 32))(v39, v40);
      sub_24075A814();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v38;
      sub_2405BC828(v112, 0x7265766F746F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v42 = v110;
      v43 = v115;
      v44 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v45 = v97;
      v46 = v108;
      (*(v44 + 24))(v43, v44);
      v47 = sub_240759764();
      v49 = v48;
      (*(v98 + 8))(v45, v99);
      v110 = v47;
      v111 = v49;
      sub_24075A814();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v42;
      sub_2405BC828(v112, 0x646967736DLL, 0xE500000000000000, v50);
      v38 = v110;
      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    else
    {
      v113 = 0;
      memset(v112, 0, sizeof(v112));
      sub_2405B8A50(v112, qword_27E4B71F8, &qword_240762478);
      v46 = v108;
    }

    v51 = (v46 + *(v109 + 40));
    v52 = v51[1];
    if (v52)
    {
      v117 = v35;
      v53 = *v51;
      swift_bridgeObjectRetain_n();
      v54 = sub_240759AC4();
      v55 = sub_24075A5D4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v6;
        v58 = swift_slowAlloc();
        v114[0] = v58;
        *v56 = 136315138;
        *(v56 + 4) = sub_2405BBA7C(v53, v52, v114);
        _os_log_impl(&dword_240579000, v54, v55, "Attaching topic identifier: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v59 = v58;
        v6 = v57;
        MEMORY[0x245CC76B0](v59, -1, -1);
        MEMORY[0x245CC76B0](v56, -1, -1);
      }

      v35 = v117;
      *&v112[0] = v53;
      *(&v112[0] + 1) = v52;
      sub_24075A814();
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v112[0] = v38;
      sub_2405BC828(v114, 1684631668, 0xE400000000000000, v60);
      v38 = *&v112[0];
      v46 = v108;
    }

    v61 = v105;
    sub_2405B044C(v46 + *(v109 + 36), v105, &qword_27E4B71C8, &unk_240762450);
    if ((*(v103 + 48))(v61, 1, v104) == 1)
    {
      v62 = &qword_27E4B71C8;
      v63 = &unk_240762450;
      v64 = v61;
    }

    else
    {
      sub_2405BCDEC(v61, v6);
      v65 = sub_2405BCE5C(v6, v107, v35);
      if (v66 >> 60 != 15)
      {
        v67 = v65;
        v68 = v66;
        sub_2405BB9D4(v65, v66);
        v69 = sub_240759AC4();
        v70 = sub_24075A5D4();
        sub_24058C9E4(v67, v68);
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v117 = v35;
          v73 = v72;
          v114[0] = v72;
          *v71 = 136315138;
          sub_2405BB9D4(v67, v68);
          v74 = sub_240759654();
          v96 = v6;
          v76 = v75;
          sub_24058C9E4(v67, v68);
          v77 = sub_2405BBA7C(v74, v76, v114);
          v6 = v96;

          *(v71 + 4) = v77;
          _os_log_impl(&dword_240579000, v69, v70, "Attaching signature: %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          v78 = v73;
          v35 = v117;
          MEMORY[0x245CC76B0](v78, -1, -1);
          MEMORY[0x245CC76B0](v71, -1, -1);
        }

        *&v112[0] = v67;
        *(&v112[0] + 1) = v68;
        sub_2405BB9D4(v67, v68);
        sub_24075A814();
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v38;
        sub_2405BC828(v114, 26483, 0xE200000000000000, v79);
        v80 = *&v112[0];
        v81 = v6[1];
        *&v112[0] = *v6;
        *(&v112[0] + 1) = v81;

        sub_24075A814();
        v82 = swift_isUniquelyReferenced_nonNull_native();
        *&v112[0] = v80;
        sub_2405BC828(v114, 0x64696D6B6773, 0xE600000000000000, v82);
        sub_24058C9E4(v67, v68);
      }

      v62 = &qword_27E4B71D0;
      v63 = &unk_240770200;
      v64 = v6;
    }

    sub_2405B8A50(v64, v62, v63);
    v83 = sub_240759AC4();
    v84 = sub_24075A5D4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v114[0] = v86;
      *v85 = 136315138;

      v87 = sub_240759F84();
      v88 = v35;
      v90 = v89;

      v91 = sub_2405BBA7C(v87, v90, v114);
      v35 = v88;

      *(v85 + 4) = v91;
      _os_log_impl(&dword_240579000, v83, v84, "Returning packed up outDictionary: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x245CC76B0](v86, -1, -1);
      MEMORY[0x245CC76B0](v85, -1, -1);
    }

    v32 = sub_2405B9B5C(v92);
    swift_bridgeObjectRelease_n();
    sub_2405BCD98(v107, v35);
  }

  return v32;
}

uint64_t sub_2405B9B5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C8, &unk_240762670);
    v2 = sub_24075AA04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2405BE44C(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_2405BE38C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_2405BE38C(v35, v24);
    result = sub_24075A7F4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_2405BE38C(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2405B9E48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C8, &unk_240762670);
    v2 = sub_24075AA04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2405BD1CC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2405BE38C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2405BE38C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2405BE38C(v31, v32);
    result = sub_24075A7F4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2405BE38C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2405BA110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A8, &qword_240762650);
    v2 = sub_24075AA04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2405BE38C(&v22, v24);
        sub_2405BE38C(v24, v25);
        sub_2405BE38C(v25, &v23);
        result = sub_2405BB37C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_2405BE38C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2405BE38C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *sub_2405BA368(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7400, &qword_2407626A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_240759DC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  sub_2405B044C(&v2[*(v12 + 36)], v7, &qword_27E4B7400, &qword_2407626A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2405B8A50(v7, &qword_27E4B7400, &qword_2407626A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7408, &qword_2407626A8);
    sub_2405BE4A8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v16[0] = a1;
    v16[1] = a2;
    sub_2405BE3F8();
    v2 = v11;
    v13 = v16[3];
    v14 = sub_240759DA4();
    if (!v13)
    {
      v2 = v14;
    }

    (*(v9 + 8))(v11, v8);
  }

  return v2;
}

uint64_t sub_2405BA5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MessagePacker.pack(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s12AppleIDSetup13MessagePackerV15topicIdentifierSSSgvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t _s12AppleIDSetup13MessagePackerV15topicIdentifierSSSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2405BA6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, char *a8@<X8>)
{
  v13 = a7(0, a5, a6);
  v14 = *(v13 + 36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  v16 = &a8[*(v13 + 40)];
  *a8 = a1;
  result = sub_2405B8D38(a2, &a8[v14]);
  *v16 = a3;
  *(v16 + 1) = a4;
  return result;
}

uint64_t MessageUnpacker.unpack(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v87 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  if (qword_27E4B5E98 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  v15 = __swift_project_value_buffer(v14, qword_27E4B71B0);

  v16 = sub_240759AC4();
  v17 = sub_24075A5D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v86 = v13;
    v95 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v85 = v15;
    v21 = a2;
    v22 = v20;
    v93[0] = v20;
    *v19 = 136315138;
    v23 = sub_240759F84();
    v25 = a1;
    v26 = sub_2405BBA7C(v23, v24, v93);

    *(v19 + 4) = v26;
    a1 = v25;
    _os_log_impl(&dword_240579000, v16, v17, "Unpacking inDictionary: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    a2 = v21;
    v5 = v4;
    MEMORY[0x245CC76B0](v27, -1, -1);
    v28 = v19;
    v6 = v95;
    v13 = v86;
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v91 = 25712;
  v92 = 0xE200000000000000;
  sub_24075A814();
  if (*(a1 + 16) && (v29 = sub_2405BB338(v93), (v30 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v29, v94);
    sub_2405BD160(v93);
    if (swift_dynamicCast())
    {
      v31 = a1;
      v32 = v92;
      v85 = v91;
      v33 = (v6 + *(a2 + 40));
      v34 = v33[1];
      if (!v34)
      {
LABEL_18:
        v43 = v90;
        sub_2405B044C(v6 + *(a2 + 36), v90, &qword_27E4B71C8, &unk_240762450);
        if ((*(v88 + 48))(v43, 1, v89) == 1)
        {
          v44 = v85;
          sub_2405B8A50(v43, &qword_27E4B71C8, &unk_240762450);
        }

        else
        {
          v95 = v6;
          v89 = v32;
          sub_2405BCDEC(v43, v13);
          v63 = sub_240759AC4();
          v64 = sub_24075A5D4();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_240579000, v63, v64, "Incoming signature will be validated", v65, 2u);
            MEMORY[0x245CC76B0](v65, -1, -1);
          }

          v94[0] = 26483;
          v94[1] = 0xE200000000000000;
          sub_24075A814();
          if (*(v31 + 16) && (v66 = sub_2405BB338(v93), (v67 & 1) != 0))
          {
            v44 = v85;
            sub_2405BD1CC(*(v31 + 56) + 32 * v66, v94);
            sub_2405BD160(v93);
            v68 = swift_dynamicCast();
            if (v68)
            {
              v69 = v91;
            }

            else
            {
              v69 = 0;
            }

            if (v68)
            {
              v70 = v92;
            }

            else
            {
              v70 = 0xF000000000000000;
            }
          }

          else
          {
            v44 = v85;
            sub_2405BD160(v93);
            v69 = 0;
            v70 = 0xF000000000000000;
          }

          v71 = v89;
          sub_2405BD990(v69, v70, v44, v89, v13, *(a2 + 16), *(a2 + 24));
          sub_2405B8A50(v13, &qword_27E4B71D0, &unk_240770200);
          if (v5)
          {
            sub_2405BCD98(v44, v71);
            return sub_24058C9E4(v69, v70);
          }

          sub_24058C9E4(v69, v70);
          v32 = v71;
        }

        sub_240759464();
        v62 = v44;
        return sub_2405BCD98(v62, v32);
      }

      v95 = *v33;
      v91 = 1684631668;
      v92 = 0xE400000000000000;

      sub_24075A814();
      if (*(v31 + 16) && (v35 = sub_2405BB338(v93), (v36 & 1) != 0))
      {
        sub_2405BD1CC(*(v31 + 56) + 32 * v35, v94);
        sub_2405BD160(v93);
        if (swift_dynamicCast())
        {
          v37 = v92;
          if (v95 == v91 && v34 == v92 || (v86 = v91, (sub_24075ACF4() & 1) != 0))
          {
            v86 = v13;
            v95 = v6;

            v38 = sub_240759AC4();
            v39 = sub_24075A5D4();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = v32;
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&dword_240579000, v38, v39, "Verified that topic identifier for inDictionary matches, unpacking will proceed", v41, 2u);
              v42 = v41;
              v32 = v40;
              MEMORY[0x245CC76B0](v42, -1, -1);
            }

            v6 = v95;
            v13 = v86;
            goto LABEL_18;
          }

          v72 = v37;
          v73 = sub_240759AC4();
          v74 = sub_24075A5C4();
          v90 = v72;

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = v32;
            v77 = swift_slowAlloc();
            v93[0] = v77;
            *v75 = 136315394;
            v78 = v95;
            *(v75 + 4) = sub_2405BBA7C(v95, v34, v93);
            *(v75 + 12) = 2080;
            v79 = v86;
            *(v75 + 14) = sub_2405BBA7C(v86, v90, v93);
            _os_log_impl(&dword_240579000, v73, v74, "Failed to unpack due to topic identifiers not matching: %s != %s", v75, 0x16u);
            swift_arrayDestroy();
            v80 = v77;
            v32 = v76;
            v54 = v85;
            MEMORY[0x245CC76B0](v80, -1, -1);
            MEMORY[0x245CC76B0](v75, -1, -1);
          }

          else
          {

            v54 = v85;
            v79 = v86;
            v78 = v95;
          }

          type metadata accessor for MessageUnpacker.Failure(0, *(a2 + 16), *(a2 + 24), v81);
          swift_getWitnessTable();
          swift_allocError();
          *v82 = v78;
          v82[1] = v34;
          v83 = v90;
          v82[2] = v79;
          v82[3] = v83;
LABEL_29:
          swift_willThrow();
          v62 = v54;
          return sub_2405BCD98(v62, v32);
        }
      }

      else
      {
        sub_2405BD160(v93);
      }

      v51 = sub_240759AC4();
      v52 = sub_24075A5E4();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v85;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = v32;
        v57 = swift_slowAlloc();
        v93[0] = v57;
        *v55 = 136315138;
        v58 = sub_2405BBA7C(v95, v34, v93);

        *(v55 + 4) = v58;
        _os_log_impl(&dword_240579000, v51, v52, "Failed to unpack due to missing topic id when expected: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        v59 = v57;
        v32 = v56;
        MEMORY[0x245CC76B0](v59, -1, -1);
        MEMORY[0x245CC76B0](v55, -1, -1);
      }

      else
      {
      }

      type metadata accessor for MessageUnpacker.Failure(0, *(a2 + 16), *(a2 + 24), v60);
      swift_getWitnessTable();
      swift_allocError();
      *v61 = xmmword_24075D8E0;
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      goto LABEL_29;
    }
  }

  else
  {
    sub_2405BD160(v93);
  }

  v45 = sub_240759AC4();
  v46 = sub_24075A5E4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_240579000, v45, v46, "Failed to unpack message due to missing payload", v47, 2u);
    MEMORY[0x245CC76B0](v47, -1, -1);
  }

  type metadata accessor for MessageUnpacker.Failure(0, *(a2 + 16), *(a2 + 24), v48);
  swift_getWitnessTable();
  swift_allocError();
  *v49 = 0u;
  v49[1] = 0u;
  return swift_willThrow();
}

uint64_t sub_2405BB258(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_2405BB2A4(uint64_t a1)
{
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v2 = sub_24075AED4();

  return sub_2405BB4C4(a1, v2);
}

unint64_t sub_2405BB338(uint64_t a1)
{
  v2 = sub_24075A7F4();

  return sub_2405BB5C8(a1, v2);
}

unint64_t sub_2405BB37C(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  sub_24075A114();
  v4 = sub_24075AED4();

  return sub_2405BB690(a1, a2, v4);
}

unint64_t sub_2405BB3F4(uint64_t a1)
{
  v1 = a1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  v2 = sub_24075AED4();

  return sub_2405BB748(v1, v2);
}

unint64_t sub_2405BB460(uint64_t a1)
{
  sub_24075A9B4();
  v2 = sub_240759FF4();

  return sub_2405BB7B8(a1, v2);
}

unint64_t sub_2405BB4C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24075A0B4();
      v8 = v7;
      if (v6 == sub_24075A0B4() && v8 == v9)
      {
        break;
      }

      v11 = sub_24075ACF4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2405BB5C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2405BE44C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CC6520](v9, a1);
      sub_2405BD160(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2405BB690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24075ACF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2405BB748(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2405BB7B8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_24075A9B4();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_24075A054();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2405BB978(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2405BBA7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2405BB9D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2405BBA28()
{
  result = qword_27E4B71E0;
  if (!qword_27E4B71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B71E0);
  }

  return result;
}

unint64_t sub_2405BBA7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2405BBB48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2405BD1CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2405BBB48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2405BBC54(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24075A8F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2405BBC54(uint64_t a1, unint64_t a2)
{
  v3 = sub_2405BBCA0(a1, a2);
  sub_2405BBDD0(&unk_285266BC8);
  return v3;
}

void *sub_2405BBCA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2405BBEBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24075A8F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24075A154();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2405BBEBC(v10, 0);
        result = sub_24075A854();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2405BBDD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2405BBF30(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2405BBEBC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7418, &qword_2407626B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2405BBF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7418, &qword_2407626B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_2405BC024(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2405BC034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
  v38 = v4;
  result = sub_24075A9F4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_2405BE44C(v27, &v39);
      }

      sub_24075AE64();
      sub_24075A114();
      result = sub_24075AED4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2405BC304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
  v35 = v4;
  result = sub_24075A9F4();
  v7 = result;
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
    v14 = result + 64;
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

        v25 = v24;
      }

      sub_24075AE64();
      sub_24075A114();
      result = sub_24075AED4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

uint64_t sub_2405BC5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
  result = sub_24075A9F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_24075AE64();
      MEMORY[0x245CC6BA0](v20);
      result = sub_24075AED4();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2405BC828(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2405BB37C(a2, a3);
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
      sub_2405BC034(v16, a4 & 1);
      v11 = sub_2405BB37C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24075AD94();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24065B8BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_2405BE39C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_2405BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2405BB37C(a2, a3);
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
      sub_2405BC304(v16, a4 & 1);
      v11 = sub_2405BB37C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24075AD94();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24065BA70();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_2405BCB30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2405BB3F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_24065BBDC();
    result = v17;
    goto LABEL_8;
  }

  sub_2405BC5A8(v14, a3 & 1);
  result = sub_2405BB3F4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73B8, &unk_240762660);
  result = sub_24075AD94();
  __break(1u);
  return result;
}

unint64_t sub_2405BCC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, &v16, &qword_27E4B71E8, &qword_240762468);
      v5 = v16;
      v6 = v17;
      result = sub_2405BB37C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2405BCD98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2405BCDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2405BCE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  return sub_2405BA368(a2, a3);
}

uint64_t sub_2405BD1CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2405BD228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A8, &qword_240762650);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, &v13, &unk_27E4BB680, &qword_240762680);
      v5 = v13;
      v6 = v14;
      result = sub_2405BB37C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2405BE38C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2405BD358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73B0, &qword_240762658);
    v3 = sub_24075AA04();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2405BB37C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}